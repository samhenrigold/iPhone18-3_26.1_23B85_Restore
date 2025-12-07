void sub_21B0B30FC(void *a1)
{
  v3 = type metadata accessor for RecipeIdentifier(0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  sub_21B0B2350(a1);
  OUTLINED_FUNCTION_3_4();
  if (*(v1 + *(v7 + 472)) != 35)
  {
    return;
  }

  v8 = sub_21B0B33E8(0x64uLL);
  if (v8 > 0x64)
  {
    __break(1u);
LABEL_16:
    OUTLINED_FUNCTION_0_4(&qword_2811FAAD8);
    goto LABEL_5;
  }

  if (!v8)
  {
    if (qword_2811FAAD8 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_2811FAAD8);
    }

    v12 = sub_21B1122D4();
    __swift_project_value_buffer(v12, qword_2811FAB28);

    v13 = a1;
    v25 = sub_21B1122B4();
    v11 = sub_21B112714();
    goto LABEL_9;
  }

  if (qword_2811FAAD8 != -1)
  {
    goto LABEL_16;
  }

LABEL_5:
  v9 = sub_21B1122D4();
  __swift_project_value_buffer(v9, qword_2811FAB28);

  v10 = a1;
  v25 = sub_21B1122B4();
  v11 = sub_21B112704();
LABEL_9:
  v14 = v11;

  if (os_log_type_enabled(v25, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315394;
    sub_21AF93E20(v1 + *(*v1 + 464), v6);
    v17 = sub_21AFC9D08();
    v19 = v18;
    sub_21AF93E84(v6);
    v20 = sub_21AFCEC24(v17, v19, &v26);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
    v22 = sub_21B112454();
    v24 = sub_21AFCEC24(v22, v23, &v26);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_21AF80000, v25, v14, "SODA: Recipe %s execution was terminated due SQLite error result: %s.", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEEA9A0](v16, -1, -1);
    MEMORY[0x21CEEA9A0](v15, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_21B0B33E8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x21CEEA9C0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x21CEEA9C0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21B0B3478(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_21B0B494C(319);
    if (v2 <= 0x3F)
    {
      sub_21B110F84();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_21B0B35B8()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_16();
  v4 = type metadata accessor for ActivitySpan.ActivityData(0, *(v2 + 80), *(v2 + 88), v3);

  v40 = v4;
  sub_21AFA4660(sub_21B0B4E94);

  v48 = v44;
  v49 = v45;
  v50 = v46;
  v51 = v47;
  v5 = *&v1[*(*v1 + 128)];
  v6 = sub_21B112704();
  sub_21B112264("LEAKED SPAN: {{{", 16, 2, &dword_21AF80000, v5, v6, MEMORY[0x277D84F90]);
  sub_21B112704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21B1141D0;
  sub_21B0B3BF8();
  v8 = sub_21B112924();
  v10 = v9;
  v11 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v12 = sub_21AF93F18();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v13 = sub_21B0B3BA4();
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = v13;
  *(v7 + 80) = v14;
  v15 = sub_21B0B3B50();
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  v43 = v12;
  *(v7 + 112) = v15;
  *(v7 + 120) = v16;
  sub_21B112264("Name: %s, Category: %s, Subsystem: %s", v38, v40, v42);

  if ((BYTE1(v49) & 1) == 0)
  {
    sub_21B112704();
    v17 = OUTLINED_FUNCTION_4_14();
    *(v17 + 16) = xmmword_21B113D90;
    v18 = sub_21B112924();
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = v12;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    OUTLINED_FUNCTION_5_15("Format string: %s");
    sub_21B112264(v20);

    v21 = v50;
    if (v50)
    {

      sub_21B112704();
      v22 = OUTLINED_FUNCTION_4_14();
      *(v22 + 16) = xmmword_21B113D90;
      *(v22 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F90, &qword_21B128910);
      *(v22 + 64) = sub_21AF99EEC(&qword_27CD477A0, &unk_27CD46F90, &qword_21B128910, MEMORY[0x277CC9C50]);
      *(v22 + 32) = v21;
      OUTLINED_FUNCTION_5_15("Arguments: %@");
      sub_21B112264(v23);
    }
  }

  v24 = *(&v49 + 1);
  if (*(&v49 + 1))
  {

    sub_21B112704();
    v25 = OUTLINED_FUNCTION_4_14();
    *(v25 + 16) = xmmword_21B113D90;
    *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F80, &unk_21B12BD20);
    *(v25 + 64) = sub_21AF99EEC(&unk_27CD47790, &unk_27CD46F80, &unk_21B12BD20, MEMORY[0x277CC9BB8]);
    *(v25 + 32) = v24;
    OUTLINED_FUNCTION_5_15("Analytics: %@");
    sub_21B112264(v26);
  }

  v27 = *(&v50 + 1);
  result = sub_21B0EC838(*(&v50 + 1));
  v29 = v41;
  if (result)
  {
    v30 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v39 = v1;

    v31 = 0;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CEE9BB0](v31, v27);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v31;
      sub_21B112704();
      v32 = OUTLINED_FUNCTION_4_14();
      *(v32 + 16) = xmmword_21B113D90;
      swift_unknownObjectRetain();
      v33 = sub_21B112454();
      *(v32 + 56) = MEMORY[0x277D837D0];
      *(v32 + 64) = v43;
      *(v32 + 32) = v33;
      *(v32 + 40) = v34;
      sub_21B112264("Leaked cancellables: %s", v39);
      swift_unknownObjectRelease();
    }

    while (v30 != v31);

    v29 = v41;
  }

  sub_21B112704();
  OUTLINED_FUNCTION_5_15("}}}");
  sub_21B112264(v35);
  if (sub_21B0B3C60())
  {
    sub_21B112714();
    OUTLINED_FUNCTION_5_15("Some objects remain retained at the moment when all activities must be finalized. This could indicate deadlock, memory leak or not cancelled asynchronous procedures, such as networking or XPC calls.");
    sub_21B112264(v36);
  }

  OUTLINED_FUNCTION_7_2();
  return (*(v37 + 8))(&v48, v29);
}

uint64_t sub_21B0B3B50()
{
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_1_17();
  return (*(*(v0 + 88) + 24))();
}

uint64_t sub_21B0B3BA4()
{
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_1_17();
  return (*(*(v0 + 88) + 32))();
}

uint64_t sub_21B0B3BF8()
{
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_1_17();
  return v1(*(v0 + 80));
}

uint64_t sub_21B0B3C60()
{
  OUTLINED_FUNCTION_0_16();
  v2 = *(v1 + 80);
  MEMORY[0x28223BE20](v3);
  v5 = v12 - v4;
  OUTLINED_FUNCTION_1_17();
  (*(v7 + 16))(v5, v0 + *(v6 + 112), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46FA8, &qword_21B128918);
  if (swift_dynamicCast())
  {
    sub_21AF81D68(v12, v14);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_0(v14, v15);
    v10 = (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_21AF9F660(v12, &unk_27CD46FB0, &qword_21B128920);
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_21B0B3DD8()
{
  v1 = sub_21B110F84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_4();
  (*(v2 + 16))(v4, v0 + *(v5 + 144), v1);
  sub_21B110F24();
  return (*(v2 + 8))(v4, v1);
}

double sub_21B0B3F38(void (*a1)(void), uint64_t a2)
{
  OUTLINED_FUNCTION_3_4();
  v5 = *(*(v2 + *(v4 + 152)) + 16);

  os_unfair_lock_lock(v5);
  sub_21B0B4AA0(v2, a1);
  os_unfair_lock_unlock(v5);

  return result;
}

uint64_t sub_21B0B3FC0()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47750, &qword_21B128908);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v52[-v8];
  v10 = *(v2 + 80);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v52[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v52[-v15];
  v17 = *(v1 + 40);
  v62 = *(v1 + 24);
  v63 = v17;
  v64 = *(v1 + 56);
  v65 = *(v1 + 72);
  v18 = *(&v17 + 1);
  v56 = *(v2 + 88);
  v20 = type metadata accessor for ActivitySpan.ActivityData(0, v10, v56, v19);
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v55 = v20;
  v22(v57, &v62);
  sub_21B0B4AF4(v18);
  if ((BYTE1(v63) & 1) == 0)
  {
    v23 = v64;
    if (v64)
    {
      v54 = *(&v62 + 1);
      v24 = v62;
      v53 = v63;
      OUTLINED_FUNCTION_8();
      (*(v11 + 16))(v16, v1 + *(v25 + 112), v10);
      OUTLINED_FUNCTION_8();
      v27 = *(v26 + 136);
      swift_beginAccess();
      sub_21B0B50FC(v1 + v27, v9);
      v28 = sub_21B1122A4();
      result = __swift_getEnumTagSinglePayload(v9, 1, v28);
      if (result != 1)
      {
        v30 = v9;
        OUTLINED_FUNCTION_8();
        v32 = *(v1 + *(v31 + 128));

        sub_21B0B481C(v30, v32, v24, v54, v53, v23, v10, v56);

        (*(v11 + 8))(v16, v10);
        OUTLINED_FUNCTION_7_2();
        (*(v33 + 8))(v30, v28);
        goto LABEL_7;
      }

LABEL_14:
      __break(1u);
      return result;
    }
  }

  OUTLINED_FUNCTION_8();
  (*(v11 + 16))(v14, v1 + *(v34 + 112), v10);
  OUTLINED_FUNCTION_8();
  v36 = *(v35 + 136);
  swift_beginAccess();
  sub_21B0B50FC(v1 + v36, v6);
  v37 = sub_21B1122A4();
  result = __swift_getEnumTagSinglePayload(v6, 1, v37);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_8();
  v32 = *(v1 + *(v38 + 128));
  sub_21B0B478C(v6, v32, v10, v56);
  (*(v11 + 8))(v14, v10);
  OUTLINED_FUNCTION_7_2();
  (*(v39 + 8))(v6, v37);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v43 = type metadata accessor for ActivitySpan(0, v10, v56, v41);
    sub_21B0B64A8(v1, v42, v43, &off_282C95908);
    v60 = 0uLL;
    v61 = 0;
    *&v59[6] = 0;
    *&v59[14] = 0;

    v44 = *(v21 + 8);
    v45 = v55;
    v44(&v62, v55);
    v46 = *(v1 + 40);
    v57[0] = *(v1 + 24);
    v47 = *(v1 + 56);
    v57[1] = v46;
    v57[2] = v47;
    v58 = *(v1 + 72);
    *(v1 + 24) = v60;
    *(v1 + 40) = v61;
    *(v1 + 41) = 1;
    *(v1 + 42) = *v59;
    v48 = MEMORY[0x277D84F90];
    *(v1 + 56) = *&v59[14];
    *(v1 + 64) = v48;
    *(v1 + 72) = 0;
    v44(v57, v45);
    OUTLINED_FUNCTION_8();
    *(v1 + *(v49 + 120)) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_21B0B3C60())
    {
      v51 = sub_21B112714();
      v50.n128_f64[0] = sub_21B112264("ActivityMonitor is deallocated before ActivitySpan's end() method is invoked. Activity's bookkeeping could be inaccurate.", 121, 2, &dword_21AF80000, v32, v51, MEMORY[0x277D84F90]);
    }

    return (*(v21 + 8))(&v62, v55, v50);
  }
}

double sub_21B0B4560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  OUTLINED_FUNCTION_3_4();
  v10 = *(*(v4 + *(v9 + 152)) + 16);

  os_unfair_lock_lock(v10);
  sub_21B0B4D1C(v4, a1, a2, v6, a4);
  os_unfair_lock_unlock(v10);

  return result;
}

uint64_t sub_21B0B4600()
{
  OUTLINED_FUNCTION_0_16();
  v2 = v1;
  if ((*(v0 + *(v3 + 120)) & 1) == 0)
  {
    (*(v1 + 400))();
  }

  swift_weakDestroy();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_4();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v4 + 112));
  OUTLINED_FUNCTION_3_4();

  OUTLINED_FUNCTION_3_4();
  sub_21AF9F660(v0 + *(v6 + 136), &qword_27CD47750, &qword_21B128908);
  OUTLINED_FUNCTION_3_4();
  v8 = *(v7 + 144);
  sub_21B110F84();
  OUTLINED_FUNCTION_7_2();
  (*(v9 + 8))(v0 + v8);
  OUTLINED_FUNCTION_3_4();

  return v0;
}

uint64_t sub_21B0B478C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B112734();
  (*(a4 + 40))(a3, a4);

  return sub_21B112284();
}

void sub_21B0B481C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_21B112734();
  v17 = (*(a8 + 40))(a7, a8);
  LOBYTE(v20) = a5;
  sub_21AFD3040(v16, a2, v17, v18, v19, a1, a3, a4, v20, a6);
}

uint64_t sub_21B0B48DC()
{
  sub_21B0B4600();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_21B0B494C(uint64_t a1)
{
  if (!qword_27CD46EE0[0])
  {
    sub_21B1122A4();
    v1 = sub_21B112774();
    if (!v2)
    {
      atomic_store(v1, qword_27CD46EE0);
    }
  }
}

uint64_t sub_21B0B49A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_21B0B49FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_21B0B4A3C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_21B0B4AA0(uint64_t result, void (*a2)(void))
{
  if ((*(result + *(*result + 120)) & 1) == 0)
  {
    a2();
    return sub_21B0B3FC0();
  }

  return result;
}

void sub_21B0B4AF4(uint64_t a1)
{
  if (sub_21B0B4E9C(a1))
  {
    OUTLINED_FUNCTION_3_4();
    if ((*(v2 + 272))())
    {
      v3 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_3_4();
      v5 = *(v1 + *(v4 + 128));
      v6 = sub_21B1126F4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_21B113DB0;
      v8 = sub_21B0B3BA4();
      v10 = v9;
      *(v7 + 56) = v3;
      v11 = sub_21AF93F18();
      *(v7 + 64) = v11;
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      sub_21AFCD0E8();
      v12 = sub_21B112314();
      *(v7 + 96) = v3;
      *(v7 + 104) = v11;
      *(v7 + 72) = v12;
      *(v7 + 80) = v13;
      sub_21B112264("Reporting to CA event: '%s'\n\twith data: %@", 42, 2, &dword_21AF80000, v5, v6, v7);
    }

    sub_21B0B3B50();
    v14 = sub_21B0B3BA4();
    v16 = v15;

    MEMORY[0x21CEE9770](46, 0xE100000000000000);
    MEMORY[0x21CEE9770](v14, v16);

    v17 = sub_21B1123D4();

    sub_21AFCD0E8();
    v18 = sub_21B1122E4();
    AnalyticsSendEvent();
  }
}

uint64_t sub_21B0B4D1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 41) = 0;
  *(a1 + 56) = a5;
}

uint64_t sub_21B0B4D68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 5);
  v10[0] = *(a1 + 3);
  v10[1] = v4;
  v11 = *(a1 + 7);
  v5 = v11;
  v12 = a1[9];
  v6 = v12;
  *a3 = v10[0];
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 48) = v6;
  v7 = type metadata accessor for ActivitySpan.ActivityData(0, *(v3 + 80), *(v3 + 88), a2);
  return (*(*(v7 - 8) + 16))(v9, v10, v7);
}

uint64_t sub_21B0B4E9C(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_16();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  (*(v6 + 16))(&v26 - v8, v2 + *(v10 + 112), v5);
  DynamicType = swift_getDynamicType();
  (*(v6 + 8))(v9, v5);
  v13 = dynamic_cast_existential_1_conditional(DynamicType, DynamicType, &protocol descriptor for __CoreAnalyticsActivity);
  result = 0;
  if (v13)
  {
    if (a1)
    {
      v15 = v12;
      v16 = *(v12 + 16);

      v17 = v16(v13, v15);
      v19 = v18;
      sub_21B1125B4();
      v20 = sub_21B1127D4();
      swift_isUniquelyReferenced_nonNull_native();
      v26 = a1;
      sub_21B0EC85C(v20, v17, v19);

      v21 = v26;
      v22 = (*(v15 + 8))(v13, v15);
      v24 = v23;
      sub_21B0B3DD8();
      v25 = sub_21B112674();
      swift_isUniquelyReferenced_nonNull_native();
      v27 = v21;
      sub_21B0EC85C(v25, v22, v24);

      return v27;
    }
  }

  return result;
}

uint64_t sub_21B0B50FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47750, &qword_21B128908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_14()
{

  return swift_allocObject();
}

uint64_t sub_21B0B51B0()
{
  OUTLINED_FUNCTION_0_17();
  *(v1 + 24) = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_21B0B51F4()
{
  sub_21AF8F6B0(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_21B0B522C()
{
  OUTLINED_FUNCTION_0_17();
  type metadata accessor for Locker();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  v4 = MEMORY[0x277D84F98];
  v1[4] = v2;
  v1[5] = v4;
  v1[3] = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_21B0B52A8()
{
  v12 = MEMORY[0x277D84F90];
  v1 = *(*(v0 + 32) + 16);

  os_unfair_lock_lock(v1);
  sub_21B0B5404(v0, &v12);
  os_unfair_lock_unlock(v1);

  result = swift_unknownObjectWeakLoadStrong();
  v3 = v12;
  if (result)
  {
    v4 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 24))(v3, ObjectType, v4);
    result = swift_unknownObjectRelease();
  }

  v6 = 0;
  v7 = *(v3 + 16);
  for (i = (v3 + 40); ; i += 2)
  {
    if (v7 == v6)
    {

      sub_21AF8F6B0(v0 + 16);

      return v0;
    }

    if (v6 >= *(v3 + 16))
    {
      break;
    }

    ++v6;
    v9 = *i;
    v10 = swift_getObjectType();
    v11 = *(v9 + 72);
    swift_unknownObjectRetain();
    v11(v10, v9);
    result = swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0B5404(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v3 = *(a1 + 40);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(a1 + 40) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v34 = *(a1 + 40);
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v32 = xmmword_21B113D90;
  v33 = v5;
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_8:
        v14 = __clz(__rbit64(v9)) | (v12 << 6);
        v15 = (*(v34 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(v34 + 56) + 8 * v14);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v20 = Strong;
          v21 = *(v18 + 24);
          ObjectType = swift_getObjectType();
          v23 = *(v21 + 64);

          v23(ObjectType, v21);
          v24 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {

            sub_21B0D50D8();
            *a2 = v30;

            v24 = *a2;
          }

          v26 = *(v24 + 16);
          v5 = v33;
          if (v26 >= *(v24 + 24) >> 1)
          {
            sub_21B0D50D8();
            v24 = v31;
            *a2 = v31;
          }

          *(v24 + 16) = v26 + 1;
          v27 = *a2 + 16 * v26;
          *(v27 + 32) = v20;
          *(v27 + 40) = v21;
        }

        else
        {
          sub_21B0B63A4();

          v28 = sub_21B112754();
          sub_21B112704();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
          v29 = swift_allocObject();
          *(v29 + 16) = v32;
          *(v29 + 56) = MEMORY[0x277D837D0];
          *(v29 + 64) = sub_21AF93F18();
          *(v29 + 32) = v17;
          *(v29 + 40) = v16;

          sub_21B112264("Detected unfinished activity with destroyed span at key %s", v32);
        }

        v9 &= v9 - 1;
      }

      while (v9);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0B56F0()
{
  sub_21B0B52A8();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21B0B576C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(a1 + 24);
    swift_beginAccess();
    v12 = *(a1 + 40);

    v13 = sub_21B0DF344(a2, a3, v12);

    if (v13)
    {

      ObjectType = swift_getObjectType();
      (*(v11 + 32))(a4, a5, ObjectType, v11);
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for ActivityMonitor.WeakReference();
  v15 = swift_allocObject();
  swift_unknownObjectRetain();
  sub_21B0B51B0();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a1 + 40);
  sub_21B0ECC0C(v15, a2, a3);
  *(a1 + 40) = v17;
  return swift_endAccess();
}

void sub_21B0B58C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, void))
{
  swift_beginAccess();
  sub_21AF98B58(a2, a3);
  if (v10)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v24 = *(a1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46FC0, &qword_21B1289D0);
    sub_21B112994();

    type metadata accessor for ActivityMonitor.WeakReference();
    sub_21B1129B4();
    *(a1 + 40) = v24;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(a1 + 24);
      ObjectType = swift_getObjectType();
      (*(v11 + 40))(a4, a5, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    v13 = swift_getObjectType();
    v14 = a5[4](v13, a5);
    sub_21B112704();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21B113DB0;
    v16 = a5[3](v13, a5);
    v18 = v17;
    v19 = MEMORY[0x277D837D0];
    *(v15 + 56) = MEMORY[0x277D837D0];
    v20 = sub_21AF93F18();
    *(v15 + 64) = v20;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    a5[5](v13, a5);
    v21 = sub_21B112924();
    *(v15 + 96) = v19;
    *(v15 + 104) = v20;
    *(v15 + 72) = v21;
    *(v15 + 80) = v22;
    sub_21B112264("Activity %s.%s never started or already ended", v23, v25);
  }
}

unint64_t sub_21B0B5B34(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x21CEEA120](*(v1 + 40), a1, 4);

  return sub_21B0B5E04(v2, v3);
}

unint64_t sub_21B0B5B7C(uint64_t a1)
{
  v2 = sub_21B112884();

  return sub_21B0B5E64(a1, v2);
}

unint64_t sub_21B0B5BC0(uint64_t *a1)
{
  sub_21B112EC4();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  sub_21B0B65F8(&qword_27CD42FA8, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
  sub_21B112374();
  v2 = sub_21B112F14();

  return sub_21B0B5F28(a1, v2);
}

unint64_t sub_21B0B5C74()
{
  OUTLINED_FUNCTION_1_18();
  sub_21B111DA4();
  v1 = MEMORY[0x277D39E18];
  sub_21B0B65F8(&qword_27CD46FE0, MEMORY[0x277D39E18], MEMORY[0x277D39E20]);
  v2 = sub_21B112364();
  return sub_21B0B615C(v0, v2, MEMORY[0x277D39E18], &qword_27CD43648, v1, MEMORY[0x277D39E28]);
}

unint64_t sub_21B0B5D3C()
{
  OUTLINED_FUNCTION_1_18();
  sub_21B111CB4();
  v1 = MEMORY[0x277D39DE0];
  sub_21B0B65F8(&qword_27CD46FD0, MEMORY[0x277D39DE0], MEMORY[0x277D39DE8]);
  v2 = sub_21B112364();
  return sub_21B0B615C(v0, v2, MEMORY[0x277D39DE0], &qword_27CD46FD8, v1, MEMORY[0x277D39DF0]);
}

unint64_t sub_21B0B5E04(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_21B0B5E64(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_21B0B62F4(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x21CEE9B10](v8, a1);
    sub_21B0B6350(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_21B0B5F28(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v21 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  MEMORY[0x28223BE20](v21);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3 + 64;
  v10 = -1 << *(v3 + 32);
  v11 = a2 & ~v10;
  if ((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *a1;
    v14 = a1[1];
    v15 = *(v6 + 72);
    v20 = v3 + 64;
    while (1)
    {
      sub_21B0B63E8(*(v3 + 48) + v15 * v11, v8);
      v16 = *v8 == v13 && *(v8 + 1) == v14;
      if (v16 || (sub_21B112D04() & 1) != 0)
      {
        v17 = *(v8 + 2) == a1[2] && *(v8 + 3) == a1[3];
        if (v17 || (sub_21B112D04()) && v8[32] == *(a1 + 32))
        {
          v18 = *(v8 + 5) == a1[5] && *(v8 + 6) == a1[6];
          if (v18 || (sub_21B112D04() & 1) != 0)
          {
            sub_21B111EC4();
            sub_21B0B65F8(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v9 = v20;
            if (sub_21B1123C4())
            {
              break;
            }
          }
        }
      }

      sub_21B0B644C(v8);
      v11 = (v11 + 1) & v12;
      if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return v11;
      }
    }

    sub_21B0B644C(v8);
  }

  return v11;
}

unint64_t sub_21B0B615C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  v18 = a4;
  v16 = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v21 = v6 + 64;
  v17 = v6;
  v12 = ~(-1 << *(v6 + 32));
  for (i = a2 & v12; ((1 << i) & *(v21 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v9 + 16))(v11, *(v17 + 48) + *(v9 + 72) * i, v8);
    sub_21B0B65F8(v18, v19, v20);
    v14 = sub_21B1123C4();
    (*(v9 + 8))(v11, v8);
    if (v14)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_21B0B63A4()
{
  result = qword_27CD46FC8;
  if (!qword_27CD46FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD46FC8);
  }

  return result;
}

uint64_t sub_21B0B63E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0B644C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B0B64A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v8 = a4[7](a3, a4);
  v10 = v9;
  v11 = *(*(a2 + 32) + 16);
  os_unfair_lock_lock(v11);
  sub_21B0B58C8(a2, v8, v10, a1, a4);

  os_unfair_lock_unlock(v11);

  return sub_21B0B6568(a2, a1, v12, a3, a4);
}

uint64_t sub_21B0B6568(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(a2, a5, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21B0B65F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_17()
{
  *(v0 + 24) = 0;

  return MEMORY[0x2821FEC40](v0 + 16, 0);
}

uint64_t sub_21B0B66B4(void *a1, uint64_t a2, char a3)
{
  if (a3 != 1)
  {
    return 9;
  }

  v10 = a1;
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43840, &unk_21B128610);
  if (swift_dynamicCast())
  {
    sub_21AF81D68(v8, v11);
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_0(v11, v12);
    v6 = (*(v5 + 16))(v4, v5);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_21AFA8918(v8, &qword_27CD43848, &unk_21B117F00);
    return 10;
  }

  return v6;
}

uint64_t sub_21B0B67C8(uint64_t a1, uint64_t a2)
{
  sub_21AF92198(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43528, &qword_21B128A70);
  result = swift_dynamicCast();
  if (result)
  {
    return v4 == a2;
  }

  return result;
}

uint64_t sub_21B0B6838(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x494C545461746164 && a2 == 0xEE00736B6565576ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21B112D04();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21B0B6904(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47010, &unk_21B128C50);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21B0B7CC4();
  sub_21B112F44();
  sub_21B112B44();
  return (*(v5 + 8))(v8, v3);
}

void *sub_21B0B6A28(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47000, &qword_21B128C48);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21B0B7CC4();
  sub_21B112F34();
  if (!v1)
  {
    v9 = sub_21B112AB4();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_21B0B6B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0B6838(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21B0B6BC4@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_67();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21B0B6BF0(uint64_t a1)
{
  v2 = sub_21B0B7CC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0B6C2C(uint64_t a1)
{
  v2 = sub_21B0B7CC4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21B0B6C70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_21B0B6A28(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21B0B6CC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v60 = a3;
  v5 = v4;
  sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v53 = v9;
  v54 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_1();
  v51 = (v10 - v11);
  MEMORY[0x28223BE20](v12);
  v52 = &v51 - v13;
  v14 = sub_21B111CB4();
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v18 = sub_21B111BA4();
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_2();
  v58 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_1_1();
  v24 = v22 - v23;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v51 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v51 - v29;
  *(v5 + 16) = 0;
  ObjectType = swift_getObjectType();
  v32 = dynamic_cast_existential_1_conditional(a1, ObjectType, &protocol descriptor for DataWarehouseEnvironment);
  if (!v32)
  {
    sub_21B0B7B44();
    swift_allocError();
    *v36 = 0xD000000000000034;
    *(v36 + 8) = 0x800000021B140DA0;
    *(v36 + 16) = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_21AFA8918(a4, &qword_27CD43568, &unk_21B1290A0);
LABEL_11:
    type metadata accessor for DataWarehouseBlock();
    swift_deallocPartialClassInstance();
    return v5;
  }

  v34 = v32;
  v35 = v33;
  sub_21AFC555C(a4, v61, &qword_27CD43568, &unk_21B1290A0);
  v55 = a4;
  v56 = v5;
  v57 = a1;
  if (v62)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43528, &qword_21B128A70);
    swift_dynamicCast();
  }

  else
  {
    swift_unknownObjectRetain();
    sub_21AFA8918(v61, &qword_27CD43568, &unk_21B1290A0);
  }

  v37 = sub_21B110D94();
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v37);
  v38 = swift_getObjectType();
  (*(v35 + 40))(v38, v35);
  if (v39)
  {
    sub_21B110CC4();

    sub_21AFA8918(v30, &qword_27CD43750, &qword_21B117A30);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v37);
    sub_21AFA6428(v28, v30);
  }

  sub_21AFC555C(v30, v24, &qword_27CD43750, &qword_21B117A30);
  sub_21B0C68B0(v38, *(v35 + 16), v17);
  v40 = v60;
  v42 = v58;
  v41 = v59;
  sub_21B111B44();
  if (v41)
  {

    swift_unknownObjectRelease_n();
    sub_21AFA8918(v55, &qword_27CD43568, &unk_21B1290A0);
    sub_21AFA8918(v30, &qword_27CD43750, &qword_21B117A30);
    v5 = v56;
    goto LABEL_11;
  }

  type metadata accessor for DataWarehouseControllerV2();
  swift_allocObject();
  v43 = sub_21B0C4B9C(v42);
  v5 = v56;
  *(v56 + 24) = v43;
  *(v5 + 32) = v34;
  *(v5 + 40) = v35;
  swift_unknownObjectRetain();
  v45 = v51;
  sub_21B110F64();
  v46 = v52;
  sub_21B110F04();
  v47 = v54;
  v48 = *(v53 + 8);
  v48(v45, v54);
  sub_21B110F44();
  v50 = v49;

  swift_unknownObjectRelease_n();
  sub_21AFA8918(v55, &qword_27CD43568, &unk_21B1290A0);
  v48(v46, v47);
  sub_21AFA8918(v30, &qword_27CD43750, &qword_21B117A30);
  *(v5 + 48) = v50;
  return v5;
}

uint64_t sub_21B0B726C(uint64_t a1)
{
  v4 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  if ((sub_21AF94278(ObjectType) & 1) != 0 && (sub_21B0C5120(a1), v2) || ((*(v4 + 24))(ObjectType, v4) & 1) != 0 && (sub_21AF97794(*(v1 + 48)), v2))
  {
    sub_21B0B7B44();
    swift_allocError();
    *v6 = v2;
    *(v6 + 8) = 0;
    *(v6 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    *(v1 + 16) = 1;
    sub_21B0B7388(a1);
  }

  return 1;
}

uint64_t sub_21B0B7388(uint64_t a1)
{
  v2 = v1;
  sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v74 = v5;
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v73 = v7 - v6;
  v82 = sub_21B111334();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  v78 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v79 = v65 - v14;
  v15 = sub_21B1112A4();
  OUTLINED_FUNCTION_1();
  v85 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v21 = sub_21B111514();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2();
  v27 = v26 - v25;
  v28 = *(v1 + 32);
  v29 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  v31 = *(v29 + 32);
  v71 = ObjectType;
  v72 = v28;
  result = v31(ObjectType, v29);
  if ((result & 1) == 0)
  {
    return result;
  }

  v70 = a1;
  sub_21B111534();
  result = sub_21B1114B4();
  v34 = *(result + 16);
  v35 = (v34 - v33);
  v69 = v23;
  v68 = v27;
  if (v34 == v33)
  {

    v36 = 0;
    v37 = 0;
    v38 = v76;
LABEL_23:
    v51 = v73;
    sub_21B110F64();
    sub_21B110F44();
    v53 = v52;
    (*(v74 + 8))(v51, v75);
    v54 = sub_21B0BE474();
    v35 = v38;
    if (v38)
    {
      if (qword_2811FAAD8 != -1)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    v62 = (v53 - v54) / 86400.0 + -1.0;
    result = sub_21B0C67B8(v71, *(v29 + 16));
    if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v62 > -9.22337204e18)
      {
        if (v62 < 9.22337204e18)
        {
          sub_21AFCB630(v37, v36, v62);
          swift_unknownObjectRelease();
          v63 = OUTLINED_FUNCTION_2_19();
          return v64(v63);
        }

        goto LABEL_40;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return result;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v34 <= v33)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v33 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v34)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v66 = v29;
  v67 = v21;
  v77 = 0;
  v84 = *(v85 + 16);
  v85 += 16;
  v39 = (*(v85 + 64) + 32) & ~*(v85 + 64);
  v40 = *(v85 + 56);
  v81 = v9 + 16;
  v80 = v9 + 8;
  v41 = (v85 - 8);
  v83 = v40;
  v65[1] = result;
  v42 = result + v39 + v33 * v40;
  while (1)
  {
    v84(v20, v42, v15);
    if (!*(sub_21B111294() + 16) || (sub_21AF98B58(0x735F657669746361, 0xEF736E6F69737365), (v43 & 1) == 0))
    {

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_4_15();
    v44(v79);

    sub_21B111314();
    v45 = OUTLINED_FUNCTION_5_16();
    v46(v45);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_15:
    if (*(sub_21B111294() + 16) && (sub_21AF98B58(0x65735F6C61746F74, 0xEE00736E6F697373), (v47 & 1) != 0))
    {
      OUTLINED_FUNCTION_4_15();
      v48(v78);

      sub_21B111314();
      (*v41)(v20, v15);
      v49 = OUTLINED_FUNCTION_5_16();
      v50(v49);
      if (swift_dynamicCast())
      {
        if (__CFADD__(v77, v86))
        {
          goto LABEL_33;
        }

        LODWORD(v77) = v77 + v86;
      }
    }

    else
    {

      (*v41)(v20, v15);
    }

    v42 += v83;
    if (!--v35)
    {

      v37 = HIDWORD(v77);
      v36 = v77;
      v38 = v76;
      v29 = v66;
      goto LABEL_23;
    }
  }

  if (!__CFADD__(HIDWORD(v77), v86))
  {
    HIDWORD(v77) += v86;
    goto LABEL_15;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  swift_once();
LABEL_25:
  v55 = sub_21B1122D4();
  __swift_project_value_buffer(v55, qword_2811FAB28);
  v56 = sub_21B1122B4();
  v57 = sub_21B112704();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_21AF80000, v56, v57, "Failed to find data start time for harvesting telemetry", v58, 2u);
    MEMORY[0x21CEEA9A0](v58, -1, -1);
  }

  sub_21B0B7B44();
  swift_allocError();
  *v59 = 0;
  *(v59 + 8) = 0;
  *(v59 + 16) = 3;
  swift_willThrow();

  v60 = OUTLINED_FUNCTION_2_19();
  return v61(v60);
}

uint64_t sub_21B0B7A9C()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_21B0B7AC4()
{
  sub_21B0B7A9C();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

unint64_t sub_21B0B7B44()
{
  result = qword_27CD46FE8;
  if (!qword_27CD46FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46FE8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23SearchOnDeviceAnalytics23DataWarehouseBlockErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_21B0B7BC4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_21B0B7BEC(uint64_t a1)
{
  result = sub_21B0B7B44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21B0B7C18()
{
  result = qword_27CD46FF0;
  if (!qword_27CD46FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46FF0);
  }

  return result;
}

unint64_t sub_21B0B7C70()
{
  result = qword_27CD46FF8;
  if (!qword_27CD46FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD46FF8);
  }

  return result;
}

unint64_t sub_21B0B7CC4()
{
  result = qword_27CD47008;
  if (!qword_27CD47008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47008);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataWarehouseBlock.Config.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_21B0B7DC8()
{
  result = qword_27CD47018;
  if (!qword_27CD47018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47018);
  }

  return result;
}

unint64_t sub_21B0B7E20()
{
  result = qword_27CD47020;
  if (!qword_27CD47020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47020);
  }

  return result;
}

unint64_t sub_21B0B7E78()
{
  result = qword_27CD47028;
  if (!qword_27CD47028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47028);
  }

  return result;
}

uint64_t sub_21B0B7F10(char a1)
{
  if (a1)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 0x6469776F72;
  }
}

uint64_t sub_21B0B7F44(uint64_t a1)
{
  result = sub_21B111B84();
  qword_27CD6E7B8 = result;
  unk_27CD6E7C0 = v2;
  return result;
}

uint64_t sub_21B0B7F68()
{
  result = sub_21B111B74();
  qword_27CD6E7C8 = result;
  unk_27CD6E7D0 = v1;
  return result;
}

uint64_t sub_21B0B7F8C()
{
  sub_21B112904();
  MEMORY[0x21CEE9770](0x5420455441455243, 0xED000020454C4241);
  if (qword_27CD429E8 != -1)
  {
    swift_once();
  }

  v0 = qword_27CD6E7B8;
  v1 = unk_27CD6E7C0;

  MEMORY[0x21CEE9770](v0, v1);

  MEMORY[0x21CEE9770](0x202020200A2820, 0xE700000000000000);
  MEMORY[0x21CEE9770](0x6469776F72, 0xE500000000000000);
  MEMORY[0x21CEE9770](0xD00000000000001ALL, 0x800000021B140E40);
  MEMORY[0x21CEE9770](0x64616F6C796170, 0xE700000000000000);
  result = MEMORY[0x21CEE9770](0x4E5520424F4C4220, 0xEE00290A45555149);
  qword_27CD6E7D8 = 0;
  unk_27CD6E7E0 = 0xE000000000000000;
  return result;
}

uint64_t sub_21B0B8100()
{
  sub_21B112904();

  if (qword_27CD429E8 != -1)
  {
    swift_once();
  }

  v0 = qword_27CD6E7B8;
  v1 = unk_27CD6E7C0;

  MEMORY[0x21CEE9770](v0, v1);

  MEMORY[0x21CEE9770](0x2045524548570ALL, 0xE700000000000000);
  MEMORY[0x21CEE9770](0x64616F6C796170, 0xE700000000000000);
  result = MEMORY[0x21CEE9770](1059077408, 0xE400000000000000);
  qword_27CD6E7E8 = 0xD000000000000012;
  unk_27CD6E7F0 = 0x800000021B140EC0;
  return result;
}

uint64_t sub_21B0B821C()
{
  sub_21B112904();

  strcpy(v3, "INSERT INTO ");
  BYTE5(v3[1]) = 0;
  HIWORD(v3[1]) = -5120;
  if (qword_27CD429E8 != -1)
  {
    swift_once();
  }

  v0 = qword_27CD6E7B8;
  v1 = unk_27CD6E7C0;

  MEMORY[0x21CEE9770](v0, v1);

  MEMORY[0x21CEE9770](10272, 0xE200000000000000);
  MEMORY[0x21CEE9770](0x64616F6C796170, 0xE700000000000000);
  result = MEMORY[0x21CEE9770](0xD00000000000001CLL, 0x800000021B140EE0);
  qword_27CD6E7F8 = v3[0];
  unk_27CD6E800 = v3[1];
  return result;
}

uint64_t sub_21B0B833C()
{
  sub_21B112904();
  MEMORY[0x21CEE9770](0x46204554454C4544, 0xEC000000204D4F52);
  if (qword_27CD429E8 != -1)
  {
    swift_once();
  }

  v0 = qword_27CD6E7B8;
  v1 = unk_27CD6E7C0;

  MEMORY[0x21CEE9770](v0, v1);

  MEMORY[0x21CEE9770](0xD00000000000003ELL, 0x800000021B140E60);
  MEMORY[0x21CEE9770](0x5F747865746E6F63, 0xEA00000000006469);
  MEMORY[0x21CEE9770](0xD00000000000001ALL, 0x800000021B140EA0);
  if (qword_27CD42440 != -1)
  {
    swift_once();
  }

  v2 = qword_2811FAB08;
  v3 = qword_2811FAB10;

  MEMORY[0x21CEE9770](v2, v3);

  result = MEMORY[0x21CEE9770](0x29202020200ALL, 0xE600000000000000);
  qword_27CD6E808 = 0;
  unk_27CD6E810 = 0xE000000000000000;
  return result;
}

uint64_t sub_21B0B84F0(char a1)
{
  if ((a1 & 1) == 0)
  {
    return MEMORY[0x277D84D38];
  }

  v1 = MEMORY[0x277CC9318];
  sub_21AF997C4();
  return v1;
}

uint64_t sub_21B0B8538(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B112A34();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B0B858C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21AF99AE4();

  return MEMORY[0x28219E770](a1, a2, a3, v6);
}

uint64_t sub_21B0B85F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21B0B8538(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21B0B8628@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B0B7F10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21B0B866C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AF99B38();
  v5 = sub_21AF99B8C();

  return MEMORY[0x28219E788](a1, a2, v4, v5);
}

uint64_t sub_21B0B86FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics12ContextStore_insertStatement;
  v4 = sub_21B1117B4();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12ContextStore_selectStatement, 1, 1, v4);
  *(v1 + 16) = a1;
  return v1;
}

void *sub_21B0B8778()
{
  v3 = OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC8, &unk_21B128DB0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1_19();
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics12ContextStore_insertStatement;
  OUTLINED_FUNCTION_9_9();
  sub_21B0B939C(v1 + v9, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_21AFA8918(v8, &qword_27CD42CC8, &unk_21B128DB0);
  if (qword_27CD42A08 != -1)
  {
    swift_once();
  }

  result = OUTLINED_FUNCTION_7_10();
  if (!v0)
  {
    v11 = OUTLINED_FUNCTION_3_19();
    v12(v11);
    OUTLINED_FUNCTION_2_20();
    sub_21AF99870(v2, v1 + v9);
    swift_endAccess();
LABEL_6:
    v13 = OUTLINED_FUNCTION_6_11();
    return v14(v13);
  }

  return result;
}

void *sub_21B0B8944()
{
  v3 = OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC8, &unk_21B128DB0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1_19();
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics12ContextStore_selectStatement;
  OUTLINED_FUNCTION_9_9();
  sub_21B0B939C(v1 + v9, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_21AFA8918(v8, &qword_27CD42CC8, &unk_21B128DB0);
  if (qword_27CD42A00 != -1)
  {
    swift_once();
  }

  result = OUTLINED_FUNCTION_7_10();
  if (!v0)
  {
    v11 = OUTLINED_FUNCTION_3_19();
    v12(v11);
    OUTLINED_FUNCTION_2_20();
    sub_21AF99870(v2, v1 + v9);
    swift_endAccess();
LABEL_6:
    v13 = OUTLINED_FUNCTION_6_11();
    return v14(v13);
  }

  return result;
}

char *sub_21B0B8B10(uint64_t a1, unint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v4 = sub_21B1117B4();
  OUTLINED_FUNCTION_1();
  v51 = v5;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v38 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v38 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v38 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v38 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v38 - v22;
  sub_21B0B8944();
  if (!v3)
  {
    v44 = v15;
    v45 = v18;
    v42 = v12;
    v43 = v2;
    v40 = v9;
    v46 = v4;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA0, &unk_21B114220);
    v25 = swift_allocObject();
    v41 = xmmword_21B113D90;
    *(v25 + 16) = xmmword_21B113D90;
    v26 = MEMORY[0x277D3E1A0];
    *(v25 + 56) = MEMORY[0x277CC9318];
    *(v25 + 64) = v26;
    v27 = v47;
    v28 = v48;
    *(v25 + 32) = v47;
    *(v25 + 40) = v28;
    sub_21AF99818(v27, v28);
    sub_21B111774();

    OUTLINED_FUNCTION_5_17();
    sub_21B111744();
    v38[1] = v24;
    v29 = v46;
    v51 = *(v51 + 8);
    (v51)(v21, v46);
    v21 = v49;
    v39 = v50;
    v30 = v45;
    sub_21B111784();
    (v51)(v30, v29);
    if (v39)
    {
      v32 = v44;
      sub_21B0B8778();
      v33 = swift_allocObject();
      *(v33 + 16) = v41;
      *(v33 + 56) = MEMORY[0x277CC9318];
      *(v33 + 64) = MEMORY[0x277D3E1A0];
      *(v33 + 32) = v27;
      *(v33 + 40) = v28;
      sub_21AF99818(v27, v28);
      v34 = v42;
      sub_21B111774();

      OUTLINED_FUNCTION_5_17();
      sub_21B1117A4();
      v35 = v46;
      v36 = v51;
      (v51)(v34, v46);
      v21 = v49;
      v37 = v40;
      sub_21B111784();
      v36(v37, v35);
      v36(v32, v35);
      v29 = v35;
    }

    (v51)(v23, v29);
  }

  return v21;
}

uint64_t sub_21B0B9004(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v6 = *a1;
  v5 = a1[1];
  v7 = sub_21B111294();
  sub_21B0DF074(v6, v5, v7, v4);

  v8 = sub_21B111334();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v8);
  result = sub_21AFA8918(v4, &qword_27CD42C48, &qword_21B1141C0);
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF94BA0();
    v11 = swift_allocError();
    *v12 = v6;
    *(v12 + 8) = v5;
    *(v12 + 16) = 3;
    sub_21AF99C38();
    swift_allocError();
    *v13 = v11;
    *(v13 + 8) = 0;
    *(v13 + 16) = 2;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_21B0B9164()
{
  if (qword_27CD42A10 != -1)
  {
    swift_once();
  }

  return sub_21B1116F4();
}

uint64_t sub_21B0B91E0()
{

  sub_21AFA8918(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12ContextStore_insertStatement, &qword_27CD42CC8, &unk_21B128DB0);
  sub_21AFA8918(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12ContextStore_selectStatement, &qword_27CD42CC8, &unk_21B128DB0);
  return v0;
}

uint64_t sub_21B0B9250()
{
  sub_21B0B91E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ContextStore(uint64_t a1)
{
  result = qword_27CD47040;
  if (!qword_27CD47040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B0B92FC(uint64_t a1)
{
  sub_21AF989A8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21B0B939C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC8, &unk_21B128DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ContextStore.Columns(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B0B94E8()
{
  result = qword_27CD47050;
  if (!qword_27CD47050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47050);
  }

  return result;
}

unint64_t sub_21B0B9540()
{
  result = qword_27CD47058;
  if (!qword_27CD47058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47060, &qword_21B128E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47058);
  }

  return result;
}

unint64_t sub_21B0B95A8()
{
  result = qword_27CD47068;
  if (!qword_27CD47068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47068);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_20()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_10()
{

  return sub_21B1116F4();
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return sub_21B1117B4();
}

uint64_t OUTLINED_FUNCTION_9_9()
{

  return swift_beginAccess();
}

uint64_t sub_21B0B9734(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47080, &qword_21B129068);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v9);
  sub_21B0BB5D8();
  sub_21B112F34();
  if (!v1)
  {
    v11[14] = 0;
    sub_21B0BB62C();
    sub_21B112A84();
    v9 = v11[15];
    v11[13] = 1;
    sub_21B112A74();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_21B0B98E8(uint64_t a1, int a2)
{
  LODWORD(v73) = a2;
  v74 = a1;
  v69 = sub_21B111024();
  OUTLINED_FUNCTION_1();
  v77 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v68 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD470A8, &qword_21B129078);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v64 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = &v62 - v9;
  v67 = sub_21B110BE4();
  OUTLINED_FUNCTION_1();
  v70 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v66 = v13 - v12;
  sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v75 = v15;
  v76 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD470B0, &unk_21B129080);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v19);
  v21 = &v62 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD470B8, &qword_21B12B820);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v22);
  v24 = &v62 - v23;
  v25 = sub_21B1110B4();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2();
  v31 = v30 - v29;
  v32 = sub_21B110FD4();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2();
  v38 = v37 - v36;
  sub_21B111074();
  OUTLINED_FUNCTION_1();
  v71 = v40;
  v72 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2();
  v43 = v42 - v41;
  (*(v34 + 104))(v38, *MEMORY[0x277CC9810], v32);
  sub_21B110FE4();
  (*(v34 + 8))(v38, v32);
  sub_21B111094();
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    __break(1u);
LABEL_11:
    sub_21AFA8918(v38, &qword_27CD470A8, &qword_21B129078);
    v61 = 37;
    goto LABEL_13;
  }

  (*(v27 + 32))(v31, v24, v25);
  sub_21B111054();
  v44 = sub_21B110FC4();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v44);
  sub_21B111044();
  if ((v73 & 1) == 0)
  {
    sub_21B110FF4();
    sub_21B110F44();
    v58 = OUTLINED_FUNCTION_9_10();
    v59(v58);
    return (*(v71 + 8))(v43, v72);
  }

  v45 = *MEMORY[0x277CC98F0];
  v46 = v77;
  v48 = v68;
  v47 = v69;
  v63 = *(v77 + 104);
  v63(v68, v45, v69);
  v38 = v65;
  sub_21B111004();
  v49 = *(v46 + 8);
  v77 = v46 + 8;
  v62 = v49;
  v49(v48, v47);
  v50 = v67;
  if (__swift_getEnumTagSinglePayload(v38, 1, v67) == 1)
  {
    goto LABEL_11;
  }

  v51 = v70;
  v52 = v66;
  v73 = *(v70 + 32);
  v73(v66, v38, v50);
  if ((sub_21B110BD4() & 1) == 0)
  {
LABEL_7:
    sub_21B110BB4();
    sub_21B110F44();
    v56 = OUTLINED_FUNCTION_9_10();
    v57(v56);
    (*(v51 + 8))(v52, v50);
    return (*(v71 + 8))(v43, v72);
  }

  sub_21B110BC4();
  v54 = v68;
  v53 = v69;
  v63(v68, v45, v69);
  v55 = v64;
  sub_21B111004();
  v62(v54, v53);
  (*(v75 + 8))(v18, v76);
  if (__swift_getEnumTagSinglePayload(v55, 1, v50) != 1)
  {
    v51 = v70;
    (*(v70 + 8))(v52, v50);
    v73(v52, v55, v50);
    goto LABEL_7;
  }

  sub_21AFA8918(v55, &qword_27CD470A8, &qword_21B129078);
  v61 = 44;
LABEL_13:
  result = sub_21B1129C4("Fatal error", 11, 2, 0xD000000000000026, 0x800000021B140F90, "SearchOnDeviceAnalytics/AggregationWindowBlock.swift", 52, 2, v61);
  __break(1u);
  return result;
}

uint64_t sub_21B0BA038(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B112A34();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B0BA08C(char a1)
{
  if (a1)
  {
    return 1801807223;
  }

  else
  {
    return 7954788;
  }
}

uint64_t sub_21B0BA0D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21B0BA038(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21B0BA108@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B0BA08C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21B0BA1E4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  sub_21AF92198(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43528, &qword_21B128A70);
  result = swift_dynamicCast();
  if (result)
  {
    if (a2 == 2)
    {
      if (v9 != 2)
      {
        return 0;
      }
    }

    else if (v9 == 2 || (sub_21AFAC30C(a2 & 1, v9 & 1) & 1) == 0)
    {
      return 0;
    }

    if (a4)
    {
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v10 == a3)
      {
        v8 = v11;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

BOOL sub_21B0BA2BC(char a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6)
{
  if (a1 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (a4 == 2)
  {
    return 0;
  }

  v11 = (a1 & 1) == 0;
  if (a1)
  {
    v12 = 1801807223;
  }

  else
  {
    v12 = 7954788;
  }

  if (v11)
  {
    v13 = 0xE300000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  if (a4)
  {
    v14 = 1801807223;
  }

  else
  {
    v14 = 7954788;
  }

  if (a4)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  if (v12 != v14 || v13 != v15)
  {
    v17 = sub_21B112D04();

    if ((v17 & 1) == 0)
    {
      return 0;
    }

LABEL_3:
    if (a3)
    {
      return (a6 & 1) != 0;
    }

    return (a6 & 1) == 0 && a2 == a5;
  }

  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && a2 == a5;
  }

  return (a6 & 1) != 0;
}

uint64_t sub_21B0BA3C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_21B112D04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021B141060 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_21B112D04();

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

uint64_t sub_21B0BA494(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6C61767265746E69;
  }
}

uint64_t sub_21B0BA4D0(void *a1, char a2, uint64_t a3, char a4)
{
  v14[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47098, &qword_21B129070);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21B0BB5D8();
  sub_21B112F44();
  v17 = a2;
  v16 = 0;
  sub_21B0BB680();
  sub_21B112B04();
  if (!v4)
  {
    v15 = 1;
    sub_21B112AF4();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_21B0BA654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0BA3C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B0BA67C(uint64_t a1)
{
  v2 = sub_21B0BB5D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0BA6B8(uint64_t a1)
{
  v2 = sub_21B0BB5D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B0BA724@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21B0B9734(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_21B0BA780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  ObjectType = swift_getObjectType();
  v7 = dynamic_cast_existential_1_conditional(a1, ObjectType, &protocol descriptor for AggregationEnvironment);
  if (v7)
  {
    v9 = v7;
    v10 = v8;
    v11 = *(a3 + 16);
    v20[0] = *a3;
    v20[1] = v11;
    v21 = *(a3 + 32);
    if (*(&v11 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43528, &qword_21B128A70);
      if (swift_dynamicCast())
      {
        v12 = v17;
        v13 = v18;
        v14 = v19;
LABEL_8:
        *(v3 + 56) = v12;
        *(v3 + 64) = v13;
        *(v3 + 72) = v14;
        *(v3 + 40) = v9;
        *(v3 + 48) = v10;
        return v3;
      }
    }

    else
    {
      sub_21AFA8918(v20, &qword_27CD43568, &unk_21B1290A0);
    }

    v13 = 0;
    v14 = 1;
    v12 = 2;
    goto LABEL_8;
  }

  sub_21B0BB7B8();
  swift_allocError();
  *v15 = 0xD000000000000036;
  *(v15 + 8) = 0x800000021B141020;
  *(v15 + 16) = 1;
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_21AFA8918(a3, &qword_27CD43568, &unk_21B1290A0);
  type metadata accessor for AggregationWindowBlock();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_21B0BA90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v62 = a3;
  v60 = a2;
  v58 = a1;
  v61 = sub_21B1112A4();
  OUTLINED_FUNCTION_1();
  v59 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v57 = v9 - v8;
  v10 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v65 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = sub_21B111334();
  OUTLINED_FUNCTION_1();
  v56 = v17;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v51 - v22;
  v24 = sub_21B0BB24C();
  v25 = *(v3 + 48);
  ObjectType = swift_getObjectType();
  v27 = (*(v25 + 40))(ObjectType, v25);
  v28 = *(v3 + 56);
  v29 = 604800.0;
  if ((v28 & 1) == 0)
  {
    v29 = 86400.0;
  }

  if (v28 == 2)
  {
    v29 = v27 - v24;
  }

  v30 = v24 + v29;
  *(v5 + 33) = v27 < v29 + v24 + v29;
  if (v24 + v29 > v27)
  {
    return v30 <= v27;
  }

  result = sub_21B112664();
  if (v4)
  {
    return v30 <= v27;
  }

  if (v24 <= v30)
  {
    *(v5 + 16) = v24;
    *(v5 + 24) = v30;
    *(v5 + 32) = 0;
    if (v28)
    {
      v53 = sub_21B0B33E8(7uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD470C0, &unk_21B129090);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C0, &qword_21B129840);
      OUTLINED_FUNCTION_7_11();
      OUTLINED_FUNCTION_5_18();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_21B113D80;
      v33 = (v32 + v25);
      *v33 = 0x73745F7472617473;
      v33[1] = 0xE800000000000000;
      v64 = MEMORY[0x277D839F8];
      *v63 = v24;
      v55 = v32 + v25;
      OUTLINED_FUNCTION_3_20();
      __swift_destroy_boxed_opaque_existential_0(v63);
      OUTLINED_FUNCTION_2_21();
      v64 = MEMORY[0x277D839F8];
      *v63 = v30;
      OUTLINED_FUNCTION_3_20();
      v52 = v32;
      __swift_destroy_boxed_opaque_existential_0(v63);
      v37 = (v55 + 2 * v54);
      OUTLINED_FUNCTION_6_12();
      *v37 = v38 + 5;
      v37[1] = v39;
      v64 = MEMORY[0x277D84A28];
      v63[0] = v53;
      OUTLINED_FUNCTION_3_20();
      v51[1] = v37;
      v45 = v24 + v53 * 86400.0;
      __swift_destroy_boxed_opaque_existential_0(v63);
      v46 = (v55 + 3 * v54);
      v47 = MEMORY[0x277D839F8];
      OUTLINED_FUNCTION_6_12();
      *v46 = v48 + 3;
      v46[1] = v49;
      v64 = v47;
      *v63 = v45;
      OUTLINED_FUNCTION_3_20();
      v50 = v47;
      __swift_destroy_boxed_opaque_existential_0(v63);
    }

    else
    {
      v53 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD470C0, &unk_21B129090);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C0, &qword_21B129840);
      OUTLINED_FUNCTION_7_11();
      OUTLINED_FUNCTION_5_18();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_21B113DB0;
      v36 = (v35 + v25);
      v55 = v34;
      *v36 = 0x73745F7472617473;
      v36[1] = 0xE800000000000000;
      v50 = MEMORY[0x277D839F8];
      v64 = MEMORY[0x277D839F8];
      *v63 = v24;
      OUTLINED_FUNCTION_3_20();
      v52 = v35;
      __swift_destroy_boxed_opaque_existential_0(v63);
      OUTLINED_FUNCTION_2_21();
      v64 = v50;
      *v63 = v30;
      OUTLINED_FUNCTION_3_20();
      __swift_destroy_boxed_opaque_existential_0(v63);
      v21 = v53;
    }

    v40 = sub_21B112334();
    sub_21B110F64();
    sub_21B110F44();
    v42 = v41;
    (*(v65 + 8))(v15, v10);
    v64 = v50;
    v63[0] = v42;
    sub_21B111554();
    __swift_destroy_boxed_opaque_existential_0(v63);
    (*(v56 + 32))(v21, v23, v16);
    swift_isUniquelyReferenced_nonNull_native();
    v63[0] = v40;
    sub_21B0EC95C(v43, v21, 0xD000000000000013, 0x800000021B140FC0);
    v44 = v57;
    sub_21B111274();
    sub_21B1114D4();
    swift_getObjectType();
    sub_21B111434();
    (*(v59 + 8))(v44, v61);
    return v30 <= v27;
  }

  __break(1u);
  return result;
}

double sub_21B0BB0C0()
{
  v1 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  if (*(v0 + 32))
  {
    v8 = *(v0 + 48);
    ObjectType = swift_getObjectType();
    *&v10 = COERCE_DOUBLE((*(v8 + 16))(ObjectType, v8));
    if (v11)
    {
      sub_21B110ED4();
      sub_21B110F44();
      v13 = v12;
      (*(v3 + 8))(v7, v1);
    }

    else
    {
      return *&v10;
    }
  }

  else
  {
    v14 = *(v0 + 24);
    v15 = *(v0 + 16);
    v13 = v14;
    v16 = *(v0 + 48);
    v17 = swift_getObjectType();
    v18 = *(v16 + 16);
    v18(v17, v16);
    if ((v19 & 1) != 0 || (v20 = COERCE_DOUBLE((v18)(v17, v16)), (v21 & 1) == 0) && v15 == v20)
    {
      (*(v16 + 24))(COERCE_DOUBLE(*&v14), 0, v17, v16);
    }
  }

  return v13;
}

double sub_21B0BB24C()
{
  v1 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v10 = sub_21B0BB0C0();
  v11 = *(v0 + 48);
  ObjectType = swift_getObjectType();
  (*(v11 + 40))(ObjectType, v11);
  if ((v9 & 1) == 0)
  {
    v15 = v13;
    if (((*(v11 + 48))(ObjectType, v11) & 1) == 0)
    {
      v16 = v8 * 86400.0;
      if (v16 < v15 - v10)
      {
        v10 = v15 - v16;
        v17 = *(v0 + 56);
        if (v17 != 2)
        {
          sub_21B110F34();
          sub_21B0B98E8(v7, v17 & 1);
          v10 = v18;
          (*(v3 + 8))(v7, v1);
        }
      }
    }
  }

  return v10;
}

void sub_21B0BB3C8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
}

uint64_t sub_21B0BB3D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 73, 7);
}

uint64_t sub_21B0BB434(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[17])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      if (v3 <= 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = *a1;
      }

      v5 = v4 - 3;
      if (v3 < 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B0BB480(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_21B0BB4D4()
{
  result = qword_27CD47070;
  if (!qword_27CD47070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47070);
  }

  return result;
}

unint64_t sub_21B0BB52C()
{
  result = qword_27CD47078;
  if (!qword_27CD47078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47078);
  }

  return result;
}

unint64_t sub_21B0BB5D8()
{
  result = qword_27CD47088;
  if (!qword_27CD47088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47088);
  }

  return result;
}

unint64_t sub_21B0BB62C()
{
  result = qword_27CD47090;
  if (!qword_27CD47090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47090);
  }

  return result;
}

unint64_t sub_21B0BB680()
{
  result = qword_27CD470A0;
  if (!qword_27CD470A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD470A0);
  }

  return result;
}

uint64_t sub_21B0BB6D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FF8, &qword_21B114B60);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21B0BB734()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C0, &qword_21B129840);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_21B0BB7B8()
{
  result = qword_27CD470C8;
  if (!qword_27CD470C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD470C8);
  }

  return result;
}

_BYTE *sub_21B0BB834(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B0BB910()
{
  result = qword_27CD470D0;
  if (!qword_27CD470D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD470D0);
  }

  return result;
}

unint64_t sub_21B0BB968()
{
  result = qword_27CD470D8;
  if (!qword_27CD470D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD470D8);
  }

  return result;
}

unint64_t sub_21B0BB9C0()
{
  result = qword_27CD470E0;
  if (!qword_27CD470E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD470E0);
  }

  return result;
}

unint64_t sub_21B0BBA18()
{
  result = qword_27CD470E8;
  if (!qword_27CD470E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD470E8);
  }

  return result;
}

unint64_t sub_21B0BBA6C()
{
  result = qword_27CD470F0;
  if (!qword_27CD470F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD470F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_20()
{

  return sub_21B111554();
}

uint64_t sub_21B0BBB58(char a1)
{
  if (a1)
  {
    return 0x6867696C746F7073;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_21B0BBBA0(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B112A34();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B0BBC18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21B0BBBA0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21B0BBC48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B0BBB58(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21B0BBD24@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  LODWORD(v76) = a1;
  v75 = a3;
  v69 = sub_21B110FB4();
  OUTLINED_FUNCTION_1();
  v73 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_67_1();
  v72 = v6;
  v71 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_67_1();
  v74 = v8;
  v77 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  v70 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = (&v63 - v13);
  v15 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_1();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = (&v63 - v21);
  v23 = sub_21B1112A4();
  OUTLINED_FUNCTION_1();
  v78 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_1();
  v28 = v26 - v27;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v63 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v63 - v33;
  v35 = v79;
  result = sub_21B0B0550(&v63 - v33);
  if (!v35)
  {
    v66 = v14;
    v67 = v28;
    v64 = v19;
    v65 = v15;
    v79 = v34;
    v68 = v22;
    sub_21B0BE1EC();
    v38 = v37;
    v39 = v79;
    v40 = *(v78 + 16);
    v40(v32, v79, v23);
    sub_21AFC2798(v32, v68);
    v41 = v67;
    v40(v67, v39, v23);
    v42 = sub_21B0BE628();
    sub_21AF94394(v41, v66, v38, v42);
    v43 = MEMORY[0x277D84F90];
    v44 = sub_21B112334();
    if (v76)
    {
      v76 = v23;
      v67 = sub_21B0D0EA0(a2, v44);
      v45 = v77;
    }

    else
    {
      v46 = sub_21AF9FD9C(a2, v44);
      v45 = v77;
      v76 = v23;
      v67 = v46;
    }

    v47 = v74;
    *v74 = 0;
    v47[1] = 0xE000000000000000;
    v47[2] = v43;
    v48 = v71;
    sub_21B111EB4();
    v49 = *(v48 + 28);
    __swift_storeEnumTagSinglePayload(v47 + v49, 1, 1, v45);
    v50 = *(v48 + 32);
    v51 = v65;
    __swift_storeEnumTagSinglePayload(v47 + v50, 1, 1, v65);
    v77 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions;
    v52 = v68;
    v53 = v64;
    sub_21B0BC45C(v68, v64, type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions);
    sub_21AF99BE0(v47 + v50, &qword_27CD43308, &qword_21B115FE0);
    sub_21B0BC3FC(v53, v47 + v50, type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions);
    __swift_storeEnumTagSinglePayload(v47 + v50, 0, 1, v51);
    v54 = v45;
    v55 = v66;
    v56 = v70;
    sub_21B0BC45C(v66, v70, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata);
    sub_21AF99BE0(v47 + v49, &qword_27CD43300, &qword_21B115FD8);
    sub_21B0BC3FC(v56, v47 + v49, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata);
    __swift_storeEnumTagSinglePayload(v47 + v49, 0, 1, v54);
    v57 = v72;
    sub_21B110FA4();
    v58 = sub_21B110F94();
    v60 = v59;
    (*(v73 + 8))(v57, v69);
    *v47 = v58;
    v47[1] = v60;
    v47[2] = v67;
    v61 = v75;
    v75[3] = v48;
    v61[4] = &off_282C95D78;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
    sub_21B0BC45C(v47, boxed_opaque_existential_1, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent);
    sub_21B0BC4BC(v55, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata);
    sub_21B0BC4BC(v52, v77);
    (*(v78 + 8))(v79, v76);
    return sub_21B0BC4BC(v47, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent);
  }

  return result;
}

uint64_t sub_21B0BC3FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21B0BC45C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21B0BC4BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for UploadEventType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B0BC5F4()
{
  result = qword_27CD470F8;
  if (!qword_27CD470F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD470F8);
  }

  return result;
}

unint64_t sub_21B0BC648()
{
  result = qword_27CD47100;
  if (!qword_27CD47100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47100);
  }

  return result;
}

uint64_t PoirotUserTaskParameters<>.makeUpload.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = sub_21B1111F4();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v21[58];
    sub_21B0BC734(v21);
  }

  return v9 & 1;
}

uint64_t sub_21B0BC734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46E18, &qword_21B1283D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B0BC79C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E746E65696C63 && a2 == 0xEA0000000000656DLL;
  if (v4 || (OUTLINED_FUNCTION_2_22(0x614E746E65696C63) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
    if (v6 || (OUTLINED_FUNCTION_2_22(0x6D69547472617473) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_2_22(0x656D6954646E65) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x800000021B141080 == a2;
        if (v8 || (OUTLINED_FUNCTION_2_22(0xD000000000000019) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x800000021B1410A0 == a2;
          if (v9 || (OUTLINED_FUNCTION_2_22(0xD000000000000014) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = OUTLINED_FUNCTION_9_11();
            v12 = a1 == v10 && a2 == v11;
            if (v12 || (OUTLINED_FUNCTION_2_22(v10) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = a1 == 0xD000000000000011 && 0x800000021B1410C0 == a2;
              if (v13 || (OUTLINED_FUNCTION_2_22(0xD000000000000011) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v14 = a1 == 0x6F6C7055656B616DLL && a2 == 0xEA00000000006461;
                if (v14 || (OUTLINED_FUNCTION_2_22(0x6F6C7055656B616DLL) & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000011 && 0x800000021B1410E0 == a2)
                {

                  return 8;
                }

                else
                {
                  v16 = OUTLINED_FUNCTION_2_22(0xD000000000000011);

                  if (v16)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_21B0BC9FC(char a1)
{
  result = 0x614E746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x6D69547472617473;
      break;
    case 2:
      result = 0x656D6954646E65;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = OUTLINED_FUNCTION_9_11();
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6F6C7055656B616DLL;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21B0BCB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0BC79C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B0BCB58(uint64_t a1)
{
  v2 = sub_21B0BD140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0BCB94(uint64_t a1)
{
  v2 = sub_21B0BD140();

  return MEMORY[0x2821FE720](a1, v2);
}

void __swiftcall SODAParams.init(clientName:startTime:endTime:ignoreMaximumLookbackTime:mockSessionFilesPath:persistTestData:applyWarehouseTTL:makeUpload:)(SearchOnDeviceAnalytics::SODAParams *__return_ptr retstr, Swift::String_optional clientName, Swift::Double startTime, Swift::Double_optional endTime, Swift::Bool ignoreMaximumLookbackTime, Swift::String_optional mockSessionFilesPath, Swift::Bool persistTestData, Swift::Bool applyWarehouseTTL, Swift::Bool makeUpload)
{
  retstr->clientName = clientName;
  retstr->startTime = startTime;
  retstr->endTime.value = *&endTime.is_nil;
  retstr->endTime.is_nil = ignoreMaximumLookbackTime;
  retstr->ignoreMaximumLookbackTime = mockSessionFilesPath.value._countAndFlagsBits;
  retstr->mockSessionFilesPath.value._countAndFlagsBits = mockSessionFilesPath.value._object;
  retstr->mockSessionFilesPath.value._object = persistTestData;
  retstr->persistTestData = applyWarehouseTTL;
  retstr->applyWarehouseTTL = makeUpload;
  retstr->makeUpload = v9;
  retstr->dataWarehousePath.value._countAndFlagsBits = 0;
  retstr->dataWarehousePath.value._object = 0;
}

void __swiftcall SODAParams.init(clientName:startTime:endTime:ignoreMaximumLookbackTime:mockSessionFilesPath:persistTestData:applyWarehouseTTL:makeUpload:dataWarehousePath:)(SearchOnDeviceAnalytics::SODAParams *__return_ptr retstr, Swift::String_optional clientName, Swift::Double startTime, Swift::Double_optional endTime, Swift::Bool ignoreMaximumLookbackTime, Swift::String_optional mockSessionFilesPath, Swift::Bool persistTestData, Swift::Bool applyWarehouseTTL, Swift::Bool makeUpload, Swift::String_optional dataWarehousePath)
{
  retstr->clientName = clientName;
  retstr->startTime = startTime;
  retstr->endTime.value = *&endTime.is_nil;
  retstr->endTime.is_nil = ignoreMaximumLookbackTime;
  retstr->ignoreMaximumLookbackTime = mockSessionFilesPath.value._countAndFlagsBits;
  retstr->mockSessionFilesPath.value._countAndFlagsBits = mockSessionFilesPath.value._object;
  retstr->mockSessionFilesPath.value._object = persistTestData;
  retstr->persistTestData = applyWarehouseTTL;
  retstr->applyWarehouseTTL = makeUpload;
  retstr->makeUpload = v10;
  retstr->dataWarehousePath = dataWarehousePath;
}

uint64_t SODAParams.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v45 = a2;
  v4 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v46 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47108, &qword_21B1295B0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  v10 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v10);
  sub_21B0BD140();
  sub_21B112F34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v47);
  }

  else
  {
    v11 = v46;
    LOBYTE(v49[0]) = 0;
    OUTLINED_FUNCTION_8_15();
    v12 = sub_21B112A44();
    v15 = v14;
    v44 = v12;
    LOBYTE(v49[0]) = 1;
    OUTLINED_FUNCTION_8_15();
    v16 = sub_21B112A64();
    if (v17)
    {
      sub_21B110ED4();
      sub_21B110F44();
      v19 = v18;
      (*(v11 + 8))(v8, v4);
    }

    else
    {
      v19 = v16;
    }

    LOBYTE(v49[0]) = 2;
    OUTLINED_FUNCTION_8_15();
    v20 = sub_21B112A64();
    v68 = v21 & 1;
    OUTLINED_FUNCTION_0_19(3);
    v22 = sub_21B112A54();
    OUTLINED_FUNCTION_0_19(4);
    v23 = sub_21B112A44();
    v25 = v24;
    v46 = v23;
    OUTLINED_FUNCTION_0_19(5);
    v26 = sub_21B112A54();
    OUTLINED_FUNCTION_0_19(6);
    v43 = sub_21B112A54();
    OUTLINED_FUNCTION_0_19(7);
    v39 = sub_21B112A54();
    v40 = v20;
    v63 = 8;
    v42 = sub_21B112A44();
    v41 = v27;
    v28 = v22 & 1;
    HIDWORD(v37) = v28;
    v38 = v26 & 1;
    v43 &= 1u;
    v29 = v43;
    LOBYTE(v20) = v39 & 1;
    v30 = OUTLINED_FUNCTION_7_12();
    v31(v30);
    v32 = v44;
    __src[0] = v44;
    __src[1] = v15;
    __src[2] = v19;
    v33 = v40;
    __src[3] = v40;
    v39 = v68;
    LOBYTE(__src[4]) = v68;
    BYTE1(__src[4]) = v28;
    *(&__src[4] + 2) = v66;
    HIWORD(__src[4]) = v67;
    v34 = v46;
    __src[5] = v46;
    __src[6] = v25;
    LOBYTE(__src[7]) = v38;
    BYTE1(__src[7]) = v29;
    BYTE2(__src[7]) = v20;
    *(&__src[7] + 3) = v64;
    HIBYTE(__src[7]) = v65;
    v35 = v42;
    v36 = v41;
    __src[8] = v42;
    __src[9] = v41;
    memcpy(v45, __src, 0x50uLL);
    sub_21B0BD194(__src, v49);
    __swift_destroy_boxed_opaque_existential_0(v47);
    v49[0] = v32;
    v49[1] = v15;
    v49[2] = v19;
    v49[3] = v33;
    v50 = v39;
    v51 = BYTE4(v37);
    v52 = v66;
    v53 = v67;
    v54 = v34;
    v55 = v25;
    v56 = v38;
    v57 = v43;
    v58 = v20;
    v59 = v64;
    v60 = v65;
    v61 = v35;
    v62 = v36;
    return sub_21B0BD1CC(v49);
  }
}

unint64_t sub_21B0BD140()
{
  result = qword_27CD47110;
  if (!qword_27CD47110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47110);
  }

  return result;
}

void static SODAParams.== infix(_:_:)(double *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 1);
  v8 = a1[2];
  v7 = a1[3];
  v9 = *(a1 + 32);
  v10 = *(a1 + 33);
  v11 = *(a1 + 5);
  v12 = *(a1 + 6);
  v13 = *(a1 + 56);
  v14 = *(a1 + 57);
  v15 = *(a1 + 58);
  v16 = *(a1 + 8);
  v17 = *(a1 + 9);
  v18 = *(a2 + 1);
  v20 = a2[2];
  v19 = a2[3];
  v21 = *(a2 + 32);
  v22 = *(a2 + 33);
  v24 = *(a2 + 5);
  v23 = *(a2 + 6);
  v25 = *(a2 + 56);
  v26 = *(a2 + 57);
  v27 = *(a2 + 58);
  v28 = *(a2 + 8);
  v29 = *(a2 + 9);
  if (v6)
  {
    if (!v18)
    {
      goto LABEL_30;
    }

    if (*a1 == *a2 && v6 == v18)
    {
      if (v8 != v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v39 = *(a2 + 57);
      v40 = *(a1 + 56);
      v45 = *(a2 + 58);
      v41 = *(a1 + 57);
      v42 = *(a1 + 58);
      v47 = *(a2 + 9);
      v49 = *(a2 + 8);
      v43 = *(a1 + 9);
      v31 = *(a1 + 8);
      if ((sub_21B112D04() & 1) == 0)
      {
        goto LABEL_30;
      }

      v16 = v31;
      v17 = v43;
      v29 = v47;
      v28 = v49;
      v14 = v41;
      v15 = v42;
      v27 = v45;
      v26 = v39;
      v13 = v40;
      if (v8 != v20)
      {
        goto LABEL_30;
      }
    }
  }

  else if (v18 || v8 != v20)
  {
    goto LABEL_30;
  }

  if (v9)
  {
    if (!v21)
    {
      goto LABEL_30;
    }
  }

  else if ((v21 & 1) != 0 || v7 != v19)
  {
    goto LABEL_30;
  }

  if ((v10 ^ v22))
  {
    goto LABEL_30;
  }

  if (!v12)
  {
    if (v23 || ((v13 ^ v25) & 1) != 0)
    {
      goto LABEL_30;
    }

LABEL_35:
    if ((v14 ^ v26) & 1) != 0 || ((v15 ^ v27))
    {
      goto LABEL_30;
    }

    goto LABEL_37;
  }

  if (!v23)
  {
LABEL_30:
    OUTLINED_FUNCTION_11_7();
    return;
  }

  if (v11 == v24 && v12 == v23)
  {
    if (v13 == v25)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v33 = v26;
  v34 = v13;
  v46 = v27;
  v35 = v14;
  v36 = v15;
  v48 = v29;
  v50 = v28;
  v44 = v16;
  if ((sub_21B112D04() & 1) == 0)
  {
    goto LABEL_30;
  }

  if ((v34 ^ v25))
  {
    goto LABEL_30;
  }

  if ((v35 ^ v33))
  {
    goto LABEL_30;
  }

  v16 = v44;
  v29 = v48;
  v28 = v50;
  if ((v36 ^ v46))
  {
    goto LABEL_30;
  }

LABEL_37:
  if (!v17 || !v29)
  {
    goto LABEL_30;
  }

  if (v16 == v28 && v17 == v29)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_11_7();

  sub_21B112D04();
}

uint64_t SODAParams.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47118, &qword_21B1295B8);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  v22 = *(v1 + 24);
  v9 = *(v1 + 32);
  v20 = *(v1 + 33);
  v21 = v9;
  v10 = *(v1 + 40);
  v18 = *(v1 + 48);
  v19 = v10;
  LODWORD(v10) = *(v1 + 56);
  v16 = *(v1 + 57);
  v17 = v10;
  v15 = *(v1 + 58);
  v11 = *(v1 + 72);
  v14[1] = *(v1 + 64);
  v14[2] = v11;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21B0BD140();
  sub_21B112F44();
  v32 = 0;
  v12 = v23;
  sub_21B112AD4();
  if (!v12)
  {
    v31 = 1;
    OUTLINED_FUNCTION_4_18();
    sub_21B112B34();
    v30 = 2;
    OUTLINED_FUNCTION_4_18();
    sub_21B112AE4();
    v29 = 3;
    OUTLINED_FUNCTION_4_18();
    sub_21B112B24();
    v28 = 4;
    OUTLINED_FUNCTION_4_18();
    sub_21B112AD4();
    v27 = 5;
    OUTLINED_FUNCTION_4_18();
    sub_21B112B24();
    v26 = 6;
    OUTLINED_FUNCTION_4_18();
    sub_21B112B24();
    v25 = 7;
    OUTLINED_FUNCTION_4_18();
    sub_21B112B24();
    v24 = 8;
    OUTLINED_FUNCTION_4_18();
    sub_21B112AD4();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t PoirotUserTaskParameters<>.clientName.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = sub_21B1111F4();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  if (v20[1] == 1)
  {
    return 0;
  }

  v8 = v20[0];

  sub_21B0BC734(v20);
  return v8;
}

uint64_t PoirotUserTaskParameters<>.startTime.getter()
{
  v0 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = __src - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  sub_21B1111F4();
  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[1] == 1)
  {
    sub_21B110ED4();
    sub_21B110F44();
    v7 = v6;
    (*(v2 + 8))(v5, v0);
  }

  else
  {
    v7 = __dst[2];
    sub_21B0BC734(__dst);
  }

  return v7;
}

uint64_t PoirotUserTaskParameters<>.endTime.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = sub_21B1111F4();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    return 0;
  }

  v9 = v22;
  sub_21B0BC734(v21);
  return v9;
}

uint64_t PoirotUserTaskParameters<>.ignoreMaximumLookbackTime.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = sub_21B1111F4();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v21[33];
    sub_21B0BC734(v21);
  }

  return v9 & 1;
}

uint64_t PoirotUserTaskParameters<>.mockSessionFilesPath.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = sub_21B1111F4();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    return 0;
  }

  v9 = v22;

  sub_21B0BC734(v21);
  return v9;
}

uint64_t PoirotUserTaskParameters<>.persistTestData.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = sub_21B1111F4();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v21[56];
    sub_21B0BC734(v21);
  }

  return v9 & 1;
}

uint64_t PoirotUserTaskParameters<>.applyWarehouseTTL.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = sub_21B1111F4();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v21[57];
    sub_21B0BC734(v21);
  }

  return v9 & 1;
}

uint64_t PoirotUserTaskParameters<>.dataWarehousePath.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = sub_21B1111F4();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    return 0;
  }

  v9 = v22;

  sub_21B0BC734(v21);
  return v9;
}

uint64_t PoirotUserTaskParameters<>.init(clientName:startTime:endTime:ignoreMaximumLookbackTime:recipeFolderPath:loggingPath:mockSessionFilesPath:persistTestData:applyWarehouseTTL:makeUpload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13)
{
  OUTLINED_FUNCTION_10_9();
  v33 = v13 & 1;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  LOBYTE(v31) = v13 & 1;
  HIBYTE(v31) = v18;
  LOWORD(v32) = a12;
  BYTE2(v32) = a13;
  sub_21B0BDCA0();
  sub_21B0BDCF4();
  v19 = sub_21B0BDD48();
  return OUTLINED_FUNCTION_6_13(v19, v20, v21, v22, v23, &type metadata for SODAParams, v24, v25, v19, v27, v28, v29, v30, v31, a10, a11, v32, 0, 0, v33);
}

uint64_t PoirotUserTaskParameters<>.init(clientName:startTime:endTime:ignoreMaximumLookbackTime:recipeFolderPath:loggingPath:mockSessionFilesPath:persistTestData:applyWarehouseTTL:makeUpload:dataWarehousePath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_10_9();
  v35 = v15 & 1;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  LOBYTE(v33) = v15 & 1;
  HIBYTE(v33) = v20;
  LOWORD(v34) = a12;
  BYTE2(v34) = a13;
  sub_21B0BDCA0();
  sub_21B0BDCF4();
  v21 = sub_21B0BDD48();
  return OUTLINED_FUNCTION_6_13(v21, v22, v23, v24, v25, &type metadata for SODAParams, v26, v27, v21, v29, v30, v31, v32, v33, a10, a11, v34, a14, a15, v35);
}

unint64_t sub_21B0BDCA0()
{
  result = qword_2811FAAD0;
  if (!qword_2811FAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FAAD0);
  }

  return result;
}

unint64_t sub_21B0BDCF4()
{
  result = qword_27CD47120;
  if (!qword_27CD47120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47120);
  }

  return result;
}

unint64_t sub_21B0BDD48()
{
  result = qword_27CD47128;
  if (!qword_27CD47128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47128);
  }

  return result;
}

uint64_t sub_21B0BDDA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_21B0BDDF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SODAParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SODAParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21B0BDFD8()
{
  result = qword_27CD47130;
  if (!qword_27CD47130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47130);
  }

  return result;
}

unint64_t sub_21B0BE030()
{
  result = qword_27CD47138;
  if (!qword_27CD47138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47138);
  }

  return result;
}

unint64_t sub_21B0BE088()
{
  result = qword_27CD47140;
  if (!qword_27CD47140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47140);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_22(uint64_t a1)
{

  return sub_21B112D04();
}

void *OUTLINED_FUNCTION_3_21(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return memcpy(va, &a9, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_6_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return MEMORY[0x28219E498](v10, v9, v8, v11, va, a6, v12, v13);
}

double sub_21B0BE1EC()
{
  sub_21B1112A4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  sub_21B111514();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  sub_21B0BE7C4(v5 - v4);
  if (!v0)
  {
    sub_21B111524();
    sub_21B0BE8A8();
    v1 = v7;
    v8 = OUTLINED_FUNCTION_10_10();
    v9(v8);
    v10 = OUTLINED_FUNCTION_2_23();
    v11(v10);
  }

  return v1;
}

void *sub_21B0BE390(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_21B0D552C(*(a1 + 16), 0);
  sub_21B0BFA34(&v8, (v3 + 4), v1, a1);
  v5 = v4;
  v6 = v8;

  sub_21AF9C4BC(v6);
  if (v5 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v8 = v3;
  sub_21B0BF034(&v8);
  return v8;
}

double sub_21B0BE474()
{
  sub_21B1112A4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v3 = sub_21B111514();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  sub_21B0BE7C4(v8 - v7);
  if (!v0)
  {
    sub_21B111524();
    sub_21B0BE8A8();
    v1 = v11;
    v12 = OUTLINED_FUNCTION_625();
    v13(v12);
    (*(v5 + 8))(v9, v3);
  }

  return v1;
}

double sub_21B0BE628()
{
  sub_21B1112A4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  sub_21B111514();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  sub_21B0BE7C4(v5 - v4);
  if (!v0)
  {
    sub_21B111524();
    sub_21B0BED70();
    v1 = v7;
    v8 = OUTLINED_FUNCTION_625();
    v9(v8);
    v10 = OUTLINED_FUNCTION_2_23();
    v11(v10);
  }

  return v1;
}

uint64_t sub_21B0BE7C4@<X0>(uint64_t a1@<X8>)
{
  sub_21B111534();
  result = sub_21B1114E4();
  if (result)
  {
    sub_21AF94BA0();
    swift_allocError();
    *v3 = 0xD000000000000013;
    *(v3 + 8) = 0x800000021B140710;
    *(v3 + 16) = 2;
    swift_willThrow();
    v4 = sub_21B111514();
    return (*(*(v4 - 8) + 8))(a1, v4);
  }

  return result;
}

uint64_t sub_21B0BE8A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_1_1();
  v3 = v1 - v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v66 - v5;
  v7 = sub_21B111334();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - v15;
  v17 = sub_21B111294();
  sub_21B0DF074(0x73745F7472617473, 0xE800000000000000, v17, v6);

  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_21AF94B38(v6);
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_21B112904();

    OUTLINED_FUNCTION_9_12();
    v70 = v19 | 2;
    v71 = v18;
    v20 = sub_21B111294();
    v21 = sub_21B0BE390(v20);

    v22 = MEMORY[0x21CEE9880](v21, MEMORY[0x277D837D0]);
    v24 = v23;

    MEMORY[0x21CEE9770](v22, v24);

    v25 = v70;
    v26 = v71;
    v27 = sub_21AF94BA0();
    v28 = OUTLINED_FUNCTION_4_0(&type metadata for DatasetError, v27);
    *v29 = v25;
    v29[1] = v26;
    return OUTLINED_FUNCTION_4_19(v28, v29);
  }

  v67 = v9;
  v68 = v16;
  v31 = *(v9 + 32);
  v31();
  v32 = sub_21B111294();
  sub_21B0DF074(0x73745F646E65, 0xE600000000000000, v32, v3);

  if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
  {
    sub_21AF94B38(v3);
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_21B112904();

    OUTLINED_FUNCTION_9_12();
    v70 = v34;
    v71 = v33;
    v35 = sub_21B111294();
    v36 = sub_21B0BE390(v35);

    v37 = MEMORY[0x21CEE9880](v36, MEMORY[0x277D837D0]);
    v39 = v38;

    MEMORY[0x21CEE9770](v37, v39);

    v40 = v70;
    v41 = v71;
    v42 = sub_21AF94BA0();
    v43 = OUTLINED_FUNCTION_4_0(&type metadata for DatasetError, v42);
    *v44 = v40;
    v44[1] = v41;
    OUTLINED_FUNCTION_4_19(v43, v44);
    return (*(v67 + 8))(v68, v7);
  }

  v45 = v67;
  (v31)(v13, v3, v7);
  v46 = v68;
  v47 = sub_21B111314();
  if (!OUTLINED_FUNCTION_12_9(v47, v48, v49, MEMORY[0x277D839F8]))
  {
    goto LABEL_16;
  }

  v50 = v69;
  v51 = sub_21B111314();
  if (!OUTLINED_FUNCTION_12_9(v51, v52, v53, MEMORY[0x277D839F8]))
  {
    v58 = 0x800000021B141180;
    v63 = sub_21AF94BA0();
    v60 = OUTLINED_FUNCTION_4_0(&type metadata for DatasetError, v63);
    v62 = 0xD000000000000030;
    goto LABEL_18;
  }

  v54 = *(v45 + 8);
  v45 += 8;
  v55 = OUTLINED_FUNCTION_10_10();
  v54(v55);
  result = (v54)(v46, v7);
  v56 = v69;
  if (v50 >= 0.0)
  {
    v57 = v50;
  }

  else
  {
    v57 = 0.0;
  }

  if (v69 < 0.0)
  {
    v56 = 0.0;
  }

  if (v56 < v57)
  {
    v56 = v57;
  }

  if (v57 > v56)
  {
    __break(1u);
LABEL_16:
    v58 = 0x800000021B141140;
    v59 = sub_21AF94BA0();
    v60 = OUTLINED_FUNCTION_4_0(&type metadata for DatasetError, v59);
    v62 = 0xD000000000000032;
LABEL_18:
    *v61 = v62;
    v61[1] = v58;
    OUTLINED_FUNCTION_4_19(v60, v61);
    v64 = *(v45 + 8);
    v65 = OUTLINED_FUNCTION_10_10();
    v64(v65);
    return (v64)(v46, v7);
  }

  return result;
}

uint64_t sub_21B0BED70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v25 - v1;
  v3 = sub_21B111334();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = sub_21B111294();
  sub_21B0DF074(0xD000000000000013, 0x800000021B140FC0, v10, v2);

  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_21AF94B38(v2);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_21B112904();

    v26 = 0xD000000000000020;
    v27 = 0x800000021B1411C0;
    v11 = sub_21B111294();
    v12 = sub_21B0BE390(v11);

    v13 = MEMORY[0x21CEE9880](v12, MEMORY[0x277D837D0]);
    v15 = v14;

    MEMORY[0x21CEE9770](v13, v15);

    v16 = v26;
    v17 = v27;
    v18 = sub_21AF94BA0();
    v19 = OUTLINED_FUNCTION_4_0(&type metadata for DatasetError, v18);
    *v20 = v16;
    v20[1] = v17;
    return OUTLINED_FUNCTION_4_19(v19, v20);
  }

  else
  {
    (*(v5 + 32))(v9, v2, v3);
    sub_21B111314();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v22 = sub_21AF94BA0();
      v23 = OUTLINED_FUNCTION_4_0(&type metadata for DatasetError, v22);
      *v24 = 0xD000000000000034;
      v24[1] = 0x800000021B1411F0;
      OUTLINED_FUNCTION_4_19(v23, v24);
    }

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_21B0BF034(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21B0D62EC(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_21B0BF0A0(v9);
  *a1 = v2;
  return result;
}

uint64_t sub_21B0BF0A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21B112B74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_21B112614();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21B0BF25C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21B0BF194(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21B0BF194(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_21B112D04();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21B0BF25C(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_21B112D04();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_21B112D04()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_21B112D04() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21B0D4B14(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_21B0D4B14(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
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
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_21B0BF890((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_21B0BF764(&v92, *result, a3);
LABEL_102:
}

uint64_t sub_21B0BF764(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21B0D61A8(v5, v7, v8, v9);
    v5 = result;
  }

  v17 = v4;
  *v4 = v5;
  v10 = (v5 + 16);
  for (i = *(v5 + 16); ; *v10 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v17 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v12 = (v5 + 16 * i);
    v13 = *v12;
    v14 = &v10[2 * i];
    v15 = v14[1];
    sub_21B0BF890((*a3 + 16 * *v12), (*a3 + 16 * *v14), (*a3 + 16 * v15), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v15 < v13)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v10)
    {
      goto LABEL_12;
    }

    *v12 = v13;
    v12[1] = v15;
    v16 = *v10 - i;
    if (*v10 < i)
    {
      goto LABEL_13;
    }

    i = *v10 - 1;
    result = memmove(v14, v14 + 2, 16 * v16);
  }

  *v17 = v5;
  __break(1u);
  return result;
}

uint64_t sub_21B0BF890(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_21AFCC250(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_21B112D04() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_21AFCC250(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_21B112D04() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

void sub_21B0BFA34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  OUTLINED_FUNCTION_6_14();
  v12 = v11 & v10;
  if (!v8)
  {
    v15 = 0;
LABEL_17:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v15;
    a1[4] = v12;
    return;
  }

  v13 = v9;
  if (!v9)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v14 = v8;
    OUTLINED_FUNCTION_5_20();
    v18 = (v17 - v7) >> 6;
    while (v16 < v13)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_21;
      }

      if (!v12)
      {
        while (1)
        {
          v20 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            v12 = 0;
            goto LABEL_17;
          }

          v12 = *(v6 + 8 * v20);
          ++v15;
          if (v12)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v20 = v15;
LABEL_12:
      v21 = (*(a4 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v12)))));
      v22 = v21[1];
      v12 &= v12 - 1;
      *v14 = *v21;
      v14[1] = v22;
      if (v19 == v13)
      {

        v15 = v20;
        goto LABEL_17;
      }

      v14 += 2;

      v16 = v19;
      v15 = v20;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_21B0BFB80(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_1_1();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v32 = a4;
  v15 = a4 + 64;
  OUTLINED_FUNCTION_6_14();
  v19 = v18 & v17;
  if (!a2)
  {
    v20 = 0;
LABEL_18:
    *a1 = v32;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v20;
    a1[4] = v19;
    return;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = v16;
    v30 = a1;
    OUTLINED_FUNCTION_5_20();
    v24 = (v22 - v23) >> 6;
    while (1)
    {
      if (v21 >= a3)
      {
        goto LABEL_21;
      }

      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_22;
      }

      if (!v19)
      {
        while (1)
        {
          v26 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v26 >= v24)
          {
            v19 = 0;
            goto LABEL_16;
          }

          v19 = *(v15 + 8 * v26);
          ++v20;
          if (v19)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v26 = v20;
LABEL_12:
      OUTLINED_FUNCTION_8_16();
      v28 = *(v31 + 72);
      sub_21B0BFFD8(*(v32 + 56) + v28 * (v27 | (v26 << 6)), v11);
      sub_21B0C003C(v11, v14);
      sub_21B0C003C(v14, a2);
      if (v25 == a3)
      {
        break;
      }

      a2 += v28;
      v21 = v25;
      v20 = v26;
    }

    v20 = v26;
LABEL_16:
    v16 = v29;
    a1 = v30;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_21B0BFD70(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  sub_21B111CB4();
  OUTLINED_FUNCTION_1();
  v43 = v8;
  v44 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_1();
  v42 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v41 = &v34 - v13;
  v40 = -1 << *(a4 + 32);
  OUTLINED_FUNCTION_6_14();
  v17 = v16 & v15;
  if (!a2)
  {
    v19 = 0;
LABEL_19:
    v33 = ~v40;
    *a1 = a4;
    a1[1] = v14;
    a1[2] = v33;
    a1[3] = v19;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = a1;
    v36 = v14;
    OUTLINED_FUNCTION_5_20();
    v22 = (v21 - v40) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    v39 = v18;
    while (v20 < v18)
    {
      if (__OFADD__(v20, 1))
      {
        goto LABEL_23;
      }

      if (!v17)
      {
        v14 = v36;
        while (1)
        {
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v23 >= v22)
          {
            v17 = 0;
            a1 = v35;
            goto LABEL_19;
          }

          v17 = *(v36 + 8 * v23);
          ++v19;
          if (v17)
          {
            v45 = v20 + 1;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

      v45 = v20 + 1;
      v23 = v19;
LABEL_14:
      OUTLINED_FUNCTION_8_16();
      v25 = a4;
      v26 = *(a4 + 48);
      v28 = v43;
      v27 = v44;
      v29 = *(v44 + 72);
      v30 = v42;
      (*(v44 + 16))(v42, v26 + v29 * (v24 | (v23 << 6)), v43);
      v31 = *(v27 + 32);
      v32 = v41;
      v31(v41, v30, v28);
      v31(a2, v32, v28);
      v18 = v39;
      v20 = v45;
      if (v45 == v39)
      {
        v19 = v23;
        a1 = v35;
        v14 = v36;
        a4 = v25;
        goto LABEL_19;
      }

      a2 += v29;
      v19 = v23;
      a4 = v25;
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21B0BFFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0C003C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_19(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_12_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

unint64_t sub_21B0C0144(char a1)
{
  result = 0x746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x6D5F656369766564;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x6D726F6674616C70;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 1684366707;
      break;
    case 6:
      result = 0x6C616E7265746E69;
      break;
    case 7:
      result = 0x765F657069636572;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21B0C023C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B112A34();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21B0C02AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21B0C023C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_21B0C02DC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21B0C0144(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21B0C0318(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43798, &qword_21B117AD0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  *(v4 + 16) = 0;
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a1, ObjectType, &protocol descriptor for SODAHostEnvironment))
  {
    v13 = v12;
    v14 = swift_getObjectType();
    *(v4 + 24) = (*(*(v13 + 8) + 8))();
    *(v4 + 32) = v15;
    *(v4 + 40) = a4;
    v16 = (*(v13 + 24))(v14, v13);
    v18 = 0x2D6E776F6E6B6E75;
    if (v17)
    {
      v18 = v16;
    }

    v19 = 0xEE00746E65696C63;
    if (v17)
    {
      v19 = v17;
    }

    *(v4 + 48) = v18;
    *(v4 + 56) = v19;
    v20 = static ConfigPlistLoader.loadConfig(fileManager:userDefaults:)(a3, 0);
    type metadata accessor for FederatedIdentifierProvider(0);
    swift_allocObject();
    swift_unknownObjectRetain();
    v21 = a3;
    sub_21AFCD67C(v21, &type metadata for OSVariant, &off_282C96990, v20);
    sub_21AFCD74C(v10);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_21B0C1C94(v10, v4 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics14ConstantsBlock_federatedIdentifier, &qword_27CD43798, &qword_21B117AD0);
  }

  else
  {
    sub_21B0C1C40();
    swift_allocError();
    *v22 = 0xD00000000000002BLL;
    *(v22 + 8) = 0x800000021B1412D0;
    *(v22 + 16) = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    type metadata accessor for ConstantsBlock(0);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t sub_21B0C0594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21B1112A4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  sub_21B0C06D0();
  if (!v4)
  {
    sub_21B111274();
    sub_21B1114D4();
    swift_getObjectType();
    sub_21B111434();
    (*(v7 + 8))(v11, v5);
    *(v3 + 16) = 1;
  }

  return 1;
}

uint64_t sub_21B0C06D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v3 = &v33 - v2;
  v4 = sub_21B111334();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v43 = (v9 - v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C0, &qword_21B129840);
  OUTLINED_FUNCTION_1();
  v39 = v11;
  v40 = v10;
  v12 = MEMORY[0x28223BE20](v10);
  v42 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v38 = (&v33 - v15);
  MEMORY[0x28223BE20](v14);
  v37 = &v33 - v16;
  v17 = 0;
  v41 = (v6 + 32);
  v35 = 0x800000021B12FFD0;
  v36 = 0x800000021B12FFF0;
  v44 = MEMORY[0x277D84F90];
LABEL_2:
  v18 = ~v17;
  for (i = &unk_282C921D8 + v17 + 32; ; ++i)
  {
    if (v18 == -9)
    {
      return sub_21B0C0B5C(v44);
    }

    v20 = *i;
    sub_21B0C0C10(*i, v3);
    if (v0)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      v21 = *v41;
      (*v41)(v43, v3, v4);
      v34 = -v18;
      v22 = 0xE600000000000000;
      v23 = 0x746E65696C63;
      switch(v20)
      {
        case 1:
          v23 = 0x6D5F656369766564;
          v22 = 0xEC0000006C65646FLL;
          break;
        case 2:
          v23 = 0xD000000000000014;
          v22 = v35;
          break;
        case 3:
          v22 = 0xE800000000000000;
          v23 = 0x6D726F6674616C70;
          break;
        case 4:
          v23 = 0xD000000000000011;
          v22 = v36;
          break;
        case 5:
          v22 = 0xE400000000000000;
          v23 = 1684366707;
          break;
        case 6:
          v22 = 0xE800000000000000;
          v23 = 0x6C616E7265746E69;
          break;
        case 7:
          v23 = 0x765F657069636572;
          v22 = 0xEE006E6F69737265;
          break;
        default:
          break;
      }

      v24 = *(v40 + 48);
      v25 = v38;
      *v38 = v23;
      *(v25 + 8) = v22;
      v21(v25 + v24, v43, v4);
      v26 = v37;
      sub_21B0C1C94(v25, v37, &qword_27CD436C0, &qword_21B129840);
      sub_21B0C1C94(v26, v42, &qword_27CD436C0, &qword_21B129840);
      v27 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21B0D519C();
        v27 = v30;
      }

      v28 = *(v27 + 16);
      if (v28 >= *(v27 + 24) >> 1)
      {
        sub_21B0D519C();
        v27 = v31;
      }

      *(v27 + 16) = v28 + 1;
      v29 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v44 = v27;
      sub_21B0C1C94(v42, v27 + v29 + *(v39 + 72) * v28, &qword_27CD436C0, &qword_21B129840);
      v17 = v34;
      goto LABEL_2;
    }

    sub_21AF99BE0(v3, &qword_27CD42C48, &qword_21B1141C0);
    --v18;
  }
}

uint64_t sub_21B0C0B5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47160, &qword_21B129848);
    v1 = sub_21B112A14();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_21B0C1744(v2, 1, &v4);

  return v4;
}

uint64_t sub_21B0C0C10@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v11 = sub_21B111A64();
      v17 = MEMORY[0x277D837D0];
      v15 = v11;
      v16 = v12;
      goto LABEL_15;
    case 2:
      v7 = sub_21B0C0DD0();
      if (v8)
      {
        v17 = MEMORY[0x277D837D0];
        v15 = v7;
        v16 = v8;
        sub_21B111554();
        result = __swift_destroy_boxed_opaque_existential_0(&v15);
        if (!v3)
        {
LABEL_16:
          v13 = sub_21B111334();
          return __swift_storeEnumTagSinglePayload(a2, 0, 1, v13);
        }
      }

      else
      {
        v14 = sub_21B111334();
        return __swift_storeEnumTagSinglePayload(a2, 1, 1, v14);
      }

      return result;
    case 3:
      v17 = MEMORY[0x277D837D0];
      v15 = 5459817;
      v16 = 0xE300000000000000;
      goto LABEL_15;
    case 4:
      v6 = v2[3];
      v5 = v2[4];
      goto LABEL_4;
    case 5:
      v17 = MEMORY[0x277D839B0];
      LOBYTE(v15) = 0;
      goto LABEL_15;
    case 6:
      if (qword_27CD42A18 != -1)
      {
        swift_once();
      }

      v17 = MEMORY[0x277D839B0];
      LOBYTE(v15) = byte_27CD6E890;
      goto LABEL_15;
    case 7:
      v10 = v2[5];
      v17 = MEMORY[0x277D83E88];
      v15 = v10;
      goto LABEL_15;
    default:
      v6 = v2[6];
      v5 = v2[7];
LABEL_4:
      v17 = MEMORY[0x277D837D0];
      v15 = v6;
      v16 = v5;

LABEL_15:
      result = sub_21B111344();
      if (!v3)
      {
        goto LABEL_16;
      }

      return result;
  }
}

uint64_t sub_21B0C0DD0()
{
  v1 = sub_21B110FB4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43798, &qword_21B117AD0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21B0C1BF0(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics14ConstantsBlock_federatedIdentifier, &v14 - v9, &qword_27CD43798, &qword_21B117AD0);
  v11 = sub_21B111BF4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_21AF99BE0(v10, &qword_27CD43798, &qword_21B117AD0);
    return 0;
  }

  else
  {
    sub_21B111BC4();
    (*(*(v11 - 8) + 8))(v10, v11);
    v12 = sub_21B110F94();
    (*(v3 + 8))(v7, v1);
  }

  return v12;
}

uint64_t sub_21B0C0F8C()
{

  sub_21AF99BE0(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics14ConstantsBlock_federatedIdentifier, &qword_27CD43798, &qword_21B117AD0);
  return v0;
}

uint64_t sub_21B0C0FD4()
{
  sub_21B0C0F8C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ConstantsBlock(uint64_t a1)
{
  result = qword_27CD47148;
  if (!qword_27CD47148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B0C1080(uint64_t a1)
{
  sub_21B0C1134(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21B0C1134(uint64_t a1)
{
  if (!qword_27CD47158)
  {
    sub_21B111BF4();
    v1 = sub_21B112774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD47158);
    }
  }
}

void sub_21B0C11B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47170, &unk_21B12B960);
  v37 = v4;
  v6 = sub_21B112A04();
  if (!*(v5 + 16))
  {
LABEL_28:

LABEL_29:
    *v3 = v6;
    return;
  }

  v36 = v5;
  v7 = 0;
  v8 = (v5 + 64);
  OUTLINED_FUNCTION_1_20();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v13)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_9;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_29;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      sub_21B0CFEC4(0, (v35 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v18 = v15 | (v7 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v37 & 1) == 0)
    {

      v23 = v22;
    }

    sub_21B112EC4();
    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
    sub_21B112F14();
    OUTLINED_FUNCTION_4_20();
    if (((v26 << v25) & ~v14[v24]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_8_17();
LABEL_20:
    OUTLINED_FUNCTION_5_21();
    *(v14 + v31) |= v32;
    v34 = (v6[6] + 16 * v33);
    *v34 = v20;
    v34[1] = v21;
    *(v6[7] + 8 * v33) = v22;
    ++v6[2];
    v5 = v36;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_13();
  while (++v27 != v29 || (v28 & 1) == 0)
  {
    v30 = v27 == v29;
    if (v27 == v29)
    {
      v27 = 0;
    }

    v28 |= v30;
    if (v14[v27] != -1)
    {
      OUTLINED_FUNCTION_6_15();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_21B0C1428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v54 = a3(0);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v12);
  v53 = &v46 - v13;
  v14 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = v9;
  v15 = sub_21B112A04();
  if (!*(v14 + 16))
  {
LABEL_29:

LABEL_30:
    *v8 = v15;
    return;
  }

  v16 = 0;
  v17 = (v14 + 64);
  OUTLINED_FUNCTION_1_20();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v47 = v5;
  v48 = (v11 + 16);
  v49 = v14;
  v50 = v11;
  v52 = (v11 + 32);
  v23 = v15 + 8;
  if ((v19 & v18) == 0)
  {
LABEL_4:
    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v16 >= v22)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_9;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v47;
      goto LABEL_30;
    }

    v45 = 1 << *(v14 + 32);
    v8 = v47;
    if (v45 >= 64)
    {
      sub_21B0CFEC4(0, (v45 + 63) >> 6, v17);
    }

    else
    {
      *v17 = -1 << v45;
    }

    *(v14 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
LABEL_9:
    v27 = v24 | (v16 << 6);
    v28 = *(v14 + 56);
    v29 = (*(v14 + 48) + 16 * v27);
    v31 = *v29;
    v30 = v29[1];
    v32 = *(v50 + 72);
    v33 = v28 + v32 * v27;
    if (v51)
    {
      (*v52)(v53, v33, v54);
    }

    else
    {
      (*v48)(v53, v33, v54);
    }

    sub_21B112EC4();
    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
    sub_21B112F14();
    OUTLINED_FUNCTION_4_20();
    if (((v36 << v35) & ~v23[v34]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_8_17();
LABEL_21:
    OUTLINED_FUNCTION_5_21();
    *(v23 + v41) |= v42;
    v44 = (v15[6] + 16 * v43);
    *v44 = v31;
    v44[1] = v30;
    (*v52)((v15[7] + v32 * v43), v53, v54);
    ++v15[2];
    v14 = v49;
    if (!v20)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_13();
  while (++v37 != v39 || (v38 & 1) == 0)
  {
    v40 = v37 == v39;
    if (v37 == v39)
    {
      v37 = 0;
    }

    v38 |= v40;
    if (v23[v37] != -1)
    {
      OUTLINED_FUNCTION_6_15();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_21B0C1744(uint64_t a1, char a2, void *a3)
{
  v48 = a3;
  v6 = sub_21B111334();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C0, &qword_21B129840);
  v10 = MEMORY[0x28223BE20](v9);
  v45 = (v38 - v12);
  v44 = *(a1 + 16);
  if (!v44)
  {
LABEL_13:

    return;
  }

  v38[1] = v3;
  v39 = a1;
  v13 = 0;
  v43 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v14 = *(v10 + 48);
  v41 = v7;
  v42 = v14;
  v46 = (v7 + 32);
  v40 = v6;
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_21B112E54();
      __break(1u);
      goto LABEL_22;
    }

    v15 = v11;
    v16 = v45;
    sub_21B0C1BF0(v43 + *(v11 + 72) * v13, v45, &qword_27CD436C0, &qword_21B129840);
    v18 = v16[1];
    v51 = *v16;
    v17 = v51;
    v52 = v18;
    v19 = *v46;
    (*v46)(v47, v16 + v42, v6);
    v20 = *v48;
    v22 = sub_21AF98B58(v17, v18);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD477B0, &qword_21B114230);
      sub_21B1129A4();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = v47;
    v30 = *v48;
    *(*v48 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v31 = (v30[6] + 16 * v22);
    *v31 = v17;
    v31[1] = v18;
    v32 = v30[7] + *(v41 + 72) * v22;
    v6 = v40;
    v19(v32, v29, v40);
    v33 = v30[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_20;
    }

    ++v13;
    v30[2] = v35;
    a2 = 1;
    a1 = v39;
    v11 = v15;
    if (v44 == v13)
    {
      goto LABEL_13;
    }
  }

  sub_21B0C1428(v25, a2 & 1, MEMORY[0x277D3E038], &qword_27CD47160, &qword_21B129848);
  v27 = sub_21AF98B58(v17, v18);
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v36 = swift_allocError();
  swift_willThrow();
  v53 = v36;
  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v41 + 8))(v47, v40);

    return;
  }

LABEL_22:
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_21B112904();
  MEMORY[0x21CEE9770](0xD00000000000001BLL, 0x800000021B1412B0);
  sub_21B112954();
  MEMORY[0x21CEE9770](39, 0xE100000000000000);
  sub_21B1129C4("Fatal error", 11, 2, v49, v50, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

uint64_t sub_21B0C1BF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10_11(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 16))(v4, v5);
  return v4;
}

unint64_t sub_21B0C1C40()
{
  result = qword_27CD47178;
  if (!qword_27CD47178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47178);
  }

  return result;
}

uint64_t sub_21B0C1C94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10_11(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_21B0C1CF0(uint64_t a1, unsigned int a2)
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

uint64_t sub_21B0C1D30(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ConstantsBlock.Constant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConstantsBlock.Constant(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21B0C1EEC()
{
  result = qword_27CD47180;
  if (!qword_27CD47180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47188, qword_21B129910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47180);
  }

  return result;
}

unint64_t sub_21B0C1F54()
{
  result = qword_27CD47190;
  if (!qword_27CD47190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47190);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void *sub_21B0C204C(void *a1)
{
  v113 = a1;
  v1 = sub_21B111CB4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v146 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  v145 = v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  v136 = &v105 - v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  v135 = &v105 - v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24();
  v140 = v16;
  v112 = sub_21B111DA4();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_1();
  v111 = v20;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_24();
  v110 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47270, &qword_21B12A140);
  MEMORY[0x28223BE20](v23 - 8);
  OUTLINED_FUNCTION_9_1();
  v134 = v24;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  v142 = &v105 - v26;
  OUTLINED_FUNCTION_12();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v105 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v105 - v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_24();
  v141 = v34;
  v126 = sub_21B111AE4();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_1();
  v125 = v38;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_24();
  v127 = v40;
  v41 = sub_21B111AB4();
  sub_21B0C2C38(&qword_27CD46FD0, MEMORY[0x277D39DE0], MEMORY[0x277D39DE8]);
  v42 = sub_21B112334();
  v122 = *(v41 + 16);
  if (v122)
  {
    v43 = 0;
    v45 = *(v36 + 16);
    v44 = v36 + 16;
    v118 = v45;
    v46 = (*(v44 + 64) + 32) & ~*(v44 + 64);
    v105 = v41;
    v117 = v41 + v46;
    v116 = v44 + 72;
    v123 = v44 - 8;
    v109 = v18 + 104;
    v119 = v44;
    v115 = *(v44 + 56);
    v108 = v18 + 16;
    v114 = *MEMORY[0x277D39D98];
    v107 = v18 + 8;
    v143 = v3 + 16;
    v144 = (v8 + 32);
    v106 = *MEMORY[0x277D39E10];
    v130 = v8 + 16;
    v129 = v8 + 8;
    v128 = v8 + 40;
    v131 = (v3 + 8);
    v133 = v1;
    v137 = v8;
    v121 = v30;
    v120 = v33;
    v47 = v141;
    v48 = v126;
    v132 = v3;
    while (1)
    {
      v124 = v43;
      v49 = v127;
      v50 = v118;
      v118(v127, v117 + v115 * v43, v48);
      v50(v125, v49, v48);
      v51 = v125;
      OUTLINED_FUNCTION_5_4();
      v53 = v52(v51, v48);
      if (v53 == v114)
      {
        OUTLINED_FUNCTION_5_4();
        v54 = v110;
        v55 = v112;
        v56(v110, v106, v112);
        OUTLINED_FUNCTION_5_4();
        v57 = v111;
        v58(v111, v54, v55);
        v148 = 0;
        memset(v147, 0, sizeof(v147));
        v59 = objc_opt_self();
        v60 = v113;
        v61 = v113;
        v62 = [v59 defaultManager];
        type metadata accessor for RegisteredRecipeEnvironment(0);
        swift_allocObject();
        v50 = sub_21B0C7920(v57, 0, 0, v147, v60, v62);
        sub_21B0C7B98();
        v64 = v63;

        if (v64)
        {
          OUTLINED_FUNCTION_5_4();
          v65(v54, v55);
          v66 = OUTLINED_FUNCTION_6_16();
        }

        else
        {
          v50 = v120;
          sub_21B110F34();
          OUTLINED_FUNCTION_5_4();
          v72(v54, v55);
          v66 = v50;
          v67 = 0;
        }

        __swift_storeEnumTagSinglePayload(v66, v67, 1, v6);
        v8 = v137;
        v71 = v121;
        v47 = v141;
      }

      else
      {
        v68 = OUTLINED_FUNCTION_6_16();
        __swift_storeEnumTagSinglePayload(v68, v69, 1, v6);
        OUTLINED_FUNCTION_5_4();
        v70(v51, v48);
        v71 = v121;
      }

      sub_21B0C2BC8(v50, v47);
      sub_21AFD1CB0(v47, v71);
      if (__swift_getEnumTagSinglePayload(v71, 1, v6) != 1)
      {
        break;
      }

      sub_21AFD1D20(v47);
      OUTLINED_FUNCTION_5_4();
      v73 = OUTLINED_FUNCTION_5_22();
      v74(v73);
      sub_21AFD1D20(v71);
LABEL_36:
      v43 = v124 + 1;
      v48 = v126;
      if (v124 + 1 == v122)
      {
        goto LABEL_37;
      }
    }

    v75 = *v144;
    (*v144)(v140, v71, v6);
    v76 = sub_21B111AC4();
    v47 = v141;
    v77 = 0;
    v138 = *(v76 + 16);
    v139 = v76;
    while (1)
    {
      if (v138 == v77)
      {

        sub_21AFD1D20(v47);
        OUTLINED_FUNCTION_5_4();
        v101 = OUTLINED_FUNCTION_5_22();
        v102(v101);
        OUTLINED_FUNCTION_5_4();
        v103(v140, v6);
        goto LABEL_36;
      }

      v78 = *(v3 + 72);
      v79 = v139 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + v78 * v77;
      v80 = *(v3 + 16);
      v80(v146, v79, v1);
      if (v42[2])
      {
        v81 = sub_21B0B5D3C();
        if (v82)
        {
          (*(v8 + 16))(v142, v42[7] + *(v8 + 72) * v81, v6);
          v83 = 0;
        }

        else
        {
          v83 = 1;
        }

        v84 = v134;
      }

      else
      {
        v83 = 1;
        v84 = v134;
      }

      v85 = v142;
      __swift_storeEnumTagSinglePayload(v142, v83, 1, v6);
      sub_21B0C2BC8(v85, v84);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v84, 1, v6);
      v87 = v136;
      v88 = v140;
      if (EnumTagSinglePayload == 1)
      {
        sub_21B110EF4();
        sub_21AFD1D20(v84);
      }

      else
      {
        v75(v136, v84, v6);
      }

      sub_21B0C2C38(&qword_27CD47198, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      if (sub_21B1123A4())
      {
        OUTLINED_FUNCTION_5_4();
        v89(v87, v6);
        OUTLINED_FUNCTION_5_4();
        v90 = v135;
        v91(v135, v88, v6);
      }

      else
      {
        v90 = v135;
        v75(v135, v87, v6);
      }

      v75(v145, v90, v6);
      swift_isUniquelyReferenced_nonNull_native();
      *&v147[0] = v42;
      v92 = sub_21B0B5D3C();
      if (__OFADD__(v42[2], (v93 & 1) == 0))
      {
        break;
      }

      v94 = v92;
      v95 = v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471A0, &qword_21B129A30);
      if (sub_21B112994())
      {
        v96 = sub_21B0B5D3C();
        v8 = v137;
        if ((v95 & 1) != (v97 & 1))
        {
          goto LABEL_40;
        }

        v94 = v96;
      }

      else
      {
        v8 = v137;
      }

      v47 = v141;
      v42 = *&v147[0];
      if (v95)
      {
        (*(v8 + 40))(*(*&v147[0] + 56) + *(v8 + 72) * v94, v145, v6);
        v1 = v133;
      }

      else
      {
        *(*&v147[0] + 8 * (v94 >> 6) + 64) |= 1 << v94;
        v1 = v133;
        v80((v42[6] + v94 * v78), v146, v133);
        v75(v42[7] + *(v8 + 72) * v94, v145, v6);
        v98 = v42[2];
        v99 = __OFADD__(v98, 1);
        v100 = v98 + 1;
        if (v99)
        {
          goto LABEL_39;
        }

        v42[2] = v100;
      }

      (*v131)(v146, v1);
      ++v77;
      v3 = v132;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = sub_21B112E54();
    __break(1u);
  }

  else
  {
LABEL_37:

    return v42;
  }

  return result;
}

uint64_t sub_21B0C2BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47270, &qword_21B12A140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0C2C38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21B0C2CA8()
{
  v1 = v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator____lazy_storage___firstTimestamp;
  if (*(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator____lazy_storage___firstTimestamp + 8))
  {
    v2 = *(*(v0 + 16) + 16);
    if ((v2 * 1200) >> 64 == (1200 * v2) >> 63)
    {
      *v1 = *(v0 + 24) - (1200 * v2);
      *(v1 + 8) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_21B0C2CFC()
{
  sub_21B0C2CA8();
  if ((*(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndex) * 1200) >> 64 != (1200 * *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndex)) >> 63)
  {
    __break(1u);
  }
}

uint64_t sub_21B0C2D40(uint64_t a1, double a2)
{
  v5 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_currentElement;
  v6 = sub_21B111164();
  result = __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndex) = 0;
  v8 = v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator____lazy_storage___firstTimestamp;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_reversed) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v9 = *(a1 + 16);
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = (v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndexRange);
    *v10 = 0;
    v10[1] = v9;
    return v2;
  }

  return result;
}

void sub_21B0C2DF0(char a1, double a2, double a3)
{
  sub_21B0C2CA8();
  v8 = (a2 - v7) / 1200.0;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(v3 + 24) < a3)
  {
    v9 = *(*(v3 + 16) + 16);
    goto LABEL_12;
  }

  v10 = (a3 - *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator____lazy_storage___firstTimestamp)) / 1200.0;
  if (COERCE_UNSIGNED_INT64(fabs(v10)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    if (*(*(v3 + 16) + 16) < v9)
    {
      v9 = *(*(v3 + 16) + 16);
    }

LABEL_12:
    v11 = v8 & ~(v8 >> 63);
    if (v9 >= v11)
    {
      v12 = (v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndexRange);
      *v12 = v11;
      v12[1] = v9;
      *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_reversed) = a1 & 1;
      return;
    }

    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
}

void sub_21B0C2F28()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471C8, &unk_21B12AEF0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  if (sub_21B0C3138())
  {
    sub_21B0C2CFC();
    Double.fromUnixToReferenceTime.getter(v9);
    sub_21AFA92B4(*(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndex));
    if (v1)
    {
      return;
    }

    sub_21B111144();
    v10 = sub_21B111164();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
    v11 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_currentElement;
    OUTLINED_FUNCTION_0_20();
    v12 = v2 + v11;
    v13 = v8;
  }

  else
  {
    v14 = sub_21B111164();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v14);
    v15 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_currentElement;
    OUTLINED_FUNCTION_0_20();
    v12 = v2 + v15;
    v13 = v6;
  }

  sub_21B0C3570(v13, v12);
  swift_endAccess();
}

void sub_21B0C3094()
{
  v1 = (v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndexRange);
  if (*(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_reversed) == 1)
  {
    v2 = v1[1];
    v3 = __OFSUB__(v2, 1);
    v1 = (v2 - 1);
    if (!v3)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v1 = *v1;
LABEL_6:
  *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndex) = v1;
  sub_21B0C2F28();
}

void sub_21B0C30EC()
{
  if (*(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_reversed))
  {
    v1 = -1;
  }

  else
  {
    v1 = 1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndex);
  v3 = __OFADD__(v2, v1);
  v4 = v2 + v1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndex) = v4;
    sub_21B0C2F28();
  }
}

uint64_t sub_21B0C3138()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471C8, &unk_21B12AEF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndex);
  v5 = v4 >= *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndexRange) && v4 < *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndexRange + 8);
  v6 = v5;
  if (!v5)
  {
    v7 = sub_21B111164();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
    v8 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_currentElement;
    swift_beginAccess();
    sub_21B0C3570(v3, v0 + v8);
    swift_endAccess();
  }

  return v6;
}

uint64_t sub_21B0C322C()
{

  sub_21B0C35E0(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_currentElement);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SessionFilesEnumerator(uint64_t a1)
{
  result = qword_27CD471B0;
  if (!qword_27CD471B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B0C32EC(uint64_t a1)
{
  sub_21B0C33B8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21B0C33B8(uint64_t a1)
{
  if (!qword_27CD471C0)
  {
    sub_21B111164();
    v1 = sub_21B112774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD471C0);
    }
  }
}

uint64_t sub_21B0C3410@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_currentElement;
  swift_beginAccess();
  return sub_21B0C3500(v3 + v4, a1);
}

uint64_t sub_21B0C3500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471C8, &unk_21B12AEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0C3570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471C8, &unk_21B12AEF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0C35E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471C8, &unk_21B12AEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_20()
{

  return swift_beginAccess();
}

uint64_t sub_21B0C3668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a1;
  v31 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = sub_21B111DE4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21B111DA4();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a3, v12);
  if ((*(v14 + 88))(v17, v12) == *MEMORY[0x277D39E38])
  {

    v24 = v30;
    sub_21B111D84();
    if (__swift_getEnumTagSinglePayload(v11, 1, v18) == 1)
    {
      sub_21AF94004(v11);
      v32 = sub_21B111DB4();
      v33 = v25;
      MEMORY[0x21CEE9770](46, 0xE100000000000000);
      MEMORY[0x21CEE9770](v24, a2);

      sub_21B111D84();
      (*(v14 + 8))(a3, v12);
      if (__swift_getEnumTagSinglePayload(v9, 1, v18) == 1)
      {
        sub_21AF94004(v9);
        v26 = 1;
        v27 = v31;
        return __swift_storeEnumTagSinglePayload(v27, v26, 1, v18);
      }

      v11 = v9;
    }

    else
    {
      (*(v14 + 8))(a3, v12);
    }

    v28 = *(v20 + 32);
    v28(v23, v11, v18);
    v27 = v31;
    v28(v31, v23, v18);
    v26 = 0;
    return __swift_storeEnumTagSinglePayload(v27, v26, 1, v18);
  }

  result = sub_21B1129C4("Fatal error", 11, 2, 0, 0xE000000000000000, "SearchOnDeviceAnalytics/KnownEnvironmentCreating.swift", 54, 2, 81);
  __break(1u);
  return result;
}

uint64_t SODAUserHostEnvironment.__allocating_init(recipeName:recipeLocation:recipeDataSources:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  SODAUserHostEnvironment.init(recipeName:recipeLocation:recipeDataSources:)(a1, a2, a3, a4);
  return v8;
}

uint64_t SODAUserHostEnvironment.recipeName.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_3(v2 + 16, a2);
  v3 = *(v2 + 16);

  return v3;
}

uint64_t SODAUserHostEnvironment.recipeName.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_4(v2 + 16, a2);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_21B0C3B8C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = OUTLINED_FUNCTION_14_4(v2 + 32, a2);
  *(v2 + 32) = a1;
  *(v2 + 40) = v3 & 1;
  return result;
}

uint64_t sub_21B0C3C40(double a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_14_4(v3 + 48, a3);
  *(v3 + 48) = a1;
  return result;
}

uint64_t SODAUserHostEnvironment.ignoreMaximumLookbackTime.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_4(v2 + 56, a2);
  *(v2 + 56) = a1;
  return result;
}

uint64_t SODAUserHostEnvironment.init(recipeName:recipeLocation:recipeDataSources:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_21B110F84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  *(v5 + 56) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  sub_21B110F74();
  sub_21B110F44();
  v15 = v14;
  (*(v11 + 8))(v13, v10);
  *(v5 + 48) = v15;
  v16 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23SODAUserHostEnvironment_recipeLocation;
  sub_21B110D94();
  OUTLINED_FUNCTION_4_1();
  (*(v17 + 32))(v5 + v16, a3);
  *(v5 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23SODAUserHostEnvironment_recipeDataSources) = a4;
  return v5;
}

uint64_t sub_21B0C3F08@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23SODAUserHostEnvironment_recipeLocation;
  sub_21B110D94();
  OUTLINED_FUNCTION_4_1();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_21B0C3F74@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D3DF70];
  sub_21B1112C4();
  OUTLINED_FUNCTION_4_1();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t SODAUserHostEnvironment.deinit()
{

  v1 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23SODAUserHostEnvironment_recipeLocation;
  sub_21B110D94();
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t SODAUserHostEnvironment.__deallocating_deinit()
{
  SODAUserHostEnvironment.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t (*sub_21B0C412C(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 152))();
  return sub_21B0C41A8;
}

void sub_21B0C41A8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t type metadata accessor for SODAUserHostEnvironment(uint64_t a1)
{
  result = qword_27CD471D0;
  if (!qword_27CD471D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0C42F4(uint64_t a1)
{
  result = sub_21B110D94();
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

uint64_t OUTLINED_FUNCTION_4_21(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_21B0C45F8(void *a1, void *a2, char a3)
{
  v3 = 5;
  switch(a3)
  {
    case 1:
    case 2:
    case 3:
      v9 = a1;
      sub_21B0C66D8(a1, a2, a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43840, &unk_21B128610);
      if (swift_dynamicCast())
      {
        sub_21AF81D68(v7, v10);
        v4 = v11;
        v5 = v12;
        __swift_project_boxed_opaque_existential_0(v10, v11);
        v3 = (*(v5 + 16))(v4, v5);
        __swift_destroy_boxed_opaque_existential_0(v10);
      }

      else
      {
        v8 = 0;
        memset(v7, 0, sizeof(v7));
        sub_21AFD4408(v7);
        v3 = 6;
      }

      break;
    case 4:
      return v3;
    case 5:
      v3 = 24;
      break;
    case 6:
      v3 = 23;
      break;
    case 8:
      v3 = 0x90D0D09u >> (8 * a1);
      break;
    default:
      v3 = 9;
      break;
  }

  return v3;
}

void *sub_21B0C4748(uint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  v1[3] = sub_21B112334();
  v1[4] = v3;
  v1[2] = a1;
  return v1;
}

uint64_t sub_21B0C47A0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DataWarehouseControllerV2();
  sub_21B0C65A0(&qword_27CD471E8, v2, type metadata accessor for DataWarehouseControllerV2, &unk_21B129C9C);

  v3 = sub_21B1115B4();

  return v3;
}

uint64_t sub_21B0C486C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + 24);
  sub_21B0ECD0C();
  *(v4 + 24) = v6;
  return swift_endAccess();
}

uint64_t sub_21B0C491C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_21B0C63DC(sub_21B0D4B3C);
  v5 = *(*(v2 + 32) + 16);
  sub_21B0C6468(v5, sub_21B0D4B3C);
  v6 = *(v2 + 32);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v2 + 32) = v6;
  return swift_endAccess();
}

uint64_t sub_21B0C49E4()
{

  return v0;
}

uint64_t sub_21B0C4A14()
{
  v0 = sub_21B0C49E4();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_21B0C4A68(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_21B0C4B08()
{
  sub_21B112904();

  v0 = sub_21B112B84();
  MEMORY[0x21CEE9770](v0);

  return 0xD000000000000016;
}

void *sub_21B0C4B9C(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v44 = sub_21B111BA4();
  OUTLINED_FUNCTION_1();
  v46 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v42 = v6 - v5;
  v7 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  v1[2] = 6;
  if (qword_27CD42460 != -1)
  {
    swift_once();
  }

  v45 = v1;
  v1[5] = qword_27CD6E6D8;
  v14 = objc_opt_self();

  v15 = [v14 defaultManager];
  sub_21B111B34();
  sub_21B110D44();
  v16 = *(v9 + 8);
  v16(v13, v7);
  v17 = sub_21B1123D4();

  v18 = [v15 fileExistsAtPath_];

  if ((v18 & 1) == 0)
  {
    v41 = a1;
    sub_21B111B34();
    v19 = sub_21B110CE4();
    v16(v13, v7);
    v48[0] = 0;
    v20 = [v15 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:v48];

    if (!v20)
    {
      v30 = v48[0];
      v24 = sub_21B110C84();

      swift_willThrow();
      a1 = v41;
      goto LABEL_10;
    }

    v21 = v48[0];
    a1 = v41;
  }

  sub_21B111B54();
  sub_21B111714();
  swift_allocObject();
  v22 = v43;
  v23 = sub_21B111724();
  v24 = v22;
  if (!v22)
  {
    v25 = v45;
    v26 = v46;
    v45[4] = v23;
    v27 = v42;
    v28 = v44;
    (*(v26 + 16))(v42, a1, v44);
    type metadata accessor for MetricStore(0);
    swift_allocObject();

    sub_21AF9591C(v29, v27);
    v25[3] = v38;
    v48[0] = v25;
    type metadata accessor for DataWarehouseControllerV2();
    sub_21B0C65A0(&qword_27CD471E8, v39, type metadata accessor for DataWarehouseControllerV2, &unk_21B129C9C);

    sub_21B1115A4();

    (*(v46 + 8))(a1, v28);
    return v25;
  }

LABEL_10:
  v31 = v44;
  v25 = v45;
  v32 = v46;
  v47 = v24;
  v33 = v24;
  v34 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
  if (swift_dynamicCast())
  {
    (*(v32 + 8))(a1, v31);

    sub_21B0C6560(v48[0], v48[1], v49);
  }

  else
  {

    v35 = sub_21AF99C38();
    OUTLINED_FUNCTION_4_0(&type metadata for WarehouseIncident, v35);
    *v36 = v24;
    v36[1] = 0;
    OUTLINED_FUNCTION_5_23(v36, 1);
    (*(v32 + 8))(a1, v31);
  }

  type metadata accessor for DataWarehouseControllerV2();
  swift_deallocPartialClassInstance();
  return v25;
}

void sub_21B0C5178(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
    if (swift_dynamicCast())
    {
      sub_21B0C6560(v6, v7, v8);
    }

    else
    {
      v4 = sub_21AF99C38();
      OUTLINED_FUNCTION_4_0(&type metadata for WarehouseIncident, v4);
      *v5 = v2;
      v5[1] = 0;
      OUTLINED_FUNCTION_5_23(v5, 1);
    }
  }
}

uint64_t sub_21B0C522C(uint64_t a1, uint64_t a2)
{
  if (qword_27CD429E8 != -1)
  {
    swift_once();
  }

  v5 = qword_27CD6E7B8 == a1 && unk_27CD6E7C0 == a2;
  if (v5 || (sub_21B112D04() & 1) != 0)
  {
    if (qword_27CD429F8 != -1)
    {
      swift_once();
    }

    v6 = &qword_27CD6E7D8;
  }

  else
  {
    if (qword_27CD42440 != -1)
    {
      swift_once();
    }

    v8 = qword_2811FAB08 == a1 && qword_2811FAB10 == a2;
    if (!v8 && (sub_21B112D04() & 1) == 0)
    {
      v9 = sub_21AF99C38();
      OUTLINED_FUNCTION_4_0(&type metadata for WarehouseIncident, v9);
      *v10 = a1;
      v10[1] = a2;
      OUTLINED_FUNCTION_5_23(v10, 6);

      return v2;
    }

    if (qword_27CD42450 != -1)
    {
      swift_once();
    }

    v6 = &qword_27CD6E6B8;
  }

  v2 = *v6;

  return v2;
}

void sub_21B0C53D0(uint64_t a1)
{
  v4 = sub_21B1117B4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  type metadata accessor for Inspector();
  swift_allocObject();

  v12 = sub_21B0C4748(v11);
  v35[3] = v12;
  sub_21B0C65A0(&qword_27CD471E0, 255, type metadata accessor for Inspector, &unk_21B129CFC);
  sub_21B111674();
  if (v2)
  {
    goto LABEL_2;
  }

  swift_beginAccess();
  v13 = *(v12[4] + 16);
  if (v13)
  {
    if (v13 == *(*(v1 + 40) + 16))
    {
LABEL_2:

      return;
    }

    if (qword_2811FAAD8 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_2811FAAD8);
    }

    v21 = sub_21B1122D4();
    __swift_project_value_buffer(v21, qword_2811FAB28);

    v22 = sub_21B1122B4();
    v23 = sub_21B112714();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35[0] = v34;
      *v24 = 136315138;

      v26 = MEMORY[0x21CEE9880](v25, MEMORY[0x277D837D0]);
      v33 = v23;
      v28 = v27;

      v29 = sub_21AFCEC24(v26, v28, v35);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_21AF80000, v22, v33, "Critical tables are missing: %s. Cleaning warehouse.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_4_4();
    }

    sub_21B0C5D80(a1, v12);
  }

  else
  {
    swift_beginAccess();
    if (*(v12[3] + 16))
    {
      if (qword_2811FAAD8 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_2811FAAD8);
      }

      v14 = sub_21B1122D4();
      __swift_project_value_buffer(v14, qword_2811FAB28);

      v15 = sub_21B1122B4();
      v16 = sub_21B112714();

      if (os_log_type_enabled(v15, v16))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v36 = v32;
        *v31 = 136315138;

        v30 = v16;
        v17 = sub_21B112314();
        v19 = v18;

        v20 = sub_21AFCEC24(v17, v19, &v36);

        *(v31 + 4) = v20;
        _os_log_impl(&dword_21AF80000, v15, v30, "The following schemas changed: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_4_4();
      }
    }

    sub_21B1116F4();
    sub_21B1117A4();
    (*(v6 + 8))(v10, v4);
  }
}

uint64_t sub_21B0C5904()
{
  v1 = sub_21B1117B4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  sub_21B0C4B08();
  sub_21B1116F4();
  if (v0)
  {
  }

  sub_21B111794();
  return (*(v3 + 8))(v7, v1);
}

uint64_t sub_21B0C5A14()
{
  v1 = sub_21B1117B4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  result = sub_21B1116F4();
  if (!v0)
  {
    sub_21B1117A4();
    return (*(v3 + 8))(v7, v1);
  }

  return result;
}

unint64_t sub_21B0C5B30(uint64_t a1, unint64_t a2)
{
  result = sub_21B0C4A68(a2);
  if (((1 << result) & 0x79) == 0)
  {
    if (((1 << result) & 6) != 0)
    {
      return sub_21B0C5A14();
    }

    else
    {
      v3 = sub_21AF99C38();
      v4 = OUTLINED_FUNCTION_4_0(&type metadata for WarehouseIncident, v3);
      return OUTLINED_FUNCTION_4_22(v4, v5);
    }
  }

  return result;
}

uint64_t sub_21B0C5BAC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = sub_21B1117B4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  v14 = sub_21B0C4A68(a2);
  if (v14 >= 6)
  {
    if (v14 != 6)
    {
      v16 = sub_21AF99C38();
      v17 = OUTLINED_FUNCTION_4_0(&type metadata for WarehouseIncident, v16);
      return OUTLINED_FUNCTION_4_22(v17, v18);
    }
  }

  else
  {
    result = sub_21B1116F4();
    if (v2)
    {
      return result;
    }

    sub_21B111794();
    v3 = 0;
    (*(v7 + 8))(v13, v5);
  }

  sub_21B0C4B08();
  sub_21B1116F4();
  if (v3)
  {
  }

  sub_21B111794();
  return (*(v7 + 8))(v11, v5);
}

void sub_21B0C5D80(uint64_t a1, uint64_t a2)
{
  sub_21B1116C4();
  if (v2)
  {
    sub_21B112904();

    swift_beginAccess();

    v4 = MEMORY[0x21CEE9880](v3, MEMORY[0x277D837D0]);
    v6 = v5;

    MEMORY[0x21CEE9770](v4, v6);

    v7 = sub_21AF99C38();
    OUTLINED_FUNCTION_4_0(&type metadata for WarehouseIncident, v7);
    *v8 = 0xD000000000000014;
    v8[1] = 0x800000021B141570;
    OUTLINED_FUNCTION_5_23(v8, 5);
  }
}

uint64_t sub_21B0C5EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v22 = sub_21B1117B4();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v23 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B111664();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 40);
  v32 = *(v13 + 16);
  if (v32)
  {
    v28 = v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    result = swift_beginAccess();
    v14 = 0;
    v26 = v9;
    v27 = v9 + 16;
    v21 = (v6 + 8);
    v29 = (v9 + 8);
    v25 = v13;
    while (v14 < *(v13 + 16))
    {
      (*(v9 + 16))(v12, v28 + *(v9 + 72) * v14, v8);
      v15 = a2;
      v16 = *(a2 + 32);

      v30 = sub_21B111654();
      v31 = v17;
      MEMORY[0x28223BE20](v30);
      *(&v21 - 2) = &v30;
      v18 = sub_21B0C64B0(sub_21AF99780, (&v21 - 4), v16);

      if (!v18)
      {
        v30 = 0x42415420504F5244;
        v31 = 0xEB0000000020454CLL;
        v19 = sub_21B111654();
        MEMORY[0x21CEE9770](v19);

        v20 = v23;
        sub_21B1116F4();
        if (v3)
        {
          (*v29)(v12, v8);
        }

        sub_21B111794();
        (*v21)(v20, v22);
      }

      ++v14;
      result = (*v29)(v12, v8);
      a2 = v15;
      v13 = v25;
      v9 = v26;
      if (v32 == v14)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B0C6248()
{

  return v0;
}

uint64_t sub_21B0C6278()
{
  sub_21B0C6248();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21B0C63DC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_21B0C6468(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

BOOL sub_21B0C64B0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_21B0C6560(void *a1, id a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 4:
    case 5:
    case 6:
    case 7:

      break;
    case 1:
    case 2:
    case 3:

      break;
    default:
      return;
  }
}

uint64_t sub_21B0C65A0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t get_enum_tag_for_layout_string_23SearchOnDeviceAnalytics17WarehouseIncidentO(uint64_t a1)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 16) & 0xF;
  }
}

uint64_t sub_21B0C6604(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 17))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 8)
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

uint64_t sub_21B0C6644(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

uint64_t sub_21B0C6688(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_21B0C66B0(uint64_t a1)
{
  result = sub_21AF99C38();
  *(a1 + 8) = result;
  return result;
}

id sub_21B0C66D8(id result, id a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 4:
    case 5:
    case 6:
    case 7:

      break;
    case 1:
    case 2:
    case 3:
      result = result;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_22(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 8;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_5_23@<X0>(uint64_t a2@<X1>, char a3@<W8>)
{
  *(a2 + 16) = a3;

  return swift_willThrow();
}

uint64_t sub_21B0C67B8(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a2 + 8) + 32))(a1);
  if (v2)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    result = dynamic_cast_existential_1_conditional(v3, ObjectType, &protocol descriptor for SODAActivityMonitoring);
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_0_21();
  result = sub_21B1129C4(v6, v7, v8, v9, v10, v11, 49, 2, 68);
  __break(1u);
  return result;
}

double sub_21B0C6850(void *a1)
{
  type metadata accessor for SODAPoirotV1ToV2DataMigrator();
  sub_21B0E4184(a1);
  sub_21B0E4CA8();

  return result;
}

uint64_t sub_21B0C68B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = sub_21B111DE4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471F0, &unk_21B129F00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_21B111CB4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 24))(a1, a2);
  if (!v20)
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v5);
    goto LABEL_6;
  }

  sub_21B111DD4();
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
LABEL_6:
    sub_21B0C6B8C(v13);
    return (*(v16 + 104))(v29, *MEMORY[0x277D39DD8], v14);
  }

  (*(v7 + 16))(v10, v13, v5);
  if ((*(v7 + 88))(v10, v5) == *MEMORY[0x277D39E38])
  {
    (*(v16 + 104))(v19, *MEMORY[0x277D39DD8], v14);
    (*(v7 + 8))(v13, v5);
    return (*(v16 + 32))(v29, v19, v14);
  }

  else
  {
    OUTLINED_FUNCTION_0_21();
    result = sub_21B1129C4(v22, v23, v24, v25, v26, v27, 48, 2, 38);
    __break(1u);
  }

  return result;
}

uint64_t sub_21B0C6B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471F0, &unk_21B129F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

const char *SODAFeatureFlags.feature.getter()
{
  if (*v0)
  {
    return "spotlight_data_warehouse_v1_end_of_life";
  }

  else
  {
    return "search_analytics_worker";
  }
}

unint64_t sub_21B0C6C54()
{
  result = qword_2811FA890;
  if (!qword_2811FA890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FA890);
  }

  return result;
}

uint64_t sub_21B0C6CB0(char a1)
{
  v4[3] = &type metadata for SODAFeatureFlags;
  v4[4] = sub_21B0C6C54();
  LOBYTE(v4[0]) = a1;
  v2 = sub_21B1111D4();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

uint64_t SODAFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_21B112EC4();
  MEMORY[0x21CEEA150](v1);
  return sub_21B112F14();
}

unint64_t sub_21B0C6DA4()
{
  result = qword_27CD471F8;
  if (!qword_27CD471F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD471F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SODAFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21B0C6F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47268, &qword_21B12A138);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_21AF99A84(a3, v24 - v10, &qword_27CD47268, &qword_21B12A138);
  v12 = sub_21B112654();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v11, &qword_27CD47268, &qword_21B12A138);
  }

  else
  {
    sub_21B112644();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21B112634();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21B112484() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_21AF99BE0(a3, &qword_27CD47268, &qword_21B12A138);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21AF99BE0(a3, &qword_27CD47268, &qword_21B12A138);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}