uint64_t sub_2696A0CA4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v51 = a3;
  v45 = a2;
  v5 = sub_269851D34();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2698548D4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, qword_281571B50);
  v43 = *(v8 + 16);
  v44 = v14;
  v43(v13);

  v15 = sub_2698548B4();
  v16 = sub_269854F14();

  v17 = os_log_type_enabled(v15, v16);
  v46 = v8;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v52[0] = v42;
    *v18 = 136315138;
    v19 = sub_2698549F4();
    v21 = v7;
    v22 = a1;
    v23 = sub_26974F520(v19, v20, v52);

    *(v18 + 4) = v23;
    a1 = v22;
    v7 = v21;
    _os_log_impl(&dword_269684000, v15, v16, "SpotlightSignal#signal spotlight matches: %s", v18, 0xCu);
    v24 = v42;
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x26D647170](v24, -1, -1);
    v25 = v18;
    v8 = v46;
    MEMORY[0x26D647170](v25, -1, -1);
  }

  v26 = *(v8 + 8);
  v26(v13, v7);
  v27 = sub_2696A01A8(a1);
  (v43)(v11, v44, v7);

  v28 = sub_2698548B4();
  v29 = sub_269854F14();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v52[0] = v31;
    *v30 = 136315138;
    sub_269694CBC();
    v32 = sub_2698549F4();
    v34 = v11;
    v35 = sub_26974F520(v32, v33, v52);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_269684000, v28, v29, "SpotlightSignal#signal spotlight normalized matches: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x26D647170](v31, -1, -1);
    MEMORY[0x26D647170](v30, -1, -1);

    v36 = v34;
  }

  else
  {

    v36 = v11;
  }

  v26(v36, v7);
  v37 = v47;
  sub_269851D24();
  sub_269851CB4();
  v39 = v38;
  (*(v48 + 8))(v37, v49);
  v52[3] = &type metadata for SpotlightSignal;
  v52[4] = &off_287A3CDA8;
  v52[0] = v27;
  v52[1] = v39;
  v45(v52);
  return sub_269694F94(v52);
}

uint64_t sub_2696A114C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000026987B800;
  v1 = sub_26982EB4C();
  *(inited + 72) = sub_269694CBC();
  if (!v1)
  {
    v1 = sub_269855024();
  }

  *(inited + 48) = v1;
  return sub_269854A04();
}

void sub_2696A1228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2696A114C();
  sub_26981CFD4();
  if (v8)
  {

    sub_269694FFC(&v7, &v9);
    sub_269694CBC();
    swift_dynamicCast();
    [v6 doubleValue];
    v5 = v4;

    *(a3 + 384) = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2696A1314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v18 = __swift_project_value_buffer(v11, qword_281571B50);
  (*(v13 + 16))(v17, v18, v11);
  v19 = sub_2698548B4();
  v20 = sub_269854F14();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_269684000, v19, v20, "SpotlightSignal#signal using common spotlight local search provider for signal collection", v21, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v13 + 8))(v17, v11);
  v22 = *__swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));

  return sub_26968F398(a1, a2, 0, v22, v6, a3, a4, a5);
}

uint64_t sub_2696A150C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v39 = a1;
  v36 = a3;
  v9 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v18 = __swift_project_value_buffer(v9, qword_281571B50);
  v34 = *(v11 + 16);
  v35 = v18;
  v34(v17);

  v19 = sub_2698548B4();
  v20 = sub_269854F14();

  v21 = os_log_type_enabled(v19, v20);
  v37 = a2;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v33 = a6;
    v23 = v22;
    v24 = swift_slowAlloc();
    v32 = a5;
    v25 = v24;
    v40 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_26974F520(v39, a2, &v40);
    _os_log_impl(&dword_269684000, v19, v20, "SpotlightSignal#signal spotlight query string: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    a5 = v32;
    OUTLINED_FUNCTION_10();
    a6 = v33;
    OUTLINED_FUNCTION_10();
  }

  v26 = *(v11 + 8);
  v26(v17, v9);
  (v34)(v15, v35, v9);
  v27 = sub_2698548B4();
  v28 = sub_269854F14();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_269684000, v27, v28, "SpotlightSignal#signal finding spotlight matches...", v29, 2u);
    OUTLINED_FUNCTION_10();
  }

  v26(v15, v9);
  __swift_project_boxed_opaque_existential_1((v36 + 16), *(v36 + 40));
  return sub_26968FB4C(v39, v37, v38, 50, a5, a6);
}

uint64_t sub_2696A17F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2696A18FC(uint64_t a1)
{
  v3 = *(sub_269851D34() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2696A0CA4(a1, v4, v5, v6);
}

void (*sub_2696A1970(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v12 = result;
  v4 = *(a3 + 16);
  v5 = (a3 + 72);
  if (v4)
  {
    while (1)
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = *(v5 - 4);
      v11[0] = *(v5 - 5);
      v11[1] = v10;
      v11[2] = v6;
      v11[3] = v7;
      v11[4] = v8;
      v11[5] = v9;

      v12(v11);
      if (v3)
      {
        break;
      }

      --v4;
      v5 += 6;
      if (!v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_2696A1A84(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v50 = a4;
  v51 = a3;
  sub_269851D34();
  OUTLINED_FUNCTION_8();
  v47 = v8;
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  OUTLINED_FUNCTION_6_3();
  v65[0] = sub_269854A04();
  OUTLINED_FUNCTION_6_3();
  v64 = sub_269854A04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322DF0, &qword_2698587A8);
  OUTLINED_FUNCTION_6_3();
  v44 = v16;
  v63 = sub_269854A04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322DF8, &qword_2698587B0);
  OUTLINED_FUNCTION_6_3();
  v45 = v17;
  v62 = sub_269854A04();
  v52[2] = v65;
  v52[3] = &v64;
  v52[4] = a2;
  v52[5] = &v63;
  v52[6] = &v62;
  sub_2696A1970(sub_2696A2934, v52, a1);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v10, qword_281571B50);
  (*(v12 + 16))(v15, v18, v10);
  v19 = sub_2698548B4();
  v20 = sub_269854F04();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = v20;
    v22 = v21;
    v43 = swift_slowAlloc();
    v61[0] = v43;
    *v22 = 136315906;
    OUTLINED_FUNCTION_1_4(v65, &v56);

    v23 = sub_2698549F4();
    v42 = v10;
    v25 = v24;

    v26 = sub_26974F520(v23, v25, v61);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    OUTLINED_FUNCTION_1_4(&v64, &v55);

    sub_2698549F4();
    OUTLINED_FUNCTION_5_3();
    v27 = OUTLINED_FUNCTION_4_4();

    *(v22 + 14) = v27;
    *(v22 + 22) = 2080;
    OUTLINED_FUNCTION_1_4(&v63, &v54);

    sub_2698549F4();
    OUTLINED_FUNCTION_5_3();
    v28 = OUTLINED_FUNCTION_4_4();

    *(v22 + 24) = v28;
    *(v22 + 32) = 2080;
    OUTLINED_FUNCTION_1_4(&v62, &v53);

    sub_2698549F4();
    OUTLINED_FUNCTION_5_3();
    v29 = OUTLINED_FUNCTION_4_4();

    *(v22 + 34) = v29;
    _os_log_impl(&dword_269684000, v19, v41, "SupportedMediaSignal#signal gathered apps with media categories. play intent: %s, search intent: %s, play AppIntent: %s, search AppIntent: %s", v22, 0x2Au);
    v30 = v43;
    swift_arrayDestroy();
    MEMORY[0x26D647170](v30, -1, -1);
    MEMORY[0x26D647170](v22, -1, -1);

    (*(v12 + 8))(v15, v42);
  }

  else
  {

    (*(v12 + 8))(v15, v10);
  }

  OUTLINED_FUNCTION_1_4(v65, v60);
  v31 = v65[0];
  OUTLINED_FUNCTION_1_4(&v64, v59);
  v32 = v64;
  OUTLINED_FUNCTION_1_4(&v63, v58);
  v33 = v63;
  OUTLINED_FUNCTION_1_4(&v62, &v57);
  v34 = v62;

  v35 = v46;
  sub_269851D24();
  sub_269851CB4();
  v37 = v36;
  (*(v47 + 8))(v35, v48);
  v61[3] = &type metadata for SupportedMediaSignal;
  v61[4] = &off_287A3CEC8;
  v38 = swift_allocObject();
  v61[0] = v38;
  v38[2] = v31;
  v38[3] = v32;
  v38[4] = v33;
  v38[5] = v34;
  v38[6] = v37;
  v51(v61);
  __swift_destroy_boxed_opaque_existential_0(v61);
}

void sub_2696A203C(uint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v34 = a5;
  v35 = a6;
  v32 = a2;
  v33 = a3;
  v7 = sub_269851A04();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2698519E4();
  v9 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v47 = *a1;
  v41 = v12;
  v13 = a1[5];
  v37 = a1[4];
  v43 = 0xD000000000000014;
  v44 = 0x800000026987B820;
  v42 = &v43;
  v14 = sub_2698337D4();
  if (v14)
  {
    v43 = 0xD000000000000011;
    v44 = 0x800000026987B840;
    MEMORY[0x28223BE20](v14);
    *(&v32 - 2) = &v43;
    v15 = sub_2698337D4();
    if (v15)
    {

      v16 = v32;
      swift_isUniquelyReferenced_nonNull_native();
      v43 = *v16;
      sub_26984053C();
      *v16 = v43;
    }

    v43 = 0xD000000000000016;
    v44 = 0x800000026987B860;
    MEMORY[0x28223BE20](v15);
    *(&v32 - 2) = &v43;
    if (sub_2698337D4())
    {

      v17 = v33;
      swift_isUniquelyReferenced_nonNull_native();
      v43 = *v17;
      sub_26984053C();
      *v17 = v43;
    }
  }

  v45 = &type metadata for SiriVideoFeatureKeys;
  v46 = sub_2696A2978();
  LOBYTE(v43) = 3;
  v18 = sub_269853B34();
  __swift_destroy_boxed_opaque_existential_0(&v43);
  if (v18)
  {
    v19 = v36;
    v20 = (*(v9 + 104))(v11, *MEMORY[0x277CB9E18], v36);
    MEMORY[0x28223BE20](v20);
    *(&v32 - 2) = v11;
    v21 = sub_2698336C0(sub_2696A29CC, (&v32 - 4), v13);
    (*(v9 + 8))(v11, v19);
    if (v21)
    {

      v22 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = *v22;
      sub_269840438(v13, v47, v41, isUniquelyReferenced_nonNull_native);
      *v22 = v43;
    }

    v25 = v38;
    v24 = v39;
    v26 = v40;
    v27 = (*(v39 + 104))(v38, *MEMORY[0x277CB9FE0], v40);
    MEMORY[0x28223BE20](v27);
    *(&v32 - 2) = v25;
    v28 = v37;
    v29 = sub_269833690(sub_2696A29EC, (&v32 - 4), v37);
    (*(v24 + 8))(v25, v26);
    if (v29)
    {

      v30 = v35;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v43 = *v30;
      sub_269840424(v28, v47, v41, v31);
      *v30 = v43;
    }
  }
}

uint64_t sub_2696A2534(char a1)
{
  if (a1 == 2)
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = sub_2697F8D7C();

  v3 = sub_2697F8D7C();

  return sub_2696A25C4(v3, v2);
}

uint64_t sub_2696A25C4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2697F4AE4(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2696A26C8(uint64_t a1, uint64_t a2, double *a3)
{
  if (!sub_26982EB50())
  {
    sub_26982EB50();
  }

  OUTLINED_FUNCTION_19();
  v25 = 0xD000000000000014;
  v26 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_3();
  *(v6 - 16) = &v25;
  OUTLINED_FUNCTION_3_4();
  if (sub_2698337D4() || (OUTLINED_FUNCTION_19(), v25 = 0xD000000000000014, v26 = v7, MEMORY[0x28223BE20](v8), OUTLINED_FUNCTION_0_3(), *(v9 - 16) = &v25, OUTLINED_FUNCTION_3_4(), sub_2698337D4()))
  {
    v10 = 1.0;
  }

  else
  {
    OUTLINED_FUNCTION_19();
    v25 = 0xD000000000000016;
    v26 = v11;
    MEMORY[0x28223BE20](v12);
    OUTLINED_FUNCTION_0_3();
    *(v13 - 16) = &v25;
    OUTLINED_FUNCTION_3_4();
    v14 = sub_2698337D4();
    v10 = 0.0;
    if (v14)
    {
      v10 = 1.0;
    }
  }

  a3[4] = v10;
  OUTLINED_FUNCTION_19();
  v25 = 0xD000000000000017;
  v26 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_3();
  *(v17 - 16) = &v25;
  OUTLINED_FUNCTION_3_4();
  if (sub_2698337D4())
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  a3[6] = v18;
  OUTLINED_FUNCTION_19();
  v25 = 0xD000000000000019;
  v26 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_3();
  *(v21 - 16) = &v25;
  OUTLINED_FUNCTION_3_4();
  v22 = sub_2698337D4();

  if (v22)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  a3[5] = v24;
  return result;
}

unint64_t sub_2696A2978()
{
  result = qword_280322E00;
  if (!qword_280322E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280322E00);
  }

  return result;
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

uint64_t sub_2696A2A20(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2696A2A60(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_4_4()
{

  return sub_26974F520(v0, v1, (v2 - 184));
}

uint64_t OUTLINED_FUNCTION_5_3()
{
}

uint64_t sub_2696A2B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_269851D34();
  OUTLINED_FUNCTION_0_2();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v19 = &v24[-v18];
  type metadata accessor for UserContextSignal.ContextProvider();
  swift_initStackObject();
  sub_269851D24();
  v20 = sub_26969329C(0, &qword_2815718D8, 0x277CD3DD8);
  (*(v12 + 16))(v17, v19, v7);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a6;
  *(v22 + 24) = a7;
  (*(v12 + 32))(v22 + v21, v17, v7);

  sub_2696A36B0(v20, a5, sub_2696A382C, v22);

  return (*(v12 + 8))(v19, v7);
}

uint64_t sub_2696A2D08(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v8 = sub_269851D34();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2698548D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2697E342C(a1);
  v42 = v8;
  if (v16)
  {
    v17 = v16;
    v41 = a2;
    v15 = (v16 + 64);
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    a2 = v19 & *(v16 + 64);
    v13 = (v18 + 63) >> 6;

    v20 = 0;
    v12 = 0;
    while (a2)
    {
      v21 = v20;
LABEL_10:
      v22 = __clz(__rbit64(a2)) | (v21 << 6);
      v23 = (*(v17 + 48) + 16 * v22);
      v24 = *(*(v17 + 56) + 8 * v22);
      v26 = *v23;
      v25 = v23[1];
      a2 &= a2 - 1;
      v43 = v26;
      v44 = v25;
      v45 = v24;
      sub_2696A3118(&v43);
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v13)
      {

        sub_269851D24();
        sub_269851CB4();
        v28 = v27;
        (*(v9 + 8))(v11, v42);
        v46 = &type metadata for UserContextSignal;
        v47 = &off_287A3CFB8;
        v43 = v17;
        v44 = v28;
        v41(&v43);
        return sub_269694F94(&v43);
      }

      a2 = *&v15[8 * v21];
      ++v20;
      if (a2)
      {
        v20 = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v41 = a4;
  if (qword_280322708 != -1)
  {
LABEL_19:
    swift_once();
  }

  v29 = __swift_project_value_buffer(v12, qword_281571B50);
  (*(v13 + 16))(v15, v29, v12);
  v30 = sub_2698548B4();
  v31 = sub_269854F24();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v40[1] = a3;
    v33 = a2;
    v34 = v32;
    *v32 = 0;
    _os_log_impl(&dword_269684000, v30, v31, "UserContextSignal#signal missing, or error coercing INMediaUserContext results to type", v32, 2u);
    v35 = v34;
    a2 = v33;
    MEMORY[0x26D647170](v35, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  sub_26969329C(0, &qword_2815718D8, 0x277CD3DD8);
  v36 = sub_269854A04();
  sub_269851D24();
  sub_269851CB4();
  v38 = v37;
  (*(v9 + 8))(v11, v42);
  v46 = &type metadata for UserContextSignal;
  v47 = &off_287A3CFB8;
  v43 = v36;
  v44 = v38;
  (a2)(&v43);
  return sub_269694F94(&v43);
}

uint64_t sub_2696A3118(uint64_t *a1)
{
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  v24 = *a1;
  v7 = a1[2];
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_281571B50);
  (*(v3 + 16))(v5, v8, v2);
  swift_bridgeObjectRetain_n();
  v9 = v7;
  v10 = sub_2698548B4();
  v11 = sub_269854F44();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = v11;
    v13 = v12;
    v23 = swift_slowAlloc();
    v25 = v23;
    *v13 = 136315650;

    v14 = sub_26974F520(v24, v6, &v25);

    *(v13 + 4) = v14;
    *(v13 + 12) = 2048;
    *(v13 + 14) = [v9 subscriptionStatus];

    *(v13 + 22) = 2048;
    v15 = sub_269854FD4();
    v24 = v2;
    v17 = v16;

    if (v17)
    {
      v18 = -1;
    }

    else
    {
      v18 = v15;
    }

    *(v13 + 24) = v18;

    _os_log_impl(&dword_269684000, v10, v22, "UserContextSignal#signal UserContext result:%s, subscriptionStatus: %ld, numberOfLibraryItems: %ld", v13, 0x20u);
    v19 = v23;
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x26D647170](v19, -1, -1);
    MEMORY[0x26D647170](v13, -1, -1);

    return (*(v3 + 8))(v5, v24);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    return (*(v3 + 8))(v5, v2);
  }
}

void sub_2696A33F8()
{
  v0 = sub_26982EB4C();
  if (v0 && (sub_269854FD4(), (v1 & 1) == 0))
  {
    v3 = v0;
    v2 = sub_269854FD4();
    v5 = v4;

    if (v5)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v2 = -1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698580D0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000026987B980;
  if (v0)
  {
    [v0 subscriptionStatus];
    [v0 subscriptionStatus];
  }

  v7 = MEMORY[0x277D83B88];
  v8 = sub_269855544();
  MEMORY[0x26D645A60](v8);

  v9 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x737574617473;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 72) = v9;
  strcpy((inited + 80), "libraryItems");
  *(inited + 120) = v7;
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = v2;
  sub_269854A04();
}

void sub_2696A3584(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2696A33F8();
  sub_26981CFD4();
  if (v28)
  {
    sub_269694FFC(&v26, v29);
    v4 = sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
    OUTLINED_FUNCTION_3_2(v4, v5, v6, v4, v7, v8, v9, v10, v20, v23, v26, *(&v26 + 1), v27, v28, v29[0]);
    [v21 doubleValue];
    v12 = v11;

    a3[49] = v12;
    sub_26981CFD4();
    if (v28)
    {

      v13 = sub_269694FFC(&v26, v29);
      OUTLINED_FUNCTION_3_2(v13, v14, v15, MEMORY[0x277D837D0], v16, v17, v18, v19, v21, v24, v26, *(&v26 + 1), v27, v28, v29[0]);
      a3[50] = v22;
      a3[51] = v25;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2696A36B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedStore];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_269854E34();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_269804154;
  v10[3] = &block_descriptor_7;
  v9 = _Block_copy(v10);

  [v6 userContextOfClass:ObjCClassFromMetadata forBundleIdentifiers:v8 withCompletion:v9];
  _Block_release(v9);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2696A382C(uint64_t a1)
{
  v3 = *(sub_269851D34() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_2696A2D08(a1, v4, v5, v6);
}

uint64_t sub_2696A38A0()
{
  v0 = sub_269854F94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269854F74();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_269854994();
  MEMORY[0x28223BE20](v5 - 8);
  sub_26969329C(0, &qword_2815718E0, 0x277D85C78);
  sub_269854984();
  sub_269854F64();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = sub_269854FB4();
  qword_28033D5E0 = result;
  return result;
}

id sub_2696A3A60()
{
  result = [objc_opt_self() clientWithIdentifier_];
  qword_28033D5E8 = result;
  return result;
}

void sub_2696A3AA0()
{
  if (qword_2803223D8 != -1)
  {
    swift_once();
  }

  v0 = qword_28033D5E8;
  v1 = sub_2696A6EA4(v0, 0xD000000000000018, 0x800000026987BA10, 1);

  qword_28033D5F0 = v1;
}

uint64_t sub_2696A3B30(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];

  sub_2696A74F4(v8, v9, v10, sub_2696A7484, v6);
}

uint64_t sub_2696A3BE4(uint64_t a1)
{
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_281571B50);
  (*(v3 + 16))(v5, v6, v2);
  swift_unknownObjectRetain();
  v7 = sub_2698548B4();
  v8 = sub_269854F04();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = a1;
    v16 = v10;
    *v9 = 136446210;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322E80, &qword_269858A50);
    v11 = sub_269854AE4();
    v13 = sub_26974F520(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_269684000, v7, v8, "AppSelectionConfigurationProvider#updatedHandler new configuration available: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D647170](v10, -1, -1);
    MEMORY[0x26D647170](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return sub_2696B4BEC(sub_2696A3E34, 0);
}

uint64_t sub_2696A3E34()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_281571B50);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2698548B4();
  v6 = sub_269854F44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "AppSelectionConfigurationProvider#updatedHandler loaded new configuration", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_2696A3FC0(uint64_t a1)
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v24 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  memcpy(v29, v4, 0x68uLL);
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v13 = __swift_project_value_buffer(v5, qword_281571B50);
  v22 = *(v7 + 16);
  v22(v12, v13, v5);
  v14 = sub_2698548B4();
  v15 = sub_269854F04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = v7;
    *v16 = 0;
    _os_log_impl(&dword_269684000, v14, v15, "AppSelectionConfigurationProvider#updatedHandler loaded configuration", v16, 2u);
    v7 = v23;
    OUTLINED_FUNCTION_10();
  }

  v17 = *(v7 + 8);
  v17(v12, v5);
  if (*(&v29[1] + 1))
  {
    v27[0] = v29[0];
    v27[1] = v29[1];
    memcpy(v28, &v29[2], sizeof(v28));
    memcpy(v26, v29, sizeof(v26));
    sub_2696A6DC0(v26, &v25);
    v2(v27);
    sub_2696A6DF8(v29);
    OUTLINED_FUNCTION_21_0();
  }

  else
  {
    v22(v24, v13, v5);
    v18 = sub_2698548B4();
    v19 = sub_269854F34();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_269684000, v18, v19, "AppSelectionConfigurationProvider#updatedHandler unexpected nil configuration", v20, 2u);
      OUTLINED_FUNCTION_10();
    }

    v17(v24, v5);
    sub_269855354();
    __break(1u);
  }
}

uint64_t sub_2696A42F4(uint64_t (*a1)(void), uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v240 = a5;
  v233 = a4;
  v246 = a2;
  v250 = *MEMORY[0x277D85DE8];
  v7 = sub_269851DA4();
  v234 = *(v7 - 1);
  v235 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v214 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_269851C74();
  v238 = *(v236 - 8);
  v10 = MEMORY[0x28223BE20](v236);
  v226 = &v214 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v227 = &v214 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v225 = &v214 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v228 = &v214 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v232 = &v214 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v231 = &v214 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v230 = &v214 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v239 = &v214 - v25;
  MEMORY[0x28223BE20](v24);
  v241 = &v214 - v26;
  v247 = sub_2698548D4();
  v27 = *(v247 - 8);
  v28 = MEMORY[0x28223BE20](v247);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v214 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v33 = MEMORY[0x28223BE20](v32);
  v34 = MEMORY[0x28223BE20](v33);
  v35 = MEMORY[0x28223BE20](v34);
  MEMORY[0x28223BE20](v35);
  v37 = MEMORY[0x28223BE20](&v214 - v36);
  v38 = MEMORY[0x28223BE20](v37);
  v39 = MEMORY[0x28223BE20](v38);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v214 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v214 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v214 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v214 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v62 = &v214 - v61;
  if ((a3 & 1) == 0)
  {
    if (qword_280322708 != -1)
    {
      swift_once();
    }

    v113 = v247;
    v114 = __swift_project_value_buffer(v247, qword_281571B50);
    (*(v27 + 16))(v31, v114, v113);
    v115 = sub_2698548B4();
    v116 = sub_269854F04();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_269684000, v115, v116, "AppSelectionConfigurationProvider#load skipping model load as app selection disabled in trial configuration", v117, 2u);
      MEMORY[0x26D647170](v117, -1, -1);
    }

    (*(v27 + 8))(v31, v247);
    goto LABEL_23;
  }

  v220 = v57;
  v221 = v56;
  v222 = v55;
  v223 = v54;
  v224 = v53;
  v219 = v52;
  v218 = v60;
  v216 = v59;
  v217 = v58;
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v63 = __swift_project_value_buffer(v247, qword_281571B50);
  v64 = *(v27 + 16);
  v242 = v63;
  v243 = v64;
  v244 = v27 + 16;
  (v64)(v62);
  v65 = sub_2698548B4();
  v66 = sub_269854F04();
  v67 = os_log_type_enabled(v65, v66);
  v229 = a1;
  if (v67)
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_269684000, v65, v66, "AppSelectionConfigurationProvider#load computing model...", v68, 2u);
    v69 = v68;
    a1 = v229;
    MEMORY[0x26D647170](v69, -1, -1);
  }

  v70 = *(v27 + 8);
  v71 = v247;
  v237 = v27 + 8;
  v245 = v70;
  v70(v62, v247);
  v72 = v240;
  if (!v240)
  {
    v243(v51, v242, v71);
    v118 = sub_2698548B4();
    v119 = sub_269854F24();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_269684000, v118, v119, "AppSelectionConfigurationProvider#load no path for model", v120, 2u);
      MEMORY[0x26D647170](v120, -1, -1);
    }

    v245(v51, v71);
LABEL_23:
    v249 = 0;
    return a1(&v249);
  }

  v243(v48, v242, v71);

  v73 = sub_2698548B4();
  v74 = sub_269854F04();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v249 = v76;
    *v75 = 136315138;
    *(v75 + 4) = sub_26974F520(v233, v72, &v249);
    _os_log_impl(&dword_269684000, v73, v74, "AppSelectionConfigurationProvider#load using path for model: %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    v77 = v76;
    a1 = v229;
    MEMORY[0x26D647170](v77, -1, -1);
    v78 = v75;
    v71 = v247;
    MEMORY[0x26D647170](v78, -1, -1);
  }

  v245(v48, v71);
  v79 = NSTemporaryDirectory();
  sub_269854A94();

  sub_269851C04();

  v80 = objc_opt_self();
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  v81 = swift_allocObject();
  v214 = xmmword_2698580D0;
  *(v81 + 16) = xmmword_2698580D0;
  *(v81 + 32) = sub_269851C54();
  *(v81 + 40) = v82;
  sub_269851D94();
  v83 = sub_269851D54();
  v85 = v84;
  (*(v234 + 8))(v9, v235);
  *(v81 + 48) = v83;
  *(v81 + 56) = v85;
  v86 = sub_269854CA4();

  v235 = v80;
  v87 = [v80 fileURLWithPathComponents_];

  if (v87)
  {
    v88 = v239;
    sub_269851C44();

    v243(v42, v242, v71);
    v89 = sub_2698548B4();
    v90 = sub_269854F44();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_269684000, v89, v90, "AppSelectionConfigurationProvider#load creating temporary directory...", v91, 2u);
      MEMORY[0x26D647170](v91, -1, -1);
    }

    v245(v42, v71);
    v92 = [objc_opt_self() defaultManager];
    v93 = sub_269851C24();
    v249 = 0;
    v94 = [v92 createDirectoryAtURL:v93 withIntermediateDirectories:1 attributes:0 error:&v249];

    v95 = v249;
    if (v94)
    {
      v96 = v220;
      v243(v220, v242, v71);
      v97 = v238;
      v98 = (v238 + 16);
      v99 = v230;
      v100 = v236;
      v221 = *(v238 + 16);
      v221(v230, v88, v236);
      v101 = v95;
      v102 = sub_2698548B4();
      v103 = v71;
      v104 = sub_269854F04();
      if (os_log_type_enabled(v102, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v249 = v106;
        *v105 = 136315138;
        sub_2696A80CC(&qword_280322EB0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v107 = sub_269855544();
        v108 = v99;
        v110 = v109;
        v234 = *(v97 + 8);
        (v234)(v108, v100);
        v111 = sub_26974F520(v107, v110, &v249);

        *(v105 + 4) = v111;
        _os_log_impl(&dword_269684000, v102, v104, "AppSelectionConfigurationProvider#load created temporary directory %s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v106);
        MEMORY[0x26D647170](v106, -1, -1);
        MEMORY[0x26D647170](v105, -1, -1);

        v112 = v96;
        v103 = v247;
      }

      else
      {

        v234 = *(v97 + 8);
        (v234)(v99, v100);
        v112 = v96;
      }

      v245(v112, v103);
      v139 = v231;
      v140 = v222;
      v243(v222, v242, v103);
      v231 = v98;
      v221(v139, v239, v100);
      v141 = sub_2698548B4();
      v142 = v100;
      v143 = sub_269854F04();
      if (os_log_type_enabled(v141, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v249 = v145;
        *v144 = 136315138;
        sub_2696A80CC(&qword_280322EB0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v146 = sub_269855544();
        v147 = v139;
        v149 = v148;
        v150 = v100;
        v151 = v234;
        (v234)(v147, v150);
        v152 = sub_26974F520(v146, v149, &v249);

        *(v144 + 4) = v152;
        _os_log_impl(&dword_269684000, v141, v143, "AppSelectionConfigurationProvider#load using outdir for model: %s", v144, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v145);
        MEMORY[0x26D647170](v145, -1, -1);
        MEMORY[0x26D647170](v144, -1, -1);

        v153 = v140;
        v154 = v247;
      }

      else
      {

        v157 = v100;
        v151 = v234;
        (v234)(v139, v157);
        v153 = v140;
        v154 = v103;
      }

      v245(v153, v154);
      v158 = v229;
      v159 = [objc_allocWithZone(ArchiveExtractor) init];
      v160 = v232;
      sub_269851C14();
      v161 = sub_269851C24();
      v151(v160, v142);
      v162 = sub_269851C24();
      LODWORD(v160) = [v159 extractArchiveAtURL:v161 toDestinationDirectoryURL:v162];

      if (v160)
      {
        v163 = v247;
        v243(v223, v242, v247);
        v164 = sub_2698548B4();
        v165 = sub_269854F04();
        if (os_log_type_enabled(v164, v165))
        {
          v166 = swift_slowAlloc();
          *v166 = 0;
          _os_log_impl(&dword_269684000, v164, v165, "AppSelectionConfigurationProvider#load successfully extracted model", v166, 2u);
          MEMORY[0x26D647170](v166, -1, -1);
        }

        v245(v223, v163);
        v167 = swift_allocObject();
        *(v167 + 16) = v214;
        *(v167 + 32) = sub_269851C54();
        *(v167 + 40) = v168;
        *(v167 + 48) = 0xD00000000000001ELL;
        *(v167 + 56) = 0x800000026987BAA0;
        v169 = sub_269854CA4();

        v170 = [v235 fileURLWithPathComponents_];

        if (v170)
        {
          v171 = v228;
          sub_269851C44();

          v172 = v218;
          v243(v218, v242, v163);
          v173 = v225;
          v221(v225, v171, v142);
          v174 = sub_2698548B4();
          v175 = v163;
          v176 = sub_269854F04();
          if (os_log_type_enabled(v174, v176))
          {
            v177 = swift_slowAlloc();
            v178 = swift_slowAlloc();
            v249 = v178;
            *v177 = 136315138;
            sub_2696A80CC(&qword_280322EB0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v179 = sub_269855544();
            v180 = v173;
            v182 = v181;
            (v234)(v180, v142);
            v183 = sub_26974F520(v179, v182, &v249);

            *(v177 + 4) = v183;
            _os_log_impl(&dword_269684000, v174, v176, "AppSelectionConfigurationProvider#load loading model from: %s", v177, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v178);
            MEMORY[0x26D647170](v178, -1, -1);
            MEMORY[0x26D647170](v177, -1, -1);

            v184 = v247;
            v245(v172, v247);
          }

          else
          {

            (v234)(v173, v142);
            v245(v172, v175);
            v184 = v175;
          }

          v192 = v241;
          v193 = v227;
          v194 = v228;
          v195 = v221;
          v221(v227, v228, v142);
          sub_26969329C(0, &qword_280322EA8, 0x277CBFF20);
          v196 = v226;
          v195(v226, v193, v142);
          v197 = sub_2696A691C(v196);
          (v234)(v193, v142);
          type metadata accessor for PlayMediaAppSelection();
          v198 = swift_allocObject();
          v198[2] = v197;
          v199 = v216;
          v243(v216, v242, v184);

          v200 = sub_2698548B4();
          v201 = v184;
          v202 = sub_269854F04();

          if (os_log_type_enabled(v200, v202))
          {
            v203 = swift_slowAlloc();
            v204 = swift_slowAlloc();
            v249 = v204;
            *v203 = 136315138;
            v248 = v198;

            v205 = sub_269854AE4();
            v207 = sub_26974F520(v205, v206, &v249);

            *(v203 + 4) = v207;
            _os_log_impl(&dword_269684000, v200, v202, "AppSelectionConfigurationProvider#load loaded model successfully: %s", v203, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v204);
            MEMORY[0x26D647170](v204, -1, -1);
            v208 = v203;
            v194 = v228;
            v192 = v241;
            MEMORY[0x26D647170](v208, -1, -1);

            v209 = v199;
            v210 = v247;
          }

          else
          {

            v209 = v199;
            v210 = v201;
          }

          v245(v209, v210);
          v211 = v229;
          v249 = v198;

          v211(&v249);

          v212 = v236;
          v213 = v234;
          (v234)(v194, v236);
          v213(v239, v212);
          v213(v192, v212);
        }

        v243(v219, v242, v163);
        v189 = sub_2698548B4();
        v190 = sub_269854F24();
        if (os_log_type_enabled(v189, v190))
        {
          v191 = swift_slowAlloc();
          *v191 = 0;
          _os_log_impl(&dword_269684000, v189, v190, "AppSelectionConfigurationProvider#load error creating mlmodelc dir url", v191, 2u);
          MEMORY[0x26D647170](v191, -1, -1);
        }

        v188 = &v250;
      }

      else
      {
        v163 = v247;
        v243(v224, v242, v247);
        v185 = sub_2698548B4();
        v186 = sub_269854F24();
        if (os_log_type_enabled(v185, v186))
        {
          v187 = swift_slowAlloc();
          *v187 = 0;
          _os_log_impl(&dword_269684000, v185, v186, "AppSelectionConfigurationProvider#load error extracting model", v187, 2u);
          MEMORY[0x26D647170](v187, -1, -1);
        }

        v188 = &v251;
      }

      v245(*(v188 - 32), v163);
      v249 = 0;
      v158(&v249);
      v151(v239, v142);
      return (v151)(v241, v142);
    }

    v125 = v249;
    v126 = sub_269851BD4();

    swift_willThrow();
    v127 = v221;
    v243(v221, v242, v71);
    v128 = v126;
    v129 = sub_2698548B4();
    v130 = sub_269854F24();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v249 = v132;
      *v131 = 136446210;
      v248 = v126;
      v133 = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
      v134 = sub_269854AE4();
      v136 = sub_26974F520(v134, v135, &v249);
      a1 = v229;

      *(v131 + 4) = v136;
      _os_log_impl(&dword_269684000, v129, v130, "AppSelectionConfigurationProvider#load error creating temporary directory %{public}s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v132);
      v137 = v132;
      v138 = v241;
      MEMORY[0x26D647170](v137, -1, -1);
      MEMORY[0x26D647170](v131, -1, -1);

      v245(v127, v247);
    }

    else
    {

      v245(v127, v71);
      v138 = v241;
    }

    v249 = 0;
    a1(&v249);

    v155 = *(v238 + 8);
    v156 = v236;
    v155(v88, v236);
    return (v155)(v138, v156);
  }

  else
  {
    v243(v45, v242, v71);
    v122 = sub_2698548B4();
    v123 = sub_269854F24();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_269684000, v122, v123, "AppSelectionConfigurationProvider#load error creating model output dir url", v124, 2u);
      MEMORY[0x26D647170](v124, -1, -1);
    }

    v245(v45, v71);
    v249 = 0;
    a1(&v249);
    return (*(v238 + 8))(v241, v236);
  }
}

uint64_t sub_2696A5DDC(uint64_t *a1)
{
  v2 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = *a1;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v10 = __swift_project_value_buffer(v2, qword_281571B50);
  (*(v4 + 16))(v8, v10, v2);

  v11 = sub_2698548B4();
  v12 = sub_269854F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9 != 0;

    _os_log_impl(&dword_269684000, v11, v12, "AppSelectionConfigurationProvider#load model load completed in background?:%{BOOL}d", v13, 8u);
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  return (*(v4 + 8))(v8, v2);
}

id sub_2696A5F80()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8_1();
  sub_269854A64();
  v1 = OUTLINED_FUNCTION_9_2();
  v2 = OUTLINED_FUNCTION_18_1(v1, sel_levelForFactor_withNamespaceName_);

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 BOOLeanValue];

  return v3;
}

void sub_2696A6010()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8_1();
  sub_269854A64();
  v1 = OUTLINED_FUNCTION_9_2();
  v2 = OUTLINED_FUNCTION_18_1(v1, sel_levelForFactor_withNamespaceName_);

  if (v2)
  {
    [v2 doubleValue];
  }
}

void sub_2696A60A8()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8_1();
  sub_269854A64();
  v1 = OUTLINED_FUNCTION_9_2();
  v2 = OUTLINED_FUNCTION_18_1(v1, sel_levelForFactor_withNamespaceName_);

  if (v2)
  {
    [v2 doubleValue];
  }
}

void sub_2696A6140(uint64_t a1)
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_8_1();
  v6 = sub_269854A64();
  v7 = sub_269854A64();
  v8 = [v2 levelForFactor:v6 withNamespaceName:v7];

  if (!v8)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_22:
    sub_2697F1EE0(v24);
    OUTLINED_FUNCTION_21_0();
    return;
  }

  sub_2697DE348(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_7_3();
    MEMORY[0x28223BE20](v10);
    OUTLINED_FUNCTION_12_0();
    v17 = OUTLINED_FUNCTION_20_0(v11, v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_5_4(v17);
    v18 = MEMORY[0x277D84F90];
    while (v29 != v4)
    {
      if (v4 >= v2[2])
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_14_0();
      sub_269851AF4();
      sub_2696A8114();
      sub_2698550F4();
      v19 = OUTLINED_FUNCTION_11_1();
      v20(v19);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_5();
        sub_26977BCE4();
        v18 = v21;
      }

      if (*(v18 + 16) >= *(v18 + 24) >> 1)
      {
        sub_26977BCE4();
        v18 = v22;
      }

      OUTLINED_FUNCTION_13();
    }

    v23 = *(v18 + 16);
    v24 = MEMORY[0x277D84F90];
    while (v23)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_6_4();
      if (v25)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_16_1();
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          OUTLINED_FUNCTION_15_0(v26);
        }

        *(v24 + 16) = v27 + 1;
        v28 = v24 + 16 * v27;
        *(v28 + 32) = v3;
        *(v28 + 40) = v1;
      }
    }

    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
}

void sub_2696A63D8(uint64_t a1)
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_8_1();
  v6 = sub_269854A64();
  v7 = sub_269854A64();
  v8 = [v2 levelForFactor:v6 withNamespaceName:v7];

  if (!v8)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_22:
    sub_2697F1EE0(v24);
    OUTLINED_FUNCTION_21_0();
    return;
  }

  sub_2697DE348(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_7_3();
    MEMORY[0x28223BE20](v10);
    OUTLINED_FUNCTION_12_0();
    v17 = OUTLINED_FUNCTION_20_0(v11, v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_5_4(v17);
    v18 = MEMORY[0x277D84F90];
    while (v29 != v4)
    {
      if (v4 >= v2[2])
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_14_0();
      sub_269851AF4();
      sub_2696A8114();
      sub_2698550F4();
      v19 = OUTLINED_FUNCTION_11_1();
      v20(v19);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_5();
        sub_26977BCE4();
        v18 = v21;
      }

      if (*(v18 + 16) >= *(v18 + 24) >> 1)
      {
        sub_26977BCE4();
        v18 = v22;
      }

      OUTLINED_FUNCTION_13();
    }

    v23 = *(v18 + 16);
    v24 = MEMORY[0x277D84F90];
    while (v23)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_6_4();
      if (v25)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_16_1();
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          OUTLINED_FUNCTION_15_0(v26);
        }

        *(v24 + 16) = v27 + 1;
        v28 = v24 + 16 * v27;
        *(v28 + 32) = v3;
        *(v28 + 40) = v1;
      }
    }

    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_2696A6670()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8_1();
  sub_269854A64();
  v2 = OUTLINED_FUNCTION_9_2();
  v3 = [v0 levelForFactor:v1 withNamespaceName:v2];

  v4 = [v3 fileValue];
  if (!v4)
  {
    return 0;
  }

  if (([v4 hasPath] & 1) == 0 || (v5 = objc_msgSend(v4, sel_path)) == 0)
  {

    return 0;
  }

  v6 = v5;
  v7 = sub_269854A94();

  return v7;
}

void sub_2696A6768(uint64_t a1)
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = *v4;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v13 = __swift_project_value_buffer(v5, qword_281571B50);
  (*(v7 + 16))(v11, v13, v5);

  v14 = sub_2698548B4();
  v15 = sub_269854F44();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = v12 != 0;

    _os_log_impl(&dword_269684000, v14, v15, "AppSelectionConfiguration#model produced model?:%{BOOL}d", v16, 8u);
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  (*(v7 + 8))(v11, v5);
  v2(v12);
  OUTLINED_FUNCTION_21_0();
}

id sub_2696A691C(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_269851C24();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_269851C74();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_269851BD4();

    swift_willThrow();
    v9 = sub_269851C74();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_2696A6A74(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v44 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v14 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v15 = HIBYTE(a6) & 0xF) : (v15 = a5 & 0xFFFFFFFFFFFFLL), !v15))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v14 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    sub_269854C04();
    OUTLINED_FUNCTION_17_1();
    sub_26977BDB4();
    v16 = v30;
    v9 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < v31 >> 1)
    {
LABEL_38:
      *(v16 + 16) = v10;
      v32 = (v16 + 32 * v9);
      v32[4] = v7;
      v32[5] = v11;
      v32[6] = v12;
      v32[7] = v13;
      return v16;
    }

LABEL_41:
    sub_26977BDB4();
    v16 = v33;
    goto LABEL_38;
  }

  v7 = a4;
  v16 = 4 * v15;
  v42 = MEMORY[0x277D84F90];
  v17 = 15;
  while (1)
  {
    v40 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v16)
      {
        v17 = v40;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_10_2();
      v18 = sub_269854BE4();
      v12 = v19;
      v43[0] = v18;
      v43[1] = v19;
      v20 = v44(v43);
      if (v8)
      {

        return v16;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      OUTLINED_FUNCTION_10_2();
      v17 = sub_269854B44();
    }

    v23 = (v40 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v40 >> 14)
    {
      break;
    }

    v41 = sub_269854C04();
    v36 = v25;
    v37 = v24;
    v35 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_5();
      sub_26977BDB4();
      v42 = v28;
    }

    v13 = *(v42 + 16);
    v12 = v13 + 1;
    if (v13 >= *(v42 + 24) >> 1)
    {
      sub_26977BDB4();
      v42 = v29;
    }

    *(v42 + 16) = v12;
    v27 = (v42 + 32 * v13);
    v27[4] = v41;
    v27[5] = v37;
    v27[6] = v36;
    v27[7] = v35;
LABEL_20:
    OUTLINED_FUNCTION_10_2();
    v17 = sub_269854B44();
    if ((v23 & 1) == 0 && *(v42 + 16) == a1)
    {
LABEL_30:
      if (v17 >> 14 == v16 && (a2 & 1) != 0)
      {

        return v42;
      }

      if (v16 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_269854C04();
        OUTLINED_FUNCTION_17_1();
        v16 = v42;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v16 + 16);
          v31 = *(v16 + 24);
          goto LABEL_37;
        }
      }

      OUTLINED_FUNCTION_3_5();
      sub_26977BDB4();
      v16 = v34;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2696A6DF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322E10, &qword_269858A38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2696A6E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_269855584() & 1;
  }
}

uint64_t sub_2696A6EA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v45 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  v53[3] = &type metadata for AppSelectionConfigurationProvider.AppSelectionConfigurationLevelProvider;
  v53[4] = &off_287A3D208;
  v53[0] = a1;
  v53[1] = a2;
  v53[2] = a3;
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v8, qword_281571B50);
  v19 = *(v9 + 16);
  v47 = v18;
  v19(v17);
  v20 = sub_2698548B4();
  v21 = sub_269854F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v46 = v8;
    v23 = v19;
    v24 = a4;
    v25 = v15;
    v26 = v12;
    v27 = v9;
    v28 = v22;
    *v22 = 67109120;
    *(v22 + 4) = 247;
    _os_log_impl(&dword_269684000, v20, v21, "AppSelectionConfigurationProvider#trail project ID: %d", v22, 8u);
    v29 = v28;
    v9 = v27;
    v12 = v26;
    v15 = v25;
    a4 = v24;
    v19 = v23;
    v8 = v46;
    MEMORY[0x26D647170](v29, -1, -1);
  }

  v30 = *(v9 + 8);
  v30(v17, v8);
  sub_2696A73F8(v53, &aBlock);
  v31 = swift_allocObject();
  sub_26968E5D4(&aBlock, v31 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322E18, &unk_269858A40);
  swift_allocObject();
  v32 = sub_2696B21B8(sub_2696A745C, v31);
  if (a4)
  {
    (v19)(v15, v47, v8);

    v33 = sub_2698548B4();
    v34 = sub_269854F04();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_269684000, v33, v34, "AppSelectionConfigurationProvider#updatedHandler enabled...", v35, 2u);
      MEMORY[0x26D647170](v35, -1, -1);
    }

    v30(v15, v8);
    if (qword_2803223D8 != -1)
    {
      swift_once();
    }

    v36 = qword_28033D5E8;
    v37 = sub_269854A64();
    if (qword_2803223D0 != -1)
    {
      swift_once();
    }

    v38 = qword_28033D5E0;
    v51 = sub_2696A7464;
    v52 = v32;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v49 = sub_2697E8CD4;
    v50 = &block_descriptor_8;
    v39 = _Block_copy(&aBlock);

    v40 = [v36 addUpdateHandlerForNamespaceName:v37 queue:v38 usingBlock:v39];
    _Block_release(v39);
    swift_unknownObjectRelease();
  }

  else
  {
    (v19)(v12, v47, v8);
    v41 = sub_2698548B4();
    v42 = sub_269854F04();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_269684000, v41, v42, "AppSelectionConfigurationProvider#updatedHandler disabled", v43, 2u);
      MEMORY[0x26D647170](v43, -1, -1);
    }

    v30(v12, v8);
  }

  __swift_destroy_boxed_opaque_existential_0(v53);
  return v32;
}

uint64_t sub_2696A73F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2696A7484(void *__src)
{
  v2 = *(v1 + 16);
  memcpy(__dst, __src, sizeof(__dst));
  return v2(__dst);
}

uint64_t sub_2696A74F4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v102 = a4;
  v103 = a5;
  v8 = sub_269854954();
  v97 = *(v8 - 8);
  v98 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269854994();
  isa = v11[-1].isa;
  v96 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2698548D4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v108 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v90 - v18;
  v115 = &type metadata for AppSelectionConfigurationProvider.AppSelectionConfigurationLevelProvider;
  v116 = &off_287A3D208;
  v114[0] = a1;
  v114[1] = a2;
  v114[2] = a3;
  v20 = qword_280322708;
  v21 = a1;

  if (v20 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v14, qword_281571B50);
  v93 = *(v15 + 16);
  v94 = v22;
  v93(v19);
  v23 = sub_2698548B4();
  v24 = sub_269854F04();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_269684000, v23, v24, "AppSelectionConfigurationProvider#load loading configuration...", v25, 2u);
    MEMORY[0x26D647170](v25, -1, -1);
  }

  v100 = *(v15 + 8);
  v101 = v15 + 8;
  v100(v19, v14);
  if (qword_2803223D8 != -1)
  {
    swift_once();
  }

  v109 = v14;
  v26 = qword_28033D5E8;
  [qword_28033D5E8 refresh];
  v92 = [v26 trackingId];
  sub_2696D6D30(0xD000000000000018, 0x800000026987BA10, &v117);
  v90[1] = v118;
  v104 = v119;
  v107 = v120;
  v111 = *(&v119 + 1);
  v112 = *(&v120 + 1);
  __swift_project_boxed_opaque_existential_1(v114, v115);
  LOBYTE(v26) = sub_2696A5F80();
  __swift_project_boxed_opaque_existential_1(v114, v115);
  sub_2696A6010();
  v28 = v27;
  __swift_project_boxed_opaque_existential_1(v114, v115);
  sub_2696A60A8();
  v30 = v29;
  __swift_project_boxed_opaque_existential_1(v114, v115);
  v31 = sub_2696A6670();
  v33 = v32;
  v34 = __swift_project_boxed_opaque_existential_1(v114, v115);
  sub_2696A6140(*v34);
  v106 = v35;
  v36 = __swift_project_boxed_opaque_existential_1(v114, v115);
  sub_2696A63D8(*v36);
  v110 = v37;
  v38 = swift_allocObject();
  v105 = v26 & 1;
  *(v38 + 16) = v26 & 1;
  v90[0] = v31;
  *(v38 + 24) = v31;
  *(v38 + 32) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322E90, &qword_269858A58);
  swift_allocObject();
  v91 = v33;

  v39 = sub_2696B2C6C();
  if (qword_2803223D0 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_2696A8040;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2696A8DD0;
  aBlock[3] = &block_descriptor_9;
  v40 = _Block_copy(aBlock);
  v99 = v39;

  sub_269854974();
  v113[0] = MEMORY[0x277D84F90];
  sub_2696A80CC(&qword_281571918, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_269694E4C();
  v41 = v98;
  sub_269855174();
  MEMORY[0x26D645EA0](0, v13, v10, v40);
  _Block_release(v40);
  (*(v97 + 8))(v10, v41);
  (*(isa + 1))(v13, v96);

  v42 = v118;
  if (v118)
  {
    v98 = v117;
    v121 = v119;

    v43 = v111;

    v44 = v112;

    sub_2696A8078(&v121);
    v122 = v120;
    sub_2696A8078(&v122);
  }

  else
  {
    v107 = 0;
    v44 = 0;
    v104 = 0;
    v43 = 0;
    v98 = 0;
  }

  (v93)(v108, v94, v109);

  v45 = v91;

  v46 = v106;

  v47 = v92;

  v48 = sub_2698548B4();
  v49 = sub_269854F04();
  v112 = v44;

  v111 = v43;

  v97 = v42;

  v50 = v47;

  v51 = v46;

  LODWORD(isa) = v49;
  v96 = v48;
  if (os_log_type_enabled(v48, v49))
  {
    v52 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v113[0] = v94;
    *v52 = 67242498;
    *(v52 + 4) = v105;
    *(v52 + 8) = 2048;
    *(v52 + 10) = v28;
    *(v52 + 18) = 2048;
    *(v52 + 20) = v30;
    *(v52 + 28) = 2080;
    aBlock[0] = v90[0];
    aBlock[1] = v45;
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
    v53 = sub_269854AE4();
    v55 = sub_26974F520(v53, v54, v113);

    *(v52 + 30) = v55;
    *(v52 + 38) = 2080;
    v56 = sub_269854E54();
    v58 = sub_26974F520(v56, v57, v113);

    *(v52 + 40) = v58;
    *(v52 + 48) = 2080;
    v59 = sub_269854E54();
    v61 = sub_26974F520(v59, v60, v113);

    *(v52 + 50) = v61;
    *(v52 + 58) = 2080;
    v62 = v47;
    v63 = v47;
    v64 = [v63 description];
    v65 = sub_269854A94();
    v67 = v66;

    v68 = sub_26974F520(v65, v67, v113);

    *(v52 + 60) = v68;
    *(v52 + 68) = 2082;
    v69 = v97;
    if (v97)
    {
      v70 = v97;
    }

    else
    {
      v70 = 0xE000000000000000;
    }

    v71 = v98;
    v72 = sub_26974F520(v98, v70, v113);

    *(v52 + 70) = v72;
    *(v52 + 78) = 2082;
    v73 = v104;
    v74 = v111;
    aBlock[0] = v104;
    aBlock[1] = v111;

    v75 = sub_269854AE4();
    v77 = sub_26974F520(v75, v76, v113);

    *(v52 + 80) = v77;
    *(v52 + 88) = 2080;
    v78 = v112;
    if (v112)
    {
      v79 = v107;
    }

    else
    {
      v79 = 0;
    }

    if (v112)
    {
      v80 = v112;
    }

    else
    {
      v80 = 0xE000000000000000;
    }

    v81 = sub_26974F520(v79, v80, v113);

    *(v52 + 90) = v81;
    v82 = v96;
    _os_log_impl(&dword_269684000, v96, isa, "AppSelectionConfigurationProvider#configuration appSelectionEnabled?:%{BOOL,public}d minimumNormalizedConfidence?:%f minimumAbsoluteConfidence?:%f model:%s  videoAppBundleIdentifiers:%s musicAppBundleIdentifiers:%s trialTrackingId:%s trialExperimentId:%{public}s trialDeploymentId:%{public}s trialTreatmentId:%s", v52, 0x62u);
    v83 = v94;
    swift_arrayDestroy();
    MEMORY[0x26D647170](v83, -1, -1);
    v84 = v52;
    v85 = v107;
    MEMORY[0x26D647170](v84, -1, -1);

    v100(v108, v109);
    v86 = v105;
    v87 = v74;
    v51 = v106;
  }

  else
  {

    v100(v108, v109);
    v73 = v104;
    v86 = v105;
    v69 = v97;
    v71 = v98;
    v62 = v50;
    v87 = v111;
    v78 = v112;
    v85 = v107;
  }

  LOBYTE(v113[0]) = v86;
  v113[1] = v28;
  v113[2] = v30;
  v113[3] = v51;
  v113[4] = v110;
  v113[5] = v62;
  v113[6] = v71;
  v113[7] = v69;
  v113[8] = v85;
  v113[9] = v78;
  v113[10] = v73;
  v113[11] = v87;
  v113[12] = v99;
  memcpy(aBlock, v113, 0x68uLL);

  v88 = v62;
  v102(aBlock);
  sub_2696A8048(v113);

  __swift_destroy_boxed_opaque_existential_0(v114);
}

uint64_t sub_2696A80CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2696A8114()
{
  result = qword_280322EB8;
  if (!qword_280322EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280322EB8);
  }

  return result;
}

uint64_t sub_2696A8180(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_2696A81C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t result)
{
  *(v2 - 152) = v1;
  *(v2 - 136) = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return sub_269854A64();
}

void OUTLINED_FUNCTION_13()
{
  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_14_0()
{
  v3 = *(v0 - 1);
  v4 = *v0;
  *(v1 - 128) = *(v0 - 3);
  *(v1 - 112) = v3;
  *(v1 - 104) = v4;
}

void OUTLINED_FUNCTION_15_0(unint64_t a1@<X8>)
{

  sub_269814F0C(a1 > 1, v1, 1);
}

void OUTLINED_FUNCTION_16_1()
{
  v2 = *(v0 + 16) + 1;

  sub_269814F0C(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_17_1()
{
}

id OUTLINED_FUNCTION_18_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_20_0(void x0_0, void x1_0, void x2_0, uint64_t a1, uint64_t a2, unint64_t a3)
{

  return sub_2696A6A74(0x7FFFFFFFFFFFFFFFLL, 1, v4, a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_22()
{

  return sub_269851B04();
}

uint64_t sub_2696A8450()
{
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_2696A8488(uint64_t (*a1)(id))
{
  v2 = v1;
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = *(v2 + 16);
  [v11 lock];
  if (*(v2 + 24) == 1)
  {
    [v11 unlock];
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    v12 = __swift_project_value_buffer(v4, qword_281571B38);
    (*(v5 + 16))(v10, v12, v4);
    v13 = sub_2698548B4();
    v14 = sub_269854F14();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_269684000, v13, v14, "Skipping pre-completed completion", v15, 2u);
      MEMORY[0x26D647170](v15, -1, -1);
    }

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    v17 = __swift_project_value_buffer(v4, qword_281571B38);
    (*(v5 + 16))(v8, v17, v4);
    v18 = sub_2698548B4();
    v19 = sub_269854F14();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_269684000, v18, v19, "Computing once function...", v20, 2u);
      MEMORY[0x26D647170](v20, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    *(v2 + 24) = 1;
    return a1([v11 unlock]);
  }
}

uint64_t sub_2696A8770()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_2696A87EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v5 = sub_269854954();
  OUTLINED_FUNCTION_8();
  v31 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269854994();
  OUTLINED_FUNCTION_8();
  v30 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = dispatch_group_create();
  v16 = *(a2 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v18 = (a2 + 32);
    v33 = (v31 + 8);
    v34 = &v41;
    v32 = (v30 + 8);
    do
    {
      v37 = v16;
      v19 = swift_allocObject();
      v20 = *v18;
      v36 = v18 + 1;
      *(v19 + 16) = v20;

      dispatch_group_enter(v15);
      v21 = swift_allocObject();
      v21[2] = sub_2696A8D48;
      v21[3] = v19;
      v21[4] = v15;
      OUTLINED_FUNCTION_0_5(v21);
      v40 = 1107296256;
      v41 = sub_2696A8DD0;
      v42 = &block_descriptor_9;
      v35 = _Block_copy(aBlock);

      v22 = v15;
      sub_269854974();
      v38 = v17;
      sub_269694DF4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
      sub_269694E4C();
      sub_269855174();
      v23 = v35;
      MEMORY[0x26D645EA0](0, v14, v9, v35);
      v18 = v36;
      _Block_release(v23);

      (*v33)(v9, v5);
      (*v32)(v14, v10);

      v16 = v37 - 1;
    }

    while (v37 != 1);
  }

  v24 = swift_allocObject();
  v25 = v29;
  *(v24 + 16) = v28;
  *(v24 + 24) = v25;
  OUTLINED_FUNCTION_0_5(v24);
  v40 = 1107296256;
  v41 = sub_2696A8DD0;
  v42 = &block_descriptor_9_0;
  v26 = _Block_copy(aBlock);

  sub_269854974();
  v38 = v17;
  sub_269694DF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_269694E4C();
  sub_269855174();
  sub_269854F54();
  _Block_release(v26);

  (*(v31 + 8))(v9, v5);
  (*(v30 + 8))(v14, v10);
}

uint64_t sub_2696A8C28(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_2696A8D74;
  v8[1] = v6;

  a3(v8);
}

uint64_t sub_2696A8CC4(void (*a1)(uint64_t (*)(), uint64_t), uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = a3;
  a1(sub_2696A8D9C, v5);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t result)
{
  *(v2 - 120) = v1;
  *(v2 - 112) = result;
  *(v2 - 152) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t sub_2696A8DD0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2696A8E14()
{
  v0 = sub_269854F94();
  OUTLINED_FUNCTION_8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  v7 = sub_269854F74();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_3_1();
  v8 = sub_269854994();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_3_1();
  sub_2696ADFE4();
  sub_269854984();
  sub_269854F64();
  (*(v2 + 104))(v6, *MEMORY[0x277D85260], v0);
  result = sub_269854FB4();
  qword_281571B80 = result;
  return result;
}

double sub_2696A8FA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322ED0, &qword_269858BF0);
  v0 = swift_allocObject();
  *&result = 6;
  *(v0 + 16) = xmmword_269858BB0;
  *(v0 + 32) = &type metadata for NowPlayingStateSignal;
  *(v0 + 40) = &off_287A3CB38;
  *(v0 + 48) = &type metadata for LastNowPlayingSignal;
  *(v0 + 56) = &off_287A3C7D8;
  *(v0 + 64) = &type metadata for IntentMediaSignal;
  *(v0 + 72) = &off_287A3C710;
  *(v0 + 80) = &type metadata for ClientContextSignal;
  *(v0 + 88) = &off_287A3BF28;
  *(v0 + 96) = &type metadata for ForegroundAppSignal;
  *(v0 + 104) = &off_287A3C538;
  *(v0 + 112) = &type metadata for NowPlayingAppSignal;
  *(v0 + 120) = &off_287A3CA00;
  qword_281571B88 = v0;
  return result;
}

double sub_2696A9060()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F20, qword_269858C48);
  v0 = swift_allocObject();
  *&result = 5;
  *(v0 + 16) = xmmword_269858BC0;
  *(v0 + 32) = &type metadata for AppUsageSignal;
  *(v0 + 40) = &off_287A3BD20;
  *(v0 + 48) = &type metadata for UserContextSignal;
  *(v0 + 56) = &off_287A3CFE0;
  *(v0 + 64) = &type metadata for SpotlightSignal;
  *(v0 + 72) = &off_287A3CDD0;
  *(v0 + 80) = &type metadata for EntitySearchSignal;
  *(v0 + 88) = &off_287A3C3D0;
  *(v0 + 96) = &type metadata for NowPlayingUsageSignal;
  *(v0 + 104) = &off_287A3CC20;
  qword_281571B78 = v0;
  return result;
}

uint64_t sub_2696A910C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *&v148 = a8;
  v143 = a5;
  v145 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v118 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v144 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v124 = &v115 - v20;
  v140 = sub_269854954();
  OUTLINED_FUNCTION_8();
  v129 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v139 = v24 - v23;
  v138 = sub_269854994();
  OUTLINED_FUNCTION_8();
  v141 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v29 = v28 - v27;
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  v116 = v30;

  v31 = dispatch_group_create();
  v32 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  dispatch_group_enter(v31);
  if (qword_2803223E8 != -1)
  {
    swift_once();
  }

  v137 = qword_281571B80;
  v33 = swift_allocObject();
  *(v33 + 16) = a3;
  *(v33 + 24) = a4;
  *(v33 + 32) = v143;
  *(v33 + 40) = v32;
  *(v33 + 48) = a6;
  v128 = a7;
  *(v33 + 56) = a7;
  v34 = v148;
  *(v33 + 64) = v148;
  *(v33 + 72) = v31;
  v149 = a9;
  *(v33 + 80) = a9;
  *(v33 + 88) = a10;
  v158 = sub_2696AA610;
  v159 = v33;
  OUTLINED_FUNCTION_2_4();
  v155 = 1107296256;
  v156 = sub_2696A8DD0;
  v157 = &block_descriptor_10;
  v35 = _Block_copy(&aBlock);
  v142 = a3;
  v146 = a4;
  sub_2696AA664(a3, a4);
  v147 = a10;

  v125 = v32;
  v117 = a6;

  v135 = v31;
  sub_269854974();
  *&v151 = MEMORY[0x277D84F90];
  v36 = sub_269694DF4();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  v38 = sub_269694E4C();
  v39 = v139;
  v133 = v37;
  v131 = v38;
  v40 = v140;
  v134 = v36;
  sub_269855174();
  MEMORY[0x26D645EA0](0, v29, v39, v35);
  _Block_release(v35);
  v41 = v129 + 8;
  v132 = *(v129 + 8);
  v132(v39, v40);
  v42 = v141 + 8;
  v130 = *(v141 + 8);
  v130(v29, v138);

  v44 = v34;
  if (qword_2803223F8 != -1)
  {
    swift_once();
  }

  v136 = v29;
  v141 = v42;
  v45 = *(qword_281571B88 + 16);
  v46 = MEMORY[0x277D84F90];
  v129 = v41;
  v47 = v145;
  if (v45)
  {
    v48 = 0;
    v49 = qword_281571B88 + 32;
    v50 = *(v34 + 16);
    v127 = (v44 + 32);
    v122 = v118 + 16;
    v121 = v118 + 8;
    v126 = v50 + 1;
    *&v43 = 136315138;
    v119 = v43;
    v52 = v146;
    v51 = v147;
    *&v123 = v50;
    do
    {
      v53 = *(v49 + 16 * v48);
      v148 = v53;
      if (v50)
      {
        v54 = *(*(&v53 + 1) + 8);
        v55 = v126;
        v56 = v127;
        while (--v55)
        {
          v57 = *v56;
          v56 += 2;
          if (v57 == v53)
          {
            goto LABEL_11;
          }
        }

        if (qword_280322708 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        __swift_project_value_buffer(v47, qword_281571B50);
        OUTLINED_FUNCTION_7_4();
        v62 = v124;
        v63(v124);
        v64 = sub_2698548B4();
        v65 = sub_269854F14();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v120 = OUTLINED_FUNCTION_9_3();
          v150 = v120;
          *v66 = v119;
          aBlock = v148;
          v155 = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC8, &qword_269858BE8);
          v67 = sub_269854AE4();
          v69 = v46;
          v70 = v45;
          v71 = v49;
          v72 = sub_26974F520(v67, v68, &v150);

          *(v66 + 4) = v72;
          v49 = v71;
          v45 = v70;
          v46 = v69;
          _os_log_impl(&dword_269684000, v64, v65, "AppSelectionSignals#allowlistApproved skipping non-allowlisted signal: %s", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v120);
          v52 = v146;
          OUTLINED_FUNCTION_10();
          v47 = v145;
          OUTLINED_FUNCTION_10();
        }

        OUTLINED_FUNCTION_7_4();
        v73(v62, v47);
        v41 = v129;
        v51 = v147;
        v61 = v149;
        v50 = v123;
      }

      else
      {
LABEL_11:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v151 = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_269814F2C(0, *(v46 + 16) + 1, 1);
          v51 = v147;
          v46 = v151;
        }

        v60 = *(v46 + 16);
        v59 = *(v46 + 24);
        v61 = v149;
        v43 = v148;
        if (v60 >= v59 >> 1)
        {
          sub_269814F2C(v59 > 1, v60 + 1, 1);
          v43 = v148;
          v51 = v147;
          v46 = v151;
        }

        *(v46 + 16) = v60 + 1;
        *(v46 + 16 * v60 + 32) = v43;
        v47 = v145;
        v52 = v146;
      }

      ++v48;
    }

    while (v48 != v45);
  }

  else
  {
    v52 = v146;
    v51 = v147;
    v61 = v149;
  }

  v74 = *(v46 + 16);
  v75 = v142;
  v76 = v144;
  v77 = v125;
  if (v74)
  {
    v78 = (v46 + 32);
    v126 = v118 + 16;
    v124 = (v118 + 8);
    v127 = &v156;
    *&v43 = 136315138;
    v123 = v43;
    do
    {
      v79 = *v78;
      v148 = *v78;
      if (v75)
      {
        sub_2696AADA0(v79, v52, &v151);
        if (*(&v152 + 1))
        {
          sub_26968E5D4(&v151, &aBlock);
          if (qword_280322708 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v80 = v145;
          __swift_project_value_buffer(v145, qword_281571B50);
          OUTLINED_FUNCTION_7_4();
          v81(v76);
          v82 = sub_2698548B4();
          v83 = sub_269854F04();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = OUTLINED_FUNCTION_9_3();
            v150 = v85;
            *v84 = v123;
            v151 = v148;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC0, &qword_269858BE0);
            v86 = sub_269854AE4();
            v88 = sub_26974F520(v86, v87, &v150);
            v61 = v149;

            *(v84 + 4) = v88;
            _os_log_impl(&dword_269684000, v82, v83, "AppSelectionSignals#rawSignals independent using pre-warmed: %s", v84, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v85);
            v52 = v146;
            OUTLINED_FUNCTION_10();
            v41 = v129;
            OUTLINED_FUNCTION_10();

            OUTLINED_FUNCTION_7_4();
            v90 = v144;
          }

          else
          {

            OUTLINED_FUNCTION_7_4();
            v90 = v76;
          }

          v89(v90, v80);
          v102 = v143;
          swift_beginAccess();
          v103 = v157;
          v104 = v158;
          v105 = __swift_project_boxed_opaque_existential_1(&aBlock, v157);
          v77 = v125;
          sub_2696ABDEC(v105, (v102 + 16), v125, v103, v104);
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_0(&aBlock);
          goto LABEL_36;
        }
      }

      else
      {
        v153 = 0;
        v151 = 0u;
        v152 = 0u;
      }

      sub_269698048(&v151, &qword_280322DA0, qword_269858220);
      v91 = v135;
      dispatch_group_enter(v135);
      v92 = swift_allocObject();
      *(v92 + 16) = v148;
      *(v92 + 32) = v128;
      *(v92 + 40) = v61;
      *(v92 + 48) = v51;
      *(v92 + 56) = v143;
      *(v92 + 64) = v77;
      *(v92 + 72) = v91;
      v158 = sub_2696ABAB4;
      v159 = v92;
      OUTLINED_FUNCTION_2_4();
      v155 = 1107296256;
      v156 = sub_2696A8DD0;
      v157 = &block_descriptor_9_1;
      v93 = _Block_copy(&aBlock);

      v94 = v77;
      v95 = v91;

      v96 = v136;
      sub_269854974();
      OUTLINED_FUNCTION_4_5(MEMORY[0x277D84F90]);
      v97 = v41;
      v98 = v140;
      sub_269855174();
      MEMORY[0x26D645EA0](0, v96, v91, v93);
      _Block_release(v93);
      v99 = v91;
      v52 = v146;
      v100 = v98;
      v41 = v97;
      v132(v99, v100);
      v61 = v149;
      OUTLINED_FUNCTION_5_5();
      v101();

LABEL_36:
      ++v78;
      --v74;
      v75 = v142;
      v51 = v147;
      v76 = v144;
    }

    while (v74);
  }

  v106 = swift_allocObject();
  v107 = v143;
  v108 = v117;
  v106[2] = v143;
  v106[3] = v108;
  v109 = v116;
  v106[4] = sub_2696A9DDC;
  v106[5] = v109;
  v158 = sub_2696ABACC;
  v159 = v106;
  OUTLINED_FUNCTION_2_4();
  v155 = 1107296256;
  v156 = sub_2696A8DD0;
  v157 = &block_descriptor_15;
  v110 = _Block_copy(&aBlock);

  sub_269854974();
  OUTLINED_FUNCTION_4_5(MEMORY[0x277D84F90]);
  v111 = v140;
  sub_269855174();
  v112 = v135;
  sub_269854F54();
  _Block_release(v110);

  v132(v107, v111);
  OUTLINED_FUNCTION_5_5();
  v113();
}

void sub_2696A9DE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, void *a8, uint64_t a9, void (**a10)(char *, uint64_t))
{
  v80 = a7;
  v74 = a5;
  v77 = a2;
  v78 = a4;
  v79 = a1;
  v13 = sub_2698548D4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v73 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v65 - v17;
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v13, qword_281571B50);
  v20 = *(v14 + 16);
  v67 = v19;
  v68 = v14 + 16;
  v66 = v20;
  (v20)(v18);
  v21 = v14;
  v22 = sub_2698548B4();
  v71[0] = sub_269854F04();
  v23 = os_log_type_enabled(v22, v71[0]);
  v72 = a6;
  v70 = v13;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v84[0] = v65;
    *v24 = 136315138;
    *&v85 = sub_2696ACFC0;
    *(&v85 + 1) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EF0, &qword_269858C18);
    v25 = sub_269854AE4();
    v27 = a3;
    v28 = a8;
    v29 = sub_26974F520(v25, v26, v84);
    LOBYTE(a6) = v72;

    *(v24 + 4) = v29;
    a8 = v28;
    a3 = v27;
    v30 = v74;
    _os_log_impl(&dword_269684000, v22, v71[0], "AppSelectionSignals#rawSignals computing signal: %s...", v24, 0xCu);
    v31 = v65;
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x26D647170](v31, -1, -1);
    MEMORY[0x26D647170](v24, -1, -1);

    *v71 = *(v21 + 8);
    (*v71)(v18, v13);
    v32 = v21;
  }

  else
  {

    *v71 = *(v21 + 8);
    (*v71)(v18, v13);
    v32 = v21;
    v30 = v74;
  }

  v69 = v32;
  v33 = v78;
  if (qword_2803223E8 != -1)
  {
    swift_once();
  }

  v34 = swift_allocObject();
  v35 = a3;
  *(v34 + 16) = a3;
  *(v34 + 24) = v33;
  *(v34 + 32) = v30;
  *(v34 + 40) = a6;
  v36 = v79;
  *(v34 + 48) = v80;
  *(v34 + 56) = v36;
  v37 = v77;
  *(v34 + 64) = v77;
  *(v34 + 72) = a8;
  *(v34 + 80) = a9;
  *(v34 + 88) = a10;
  v75 = v35;
  v76 = a8;
  if (!v36)
  {
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v57 = v33;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v58 = a8;
    v59 = v57;
    v60 = v58;
LABEL_17:
    sub_269698048(&v81, &qword_280322DA0, qword_269858220);
    v85 = 0u;
    v86 = 0u;
    v87 = 0;
    v46 = v76;
    goto LABEL_19;
  }

  v74 = a9;

  v38 = v33;

  v39 = a8;
  v40 = v79;
  sub_2696AA664(v79, v37);

  v65 = v38;
  v41 = v30;

  sub_2696AA664(v40, v37);
  v42 = qword_2803223F0;
  v43 = v39;

  if (v42 != -1)
  {
    swift_once();
  }

  sub_2696AADA0(&type metadata for SupportedMediaSignal, v37, &v81);
  v44 = v73;
  if (!*(&v82 + 1))
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324380, &qword_269858C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EE0, &qword_269858C08);
  v45 = swift_dynamicCast();
  v46 = v76;
  if (v45)
  {
    if (*(&v86 + 1))
    {
      sub_26968E5D4(&v85, v84);
      v47 = v70;
      v66(v44, v67, v70);
      v48 = sub_2698548B4();
      v49 = sub_269854F04();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *&v85 = v78;
        *v50 = 136315138;
        *&v81 = &type metadata for SupportedMediaSignal;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EE8, &qword_269858C10);
        v51 = sub_269854AE4();
        v53 = v43;
        v54 = sub_26974F520(v51, v52, &v85);

        *(v50 + 4) = v54;
        v43 = v53;
        _os_log_impl(&dword_269684000, v48, v49, "AppSelectionSignals#gatheringSignal using pre-warmed: %s", v50, 0xCu);
        v55 = v78;
        __swift_destroy_boxed_opaque_existential_0(v78);
        MEMORY[0x26D647170](v55, -1, -1);
        MEMORY[0x26D647170](v50, -1, -1);

        v56 = v73;
      }

      else
      {

        v56 = v44;
      }

      (*v71)(v56, v47);
      v46 = v76;
      v61 = v74;
      v62 = __swift_project_boxed_opaque_existential_1(v84, v84[3]);
      v85 = *v62;
      v86 = *(v62 + 1);
      v87 = v62[4];
      v64 = v61;
      v63 = v65;
      v37 = v77;
      sub_2696AC188(&v85, v75, v65, v41, v72, v80, v79, v77, v43, v64, a10);
      __swift_destroy_boxed_opaque_existential_0(v84);

      goto LABEL_22;
    }
  }

  else
  {
    v87 = 0;
    v85 = 0u;
    v86 = 0u;
  }

LABEL_19:
  sub_269698048(&v85, &qword_280322ED8, &qword_269858BF8);
  if (qword_2803223F0 != -1)
  {
    swift_once();
  }

  sub_2696ABAD8(qword_281571B80, sub_2696AC104, v34);

LABEL_22:

  sub_2696AC148(v79, v37);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2696AA664(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2696AA6A4(uint64_t *a1, uint64_t *a2, void (**a3)(__int128 *))
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  v7 = a3[1];

  return sub_2696AA75C(v3, v4, v5, v6, v7);
}

uint64_t sub_2696AA708(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2696ADD5C(v5, a2, a3, &type metadata for SupportedMediaSignal, &off_287A3CEC8);
}

uint64_t sub_2696AA75C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v9 = sub_2698548D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  if (!a2)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;

LABEL_13:
    sub_269698048(&v34, &qword_280322DA0, qword_269858220);
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    goto LABEL_15;
  }

  v14 = qword_2803223F0;

  if (v14 != -1)
  {
    swift_once();
  }

  sub_2696AADA0(&type metadata for SupportedMediaSignal, a3, &v34);
  if (!*(&v35 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324380, &qword_269858C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EE0, &qword_269858C08);
  if (swift_dynamicCast())
  {
    if (*(&v38 + 1))
    {
      sub_26968E5D4(&v37, v40);
      if (qword_280322708 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v9, qword_281571B50);
      (*(v10 + 16))(v12, v15, v9);
      v16 = sub_2698548B4();
      v17 = sub_269854F04();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v32 = v18;
        v33 = swift_slowAlloc();
        *&v34 = &type metadata for SupportedMediaSignal;
        *&v37 = v33;
        *v18 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EE8, &qword_269858C10);
        v19 = sub_269854AE4();
        v21 = sub_26974F520(v19, v20, &v37);

        v22 = v32;
        *(v32 + 1) = v21;
        _os_log_impl(&dword_269684000, v16, v17, "AppSelectionSignals#gatheringSignal using pre-warmed: %s", v22, 0xCu);
        v23 = v33;
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x26D647170](v23, -1, -1);
        MEMORY[0x26D647170](v22, -1, -1);
      }

      (*(v10 + 8))(v12, v9);
      v24 = __swift_project_boxed_opaque_existential_1(v40, v40[3]);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];
      v29 = v24[4];
      *(&v38 + 1) = &type metadata for SupportedMediaSignal;
      v39 = &off_287A3CEC8;
      v30 = swift_allocObject();
      *&v37 = v30;
      v30[2] = v25;
      v30[3] = v26;
      v30[4] = v27;
      v30[5] = v28;
      v30[6] = v29;

      a4(&v37);
      __swift_destroy_boxed_opaque_existential_0(&v37);
      __swift_destroy_boxed_opaque_existential_0(v40);
      goto LABEL_20;
    }
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
  }

LABEL_15:
  sub_269698048(&v37, &qword_280322ED8, &qword_269858BF8);
  if (qword_2803223F0 != -1)
  {
    swift_once();
  }

  if (qword_2803223E8 != -1)
  {
    swift_once();
  }

  sub_2696ABAD8(qword_281571B80, sub_2696ACFC4, v13);
LABEL_20:
}

uint64_t sub_2696AABF0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, NSObject *a9, uint64_t a10, uint64_t a11)
{
  v14 = a5;
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_2696ACFCC(v18, a2, a3, a4, v14, a6, a7, a8, a9, a10, a11, &type metadata for SupportedMediaSignal, &off_287A3CEC8);
}

uint64_t sub_2696AAC9C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2697F4AE4(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_2696AADA0(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  v14 = *(a3 + 16);
  v15 = a3 + 32;
  if (v14)
  {
    while (1)
    {
      sub_2696A73F8(v15, &v26);
      __swift_project_boxed_opaque_existential_1(&v26, v27);
      if (swift_getDynamicType() == a1)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(&v26);
      v15 += 40;
      if (!--v14)
      {
        goto LABEL_4;
      }
    }

    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    __swift_project_value_buffer(v7, qword_281571B50);
    v16 = OUTLINED_FUNCTION_8_2();
    v17(v16);
    v18 = sub_2698548B4();
    v19 = sub_269854F14();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = OUTLINED_FUNCTION_9_3();
      v25 = v21;
      *v20 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC8, &qword_269858BE8);
      v22 = sub_269854AE4();
      v24 = sub_26974F520(v22, v23, &v25);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_269684000, v18, v19, "AppSelectionSignals#RawSignalResult#signal found existing for type: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    (*(v9 + 8))(v13, v7);
    sub_26968E5D4(&v26, a4);
  }

  else
  {
LABEL_4:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }
}

uint64_t sub_2696AAFEC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  if (qword_2803223E8 != -1)
  {
    swift_once();
  }

  v14 = qword_281571B80;
  swift_beginAccess();
  v15 = *(a6 + 16);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a9;
  v17 = *(a5 + 16);

  v18 = a8;
  v19 = a9;
  v17(a1, a2, a3, v14, v15, sub_2696ADE9C, v16, a4, a5);
}

uint64_t sub_2696AB130(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v40 = a7;
  v41 = a8;
  v39 = a6;
  v42 = a3;
  v12 = sub_2698548D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_281571B50);
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2698548B4();
  v18 = sub_269854F04();
  v19 = os_log_type_enabled(v17, v18);
  v43 = a1;
  v44 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38 = a5;
    v22 = v21;
    v46 = a2;
    v47 = v21;
    *v20 = 136315138;
    v45 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC0, &qword_269858BE0);
    v23 = sub_269854AE4();
    v25 = a4;
    v26 = sub_26974F520(v23, v24, &v47);

    *(v20 + 4) = v26;
    a4 = v25;
    _os_log_impl(&dword_269684000, v17, v18, "AppSelectionSignals#rawSignals computing signal: %s...", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v27 = v22;
    a5 = v38;
    MEMORY[0x26D647170](v27, -1, -1);
    MEMORY[0x26D647170](v20, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  if (qword_2803223E8 != -1)
  {
    swift_once();
  }

  v28 = qword_281571B80;
  v29 = swift_allocObject();
  v30 = v43;
  v31 = v44;
  v29[2] = v43;
  v29[3] = v31;
  v32 = v40;
  v29[4] = v39;
  v29[5] = v32;
  v33 = v41;
  v29[6] = v41;
  v34 = *(v31 + 16);

  v35 = v32;
  v36 = v33;
  v34(v42, a4, a5, v28, sub_2696AC0F0, v29, v30, v31);
}

void sub_2696AB438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, NSObject *a6, uint64_t *a7, uint64_t *a8)
{
  v13 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  __swift_project_value_buffer(v13, qword_281571B50);
  v20 = OUTLINED_FUNCTION_8_2();
  v21(v20);
  sub_2696ADDE8(a1, v43, &qword_280322DA0, qword_269858220);
  v22 = sub_2698548B4();
  v23 = sub_269854F04();
  if (os_log_type_enabled(v22, v23))
  {
    v36 = v13;
    v24 = a1;
    v25 = a8;
    v26 = swift_slowAlloc();
    v35 = OUTLINED_FUNCTION_9_3();
    v40 = v35;
    *&v41 = a2;
    *v26 = 136315394;
    *(&v41 + 1) = a3;
    v27 = v25;
    a1 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, v27);
    v28 = sub_269854AE4();
    v30 = sub_26974F520(v28, v29, &v40);

    *(v26 + 4) = v30;
    *(v26 + 12) = 1024;
    v31 = v44 != 0;
    sub_269698048(v43, &qword_280322DA0, qword_269858220);
    *(v26 + 14) = v31;
    _os_log_impl(&dword_269684000, v22, v23, "AppSelectionSignals#rawSignals received signal: %s, present?:%{BOOL}d", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v15 + 8))(v19, v36);
  }

  else
  {
    sub_269698048(v43, &qword_280322DA0, qword_269858220);

    (*(v15 + 8))(v19, v13);
  }

  sub_2696ADDE8(a1, &v41, &qword_280322DA0, qword_269858220);
  if (v42)
  {
    sub_26968E5D4(&v41, v43);
    swift_beginAccess();
    v32 = v44;
    v33 = v45;
    v34 = __swift_project_boxed_opaque_existential_1(v43, v44);
    sub_2696ABDEC(v34, (a4 + 16), a5, v32, v33);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  else
  {
    sub_269698048(&v41, &qword_280322DA0, qword_269858220);
  }

  dispatch_group_leave(a6);
}

uint64_t sub_2696AB748(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_281571B50);
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_2698548B4();
  v14 = sub_269854F04();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v44 = a3;
    v16 = v15;
    v42 = swift_slowAlloc();
    v48[0] = v42;
    *v16 = 134218498;
    swift_beginAccess();
    *(v16 + 4) = *(*(a1 + 16) + 16);

    *(v16 + 12) = 2080;
    HIDWORD(v41) = v14;

    v18 = sub_2697EFF3C(v17);
    v43 = a4;
    v20 = v19;

    v21 = sub_26974F520(v18, v20, v48);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2080;
    swift_beginAccess();

    v23 = sub_2697DEC04(v22);
    sub_2697F00A8(v23, v24, v25, v26, v27, v28, v29, v30, v41, v42, v43, v44, *v45, *&v45[8], *&v45[16], *v46, *&v46[8], *&v46[16], *v47, *&v47[8], *&v47[16], v48[0], v48[1], v48[2], v49, v50);
    v32 = v31;
    v34 = v33;

    v35 = sub_26974F520(v32, v34, v48);

    *(v16 + 24) = v35;
    _os_log_impl(&dword_269684000, v13, BYTE4(v41), "AppSelectionSignals#rawSignals completed signal gathering with: %ld signals: %s for candidates: %s", v16, 0x20u);
    v36 = v42;
    swift_arrayDestroy();
    MEMORY[0x26D647170](v36, -1, -1);
    v37 = v16;
    a3 = v44;
    MEMORY[0x26D647170](v37, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  v38 = *(a2 + 16);
  swift_beginAccess();
  v39 = *(a1 + 16);

  a3(v38, v39);
}

uint64_t sub_2696ABAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_269851D34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v25 = &type metadata for FeatureFlagServiceImpl;
  v26 = &off_287A41BD8;
  sub_269851D24();
  sub_2696A73F8(v24, &v20);
  (*(v6 + 16))(v9, v11, v5);
  v12 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_26968E5D4(&v20, v13 + 16);
  *(v13 + 56) = a2;
  *(v13 + 64) = a3;
  (*(v6 + 32))(v13 + v12, v9, v5);
  v14 = qword_280322428;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_281571920;

  sub_269841BD4(0x405E000000000000, 0, v15, sub_2696ADEDC, v13, v16, v17, v18, v20, *(&v20 + 1), v21, v22, v23, v24[0], v24[1], v24[2], v25, v26, v27, v28, v29, v30);

  (*(v6 + 8))(v11, v5);
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

id sub_2696ABCE8(uint64_t *a1, uint64_t *a2, void *a3)
{
  v6 = *a1;
  v13 = a1[1];
  v14 = v6;
  v7 = a1[2];
  v11 = a1[3];
  v12 = v7;
  sub_2696ADDE8(&v14, v10, &qword_280322EF8, &qword_269858C20);
  sub_2696ADDE8(&v13, v10, &qword_280322EF8, &qword_269858C20);
  sub_2696ADDE8(&v12, v10, &qword_280322F00, &qword_269858C28);
  sub_2696ADDE8(&v11, v10, &qword_280322F08, &qword_269858C30);
  [a3 lock];
  sub_26977BAAC();
  v8 = *(*a2 + 16);
  sub_26977BBEC();
  sub_2696ABF64(v8, a1, a2);
  return [a3 unlock];
}

uint64_t sub_2696ABDEC(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  v15 = *(v9 + 16);
  v15(&v18 - v13);
  [a3 lock];
  sub_26977BAAC();
  v16 = *(*a2 + 16);
  sub_26977BBEC();
  (v15)(v12, v14, a4);
  sub_2696ABFF8(v16, v12, a2, a4, a5);
  [a3 unlock];
  return (*(v9 + 8))(v14, a4);
}

uint64_t sub_2696ABF64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = &type metadata for SupportedMediaSignal;
  v12 = &off_287A3CEE8;
  v6 = swift_allocObject();
  *&v10 = v6;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_26968E5D4(&v10, v8 + 40 * a1 + 32);
}

uint64_t sub_2696ABFF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_26968E5D4(&v12, v10 + 40 * a1 + 32);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2696AC148(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2696AC188(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, NSObject *a9, char *a10, void (**a11)(char *, uint64_t))
{
  v132 = a8;
  v138 = a7;
  *&v146 = a6;
  v129 = sub_269854954();
  v118 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v128 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_269854994();
  v117 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2698548D4();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v123 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v120 = &v116 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v139 = &v116 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v116 - v26;
  v157 = &type metadata for SupportedMediaSignal;
  v158 = &off_287A3CEC8;
  v28 = swift_allocObject();
  v29 = *a1;
  v161 = a1[1];
  v162 = v29;
  v30 = a1[2];
  v159 = a1[3];
  v160 = v30;
  v31 = a1[4];
  v156[0] = v28;
  v32 = *(a1 + 1);
  *(v28 + 16) = *a1;
  *(v28 + 32) = v32;
  *(v28 + 48) = v31;
  v33 = __swift_project_boxed_opaque_existential_1(v156, &type metadata for SupportedMediaSignal);
  swift_beginAccess();
  v34 = *(v33 + 1);
  v165[0] = *v33;
  v165[1] = v34;
  v166 = v33[4];
  sub_2696ADDE8(&v162, v163, &qword_280322EF8, &qword_269858C20);
  sub_2696ADDE8(&v161, v163, &qword_280322EF8, &qword_269858C20);
  sub_2696ADDE8(&v160, v163, &qword_280322F00, &qword_269858C28);
  sub_2696ADDE8(&v159, v163, &qword_280322F08, &qword_269858C30);
  v136 = a2;
  v137 = a3;
  sub_2696ABCE8(v165, (a2 + 16), a3);
  swift_endAccess();
  v35 = __swift_project_boxed_opaque_existential_1(v156, v157);
  v163[0] = *v35;
  v163[1] = *(v35 + 1);
  v164 = v35[4];
  v131 = a5;
  v36 = sub_2696A2534(a5);
  swift_beginAccess();
  sub_2696AAC9C(v36);
  swift_endAccess();
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v18, qword_281571B50);
  v38 = *(v19 + 16);
  v144 = v19 + 16;
  v145 = v37;
  v143 = v38;
  (v38)(v27);
  sub_2696A73F8(v156, &v148);

  v39 = sub_2698548B4();
  v40 = sub_269854F04();

  v41 = os_log_type_enabled(v39, v40);
  v130 = a4;
  v121 = v19;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v147 = v43;
    *v42 = 136315394;
    __swift_project_boxed_opaque_existential_1(&v148, v150);
    *&v153 = swift_getDynamicType();
    *(&v153 + 1) = v151;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F18, &qword_269858C40);
    v44 = sub_269854AE4();
    v46 = v45;
    __swift_destroy_boxed_opaque_existential_0(&v148);
    v47 = sub_26974F520(v44, v46, &v147);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    swift_beginAccess();

    v48 = sub_269854E54();
    v49 = v27;
    v51 = v50;

    v52 = sub_26974F520(v48, v51, &v147);

    *(v42 + 14) = v52;
    _os_log_impl(&dword_269684000, v39, v40, "AppSelectionSignals#rawSignals received gathering signal: %s with identifiers: %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D647170](v43, -1, -1);
    MEMORY[0x26D647170](v42, -1, -1);

    v142 = v121[1];
    v142(v49, v18);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v148);
    v142 = *(v19 + 8);
    v142(v27, v18);
  }

  v54 = v18;
  v55 = v139;
  v56 = v123;
  if (qword_280322400 != -1)
  {
    swift_once();
  }

  v140 = v54;
  v57 = MEMORY[0x277D84F90];
  v58 = &off_269857000;
  v141 = *(qword_281571B78 + 16);
  if (v141)
  {
    v59 = 0;
    v135 = (qword_281571B78 + 32);
    v60 = *(v146 + 16);
    v133 = (v146 + 32);
    *&v134 = v60;
    v124 = v121 + 1;
    v125 = (v60 + 1);
    *&v53 = 136315138;
    v122 = v53;
    do
    {
      v61 = *&v135[2 * v59];
      v146 = v61;
      if (v134)
      {
        v62 = *(*(&v61 + 1) + 8);
        v63 = v125;
        v64 = v133;
        while (1)
        {
          v63 = (v63 - 1);
          if (!v63)
          {
            break;
          }

          isa = v64->isa;
          v64 += 2;
          if (isa == v61)
          {
            goto LABEL_14;
          }
        }

        v69 = v140;
        v143(v56, v145, v140);
        v70 = sub_2698548B4();
        v71 = sub_269854F14();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v147 = v73;
          *v72 = v122;
          *&v148 = v146;
          *(&v148 + 1) = v62;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC8, &qword_269858BE8);
          v74 = sub_269854AE4();
          v76 = v57;
          v77 = sub_26974F520(v74, v75, &v147);

          *(v72 + 4) = v77;
          v57 = v76;
          v56 = v123;
          _os_log_impl(&dword_269684000, v70, v71, "AppSelectionSignals#allowlistApproved skipping non-allowlisted signal: %s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v73);
          MEMORY[0x26D647170](v73, -1, -1);
          MEMORY[0x26D647170](v72, -1, -1);

          v78 = v56;
          v79 = v140;
        }

        else
        {

          v78 = v56;
          v79 = v69;
        }

        v142(v78, v79);
        v58 = &off_269857000;
      }

      else
      {
LABEL_14:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v153 = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_269814F70(0, *(v57 + 16) + 1, 1);
          v57 = v153;
        }

        v68 = *(v57 + 16);
        v67 = *(v57 + 24);
        v53 = v146;
        if (v68 >= v67 >> 1)
        {
          sub_269814F70(v67 > 1, v68 + 1, 1);
          v53 = v146;
          v57 = v153;
        }

        *(v57 + 16) = v68 + 1;
        *(v57 + 16 * v68 + 32) = v53;
      }

      v59 = (v59 + 1);
    }

    while (v59 != v141);
  }

  v133 = a9;
  v119 = v57;
  v80 = *(v57 + 16);
  v81 = v140;
  if (v80)
  {
    v82 = (v119 + 32);
    v141 = v121 + 1;
    v125 = &v149;
    v124 = a11;
    v123 = a10;
    v121 = (v117 + 8);
    *&v122 = v118 + 8;
    *&v53 = *(v58 + 217);
    v134 = v53;
    while (1)
    {
      v146 = *v82;
      v143(v55, v145, v81);
      v83 = sub_2698548B4();
      v84 = sub_269854F04();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *&v153 = v86;
        *v85 = v134;
        v148 = v146;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F10, &qword_269858C38);
        v87 = sub_269854AE4();
        v135 = v82;
        v89 = sub_26974F520(v87, v88, &v153);

        *(v85 + 4) = v89;
        _os_log_impl(&dword_269684000, v83, v84, "AppSelectionSignals#rawSignals computing signal: %s...", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v86);
        MEMORY[0x26D647170](v86, -1, -1);
        MEMORY[0x26D647170](v85, -1, -1);

        v90 = v55;
        v82 = v135;
      }

      else
      {

        v90 = v55;
      }

      v142(v90, v81);
      if (!v138)
      {
        break;
      }

      sub_2696AADA0(v146, v132, &v153);
      if (!*(&v154 + 1))
      {
        goto LABEL_35;
      }

      sub_26968E5D4(&v153, &v148);
      v91 = v120;
      v143(v120, v145, v81);
      v92 = sub_2698548B4();
      v93 = sub_269854F04();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v147 = v135;
        *v94 = v134;
        v153 = v146;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F10, &qword_269858C38);
        v95 = sub_269854AE4();
        v97 = v81;
        v98 = sub_26974F520(v95, v96, &v147);

        *(v94 + 4) = v98;
        v81 = v97;
        _os_log_impl(&dword_269684000, v92, v93, "AppSelectionSignals#rawSignals dependent using pre-warmed: %s", v94, 0xCu);
        v99 = v135;
        __swift_destroy_boxed_opaque_existential_0(v135);
        MEMORY[0x26D647170](v99, -1, -1);
        MEMORY[0x26D647170](v94, -1, -1);
      }

      v142(v91, v81);
      v100 = v136;
      swift_beginAccess();
      v101 = v150;
      v102 = v151;
      v103 = __swift_project_boxed_opaque_existential_1(&v148, v150);
      sub_2696ABDEC(v103, (v100 + 16), v137, v101, v102);
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_0(&v148);
LABEL_38:
      v55 = v139;
      v82 += 2;
      if (!--v80)
      {
        goto LABEL_39;
      }
    }

    v155 = 0;
    v153 = 0u;
    v154 = 0u;
LABEL_35:
    sub_269698048(&v153, &qword_280322DA0, qword_269858220);
    v104 = v133;
    dispatch_group_enter(v133);
    if (qword_2803223E8 != -1)
    {
      swift_once();
    }

    v105 = swift_allocObject();
    *(v105 + 16) = v131;
    v106 = v124;
    *(v105 + 24) = v123;
    *(v105 + 32) = v106;
    *(v105 + 40) = v146;
    v108 = v136;
    v107 = v137;
    *(v105 + 56) = v130;
    *(v105 + 64) = v108;
    *(v105 + 72) = v107;
    *(v105 + 80) = v104;
    v151 = sub_2696ADE50;
    v152 = v105;
    *&v148 = MEMORY[0x277D85DD0];
    *(&v148 + 1) = 1107296256;
    v149 = sub_2696A8DD0;
    v150 = &block_descriptor_34;
    v109 = _Block_copy(&v148);

    v110 = v107;
    v111 = v104;
    v112 = v126;
    sub_269854974();
    *&v153 = MEMORY[0x277D84F90];
    sub_269694DF4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
    sub_269694E4C();
    v114 = v128;
    v113 = v129;
    sub_269855174();
    MEMORY[0x26D645EA0](0, v112, v114, v109);
    _Block_release(v109);
    (*v122)(v114, v113);
    (*v121)(v112, v127);

    v81 = v140;
    goto LABEL_38;
  }

LABEL_39:

  dispatch_group_leave(v133);
  return __swift_destroy_boxed_opaque_existential_0(v156);
}

uint64_t sub_2696ACFCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, NSObject *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v125 = a8;
  v133 = a7;
  *&v130 = a6;
  v128 = a4;
  v123 = sub_269854954();
  v114 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_269854994();
  v113 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2698548D4();
  v115 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  *&v141 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v134 = &v112 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v112 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v112 - v27;
  v152 = a12;
  v153 = a13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v151);
  (*(*(a12 - 8) + 16))(boxed_opaque_existential_1, a1, a12);
  v30 = __swift_project_boxed_opaque_existential_1(v151, v152);
  swift_beginAccess();
  v31 = *(v30 + 1);
  v157[0] = *v30;
  v157[1] = v31;
  v158 = v30[4];
  v131 = a2;
  v132 = a3;
  sub_2696ABCE8(v157, (a2 + 16), a3);
  swift_endAccess();
  v32 = __swift_project_boxed_opaque_existential_1(v151, v152);
  v33 = *(v32 + 1);
  v154 = *v32;
  v155 = v33;
  v156 = v32[4];
  v124 = a5;
  v34 = sub_2696A2534(a5);
  swift_beginAccess();
  sub_2696AAC9C(v34);
  swift_endAccess();
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v19, qword_281571B50);
  v36 = v115;
  v37 = *(v115 + 16);
  v139 = v115 + 16;
  v140 = v35;
  v138 = v37;
  (v37)(v28);
  sub_2696A73F8(v151, &v143);

  v38 = sub_2698548B4();
  v39 = sub_269854F04();

  v40 = os_log_type_enabled(v38, v39);
  v126 = v19;
  v136 = v26;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v137 = v28;
    v42 = v142;
    *v41 = 136315394;
    __swift_project_boxed_opaque_existential_1(&v143, v145);
    *&v148 = swift_getDynamicType();
    *(&v148 + 1) = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F18, &qword_269858C40);
    v43 = sub_269854AE4();
    v45 = v44;
    __swift_destroy_boxed_opaque_existential_0(&v143);
    v46 = sub_26974F520(v43, v45, &v142);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    swift_beginAccess();

    v47 = sub_269854E54();
    v49 = v48;

    v50 = sub_26974F520(v47, v49, &v142);
    v26 = v136;

    *(v41 + 14) = v50;
    _os_log_impl(&dword_269684000, v38, v39, "AppSelectionSignals#rawSignals received gathering signal: %s with identifiers: %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D647170](v42, -1, -1);
    v51 = v41;
    v52 = v126;
    MEMORY[0x26D647170](v51, -1, -1);

    v53 = *(v36 + 8);
    v54 = v137;
  }

  else
  {
    v52 = v19;

    __swift_destroy_boxed_opaque_existential_0(&v143);
    v53 = *(v36 + 8);
    v54 = v28;
  }

  v137 = v53;
  (v53)(v54, v52);
  v56 = v36;
  v57 = v141;
  if (qword_280322400 != -1)
  {
    swift_once();
  }

  v58 = *(qword_281571B78 + 16);
  if (v58)
  {
    v59 = 0;
    v135 = qword_281571B78 + 32;
    v60 = *(v130 + 16);
    v127 = (v130 + 32);
    v117 = v56 + 8;
    *&v130 = v60;
    v119 = (v60 + 1);
    v61 = MEMORY[0x277D84F90];
    *&v55 = 136315138;
    v116 = v55;
    v118 = v58;
    do
    {
      v62 = *(v135 + 16 * v59);
      v141 = v62;
      if (v130)
      {
        v63 = *(*(&v62 + 1) + 8);
        v64 = v119;
        v65 = v127;
        while (1)
        {
          v64 = (v64 - 1);
          if (!v64)
          {
            break;
          }

          isa = v65->isa;
          v65 += 2;
          if (isa == v62)
          {
            goto LABEL_14;
          }
        }

        v129 = v61;
        v138(v57, v140, v52);
        v70 = sub_2698548B4();
        v71 = v57;
        v72 = sub_269854F14();
        if (os_log_type_enabled(v70, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v142 = v74;
          *v73 = v116;
          *&v143 = v141;
          *(&v143 + 1) = v63;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC8, &qword_269858BE8);
          v75 = sub_269854AE4();
          v77 = sub_26974F520(v75, v76, &v142);

          *(v73 + 4) = v77;
          v26 = v136;
          _os_log_impl(&dword_269684000, v70, v72, "AppSelectionSignals#allowlistApproved skipping non-allowlisted signal: %s", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v74);
          MEMORY[0x26D647170](v74, -1, -1);
          MEMORY[0x26D647170](v73, -1, -1);
        }

        (v137)(v71, v52);
        v61 = v129;
        v57 = v71;
        v58 = v118;
      }

      else
      {
LABEL_14:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v148 = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_269814F70(0, *(v61 + 16) + 1, 1);
          v61 = v148;
        }

        v69 = *(v61 + 16);
        v68 = *(v61 + 24);
        v55 = v141;
        if (v69 >= v68 >> 1)
        {
          sub_269814F70(v68 > 1, v69 + 1, 1);
          v55 = v141;
          v61 = v148;
        }

        *(v61 + 16) = v69 + 1;
        *(v61 + 16 * v69 + 32) = v55;
      }

      ++v59;
    }

    while (v59 != v58);
  }

  else
  {
    v61 = MEMORY[0x277D84F90];
  }

  v127 = a9;
  v129 = v61;
  v78 = *(v61 + 16);
  if (v78)
  {
    v79 = (v129 + 32);
    v135 = v115 + 8;
    v119 = &v144;
    v118 = a11;
    v117 = a10;
    v115 = v113 + 8;
    *&v116 = v114 + 8;
    *&v55 = 136315138;
    v130 = v55;
    while (1)
    {
      v141 = *v79;
      v138(v26, v140, v52);
      v80 = sub_2698548B4();
      v81 = sub_269854F04();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v148 = v83;
        *v82 = v130;
        v143 = v141;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F10, &qword_269858C38);
        v84 = sub_269854AE4();
        v86 = sub_26974F520(v84, v85, &v148);
        v26 = v136;

        *(v82 + 4) = v86;
        _os_log_impl(&dword_269684000, v80, v81, "AppSelectionSignals#rawSignals computing signal: %s...", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v83);
        MEMORY[0x26D647170](v83, -1, -1);
        MEMORY[0x26D647170](v82, -1, -1);
      }

      (v137)(v26, v52);
      v87 = v134;
      if (!v133)
      {
        break;
      }

      sub_2696AADA0(v141, v125, &v148);
      if (!*(&v149 + 1))
      {
        goto LABEL_34;
      }

      sub_26968E5D4(&v148, &v143);
      v138(v87, v140, v52);
      v88 = sub_2698548B4();
      v89 = sub_269854F04();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v142 = v91;
        *v90 = v130;
        v148 = v141;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F10, &qword_269858C38);
        v92 = sub_269854AE4();
        v94 = sub_26974F520(v92, v93, &v142);

        *(v90 + 4) = v94;
        v26 = v136;
        _os_log_impl(&dword_269684000, v88, v89, "AppSelectionSignals#rawSignals dependent using pre-warmed: %s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v91);
        MEMORY[0x26D647170](v91, -1, -1);
        MEMORY[0x26D647170](v90, -1, -1);

        v95 = v134;
      }

      else
      {

        v95 = v87;
      }

      (v137)(v95, v52);
      v107 = v131;
      swift_beginAccess();
      v108 = v145;
      v109 = v146;
      v110 = __swift_project_boxed_opaque_existential_1(&v143, v145);
      sub_2696ABDEC(v110, (v107 + 16), v132, v108, v109);
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_0(&v143);
LABEL_39:
      ++v79;
      if (!--v78)
      {
        goto LABEL_40;
      }
    }

    v150 = 0;
    v148 = 0u;
    v149 = 0u;
LABEL_34:
    sub_269698048(&v148, &qword_280322DA0, qword_269858220);
    v96 = v127;
    dispatch_group_enter(v127);
    if (qword_2803223E8 != -1)
    {
      swift_once();
    }

    v97 = swift_allocObject();
    *(v97 + 16) = v124;
    v98 = v118;
    *(v97 + 24) = v117;
    *(v97 + 32) = v98;
    *(v97 + 40) = v141;
    v100 = v131;
    v99 = v132;
    *(v97 + 56) = v128;
    *(v97 + 64) = v100;
    *(v97 + 72) = v99;
    *(v97 + 80) = v96;
    v146 = sub_2696AE058;
    v147 = v97;
    *&v143 = MEMORY[0x277D85DD0];
    *(&v143 + 1) = 1107296256;
    v144 = sub_2696A8DD0;
    v145 = &block_descriptor_48;
    v101 = _Block_copy(&v143);

    v102 = v99;
    v103 = v96;
    v104 = v120;
    sub_269854974();
    *&v148 = MEMORY[0x277D84F90];
    sub_269694DF4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
    sub_269694E4C();
    v106 = v122;
    v105 = v123;
    sub_269855174();
    MEMORY[0x26D645EA0](0, v104, v106, v101);
    _Block_release(v101);
    (*v116)(v106, v105);
    (*v115)(v104, v121);

    v52 = v126;
    v26 = v136;
    goto LABEL_39;
  }

LABEL_40:

  dispatch_group_leave(v127);
  return __swift_destroy_boxed_opaque_existential_0(v151);
}

uint64_t sub_2696ADD5C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[3] = a4;
  v10[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  a2(v10);
  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_2696ADDE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_17Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2696ADEDC(uint64_t a1)
{
  v3 = *(sub_269851D34() - 8);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80));

  return sub_2696A1A84(a1, v1 + 16, v4, v5, v6);
}

uint64_t objectdestroy_30Tm()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t sub_2696ADFE4()
{
  result = qword_2815718E0;
  if (!qword_2815718E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2815718E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return swift_slowAlloc();
}

uint64_t sub_2696AE120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t sub_2696AE158()
{
  if (qword_2803223F8 != -1)
  {
    swift_once();
  }

  v1 = sub_26974CC7C(v0);

  qword_280322F28 = v1;
  return result;
}

uint64_t sub_2696AE1CC()
{
  v3[3] = &type metadata for CoreAnalyticsService;
  v3[4] = &xmmword_287A41610;
  type metadata accessor for AppSelector();
  v0 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v3, &type metadata for CoreAnalyticsService);
  v1 = sub_2696B2564(sub_2696AE258, 0, v0);
  result = __swift_destroy_boxed_opaque_existential_0(v3);
  qword_28033D5F8 = v1;
  return result;
}

double sub_2696AE258@<D0>(_OWORD *a1@<X8>)
{
  if (qword_2803223D8 != -1)
  {
    swift_once();
  }

  sub_2696D6D30(0xD000000000000018, 0x800000026987BA10, v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_2696AE2E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F38, &unk_269858D30);
  swift_allocObject();
  result = sub_2696B2304(sub_2696AE34C, 0);
  qword_281571A50 = result;
  return result;
}

uint64_t sub_2696AE34C(uint64_t a1, uint64_t a2)
{
  v4 = sub_269854824();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v56 = v6;
  v57 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = &v53 - v7;
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v61 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = qword_280322708;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_281571B50);
  v17 = *(v9 + 16);
  v17(v13, v16, v8);
  v18 = sub_2698548B4();
  v19 = sub_269854F44();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_269684000, v18, v19, "AppSelector#warmup AtomicValue requesting signal warmup", v20, 2u);
    MEMORY[0x26D647170](v20, -1, -1);
  }

  v21 = *(v9 + 8);
  v21(v13, v8);
  if (qword_280322408 != -1)
  {
    swift_once();
  }

  v22 = qword_280322F28;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2696B29B0;
  *(v23 + 24) = v14;
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D84F90];
  v54 = v24;
  *(v24 + 16) = MEMORY[0x277D84F90];
  v26 = swift_allocObject();
  sub_2697F1EE0(v25);
  v53 = v26;
  *(v26 + 16) = v27;
  v28 = v61;
  v17(v61, v16, v8);

  v29 = sub_2698548B4();
  v30 = sub_269854F14();

  v31 = os_log_type_enabled(v29, v30);
  v55 = v22;
  if (v31)
  {
    v32 = v22;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v62 = v34;
    *v33 = 136315138;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC8, &qword_269858BE8);
    v36 = MEMORY[0x26D645BC0](v32, v35);
    v38 = sub_26974F520(v36, v37, &v62);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_269684000, v29, v30, "AppSelectionSignals#rawSignals signal gathering with allowlist: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x26D647170](v34, -1, -1);
    MEMORY[0x26D647170](v33, -1, -1);

    v39 = v61;
  }

  else
  {

    v39 = v28;
  }

  v21(v39, v8);
  v40 = swift_allocObject();
  *(v40 + 16) = sub_2696B29E8;
  *(v40 + 24) = v23;
  v41 = qword_2803226D8;

  v61 = v23;
  if (v41 != -1)
  {
    swift_once();
  }

  v42 = qword_281571B68;
  v43 = v58;
  sub_2698547F4();
  sub_269854FF4();
  sub_2698547D4();
  v45 = v59;
  v44 = v60;
  v46 = v57;
  (*(v59 + 16))(v57, v43, v60);
  v47 = (*(v45 + 80) + 33) & ~*(v45 + 80);
  v48 = (v56 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = "appSelectionSignalsRawSignals";
  *(v49 + 24) = 29;
  *(v49 + 32) = 2;
  (*(v45 + 32))(v49 + v47, v46, v44);
  v50 = (v49 + v48);
  *v50 = sub_2696B29F0;
  v50[1] = v40;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_2696B2A20;
  *(v51 + 24) = v49;

  sub_2696A910C(sub_2696B2A24, v51, 0, 0, v54, v53, 2, v55, 0, 0);

  (*(v45 + 8))(v43, v44);
}

uint64_t sub_2696AEA00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_2698548D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_281571B50);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2698548B4();
  v12 = sub_269854F44();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_269684000, v11, v12, "AppSelector#warmup AtomicValue complete", v13, 2u);
    MEMORY[0x26D647170](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return a3(a1, a2);
}

void sub_2696AEBC0()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_269854954();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = sub_269854994();
  OUTLINED_FUNCTION_8();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  if (qword_2803223E8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_23();
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  *(v18 + 24) = v1;
  v20[4] = sub_2696B2C30;
  v20[5] = v18;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_2696A8DD0;
  v20[3] = &block_descriptor_11;
  v19 = _Block_copy(v20);

  sub_269854974();
  sub_269694DF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_269694E4C();
  sub_269855174();
  MEMORY[0x26D645EA0](0, v17, v10, v19);
  _Block_release(v19);
  (*(v6 + 8))(v10, v4);
  (*(v13 + 8))(v17, v11);

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2696AEE2C(uint64_t a1, uint64_t a2)
{
  if (qword_280322418 != -1)
  {
    swift_once();
  }

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_2696B50E4(sub_2696B2C50, v4);
}

uint64_t sub_2696AEEE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2698548D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_281571B50);
  (*(v7 + 16))(v9, v12, v6);
  sub_2696AA664(v10, v11);
  v13 = sub_2698548B4();
  v14 = sub_269854F04();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v10 != 0;
    sub_2696AC148(v10, v11);
    _os_log_impl(&dword_269684000, v13, v14, "AppSelector#warm signal warmup results non-nil?: %{BOOL}d", v15, 8u);
    MEMORY[0x26D647170](v15, -1, -1);
  }

  else
  {
    sub_2696AC148(v10, v11);
  }

  (*(v7 + 8))(v9, v6);
  if (qword_2803223E0 != -1)
  {
    swift_once();
  }

  v16 = qword_28033D5F0;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = v10;
  v17[5] = v11;
  sub_2696AA664(v10, v11);

  sub_269842524(0, 1, v16, sub_2696B2C58, v17);
}

uint64_t sub_2696AF170(uint64_t a1, uint64_t (*a2)(BOOL), uint64_t a3, uint64_t a4)
{
  v6 = sub_2698548D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_281571B50);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2698548B4();
  v12 = sub_269854F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_269684000, v11, v12, "AppSelector#warm configuration load complete", v13, 2u);
    MEMORY[0x26D647170](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return a2(a4 != 0);
}

void sub_2696AF32C()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v61 = v7;
  v59 = v8;
  v55 = v10;
  v56 = v9;
  v58 = v11;
  v12 = *v0;
  v62 = sub_269854824();
  OUTLINED_FUNCTION_8();
  v60 = v13;
  v15 = MEMORY[0x28223BE20](v14);
  v51 = v16;
  v52 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v50 - v17;
  v18 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v24 = v23 - v22;
  v25 = swift_allocObject();
  v25[2] = v4;
  v25[3] = v2;
  v25[4] = v6;
  v25[5] = v12;
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D84F90];
  v54 = v26;
  *(v26 + 16) = MEMORY[0x277D84F90];
  v28 = swift_allocObject();

  sub_2697F1EE0(v27);
  v53 = v28;
  *(v28 + 16) = v29;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v30 = __swift_project_value_buffer(v18, qword_281571B50);
  (*(v20 + 16))(v24, v30, v18);
  v31 = sub_2698548B4();
  v32 = sub_269854F14();
  if (os_log_type_enabled(v31, v32))
  {
    swift_slowAlloc();
    v33 = OUTLINED_FUNCTION_18_2();
    v63 = v33;
    *v12 = 136315138;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC8, &qword_269858BE8);
    v35 = MEMORY[0x26D645BC0](MEMORY[0x277D84F90], v34);
    v37 = sub_26974F520(v35, v36, &v63);

    *(v12 + 4) = v37;
    _os_log_impl(&dword_269684000, v31, v32, "AppSelectionSignals#rawSignals signal gathering with allowlist: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  (*(v20 + 8))(v24, v18);
  v50 = v25;
  OUTLINED_FUNCTION_23();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_2696B2AE4;
  *(v38 + 24) = v25;
  v39 = qword_2803226D8;

  if (v39 != -1)
  {
    OUTLINED_FUNCTION_11_2(&qword_2803226D8);
  }

  v40 = qword_281571B68;
  v41 = v57;
  sub_2698547F4();
  sub_269854FF4();
  sub_2698547D4();
  v42 = v60;
  v43 = v52;
  v44 = v62;
  (*(v60 + 16))(v52, v41, v62);
  v45 = (*(v42 + 80) + 33) & ~*(v42 + 80);
  v46 = (v51 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = "appSelectionSignalsRawSignals";
  *(v47 + 24) = 29;
  *(v47 + 32) = 2;
  (*(v42 + 32))(v47 + v45, v43, v44);
  v48 = (v47 + v46);
  *v48 = sub_2696B2C64;
  v48[1] = v38;
  OUTLINED_FUNCTION_23();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_2696B2C68;
  *(v49 + 24) = v47;

  sub_2696A910C(sub_2696B2C70, v49, v59, v61, v54, v53, v58 & 1, MEMORY[0x277D84F90], v56, v55);

  (*(v42 + 8))(v41, v44);

  OUTLINED_FUNCTION_21_0();
}

void sub_2696AF888(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = sub_2698548D4();
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - v13;
  if (a1)
  {
    v74 = a5;
    v71 = v12;

    v16 = sub_2697DEC04(v15);
    v17 = v16[2];
    v18 = MEMORY[0x277D84F90];
    v81 = v16;
    v72 = a4;
    v73 = a3;
    if (!v17)
    {
LABEL_11:
      v27 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
      v17 = 0;
      v50 = sub_2696B8774(v18, v27);

      v51 = sub_269854A04();
      v52 = v16[2];
      v79 = v50 & 0xC000000000000001;
      v80 = v52;
      v78 = v50 & 0xFFFFFFFFFFFFFF8;
      for (i = v16 + 5; ; i += 2)
      {
        if (v80 == v17)
        {

          (v73)(v51, v16);

          goto LABEL_39;
        }

        if (v17 >= v16[2])
        {
          goto LABEL_43;
        }

        v54 = *(i - 1);
        v55 = *i;
        if (v79)
        {

          v56 = v50;
          MEMORY[0x26D646120](v17, v50);
        }

        else
        {
          if (v17 >= *(v78 + 16))
          {
            goto LABEL_45;
          }

          v56 = v50;
        }

        v57 = sub_2696B8130();

        v58 = 0;
        if (*(v57 + 16))
        {
          v59 = sub_26973ED38(1);
          if (v60)
          {
            v58 = *(*(v57 + 56) + 8 * v59);
          }
        }

        swift_isUniquelyReferenced_nonNull_native();
        v82[0] = v51;
        v61 = sub_26973CEF8(v54, v55);
        if (__OFADD__(v51[2], (v62 & 1) == 0))
        {
          goto LABEL_44;
        }

        v63 = v61;
        a3 = v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F50, qword_269858D50);
        if (sub_2698552E4())
        {
          v64 = sub_26973CEF8(v54, v55);
          v16 = v81;
          if ((a3 & 1) != (v65 & 1))
          {
            sub_2698555F4();
            __break(1u);
            return;
          }

          v63 = v64;
        }

        else
        {
          v16 = v81;
        }

        v50 = v56;
        if (a3)
        {

          v51 = v82[0];
          *(*(v82[0] + 56) + 8 * v63) = v58;
        }

        else
        {
          v51 = v82[0];
          *(v82[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
          v66 = (v51[6] + 16 * v63);
          *v66 = v54;
          v66[1] = v55;
          *(v51[7] + 8 * v63) = v58;
          v67 = v51[2];
          v68 = __OFADD__(v67, 1);
          v69 = v67 + 1;
          if (v68)
          {
            goto LABEL_46;
          }

          v51[2] = v69;
        }

        v17 = (v17 + 1);
      }
    }

    v85 = MEMORY[0x277D84F90];
    sub_2698552A4();
    a3 = 0;
    v79 = v17;
    v80 = (v16 + 4);
    v19 = *(a2 + 16);
    v77 = a2 + 32;
    v78 = v19;
    while (a3 < v16[2])
    {
      v20 = (v80 + 16 * a3);
      v22 = *v20;
      v21 = v20[1];
      type metadata accessor for PlayMediaAppSelectionInput();
      swift_allocObject();
      v23 = sub_2696B7F88(0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0, 0, 0, 0, 0, 0, 0xE000000000000000, 0, 0, 0, 0xE000000000000000, 0, 0, 0, 0xE000000000000000, 0);
      if (v19)
      {

        v24 = v77;
        do
        {
          sub_2696A73F8(v24, v82);
          v25 = v83;
          v26 = v84;
          __swift_project_boxed_opaque_existential_1(v82, v83);
          (*(v26 + 32))(v22, v21, v23, v25, v26);
          __swift_destroy_boxed_opaque_existential_0(v82);
          v24 += 40;
          --v19;
        }

        while (v19);

        v16 = v81;
        v19 = v78;
        v17 = v79;
      }

      a3 = (a3 + 1);
      sub_269855284();
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      if (a3 == v17)
      {
        v18 = v85;
        a3 = v73;
        goto LABEL_11;
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
    __break(1u);
    swift_once();
    v28 = v76;
    v29 = __swift_project_value_buffer(v76, qword_281571B50);
    v30 = v75;
    v31 = v71;
    (*(v75 + 16))(v71, v29, v28);
    v32 = v17;
    v33 = sub_2698548B4();
    v34 = sub_269854F44();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = v30;
      v37 = swift_slowAlloc();
      v82[0] = v37;
      *v35 = 136315138;
      v85 = v17;
      v38 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
      v39 = sub_269854AE4();
      v41 = sub_26974F520(v39, v40, v82);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_269684000, v33, v34, "Error predicting app selection apps: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x26D647170](v37, -1, -1);
      MEMORY[0x26D647170](v35, -1, -1);

      (*(v36 + 8))(v71, v76);
    }

    else
    {

      (*(v30 + 8))(v31, v28);
    }

    sub_269854A04();
    a3();
  }

  else
  {
    if (qword_280322708 != -1)
    {
      swift_once();
    }

    v42 = v76;
    v43 = __swift_project_value_buffer(v76, qword_281571B50);
    (*(v75 + 16))(v14, v43, v42);
    v44 = sub_2698548B4();
    v45 = sub_269854F44();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_269684000, v44, v45, "No results from app selection signal gathering", v46, 2u);
      v47 = v46;
      v42 = v76;
      MEMORY[0x26D647170](v47, -1, -1);
    }

    (*(v75 + 8))(v14, v42);
    v48 = MEMORY[0x277D84F90];
    v49 = sub_269854A04();
    (a3)(v49, v48);
LABEL_39:
  }
}

uint64_t sub_2696B0124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11)
{
  v214 = a7;
  v213 = a6;
  v223 = a5;
  v207 = a4;
  v206 = a3;
  v14 = type metadata accessor for AppSelectionResult(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = (&v193 - v20);
  v201 = type metadata accessor for AppDisambiguationContext(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v24 - v23);
  v217 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v218 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12();
  v29 = v27 - v28;
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v193 - v32;
  MEMORY[0x28223BE20](v31);
  v204 = &v193 - v34;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v35);
  v200 = &v193 - v36;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v37);
  v39 = OUTLINED_FUNCTION_15_1(&v193 - v38);
  type metadata accessor for ModelParams(v39);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_1();
  v44 = v43 - v42;
  if (*(a1 + 16))
  {
    v197 = v41;
    v195 = v18;
    v199 = v44;
    v203 = v21;
    v196 = a8;
    v208 = v14;
    v210 = a11;
    v209 = a10;
    v198 = a9;
    v45 = a1 + 64;
    v46 = 1;
    v47 = 1 << *(a1 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(a1 + 64);
    v50 = (v47 + 63) >> 6;

    v51 = 0;
    v52 = 0;
    v215 = 0;
    v53 = 0.0;
    v54 = 0.0;
    v216 = a1;
    while (v49)
    {
LABEL_10:
      v56 = __clz(__rbit64(v49)) | (v51 << 6);
      v57 = *(*(a1 + 56) + 8 * v56);
      v49 &= v49 - 1;
      v54 = v54 + v57;
      v58 = v46 | (v53 < v57);
      v46 = 0;
      if (v58)
      {
        v59 = (*(a1 + 48) + 16 * v56);
        v52 = *v59;
        v60 = v59[1];

        OUTLINED_FUNCTION_27();

        v46 = 0;
        v53 = v57;
        v215 = v60;
        a1 = v216;
      }
    }

    while (1)
    {
      v55 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        OUTLINED_FUNCTION_0_4(&qword_280322700);
LABEL_15:
        v61 = v217;
        __swift_project_value_buffer(v217, qword_281571B38);
        OUTLINED_FUNCTION_25();
        v62(v33);
        v63 = sub_2698548B4();
        v64 = sub_269854F24();
        v65 = os_log_type_enabled(v63, v64);
        v66 = v203;
        if (v65)
        {
          v67 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_24(v67);
          OUTLINED_FUNCTION_29(&dword_269684000, v63, v64, "AppSelector#selectApp invalid or empty result");
          OUTLINED_FUNCTION_12_1();
        }

        (*(v218 + 8))(v33, v61);
        v68 = v213;
        *v66 = v223;
        v66[1] = v68;
        v66[2] = v214;
        swift_storeEnumTagMultiPayload();

        (v51)(v66);
        OUTLINED_FUNCTION_0_7();
        v70 = v66;
LABEL_18:
        sub_2696B2A8C(v70, v69);
        OUTLINED_FUNCTION_27();
      }

      if (v55 >= v50)
      {
        break;
      }

      v49 = *(v45 + 8 * v55);
      ++v51;
      if (v49)
      {
        v51 = v55;
        goto LABEL_10;
      }
    }

    if (!OUTLINED_FUNCTION_27() || v46 & 1 | (v54 <= 0.0))
    {
      v51 = v209;
      if (qword_280322700 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_86;
    }

    v78 = *(a2 + 8);
    v79 = *(a2 + 16);
    v33 = *(a1 + 16);
    v194 = v52;
    if (v33)
    {
      *&v226[0] = MEMORY[0x277D84F90];

      sub_269814FF8(0, v33, 0);
      v80 = *&v226[0];
      v51 = sub_2697F1D9C();
      v83 = 0;
      v212 = a1 + 72;
      v219 = v33;
      v220 = v45;
      if ((v51 & 0x8000000000000000) == 0)
      {
        while (v51 < 1 << *(a1 + 32))
        {
          v84 = v51 >> 6;
          if ((*(v45 + 8 * (v51 >> 6)) & (1 << v51)) == 0)
          {
            goto LABEL_81;
          }

          if (*(a1 + 36) != v81)
          {
            goto LABEL_82;
          }

          v221 = v82;
          v222 = v83;
          v223 = v81;
          v85 = (*(a1 + 48) + 16 * v51);
          v87 = *v85;
          v86 = v85[1];
          v88 = *(*(a1 + 56) + 8 * v51);
          *&v226[0] = v80;
          v33 = *(v80 + 16);
          v89 = *(v80 + 24);

          if (v33 >= v89 >> 1)
          {
            sub_269814FF8(v89 > 1, v33 + 1, 1);
            v80 = *&v226[0];
          }

          *(v80 + 16) = v33 + 1;
          v90 = (v80 + 24 * v33);
          v90[4] = v87;
          v90[5] = v86;
          v90[6] = v88;
          v91 = 1 << *(a1 + 32);
          if (v51 >= v91)
          {
            goto LABEL_83;
          }

          v45 = v220;
          v92 = *(v220 + 8 * v84);
          if ((v92 & (1 << v51)) == 0)
          {
            goto LABEL_84;
          }

          if (*(a1 + 36) != v223)
          {
            goto LABEL_85;
          }

          v93 = v92 & (-2 << (v51 & 0x3F));
          if (v93)
          {
            v91 = __clz(__rbit64(v93)) | v51 & 0x7FFFFFFFFFFFFFC0;
            v33 = v219;
            v94 = v222;
          }

          else
          {
            v95 = v84 << 6;
            v96 = v84 + 1;
            v97 = (v212 + 8 * v84);
            v33 = v219;
            v94 = v222;
            while (v96 < (v91 + 63) >> 6)
            {
              v99 = *v97++;
              v98 = v99;
              v95 += 64;
              ++v96;
              if (v99)
              {
                sub_26968E5C8(v51, v223, v221 & 1);
                v91 = __clz(__rbit64(v98)) + v95;
                goto LABEL_41;
              }
            }

            sub_26968E5C8(v51, v223, v221 & 1);
LABEL_41:
            a1 = v216;
          }

          v83 = v94 + 1;
          if (v83 == v33)
          {
            goto LABEL_46;
          }

          v82 = 0;
          v81 = *(a1 + 36);
          v51 = v91;
          if (v91 < 0)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_80;
    }

    v80 = MEMORY[0x277D84F90];
LABEL_46:
    *&v226[0] = v80;

    sub_2697E0E9C(v226);
    v100 = v217;
    v101 = v218;
    v102 = sub_269771A0C(5, *&v226[0]);
    v223 = sub_2697DEC88(v102, v103, v104);
    v105 = v197;
    v106 = v197[5];
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F40, &unk_269858D40);
    v108 = v199;
    OUTLINED_FUNCTION_28(v199 + v106, v109, v110, v107);
    v111 = *(v205 + 24);
    v112 = v207;

    v111(v226, v113);
    *v108 = v206;
    v108[1] = v112;
    *(v108 + v105[6]) = v80;
    v114 = (v108 + v105[7]);
    v115 = v226[1];
    *v114 = v226[0];
    v114[1] = v115;
    v114[2] = v226[2];
    v116 = (v108 + v105[8]);
    v117 = v214;
    *v116 = v213;
    v116[1] = v117;
    v118 = qword_280322700;

    if (v118 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    v119 = v53 / v54;
    v120 = __swift_project_value_buffer(v100, qword_281571B38);
    v121 = v101[2];
    v122 = v211;
    v121(v211, v120, v100);
    v123 = v198;

    v124 = sub_2698548B4();
    v125 = sub_269854F14();

    if (os_log_type_enabled(v124, v125))
    {
      swift_slowAlloc();
      v126 = v101;
      v127 = OUTLINED_FUNCTION_18_2();
      v224[1] = v123;
      v225 = v127;
      *v122 = 136315138;
      v224[0] = v196;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
      v128 = sub_269854AE4();
      v101 = v129;
      v130 = sub_26974F520(v128, v129, &v225);

      *(v122 + 4) = v130;
      OUTLINED_FUNCTION_7_5();
      _os_log_impl(v131, v132, v133, v134, v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v127);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v136 = v126[1];
      v136(v211, v100);
    }

    else
    {

      v136 = v101[1];
      v136(v122, v100);
    }

    v137 = v204;
    v138 = v53 < v79 || v119 < v78;
    if (v138 && *(v216 + 16) >= 2uLL)
    {
      OUTLINED_FUNCTION_27();

      if (qword_280322708 != -1)
      {
        OUTLINED_FUNCTION_2_1(&qword_280322708);
      }

      v139 = v217;
      v140 = __swift_project_value_buffer(v217, qword_281571B50);
      v121(v200, v140, v139);
      v141 = sub_2698548B4();
      v142 = sub_269854F04();
      if (OUTLINED_FUNCTION_17_2(v142))
      {
        v143 = swift_slowAlloc();
        *v143 = 67109376;
        *(v143 + 4) = v53 < v79;
        *(v143 + 8) = 1024;
        *(v143 + 10) = v119 < v78;
        OUTLINED_FUNCTION_7_5();
        _os_log_impl(v144, v145, v146, v147, v148, 0xEu);
        OUTLINED_FUNCTION_10();
      }

      v149 = OUTLINED_FUNCTION_10_3();
      v136(v149, v217);
      if (v119 >= v78)
      {
        v150 = 2 * (v53 < v79);
      }

      else
      {
        v150 = (2 * (v53 < v79)) | 4;
      }

      v151 = v201;
      OUTLINED_FUNCTION_6_5();
      v152 = v202;
      sub_2696B2A2C(v199, v202 + v153, v154);
      v155 = v151[8];
      v156 = sub_269853984();
      OUTLINED_FUNCTION_28(v152 + v155, v157, v158, v156);
      *v152 = v223;
      *(v152 + 8) = 0;
      *(v152 + 16) = v150;
      *(v152 + v151[9]) = 0;
      v159 = (v152 + v151[10]);
      v160 = v198;
      *v159 = v196;
      v159[1] = v160;
      v161 = v203;
      sub_2696B2A2C(v152, v203, type metadata accessor for AppDisambiguationContext);
      swift_storeEnumTagMultiPayload();

      v209(v161);
      OUTLINED_FUNCTION_0_7();
      sub_2696B2A8C(v161, v162);
      sub_2696B2A8C(v152, type metadata accessor for AppDisambiguationContext);
      v70 = OUTLINED_FUNCTION_5_6();
      goto LABEL_18;
    }

    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_2_1(&qword_280322708);
    }

    v163 = v217;
    v164 = __swift_project_value_buffer(v217, qword_281571B50);
    v121(v137, v164, v163);
    v165 = v215;

    v166 = sub_2698548B4();
    v167 = sub_269854F04();

    if (os_log_type_enabled(v166, v167))
    {
      swift_slowAlloc();
      v101 = OUTLINED_FUNCTION_18_2();
      v224[0] = v101;
      *v122 = 136315650;
      v168 = v194;
      *(v122 + 4) = sub_26974F520(v194, v165, v224);
      *(v122 + 12) = 2048;
      *(v122 + 14) = v53;
      *(v122 + 22) = 2048;
      *(v122 + 24) = v119;
      OUTLINED_FUNCTION_7_5();
      _os_log_impl(v169, v170, v171, v172, v173, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v101);
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_10();

      v174 = OUTLINED_FUNCTION_10_3();
      v136(v174, v163);
      OUTLINED_FUNCTION_21_1();
    }

    else
    {

      v175 = OUTLINED_FUNCTION_10_3();
      v136(v175, v163);
      OUTLINED_FUNCTION_21_1();
      v168 = v194;
    }

    *v101 = v168;
    v101[1] = v165;
    v176 = v223;
    v177 = v223[2];
    if (v177)
    {
      v224[0] = MEMORY[0x277D84F90];
      sub_269814F0C(0, v177, 0);
      v178 = v224[0];
      v179 = v176 + 5;
      do
      {
        v181 = *(v179 - 1);
        v180 = *v179;
        v224[0] = v178;
        v182 = *(v178 + 16);
        v183 = *(v178 + 24);

        if (v182 >= v183 >> 1)
        {
          sub_269814F0C(v183 > 1, v182 + 1, 1);
          v178 = v224[0];
        }

        *(v178 + 16) = v182 + 1;
        v184 = v178 + 16 * v182;
        *(v184 + 32) = v181;
        *(v184 + 40) = v180;
        v179 += 3;
        --v177;
      }

      while (v177);

      v101 = v195;
    }

    else
    {

      v178 = MEMORY[0x277D84F90];
    }

    v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F48, &unk_2698667E0);
    v186 = *(v185 + 64);
    v187 = (v101 + *(v185 + 80));
    v101[2] = v178;
    OUTLINED_FUNCTION_6_5();
    sub_2696B2A2C(v199, v101 + v186, v188);
    __swift_storeEnumTagSinglePayload(v101 + v186, 0, 1, v197);
    v189 = v198;
    *v187 = v196;
    v187[1] = v189;
    swift_storeEnumTagMultiPayload();

    v209(v101);
    OUTLINED_FUNCTION_0_7();
    sub_2696B2A8C(v101, v190);
    v191 = OUTLINED_FUNCTION_5_6();
    sub_2696B2A8C(v191, v192);
  }

  else
  {
    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_2_1(&qword_280322708);
    }

    __swift_project_value_buffer(v217, qword_281571B50);
    OUTLINED_FUNCTION_25();
    v71(v29);
    v72 = sub_2698548B4();
    v73 = sub_269854F24();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_24(v74);
      OUTLINED_FUNCTION_29(&dword_269684000, v72, v73, "AppSelector#selectApp nil or empty results");
      OUTLINED_FUNCTION_12_1();
    }

    (*(v218 + 8))(v29, v217);
    v75 = v213;
    *v21 = v223;
    v21[1] = v75;
    v21[2] = v214;
    swift_storeEnumTagMultiPayload();

    a10(v21);
    OUTLINED_FUNCTION_0_7();
    return sub_2696B2A8C(v21, v76);
  }
}

void sub_2696B10EC()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v28 = v2;
  v29 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v30 = v12;
  v31 = *v0;
  v13 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v20 = __swift_project_value_buffer(v13, qword_281571B50);
  (*(v15 + 16))(v19, v20, v13);
  v21 = sub_2698548B4();
  v22 = sub_269854F44();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_16_2();
    *v23 = 0;
    _os_log_impl(&dword_269684000, v21, v22, "AppSelector#select IS supported for this intent", v23, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v15 + 8))(v19, v13);
  v24 = swift_allocObject();
  v24[2] = v1;
  v24[3] = v28;
  v24[4] = v29;
  v25 = qword_2803223E0;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_28033D5F0;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2696B2928;
  *(v27 + 24) = v24;
  *(v27 + 32) = v30;
  *(v27 + 40) = v9;
  *(v27 + 48) = v1;
  *(v27 + 56) = v11 & 1;
  *(v27 + 64) = v7;
  *(v27 + 72) = v5;
  *(v27 + 80) = v31;

  sub_269842524(0, 1, v26, sub_2696B2934, v27);

  OUTLINED_FUNCTION_21_0();
}

void sub_2696B1408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  if (qword_280322418 != -1)
  {
    swift_once();
  }

  v17 = qword_281571A50;
  sub_2696A6DC0(a1, v20);

  LOBYTE(v18) = a7 & 1;
  sub_269844528(0x4024000000000000, 0, v17, a1, a2, a3, a4, a5, a6, v18, a8, a9, v19, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9], v20[10], v20[11], v20[12]);
}

void sub_2696B1508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_1();
  HIDWORD(v76) = v22;
  v78 = v24;
  v79 = v23;
  v77 = v25;
  v27 = v26;
  v82 = v29;
  v83 = v28;
  v31 = v30;
  v74 = type metadata accessor for AppSelectionResult(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v34 - v33);
  v35 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_12();
  v80 = (v39 - v40);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v41);
  v43 = &v73 - v42;
  v44 = *v31;
  v45 = v31[1];
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v46 = __swift_project_value_buffer(v35, qword_281571B50);
  v84 = v37;
  v47 = v37[2];
  v47(v43, v46, v35);
  sub_2696AA664(v44, v45);
  v48 = sub_2698548B4();
  v49 = sub_269854F44();
  v50 = os_log_type_enabled(v48, v49);
  v81 = v44;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v73 = v27;
    v52 = v51;
    *v51 = 67109120;
    *(v51 + 1) = v44 != 0;
    sub_2696AC148(v44, v45);
    _os_log_impl(&dword_269684000, v48, v49, "AppSelector#select has raw results from warmup?: %{BOOL}d", v52, 8u);
    v27 = v73;
    OUTLINED_FUNCTION_10();
  }

  else
  {
    sub_2696AC148(v44, v45);
  }

  v53 = v84[1];
  ++v84;
  v53(v43, v35);
  if (*v83)
  {
    v73 = v53;
    v74 = a21;
    v47(v80, v46, v35);
    v54 = v81;
    sub_2696AA664(v81, v45);
    v55 = v79;

    v56 = v78;

    v57 = v83;
    sub_2696A6DC0(v83, v85);

    sub_2696AA664(v54, v45);

    sub_2696A6DC0(v57, v85);
    v75 = a22;

    v58 = sub_2698548B4();
    v59 = sub_269854F44();
    if (OUTLINED_FUNCTION_17_2(v59))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_7_5();
      _os_log_impl(v60, v61, v62, v63, v64, 2u);
      OUTLINED_FUNCTION_10();
    }

    v73(v80, v35);
    v65 = v83;
    v66 = *(v83 + 96);
    v67 = v81;
    sub_2696AA664(v81, v45);

    sub_2696A6DC0(v65, v85);
    v68 = BYTE4(v76) & 1;
    v69 = v75;

    LOBYTE(v72) = v68;
    sub_2698437DC(0, 1, v66, v82, v27, v77, v55, v56, v72, v67, v45, v65, v74, v69, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0], v85[1]);

    sub_2696AC148(v67, v45);
    sub_2696A8048(v65);

    sub_2696AC148(v67, v45);
    sub_2696A8048(v65);
  }

  else
  {
    v70 = v75;
    swift_storeEnumTagMultiPayload();
    v82(v70);
    OUTLINED_FUNCTION_0_7();
    sub_2696B2A8C(v70, v71);
  }

  OUTLINED_FUNCTION_21_0();
}

void sub_2696B19C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_19_1();
  v82 = v25;
  v83 = v24;
  v81 = v26;
  v28 = v27;
  v80 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = type metadata accessor for AppSelectionResult(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_1();
  v40 = (v39 - v38);
  v41 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_12();
  v76 = (v45 - v46);
  OUTLINED_FUNCTION_22_0();
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v74 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v74 - v51;
  if (!v35)
  {
    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_2_1(&qword_280322708);
    }

    v63 = __swift_project_value_buffer(v41, qword_281571B50);
    (*(v43 + 16))(v52, v63, v41);
    v64 = sub_2698548B4();
    v65 = sub_269854F24();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_24(v66);
      OUTLINED_FUNCTION_29(&dword_269684000, v64, v65, "PlayMediaAppSelector#select error loading app selection model");
      OUTLINED_FUNCTION_12_1();
    }

    (*(v43 + 8))(v52, v41);
    *v40 = 0;
    v40[1] = 0;
    v40[2] = 0;
    swift_storeEnumTagMultiPayload();
    v33(v40);
    goto LABEL_16;
  }

  v75 = v28;
  v74 = v36;
  v77 = v35;
  v78 = v33;
  v53 = qword_280322708;

  if (v53 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v79 = v31;
  v54 = __swift_project_value_buffer(v41, qword_281571B50);
  v55 = *(v43 + 16);
  v55(v50, v54, v41);
  v56 = sub_2698548B4();
  v57 = sub_269854F44();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_16_2();
    *v58 = 0;
    _os_log_impl(&dword_269684000, v56, v57, "PlayMediaAppSelector#select loaded app selection model", v58, 2u);
    OUTLINED_FUNCTION_10();
  }

  v59 = *(v43 + 8);
  v59(v50, v41);
  v60 = v83;
  if (!v83)
  {
    v67 = v76;
    v55(v76, v54, v41);
    v68 = sub_2698548B4();
    v69 = sub_269854F24();
    v70 = OUTLINED_FUNCTION_17_2(v69);
    v71 = v78;
    if (v70)
    {
      v72 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_24(v72);
      OUTLINED_FUNCTION_29(&dword_269684000, v68, v67, "PlayMediaAppSelector#select missing search term");
      OUTLINED_FUNCTION_12_1();
    }

    v59(v67, v41);
    swift_storeEnumTagMultiPayload();
    v71(v40);

LABEL_16:
    OUTLINED_FUNCTION_0_7();
    sub_2696B2A8C(v40, v73);
    goto LABEL_17;
  }

  v61 = swift_allocObject();
  v61[2] = v75;
  memcpy(v61 + 3, a22, 0x68uLL);
  v61[16] = v80;
  v61[17] = v60;
  v62 = v78;
  v61[18] = v77;
  v61[19] = a23;
  v61[20] = a24;
  v61[21] = v62;
  v61[22] = v79;

  sub_2696A6DC0(a22, &v84);

  sub_2696AF32C();

LABEL_17:
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2696B1E5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11)
{
  v47 = a6;
  v48 = a7;
  v17 = sub_2698548D4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v45 = a10;
  v46 = a11;
  v44 = a9;
  v21 = __swift_project_value_buffer(v17, qword_281571B50);
  (*(v18 + 16))(v20, v21, v17);

  v22 = sub_2698548B4();
  v43 = v17;
  v23 = v22;
  v24 = sub_269854F44();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v42 = a8;
    v26 = v25;
    v27 = swift_slowAlloc();
    v41 = a3;
    v39 = v27;
    v49 = v27;
    *v26 = 136315138;
    v28 = sub_2698549F4();
    v40 = a4;
    v30 = a1;
    v31 = a5;
    v32 = sub_26974F520(v28, v29, &v49);
    a4 = v40;

    *(v26 + 4) = v32;
    a5 = v31;
    a1 = v30;
    _os_log_impl(&dword_269684000, v23, v24, "AppSelector#select signals gathered with results: %s", v26, 0xCu);
    v33 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x26D647170](v33, -1, -1);
    v34 = v26;
    a8 = v42;
    MEMORY[0x26D647170](v34, -1, -1);
  }

  (*(v18 + 8))(v20, v43);
  v35 = sub_2696D3A90();
  sub_2696B0124(a1, a4, a5, v47, a2, v35, v36, a8, v44, v45, v46);
}

void *sub_2696B2138()
{

  return v0;
}

uint64_t sub_2696B2168()
{
  sub_2696B2138();
  v0 = OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2696B21B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v2 + 24) = 0;
  v5 = qword_281571B90;
  v6 = sub_269851D34();
  OUTLINED_FUNCTION_28(v2 + v5, v7, v8, v6);
  OUTLINED_FUNCTION_26();
  v10 = v2 + *(v9 + 112);
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  OUTLINED_FUNCTION_26();
  v12 = (v2 + *(v11 + 120));
  *v12 = a1;
  v12[1] = a2;
  return v2;
}

uint64_t sub_2696B2268(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v2 + 24) = 0;
  v5 = qword_281571B90;
  v6 = sub_269851D34();
  OUTLINED_FUNCTION_28(v2 + v5, v7, v8, v6);
  OUTLINED_FUNCTION_26();
  *(v2 + *(v9 + 112)) = 0;
  OUTLINED_FUNCTION_26();
  v11 = (v2 + *(v10 + 120));
  *v11 = a1;
  v11[1] = a2;
  return v2;
}

uint64_t sub_2696B2304(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v2 + 24) = 0;
  v5 = qword_281571B90;
  v6 = sub_269851D34();
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  v7 = (v2 + *(*v2 + 112));
  *v7 = 0;
  v7[1] = 0;
  v8 = (v2 + *(*v2 + 120));
  *v8 = a1;
  v8[1] = a2;
  return v2;
}

uint64_t sub_2696B23B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *))
{
  v8 = a1;
  sub_269854FE4();
  if (qword_2803226D8 != -1)
  {
    OUTLINED_FUNCTION_11_2(&qword_2803226D8);
  }

  sub_2698547E4();
  return a6(&v8);
}

uint64_t sub_2696B2468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *))
{
  v9[0] = a1;
  v9[1] = a2;
  sub_269854FE4();
  if (qword_2803226D8 != -1)
  {
    swift_once();
  }

  sub_2698547E4();
  return a7(v9);
}

void *sub_2696B2564(uint64_t a1, uint64_t a2, void *a3)
{
  v27[3] = &type metadata for CoreAnalyticsService;
  v27[4] = &xmmword_287A41610;
  v25 = &type metadata for UTSProvider;
  v26 = &off_287A43FA8;
  v6 = swift_allocObject();
  v23 = &xmmword_287A41610;
  v24[0] = v6;
  v22 = &type metadata for CoreAnalyticsService;
  v6[5] = &type metadata for UTSNetworkProvider;
  v6[6] = &off_287A43DC0;
  v7 = swift_allocObject();
  v6[2] = v7;
  sub_2697D24B0(&v21, (v7 + 16));
  v6[10] = &type metadata for CoreAnalyticsService;
  v6[11] = &xmmword_287A41610;
  v22 = &type metadata for ContentResolver;
  v23 = &off_287A42478;
  *&v21 = swift_allocObject();
  sub_2696B2824(v24, v21 + 16);
  type metadata accessor for BackgroundPlayableFetch();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(&v21, &type metadata for ContentResolver);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v19 = &type metadata for ContentResolver;
  v20 = &off_287A42478;
  v13 = swift_allocObject();
  *&v18 = v13;
  v14 = *(v11 + 1);
  *(v13 + 16) = *v11;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(v11 + 4);
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803241A0, &qword_26985F1E0);
  sub_2696B2880();
  *(v8 + 152) = sub_269854A04();
  sub_26968E5D4(&v18, v8 + 112);
  __swift_destroy_boxed_opaque_existential_0(&v21);
  sub_2696B28D4(v24);
  a3[5] = v8;
  sub_2696A73F8(v27, v24);
  __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v22 = &type metadata for CoreAnalyticsService;
  v23 = &xmmword_287A41610;
  type metadata accessor for AppSelectionResultAnalyticsLogger();
  v15 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v21, &type metadata for CoreAnalyticsService);
  v15[5] = &type metadata for CoreAnalyticsService;
  v15[6] = &xmmword_287A41610;
  v15[7] = a1;
  v15[8] = a2;

  __swift_destroy_boxed_opaque_existential_0(&v21);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v24);
  a3[2] = v15;
  a3[3] = a1;
  a3[4] = a2;
  return a3;
}

unint64_t sub_2696B2880()
{
  result = qword_280322F30;
  if (!qword_280322F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280322F30);
  }

  return result;
}

uint64_t sub_2696B29B0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t sub_2696B2A2C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2696B2A8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_35Tm()
{
  sub_269854824();
  OUTLINED_FUNCTION_4_3();
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_2696B2B88(uint64_t *a1)
{
  v3 = *(sub_269854824() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_2696B252C(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_12_1()
{

  JUMPOUT(0x26D647170);
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_17_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_18_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void OUTLINED_FUNCTION_29(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
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

uint64_t sub_2696B2E38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2696B2E78(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_2696B2ED4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698580D0;
  sub_26969329C(0, &qword_2815718F0, 0x277CD3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F78, &qword_269858E08);
  *(inited + 32) = sub_269854AE4();
  *(inited + 40) = v1;
  sub_26969329C(0, &qword_2815718C8, 0x277CD4030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F80, &unk_2698660B0);
  *(inited + 48) = sub_269854AE4();
  *(inited + 56) = v2;
  sub_2697F1EE0(inited);
  qword_281571928 = v3;
}

uint64_t sub_2696B2FB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F68, &qword_269858DF8);
  swift_allocObject();
  result = sub_2696B2C6C();
  qword_281571920 = result;
  return result;
}

uint64_t sub_2696B3018(uint64_t a1, uint64_t a2)
{
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = qword_280322708;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_281571B50);
  (*(v5 + 16))(v7, v10, v4);
  v11 = sub_2698548B4();
  v12 = sub_269854F14();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_269684000, v11, v12, "InstalledAppProvider#apps gathering apps from LSApplicationRecord enumerator", v13, 2u);
    MEMORY[0x26D647170](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v20 = &type metadata for LSApplicationRecordProvider;
  v21 = &xmmword_287A41430;
  v14 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v23 = &type metadata for AppIntentsMetadataProvider;
  v24 = &off_287A413C0;
  v22 = v14;
  if (qword_2803223E0 != -1)
  {
    swift_once();
  }

  v15 = qword_28033D5F0;
  sub_2696B6ED8(v19, __src);
  v16 = swift_allocObject();
  memcpy(v16 + 2, __src, 0x50uLL);
  v16[12] = sub_269693184;
  v16[13] = v8;

  sub_269842524(0, 1, v15, sub_2696B6F34, v16);

  return sub_2696B6F40(v19);
}

void sub_2696B32E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v146 = a2;
  v7 = sub_2698548D4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v135 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v147 = &v135 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v135 - v17;
  v19 = *(a1 + 32);
  v141 = *(a1 + 24);
  v140 = v19;
  v20 = [objc_opt_self() enumeratorWithOptions_];
  v21 = sub_2696B6C90();

  v148 = v21[2];
  if (!v148)
  {

    a3(MEMORY[0x277D84F90]);
LABEL_101:

    return;
  }

  v136 = v14;
  v137 = a4;
  v138 = a3;
  v23 = 0;
  v160 = v21 + 4;
  v159 = (v8 + 16);
  v158 = (v8 + 8);
  v157 = 0x800000026987B820;
  *&v22 = 136316162;
  v139 = v22;
  *&v22 = 136315138;
  v135 = v22;
  v154 = MEMORY[0x277D84F90];
  v145 = v11;
  v156 = v18;
  v24 = v148;
  v142 = v7;
  v155 = v21;
  while (1)
  {
    if (v23 >= v21[2])
    {
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    sub_2696B6F94(&v160[4 * v23], v161);
    sub_26969329C(0, &qword_2815718D0, 0x277CC1E70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (qword_280322708 != -1)
      {
        swift_once();
      }

      v30 = __swift_project_value_buffer(v7, qword_281571B50);
      (*v159)(v18, v30, v7);
      v31 = sub_2698548B4();
      v32 = sub_269854F24();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_269684000, v31, v32, "InstalledAppProvider#apps error coercing record into LSApplicationRecord", v33, 2u);
        MEMORY[0x26D647170](v33, -1, -1);
      }

      (*v158)(v18, v7);
      goto LABEL_97;
    }

    v25 = v165;
    v26 = sub_2696B6BAC(v25);
    if (!v27)
    {
      v34 = v11;
      v35 = v25;
      if (qword_280322708 != -1)
      {
        swift_once();
      }

      v36 = __swift_project_value_buffer(v7, qword_281571B50);
      v37 = v147;
      (*v159)(v147, v36, v7);
      v38 = sub_2698548B4();
      v39 = sub_269854F24();
      v40 = os_log_type_enabled(v38, v39);
      v21 = v155;
      if (v40)
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_269684000, v38, v39, "InstalledAppProvider#apps error missing bundle identifier for LSApplicationRecord", v41, 2u);
        MEMORY[0x26D647170](v41, -1, -1);
      }

      else
      {
      }

      (*v158)(v37, v7);
      v11 = v34;
      v18 = v156;
      goto LABEL_97;
    }

    v28 = v26;
    v29 = v27;
    if (([v25 appProtectionHidden] & 1) == 0)
    {
      break;
    }

    v21 = v155;
LABEL_97:
    if (++v23 == v24)
    {

      v138(v154);
      goto LABEL_101;
    }
  }

  v42 = MEMORY[0x277D84F90];
  v164 = MEMORY[0x277D84F90];
  v165 = MEMORY[0x277D84F90];
  v43 = [objc_opt_self() appInfoWithApplicationRecord_];
  v151 = v25;
  v152 = v28;
  if (!v43)
  {
    v48 = v42;
LABEL_32:
    v153 = v42;
LABEL_77:
    v162 = v42;
    v163 = v42;
    v161[3] = &type metadata for SiriVideoFeatureKeys;
    v161[4] = sub_2696A2978();
    LOBYTE(v161[0]) = 3;
    v92 = sub_269853B34();
    __swift_destroy_boxed_opaque_existential_0(v161);
    if (v92)
    {
      v93 = sub_269832854(v28, v29);
      if (v93)
      {
        v42 = sub_2697DED30(v93);
        swift_beginAccess();
        v162 = v42;
      }

      v94 = sub_269832F24(v28, v29);
      if (v94)
      {
        v95 = sub_2697DED70(v94);
        swift_beginAccess();
        v163 = v95;
      }

      else
      {
        v95 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v95 = v42;
    }

    if (v48[2] || *(v95 + 16) || *(v42 + 16))
    {
      if (qword_280322708 != -1)
      {
        swift_once();
      }

      v96 = __swift_project_value_buffer(v7, qword_281571B50);
      (*v159)(v11, v96, v7);

      v97 = sub_2698548B4();
      v98 = sub_269854F14();

      v99 = os_log_type_enabled(v97, v98);
      v150 = v29;
      if (v99)
      {
        v100 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v161[0] = v149;
        *v100 = v139;
        *(v100 + 4) = sub_26974F520(v152, v29, v161);
        *(v100 + 12) = 2080;
        LODWORD(v144) = v98;

        v102 = MEMORY[0x277D837D0];
        v103 = v48;
        v104 = MEMORY[0x26D645BC0](v101, MEMORY[0x277D837D0]);
        v106 = v105;

        v107 = sub_26974F520(v104, v106, v161);

        *(v100 + 14) = v107;
        v143 = v42;
        *(v100 + 22) = 2080;

        v109 = MEMORY[0x26D645BC0](v108, v102);
        v111 = v110;

        v112 = sub_26974F520(v109, v111, v161);

        *(v100 + 24) = v112;
        *(v100 + 32) = 2080;
        v113 = sub_269851A04();

        v115 = MEMORY[0x26D645BC0](v114, v113);
        v117 = v116;

        v118 = sub_26974F520(v115, v117, v161);

        *(v100 + 34) = v118;
        *(v100 + 42) = 2080;
        v42 = v143;
        v119 = sub_2698519E4();

        v121 = MEMORY[0x26D645BC0](v120, v119);
        v123 = v122;

        v124 = sub_26974F520(v121, v123, v161);
        v7 = v142;

        *(v100 + 44) = v124;
        v48 = v103;
        _os_log_impl(&dword_269684000, v97, v144, "InstalledAppProvider#apps found bundle: %s, supportedCategories: %s, supportedIntents: %s, appIntentsFindSearchScopes: %s, appIntentsPlayVideoCategories: %s", v100, 0x34u);
        v125 = v149;
        swift_arrayDestroy();
        v11 = v145;
        MEMORY[0x26D647170](v125, -1, -1);
        v126 = v100;
        v18 = v156;
        MEMORY[0x26D647170](v126, -1, -1);
      }

      (*v158)(v11, v7);

      v127 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26977C0F0();
        v154 = v133;
      }

      v128 = v152;
      v129 = *(v154 + 16);
      if (v129 >= *(v154 + 24) >> 1)
      {
        sub_26977C0F0();
        v154 = v134;
      }

      v130 = v154;
      *(v154 + 16) = v129 + 1;
      v131 = (v130 + 48 * v129);
      v132 = v150;
      v131[4] = v128;
      v131[5] = v132;
      v131[6] = v153;
      v131[7] = v127;
      v131[8] = v95;
      v131[9] = v42;
    }

    else
    {
    }

    v21 = v155;
    v24 = v148;
    goto LABEL_97;
  }

  v149 = v43;
  v44 = [v43 supportedIntents];
  v45 = sub_269854E44();

  if (qword_280322420 != -1)
  {
    swift_once();
  }

  v46 = sub_2696B62A4(qword_281571928, v45);
  v47 = v46[2];
  if (v47)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
    v48 = swift_allocObject();
    v49 = _swift_stdlib_malloc_size(v48);
    v48[2] = v47;
    v48[3] = 2 * ((v49 - 32) / 16);
    sub_2697E1B98(v161, (v48 + 4), v47, v46);
    v51 = v50;
    sub_26968E614(v161[0]);
    if (v51 != v47)
    {
      goto LABEL_105;
    }
  }

  else
  {

    v48 = v42;
  }

  swift_beginAccess();
  v164 = v48;
  if (!v48[2])
  {

    goto LABEL_32;
  }

  v144 = v48;
  v52 = [v149 supportedMediaCategories];
  v53 = sub_269854E44();

  v54 = *(v53 + 16);
  if (v54)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
    v55 = swift_allocObject();
    v56 = _swift_stdlib_malloc_size(v55);
    v55[2] = v54;
    v55[3] = 2 * ((v56 - 32) / 16);
    sub_2697E1B98(v161, (v55 + 4), v54, v53);
    v58 = v57;
    sub_26968E614(v161[0]);
    if (v58 != v54)
    {
      goto LABEL_109;
    }
  }

  else
  {

    v55 = v42;
  }

  swift_beginAccess();
  v165 = v55;
  if (sub_269807CB4(v28, v29, v141))
  {
    v59 = [v149 supportedMediaCategories];
    v60 = sub_269854E44();

    LOBYTE(v59) = sub_269807CB4(0xD000000000000014, v157, v60);

    if ((v59 & 1) == 0)
    {
      swift_beginAccess();
      sub_26977BA60();
      v61 = *(v165 + 2);
      sub_26977BBB8();
      v55 = v165;
      *(v165 + 2) = v61 + 1;
      v62 = &v55[2 * v61];
      v62[4] = 0xD000000000000014;
      v62[5] = v157;
      v165 = v55;
      swift_endAccess();
    }
  }

  if (!sub_269807CB4(v28, v29, v140))
  {
LABEL_70:
    v83 = *(v165 + 2);
    v48 = v144;
    v153 = v165;
    if (v83)
    {
    }

    else
    {
      if (qword_280322708 != -1)
      {
        swift_once();
      }

      v84 = __swift_project_value_buffer(v7, qword_281571B50);
      v85 = v136;
      (*v159)(v136, v84, v7);

      v86 = sub_2698548B4();
      v87 = sub_269854F14();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v161[0] = v89;
        *v88 = v135;
        *(v88 + 4) = sub_26974F520(v28, v29, v161);
        _os_log_impl(&dword_269684000, v86, v87, "InstalledAppProvider#apps clearing intent support for likely shortcuts-only extension for bundle: %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v89);
        v90 = v89;
        v11 = v145;
        MEMORY[0x26D647170](v90, -1, -1);
        v91 = v88;
        v18 = v156;
        MEMORY[0x26D647170](v91, -1, -1);
      }

      (*v158)(v85, v7);
      v164 = v42;

      v48 = v42;
    }

    goto LABEL_77;
  }

  swift_beginAccess();
  v63 = 0;
  v64 = 0;
  v65 = v55[2];
  v66 = v55 + 5;
  v67 = 1;
  v68 = v157;
  while (1)
  {
    if (v65 == v64)
    {
      v64 = v65;
      goto LABEL_67;
    }

    if (*(v66 - 1) == 0xD000000000000014 && v68 == *v66)
    {
      break;
    }

    v70 = sub_269855584();
    v68 = v157;
    if (v70)
    {
      break;
    }

    ++v64;
    v66 += 2;
    ++v67;
    v63 += 2;
  }

  if (__OFADD__(v64, 1))
  {
    goto LABEL_111;
  }

  if (v64 + 1 != v65)
  {
    while (1)
    {
      v71 = v55[2];
      if (v67 >= v71)
      {
        goto LABEL_103;
      }

      v72 = v55[v63 + 6];
      v73 = v55[v63 + 7];
      v74 = v72 == 0xD000000000000014 && v68 == v73;
      if (v74 || (sub_269855584() & 1) != 0)
      {
        v18 = v156;
        v42 = MEMORY[0x277D84F90];
      }

      else
      {
        if (v67 != v64)
        {
          if (v64 >= v71)
          {
            goto LABEL_106;
          }

          v75 = &v55[2 * v64 + 4];
          v76 = *v75;
          v77 = v75[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2696B6ABC(v55);
            v55 = v81;
          }

          if (v64 >= v55[2])
          {
            goto LABEL_107;
          }

          v78 = &v55[2 * v64];
          v78[4] = v72;
          v78[5] = v73;

          if (v67 >= v55[2])
          {
            goto LABEL_108;
          }

          v79 = &v55[v63];
          v79[6] = v76;
          v79[7] = v77;

          v165 = v55;
          v11 = v145;
        }

        v42 = MEMORY[0x277D84F90];
        ++v64;
        v18 = v156;
      }

      v80 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_104;
      }

      ++v67;
      v63 += 2;
      v68 = v157;
      if (v80 == v55[2])
      {
        goto LABEL_68;
      }
    }
  }

LABEL_67:
  v18 = v156;
LABEL_68:
  v82 = v55[2];
  if (v82 >= v64)
  {
    sub_2696B6AD0(v64, v82);
    swift_endAccess();
    v7 = v142;
    v28 = v152;
    goto LABEL_70;
  }

LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
}

uint64_t sub_2696B44AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v10 = __swift_project_value_buffer(v4, qword_281571B50);
  (*(v6 + 16))(v9, v10, v4);
  v11 = sub_2698548B4();
  v12 = sub_269854F44();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_16_2();
    *v13 = 0;
    _os_log_impl(&dword_269684000, v11, v12, "InstalledAppProvider#warm warming app search", v13, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v6 + 8))(v9, v4);
  if (qword_280322428 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_280322428);
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  sub_2696B55B4(sub_2696B7114, v14);
}

uint64_t sub_2696B468C(uint64_t *a1, void (*a2)(uint64_t))
{
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281571B50);
  (*(v5 + 16))(v7, v9, v4);

  v10 = sub_2698548B4();
  v11 = sub_269854F44();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = -1;
    v13 = swift_slowAlloc();
    v14 = v13;
    *v13 = 134217984;
    if (v8)
    {
      v12 = *(v8 + 16);
    }

    *(v13 + 4) = v12;

    _os_log_impl(&dword_269684000, v10, v11, "InstalledAppProvider#warm warm found %ld apps", v14, 0xCu);
    MEMORY[0x26D647170](v14, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  a2(v15);
}

uint64_t sub_2696B48A0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v6 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = *a1;
  if (v16)
  {
    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_2_1(&qword_280322708);
    }

    v17 = __swift_project_value_buffer(v6, qword_281571B50);
    (*(v8 + 16))(v12, v17, v6);
    v18 = sub_2698548B4();
    v19 = sub_269854F14();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_16_2();
      *v20 = 0;
      _os_log_impl(&dword_269684000, v18, v19, "InstalledAppProvider#installedApps used cached apps", v20, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v8 + 8))(v12, v6);
    return a2(v16);
  }

  else
  {
    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_2_1(&qword_280322708);
    }

    v22 = __swift_project_value_buffer(v6, qword_281571B50);
    (*(v8 + 16))(v15, v22, v6);
    v23 = sub_2698548B4();
    v24 = sub_269854F14();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_16_2();
      *v25 = 0;
      _os_log_impl(&dword_269684000, v23, v24, "InstalledAppProvider#installedApps cached apps missing or expired", v25, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v8 + 8))(v15, v6);
    if (qword_280322428 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_280322428);
    }

    v26 = swift_allocObject();
    *(v26 + 16) = a2;
    *(v26 + 24) = a3;

    sub_2696B55B4(sub_2696B622C, v26);
  }
}

uint64_t sub_2696B4B88(uint64_t *a1, void (*a2)(uint64_t))
{
  v3 = *a1;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  a2(v4);
}

uint64_t sub_2696B4BEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v50 - v5;
  v6 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12();
  v51 = (v10 - v11);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v18 = __swift_project_value_buffer(v6, qword_281571B50);
  v55 = *(v8 + 16);
  v55(v17, v18, v6);
  v19 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_7_6();
  if (os_log_type_enabled(v19, v20))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_11_3(&dword_269684000, v21, v22, "AtomicValue#next");
    OUTLINED_FUNCTION_10();
  }

  v23 = *(v8 + 8);
  v23(v17, v6);
  [*(v3 + 16) lock];
  v55(v15, v18, v6);
  v24 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_7_6();
  if (os_log_type_enabled(v24, v25))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_10_4(&dword_269684000, v26, v27, "AtomicValue#next lock acquired");
    OUTLINED_FUNCTION_10();
  }

  v23(v15, v6);
  *(v3 + 24) = 0;
  OUTLINED_FUNCTION_9_4();
  v29 = (v3 + *(v28 + 112));
  memcpy(__dst, v29, 0x68uLL);
  *v29 = 0u;
  v29[1] = 0u;
  v29[2] = 0u;
  v29[3] = 0u;
  v29[4] = 0u;
  v29[5] = 0u;
  *(v29 + 12) = 0;
  sub_269698048(__dst, &qword_280322E10, &qword_269858A38);
  v55(v51, v18, v6);

  v30 = sub_2698548B4();
  v31 = sub_269854F14();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v55 = (v8 + 8);
    v34 = v33;
    v57[0] = v33;
    *v32 = 136315138;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322E10, &qword_269858A38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F98, &qword_26986ADC0);
    v35 = sub_269854AE4();
    v37 = sub_26974F520(v35, v36, v57);

    *(v32 + 4) = v37;
    OUTLINED_FUNCTION_13_0(&dword_269684000, v38, v39, "AtomicValue#next computing value for: %s");
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v40 = OUTLINED_FUNCTION_8_3();
  (v23)(v40);
  v41 = v52;
  sub_269851D24();
  v42 = sub_269851D34();
  OUTLINED_FUNCTION_12_2(v42);
  v43 = qword_281571B90;
  swift_beginAccess();
  sub_2696B6234(v41, v3 + v43);
  swift_endAccess();
  OUTLINED_FUNCTION_9_4();
  v45 = *(v3 + *(v44 + 120));
  v46 = swift_allocObject();
  v47 = v53;
  v48 = v54;
  v46[2] = v3;
  v46[3] = v47;
  v46[4] = v48;

  v45(sub_2696B704C, v46);
}

uint64_t sub_2696B50E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a1;
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v53 - v5;
  v6 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12();
  v12 = v10 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v53 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v19 = __swift_project_value_buffer(v6, qword_281571B50);
  v57 = *(v8 + 16);
  v57(v18, v19, v6);
  v20 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_7_6();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_16_2();
    v58 = v19;
    OUTLINED_FUNCTION_6_6(v22);
    OUTLINED_FUNCTION_11_3(&dword_269684000, v23, v24, "AtomicValue#next");
    v8 = v12;
    v12 = v19;
    v19 = v58;
    OUTLINED_FUNCTION_10();
  }

  v58 = *(v8 + 8);
  v58(v18, v6);
  [*(v3 + 16) lock];
  v57(v16, v19, v6);
  v25 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_7_6();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_6_6(v27);
    OUTLINED_FUNCTION_10_4(&dword_269684000, v28, v29, "AtomicValue#next lock acquired");
    v12 = v19;
    OUTLINED_FUNCTION_10();
  }

  v58(v16, v6);
  *(v3 + 24) = 0;
  OUTLINED_FUNCTION_9_4();
  v31 = (v3 + *(v30 + 112));
  v32 = *v31;
  v33 = v31[1];
  *v31 = 0;
  v31[1] = 0;
  sub_2696AC148(v32, v33);
  v57(v12, v19, v6);

  v34 = sub_2698548B4();
  v35 = sub_269854F14();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v60[0] = v37;
    *v36 = 136315138;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FA0, &unk_26986ADD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FA8, &qword_269858E18);
    v38 = sub_269854AE4();
    v40 = sub_26974F520(v38, v39, v60);

    *(v36 + 4) = v40;
    OUTLINED_FUNCTION_13_0(&dword_269684000, v41, v42, "AtomicValue#next computing value for: %s");
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v43 = OUTLINED_FUNCTION_8_3();
  (v58)(v43);
  v44 = v54;
  sub_269851D24();
  v45 = sub_269851D34();
  OUTLINED_FUNCTION_12_2(v45);
  v46 = qword_281571B90;
  swift_beginAccess();
  sub_2696B6234(v44, v3 + v46);
  swift_endAccess();
  OUTLINED_FUNCTION_9_4();
  v48 = *(v3 + *(v47 + 120));
  v49 = swift_allocObject();
  v50 = v55;
  v51 = v56;
  v49[2] = v3;
  v49[3] = v50;
  v49[4] = v51;

  v48(sub_2696B7108, v49);
}

uint64_t sub_2696B55B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = a1;
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v42 - v5;
  v6 = sub_2698548D4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v42 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_281571B50);
  v46 = *(v7 + 16);
  v46(v15, v16, v6);
  v17 = sub_2698548B4();
  v18 = sub_269854F14();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v47 = v16;
    v20 = v10;
    v21 = v7;
    v22 = v19;
    *v19 = 0;
    _os_log_impl(&dword_269684000, v17, v18, "AtomicValue#next", v19, 2u);
    v23 = v22;
    v7 = v21;
    v10 = v20;
    v16 = v47;
    MEMORY[0x26D647170](v23, -1, -1);
  }

  v47 = *(v7 + 8);
  v47(v15, v6);
  [*(v3 + 16) lock];
  v46(v13, v16, v6);
  v24 = sub_2698548B4();
  v25 = sub_269854F14();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_269684000, v24, v25, "AtomicValue#next lock acquired", v26, 2u);
    MEMORY[0x26D647170](v26, -1, -1);
  }

  v47(v13, v6);
  *(v3 + 24) = 0;
  *(v3 + *(*v3 + 112)) = 0;

  v46(v10, v16, v6);

  v27 = sub_2698548B4();
  v28 = sub_269854F14();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v49[0] = v30;
    *v29 = 136315138;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F58, &unk_26986ADF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F60, &qword_269858DF0);
    v31 = sub_269854AE4();
    v33 = sub_26974F520(v31, v32, v49);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_269684000, v27, v28, "AtomicValue#next computing value for: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x26D647170](v30, -1, -1);
    MEMORY[0x26D647170](v29, -1, -1);
  }

  v47(v10, v6);
  v34 = v43;
  sub_269851D24();
  v35 = sub_269851D34();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
  v36 = qword_281571B90;
  swift_beginAccess();
  sub_2696B6234(v34, v3 + v36);
  swift_endAccess();
  v37 = *(v3 + *(*v3 + 120));
  v38 = swift_allocObject();
  v39 = v44;
  v40 = v45;
  v38[2] = v3;
  v38[3] = v39;
  v38[4] = v40;

  v37(sub_2696B6ECC, v38);
}

uint64_t sub_2696B5B44(const void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *(a2 + 24) = 1;
  v12 = *(*a2 + 112);
  memcpy(__dst, (a2 + v12), 0x68uLL);
  memcpy((a2 + v12), a1, 0x68uLL);
  sub_269698048(__dst, &qword_280322E10, &qword_269858A38);
  v13 = *(a2 + 16);
  sub_2696B7058(a1, v25);
  [v13 unlock];
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_281571B50);
  (*(v9 + 16))(v11, v14, v8);
  v15 = sub_2698548B4();
  v16 = sub_269854F14();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v22 = a4;
    v18 = a3;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_269684000, v15, v16, "AtomicValue#next lock released", v17, 2u);
    v20 = v19;
    a3 = v18;
    MEMORY[0x26D647170](v20, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  memcpy(v24, (a2 + v12), sizeof(v24));
  memcpy(v23, (a2 + v12), sizeof(v23));
  sub_2696B7058(v24, v25);
  a3(v23);
  memcpy(v25, v23, sizeof(v25));
  return sub_269698048(v25, &qword_280322E10, &qword_269858A38);
}

uint64_t sub_2696B5DE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 24) = 1;
  v12 = (a3 + *(*a3 + 112));
  v13 = *v12;
  v14 = v12[1];
  *v12 = a1;
  v12[1] = a2;
  sub_2696AC148(v13, v14);
  v15 = *(a3 + 16);
  sub_2696AA664(a1, a2);
  [v15 unlock];
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_281571B50);
  (*(v9 + 16))(v11, v16, v8);
  v17 = sub_2698548B4();
  v18 = sub_269854F14();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_269684000, v17, v18, "AtomicValue#next lock released", v19, 2u);
    MEMORY[0x26D647170](v19, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v21 = v12[1];
  v23[0] = *v12;
  v20 = v23[0];
  v23[1] = v21;
  sub_2696AA664(v23[0], v21);
  a4(v23);
  return sub_2696AC148(v20, v21);
}

uint64_t sub_2696B6010(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v6 = sub_2698548D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 24) = 1;
  v10 = *(*a2 + 112);
  *(a2 + v10) = a1;

  v11 = *(a2 + 16);

  [v11 unlock];
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_281571B50);
  (*(v7 + 16))(v9, v12, v6);
  v13 = sub_2698548B4();
  v14 = sub_269854F14();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_269684000, v13, v14, "AtomicValue#next lock released", v15, 2u);
    MEMORY[0x26D647170](v15, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v18 = *(a2 + v10);

  a3(&v18);
}

uint64_t sub_2696B6234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t *sub_2696B62A4(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = (v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_26980F698(0, v6, v8);
    v9 = sub_2696B64FC(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_2696B646C(v11, v6, a2, a1);

    MEMORY[0x26D647170](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_2696B646C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_2696B64FC(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_2696B64FC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_269855674();

      sub_269854B34();
      v40 = sub_2698556C4();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_269855584();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return sub_2696B68A0(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_269855674();

      sub_269854B34();
      v18 = sub_2698556C4();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_269855584();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2696B68A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F70, &qword_269858E00);
  result = sub_2698551E4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_269855674();

    sub_269854B34();
    result = sub_2698556C4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2696B6AD0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_26980E0A0(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_26968E61C((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2696B6BAC(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_269854A94();

  return v3;
}

void *sub_2696B6C90()
{
  v0 = sub_269851BE4();
  v21 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269854EB4();
  v3 = MEMORY[0x277D84F90];
  v4 = (MEMORY[0x277D84F90] + 32);
  sub_2696B6FF4();
  v5 = 0;
  while (1)
  {
    sub_2698550E4();
    if (!v23)
    {
      (*(v21 + 8))(v2, v0);
      result = sub_269698048(&v22, &qword_280322F88, qword_26985AB90);
      v17 = v3[3];
      if (v17 >= 2)
      {
        v18 = v17 >> 1;
        v16 = __OFSUB__(v18, v5);
        v19 = v18 - v5;
        if (v16)
        {
          goto LABEL_25;
        }

        v3[2] = v19;
      }

      return v3;
    }

    result = sub_269694FFC(&v22, v24);
    if (!v5)
    {
      v7 = v3[3];
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_24;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F90, &qword_269858E10);
      v10 = swift_allocObject();
      v11 = (_swift_stdlib_malloc_size(v10) - 32) / 32;
      v10[2] = v9;
      v10[3] = 2 * v11;
      v12 = (v10 + 4);
      v13 = v3[3];
      v14 = v13 >> 1;
      if (v3[2])
      {
        if (v10 != v3 || v12 >= &v3[4 * v14 + 4])
        {
          memmove(v10 + 4, v3 + 4, 32 * v14);
        }

        v3[2] = 0;
      }

      v4 = (v12 + 32 * v14);
      v5 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - (v13 >> 1);

      v3 = v10;
    }

    v16 = __OFSUB__(v5--, 1);
    if (v16)
    {
      break;
    }

    sub_269694FFC(v24, v4);
    v4 += 2;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2696B6F94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2696B6FF4()
{
  result = qword_281571B30;
  if (!qword_281571B30)
  {
    sub_269851BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571B30);
  }

  return result;
}

uint64_t sub_2696B7058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322E10, &qword_269858A38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_10_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

void OUTLINED_FUNCTION_11_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

void OUTLINED_FUNCTION_13_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_2696B726C()
{
  OUTLINED_FUNCTION_1_5();
  v4 = v1 == 0xD000000000000018 && v3 == v2;
  if (v4 || (v5 = v2, v6 = v1, (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v10 = v6 == 0xD000000000000019 && v9 == v5;
  if (v10 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v12 = v6 == 0xD000000000000010 && v11 == v5;
  if (v12 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v17 = v6 == 0xD000000000000013 && v16 == v5;
  if (v17 || (OUTLINED_FUNCTION_0_8(v13, v14, v15, v16) & 1) != 0)
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v19 = v6 == 0xD000000000000011 && v18 == v5;
  if (v19 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v21 = v6 == 0xD00000000000001BLL && v20 == v5;
  if (v21 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v23 = v6 == 0xD00000000000001ELL && v22 == v5;
  if (v23 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v25 = v6 == 0xD000000000000026 && v24 == v5;
  if (v25 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v27 = v6 == 0xD000000000000019 && v26 == v5;
  if (v27 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v29 = *(v0 + 80);
    v28 = *(v0 + 88);
LABEL_56:

    return sub_2696B7F0C(v29, v28);
  }

  OUTLINED_FUNCTION_1_5();
  v31 = v6 == 0xD000000000000014 && v30 == v5;
  if (v31 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v29 = *(v0 + 96);
    v28 = *(v0 + 104);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v33 = v6 == 0xD000000000000015 && v32 == v5;
  if (v33 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v29 = *(v0 + 112);
    v28 = *(v0 + 120);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v38 = v6 == 0xD000000000000013 && v37 == v5;
  if (v38 || (OUTLINED_FUNCTION_0_8(v34, v35, v36, v37) & 1) != 0)
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v29 = *(v0 + 128);
    v28 = *(v0 + 136);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v40 = v6 == 0xD000000000000016 && v39 == v5;
  if (v40 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v42 = v6 == 0xD000000000000022 && v41 == v5;
  if (v42 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v44 = v6 == 0xD00000000000001DLL && v43 == v5;
  if (v44 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v29 = *(v0 + 160);
    v28 = *(v0 + 168);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v46 = v6 == 0xD00000000000001BLL && v45 == v5;
  if (v46 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v29 = *(v0 + 176);
    v28 = *(v0 + 184);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v51 = v6 == 0xD000000000000013 && v50 == v5;
  if (v51 || (OUTLINED_FUNCTION_0_8(v47, v48, v49, v50) & 1) != 0)
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v29 = *(v0 + 192);
    v28 = *(v0 + 200);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v56 = v6 == 0xD000000000000013 && v55 == v5;
  if (v56 || (OUTLINED_FUNCTION_0_8(v52, v53, v54, v55) & 1) != 0)
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v29 = *(v0 + 208);
    v28 = *(v0 + 216);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v58 = v6 == 0xD000000000000017 && v57 == v5;
  if (v58 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v29 = *(v0 + 224);
    v28 = *(v0 + 232);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v60 = v6 == 0xD000000000000014 && v59 == v5;
  if (v60 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v29 = *(v0 + 240);
    v28 = *(v0 + 248);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v62 = v6 == 0xD00000000000002ALL && v61 == v5;
  if (v62 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v64 = v6 == 0xD000000000000038 && v63 == v5;
  if (v64 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v66 = v6 == 0xD000000000000033 && v65 == v5;
  if (v66 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v68 = v6 == 0xD00000000000002FLL && v67 == v5;
  if (v68 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v70 = v6 == 0xD000000000000030 && v69 == v5;
  if (v70 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v72 = v6 == 0xD000000000000030 && v71 == v5;
  if (v72 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v74 = v6 == 0xD000000000000032 && v73 == v5;
  if (v74 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v76 = v6 == 0xD000000000000030 && v75 == v5;
  if (v76 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v78 = v6 == 0xD00000000000002FLL && v77 == v5;
  if (v78 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v80 = v6 == 0xD000000000000017 && v79 == v5;
  if (v80 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v82 = v6 == 0xD000000000000010 && v81 == v5;
  if (v82 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v29 = *(v0 + 336);
    v28 = *(v0 + 344);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v84 = v6 == 0xD00000000000001ALL && v83 == v5;
  if (v84 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v86 = v6 == 0xD000000000000023 && v85 == v5;
  if (v86 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v88 = v6 == 0xD000000000000016 && v87 == v5;
  if (v88 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v29 = *(v0 + 368);
    v28 = *(v0 + 376);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v90 = v6 == 0xD000000000000017 && v89 == v5;
  if (v90 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v95 = v6 == 0xD000000000000013 && v94 == v5;
  if (v95 || (OUTLINED_FUNCTION_0_8(v91, v92, v93, v94) & 1) != 0)
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  OUTLINED_FUNCTION_1_5();
  v97 = v6 == 0xD000000000000019 && v96 == v5;
  if (v97 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    sub_26969329C(0, &qword_280322FC8, 0x277CBFEF8);
    v29 = *(v0 + 400);
    v28 = *(v0 + 408);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_5();
  v99 = v6 == 0xD000000000000016 && v98 == v5;
  if (v99 || (OUTLINED_FUNCTION_2_6(), (sub_269855584() & 1) != 0))
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
    return v7;
  }

  return 0;
}

id sub_2696B7F0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_269854A64();

  v3 = [swift_getObjCClassFromMetadata() featureValueWithString_];

  return v3;
}

uint64_t sub_2696B7F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  *(v47 + 16) = a9;
  *(v47 + 24) = a10;
  *(v47 + 32) = a11;
  *(v47 + 40) = a12;
  *(v47 + 48) = a13;
  *(v47 + 56) = a14;
  *(v47 + 64) = a15;
  *(v47 + 72) = a16;
  *(v47 + 80) = a1;
  *(v47 + 88) = a2;
  *(v47 + 96) = a3;
  *(v47 + 104) = a4;
  *(v47 + 112) = a5;
  *(v47 + 120) = a6;
  *(v47 + 128) = a7;
  *(v47 + 136) = a8;
  *(v47 + 144) = a17;
  *(v47 + 152) = a18;
  *(v47 + 160) = a19;
  *(v47 + 168) = a20;
  *(v47 + 176) = a21;
  *(v47 + 184) = a22;
  *(v47 + 192) = a23;
  *(v47 + 200) = a24;
  *(v47 + 208) = a25;
  *(v47 + 216) = a26;
  *(v47 + 224) = a27;
  *(v47 + 232) = a28;
  *(v47 + 240) = a29;
  *(v47 + 248) = a30;
  *(v47 + 256) = a31;
  *(v47 + 272) = a32;
  *(v47 + 288) = a33;
  *(v47 + 304) = a34;
  *(v47 + 320) = a35;
  *(v47 + 328) = a36;
  *(v47 + 336) = a37;
  *(v47 + 344) = a38;
  *(v47 + 352) = a39;
  *(v47 + 360) = a40;
  *(v47 + 368) = a41;
  *(v47 + 376) = a42;
  *(v47 + 384) = a43;
  *(v47 + 392) = a44;
  *(v47 + 400) = a45;
  *(v47 + 408) = a46;
  *(v47 + 416) = a47;
  return v47;
}

void *sub_2696B8058()
{

  return v0;
}

uint64_t sub_2696B80D8()
{
  sub_2696B8058();

  return MEMORY[0x2821FE8D8](v0, 424, 7);
}

uint64_t sub_2696B8130()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    swift_unownedRetainStrong();
    swift_unownedRetain();
    swift_unownedRetain();

    sub_2696B81B8(v0);
    v1 = v2;
    swift_unownedRelease();
    swift_unownedRelease();
    *(v0 + 40) = v1;
  }

  return v1;
}

void sub_2696B81B8(uint64_t a1)
{
  v1 = *(swift_unownedRetainStrong() + 16);
  swift_unknownObjectRetain();

  v2 = sub_269854A64();
  v3 = [v1 featureValueForName_];

  if (v3)
  {
    swift_unknownObjectRelease();
    v4 = [v3 dictionaryValue];

    sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
    v5 = sub_2698549E4();

    sub_2696B82C0(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2696B82C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FC0, qword_269859000);
    v2 = sub_2698553C4();
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
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_12:
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_2696B8A68(*(a1 + 48) + 40 * v11, v29);
    v31 = *(*(a1 + 56) + 8 * v11);
    v25 = v29[0];
    v26 = v29[1];
    v27 = v30;
    v12 = v31;
    swift_dynamicCast();
    v23 = 0;
    v24 = 1;
    result = MEMORY[0x26D645CF0](v12, &v23);
    if (v24)
    {
      break;
    }

    v13 = v23;

    v14 = v28;
    result = sub_269855664();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_22;
        }
      }

LABEL_26:
      __break(1u);
      break;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v2 + 48) + 8 * v18) = v14;
    *(*(v2 + 56) + 8 * v18) = v13;
    ++*(v2 + 16);
    if (!v5)
    {
LABEL_8:
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v10);
        ++v9;
        if (v5)
        {
          v9 = v10;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}