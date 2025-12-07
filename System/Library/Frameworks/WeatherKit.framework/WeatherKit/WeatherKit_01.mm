uint64_t sub_23B3A61A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D68, &qword_23B515158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_255(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  sub_23B3AFEEC(v12, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_255_0()
{
}

unint64_t sub_23B3A624C()
{
  result = qword_280B431D8;
  if (!qword_280B431D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431D8);
  }

  return result;
}

BOOL OUTLINED_FUNCTION_15_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_7(void *a1)
{
  *v1 = a1;
  *a1 = v2;

  return sub_23B50AB34();
}

uint64_t OUTLINED_FUNCTION_15_15()
{

  return sub_23B3CE510(v2 - 128, v2 - 208, v1, v0);
}

uint64_t OUTLINED_FUNCTION_15_17()
{

  return type metadata accessor for WeatherChange(0);
}

uint64_t OUTLINED_FUNCTION_15_18@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_15_21(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_44_2()
{

  return sub_23B50AAF4();
}

uint64_t OUTLINED_FUNCTION_44_5@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 112) = a1;
  *(v4 - 104) = v1;
  *(v4 - 96) = v2;
  *(v4 - 88) = v3;
  return 255;
}

uint64_t OUTLINED_FUNCTION_44_6()
{

  return sub_23B396CA4();
}

void OUTLINED_FUNCTION_44_7(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *(v2 - 112) = v4;
  *(v2 - 104) = v3;
}

unint64_t sub_23B3A6574()
{
  result = qword_280B431F0;
  if (!qword_280B431F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431F0);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_30_1(uint64_t a1, unint64_t a2)
{

  return sub_23B391F1C(a1, a2, (v2 - 72));
}

uint64_t OUTLINED_FUNCTION_30_5()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_30_8(uint64_t a1)
{

  return sub_23B50D974();
}

void OUTLINED_FUNCTION_30_9(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v1;
}

__n128 OUTLINED_FUNCTION_30_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(v10 + *(v11 + 24)) = v12;
  result = a10;
  *(v10 + *(v11 + 28)) = a10;
  return result;
}

unint64_t sub_23B3A672C()
{
  result = qword_280B431F8;
  if (!qword_280B431F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_155_0()
{

  return swift_dynamicCast();
}

unint64_t sub_23B3A67D4()
{
  result = qword_280B431E8;
  if (!qword_280B431E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_156_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for WeatherQuery(0, v4, a3, a4);
}

uint64_t sub_23B3A68D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334B8, &qword_23B517A88);
  v1 = OUTLINED_FUNCTION_3(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C0, &qword_23B517A90);
  v4 = OUTLINED_FUNCTION_3(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_0();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C8, &unk_23B51DB60);
  v12 = OUTLINED_FUNCTION_3(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_12_13();
  MEMORY[0x28223BE20](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D0, &qword_23B517A98);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D8, &unk_23B51DB70);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  OUTLINED_FUNCTION_6_11();
  v21 = sub_23B50CF44();
  sub_23B50AD14();
  v22 = *MEMORY[0x277D6C920];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E0, &qword_23B517AA0);
  OUTLINED_FUNCTION_6();
  v25 = *(v24 + 104);
  v25(v10, v22, v23);
  OUTLINED_FUNCTION_73();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v23);
  sub_23B50AD14();
  v25(v7, v22, v23);
  OUTLINED_FUNCTION_73();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E8, &qword_23B51DB80);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  sub_23B50CF44();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334F0, &qword_23B517AA8);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334F8, &qword_23B517AB0);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  sub_23B50CF44();
  return v21;
}

uint64_t OUTLINED_FUNCTION_131_1(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = result;
  v6[3] = a2;
  return result;
}

uint64_t sub_23B3A6C5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B3A68D8();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_45_8(uint64_t a1)
{

  return sub_23B50D134();
}

void OUTLINED_FUNCTION_13_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_13_11(uint64_t a1, uint64_t a2)
{

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_13_14(uint64_t a1)
{
  *(v1 + *(a1 + 32)) = 0;

  return sub_23B50AD24();
}

void OUTLINED_FUNCTION_13_15(uint64_t a1@<X8>)
{
  *(v4 - 120) = a1;
  *(v4 - 112) = v1;
  *(v4 - 104) = v2;
  *(v4 - 96) = v3;
}

uint64_t OUTLINED_FUNCTION_13_19(uint64_t a1, uint64_t a2)
{

  return sub_23B50D764();
}

void OUTLINED_FUNCTION_13_20()
{
  v3 = v0 + *(v1 + 36);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = v2;
  v4 = v0 + *(v1 + 40);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = v2;
}

uint64_t OUTLINED_FUNCTION_13_22()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_13_26()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 2, v1);
}

uint64_t OUTLINED_FUNCTION_48_0(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_74_2()
{
  v4[22] = v0;
  v4[23] = v1;
  v4[24] = v2;
  v4[25] = v3;
  return 0;
}

unint64_t OUTLINED_FUNCTION_49_0(uint64_t a1, unint64_t a2)
{

  return sub_23B391F1C(a1, a2, (v2 - 72));
}

uint64_t OUTLINED_FUNCTION_49_4()
{
  v2 = *(v0 - 376);

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t OUTLINED_FUNCTION_49_5()
{

  return MEMORY[0x2822009F8]();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_23B3A7084(uint64_t a1, uint64_t a2)
{
  sub_23B50D8C4();
  sub_23B50D1C4();
  v4 = sub_23B50D914();

  return sub_23B3AE2A4(a1, a2, v4);
}

uint64_t sub_23B3A7108(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v34 = a1;
  v35 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D70, &qword_23B515160);
  MEMORY[0x28223BE20](v7);
  v9 = (v33 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v33 - v11;
  v13 = sub_23B50AD24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50AD14();
  sub_23B50ABD4();
  v18 = v17;
  (*(v14 + 8))(v16, v13);
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v19 = sub_23B50CDF4();
  __swift_project_value_buffer(v19, qword_280B4E9D8);
  v20 = a4;
  v21 = sub_23B50CDD4();
  v22 = sub_23B50D4C4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v33[1] = v5;
    v24 = v23;
    v25 = swift_slowAlloc();
    v36 = v20;
    v37 = v25;
    *v24 = 141558531;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2081;
    sub_23B3A3BC8();
    v26 = v20;
    v27 = sub_23B50D1A4();
    v29 = sub_23B391F1C(v27, v28, &v37);

    *(v24 + 14) = v29;
    *(v24 + 22) = 2050;
    *(v24 + 24) = v18;
    _os_log_impl(&dword_23B38D000, v21, v22, "Got response for fetch of AQI scale; location=%{private,mask.hash}s, duration=%{public}f", v24, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x23EE9E260](v25, -1, -1);
    MEMORY[0x23EE9E260](v24, -1, -1);
  }

  v30 = sub_23B50C3C4();
  (*(*(v30 - 8) + 16))(v12, v34, v30);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v30);
  v31 = *(v7 + 48);
  *v9 = v35;
  sub_23B3AEA68(v12, v9 + v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D78, &qword_23B515168);
  swift_allocObject();

  return sub_23B50B094();
}

uint64_t OUTLINED_FUNCTION_48_5()
{

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_48_7()
{

  return type metadata accessor for DayPartForecast(0);
}

uint64_t sub_23B3A754C(char **a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v119 = a3;
  v11 = 8 * a8;
  v100 = a6;
  v99 = a7;
  v108 = a2;
  v106 = a4;
  v107 = a1;
  if (a8 == 1)
  {
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    for (i = 0; a8 != i; ++i)
    {
      *(&(&v94)[i] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)) = *((a9 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v14 = sub_23B50D954();
  MEMORY[0x28223BE20](v14);
  v118 = &v94;
  v98 = v15;
  v97 = v18;
  v96 = &v94 - v19;
  v103 = a9;
  if (a8 == 1)
  {
    v20 = type metadata accessor for WeatherQuery(0, *(a9 & 0xFFFFFFFFFFFFFFFELL), v16, v17);
  }

  else
  {
    MEMORY[0x28223BE20](v15);
    for (j = 0; a8 != j; ++j)
    {
      *(&(&v94)[j] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for WeatherQuery(255, *((a9 & 0xFFFFFFFFFFFFFFFELL) + 8 * j), v21, v22);
    }

    v20 = swift_getTupleTypeMetadata();
  }

  v117 = &v94;
  v120 = v20;
  v101 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v123 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = &v94;
  v104 = TupleTypeMetadata;
  v95 = *(TupleTypeMetadata - 8);
  MEMORY[0x28223BE20](v25);
  v94 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = &v94;
  MEMORY[0x28223BE20](v27);
  v102 = &v94 - v28;
  v29 = type metadata accessor for WeatherProductsContainer(0);
  v114 = &v94;
  MEMORY[0x28223BE20](v29 - 8);
  v121 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D70, &qword_23B515160);
  v113 = &v94;
  v105 = v31;
  MEMORY[0x28223BE20](v31);
  v33 = (&v94 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  v112 = &v94;
  MEMORY[0x28223BE20](v34 - 8);
  v122 = &v94 - v35;
  v36 = sub_23B50AD24();
  v111 = &v94;
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v94 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = &v94;
  MEMORY[0x28223BE20](v40);
  v41 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a8)
  {
    v42 = (v120 + 32);
    v43 = (&v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v44 = a8;
    do
    {
      if (a8 == 1)
      {
        v45 = 0;
      }

      else
      {
        v45 = *v42;
      }

      *v43++ = a5 + v45;
      v42 += 4;
      --v44;
    }

    while (v44);
  }

  sub_23B50AD14();
  sub_23B50ABD4();
  v47 = v46;
  (*(v37 + 8))(v39, v36);
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v48 = sub_23B50CDF4();
  v49 = __swift_project_value_buffer(v48, qword_280B4E9D8);
  v50 = v106;
  v119 = v49;
  v51 = sub_23B50CDD4();
  v52 = sub_23B50D4C4();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = v11;
    v55 = swift_slowAlloc();
    *v53 = 141558531;
    *(v53 + 4) = 1752392040;
    *(v53 + 12) = 2113;
    *(v53 + 14) = v50;
    *v55 = v50;
    *(v53 + 22) = 2050;
    *(v53 + 24) = v47;
    v56 = v50;
    _os_log_impl(&dword_23B38D000, v51, v52, "Got response for fetch of weather data + corresponding AQI scale; location=%{private,mask.hash}@, duration=%{public}f", v53, 0x20u);
    sub_23B398890(v55, &qword_27E132D80, &qword_23B5192E0);
    v57 = v55;
    v11 = v54;
    MEMORY[0x23EE9E260](v57, -1, -1);
    MEMORY[0x23EE9E260](v53, -1, -1);
  }

  sub_23B3A23E0();
  v58 = *v33;
  v59 = v122;
  sub_23B3AF918();
  v60 = v121;
  v61 = v109;
  sub_23B3A8A0C(v58, v50, v59, v121);
  if (v61)
  {
    sub_23B398890(v59, &qword_27E131EA8, &qword_23B5194F0);
  }

  else
  {
    v108 = v50;

    v107 = &v94;
    MEMORY[0x28223BE20](v63);
    v65 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v109 = 0;
    if (a8)
    {
      v66 = 0;
      v67 = (v104 + 32);
      v68 = v102;
      do
      {
        if (a8 == 1)
        {
          v69 = 0;
        }

        else
        {
          v69 = *v67;
        }

        *&v65[8 * v66++] = &v68[v69];
        v67 += 4;
      }

      while (a8 != v66);
      MEMORY[0x28223BE20](v64);
      v72 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v73 = 0;
      v74 = v103 & 0xFFFFFFFFFFFFFFFELL;
      v75 = (v120 + 32);
      do
      {
        if (a8 == 1)
        {
          v76 = 0;
        }

        else
        {
          v76 = *v75;
        }

        v77 = &v123[v76];
        v78 = *&v41[8 * v73];
        v79 = type metadata accessor for WeatherQuery(0, *(v74 + 8 * v73), v70, v71);
        (*(*(v79 - 8) + 16))(v77, v78, v79);
        *&v72[8 * v73++] = v77;
        v75 += 4;
      }

      while (a8 != v73);
      v60 = v121;
      v59 = v122;
    }

    else
    {
      v72 = &v124;
    }

    v80 = v108;
    type metadata accessor for WeatherService(0);
    v81 = v109;
    sub_23B3CE19C(v72, v60, a8, v103, v65);
    v82 = v104;
    if (v81)
    {
      sub_23B3A24BC(v60, type metadata accessor for WeatherProductsContainer);
      sub_23B398890(v59, &qword_27E131EA8, &qword_23B5194F0);
      return (*(v101 + 8))(v123, v120);
    }

    else
    {
      (*(v101 + 8))(v123, v120);
      v83 = v80;
      v84 = sub_23B50CDD4();
      v85 = sub_23B50D4C4();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *v86 = 141558275;
        *(v86 + 4) = 1752392040;
        *(v86 + 12) = 2113;
        *(v86 + 14) = v83;
        *v87 = v83;
        v88 = v83;
        _os_log_impl(&dword_23B38D000, v84, v85, "Successfully created product tuple; location=%{private,mask.hash}@", v86, 0x16u);
        sub_23B398890(v87, &qword_27E132D80, &qword_23B5192E0);
        MEMORY[0x23EE9E260](v87, -1, -1);
        MEMORY[0x23EE9E260](v86, -1, -1);
      }

      v89 = v95;
      v90 = v94;
      v91 = v102;
      (*(v95 + 16))(v94, v102, v82);
      v92 = v96;
      sub_23B3CE3F4(v90, v82, v96);
      v93 = *(v89 + 8);
      v93(v90, v82);
      v100(v92);
      (*(v97 + 8))(v92, v98);
      sub_23B3A24BC(v60, type metadata accessor for WeatherProductsContainer);
      sub_23B398890(v122, &qword_27E131EA8, &qword_23B5194F0);
      return (v93)(v91, v82);
    }
  }
}

uint64_t type metadata accessor for WeatherProductsContainer(uint64_t a1)
{
  result = qword_280B44B60;
  if (!qword_280B44B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B3A81C0(uint64_t a1)
{
  sub_23B3A85F8(319, qword_280B44EC0, type metadata accessor for CurrentWeather);
  if (v1 <= 0x3F)
  {
    sub_23B3A85F8(319, qword_280B44DD8, type metadata accessor for InstantWeather);
    if (v2 <= 0x3F)
    {
      sub_23B398060(319, &qword_280B43428, &qword_27E131F78);
      if (v3 <= 0x3F)
      {
        sub_23B398060(319, &qword_280B43628, &qword_27E131CA0);
        if (v4 <= 0x3F)
        {
          sub_23B398060(319, &qword_280B43630, &qword_27E131CA8);
          if (v5 <= 0x3F)
          {
            sub_23B3A85F8(319, qword_280B43D48, type metadata accessor for PeriodicForecasts);
            if (v6 <= 0x3F)
            {
              sub_23B398060(319, &qword_280B43638, &qword_27E131CB0);
              if (v7 <= 0x3F)
              {
                sub_23B3A85F8(319, qword_280B44448, type metadata accessor for AirQuality);
                if (v8 <= 0x3F)
                {
                  sub_23B3A85F8(319, qword_280B44640, type metadata accessor for WeatherChanges);
                  if (v9 <= 0x3F)
                  {
                    sub_23B398060(319, &qword_280B43420, &qword_27E131EB8);
                    if (v10 <= 0x3F)
                    {
                      sub_23B3976E0(319, &qword_280B44CB8, &type metadata for WeatherAvailability);
                      if (v11 <= 0x3F)
                      {
                        sub_23B3976E0(319, &qword_280B44CC0, &type metadata for WeatherAvailability.AvailabilityKind);
                        if (v12 <= 0x3F)
                        {
                          sub_23B398060(319, qword_280B43640, &qword_27E131EC0);
                          if (v13 <= 0x3F)
                          {
                            sub_23B3976E0(319, &qword_280B43888, &type metadata for News);
                            if (v14 <= 0x3F)
                            {
                              sub_23B3A85F8(319, qword_280B44300, type metadata accessor for TideEvents);
                              if (v15 <= 0x3F)
                              {
                                sub_23B3A85F8(319, qword_280B43A38, type metadata accessor for HistoricalComparisons);
                                if (v16 <= 0x3F)
                                {
                                  sub_23B3976E0(319, qword_280B43E28, &type metadata for HistoricalFacts);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_23B3A85F8(319, qword_280B441B0, type metadata accessor for LocationInfo);
                                    if (v18 <= 0x3F)
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

__n128 *OUTLINED_FUNCTION_184_1(__n128 *result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  return result;
}

void sub_23B3A85A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_77();
    v4 = sub_23B50D504();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23B3A85F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23B50D504();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for InstantWeather(uint64_t a1)
{
  result = qword_280B44E58;
  if (!qword_280B44E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_198_0(uint64_t a1)
{

  return sub_23B50B084();
}

uint64_t OUTLINED_FUNCTION_198_1@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a3;

  return type metadata accessor for WeatherQuery(0, v4, a1, a2);
}

uint64_t sub_23B3A86E4(uint64_t a1)
{
  v1 = sub_23B50AD24();
  if (v2 <= 0x3F)
  {
    sub_23B392468(319, &qword_280B452E0, &qword_280B43388, 0x277CCAE48);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_23B392468(319, &qword_280B45308, &qword_280B433A8, 0x277CCAE40);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_23B392468(319, &qword_280B452F0, &qword_280B43398, 0x277CCAE38);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_23B392468(319, &qword_280B452F8, &qword_280B433A0, 0x277CCAE20);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          v1 = type metadata accessor for Wind(319);
          if (v10 <= 0x3F)
          {
            v1 = type metadata accessor for WeatherMetadata(319);
            if (v11 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for LocationInfo(uint64_t a1)
{
  result = qword_280B441F8;
  if (!qword_280B441F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B3A8938(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B39B084();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *OUTLINED_FUNCTION_116_1()
{
  v4 = *(v1 + 112);

  return memcpy(v2, v4, v0);
}

void *sub_23B3A8A0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v285 = a3;
  v286 = a2;
  v288 = a1;
  v7 = type metadata accessor for WeatherAlert(0);
  v8 = OUTLINED_FUNCTION_28_0(v7);
  v275[0] = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338A8, &qword_23B519358);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_52();
  v14 = OUTLINED_FUNCTION_35(v13);
  v259 = type metadata accessor for PeriodicForecasts(v14);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131ED0, &qword_23B50F200);
  OUTLINED_FUNCTION_3(v17);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v19);
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC0, &qword_23B50F1B8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EE0, &qword_23B50F210);
  OUTLINED_FUNCTION_3(v22);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_52();
  v284 = v24;
  v25 = OUTLINED_FUNCTION_24_0();
  v261 = type metadata accessor for TideEvents(v25);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA0, &qword_23B50F1B0);
  OUTLINED_FUNCTION_3(v28);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_52();
  v31 = OUTLINED_FUNCTION_35(v30);
  v263 = type metadata accessor for LocationInfo(v31);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
  OUTLINED_FUNCTION_3(v34);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_52();
  v37 = OUTLINED_FUNCTION_35(v36);
  v264 = type metadata accessor for HistoricalComparisons(v37);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_3(v40);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_52();
  v283 = v42;
  v43 = OUTLINED_FUNCTION_24_0();
  v268 = type metadata accessor for WeatherChanges(v43);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v46);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_52();
  v49 = OUTLINED_FUNCTION_35(v48);
  v50 = type metadata accessor for AirQuality(v49);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
  OUTLINED_FUNCTION_3(v53);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_52();
  v282 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
  OUTLINED_FUNCTION_3(v59);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_29_8(v61, v248);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v65);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  OUTLINED_FUNCTION_3(v71);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_52();
  v74 = OUTLINED_FUNCTION_35(v73);
  type metadata accessor for CurrentWeather(v74);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v76);
  OUTLINED_FUNCTION_1();
  v290 = v77;
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v77);
  v81 = type metadata accessor for WeatherProductsContainer(0);
  type metadata accessor for InstantWeather(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  *(a4 + v81[6]) = 0;
  v86 = OUTLINED_FUNCTION_11_14(v81[7]);
  v277 = v68;
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v68);
  v89 = OUTLINED_FUNCTION_11_14(v81[8]);
  v276 = v62;
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v62);
  v92 = OUTLINED_FUNCTION_11_14(v81[9]);
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v259);
  v95 = OUTLINED_FUNCTION_11_14(v81[10]);
  v271 = v56;
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v56);
  v98 = OUTLINED_FUNCTION_11_14(v81[11]);
  v267 = v50;
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v50);
  v101 = OUTLINED_FUNCTION_11_14(v81[12]);
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v268);
  OUTLINED_FUNCTION_145_0(v81[13]);
  *(a4 + v104) = 0;
  v255 = v81[14];
  v105 = a4 + v255;
  *(v105 + 2) = 0;
  *v105 = 4;
  v256 = v81[15];
  *(a4 + v256) = 4;
  v257 = v81[16];
  *(a4 + v257) = 4;
  v258 = v81[17];
  *(a4 + v258) = 4;
  v106 = OUTLINED_FUNCTION_11_14(v81[18]);
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v260);
  v254 = v81[19];
  *(a4 + v254) = 0;
  v109 = OUTLINED_FUNCTION_11_14(v81[20]);
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v261);
  v112 = OUTLINED_FUNCTION_11_14(v81[21]);
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v264);
  v251 = v81[22];
  *(a4 + v251) = 0;
  v115 = v81[23];
  v291 = a4;
  v116 = OUTLINED_FUNCTION_11_14(v115);
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v263);
  v119 = 0;
  v289 = 0;
  v287 = *(v288 + 16);
  v278 = OBJC_IVAR____TtC10WeatherKit14WeatherService_shouldShowSimulatedAlert;
  v273 = xmmword_23B50ED30;
  while (1)
  {
    if (v287 == v119)
    {
      v244 = v291;
      v294[0] = *(v291 + v256);
      LOBYTE(v299) = *(v291 + v257);
      v293 = *(v291 + v258);
      result = sub_23B3CDD50(v294, &v299, &v293, v289, v291 + v262, &v297);
      v246 = v297;
      v247 = v244 + v255;
      *(v247 + 2) = BYTE2(v297);
      *v247 = v246;
      return result;
    }

    v120 = sub_23B50B654();
    OUTLINED_FUNCTION_28_0(v120);
    v123 = v4;
    sub_23B3AA378((v288 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v122 + 72) * v119), v286, v285, &v297);
    if (v5)
    {
      return sub_23B3A24BC(v291, type metadata accessor for WeatherProductsContainer);
    }

    v292 = v119;
    OUTLINED_FUNCTION_14_21();
    sub_23B3A23E0();
    if (v296)
    {
      v124 = v279;
      v125 = v290;
      v126 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v124, v126 ^ 1u, 1, v125);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v124, 1, v125);
      v129 = v283;
      v128 = v284;
      v131 = v281;
      v130 = v282;
      v132 = v280;
      if (EnumTagSinglePayload != 1)
      {
        sub_23B3B0A98();
        sub_23B398890(v291, &qword_27E131C98, &unk_23B50ED60);
        sub_23B3B0A98();
        OUTLINED_FUNCTION_73();
        __swift_storeEnumTagSinglePayload(v133, v134, v135, v290);
        v4 = v123;
        v136 = v292;
        goto LABEL_65;
      }
    }

    else
    {
      OUTLINED_FUNCTION_70_2();
      v124 = v279;
      OUTLINED_FUNCTION_1();
      __swift_storeEnumTagSinglePayload(v137, v138, v139, v290);
      v129 = v283;
      v128 = v284;
      v131 = v281;
      v130 = v282;
      v132 = v280;
    }

    sub_23B398890(v124, &qword_27E131C98, &unk_23B50ED60);
    sub_23B3A23E0();
    if (v296)
    {
      v140 = v277;
      v141 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v132, v141 ^ 1u, 1, v140);
      if (__swift_getEnumTagSinglePayload(v132, 1, v140) != 1)
      {
        sub_23B3AF918();
        sub_23B398890(v291 + v269[1], &qword_27E131C90, &unk_23B514EC0);
        OUTLINED_FUNCTION_306();
        OUTLINED_FUNCTION_73();
        v145 = &v301;
LABEL_27:
        __swift_storeEnumTagSinglePayload(v142, v143, v144, *(v145 - 32));
        v4 = v123;
        v136 = v292;
        goto LABEL_65;
      }
    }

    else
    {
      sub_23B398890(v294, &qword_27E133080, &unk_23B519370);
      OUTLINED_FUNCTION_1();
      __swift_storeEnumTagSinglePayload(v146, v147, v148, v277);
    }

    v149 = v132;
    v150 = v272;
    sub_23B398890(v149, &qword_27E131C90, &unk_23B514EC0);
    OUTLINED_FUNCTION_14_21();
    sub_23B3A23E0();
    if (v296)
    {
      v151 = v276;
      v152 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v131, v152 ^ 1u, 1, v151);
      v153 = OUTLINED_FUNCTION_172_0();
      if (__swift_getEnumTagSinglePayload(v153, v154, v151) != 1)
      {
        sub_23B3AF918();
        sub_23B398890(v291 + v265, &qword_27E131C88, &unk_23B50ED50);
        OUTLINED_FUNCTION_306();
        OUTLINED_FUNCTION_73();
        v145 = &v300;
        goto LABEL_27;
      }
    }

    else
    {
      sub_23B398890(v294, &qword_27E133080, &unk_23B519370);
      OUTLINED_FUNCTION_1();
      __swift_storeEnumTagSinglePayload(v155, v156, v157, v276);
    }

    sub_23B398890(v131, &qword_27E131C88, &unk_23B50ED50);
    OUTLINED_FUNCTION_14_21();
    sub_23B3A23E0();
    if (v296)
    {
      v158 = v271;
      swift_dynamicCast();
      v159 = OUTLINED_FUNCTION_219_0();
      __swift_storeEnumTagSinglePayload(v159, v160, v161, v158);
      v162 = OUTLINED_FUNCTION_152();
      if (__swift_getEnumTagSinglePayload(v162, v163, v158) != 1)
      {
        sub_23B3AF918();
        v164 = OUTLINED_FUNCTION_157_0(&v290);
        sub_23B398890(v164, &qword_27E131C80, &qword_23B50ED48);
        OUTLINED_FUNCTION_306();
        OUTLINED_FUNCTION_73();
        v168 = &v298;
        goto LABEL_62;
      }
    }

    else
    {
      OUTLINED_FUNCTION_70_2();
      OUTLINED_FUNCTION_1();
      __swift_storeEnumTagSinglePayload(v169, v170, v171, v271);
    }

    sub_23B398890(v130, &qword_27E131C80, &qword_23B50ED48);
    OUTLINED_FUNCTION_14_21();
    sub_23B3A23E0();
    if (v296)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EB8, &unk_23B519380);
      OUTLINED_FUNCTION_296();
      if (swift_dynamicCast())
      {
        v172 = v299;

        *(v291 + v275[1]) = v172;
        v289 = v172;
        goto LABEL_63;
      }
    }

    else
    {
      OUTLINED_FUNCTION_70_2();
    }

    OUTLINED_FUNCTION_14_21();
    sub_23B3A23E0();
    if (v296)
    {
      v173 = v266;
      v174 = OUTLINED_FUNCTION_155_0();
      OUTLINED_FUNCTION_18_13(v173, v174 ^ 1u);
      OUTLINED_FUNCTION_4_20(v173);
      if (!v175)
      {
        sub_23B3B0A98();
        v176 = OUTLINED_FUNCTION_157_0(&v288);
        sub_23B398890(v176, &qword_27E131C78, &qword_23B50ED40);
        OUTLINED_FUNCTION_206_0();
        OUTLINED_FUNCTION_73();
        v145 = v295;
        goto LABEL_27;
      }
    }

    else
    {
      OUTLINED_FUNCTION_70_2();
      v173 = v266;
      OUTLINED_FUNCTION_1();
      __swift_storeEnumTagSinglePayload(v177, v178, v179, v267);
    }

    sub_23B398890(v173, &qword_27E131C78, &qword_23B50ED40);
    OUTLINED_FUNCTION_14_21();
    sub_23B3A23E0();
    if (v296)
    {
      v180 = OUTLINED_FUNCTION_155_0();
      OUTLINED_FUNCTION_18_13(v129, v180 ^ 1u);
      OUTLINED_FUNCTION_4_20(v129);
      if (!v175)
      {
        sub_23B3B0A98();
        v181 = OUTLINED_FUNCTION_157_0(&v278);
        sub_23B398890(v181, &qword_27E131EF0, &unk_23B50F220);
        OUTLINED_FUNCTION_206_0();
        OUTLINED_FUNCTION_73();
        v168 = &v296;
        goto LABEL_62;
      }
    }

    else
    {
      OUTLINED_FUNCTION_70_2();
      OUTLINED_FUNCTION_1();
      __swift_storeEnumTagSinglePayload(v182, v183, v184, v268);
    }

    sub_23B398890(v129, &qword_27E131EF0, &unk_23B50F220);
    OUTLINED_FUNCTION_14_21();
    sub_23B3A23E0();
    if (v296)
    {
      OUTLINED_FUNCTION_296();
      if (swift_dynamicCast())
      {
        v185 = v299;
        v186 = v291;
        v187 = &v277;
        goto LABEL_49;
      }
    }

    else
    {
      OUTLINED_FUNCTION_70_2();
    }

    OUTLINED_FUNCTION_14_21();
    sub_23B3A23E0();
    if (!v296)
    {
      OUTLINED_FUNCTION_70_2();
LABEL_42:
      OUTLINED_FUNCTION_14_21();
      sub_23B3A23E0();
      if (v296)
      {
        v193 = OUTLINED_FUNCTION_155_0();
        OUTLINED_FUNCTION_18_13(v150, v193 ^ 1u);
        OUTLINED_FUNCTION_4_20(v150);
        if (!v175)
        {
          sub_23B3B0A98();
          v194 = OUTLINED_FUNCTION_157_0(v275);
          sub_23B398890(v194, &qword_27E131E88, &unk_23B519360);
          OUTLINED_FUNCTION_206_0();
          OUTLINED_FUNCTION_73();
          v168 = &v292;
          goto LABEL_62;
        }
      }

      else
      {
        OUTLINED_FUNCTION_70_2();
        OUTLINED_FUNCTION_1();
        __swift_storeEnumTagSinglePayload(v195, v196, v197, v264);
      }

      sub_23B398890(v150, &qword_27E131E88, &unk_23B519360);
      OUTLINED_FUNCTION_14_21();
      sub_23B3A23E0();
      if (v296)
      {
        OUTLINED_FUNCTION_296();
        if (swift_dynamicCast())
        {
          v185 = v299;
          v186 = v291;
          v187 = &v273;
LABEL_49:
          v198 = *(v187 - 32);

          *(v186 + v198) = v185;
LABEL_63:
          v4 = v123;
LABEL_64:
          v136 = v292;
          goto LABEL_65;
        }
      }

      else
      {
        OUTLINED_FUNCTION_70_2();
      }

      OUTLINED_FUNCTION_14_21();
      sub_23B3A23E0();
      if (v296)
      {
        OUTLINED_FUNCTION_222_0(&v276);
        v199 = v263;
        swift_dynamicCast();
        v200 = OUTLINED_FUNCTION_219_0();
        __swift_storeEnumTagSinglePayload(v200, v201, v202, v199);
        v203 = OUTLINED_FUNCTION_152();
        if (__swift_getEnumTagSinglePayload(v203, v204, v199) != 1)
        {
          sub_23B3B0A98();
          v205 = OUTLINED_FUNCTION_157_0(&v270);
          sub_23B398890(v205, &qword_27E131EA0, &qword_23B50F1B0);
          sub_23B3B0A98();
          OUTLINED_FUNCTION_73();
          v168 = &v289;
LABEL_62:
          __swift_storeEnumTagSinglePayload(v165, v166, v167, *(v168 - 32));
          goto LABEL_63;
        }
      }

      else
      {
        OUTLINED_FUNCTION_70_2();
        OUTLINED_FUNCTION_222_0(&v276);
        OUTLINED_FUNCTION_1();
        __swift_storeEnumTagSinglePayload(v206, v207, v208, v263);
      }

      sub_23B398890(v130, &qword_27E131EA0, &qword_23B50F1B0);
      OUTLINED_FUNCTION_14_21();
      sub_23B3A23E0();
      if (v296)
      {
        v209 = OUTLINED_FUNCTION_155_0();
        OUTLINED_FUNCTION_18_13(v128, v209 ^ 1u);
        OUTLINED_FUNCTION_4_20(v128);
        if (!v175)
        {
          sub_23B3B0A98();
          v210 = OUTLINED_FUNCTION_157_0(v269);
          sub_23B398890(v210, &qword_27E131EE0, &qword_23B50F210);
          OUTLINED_FUNCTION_206_0();
          OUTLINED_FUNCTION_73();
          v168 = &v287;
          goto LABEL_62;
        }
      }

      else
      {
        OUTLINED_FUNCTION_70_2();
        OUTLINED_FUNCTION_1();
        __swift_storeEnumTagSinglePayload(v211, v212, v213, v261);
      }

      sub_23B398890(v128, &qword_27E131EE0, &qword_23B50F210);
      OUTLINED_FUNCTION_14_21();
      sub_23B3A23E0();
      if (v296)
      {
        v214 = v252;
        v215 = OUTLINED_FUNCTION_155_0();
        OUTLINED_FUNCTION_18_13(v214, v215 ^ 1u);
        OUTLINED_FUNCTION_4_20(v214);
        if (!v175)
        {
          sub_23B3AF918();
          v216 = OUTLINED_FUNCTION_157_0(&v267);
          sub_23B398890(v216, &qword_27E131ED0, &qword_23B50F200);
          OUTLINED_FUNCTION_306();
          OUTLINED_FUNCTION_73();
          v168 = &v286;
          goto LABEL_62;
        }
      }

      else
      {
        OUTLINED_FUNCTION_70_2();
        v214 = v252;
        OUTLINED_FUNCTION_1();
        __swift_storeEnumTagSinglePayload(v226, v227, v228, v260);
      }

      sub_23B398890(v214, &qword_27E131ED0, &qword_23B50F200);
      OUTLINED_FUNCTION_14_21();
      sub_23B3A23E0();
      if (v296)
      {
        OUTLINED_FUNCTION_222_0(&v274);
        v229 = v259;
        swift_dynamicCast();
        v230 = OUTLINED_FUNCTION_219_0();
        __swift_storeEnumTagSinglePayload(v230, v231, v232, v229);
        v233 = OUTLINED_FUNCTION_152();
        v4 = v123;
        if (__swift_getEnumTagSinglePayload(v233, v234, v229) != 1)
        {
          sub_23B3B0A98();
          sub_23B398890(v291 + v250, &qword_27E1338A8, &qword_23B519358);
          sub_23B3B0A98();
          OUTLINED_FUNCTION_73();
          __swift_storeEnumTagSinglePayload(v235, v236, v237, v259);
          goto LABEL_64;
        }
      }

      else
      {
        OUTLINED_FUNCTION_70_2();
        OUTLINED_FUNCTION_1();
        __swift_storeEnumTagSinglePayload(v238, v239, v240, v259);
        v4 = v123;
      }

      sub_23B398890(v253, &qword_27E1338A8, &qword_23B519358);
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_296();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_42;
    }

    v188 = 0x6C62616C69617661;
    v189 = v299;
    v190 = BYTE1(v299);
    v191 = 0xE900000000000065;
    v192 = 0x6C62616C69617661;
    v4 = v123;
    v136 = v292;
    switch(BYTE2(v299))
    {
      case 1:
        v192 = 0xD000000000000016;
        v191 = 0x800000023B528300;
        goto LABEL_71;
      case 2:
        OUTLINED_FUNCTION_255_0();
        goto LABEL_72;
      case 3:
        v192 = OUTLINED_FUNCTION_13_3();
        goto LABEL_71;
      default:
LABEL_71:
        v249 = v189;
        v221 = OUTLINED_FUNCTION_60_2(v192, v191);

        if (v221)
        {
LABEL_72:
          v222 = v291;
          v223 = &v283;
        }

        else
        {
          v224 = 0xE900000000000065;
          v225 = 0x6C62616C69617661;
          switch(v190)
          {
            case 1:
              v225 = 0xD000000000000016;
              v224 = 0x800000023B528300;
              goto LABEL_83;
            case 2:
              OUTLINED_FUNCTION_255_0();
              goto LABEL_84;
            case 3:
              v225 = OUTLINED_FUNCTION_13_3();
              goto LABEL_83;
            default:
LABEL_83:
              v241 = OUTLINED_FUNCTION_60_2(v225, v224);

              if (v241)
              {
LABEL_84:
                v222 = v291;
                v223 = &v282;
              }

              else
              {
                v242 = 0xE900000000000065;
                switch(v249)
                {
                  case 1:
                    v188 = 0xD000000000000016;
                    v242 = 0x800000023B528300;
                    goto LABEL_89;
                  case 2:
                    OUTLINED_FUNCTION_255_0();
                    goto LABEL_90;
                  case 3:
                    v242 = 0xE700000000000000;
                    v188 = 0x6E776F6E6B6E75;
                    goto LABEL_89;
                  default:
LABEL_89:
                    v243 = OUTLINED_FUNCTION_60_2(v188, v242);

                    if ((v243 & 1) == 0)
                    {
                      goto LABEL_65;
                    }

LABEL_90:
                    v222 = v291;
                    v223 = &v281;
                    break;
                }
              }

              break;
          }
        }

        *(v222 + *(v223 - 32)) = 2;
        break;
    }

LABEL_65:
    OUTLINED_FUNCTION_207();
    if (*(v4 + v217) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E131CB8, &qword_23B50ED80);
      v218 = swift_allocObject();
      *(v218 + 16) = v273;
      sub_23B4DAB18(v274);
      v219 = v291;
      sub_23B3B0A98();
      sub_23B398890(&v297, &qword_27E133080, &unk_23B519370);

      OUTLINED_FUNCTION_228_0();
      *(v219 + v220) = v218;
      v289 = v218;
    }

    else
    {
      sub_23B398890(&v297, &qword_27E133080, &unk_23B519370);
    }

    v119 = v136 + 1;
  }
}

void sub_23B3AA378(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v773 = a4;
  v771 = a2;
  v725 = a3;
  v772 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E80, &unk_23B510220);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52();
  v756 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v735 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E90, &unk_23B5101F0);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_52();
  v755 = v13;
  OUTLINED_FUNCTION_24_0();
  v753 = sub_23B50BA44();
  OUTLINED_FUNCTION_5();
  v739 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v746 = v16;
  OUTLINED_FUNCTION_24_0();
  v754 = sub_23B50BA14();
  OUTLINED_FUNCTION_5();
  v740 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  v748 = v19;
  OUTLINED_FUNCTION_24_0();
  v752 = sub_23B50BBD4();
  OUTLINED_FUNCTION_5();
  v738 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_0();
  v745 = v22;
  OUTLINED_FUNCTION_24_0();
  v751 = sub_23B50CB04();
  OUTLINED_FUNCTION_5();
  v737 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_0();
  v744 = v25;
  OUTLINED_FUNCTION_24_0();
  v750 = sub_23B50C2C4();
  OUTLINED_FUNCTION_5();
  v736 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_0();
  v743 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E98, &unk_23B5101B0);
  OUTLINED_FUNCTION_3(v29);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v30);
  v32 = &v724 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA0, &qword_23B50F1B0);
  OUTLINED_FUNCTION_3(v33);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_52();
  v733 = v35;
  OUTLINED_FUNCTION_24_0();
  sub_23B50C054();
  OUTLINED_FUNCTION_5();
  v731 = v37;
  v732 = v36;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_27();
  v40 = (v39 - v38);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v41);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_52();
  v727 = v43;
  OUTLINED_FUNCTION_24_0();
  v758 = sub_23B50C694();
  OUTLINED_FUNCTION_5();
  v742 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6_0();
  v757 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v47);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_52();
  v724 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  OUTLINED_FUNCTION_3(v50);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v51);
  v53 = &v724 - v52;
  v729 = sub_23B50C3C4();
  OUTLINED_FUNCTION_5();
  v726 = v54;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6_0();
  v728 = v56;
  OUTLINED_FUNCTION_24_0();
  v741 = sub_23B50CCA4();
  OUTLINED_FUNCTION_5();
  v734 = v57;
  MEMORY[0x28223BE20](v58);
  v60 = &v724 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v63 = &v724 - v62;
  v749 = sub_23B50BAE4();
  OUTLINED_FUNCTION_5();
  v730 = v64;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_6_0();
  v747 = v66;
  OUTLINED_FUNCTION_24_0();
  sub_23B50C794();
  OUTLINED_FUNCTION_5();
  v768 = v68;
  v769 = v67;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_6_0();
  v761 = v69;
  OUTLINED_FUNCTION_24_0();
  sub_23B50C284();
  OUTLINED_FUNCTION_5();
  v766 = v71;
  v767 = v70;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_6_0();
  v760 = v72;
  OUTLINED_FUNCTION_24_0();
  sub_23B50C094();
  OUTLINED_FUNCTION_5();
  v764 = v74;
  v765 = v73;
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_6_0();
  v759 = v75;
  OUTLINED_FUNCTION_24_0();
  sub_23B50B4B4();
  OUTLINED_FUNCTION_5();
  v762 = v77;
  v763 = v76;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_0();
  v79 = v78;
  OUTLINED_FUNCTION_24_0();
  v80 = sub_23B50B654();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_27();
  v84 = (v83 - v82);
  sub_23B3A52DC(v772, v83 - v82);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v170 = v79;
      v171 = OUTLINED_FUNCTION_68();
      v172(v171);
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_280B43440);
      }

      v173 = sub_23B50CDF4();
      v174 = OUTLINED_FUNCTION_37_0(v173, qword_280B4E9D8);
      v175 = OUTLINED_FUNCTION_56();
      v176 = sub_23B50D4C4();
      if (OUTLINED_FUNCTION_17_0(v176))
      {
        OUTLINED_FUNCTION_46_0();
        v177 = OUTLINED_FUNCTION_27_1();
        v772 = v40;
        v178 = v177;
        v775 = v177;
        OUTLINED_FUNCTION_4_7(7.2225e-34);
        [v32 coordinate];
        v179 = sub_23B50D4D4();
        OUTLINED_FUNCTION_50(v179, v180);
        OUTLINED_FUNCTION_23_1();

        *(v53 + 14) = v60;

        OUTLINED_FUNCTION_13_2(&dword_23B38D000, v181, v182, "Successfully built current weather; location=%{private,mask.hash}s");
        __swift_destroy_boxed_opaque_existential_1(v178);
        v40 = v772;
        v170 = v79;
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_14_3();
      }

      else
      {
      }

      OUTLINED_FUNCTION_69();
      v349 = OUTLINED_FUNCTION_66();
      v350 = type metadata accessor for CurrentWeather(v349);
      OUTLINED_FUNCTION_53(v350);
      sub_23B3B0BD4(v170, v32, v351, v352, v353, v354, v355, v356, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, SWORD2(v733), SBYTE6(v733), HIBYTE(v733), v734, v735, v736, v737, v738, v739, v740, v741, v742, v743);
      if (v53)
      {
        __swift_deallocate_boxed_opaque_existential_0(v63);
        v357 = v32;
        OUTLINED_FUNCTION_57_0();
        v358 = v175;
        OUTLINED_FUNCTION_61();
        v359 = sub_23B50CDD4();
        v360 = sub_23B50D4B4();
        if (OUTLINED_FUNCTION_26_1(v360))
        {
          OUTLINED_FUNCTION_42_0();
          v361 = OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_45_2(v361);
          OUTLINED_FUNCTION_2_7(7.2226e-34);
          [v63 coordinate];
          v362 = sub_23B50D4D4();
          v774 = v170;
          OUTLINED_FUNCTION_47(v362, v363);
          OUTLINED_FUNCTION_43_0();
          *(v40 + 14) = v170;

          OUTLINED_FUNCTION_39_0();
          swift_getErrorValue();
          OUTLINED_FUNCTION_7_4();
          MEMORY[0x28223BE20](v364);
          v366 = OUTLINED_FUNCTION_3_2(v365, v724);
          v367(v366);
          v368 = OUTLINED_FUNCTION_60_0();
          OUTLINED_FUNCTION_30_1(v368, v369);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_58();

          OUTLINED_FUNCTION_11_1();
          _os_log_impl(v370, v371, v372, v373, v374, 0x20u);
          OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_16_1();

          v375 = sub_23B3E3D54();
          v376 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v375);
          OUTLINED_FUNCTION_9_1(v376, v377);

          v309 = *(v762 + 8);
          v310 = v774;
        }

        else
        {

          v462 = sub_23B3E3D54();
          v463 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v462);
          OUTLINED_FUNCTION_9_1(v463, v464);

          v309 = *(v762 + 8);
          v310 = v170;
        }

        v455 = v763;
        goto LABEL_199;
      }

      (*(v762 + 8))(v170, v763);
      return;
    case 2u:
      v142 = OUTLINED_FUNCTION_68();
      v143(v142);
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_280B43440);
      }

      v144 = sub_23B50CDF4();
      v145 = OUTLINED_FUNCTION_37_0(v144, qword_280B4E9D8);
      v146 = OUTLINED_FUNCTION_56();
      v147 = sub_23B50D4C4();
      if (OUTLINED_FUNCTION_17_0(v147))
      {
        OUTLINED_FUNCTION_46_0();
        v148 = OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_34_2(v148);
        OUTLINED_FUNCTION_4_7(7.2225e-34);
        [v32 coordinate];
        v149 = sub_23B50D4D4();
        OUTLINED_FUNCTION_50(v149, v150);
        OUTLINED_FUNCTION_23_1();

        *(v53 + 14) = v60;

        OUTLINED_FUNCTION_13_2(&dword_23B38D000, v151, v152, "Successfully built daily forecast; location=%{private,mask.hash}s");
        OUTLINED_FUNCTION_19_1();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_14_3();
      }

      else
      {
      }

      OUTLINED_FUNCTION_69();
      v286 = *(v285 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
      v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
      OUTLINED_FUNCTION_53(v287);
      OUTLINED_FUNCTION_65_1();
      sub_23B3B36A0();
      if (!v4)
      {
        goto LABEL_138;
      }

      __swift_deallocate_boxed_opaque_existential_0(v63);
      v288 = v32;
      OUTLINED_FUNCTION_57_0();
      v289 = v286;
      v290 = v4;
      v291 = sub_23B50CDD4();
      v292 = sub_23B50D4B4();
      if (OUTLINED_FUNCTION_15_2(v292))
      {
        OUTLINED_FUNCTION_42_0();
        v774 = OUTLINED_FUNCTION_22_0();
        v775 = v774;
        *v40 = 136446723;
        swift_getErrorValue();
        OUTLINED_FUNCTION_7_4();
        MEMORY[0x28223BE20](v293);
        OUTLINED_FUNCTION_27();
        v295 = OUTLINED_FUNCTION_12_3(v294);
        v296(v295);
        v297 = OUTLINED_FUNCTION_71_0();
        sub_23B391F1C(v297, v298, &v775);
        OUTLINED_FUNCTION_43_0();
        *(v40 + 4) = v80;

        *(v40 + 6) = 2160;
        *(v40 + 14) = 1752392040;
        *(v40 + 11) = 2081;
        [v289 coordinate];
        v299 = sub_23B50D4D4();
        OUTLINED_FUNCTION_47(v299, v300);
        OUTLINED_FUNCTION_43_0();
        v40[3] = v80;

        OUTLINED_FUNCTION_25_1();
        _os_log_impl(v301, v302, v303, v304, v305, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_16_1();

        v306 = sub_23B3E3D54();
        v307 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v306);
        OUTLINED_FUNCTION_9_1(v307, v308);

        v309 = *(v764 + 8);
        v310 = v759;
      }

      else
      {

        v456 = sub_23B3E3D54();
        v457 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v456);
        OUTLINED_FUNCTION_9_1(v457, v458);

        v310 = OUTLINED_FUNCTION_67_0();
      }

      v455 = v765;
      goto LABEL_199;
    case 3u:
      v153 = OUTLINED_FUNCTION_68();
      v154(v153);
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_280B43440);
      }

      v155 = sub_23B50CDF4();
      v156 = OUTLINED_FUNCTION_37_0(v155, qword_280B4E9D8);
      v157 = OUTLINED_FUNCTION_56();
      v158 = sub_23B50D4C4();
      if (OUTLINED_FUNCTION_17_0(v158))
      {
        OUTLINED_FUNCTION_46_0();
        v159 = OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_34_2(v159);
        OUTLINED_FUNCTION_4_7(7.2225e-34);
        [v32 coordinate];
        v160 = sub_23B50D4D4();
        OUTLINED_FUNCTION_50(v160, v161);
        OUTLINED_FUNCTION_23_1();

        *(v53 + 14) = v60;

        OUTLINED_FUNCTION_13_2(&dword_23B38D000, v162, v163, "Successfully built hourly forecast; location=%{private,mask.hash}s");
        OUTLINED_FUNCTION_19_1();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_14_3();
      }

      else
      {
      }

      OUTLINED_FUNCTION_69();
      v312 = *(v311 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
      v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
      OUTLINED_FUNCTION_53(v313);
      OUTLINED_FUNCTION_65_1();
      sub_23B3CCABC();
      if (!v4)
      {
        goto LABEL_138;
      }

      __swift_deallocate_boxed_opaque_existential_0(v63);
      v314 = v32;
      OUTLINED_FUNCTION_57_0();
      v315 = v312;
      OUTLINED_FUNCTION_61();
      v316 = sub_23B50CDD4();
      v317 = sub_23B50D4B4();
      if (OUTLINED_FUNCTION_26_1(v317))
      {
        OUTLINED_FUNCTION_42_0();
        v318 = OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_45_2(v318);
        OUTLINED_FUNCTION_2_7(7.2226e-34);
        [v63 coordinate];
        v319 = sub_23B50D4D4();
        OUTLINED_FUNCTION_47(v319, v320);
        OUTLINED_FUNCTION_43_0();
        *(v40 + 14) = v80;

        OUTLINED_FUNCTION_39_0();
        swift_getErrorValue();
        OUTLINED_FUNCTION_7_4();
        MEMORY[0x28223BE20](v321);
        v323 = OUTLINED_FUNCTION_3_2(v322, v724);
        v324(v323);
        v325 = OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_30_1(v325, v326);
        OUTLINED_FUNCTION_59_0();
        OUTLINED_FUNCTION_58();

        OUTLINED_FUNCTION_11_1();
        _os_log_impl(v327, v328, v329, v330, v331, 0x20u);
        OUTLINED_FUNCTION_31_0();
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_16_1();

        v332 = sub_23B3E3D54();
        v333 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v332);
        OUTLINED_FUNCTION_9_1(v333, v334);

        v309 = *(v766 + 8);
        v310 = v760;
      }

      else
      {

        v459 = sub_23B3E3D54();
        v460 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v459);
        OUTLINED_FUNCTION_9_1(v460, v461);

        v310 = OUTLINED_FUNCTION_67_0();
      }

      v455 = v767;
      goto LABEL_199;
    case 4u:
      v116 = OUTLINED_FUNCTION_44_0();
      v117 = v758;
      OUTLINED_FUNCTION_51(v116, v118, v758);
      if (v88)
      {
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1(&qword_280B43440);
        }

        v119 = sub_23B50CDF4();
        v120 = OUTLINED_FUNCTION_29_2(v119, qword_280B4E9D8);
        v121 = sub_23B50CDD4();
        v122 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_15_2(v122))
        {
          OUTLINED_FUNCTION_46_0();
          v123 = OUTLINED_FUNCTION_18_1();
          OUTLINED_FUNCTION_28_2(v123);
          OUTLINED_FUNCTION_1_2(7.2225e-34);
          [v120 coordinate];
          v124 = sub_23B50D4D4();
          OUTLINED_FUNCTION_47(v124, v125);
          OUTLINED_FUNCTION_43_0();
          *(v32 + 14) = v80;

          OUTLINED_FUNCTION_10_1();
          _os_log_impl(v126, v127, v128, v129, v130, 0x16u);
          OUTLINED_FUNCTION_21_3();
          OUTLINED_FUNCTION_20_1();
        }

        else
        {
        }

        v468 = v773;
        v773[3] = &type metadata for WeatherAvailability;
        v469 = 770;
        goto LABEL_162;
      }

      (*(v742 + 32))(v757, v84, v117);
      v245 = v774;
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_280B43440);
      }

      v246 = sub_23B50CDF4();
      __swift_project_value_buffer(v246, qword_280B4E9D8);
      v247 = v771;
      v248 = sub_23B50CDD4();
      v249 = sub_23B50D4C4();
      if (OUTLINED_FUNCTION_17_0(v249))
      {
        v250 = OUTLINED_FUNCTION_46_0();
        v251 = OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_34_2(v251);
        OUTLINED_FUNCTION_2_7(7.2225e-34);
        [v247 coordinate];
        v252 = sub_23B50D4D4();
        OUTLINED_FUNCTION_50(v252, v253);
        OUTLINED_FUNCTION_23_1();

        *(v250 + 14) = v60;
        v245 = v774;

        OUTLINED_FUNCTION_25_1();
        _os_log_impl(v254, v255, v256, v257, v258, 0x16u);
        OUTLINED_FUNCTION_19_1();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_16_1();
      }

      else
      {
      }

      v341 = v773;
      v502 = v727;
      sub_23B3BAD74(v757, v503, v504, v505, v506, v507, v508, v509, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735);
      if (v245)
      {
        v510 = v247;
        v511 = v245;
        v512 = v510;
        v513 = v245;
        v514 = sub_23B50CDD4();
        v515 = sub_23B50D4B4();
        if (OUTLINED_FUNCTION_15_2(v515))
        {
          v516 = OUTLINED_FUNCTION_42_0();
          v517 = swift_slowAlloc();
          OUTLINED_FUNCTION_28_2(v517);
          OUTLINED_FUNCTION_1_2(7.2226e-34);
          [v512 coordinate];
          v518 = sub_23B50D4D4();
          OUTLINED_FUNCTION_50(v518, v519);
          v774 = 0;
          OUTLINED_FUNCTION_23_1();

          *(v516 + 14) = 0;

          *(v516 + 22) = 2082;
          swift_getErrorValue();
          OUTLINED_FUNCTION_7_4();
          MEMORY[0x28223BE20](v520);
          OUTLINED_FUNCTION_27();
          v522 = OUTLINED_FUNCTION_12_3(v521);
          v523(v522);
          v524 = OUTLINED_FUNCTION_71_0();
          OUTLINED_FUNCTION_49_0(v524, v525);
          OUTLINED_FUNCTION_43_0();
          *(v516 + 24) = v245;

          OUTLINED_FUNCTION_10_1();
          _os_log_impl(v526, v527, v528, v529, v530, 0x20u);
          OUTLINED_FUNCTION_63_0();
          v341 = v773;
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_20_1();
        }

        else
        {
        }

        v668 = OUTLINED_FUNCTION_55_0();
        v670(v668, v669);
        goto LABEL_220;
      }

      v647 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
      OUTLINED_FUNCTION_51(v502, 1, v647);
      if (!v88)
      {
        v341[3] = v647;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v341);
        sub_23B3E3DA8(v502, boxed_opaque_existential_0, &qword_27E131CA0, &qword_23B5101A0);
        v684 = OUTLINED_FUNCTION_55_0();
        v685(v684);
        return;
      }

      v648 = OUTLINED_FUNCTION_55_0();
      v649(v648);
      v650 = &qword_27E131C90;
      v651 = &unk_23B514EC0;
      v652 = v502;
      goto LABEL_217;
    case 5u:
      v183 = v761;
      v184 = OUTLINED_FUNCTION_68();
      v185(v184);
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_280B43440);
      }

      v186 = sub_23B50CDF4();
      v187 = OUTLINED_FUNCTION_37_0(v186, qword_280B4E9D8);
      v188 = OUTLINED_FUNCTION_56();
      v189 = sub_23B50D4C4();
      if (OUTLINED_FUNCTION_17_0(v189))
      {
        OUTLINED_FUNCTION_46_0();
        v190 = OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_34_2(v190);
        OUTLINED_FUNCTION_4_7(7.2225e-34);
        [v32 coordinate];
        v191 = sub_23B50D4D4();
        OUTLINED_FUNCTION_50(v191, v192);
        OUTLINED_FUNCTION_23_1();

        *(v53 + 14) = v60;

        OUTLINED_FUNCTION_13_2(&dword_23B38D000, v193, v194, "Successfully built periodic forecast; location=%{private,mask.hash}s");
        OUTLINED_FUNCTION_19_1();
        v183 = v761;
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_14_3();
      }

      else
      {
      }

      OUTLINED_FUNCTION_69();
      v378 = OUTLINED_FUNCTION_66();
      v379 = type metadata accessor for PeriodicForecasts(v378);
      OUTLINED_FUNCTION_53(v379);
      sub_23B3F20B4(v183, v380, v381, v382, v383, v384, v385, v386, v724, v725);
      if (v53)
      {
        __swift_deallocate_boxed_opaque_existential_0(v63);
        v387 = v32;
        OUTLINED_FUNCTION_57_0();
        v388 = v188;
        OUTLINED_FUNCTION_61();
        v389 = sub_23B50CDD4();
        v390 = sub_23B50D4B4();
        if (OUTLINED_FUNCTION_26_1(v390))
        {
          OUTLINED_FUNCTION_42_0();
          v391 = OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_45_2(v391);
          OUTLINED_FUNCTION_2_7(7.2226e-34);
          [v63 coordinate];
          v392 = sub_23B50D4D4();
          OUTLINED_FUNCTION_47(v392, v393);
          OUTLINED_FUNCTION_43_0();
          *(v40 + 14) = v80;

          OUTLINED_FUNCTION_39_0();
          swift_getErrorValue();
          OUTLINED_FUNCTION_7_4();
          MEMORY[0x28223BE20](v394);
          v396 = OUTLINED_FUNCTION_3_2(v395, v724);
          v397(v396);
          v398 = OUTLINED_FUNCTION_60_0();
          OUTLINED_FUNCTION_30_1(v398, v399);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_58();

          OUTLINED_FUNCTION_11_1();
          _os_log_impl(v400, v401, v402, v403, v404, 0x20u);
          OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_16_1();

          v405 = sub_23B3E3D54();
          v406 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v405);
          OUTLINED_FUNCTION_9_1(v406, v407);

          v309 = *(v768 + 8);
          v310 = v761;
        }

        else
        {

          v465 = sub_23B3E3D54();
          v466 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v465);
          OUTLINED_FUNCTION_9_1(v466, v467);

          v310 = OUTLINED_FUNCTION_67_0();
        }

        v455 = v769;
      }

      else
      {
LABEL_138:
        v310 = OUTLINED_FUNCTION_67_0();
      }

      goto LABEL_199;
    case 6u:
      v208 = v756;
      sub_23B3E3DA8(v84, v756, &qword_27E131E80, &unk_23B510220);
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_280B43440);
      }

      v209 = sub_23B50CDF4();
      v210 = OUTLINED_FUNCTION_29_2(v209, qword_280B4E9D8);
      v211 = sub_23B50CDD4();
      v212 = sub_23B50D4C4();
      if (OUTLINED_FUNCTION_15_2(v212))
      {
        OUTLINED_FUNCTION_46_0();
        v213 = OUTLINED_FUNCTION_18_1();
        OUTLINED_FUNCTION_28_2(v213);
        OUTLINED_FUNCTION_1_2(7.2225e-34);
        [v210 coordinate];
        v214 = sub_23B50D4D4();
        OUTLINED_FUNCTION_47(v214, v215);
        OUTLINED_FUNCTION_43_0();
        *(v208 + 14) = v80;

        OUTLINED_FUNCTION_10_1();
        _os_log_impl(v216, v217, v218, v219, v220, 0x16u);
        OUTLINED_FUNCTION_21_3();
        v208 = v756;
        OUTLINED_FUNCTION_38();
      }

      else
      {
      }

      v408 = v773;
      sub_23B3F43B0();
      v416 = v775;
      if (v775)
      {
        v408[3] = &type metadata for HistoricalFacts;
        *v408 = v416;
        v413 = &qword_27E131E80;
        v414 = &unk_23B510220;
        v415 = v208;
        goto LABEL_120;
      }

      v410 = &qword_27E131E80;
      v411 = &unk_23B510220;
      goto LABEL_140;
    case 7u:
      v165 = v731;
      v164 = v732;
      (*(v731 + 32))(v40, v84, v732);
      (*(v165 + 16))(v32, v40, v164);
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v164);
      v166 = v733;
      sub_23B3F23E4();
      sub_23B398890(v32, &qword_27E131E98, &unk_23B5101B0);
      v167 = type metadata accessor for LocationInfo(0);
      OUTLINED_FUNCTION_51(v166, 1, v167);
      if (!v88)
      {
        v335 = v773;
        v773[3] = v167;
        v336 = __swift_allocate_boxed_opaque_existential_0(v335);
        sub_23B3CE55C(v166, v336, type metadata accessor for LocationInfo);
        (*(v165 + 8))(v40, v164);
        return;
      }

      (*(v165 + 8))(v40, v164);
      sub_23B398890(v166, &qword_27E131EA0, &qword_23B50F1B0);
      v168 = 0uLL;
      v169 = v773;
      goto LABEL_73;
    case 8u:
      v225 = OUTLINED_FUNCTION_44_0();
      v132 = v750;
      OUTLINED_FUNCTION_51(v225, v226, v750);
      if (!v88)
      {
        v430 = v743;
        v431 = OUTLINED_FUNCTION_36_0();
        v432(v431);
        v433 = v774;
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1(&qword_280B43440);
        }

        v434 = sub_23B50CDF4();
        v435 = OUTLINED_FUNCTION_37_0(v434, qword_280B4E9D8);
        v436 = OUTLINED_FUNCTION_56();
        v437 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_17_0(v437))
        {
          OUTLINED_FUNCTION_46_0();
          v438 = OUTLINED_FUNCTION_27_1();
          OUTLINED_FUNCTION_34_2(v438);
          OUTLINED_FUNCTION_4_7(7.2225e-34);
          [v32 coordinate];
          v439 = sub_23B50D4D4();
          OUTLINED_FUNCTION_50(v439, v440);
          OUTLINED_FUNCTION_23_1();

          *(v53 + 14) = v430;
          v430 = v743;
          v433 = v774;

          OUTLINED_FUNCTION_13_2(&dword_23B38D000, v441, v442, "Successfully built marine hourly forecast; location=%{private,mask.hash}s");
          OUTLINED_FUNCTION_19_1();
          v132 = v750;
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_14_3();
        }

        else
        {
        }

        v615 = *(v770 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
        v616 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC0, &qword_23B50F1B8);
        OUTLINED_FUNCTION_62(v616);
        v617 = OUTLINED_FUNCTION_54();
        sub_23B3F26B0(v617, v618, v619, v620, v621, v622, v623, v624, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737);
        v310 = OUTLINED_FUNCTION_70();
        if (!v4)
        {
          v653 = v736;
          goto LABEL_198;
        }

        __swift_deallocate_boxed_opaque_existential_0(v53);
        v625 = v32;
        OUTLINED_FUNCTION_57_0();
        v626 = v615;
        OUTLINED_FUNCTION_61();
        v627 = sub_23B50CDD4();
        v628 = sub_23B50D4B4();
        if (OUTLINED_FUNCTION_26_1(v628))
        {
          OUTLINED_FUNCTION_42_0();
          v629 = OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_45_2(v629);
          OUTLINED_FUNCTION_2_7(7.2226e-34);
          [v63 coordinate];
          v630 = sub_23B50D4D4();
          OUTLINED_FUNCTION_47(v630, v631);
          OUTLINED_FUNCTION_43_0();
          *(v40 + 14) = v433;

          OUTLINED_FUNCTION_39_0();
          swift_getErrorValue();
          OUTLINED_FUNCTION_7_4();
          MEMORY[0x28223BE20](v632);
          v634 = OUTLINED_FUNCTION_3_2(v633, v724);
          v635(v634);
          v636 = OUTLINED_FUNCTION_60_0();
          OUTLINED_FUNCTION_30_1(v636, v637);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_58();

          OUTLINED_FUNCTION_11_1();
          _os_log_impl(v638, v639, v640, v641, v642, 0x20u);
          OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_16_1();

          v643 = sub_23B3E3D54();
          v644 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v643);
          OUTLINED_FUNCTION_9_1(v644, v645);

          (*(v736 + 8))(v743, v750);
          return;
        }

        v680 = sub_23B3E3D54();
        v681 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v680);
        OUTLINED_FUNCTION_9_1(v681, v682);

        v309 = *(v736 + 8);
        v310 = v743;
        goto LABEL_207;
      }

      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_280B43440);
      }

      v227 = sub_23B50CDF4();
      v135 = OUTLINED_FUNCTION_29_2(v227, qword_280B4E9D8);
      v136 = sub_23B50CDD4();
      v228 = sub_23B50D4C4();
      if (!OUTLINED_FUNCTION_15_2(v228))
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    case 9u:
      v138 = OUTLINED_FUNCTION_44_0();
      v132 = v751;
      OUTLINED_FUNCTION_51(v138, v139, v751);
      if (!v88)
      {
        v272 = v744;
        v273 = OUTLINED_FUNCTION_36_0();
        v274(v273);
        v275 = v774;
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1(&qword_280B43440);
        }

        v276 = sub_23B50CDF4();
        v277 = OUTLINED_FUNCTION_37_0(v276, qword_280B4E9D8);
        v278 = OUTLINED_FUNCTION_56();
        v279 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_17_0(v279))
        {
          OUTLINED_FUNCTION_46_0();
          v280 = OUTLINED_FUNCTION_27_1();
          OUTLINED_FUNCTION_34_2(v280);
          OUTLINED_FUNCTION_4_7(7.2225e-34);
          [v32 coordinate];
          v281 = sub_23B50D4D4();
          OUTLINED_FUNCTION_50(v281, v282);
          OUTLINED_FUNCTION_23_1();

          *(v53 + 14) = v272;
          v272 = v744;
          v275 = v774;

          OUTLINED_FUNCTION_13_2(&dword_23B38D000, v283, v284, "Successfully built news; location=%{private,mask.hash}s");
          OUTLINED_FUNCTION_19_1();
          v132 = v751;
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_14_3();
        }

        else
        {
        }

        v554 = *(v770 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
        v555 = v773;
        v773[3] = &type metadata for News;
        sub_23B3F2D10(v272, v556, v557, v558, v559, v560, v561, v562, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735);
        v310 = OUTLINED_FUNCTION_70();
        if (!v275)
        {
          v653 = v737;
          goto LABEL_198;
        }

        __swift_deallocate_boxed_opaque_existential_0(v555);
        v563 = v32;
        OUTLINED_FUNCTION_57_0();
        v564 = v554;
        OUTLINED_FUNCTION_61();
        v565 = sub_23B50CDD4();
        v566 = sub_23B50D4B4();
        if (OUTLINED_FUNCTION_26_1(v566))
        {
          OUTLINED_FUNCTION_42_0();
          v567 = OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_45_2(v567);
          OUTLINED_FUNCTION_2_7(7.2226e-34);
          [v63 coordinate];
          v568 = sub_23B50D4D4();
          OUTLINED_FUNCTION_47(v568, v569);
          OUTLINED_FUNCTION_43_0();
          *(v40 + 14) = v275;

          OUTLINED_FUNCTION_39_0();
          swift_getErrorValue();
          OUTLINED_FUNCTION_7_4();
          MEMORY[0x28223BE20](v570);
          v572 = OUTLINED_FUNCTION_3_2(v571, v724);
          v573(v572);
          v574 = OUTLINED_FUNCTION_60_0();
          OUTLINED_FUNCTION_30_1(v574, v575);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_58();

          OUTLINED_FUNCTION_11_1();
          _os_log_impl(v576, v577, v578, v579, v580, 0x20u);
          OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_16_1();

          v581 = sub_23B3E3D54();
          v582 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v581);
          OUTLINED_FUNCTION_9_1(v582, v583);

          (*(v737 + 8))(v744, v751);
          return;
        }

        v674 = sub_23B3E3D54();
        v675 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v674);
        OUTLINED_FUNCTION_9_1(v675, v676);

        v309 = *(v737 + 8);
        v310 = v744;
        goto LABEL_207;
      }

      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_280B43440);
      }

      v140 = sub_23B50CDF4();
      v135 = OUTLINED_FUNCTION_29_2(v140, qword_280B4E9D8);
      v136 = sub_23B50CDD4();
      v141 = sub_23B50D4C4();
      if (!OUTLINED_FUNCTION_15_2(v141))
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    case 0xAu:
      v221 = OUTLINED_FUNCTION_44_0();
      v132 = v752;
      OUTLINED_FUNCTION_51(v221, v222, v752);
      if (!v88)
      {
        v417 = v745;
        v418 = OUTLINED_FUNCTION_36_0();
        v419(v418);
        v420 = v774;
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1(&qword_280B43440);
        }

        v421 = sub_23B50CDF4();
        v422 = OUTLINED_FUNCTION_37_0(v421, qword_280B4E9D8);
        v423 = OUTLINED_FUNCTION_56();
        v424 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_17_0(v424))
        {
          OUTLINED_FUNCTION_46_0();
          v425 = OUTLINED_FUNCTION_27_1();
          OUTLINED_FUNCTION_34_2(v425);
          OUTLINED_FUNCTION_4_7(7.2225e-34);
          [v32 coordinate];
          v426 = sub_23B50D4D4();
          OUTLINED_FUNCTION_50(v426, v427);
          OUTLINED_FUNCTION_23_1();

          *(v53 + 14) = v417;
          v417 = v745;
          v420 = v774;

          OUTLINED_FUNCTION_13_2(&dword_23B38D000, v428, v429, "Successfully built tides; location=%{private,mask.hash}s");
          OUTLINED_FUNCTION_19_1();
          v132 = v752;
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_14_3();
        }

        else
        {
        }

        v584 = OUTLINED_FUNCTION_66();
        v585 = type metadata accessor for TideEvents(v584);
        OUTLINED_FUNCTION_62(v585);
        v586 = OUTLINED_FUNCTION_54();
        sub_23B3F3A54(v586, v587, v588, v589, v590, v591, v592, v593, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737);
        v310 = OUTLINED_FUNCTION_70();
        if (!v4)
        {
          v653 = v738;
          goto LABEL_198;
        }

        __swift_deallocate_boxed_opaque_existential_0(v53);
        v594 = v32;
        OUTLINED_FUNCTION_57_0();
        v595 = v423;
        OUTLINED_FUNCTION_61();
        v596 = sub_23B50CDD4();
        v597 = sub_23B50D4B4();
        if (OUTLINED_FUNCTION_26_1(v597))
        {
          OUTLINED_FUNCTION_42_0();
          v598 = OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_45_2(v598);
          OUTLINED_FUNCTION_2_7(7.2226e-34);
          [v63 coordinate];
          v599 = sub_23B50D4D4();
          OUTLINED_FUNCTION_47(v599, v600);
          OUTLINED_FUNCTION_43_0();
          *(v40 + 14) = v420;

          OUTLINED_FUNCTION_39_0();
          swift_getErrorValue();
          OUTLINED_FUNCTION_7_4();
          MEMORY[0x28223BE20](v601);
          v603 = OUTLINED_FUNCTION_3_2(v602, v724);
          v604(v603);
          v605 = OUTLINED_FUNCTION_60_0();
          OUTLINED_FUNCTION_30_1(v605, v606);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_58();

          OUTLINED_FUNCTION_11_1();
          _os_log_impl(v607, v608, v609, v610, v611, 0x20u);
          OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_16_1();

          v612 = sub_23B3E3D54();
          v613 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v612);
          OUTLINED_FUNCTION_9_1(v613, v614);

          (*(v738 + 8))(v745, v752);
          return;
        }

        v677 = sub_23B3E3D54();
        v678 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v677);
        OUTLINED_FUNCTION_9_1(v678, v679);

        v309 = *(v738 + 8);
        v310 = v745;
        goto LABEL_207;
      }

      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_280B43440);
      }

      v223 = sub_23B50CDF4();
      v135 = OUTLINED_FUNCTION_29_2(v223, qword_280B4E9D8);
      v136 = sub_23B50CDD4();
      v224 = sub_23B50D4C4();
      if (!OUTLINED_FUNCTION_15_2(v224))
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    case 0xBu:
      v101 = OUTLINED_FUNCTION_44_0();
      v102 = v754;
      OUTLINED_FUNCTION_51(v101, v103, v754);
      if (v88)
      {
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1(&qword_280B43440);
        }

        v104 = sub_23B50CDF4();
        v105 = OUTLINED_FUNCTION_29_2(v104, qword_280B4E9D8);
        v106 = sub_23B50CDD4();
        v107 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_15_2(v107))
        {
          OUTLINED_FUNCTION_46_0();
          v108 = OUTLINED_FUNCTION_18_1();
          OUTLINED_FUNCTION_28_2(v108);
          OUTLINED_FUNCTION_1_2(7.2225e-34);
          [v105 coordinate];
          v109 = sub_23B50D4D4();
          OUTLINED_FUNCTION_47(v109, v110);
          OUTLINED_FUNCTION_43_0();
          *(v32 + 14) = v102;

          OUTLINED_FUNCTION_10_1();
          _os_log_impl(v111, v112, v113, v114, v115, 0x16u);
          OUTLINED_FUNCTION_21_3();
          OUTLINED_FUNCTION_20_1();
        }

        else
        {
        }

        v468 = v773;
        v773[3] = &type metadata for WeatherAvailability;
        v469 = 515;
LABEL_162:
        *v468 = v469;
        v501 = 3;
        goto LABEL_177;
      }

      v237 = v748;
      (*(v740 + 32))(v748, v84, v102);
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_280B43440);
      }

      v238 = sub_23B50CDF4();
      v239 = OUTLINED_FUNCTION_29_2(v238, qword_280B4E9D8);
      v772 = v84;
      v240 = sub_23B50CDD4();
      v241 = sub_23B50D4C4();
      if (OUTLINED_FUNCTION_17_0(v241))
      {
        OUTLINED_FUNCTION_46_0();
        v242 = OUTLINED_FUNCTION_18_1();
        v775 = v242;
        OUTLINED_FUNCTION_1_2(7.2225e-34);
        [v239 coordinate];
        v243 = sub_23B50D4D4();
        v40 = OUTLINED_FUNCTION_47(v243, v244);

        *(v237 + 14) = v40;

        _os_log_impl(&dword_23B38D000, v240, v63, "Successfully built weather alerts; location=%{private,mask.hash}s", v237, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v242);
        v102 = v754;
        OUTLINED_FUNCTION_38();
        v237 = v748;
        OUTLINED_FUNCTION_38();
      }

      else
      {
      }

      v341 = v773;
      v470 = v741;
      sub_23B50BA04();
      sub_23B50CC64();
      OUTLINED_FUNCTION_64_0();
      v471(v60, v470);
      if (v40 != 2 && (v60 & 1) != 0)
      {
        v472 = sub_23B50CDD4();
        v473 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_26_1(v473))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_11_1();
          _os_log_impl(v474, v475, v476, v477, v478, 2u);
          OUTLINED_FUNCTION_16_1();
        }

        v237 = v748;
      }

      v479 = v774;
      v480 = sub_23B3F42E0();
      if (!v479)
      {
        v646 = v480;
        v341[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EB8, &unk_23B519380);
        *v341 = v646;
        (*(v740 + 8))(v237, v102);
        return;
      }

      v481 = v239;
      v482 = v479;
      v483 = v481;
      v484 = v479;
      v485 = sub_23B50CDD4();
      v486 = sub_23B50D4B4();
      if (OUTLINED_FUNCTION_15_2(v486))
      {
        OUTLINED_FUNCTION_42_0();
        v487 = OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_28_2(v487);
        OUTLINED_FUNCTION_2_7(7.2226e-34);
        [v483 coordinate];
        v488 = sub_23B50D4D4();
        OUTLINED_FUNCTION_50(v488, v489);
        v774 = 0;
        OUTLINED_FUNCTION_23_1();

        *(v237 + 14) = 0;

        OUTLINED_FUNCTION_39_0();
        swift_getErrorValue();
        OUTLINED_FUNCTION_7_4();
        MEMORY[0x28223BE20](v490);
        OUTLINED_FUNCTION_27();
        v492 = OUTLINED_FUNCTION_12_3(v491);
        v493(v492);
        v494 = OUTLINED_FUNCTION_71_0();
        OUTLINED_FUNCTION_49_0(v494, v495);
        OUTLINED_FUNCTION_43_0();
        *(v237 + 24) = v102;

        OUTLINED_FUNCTION_25_1();
        _os_log_impl(v496, v497, v498, v499, v500, 0x20u);
        OUTLINED_FUNCTION_63_0();
        v341 = v773;
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_16_1();

        (*(v740 + 8))(v748, v754);
      }

      else
      {

        (*(v740 + 8))(v748, v102);
      }

      goto LABEL_220;
    case 0xCu:
      v131 = OUTLINED_FUNCTION_44_0();
      v132 = v753;
      OUTLINED_FUNCTION_51(v131, v133, v753);
      if (v88)
      {
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1(&qword_280B43440);
        }

        v134 = sub_23B50CDF4();
        v135 = OUTLINED_FUNCTION_29_2(v134, qword_280B4E9D8);
        v136 = sub_23B50CDD4();
        v137 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_15_2(v137))
        {
LABEL_70:
          OUTLINED_FUNCTION_46_0();
          v229 = OUTLINED_FUNCTION_18_1();
          OUTLINED_FUNCTION_28_2(v229);
          OUTLINED_FUNCTION_1_2(7.2225e-34);
          [v135 coordinate];
          v230 = sub_23B50D4D4();
          OUTLINED_FUNCTION_47(v230, v231);
          OUTLINED_FUNCTION_43_0();
          *(v32 + 14) = v80;

          OUTLINED_FUNCTION_10_1();
          _os_log_impl(v232, v233, v234, v235, v236, 0x16u);
          OUTLINED_FUNCTION_21_3();
          OUTLINED_FUNCTION_20_1();
        }

        else
        {
LABEL_71:
        }

        v169 = v773;
        v168 = 0uLL;
LABEL_73:
        *v169 = v168;
        *(v169 + 1) = v168;
      }

      else
      {
        v259 = v746;
        v260 = OUTLINED_FUNCTION_36_0();
        v261(v260);
        v262 = v774;
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1(&qword_280B43440);
        }

        v263 = sub_23B50CDF4();
        v264 = OUTLINED_FUNCTION_37_0(v263, qword_280B4E9D8);
        v265 = OUTLINED_FUNCTION_56();
        v266 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_17_0(v266))
        {
          OUTLINED_FUNCTION_46_0();
          v267 = OUTLINED_FUNCTION_27_1();
          OUTLINED_FUNCTION_34_2(v267);
          OUTLINED_FUNCTION_4_7(7.2225e-34);
          [v32 coordinate];
          v268 = sub_23B50D4D4();
          OUTLINED_FUNCTION_50(v268, v269);
          OUTLINED_FUNCTION_23_1();

          *(v53 + 14) = v259;
          v259 = v746;
          v262 = v774;

          OUTLINED_FUNCTION_13_2(&dword_23B38D000, v270, v271, "Successfully built weather change; location=%{private,mask.hash}s");
          OUTLINED_FUNCTION_19_1();
          v132 = v753;
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_14_3();
        }

        else
        {
        }

        v531 = OUTLINED_FUNCTION_66();
        v532 = type metadata accessor for WeatherChanges(v531);
        OUTLINED_FUNCTION_62(v532);
        OUTLINED_FUNCTION_54();
        sub_23B3AF598();
        v310 = OUTLINED_FUNCTION_70();
        if (v4)
        {
          __swift_deallocate_boxed_opaque_existential_0(v53);
          v533 = v32;
          OUTLINED_FUNCTION_57_0();
          v534 = v265;
          OUTLINED_FUNCTION_61();
          v535 = sub_23B50CDD4();
          v536 = sub_23B50D4B4();
          if (OUTLINED_FUNCTION_26_1(v536))
          {
            OUTLINED_FUNCTION_42_0();
            v537 = OUTLINED_FUNCTION_22_0();
            OUTLINED_FUNCTION_45_2(v537);
            OUTLINED_FUNCTION_2_7(7.2226e-34);
            [v63 coordinate];
            v538 = sub_23B50D4D4();
            OUTLINED_FUNCTION_47(v538, v539);
            OUTLINED_FUNCTION_43_0();
            *(v40 + 14) = v262;

            OUTLINED_FUNCTION_39_0();
            swift_getErrorValue();
            OUTLINED_FUNCTION_7_4();
            MEMORY[0x28223BE20](v540);
            v542 = OUTLINED_FUNCTION_3_2(v541, v724);
            v543(v542);
            v544 = OUTLINED_FUNCTION_60_0();
            OUTLINED_FUNCTION_30_1(v544, v545);
            OUTLINED_FUNCTION_59_0();
            OUTLINED_FUNCTION_58();

            OUTLINED_FUNCTION_11_1();
            _os_log_impl(v546, v547, v548, v549, v550, 0x20u);
            OUTLINED_FUNCTION_31_0();
            OUTLINED_FUNCTION_14_3();
            OUTLINED_FUNCTION_16_1();

            v551 = sub_23B3E3D54();
            v552 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v551);
            OUTLINED_FUNCTION_9_1(v552, v553);

            (*(v739 + 8))(v746, v753);
            return;
          }

          v671 = sub_23B3E3D54();
          v672 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v671);
          OUTLINED_FUNCTION_9_1(v672, v673);

          v309 = *(v739 + 8);
          v310 = v746;
LABEL_207:
          v455 = v132;
        }

        else
        {
          v653 = v739;
LABEL_198:
          v309 = *(v653 + 8);
          v455 = v132;
        }

LABEL_199:
        v309(v310, v455);
      }

      return;
    case 0xDu:
      v195 = v755;
      sub_23B3E3DA8(v84, v755, &qword_27E131E90, &unk_23B5101F0);
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_280B43440);
      }

      v196 = sub_23B50CDF4();
      v197 = OUTLINED_FUNCTION_29_2(v196, qword_280B4E9D8);
      v198 = sub_23B50CDD4();
      v199 = sub_23B50D4C4();
      if (OUTLINED_FUNCTION_15_2(v199))
      {
        OUTLINED_FUNCTION_46_0();
        v200 = OUTLINED_FUNCTION_18_1();
        OUTLINED_FUNCTION_28_2(v200);
        OUTLINED_FUNCTION_1_2(7.2225e-34);
        [v197 coordinate];
        v201 = sub_23B50D4D4();
        OUTLINED_FUNCTION_47(v201, v202);
        OUTLINED_FUNCTION_43_0();
        *(v32 + 14) = v80;

        OUTLINED_FUNCTION_10_1();
        _os_log_impl(v203, v204, v205, v206, v207, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v195);
        v195 = v755;
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_20_1();
      }

      else
      {
      }

      v408 = v773;
      v208 = v735;
      sub_23B3BFA24();
      v409 = type metadata accessor for HistoricalComparisons(0);
      OUTLINED_FUNCTION_51(v208, 1, v409);
      if (v88)
      {
        sub_23B398890(v195, &qword_27E131E90, &unk_23B5101F0);
        v410 = &qword_27E131E88;
        v411 = &unk_23B519360;
LABEL_140:
        sub_23B398890(v208, v410, v411);
        *v408 = 0u;
        *(v408 + 1) = 0u;
      }

      else
      {
        v408[3] = v409;
        v412 = __swift_allocate_boxed_opaque_existential_0(v408);
        sub_23B3CE55C(v208, v412, type metadata accessor for HistoricalComparisons);
        v413 = &qword_27E131E90;
        v414 = &unk_23B5101F0;
        v415 = v195;
LABEL_120:
        sub_23B398890(v415, v413, v414);
      }

      return;
    default:
      v85 = OUTLINED_FUNCTION_44_0();
      v86 = v749;
      OUTLINED_FUNCTION_51(v85, v87, v749);
      if (v88)
      {
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1(&qword_280B43440);
        }

        v89 = sub_23B50CDF4();
        v90 = OUTLINED_FUNCTION_29_2(v89, qword_280B4E9D8);
        v91 = sub_23B50CDD4();
        v92 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_15_2(v92))
        {
          OUTLINED_FUNCTION_46_0();
          v93 = OUTLINED_FUNCTION_18_1();
          OUTLINED_FUNCTION_28_2(v93);
          OUTLINED_FUNCTION_1_2(7.2225e-34);
          [v90 coordinate];
          v94 = sub_23B50D4D4();
          OUTLINED_FUNCTION_47(v94, v95);
          OUTLINED_FUNCTION_43_0();
          *(v32 + 14) = v80;

          OUTLINED_FUNCTION_10_1();
          _os_log_impl(v96, v97, v98, v99, v100, 0x16u);
          OUTLINED_FUNCTION_21_3();
          OUTLINED_FUNCTION_20_1();
        }

        else
        {
        }

        v468 = v773;
        v773[3] = &type metadata for WeatherAvailability;
        *v468 = 771;
        v501 = 2;
LABEL_177:
        *(v468 + 2) = v501;
      }

      else
      {
        v337 = v730;
        v338 = v747;
        (*(v730 + 32))(v747, v84, v86);
        sub_23B50BAD4();
        sub_23B50CC64();
        OUTLINED_FUNCTION_64_0();
        v339(v63, v741);
        v340 = v774;
        if (v338 != 2 && (v63 & 1) != 0)
        {
          v341 = v773;
          if (qword_280B43440 != -1)
          {
            OUTLINED_FUNCTION_0_1(&qword_280B43440);
          }

          v342 = sub_23B50CDF4();
          __swift_project_value_buffer(v342, qword_280B4E9D8);
          v343 = sub_23B50CDD4();
          v344 = sub_23B50D4C4();
          if (os_log_type_enabled(v343, v344))
          {
            v345 = swift_slowAlloc();
            *v345 = 0;
            _os_log_impl(&dword_23B38D000, v343, v344, "Air quality data temporarily unavailable", v345, 2u);
            OUTLINED_FUNCTION_20_1();
          }

          v346 = OUTLINED_FUNCTION_32_0();
          goto LABEL_219;
        }

        sub_23B3C5D7C(v725, v53);
        v443 = v729;
        OUTLINED_FUNCTION_51(v53, 1, v729);
        if (v88)
        {
          sub_23B398890(v53, &qword_27E131EA8, &qword_23B5194F0);
          if (qword_280B43440 != -1)
          {
            OUTLINED_FUNCTION_0_1(&qword_280B43440);
          }

          v444 = sub_23B50CDF4();
          v445 = OUTLINED_FUNCTION_29_2(v444, qword_280B4E9D8);
          v446 = sub_23B50CDD4();
          v447 = sub_23B50D4B4();
          if (OUTLINED_FUNCTION_15_2(v447))
          {
            OUTLINED_FUNCTION_46_0();
            v772 = OUTLINED_FUNCTION_18_1();
            v775 = v772;
            OUTLINED_FUNCTION_1_2(7.2225e-34);
            [v445 coordinate];
            v448 = sub_23B50D4D4();
            OUTLINED_FUNCTION_47(v448, v449);
            OUTLINED_FUNCTION_43_0();
            *(v32 + 14) = v337;

            OUTLINED_FUNCTION_10_1();
            _os_log_impl(v450, v451, v452, v453, v454, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v772);
            OUTLINED_FUNCTION_16_1();
            OUTLINED_FUNCTION_20_1();

            (*(v337 + 8))(v747, v749);
          }

          else
          {

            v686 = OUTLINED_FUNCTION_32_0();
            v687(v686);
          }

          v341 = v773;
          goto LABEL_220;
        }

        (*(v726 + 32))(v728, v53, v443);
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1(&qword_280B43440);
        }

        v654 = sub_23B50CDF4();
        v655 = OUTLINED_FUNCTION_37_0(v654, qword_280B4E9D8);
        v656 = sub_23B50CDD4();
        v657 = sub_23B50D4C4();
        v658 = OUTLINED_FUNCTION_17_0(v657);
        v772 = v338;
        if (v658)
        {
          v659 = OUTLINED_FUNCTION_46_0();
          v660 = OUTLINED_FUNCTION_42_0();
          OUTLINED_FUNCTION_34_2(v660);
          OUTLINED_FUNCTION_2_7(7.2225e-34);
          [v655 coordinate];
          v661 = sub_23B50D4D4();
          OUTLINED_FUNCTION_50(v661, v662);
          OUTLINED_FUNCTION_23_1();
          v337 = v730;

          *(v659 + 14) = v340;
          v340 = v774;

          OUTLINED_FUNCTION_25_1();
          _os_log_impl(v663, v664, v665, v666, v667, 0x16u);
          OUTLINED_FUNCTION_19_1();
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_16_1();
        }

        else
        {
        }

        v341 = v773;
        v688 = v724;
        sub_23B3B5B7C();
        if (v340)
        {
          v689 = v655;
          v690 = v340;
          v691 = v689;
          v692 = v340;
          v693 = sub_23B50CDD4();
          v694 = sub_23B50D4B4();
          if (OUTLINED_FUNCTION_15_2(v694))
          {
            v695 = OUTLINED_FUNCTION_42_0();
            v696 = swift_slowAlloc();
            OUTLINED_FUNCTION_28_2(v696);
            OUTLINED_FUNCTION_1_2(7.2226e-34);
            [v691 coordinate];
            v697 = sub_23B50D4D4();
            OUTLINED_FUNCTION_50(v697, v698);
            v774 = 0;
            OUTLINED_FUNCTION_23_1();

            *(v695 + 14) = 0;

            *(v695 + 22) = 2082;
            swift_getErrorValue();
            OUTLINED_FUNCTION_7_4();
            MEMORY[0x28223BE20](v699);
            OUTLINED_FUNCTION_27();
            v701 = OUTLINED_FUNCTION_12_3(v700);
            v702(v701);
            v703 = OUTLINED_FUNCTION_71_0();
            OUTLINED_FUNCTION_49_0(v703, v704);
            OUTLINED_FUNCTION_43_0();
            *(v695 + 24) = v337;

            OUTLINED_FUNCTION_10_1();
            _os_log_impl(v705, v706, v707, v708, v709, 0x20u);
            OUTLINED_FUNCTION_63_0();
            v341 = v773;
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_20_1();

            v710 = OUTLINED_FUNCTION_35_1();
            v711(v710);
            (*(v730 + 8))(v747, v749);
LABEL_220:
            *v341 = 0u;
            *(v341 + 1) = 0u;
            return;
          }

          v717 = OUTLINED_FUNCTION_35_1();
          v718(v717);
          v348 = *(v337 + 8);
          v346 = v747;
          v347 = v749;
LABEL_219:
          v348(v346, v347);
          goto LABEL_220;
        }

        v712 = type metadata accessor for AirQuality(0);
        OUTLINED_FUNCTION_51(v688, 1, v712);
        if (v88)
        {
          v713 = OUTLINED_FUNCTION_35_1();
          v714(v713);
          v715 = OUTLINED_FUNCTION_32_0();
          v716(v715);
          v650 = &qword_27E131C78;
          v651 = &qword_23B50ED40;
          v652 = v688;
LABEL_217:
          sub_23B398890(v652, v650, v651);
          *v341 = 0u;
          *(v341 + 1) = 0u;
        }

        else
        {
          v341[3] = v712;
          v719 = __swift_allocate_boxed_opaque_existential_0(v341);
          sub_23B3CE55C(v688, v719, type metadata accessor for AirQuality);
          v720 = OUTLINED_FUNCTION_35_1();
          v721(v720);
          v722 = OUTLINED_FUNCTION_32_0();
          v723(v722);
        }
      }

      return;
  }
}

uint64_t OUTLINED_FUNCTION_250_1()
{
}

uint64_t OUTLINED_FUNCTION_46_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46_5()
{

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_46_6(uint64_t a1)
{

  return sub_23B50D834();
}

uint64_t OUTLINED_FUNCTION_46_7()
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_19_3(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_23B3F054C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_19_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 72) = a2;
  *(v3 - 104) = a1;
  result = 0;
  *(v3 - 120) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t a1)
{
  *(v1 - 104) = a1;
}

uint64_t OUTLINED_FUNCTION_19_8()
{

  return sub_23B398890(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_19_10()
{

  return sub_23B43EBE4();
}

uint64_t OUTLINED_FUNCTION_19_12()
{
  v2 = MEMORY[0x277D7ABF8];

  return sub_23B48712C(v0, v2);
}

void OUTLINED_FUNCTION_19_14(uint64_t a1@<X8>)
{
  *(a1 + 16) = 2;
  v3 = v1 + *(v2 + 40);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_19_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_18@<X0>(char a3@<W8>)
{
  *(v3 - 80) = a3;

  return sub_23B50D7A4();
}

uint64_t OUTLINED_FUNCTION_19_20()
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_19_21(uint64_t a1, uint64_t a2)
{

  return sub_23B50D734();
}

void OUTLINED_FUNCTION_254(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_254_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_254_1()
{

  return swift_task_alloc();
}

void sub_23B3ADF24(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  sub_23B39D980(a5);
  if (a3)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = *a1++;
      v16 = type metadata accessor for WeatherQuery(0, v13, v10, v11);
      v23[1] = v23;
      OUTLINED_FUNCTION_5();
      v18 = v17;
      OUTLINED_FUNCTION_2_1();
      v20 = MEMORY[0x28223BE20](v19);
      v22 = v23 - v21;
      (*(v18 + 16))(v23 - v21, v15, v16, v20);
      sub_23B39EEA0(v22, a2, a5, v13);
      (*(v18 + 8))(v22, v16);
      --a3;
    }

    while (a3);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B3AE080(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50AD24();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void OUTLINED_FUNCTION_253(void *a1@<X8>)
{
  v3 = *(v1 - 256);
  v4 = *(v2 - 392);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t OUTLINED_FUNCTION_253_0()
{

  return sub_23B50AA24();
}

uint64_t OUTLINED_FUNCTION_253_1()
{

  return swift_task_alloc();
}

uint64_t sub_23B3AE1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

__n128 OUTLINED_FUNCTION_151_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(v11 + 184) = a1;
  *(a1 + 16) = v13;
  result = a10;
  *(a1 + 24) = a10;
  *(a1 + 40) = v14;
  *(a1 + 48) = v12;
  *(a1 + 56) = v10;
  return result;
}

unint64_t sub_23B3AE2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_23B50D834() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_23B3AE358(uint64_t a1, uint64_t a2)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_21_5();
  return sub_23B3A7108(a1, a2, v2 + v7, *(v2 + v5), *(v2 + v6));
}

uint64_t OUTLINED_FUNCTION_41_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_41_5@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = v1;
  *(v2 - 136) = a1;

  return type metadata accessor for WeatherMetadata(0);
}

uint64_t OUTLINED_FUNCTION_41_6@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_23B39E56C(v5 + a3, v4 + v3, a1, a2);
}

void OUTLINED_FUNCTION_21_3()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x23EE9E260);
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return sub_23B398890(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_21_8(uint64_t a1)
{

  return sub_23B398890(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_21_9()
{

  return sub_23B50D824();
}

uint64_t OUTLINED_FUNCTION_21_12()
{

  return sub_23B398890(v2 - 208, v1, v0);
}

void OUTLINED_FUNCTION_21_13()
{
  v2 = (v0 + v1[14]);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + v1[15]) = 0;
  *(v0 + v1[16]) = 0;
}

void OUTLINED_FUNCTION_21_14(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = v2;
}

uint64_t OUTLINED_FUNCTION_21_15(uint64_t a1, uint64_t a2)
{

  return sub_23B50D794();
}

void sub_23B3AE65C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23B3AE984(0, *(v1 + 16) + 1, 1, v1);
    *v0 = v3;
  }
}

uint64_t OUTLINED_FUNCTION_23_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_23_11()
{

  return type metadata accessor for MinuteSummary(0);
}

uint64_t OUTLINED_FUNCTION_23_12(uint64_t a1)
{

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_23_16()
{

  return sub_23B50D0E4();
}

id OUTLINED_FUNCTION_29_2(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
  v3 = *(v2 + 376);

  return v3;
}

uint64_t OUTLINED_FUNCTION_29_4(uint64_t a1, uint64_t a2)
{

  return sub_23B50D1C4();
}

uint64_t OUTLINED_FUNCTION_29_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_23B50D6D4();
}

uint64_t OUTLINED_FUNCTION_29_9()
{

  return type metadata accessor for Weather(0);
}

void OUTLINED_FUNCTION_29_10(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_29_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_29_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_23B50D734();
}

void sub_23B3AE984(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_18();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A10, &unk_23B5268C8);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[v9] <= v13)
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }
}

uint64_t sub_23B3AEA68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23B3AEAD8(uint64_t a1)
{
  v2 = *(*v1 + 3);
  if (a1 + 1 > (v2 >> 1))
  {
    sub_23B3AE984(v2 > 1, a1 + 1, 1, *v1);
    *v1 = v3;
  }
}

id OUTLINED_FUNCTION_37_0(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
  v3 = *(v2 + 376);

  return v3;
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1, uint64_t a2)
{

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_37_10()
{
  __swift_storeEnumTagSinglePayload(v1 + *(v0 + 44), 1, 1, v3);
  v4 = v1 + *(v0 + 48);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_37_11()
{

  return sub_23B50C204();
}

uint64_t OUTLINED_FUNCTION_37_12(uint64_t a1)
{

  return sub_23B50D134();
}

uint64_t sub_23B3AECA0(char **a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = sub_23B50AD24();
  v8 = OUTLINED_FUNCTION_28_0(v7);
  if (v5 == 1)
  {
    v9 = OUTLINED_FUNCTION_230_0();
    TupleTypeMetadata = type metadata accessor for WeatherQuery(v9, v10, v11, v12);
  }

  else
  {
    v27 = a2;
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_27();
    v18 = v17 - v16;
    for (i = 0; v5 != i; ++i)
    {
      *(v18 + 8 * i) = type metadata accessor for WeatherQuery(255, *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8 * i), v14, v15);
    }

    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a2 = v27;
  }

  OUTLINED_FUNCTION_28_0(TupleTypeMetadata);
  v22 = (v21 + *(v20 + 80) + 8) & ~*(v20 + 80);
  v24 = v2 + ((*(v23 + 64) + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_23B3A754C(a1, a2, v2 + v25, *(v2 + v21), v2 + v22, *v24, *(v24 + 8), v5, v6);
}

uint64_t *OUTLINED_FUNCTION_53(uint64_t a1)
{
  v3 = *(v1 + 392);
  v3[3] = a1;

  return __swift_allocate_boxed_opaque_existential_0(v3);
}

uint64_t OUTLINED_FUNCTION_53_0()
{

  return sub_23B3BAB5C();
}

uint64_t OUTLINED_FUNCTION_53_3(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_23B3AEEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherServiceOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_71_0()
{

  return sub_23B50D184();
}

uint64_t OUTLINED_FUNCTION_71_1()
{

  return sub_23B3F04F8();
}

uint64_t OUTLINED_FUNCTION_28_5()
{

  return type metadata accessor for WatchWeather(0);
}

uint64_t OUTLINED_FUNCTION_28_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_23B50D734();
}

void OUTLINED_FUNCTION_20_1()
{

  JUMPOUT(0x23EE9E260);
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return sub_23B50D7F4();
}

BOOL OUTLINED_FUNCTION_20_7()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_20_9(uint64_t a1, uint64_t a2)
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_20_11()
{

  return type metadata accessor for WeatherStatisticsModel(0);
}

void OUTLINED_FUNCTION_20_12()
{

  JUMPOUT(0x23EE9D460);
}

uint64_t OUTLINED_FUNCTION_20_14(int *a1)
{
  v8 = (v6 + a1[14]);
  *v8 = v5;
  v8[1] = v4;
  *(v6 + a1[15]) = v3;
  *(v6 + a1[16]) = v2;
  v9 = v6 + a1[13];

  return sub_23B3CA20C(v1, v9);
}

void OUTLINED_FUNCTION_20_15()
{
  v2 = (v0 + *(v1 + 40));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_20_18(uint64_t a1, uint64_t a2)
{

  return sub_23B50D6D4();
}

BOOL sub_23B3AF288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = sub_23B50B624();
    v8 = v7;
    if (v6 == sub_23B50B624() && v8 == v9)
    {

      return v4 != 0;
    }

    v11 = sub_23B50D834();

    ++v3;
  }

  while ((v11 & 1) == 0);
  return v4 != 0;
}

uint64_t sub_23B3AF34C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_23B3AF3B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 253)
    {
      *(a1 + a4[9] + 16) = a2 + 2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F70, &unk_23B5192B0);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[11];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F50, &qword_23B50F288);
      v14 = a4[12];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t OUTLINED_FUNCTION_63_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_55_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_55_5()
{

  return sub_23B4FB78C();
}

void sub_23B3AF598()
{
  OUTLINED_FUNCTION_107();
  v3 = v2;
  v43 = v4;
  sub_23B50CCA4();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v46 = v6;
  v7 = OUTLINED_FUNCTION_24_0();
  v8 = type metadata accessor for WeatherMetadata(v7);
  v9 = OUTLINED_FUNCTION_3(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v45 = v10;
  v11 = OUTLINED_FUNCTION_24_0();
  v12 = type metadata accessor for WeatherChange(v11);
  v13 = OUTLINED_FUNCTION_28_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_153();
  v47 = sub_23B50C354();
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_106_0();
  v17 = sub_23B50BA24();
  v18 = 0;
  v48 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v48 == v18)
    {

      v31 = v46;
      sub_23B50BA34();
      sub_23B3AFEEC(v46, v32, v33, v34, v35, v36, v37, v38, v43, v45, v46, v3);
      if (v0)
      {
        OUTLINED_FUNCTION_234();
        v39(v31);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_234();
      v42(v31);
      *v44 = v19;
      type metadata accessor for WeatherChanges(0);
      OUTLINED_FUNCTION_1_5();
      sub_23B3B0608();
LABEL_14:
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_105();
      return;
    }

    if (v18 >= *(v17 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_52_0();
    (*(v15 + 16))(v1, v17 + v20 + *(v15 + 72) * v18, v47);
    sub_23B3F7260();
    if (v0)
    {
      v40 = OUTLINED_FUNCTION_237();
      v41(v40);

LABEL_13:

      goto LABEL_14;
    }

    v21 = OUTLINED_FUNCTION_237();
    v22(v21);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = OUTLINED_FUNCTION_126();
      sub_23B4F58CC(v25, v26, v27, v19);
      v19 = v28;
    }

    v24 = *(v19 + 16);
    v23 = *(v19 + 24);
    if (v24 >= v23 >> 1)
    {
      v29 = OUTLINED_FUNCTION_70_1(v23);
      sub_23B4F58CC(v29, v24 + 1, 1, v19);
      v19 = v30;
    }

    *(v19 + 16) = v24 + 1;
    OUTLINED_FUNCTION_23_3();
    sub_23B3B0608();
    ++v18;
  }

  __break(1u);
}

uint64_t sub_23B3AF918()
{
  OUTLINED_FUNCTION_220();
  v4 = OUTLINED_FUNCTION_265(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_65();
  v7(v6);
  return v0;
}

void sub_23B3AF994(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[11] + 8) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[14];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[15];
        }

        else
        {
          type metadata accessor for PrecipitationAmount(0);
          OUTLINED_FUNCTION_8_0();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[17];
          }

          else
          {
            type metadata accessor for PrecipitationAmountByType(0);
            OUTLINED_FUNCTION_8_0();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[19];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
              OUTLINED_FUNCTION_8_0();
              if (*(v24 + 84) == a3)
              {
                v10 = v23;
                v14 = a4[29];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
                OUTLINED_FUNCTION_8_0();
                if (*(v26 + 84) == a3)
                {
                  v10 = v25;
                  v14 = a4[32];
                }

                else
                {
                  type metadata accessor for Wind(0);
                  OUTLINED_FUNCTION_8_0();
                  if (*(v28 + 84) == a3)
                  {
                    v10 = v27;
                    v14 = a4[33];
                  }

                  else
                  {
                    v10 = type metadata accessor for WeatherMetadata(0);
                    v14 = a4[34];
                  }
                }
              }
            }
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_23B3AFCB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[10] + 8) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[11];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[13];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[14];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
          OUTLINED_FUNCTION_8_0();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[22];
          }

          else
          {
            type metadata accessor for Wind(0);
            OUTLINED_FUNCTION_8_0();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[23];
            }

            else
            {
              v10 = type metadata accessor for WeatherMetadata(0);
              v14 = a4[24];
            }
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_23B3AFEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_201();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v17);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_117();
  v19 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_49();
  sub_23B50CC84();
  sub_23B50CC14();
  sub_23B50CC74();
  sub_23B50CC94();
  sub_23B50AB34();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  OUTLINED_FUNCTION_229();
  sub_23B3B00E4(0, 0, v28);
  sub_23B398890(v15, &qword_27E131FC0, &qword_23B515170);
  if (v13)
  {
    v29 = *(v21 + 8);
    v29(v14, v19);
    v29(v16, v19);
  }

  else
  {
    v30 = *(type metadata accessor for WeatherMetadata(0) + 32);
    *(v12 + v30) = 0;
    v31 = *(v21 + 32);
    v31(v12, v16, v19);
    v32 = OUTLINED_FUNCTION_224();
    (v31)(v32);
    OUTLINED_FUNCTION_223();

    *(v12 + v30) = a12;
  }

  OUTLINED_FUNCTION_158();
}

uint64_t sub_23B3B00E4@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = a3;
  v29 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  MEMORY[0x28223BE20](v7 - 8);
  v28[2] = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v28 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v28 - v20;
  v22 = a4;
  if (!a4)
  {
    result = sub_23B50CC44();
    if (!v22)
    {
      v27 = 0;
      goto LABEL_8;
    }

    v30 = result;
  }

  v28[0] = v22;

  sub_23B3C4944(v21);
  sub_23B50CC34();
  v28[1] = v5;
  if (v24)
  {
    sub_23B50AB04();
  }

  else
  {
    v25 = sub_23B50AB34();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v25);
  }

  sub_23B3B81F8();
  sub_23B3B81F8();
  sub_23B3B81F8();
  sub_23B3B81F8();
  type metadata accessor for WeatherAttribution.Storage(0);
  swift_allocObject();
  sub_23B3C4BA8();
  v27 = v26;
  sub_23B398890(v12, &qword_27E131FC0, &qword_23B515170);
  sub_23B398890(v15, &qword_27E131FC0, &qword_23B515170);
  sub_23B398890(v18, &qword_27E131FC0, &qword_23B515170);
  result = sub_23B398890(v21, &qword_27E131FC0, &qword_23B515170);
LABEL_8:
  *v29 = v27;
  return result;
}

uint64_t type metadata accessor for WeatherAttribution.Storage(uint64_t a1)
{
  result = qword_280B43330;
  if (!qword_280B43330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B3B03F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WeatherMetadata(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_23B3B0498(uint64_t a1)
{
  sub_23B50AB34();
  if (v1 <= 0x3F)
  {
    sub_23B39AA44(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void *sub_23B3B0588(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherMetadata(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3B0608()
{
  OUTLINED_FUNCTION_220();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_65();
  v3(v2);
  return v0;
}

uint64_t sub_23B3B0660()
{
  v1 = OUTLINED_FUNCTION_67();
  v2(v1);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_65();
  v4(v3);
  return v0;
}

uint64_t sub_23B3B06B0(uint64_t a1)
{

  if (!sub_23B3AF288(5, a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B3AE984(0, *(a1 + 16) + 1, 1, a1);
      a1 = v9;
    }

    v3 = *(a1 + 16);
    v2 = *(a1 + 24);
    if (v3 >= v2 >> 1)
    {
      sub_23B3AE984(v2 > 1, v3 + 1, 1, a1);
      a1 = v10;
    }

    *(a1 + 16) = v3 + 1;
    *(a1 + v3 + 32) = 5;
  }

  if (!sub_23B3AF288(10, a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B3AE984(0, *(a1 + 16) + 1, 1, a1);
      a1 = v11;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (v5 >= v4 >> 1)
    {
      sub_23B3AE984(v4 > 1, v5 + 1, 1, a1);
      a1 = v12;
    }

    *(a1 + 16) = v5 + 1;
    *(a1 + v5 + 32) = 10;
  }

  if (!sub_23B3AF288(0, a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B3AE984(0, *(a1 + 16) + 1, 1, a1);
      a1 = v13;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_23B3AE984(v6 > 1, v7 + 1, 1, a1);
      a1 = v14;
    }

    *(a1 + 16) = v7 + 1;
    *(a1 + v7 + 32) = 0;
  }

  return a1;
}

BOOL OUTLINED_FUNCTION_113(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_23B3B089C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50AD24();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for WeatherMetadata(0);
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t OUTLINED_FUNCTION_186(uint64_t a1, uint64_t a2)
{

  return sub_23B3B7EA8();
}

void *sub_23B3B09B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherMetadata(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3B0A38(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23B3B0A98()
{
  OUTLINED_FUNCTION_220();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_65();
  v3(v2);
  return v0;
}

uint64_t sub_23B3B0B00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50AD24();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23B3B0BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_140();
  a30 = v36;
  a31 = v37;
  v39 = v38;
  v41 = OUTLINED_FUNCTION_155(v40);
  v42 = type metadata accessor for WeatherMetadata(v41);
  v43 = OUTLINED_FUNCTION_3(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_0();
  v45 = OUTLINED_FUNCTION_35(v44);
  v46 = type metadata accessor for Wind(v45);
  v47 = OUTLINED_FUNCTION_3(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2_0(v49, &v293);
  v280 = v50;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_52();
  v53 = OUTLINED_FUNCTION_35(v52);
  v54 = type metadata accessor for PrecipitationAmount(v53);
  v55 = OUTLINED_FUNCTION_3(v54);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132150, &qword_23B5100E0);
  OUTLINED_FUNCTION_3(v58);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v60);
  v61 = sub_23B50C0E4();
  v62 = OUTLINED_FUNCTION_2_0(v61, &a14);
  v287 = v63;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_2_0(v65, &a24);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2_0(v68, &a22);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_52();
  v295 = v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v72 = OUTLINED_FUNCTION_2_0(v71, &a26);
  v291 = v73;
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132160, &qword_23B510100);
  OUTLINED_FUNCTION_3(v77);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_52();
  v80 = OUTLINED_FUNCTION_35(v79);
  v81 = type metadata accessor for PrecipitationAmountByType(v80);
  v82 = OUTLINED_FUNCTION_3(v81);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_43_2(v89, v90, v91, v92, v93, v94, v95, v96, v261);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_5_1();
  v297 = v98;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_5_1();
  v298 = v100;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_5_1();
  v299 = v102;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_5_1();
  v300 = v104;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_76();
  v301 = v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
  v108 = OUTLINED_FUNCTION_3(v107);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_5_1();
  v302 = v111;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_76();
  v303 = v113;
  OUTLINED_FUNCTION_24_0();
  v114 = sub_23B50CCA4();
  OUTLINED_FUNCTION_5();
  v116 = v115;
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_49();
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v119);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_153();
  v121 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v123 = v122;
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_188_0();
  sub_23B50B414();
  v126 = OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_51(v126, v127, v121);
  v277 = v114;
  if (v128)
  {
    sub_23B50B474();
    sub_23B50CC84();
    (*(v116 + 8))(v35, v114);
    v129 = OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_51(v129, v130, v121);
    v131 = v123;
    if (!v128)
    {
      sub_23B398890(v34, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    (*(v123 + 32))(v33, v34, v121);
    v131 = v123;
  }

  OUTLINED_FUNCTION_98();
  sub_23B3CC400(v39, v132);
  OUTLINED_FUNCTION_97();
  sub_23B3CC400(v39, v133);
  v134 = sub_23B50B3E4();
  sub_23B50B324();
  sub_23B3B250C(v134, v301);

  v135 = sub_23B50B3F4();
  sub_23B50B334();
  sub_23B3B250C(v135, v300);

  v136 = sub_23B50B404();
  sub_23B50B354();
  sub_23B3B250C(v136, v299);

  v137 = sub_23B50B3B4();
  sub_23B50B374();
  sub_23B3B250C(v137, v298);

  v138 = sub_23B50B3C4();
  sub_23B50B384();
  sub_23B3B250C(v138, v297);

  v139 = sub_23B50B3D4();
  sub_23B50B394();
  sub_23B3B250C(v139, v296);

  v290 = v121;
  (*(v131 + 16))(v294, v33, v121);
  sub_23B50B224();
  v141 = v140;
  sub_23B50B2B4();
  v143 = v142;
  sub_23B50B2C4();
  v145 = v144;
  sub_23B50B2F4();
  v270 = v146;
  sub_23B50B2B4();
  v267 = v147;
  sub_23B50B2C4();
  v149 = v148;
  sub_23B50B2F4();
  v151 = v150;
  OUTLINED_FUNCTION_239();
  sub_23B50B254();
  v152 = sub_23B50C064();
  OUTLINED_FUNCTION_73();
  __swift_storeEnumTagSinglePayload(v153, v154, v155, v152);
  sub_23B3B8890(&a21);
  sub_23B398890(v123, &qword_27E132160, &qword_23B510100);
  a18 = a21;
  sub_23B50B254();
  OUTLINED_FUNCTION_73();
  __swift_storeEnumTagSinglePayload(v156, v157, v158, v152);
  v159 = sub_23B50B454();
  sub_23B3B99FC(v123, v159 & 1, v160, v161, v162, v163, v164, v165, v262, v265, v267, v270, v273, v274, v276, v116, v277, v279, v280, v281);
  sub_23B398890(v123, &qword_27E132160, &qword_23B510100);
  v166 = sub_23B50B2E4();
  OUTLINED_FUNCTION_72(v166);
  v285 = objc_opt_self();
  v167 = [v285 celsius];
  v168 = OUTLINED_FUNCTION_128();
  sub_23B3924C0(v168, v169, v170);
  OUTLINED_FUNCTION_204();
  sub_23B50A9B4();
  sub_23B50B464();
  v172 = v171;
  sub_23B50B364();
  sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
  static NSUnitSpeed.wk_millimetersPerHour.getter();
  sub_23B50A9B4();
  v173 = sub_23B50B484();
  OUTLINED_FUNCTION_72(v173);
  v174 = [objc_opt_self() millibars];
  v175 = OUTLINED_FUNCTION_128();
  sub_23B3924C0(v175, v176, v177);
  OUTLINED_FUNCTION_114();
  sub_23B50A9B4();
  OUTLINED_FUNCTION_239();
  sub_23B50B264();
  v178 = OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_51(v178, v179, v288);
  if (v128)
  {
    v180 = OUTLINED_FUNCTION_199();
    v181(v180);
    v182 = OUTLINED_FUNCTION_137();
    OUTLINED_FUNCTION_51(v182, v183, v288);
    if (!v128)
    {
      sub_23B398890(v123, &qword_27E132150, &qword_23B5100E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_199();
    OUTLINED_FUNCTION_231();
    v184();
  }

  sub_23B3CC508(&a20, v152);
  if (v32)
  {
    OUTLINED_FUNCTION_187();
    v185 = OUTLINED_FUNCTION_138();
    v186(v185);
    OUTLINED_FUNCTION_56_1();
    v187(v33);
    OUTLINED_FUNCTION_56_1();
    v188 = OUTLINED_FUNCTION_184();
    v189(v188);
    OUTLINED_FUNCTION_56_1();
    v190 = OUTLINED_FUNCTION_228();
    v191(v190);
    v192 = *(v131 + 8);
    OUTLINED_FUNCTION_182();
    OUTLINED_FUNCTION_226_0();
    v192();
    OUTLINED_FUNCTION_34_3();
    sub_23B3C7314(v296, v193);
    sub_23B3C7314(v297, v288);
    sub_23B3C7314(v298, v288);
    sub_23B3C7314(v299, v288);
    sub_23B3C7314(v300, v288);
    sub_23B3C7314(v301, v288);
    OUTLINED_FUNCTION_81_0();
    sub_23B398890(v194, v195, v196);
    OUTLINED_FUNCTION_81_0();
    sub_23B398890(v197, v198, v199);
    v200 = OUTLINED_FUNCTION_143();
    (v192)(v200, v287 + 8);
  }

  else
  {
    v286 = v143;
    v201 = OUTLINED_FUNCTION_138();
    v202(v201);
    v289 = a20;
    sub_23B50B324();
    sub_23B50B334();
    sub_23B50B354();
    sub_23B50B374();
    sub_23B50B384();
    sub_23B50B394();
    OUTLINED_FUNCTION_194(v203, v204, v205, v206, v207, v203);
    sub_23B50B284();
    sub_23B50B294();
    sub_23B50B2A4();
    sub_23B50B304();
    sub_23B50B314();
    sub_23B50B344();
    OUTLINED_FUNCTION_194(v208, v209, v210, v211, v212, v208);
    sub_23B3BABAC();
    OUTLINED_FUNCTION_134();
    sub_23B3BABAC();
    OUTLINED_FUNCTION_226_0();
    sub_23B3BABAC();
    OUTLINED_FUNCTION_130();
    sub_23B3BABAC();
    OUTLINED_FUNCTION_86();
    sub_23B3BABAC();
    sub_23B3BABAC();
    sub_23B50B3A4();
    sub_23B3C3CA0(v213, 0, &v305);
    v214 = v305;
    HIDWORD(v263) = sub_23B50B454();
    sub_23B50B244();
    v215 = [v285 celsius];
    OUTLINED_FUNCTION_150();
    sub_23B50A9B4();
    v216 = sub_23B50B2D4();
    v217 = [v285 celsius];
    OUTLINED_FUNCTION_144();
    sub_23B50A9B4();
    OUTLINED_FUNCTION_130();
    sub_23B3B81F8();
    sub_23B3B81F8();
    v218 = sub_23B50B444();
    sub_23B3C1284(v218, 0, &v304);
    v219 = v304;
    sub_23B50B234();
    v220 = [objc_opt_self() meters];
    v221 = OUTLINED_FUNCTION_128();
    sub_23B3924C0(v221, v222, v223);
    OUTLINED_FUNCTION_239();
    sub_23B50A9B4();
    sub_23B50B4A4();
    sub_23B50B274();
    sub_23B50B494();
    v224 = OUTLINED_FUNCTION_235();
    sub_23B3B32C4(v224, 0);
    OUTLINED_FUNCTION_163();
    sub_23B50B474();
    sub_23B3AFEEC(v219, v225, v226, v227, v228, v229, v230, v231, v263, v145, v268, v271);
    v232 = OUTLINED_FUNCTION_161();
    v284 = v269 / v232;
    v233 = v149 / v232;
    v234 = v151 / v232;
    v235 = OUTLINED_FUNCTION_161();
    v236 = v141 / v235;
    v237 = v286 / v235;
    v238 = v266 / v235;
    v239 = v272 / v235;
    OUTLINED_FUNCTION_56_1();
    v241 = v172 / v240;
    v242(v219, v278);
    OUTLINED_FUNCTION_34_3();
    sub_23B3C7314(v296, v243);
    sub_23B3C7314(v297, v31);
    sub_23B3C7314(v298, v31);
    sub_23B3C7314(v299, v31);
    sub_23B3C7314(v300, v31);
    sub_23B3C7314(v301, v31);
    sub_23B398890(v302, &qword_27E132168, &qword_23B510108);
    sub_23B398890(v303, &qword_27E132168, &qword_23B510108);
    (*(v131 + 8))(v33, v290);
    v244 = type metadata accessor for CurrentWeather(0);
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v245, v246, v247, v292);
    v303 = v244[30];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v248, v249, v250, v292);
    (*(v131 + 32))(v275, v294, v290);
    *(v275 + v244[5]) = v236;
    *(v275 + v244[6]) = v237;
    *(v275 + v244[7]) = v238;
    *(v275 + v244[8]) = v239;
    v251 = (v275 + v244[9]);
    *v251 = v284;
    v251[1] = v233;
    v251[2] = v234;
    *(v275 + v244[10]) = a18;
    OUTLINED_FUNCTION_253((v275 + v244[11]));
    v252 = *(v291 + 32);
    OUTLINED_FUNCTION_252();
    v252();
    *(v275 + v244[13]) = v241;
    OUTLINED_FUNCTION_157();
    v254(v275 + v253, v295);
    OUTLINED_FUNCTION_157();
    v256(v275 + v255, v293);
    *(v275 + v244[16]) = v289;
    sub_23B3B0608();
    OUTLINED_FUNCTION_132();
    sub_23B3B0608();
    sub_23B3B0608();
    OUTLINED_FUNCTION_131();
    sub_23B3B0608();
    OUTLINED_FUNCTION_164();
    sub_23B3B0608();
    sub_23B3B0608();
    sub_23B3B0608();
    sub_23B3B0608();
    v257 = (v275 + v244[25]);
    *v257 = v214;
    OUTLINED_FUNCTION_179(v257);
    *(v275 + v244[26]) = v264 & 1;
    OUTLINED_FUNCTION_252();
    v252();
    OUTLINED_FUNCTION_252();
    v252();
    sub_23B3B7EA8();
    sub_23B3B7EA8();
    v258 = (v275 + v244[31]);
    *v258 = v219;
    OUTLINED_FUNCTION_179(v258);
    OUTLINED_FUNCTION_157();
    v260(v275 + v259, v283, v282);
    OUTLINED_FUNCTION_15_3();
    sub_23B3B0608();
    OUTLINED_FUNCTION_1_5();
    sub_23B3B0608();
  }

  OUTLINED_FUNCTION_139();
}

uint64_t sub_23B3B250C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_155(a2);
  sub_23B50C7C4();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_64_1();
  sub_23B50C944();
  OUTLINED_FUNCTION_5();
  v153 = v10;
  v154 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_120();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v146 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12();
  v148 = v14;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_1();
  v144 = v17;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_43_2(v19, v20, v21, v22, v23, v24, v25, v26, v135);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_1();
  v142 = v28;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_1();
  v145 = v33;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_190();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_80_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_123();
  v152 = objc_opt_self();
  v38 = [v152 millimeters];
  v39 = OUTLINED_FUNCTION_154();
  sub_23B3924C0(v39, v40, v41);
  sub_23B50A9B4();
  v42 = v146[2];
  OUTLINED_FUNCTION_104();
  v42();
  v147 = v6;
  OUTLINED_FUNCTION_104();
  v42();
  v139 = v3;
  OUTLINED_FUNCTION_104();
  v42();
  OUTLINED_FUNCTION_104();
  v42();
  OUTLINED_FUNCTION_104();
  v42();
  OUTLINED_FUNCTION_104();
  v42();
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_104();
  v42();
  OUTLINED_FUNCTION_104();
  v42();
  OUTLINED_FUNCTION_104();
  v42();
  OUTLINED_FUNCTION_104();
  v42();
  v43 = [v152 millimeters];
  OUTLINED_FUNCTION_247();
  sub_23B50A9B4();
  v44 = *(a1 + 16);
  if (v44)
  {
    v151 = *(v153 + 16);
    OUTLINED_FUNCTION_52_0();
    v47 = v46 + v45;
    v150 = *(v48 + 56);
    while (1)
    {
      v151(v7, v47, v154);
      sub_23B50C924();
      sub_23B50C934();
      sub_23B50C7B4();
      v49 = sub_23B50D194();
      v51 = v50;

      v52 = v49 == 1818845544 && v51 == 0xE400000000000000;
      if (v52 || (OUTLINED_FUNCTION_112(1818845544, 0xE400000000000000) & 1) != 0)
      {
        break;
      }

      v62 = v49 == 0x646578696DLL && v51 == 0xE500000000000000;
      if (v62 || (OUTLINED_FUNCTION_112(0x646578696DLL, 0xE500000000000000) & 1) != 0)
      {

        v63 = [v152 millimeters];
        OUTLINED_FUNCTION_150();
        sub_23B50A9B4();
        v64 = OUTLINED_FUNCTION_58_0();
        v65(v64);
        v66 = OUTLINED_FUNCTION_61_0();
        v67(v66);
        OUTLINED_FUNCTION_178();
        v59 = v147;
        goto LABEL_9;
      }

      v68 = v49 == 0x7469706963657270 && v51 == 0xED00006E6F697461;
      if (v68 || (OUTLINED_FUNCTION_112(0x7469706963657270, 0xED00006E6F697461) & 1) != 0)
      {

LABEL_25:
        v69 = OUTLINED_FUNCTION_58_0();
        v70(v69);
        v71 = OUTLINED_FUNCTION_61_0();
        v72(v71);
        goto LABEL_11;
      }

      v73 = v49 == 1852399986 && v51 == 0xE400000000000000;
      if (v73 || (OUTLINED_FUNCTION_112(1852399986, 0xE400000000000000) & 1) != 0)
      {

        v74 = [v152 millimeters];
        sub_23B50A9B4();
        v75 = OUTLINED_FUNCTION_58_0();
        v76(v75);
        v77 = OUTLINED_FUNCTION_61_0();
        v78(v77);
        OUTLINED_FUNCTION_178();
        v80 = v139;
      }

      else
      {
        v81 = v49 == 0x7465656C73 && v51 == 0xE500000000000000;
        if (!v81 && (OUTLINED_FUNCTION_112(0x7465656C73, 0xE500000000000000) & 1) == 0)
        {
          if (v49 == 2003791475 && v51 == 0xE400000000000000)
          {

LABEL_46:
            sub_23B50C904();
            v94 = v93;
            sub_23B50C914();
            v96 = v95;
            sub_23B50C8F4();
            v98 = v97;
            if (v96 < v94)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132188, &unk_23B510130);
              v99 = swift_allocObject();
              OUTLINED_FUNCTION_246(v99);
              v100 = MEMORY[0x277D839F8];
              *(v101 + 56) = MEMORY[0x277D839F8];
              v102 = MEMORY[0x277D83A80];
              *(v101 + 64) = MEMORY[0x277D83A80];
              *(v101 + 32) = v96;
              *(v101 + 96) = v100;
              *(v101 + 104) = v102;
              *(v101 + 72) = v94;
              MEMORY[0x23EE9B270]("Expected snowfall amount is less than the minimum; expected=%d, minimum=%d", v136, v137);

              v96 = v94;
            }

            if (v98 < v96)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132188, &unk_23B510130);
              v103 = swift_allocObject();
              OUTLINED_FUNCTION_246(v103);
              v104 = MEMORY[0x277D839F8];
              *(v105 + 56) = MEMORY[0x277D839F8];
              v106 = MEMORY[0x277D83A80];
              *(v105 + 64) = MEMORY[0x277D83A80];
              *(v105 + 32) = v98;
              *(v105 + 96) = v104;
              *(v105 + 104) = v106;
              *(v105 + 72) = v96;
              MEMORY[0x23EE9B270]("Maximum snowfall amount is less than the expected amount; maximum=%d, expected=%d", v136, v137);
            }

            v107 = [v152 millimeters];
            sub_23B50A9B4();
            v137 = v146[1];
            v108 = OUTLINED_FUNCTION_36();
            v109(v108);
            v136 = v146[4];
            v110 = OUTLINED_FUNCTION_18_0();
            v111(v110);
            v112 = [v152 millimeters];
            sub_23B50A9B4();
            v113 = OUTLINED_FUNCTION_36();
            v137(v113);
            v136(v140, v148, v11);
            v114 = [v152 millimeters];
            sub_23B50A9B4();
            v115 = OUTLINED_FUNCTION_116();
            v116(v115);
            v136(v141, v148, v11);
            v117 = [v152 millimeters];
            sub_23B50A9B4();
            v118 = OUTLINED_FUNCTION_36();
            v137(v118);
            v136(v142, v148, v11);
            v119 = [v152 millimeters];
            sub_23B50A9B4();
            v120 = OUTLINED_FUNCTION_116();
            v121(v120);
            v136(v143, v148, v11);
            v122 = [v152 millimeters];
            OUTLINED_FUNCTION_150();
            sub_23B50A9B4();
            v123 = OUTLINED_FUNCTION_58_0();
            v124(v123);
            v125 = OUTLINED_FUNCTION_61_0();
            v126(v125);
            v127 = OUTLINED_FUNCTION_116();
            v128(v127);
            v129 = OUTLINED_FUNCTION_18_0();
            (v136)(v129);
            goto LABEL_11;
          }

          v88 = OUTLINED_FUNCTION_112(2003791475, 0xE400000000000000);

          if (v88)
          {
            goto LABEL_46;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132188, &unk_23B510130);
          v89 = swift_allocObject();
          *(v89 + 16) = xmmword_23B50ED30;
          v90 = sub_23B50C7B4();
          v92 = v91;
          *(v89 + 56) = MEMORY[0x277D837D0];
          *(v89 + 64) = sub_23B3FD2D0();
          *(v89 + 32) = v90;
          *(v89 + 40) = v92;
          MEMORY[0x23EE9B270]("Encountered an unknown precipitation type; type=%@", 50, 2, v89);

          goto LABEL_25;
        }

        v82 = [v152 millimeters];
        sub_23B50A9B4();
        v83 = OUTLINED_FUNCTION_58_0();
        v84(v83);
        v85 = OUTLINED_FUNCTION_61_0();
        v86(v85);
        OUTLINED_FUNCTION_178();
        v80 = v145;
      }

      v79(v80, v11);
      v60 = OUTLINED_FUNCTION_65();
LABEL_10:
      v61(v60);
LABEL_11:
      v47 += v150;
      if (!--v44)
      {
        goto LABEL_51;
      }
    }

    v53 = [v152 millimeters];
    OUTLINED_FUNCTION_150();
    sub_23B50A9B4();
    v54 = OUTLINED_FUNCTION_58_0();
    v55(v54);
    v56 = OUTLINED_FUNCTION_61_0();
    v57(v56);
    OUTLINED_FUNCTION_178();
    v59 = v5;
LABEL_9:
    v58(v59, v11);
    v60 = OUTLINED_FUNCTION_146();
    goto LABEL_10;
  }

LABEL_51:
  (v146[1])(v4, v11);
  v130 = type metadata accessor for PrecipitationAmountByType(0);
  v131 = v138 + v130[9];
  v132 = v146[4];
  OUTLINED_FUNCTION_213();
  v132();
  v133 = type metadata accessor for SnowfallAmount(0);
  OUTLINED_FUNCTION_213();
  v132();
  OUTLINED_FUNCTION_213();
  v132();
  (v132)(v131 + v133[7], v142, v11);
  (v132)(v131 + v133[8], v143, v11);
  (v132)(v131 + v133[9], v144, v11);
  (v132)(v138, v5, v11);
  (v132)(v138 + v130[5], v147, v11);
  OUTLINED_FUNCTION_213();
  v132();
  (v132)(v138 + v130[7], v145, v11);
  OUTLINED_FUNCTION_213();
  return (v132)();
}

void sub_23B3B32C4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_159();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_127();
  if (v9)
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v14 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v14, qword_280B4E9D8);
    v15 = sub_23B50CDD4();
    v16 = sub_23B50D4B4();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_66_1();
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Missing required field; field=windSpeed";
    goto LABEL_11;
  }

  if ((v7 & 1) == 0)
  {
    sub_23B3B35B4();
    v29 = v23;
    v24 = [objc_opt_self() degrees];
    type metadata accessor for Wind(0);
    sub_23B3924C0(0, &qword_280B433B0, 0x277CCADA8);
    sub_23B50A9B4();
    [objc_opt_self() kilometersPerHour];
    sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
    sub_23B50A9B4();
    sub_23B3C23EC(v5, v3 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    *v11 = v29;
    sub_23B3B7EA8();
    goto LABEL_14;
  }

  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v19 = sub_23B50CDF4();
  OUTLINED_FUNCTION_88(v19, qword_280B4E9D8);
  v15 = sub_23B50CDD4();
  v16 = sub_23B50D4B4();
  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_66_1();
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Missing required field; field=windDirection";
LABEL_11:
    _os_log_impl(&dword_23B38D000, v15, v16, v18, v17, 2u);
    OUTLINED_FUNCTION_57_1();
    MEMORY[0x23EE9E260]();
  }

LABEL_12:

  v20 = sub_23B3E3D54();
  v21 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v20);
  OUTLINED_FUNCTION_55_1(v21, v22);
LABEL_14:
  OUTLINED_FUNCTION_158();
}

void sub_23B3B35B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_3(v1);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_174();
  v3 = [objc_opt_self() degrees];
  v4 = OUTLINED_FUNCTION_128();
  sub_23B3924C0(v4, v5, v6);
  OUTLINED_FUNCTION_150();
  sub_23B50A9B4();
  sub_23B3C1F7C(v0);
}

void sub_23B3B36A0()
{
  OUTLINED_FUNCTION_107();
  v3 = v0;
  v5 = v4;
  v26 = v6;
  sub_23B50CCA4();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  v8 = OUTLINED_FUNCTION_64_1();
  v9 = type metadata accessor for WeatherMetadata(v8);
  v10 = OUTLINED_FUNCTION_3(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_153();
  sub_23B50C074();
  sub_23B3B3908();
  v12 = v11;

  if (!v1)
  {
    sub_23B50C084();
    sub_23B3AFEEC(v2, v13, v14, v15, v16, v17, v18, v19, v24, v25, v3, v5);
    v20 = OUTLINED_FUNCTION_68_1();
    v21(v20);
    *v26 = v12;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
    OUTLINED_FUNCTION_1_5();
    sub_23B3B0608();
    v23 = (v26 + v22[14]);
    *v23 = 0;
    v23[1] = 0;
    *(v26 + v22[15]) = 0;
    *(v26 + v22[16]) = 0;
    OUTLINED_FUNCTION_121(v26 + v22[17]);
  }

  OUTLINED_FUNCTION_105();
}

void OUTLINED_FUNCTION_297(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 232) = v1;
  *(v2 - 224) = v3;
}

void sub_23B3B3908()
{
  OUTLINED_FUNCTION_107();
  v20 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9(0);
  OUTLINED_FUNCTION_28_0(v10);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_232();
  v12 = *(v8 + 16);
  if (v12)
  {
    v22 = MEMORY[0x277D84F90];
    v5(0, v12, 0);
    v13 = v3(0);
    OUTLINED_FUNCTION_28_0(v13);
    v15 = v8 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v19 = *(v16 + 72);
    while (1)
    {
      v20(v15, &v21);
      if (v6)
      {
        break;
      }

      v6 = 0;
      v18 = *(v22 + 16);
      v17 = *(v22 + 24);
      if (v18 >= v17 >> 1)
      {
        v5(v17 > 1, v18 + 1, 1);
      }

      *(v22 + 16) = v18 + 1;
      OUTLINED_FUNCTION_52_0();
      sub_23B3B0608();
      v15 += v19;
      if (!--v12)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_105();
}

void sub_23B3B3AEC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_18();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    a8(a4 + v24, v15, v20 + v24);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23B3B3D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_140();
  a27 = v33;
  a28 = v34;
  v273 = v35;
  v37 = v36;
  v259 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132050, &qword_23B510140);
  OUTLINED_FUNCTION_3(v39);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_52();
  v42 = OUTLINED_FUNCTION_35(v41);
  v257 = type metadata accessor for DayPartForecast(v42);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  v47 = OUTLINED_FUNCTION_2_0(v46, &v284);
  v266 = v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_76();
  v52 = OUTLINED_FUNCTION_35(v51);
  v53 = type metadata accessor for Wind(v52);
  v54 = OUTLINED_FUNCTION_3(v53);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_0();
  v56 = OUTLINED_FUNCTION_35(v55);
  v57 = type metadata accessor for MoonEvents(v56);
  v58 = OUTLINED_FUNCTION_3(v57);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_0();
  v60 = OUTLINED_FUNCTION_35(v59);
  v61 = type metadata accessor for SunEvents(v60);
  v62 = OUTLINED_FUNCTION_3(v61);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_6_0();
  v64 = OUTLINED_FUNCTION_35(v63);
  v65 = type metadata accessor for PrecipitationAmountByType(v64);
  v66 = OUTLINED_FUNCTION_3(v65);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v69 = OUTLINED_FUNCTION_2_0(v68, &a15);
  v272 = v70;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132190, &qword_23B510148);
  OUTLINED_FUNCTION_3(v73);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v77 = OUTLINED_FUNCTION_3(v76);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_12();
  v281 = v78;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_76();
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  v276 = v80;
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_12_0();
  v84 = (v82 - v83);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_76();
  v284 = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132160, &qword_23B510100);
  OUTLINED_FUNCTION_3(v87);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v89);
  v90 = sub_23B50AD24();
  v91 = OUTLINED_FUNCTION_2_0(v90, &a26);
  v278 = v92;
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_6_0();
  v283 = v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  v95 = OUTLINED_FUNCTION_3(v94);
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_76();
  v285 = v97;
  OUTLINED_FUNCTION_24_0();
  v98 = sub_23B50BE14();
  v99 = OUTLINED_FUNCTION_2_0(v98, &a14);
  v269 = v100;
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_76();
  v280 = v102;
  OUTLINED_FUNCTION_24_0();
  v103 = sub_23B50C594();
  OUTLINED_FUNCTION_5();
  v105 = v104;
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_62_0();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132198, &qword_23B510150);
  v110 = OUTLINED_FUNCTION_3(v109);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_189();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_180();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v103);
  sub_23B50BBE4();
  v118 = OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_51(v118, v119, v103);
  v282 = v84;
  if (v120)
  {
    sub_23B398890(v29, &qword_27E132198, &qword_23B510150);
    sub_23B50BBF4();
    OUTLINED_FUNCTION_73();
    __swift_storeEnumTagSinglePayload(v121, v122, v123, v103);
    sub_23B3B7EA8();
  }

  else
  {
    EnumTagSinglePayload = *(v105 + 32);
    EnumTagSinglePayload(v32, v29, v103);
    sub_23B398890(v31, &qword_27E132198, &qword_23B510150);
    v124 = OUTLINED_FUNCTION_243();
    (EnumTagSinglePayload)(v124);
    OUTLINED_FUNCTION_73();
    __swift_storeEnumTagSinglePayload(v125, v126, v127, v103);
  }

  sub_23B3924C0(0, &qword_280B43370, 0x277CCA8D8);
  if (sub_23B50D4F4())
  {
    OUTLINED_FUNCTION_86();
    sub_23B3B81F8();
    v128 = OUTLINED_FUNCTION_142();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v128, v129, v103);
    OUTLINED_FUNCTION_81_0();
    sub_23B398890(v130, v131, v132);
    if (EnumTagSinglePayload == 1)
    {
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v133 = sub_23B50CDF4();
      OUTLINED_FUNCTION_88(v133, qword_280B4E9D8);
      v134 = *(v269 + 16);
      v134(v280, v37);
      v135 = v273;
      v136 = sub_23B50CDD4();
      v137 = sub_23B50D4B4();

      if (os_log_type_enabled(v136, v137))
      {
        OUTLINED_FUNCTION_135();
        v138 = swift_slowAlloc();
        v284 = v136;
        v139 = v138;
        v285 = swift_slowAlloc();
        v287[0] = v285;
        *v139 = 136315651;
        v140 = OUTLINED_FUNCTION_146();
        (v134)(v140);
        v141 = sub_23B50D184();
        v143 = v142;
        (*(v269 + 8))(v280);
        v144 = sub_23B391F1C(v141, v143, v287);

        *(v139 + 4) = v144;
        *(v139 + 12) = 2160;
        *(v139 + 14) = 1752392040;
        *(v139 + 22) = 2081;
        v286 = v135;
        sub_23B3924C0(0, &qword_280B433B8, 0x277CE41F8);
        v145 = v135;
        v146 = sub_23B50D1A4();
        v148 = sub_23B391F1C(v146, v147, v287);

        *(v139 + 24) = v148;
        v149 = v284;
        _os_log_impl(&dword_23B38D000, v284, v137, "Missing day part forecast; dayWeather=%s; location=%{private,mask.hash}s", v139, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_57_1();
        MEMORY[0x23EE9E260]();
        OUTLINED_FUNCTION_57_1();
        MEMORY[0x23EE9E260]();
      }

      else
      {

        (*(v269 + 8))(v280);
      }

      v190 = sub_23B3E3D54();
      v191 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v190);
      OUTLINED_FUNCTION_69_1(v191, v192);
      goto LABEL_15;
    }
  }

  v271 = v103;
  sub_23B3B8280(v285);
  sub_23B50BC94();
  OUTLINED_FUNCTION_114();
  sub_23B50BC84();
  sub_23B3B8890(&v286);
  v150 = OUTLINED_FUNCTION_119();
  sub_23B398890(v150, v151, &qword_23B510100);
  v270 = v286;
  sub_23B50BC84();
  sub_23B3B99FC(EnumTagSinglePayload, 1, v152, v153, v154, v155, v156, v157, v249, v250, v252, v253, v254, v255, v256, v257, v259, v261, v263, v265);
  v268 = v158;
  v274 = v159;
  v160 = OUTLINED_FUNCTION_119();
  sub_23B398890(v160, v161, &qword_23B510100);
  sub_23B50BCF4();
  v162 = objc_opt_self();
  v163 = [v162 celsius];
  v164 = OUTLINED_FUNCTION_154();
  v167 = sub_23B3924C0(v164, v165, v166);
  OUTLINED_FUNCTION_222();
  sub_23B50A9B4();
  sub_23B50BD54();
  sub_23B50BD04();
  v168 = [v162 celsius];
  sub_23B50A9B4();
  sub_23B50BD64();
  sub_23B50BC24();
  sub_23B50BC34();
  v170 = v169;
  sub_23B50BC24();
  sub_23B50BC34();
  OUTLINED_FUNCTION_196();
  sub_23B50BD34();
  sub_23B3BC884();
  if (v28)
  {

    sub_23B398890(v167, &qword_27E132190, &qword_23B510148);
    OUTLINED_FUNCTION_86();
    sub_23B398890(v171, v172, v173);
    v174 = OUTLINED_FUNCTION_170();
    v281(v174);
    OUTLINED_FUNCTION_86();
    sub_23B398890(v175, v176, v177);
    (v281)(v284, v84);
    v178 = OUTLINED_FUNCTION_18_4();
    v179(v178);
    sub_23B398890(v285, &qword_27E132048, &qword_23B510110);
LABEL_15:
    sub_23B398890(v31, &qword_27E132198, &qword_23B510150);
    goto LABEL_16;
  }

  LODWORD(a18) = v170;
  sub_23B398890(v167, &qword_27E132190, &qword_23B510148);
  v180 = HIBYTE(a18);
  sub_23B50BD84();
  v182 = v181;
  sub_23B50BD74();
  v183 = objc_opt_self();
  [v183 millimeters];
  v184 = OUTLINED_FUNCTION_154();
  sub_23B3924C0(v184, v185, v186);
  sub_23B50A9B4();
  sub_23B50BCD4();
  v187 = [v183 millimeters];
  OUTLINED_FUNCTION_114();
  sub_23B50A9B4();
  v188 = sub_23B50BDA4();
  sub_23B50BD74();
  OUTLINED_FUNCTION_163();
  sub_23B3B250C(v188, v189);

  OUTLINED_FUNCTION_196();
  sub_23B3BF6B8();
  sub_23B3B58EC();
  v193 = sub_23B50BC14();
  sub_23B3C1284(v193, 0, v287);
  v251 = v287[0];
  v194 = sub_23B50BCB4();
  v195 = OUTLINED_FUNCTION_72(v194);
  if (v120)
  {
    v196 = v195;
  }

  else
  {
    v196 = 0.0;
  }

  v197 = sub_23B50BCC4();
  v198 = OUTLINED_FUNCTION_72(v197);
  if (v120)
  {
    v199 = v198;
  }

  else
  {
    v199 = 0.0;
  }

  v200 = sub_23B50BCB4();
  v201 = OUTLINED_FUNCTION_72(v200);
  if (v120)
  {
    v202 = v201;
  }

  else
  {
    v202 = 0.0;
  }

  v203 = sub_23B50BCC4();
  v204 = OUTLINED_FUNCTION_72(v203);
  if (v120)
  {
    v205 = v204;
  }

  else
  {
    v205 = 0.0;
  }

  v206 = sub_23B50BC64();
  v208 = v207;
  if (!__swift_getEnumTagSinglePayload(v31, 1, v271))
  {
    sub_23B50C494();
  }

  if (v208)
  {
    v206 = 0;
  }

  sub_23B50BD24();
  sub_23B3B32C4(v206, 0);
  sub_23B3B81F8();
  v209 = sub_23B50BD24();
  OUTLINED_FUNCTION_72(v209);
  v210 = objc_opt_self();
  [v210 kilometersPerHour];
  v211 = sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
  sub_23B50A9B4();
  v212 = sub_23B50BC64();
  v213 = [v210 kilometersPerHour];
  OUTLINED_FUNCTION_144();
  sub_23B50A9B4();
  v214 = sub_23B50BC74();
  v215 = [v210 kilometersPerHour];
  OUTLINED_FUNCTION_163();
  sub_23B50A9B4();
  OUTLINED_FUNCTION_114();
  sub_23B50BBF4();
  OUTLINED_FUNCTION_235();
  sub_23B3C2F64(v216);
  (*(v105 + 8))(v211, v271);
  OUTLINED_FUNCTION_114();
  sub_23B50BC04();
  OUTLINED_FUNCTION_235();
  sub_23B3C2F64(v217);
  v218 = OUTLINED_FUNCTION_242();
  v219(v218);
  sub_23B50BBE4();
  sub_23B3C3FB8(v264);
  OUTLINED_FUNCTION_219();
  if (v120)
  {
    v222 = v220;
  }

  else
  {
    v222 = 0.0;
  }

  if (a18)
  {
    v223 = 0.0;
  }

  else
  {
    v223 = v221;
  }

  OUTLINED_FUNCTION_219();
  if (v120)
  {
    v226 = v224;
  }

  else
  {
    v226 = v225;
  }

  OUTLINED_FUNCTION_219();
  if (v120)
  {
    v229 = v227;
  }

  else
  {
    v229 = v228;
  }

  v275 = v229;
  v230 = v182 / OUTLINED_FUNCTION_161();
  sub_23B398890(v262, &qword_27E132198, &qword_23B510150);
  sub_23B398890(v285, &qword_27E132048, &qword_23B510110);
  v231 = type metadata accessor for DayWeather(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v232, v233, v234, v277);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v235, v236, v237, v277);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v238, v239, v240, v267);
  v285 = v231[35];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v241, v242, v243, v258);
  (*(v278 + 32))(v260, v283);
  *(v260 + v231[5]) = v270;
  v244 = (v260 + v231[6]);
  *v244 = v268;
  v244[1] = v274;
  v245 = *(v276 + 32);
  v245(v260 + v231[7], v284, v279);
  sub_23B3B7EA8();
  v245(v260 + v231[9], v282, v279);
  sub_23B3B7EA8();
  *(v260 + v231[11]) = 0;
  *(v260 + v231[12]) = v222;
  *(v260 + v231[13]) = v223;
  *(v260 + v231[14]) = v226;
  *(v260 + v231[15]) = v275;
  OUTLINED_FUNCTION_108_0();
  sub_23B3B0608();
  *(v260 + v231[16]) = v180;
  *(v260 + v231[17]) = v230;
  v246 = *(v272 + 32);
  OUTLINED_FUNCTION_197();
  v246();
  OUTLINED_FUNCTION_252();
  v246();
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_101();
  sub_23B3B0608();
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_145();
  sub_23B3B0608();
  v247 = (v260 + v231[23]);
  *v247 = v251;
  OUTLINED_FUNCTION_179(v247);
  OUTLINED_FUNCTION_15_3();
  sub_23B3B0608();
  OUTLINED_FUNCTION_132();
  sub_23B3B7EA8();
  sub_23B3B0608();
  sub_23B3B0608();
  sub_23B3B7EA8();
  *(v260 + v231[24]) = v196;
  *(v260 + v231[25]) = v199;
  *(v260 + v231[26]) = v202;
  *(v260 + v231[27]) = v205;
  v248 = *(v266 + 32);
  OUTLINED_FUNCTION_156();
  v248();
  OUTLINED_FUNCTION_156();
  v248();
  OUTLINED_FUNCTION_156();
  v248();
  sub_23B398890(v31, &qword_27E132198, &qword_23B510150);
LABEL_16:
  OUTLINED_FUNCTION_139();
}

void sub_23B3B58EC()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_201();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v4 = OUTLINED_FUNCTION_3(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_180();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_188_0();
  v6 = OUTLINED_FUNCTION_203();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_120();
  sub_23B50BDF4();
  v10 = sub_23B3C0338();
  sub_23B398890(v2, &qword_27E1321A0, &unk_23B510158);
  if (!v1)
  {
    sub_23B50BDE4();
    sub_23B50BDC4();
    type metadata accessor for MoonEvents(0);
    v11 = sub_23B50AD24();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
    *v0 = v10;
    sub_23B3B7EA8();
    sub_23B3B7EA8();
  }

  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_105();
}

uint64_t OUTLINED_FUNCTION_70_0(uint64_t a1, uint64_t a2)
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_70_2()
{

  return sub_23B398890(v2 - 152, v0, v1);
}

void OUTLINED_FUNCTION_83_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  sub_23B3AFEEC(v12, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_304(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_23B50AE24();
}

void sub_23B3B5B7C()
{
  OUTLINED_FUNCTION_107();
  v134 = v5;
  v7 = v6;
  v121 = type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v125 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321A8, &qword_23B510168);
  OUTLINED_FUNCTION_3(v10);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_52();
  v130 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321B0, &unk_23B510170);
  OUTLINED_FUNCTION_3(v13);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_52();
  v127 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FB8, &qword_23B50F6D0);
  OUTLINED_FUNCTION_3(v16);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_52();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC8, &qword_23B510180);
  OUTLINED_FUNCTION_3(v18);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_52();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v20);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_64_1();
  v137 = sub_23B50AB34();
  OUTLINED_FUNCTION_5();
  v135 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12();
  v133 = v24;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_76();
  v136 = v26;
  OUTLINED_FUNCTION_24_0();
  v138 = sub_23B50CCA4();
  OUTLINED_FUNCTION_5();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12();
  v123 = v30;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_80_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_185();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_125();
  v34 = sub_23B50BAC4();
  if (!v35)
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v45 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v45, qword_280B4E9D8);
    v39 = sub_23B50CDD4();
    v46 = sub_23B50D4B4();
    if (!OUTLINED_FUNCTION_113(v46))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_66_1();
    v47 = swift_slowAlloc();
    OUTLINED_FUNCTION_162(v47);
    v44 = "Missing required field; field=AirQuality.scale";
    goto LABEL_25;
  }

  v119 = v34;
  v146 = v35;
  v36 = sub_23B50BAB4();
  if (v37)
  {

    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v38 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v38, qword_280B4E9D8);
    v39 = sub_23B50CDD4();
    v40 = sub_23B50D4B4();
    if (!OUTLINED_FUNCTION_113(v40))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_66_1();
    v41 = swift_slowAlloc();
    OUTLINED_FUNCTION_162(v41);
    v44 = "Missing required field; field=AirQuality.index";
LABEL_25:
    OUTLINED_FUNCTION_254(&dword_23B38D000, v42, v43, v44);
    OUTLINED_FUNCTION_57_1();
    MEMORY[0x23EE9E260]();
LABEL_26:

    v59 = sub_23B3E3D54();
    v60 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v59);
    OUTLINED_FUNCTION_69_1(v60, v61);
    goto LABEL_27;
  }

  v117 = v36;
  v48 = sub_23B50BA74();
  if (v49)
  {

    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v50 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v50, qword_280B4E9D8);
    v39 = sub_23B50CDD4();
    v51 = sub_23B50D4B4();
    if (!OUTLINED_FUNCTION_113(v51))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_66_1();
    v52 = swift_slowAlloc();
    OUTLINED_FUNCTION_162(v52);
    v44 = "Missing required field; field=AirQuality.categoryIndex";
    goto LABEL_25;
  }

  v114 = v48;
  sub_23B50BAD4();
  sub_23B50CC54();
  v54 = v53;
  v110 = *(v28 + 8);
  v112 = v28 + 8;
  v110(v1, v138);
  if (!v54)
  {

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_138();
  sub_23B50AB04();

  OUTLINED_FUNCTION_51(v2, 1, v137);
  if (v55)
  {

    sub_23B398890(v2, &qword_27E131FC0, &qword_23B515170);
LABEL_21:
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v56 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v56, qword_280B4E9D8);
    v39 = sub_23B50CDD4();
    v57 = sub_23B50D4B4();
    if (!OUTLINED_FUNCTION_113(v57))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_66_1();
    v58 = swift_slowAlloc();
    OUTLINED_FUNCTION_162(v58);
    v44 = "Missing required field; field=AirQuality.learnMoreURL";
    goto LABEL_25;
  }

  v105 = *(v135 + 32);
  v105(v136, v2, v137);
  sub_23B50BA64();
  sub_23B3C5F4C();
  if (v0)
  {
    (*(v135 + 8))(v136, v137);
  }

  else
  {
    v63 = v62;

    sub_23B3B6E0C(v134, v119, v146, v64, v65, v66, v67, v68, v105, v7, v110, v112, v114, v117, v119, v121, v123, v125, v127, v130);
    memcpy(v144, v145, sizeof(v144));
    v69 = sub_23B50BAA4();
    sub_23B3B7C7C(v69, v70, v142);

    v71 = v142[0];
    v72 = v144[13];
    sub_23B3C8520(v144, v142);
    sub_23B3C8744(v72, v115, v143);
    sub_23B3C8B4C(v144);
    memcpy(v142, v143, 0x58uLL);
    v116 = sub_23B50BA84();
    sub_23B50BAD4();
    sub_23B3C8BA0();
    v111(v4, v138);
    (*(v135 + 16))(v133, v136, v137);
    sub_23B50BA94();
    sub_23B50C0D4();
    OUTLINED_FUNCTION_21_0(v128);
    if (v55)
    {
      sub_23B398890(v128, &qword_27E1321B0, &unk_23B510170);
      v73 = 0;
      v75 = 0;
    }

    else
    {
      v73 = sub_23B50C0C4();
      v75 = v74;
      v76 = OUTLINED_FUNCTION_209();
      v77(v76);
    }

    sub_23B3C8D30(v73, v75, v63);

    sub_23B50BAD4();
    sub_23B50CC24();
    v78 = v111;
    v111(v3, v138);
    sub_23B3C9254(v139);
    sub_23B398890(v131, &qword_27E1321A8, &qword_23B510168);
    v132 = v139[0];
    v79 = v141;
    v129 = v140;
    sub_23B50BAD4();
    sub_23B3AFEEC(v124, v80, v81, v82, v83, v84, v85, v86, v106, v108, v111, v113);
    v78(v124, v138);
    (*(v135 + 8))(v136, v137);
    v87 = type metadata accessor for AirQuality(0);
    type metadata accessor for ProviderAttribution(0);
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
    type metadata accessor for AirPollutant(0);
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
    v96 = (v109 + v87[6]);
    *v96 = v120;
    v96[1] = v146;
    memcpy((v109 + v87[7]), v144, 0x78uLL);
    *(v109 + v87[8]) = v118;
    memcpy((v109 + v87[9]), v142, 0x58uLL);
    *(v109 + v87[10]) = v116 & 1;
    sub_23B3B7EA8();
    v107(v109 + v87[12], v133, v137);
    *(v109 + v87[13]) = v63;
    sub_23B3B7EA8();
    *(v109 + v87[15]) = v71;
    v97 = v109 + v87[16];
    *v97 = v132;
    *(v97 + 8) = v129;
    *(v97 + 16) = v79;
    sub_23B3BABAC();
    v98 = sub_23B50AD24();
    OUTLINED_FUNCTION_6();
    v100 = *(v99 + 16);
    v101 = OUTLINED_FUNCTION_175();
    v100(v101);
    (v100)(v109 + v87[5], v126 + *(v122 + 20), v98);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_73();
    __swift_storeEnumTagSinglePayload(v102, v103, v104, v87);
  }

LABEL_27:
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_23B3B672C@<X0>(char *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329F8, &unk_23B513D30);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13();
  v5 = sub_23B50ADC4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
  sub_23B3B6C10();
  v6 = sub_23B50D514();
  v8 = v7;
  sub_23B3B6DA4(v2);

  v9 = v6 == 0x352E324D50 && v8 == 0xE500000000000000;
  if (v9 || (OUTLINED_FUNCTION_9_8(0x352E324D50, 0xE500000000000000) & 1) != 0 || (v6 == 892489040 ? (v10 = v8 == 0xE400000000000000) : (v10 = 0), v10 || (OUTLINED_FUNCTION_9_8(892489040, 0xE400000000000000) & 1) != 0 || (v6 == 0x355F324D50 ? (v11 = v8 == 0xE500000000000000) : (v11 = 0), v11 || (OUTLINED_FUNCTION_9_8(0x355F324D50, 0xE500000000000000) & 1) != 0)))
  {

    v13 = 0;
  }

  else
  {
    v14 = v6 == 808537424 && v8 == 0xE400000000000000;
    if (v14 || (OUTLINED_FUNCTION_9_8(808537424, 0xE400000000000000) & 1) != 0)
    {

      v13 = 1;
    }

    else
    {
      v15 = v6 == 13135 && v8 == 0xE200000000000000;
      if (v15 || (OUTLINED_FUNCTION_9_8(13135, 0xE200000000000000) & 1) != 0)
      {

        v13 = 2;
      }

      else
      {
        v16 = v6 == 0x454E4F5A4FLL && v8 == 0xE500000000000000;
        if (v16 || (OUTLINED_FUNCTION_9_8(0x454E4F5A4FLL, 0xE500000000000000) & 1) != 0)
        {

          v13 = 3;
        }

        else
        {
          v17 = v6 == 20302 && v8 == 0xE200000000000000;
          if (v17 || (OUTLINED_FUNCTION_9_8(20302, 0xE200000000000000) & 1) != 0)
          {

            v13 = 4;
          }

          else
          {
            v18 = v6 == 3297102 && v8 == 0xE300000000000000;
            if (v18 || (OUTLINED_FUNCTION_9_8(3297102, 0xE300000000000000) & 1) != 0)
            {

              v13 = 5;
            }

            else
            {
              v19 = v6 == 5787470 && v8 == 0xE300000000000000;
              if (v19 || (OUTLINED_FUNCTION_9_8(5787470, 0xE300000000000000) & 1) != 0)
              {

                v13 = 6;
              }

              else
              {
                v20 = v6 == 3297107 && v8 == 0xE300000000000000;
                if (v20 || (OUTLINED_FUNCTION_9_8(3297107, 0xE300000000000000) & 1) != 0)
                {

                  v13 = 7;
                }

                else
                {
                  v21 = v6 == 20291 && v8 == 0xE200000000000000;
                  if (v21 || (OUTLINED_FUNCTION_9_8(20291, 0xE200000000000000) & 1) != 0)
                  {

                    v13 = 8;
                  }

                  else
                  {
                    v22 = v6 == 1128811854 && v8 == 0xE400000000000000;
                    if (v22 || (OUTLINED_FUNCTION_9_8(1128811854, 0xE400000000000000) & 1) != 0)
                    {

                      v13 = 9;
                    }

                    else
                    {
                      v23 = v6 == 0x5343484D4ELL && v8 == 0xE500000000000000;
                      if (v23 || (OUTLINED_FUNCTION_9_8(0x5343484D4ELL, 0xE500000000000000) & 1) != 0)
                      {

                        v13 = 10;
                      }

                      else
                      {
                        v24 = v6 == 3360846 && v8 == 0xE300000000000000;
                        if (v24 || (OUTLINED_FUNCTION_9_8(3360846, 0xE300000000000000) & 1) != 0)
                        {

                          v13 = 11;
                        }

                        else
                        {
                          v25 = v6 == 910702147 && v8 == 0xE400000000000000;
                          if (v25 || (OUTLINED_FUNCTION_9_8(910702147, 0xE400000000000000) & 1) != 0)
                          {

                            v13 = 12;
                          }

                          else
                          {
                            v26 = v6 == 5460564 && v8 == 0xE300000000000000;
                            if (v26 || (OUTLINED_FUNCTION_9_8(5460564, 0xE300000000000000) & 1) != 0)
                            {

                              v13 = 13;
                            }

                            else
                            {
                              v27 = v6 == 0x6C69617641746F6ELL && v8 == 0xEC000000656C6261;
                              if (!v27 && (OUTLINED_FUNCTION_9_8(0x6C69617641746F6ELL, 0xEC000000656C6261) & 1) == 0 && (v6 != 0x494156415F544F4ELL || v8 != 0xED0000454C42414CLL))
                              {
                                OUTLINED_FUNCTION_9_8(0x494156415F544F4ELL, 0xED0000454C42414CLL);
                              }

                              v13 = 14;
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
      }
    }
  }

  *a2 = v13;
  return result;
}

unint64_t sub_23B3B6C10()
{
  result = qword_280B43118;
  if (!qword_280B43118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43118);
  }

  return result;
}

uint64_t sub_23B3B6DA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329F8, &unk_23B513D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23B3B6E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_107();
  v116 = v23;
  v114 = v24;
  v115 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321B8, &qword_23B510188);
  OUTLINED_FUNCTION_3(v26);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_127();
  v28 = sub_23B50CA44();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_153();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321C0, &qword_23B510190);
  OUTLINED_FUNCTION_3(v30);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_64_1();
  v119 = sub_23B50C9B4();
  OUTLINED_FUNCTION_5();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  v118 = v35;
  v36 = sub_23B50C364();
  if (!v37)
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v47 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v47, qword_280B4E9D8);
    v44 = sub_23B50CDD4();
    sub_23B50D4B4();
    v48 = OUTLINED_FUNCTION_26_2();
    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v38 = v37;
  v113 = v36;
  v117 = v33;
  v39 = sub_23B50C374();
  if (!v40)
  {

    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v50 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v50, qword_280B4E9D8);
    v44 = sub_23B50CDD4();
    sub_23B50D4B4();
    v51 = OUTLINED_FUNCTION_26_2();
    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v41 = v40;
  v112 = v39;
  sub_23B50C3A4();
  OUTLINED_FUNCTION_51(v22, 1, v119);
  if (!v42)
  {
    (*(v117 + 32))();
    v64 = sub_23B50C9A4();
    if (v64 == 2)
    {

      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v65 = sub_23B50CDF4();
      OUTLINED_FUNCTION_88(v65, qword_280B4E9D8);
      v66 = sub_23B50CDD4();
      sub_23B50D4B4();
      v67 = OUTLINED_FUNCTION_26_2();
      if (!os_log_type_enabled(v67, v68))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v69 = v64;
      v111 = sub_23B50C984();
      if (v111)
      {
        v70 = sub_23B50C974();
        if (v70)
        {
          v71 = v70;
          sub_23B50C994();
          v72 = OUTLINED_FUNCTION_137();
          OUTLINED_FUNCTION_51(v72, v73, v28);
          if (!v42)
          {
            v94 = OUTLINED_FUNCTION_209();
            v95(v94);
            v109 = sub_23B50C394();
            v110 = v96;
            v97 = sub_23B50C384();
            v99 = v98;
            v100 = sub_23B3C74C0(v111);
            if (!v20)
            {
              v107 = v101;
              v108 = v100;

              v102 = sub_23B3B7620(v71);

              sub_23B3C7E64();
              v105 = OUTLINED_FUNCTION_210();
              v106(v105);
              (*(v117 + 8))(v118, v119);
              *v115 = v114;
              *(v115 + 8) = v116;
              *(v115 + 16) = v113;
              *(v115 + 24) = v38;
              *(v115 + 32) = v109;
              *(v115 + 40) = v110;
              *(v115 + 48) = v97;
              *(v115 + 56) = v99;
              *(v115 + 64) = v112;
              *(v115 + 72) = v41;
              *(v115 + 80) = v69 & 1;
              *(v115 + 88) = v108;
              *(v115 + 96) = v107;
              *(v115 + 104) = v102;
              *(v115 + 112) = a10;

              goto LABEL_18;
            }

            v103 = OUTLINED_FUNCTION_210();
            v104(v103);
            goto LABEL_41;
          }

          sub_23B398890(v21, &qword_27E1321B8, &qword_23B510188);
          if (qword_280B43440 != -1)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v74 = sub_23B50CDF4();
          OUTLINED_FUNCTION_88(v74, qword_280B4E9D8);
          v66 = sub_23B50CDD4();
          sub_23B50D4B4();
          v75 = OUTLINED_FUNCTION_26_2();
          if (!os_log_type_enabled(v75, v76))
          {
LABEL_40:

            v91 = sub_23B3E3D54();
            v92 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v91);
            OUTLINED_FUNCTION_69_1(v92, v93);
LABEL_41:
            (*(v117 + 8))(v118, v119);
            goto LABEL_18;
          }
        }

        else
        {

          if (qword_280B43440 != -1)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v80 = sub_23B50CDF4();
          OUTLINED_FUNCTION_88(v80, qword_280B4E9D8);
          v66 = sub_23B50CDD4();
          sub_23B50D4B4();
          v81 = OUTLINED_FUNCTION_26_2();
          if (!os_log_type_enabled(v81, v82))
          {
            goto LABEL_40;
          }
        }
      }

      else
      {

        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_8();
          swift_once();
        }

        v77 = sub_23B50CDF4();
        OUTLINED_FUNCTION_88(v77, qword_280B4E9D8);
        v66 = sub_23B50CDD4();
        sub_23B50D4B4();
        v78 = OUTLINED_FUNCTION_26_2();
        if (!os_log_type_enabled(v78, v79))
        {
          goto LABEL_40;
        }
      }
    }

    OUTLINED_FUNCTION_66_1();
    v83 = swift_slowAlloc();
    OUTLINED_FUNCTION_74_0(v83);
    OUTLINED_FUNCTION_20_4();
    _os_log_impl(v84, v85, v86, v87, v88, v89);
    v90 = OUTLINED_FUNCTION_35_2();
    MEMORY[0x23EE9E260](v90);
    goto LABEL_40;
  }

  sub_23B398890(v22, &qword_27E1321C0, &qword_23B510190);
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v43 = sub_23B50CDF4();
  OUTLINED_FUNCTION_88(v43, qword_280B4E9D8);
  v44 = sub_23B50CDD4();
  sub_23B50D4B4();
  v45 = OUTLINED_FUNCTION_26_2();
  if (os_log_type_enabled(v45, v46))
  {
LABEL_16:
    OUTLINED_FUNCTION_66_1();
    v53 = swift_slowAlloc();
    OUTLINED_FUNCTION_74_0(v53);
    OUTLINED_FUNCTION_20_4();
    _os_log_impl(v54, v55, v56, v57, v58, v59);
    v60 = OUTLINED_FUNCTION_35_2();
    MEMORY[0x23EE9E260](v60);
  }

LABEL_17:

  v61 = sub_23B3E3D54();
  v62 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v61);
  OUTLINED_FUNCTION_69_1(v62, v63);
LABEL_18:
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_23B3B7620(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = v2;
    v6 = OUTLINED_FUNCTION_65_2(MEMORY[0x277D84F90]);
    sub_23B3B78B8(v6, v3, 0);
    v1 = v35;
    v7 = sub_23B50CA24();
    OUTLINED_FUNCTION_28_0(v7);
    v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v11 = *(v10 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_68_1();
      sub_23B3C7A20(v12, v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      memcpy(v33, __src, sizeof(v33));
      v35 = v1;
      v15 = *(v1 + 16);
      v14 = *(v1 + 24);
      if (v15 >= v14 >> 1)
      {
        v16 = OUTLINED_FUNCTION_30_3(v14);
        sub_23B3B78B8(v16, v15 + 1, 1);
        v1 = v35;
      }

      *(v1 + 16) = v15 + 1;
      memcpy((v1 + 88 * v15 + 32), v33, 0x58uLL);
      v9 += v11;
      if (!--v3)
      {
        return v1;
      }
    }
  }

  else
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v17 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v17, qword_280B4E9D8);
    v18 = sub_23B50CDD4();
    sub_23B50D4B4();
    v19 = OUTLINED_FUNCTION_26_2();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_66_1();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_74_0(v21);
      OUTLINED_FUNCTION_20_4();
      _os_log_impl(v22, v23, v24, v25, v26, v27);
      v28 = OUTLINED_FUNCTION_35_2();
      MEMORY[0x23EE9E260](v28);
    }

    v29 = sub_23B3E3D54();
    v30 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v29);
    OUTLINED_FUNCTION_55_1(v30, v31);
  }

  return v1;
}

void *sub_23B3B78B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B3B7990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t OUTLINED_FUNCTION_50(uint64_t a1, unint64_t a2)
{

  return sub_23B391F1C(a1, a2, (v2 - 72));
}

uint64_t OUTLINED_FUNCTION_18()
{
}

void *sub_23B3B7990(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FD8, &qword_23B50F6E0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 88);
      if (v5)
      {
LABEL_13:
        sub_23B4F5A34((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_193(uint64_t a1, uint64_t a2)
{

  return sub_23B50D524();
}

void *sub_23B3B7B20(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FD0, &qword_23B50F6D8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_23B4F5A5C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_23B3B7C7C(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  if (!a2)
  {
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v13 = sub_23B50CDF4();
    __swift_project_value_buffer(v13, qword_280B4E9D8);
    v8 = sub_23B50CDD4();
    v14 = sub_23B50D4C4();
    if (!os_log_type_enabled(v8, v14))
    {
      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_23B38D000, v8, v14, "air quality previous day comparison missing", v15, 2u);
    v12 = v15;
    goto LABEL_11;
  }

  sub_23B3B7F34(a1, a2, &v17);
  v6 = v17;
  if (v17 == 6)
  {
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v7 = sub_23B50CDF4();
    __swift_project_value_buffer(v7, qword_280B4E9D8);

    v8 = sub_23B50CDD4();
    v9 = sub_23B50D4B4();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_23B391F1C(a1, a2, &v16);
    _os_log_impl(&dword_23B38D000, v8, v9, "unrecognized air quality previous day comparison: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x23EE9E260](v11, -1, -1);
    v12 = v10;
LABEL_11:
    MEMORY[0x23EE9E260](v12, -1, -1);
LABEL_12:

    v6 = 5;
  }

  *a3 = v6;
}

uint64_t sub_23B3B7EA8()
{
  OUTLINED_FUNCTION_220();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_65();
  v4(v3);
  return v0;
}

uint64_t sub_23B3B7F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73726F576863756DLL && a2 == 0xE900000000000065;
  if (v6 || (OUTLINED_FUNCTION_9_8(0x73726F576863756DLL, 0xE900000000000065) & 1) != 0 || (a1 == 0x524F575F4843554DLL ? (v7 = a2 == 0xEA00000000004553) : (v7 = 0), v7 || (OUTLINED_FUNCTION_9_8(0x524F575F4843554DLL, 0xEA00000000004553) & 1) != 0))
  {

    v9 = 0;
  }

  else
  {
    v10 = a1 == 0x6573726F77 && a2 == 0xE500000000000000;
    if (v10 || (OUTLINED_FUNCTION_9_8(0x6573726F77, 0xE500000000000000) & 1) != 0 || (a1 == 0x4553524F57 ? (v11 = a2 == 0xE500000000000000) : (v11 = 0), v11 || (OUTLINED_FUNCTION_9_8(0x4553524F57, 0xE500000000000000) & 1) != 0))
    {

      v9 = 1;
    }

    else
    {
      v12 = a1 == 1701667187 && a2 == 0xE400000000000000;
      if (v12 || (OUTLINED_FUNCTION_9_8(1701667187, 0xE400000000000000) & 1) != 0 || (a1 == 1162690899 ? (v13 = a2 == 0xE400000000000000) : (v13 = 0), v13 || (OUTLINED_FUNCTION_9_8(1162690899, 0xE400000000000000) & 1) != 0))
      {

        v9 = 2;
      }

      else
      {
        v14 = a1 == 0x726574746562 && a2 == 0xE600000000000000;
        if (v14 || (OUTLINED_FUNCTION_9_8(0x726574746562, 0xE600000000000000) & 1) != 0 || (a1 == 0x524554544542 ? (v15 = a2 == 0xE600000000000000) : (v15 = 0), v15 || (OUTLINED_FUNCTION_9_8(0x524554544542, 0xE600000000000000) & 1) != 0))
        {

          v9 = 3;
        }

        else
        {
          v16 = a1 == 0x747465426863756DLL && a2 == 0xEA00000000007265;
          if (v16 || (OUTLINED_FUNCTION_9_8(0x747465426863756DLL, 0xEA00000000007265) & 1) != 0 || (a1 == 0x5445425F4843554DLL ? (v17 = a2 == 0xEB00000000524554) : (v17 = 0), v17 || (OUTLINED_FUNCTION_9_8(0x5445425F4843554DLL, 0xEB00000000524554) & 1) != 0))
          {

            v9 = 4;
          }

          else
          {
            v18 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
            if (v18 || (OUTLINED_FUNCTION_9_8(0x6E776F6E6B6E75, 0xE700000000000000) & 1) != 0 || (a1 == 0x4E574F4E4B4E55 ? (v19 = a2 == 0xE700000000000000) : (v19 = 0), v19))
            {

              v9 = 5;
            }

            else
            {
              v20 = OUTLINED_FUNCTION_9_8(0x4E574F4E4B4E55, 0xE700000000000000);

              if (v20)
              {
                v9 = 5;
              }

              else
              {
                v9 = 6;
              }
            }
          }
        }
      }
    }
  }

  *a3 = v9;
  return result;
}

uint64_t sub_23B3B81F8()
{
  OUTLINED_FUNCTION_220();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_65();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_106_1(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_23B3B8280@<X0>(uint64_t a2@<X8>)
{
  sub_23B50BC74();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [objc_opt_self() kilometersPerHour];
    sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
    sub_23B50A9B4();
    v4 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);

  return __swift_storeEnumTagSinglePayload(a2, v4, 1, v6);
}

uint64_t sub_23B3B8350@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E0, &qword_23B5101A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_23B50C5F4();
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_23B50AD24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23B50C664();
  sub_23B50C144();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {

    sub_23B398890(v10, &qword_27E131E18, &unk_23B50F710);
LABEL_5:
    v18 = *MEMORY[0x277D7B078];
    v19 = sub_23B50C7C4();
    return (*(*(v19 - 8) + 104))(v24, v18, v19);
  }

  v16 = (*(v12 + 32))(v14, v10, v11);
  MEMORY[0x28223BE20](v16);
  v17 = v23;
  *(&v22 - 2) = v14;
  *(&v22 - 1) = v17;
  sub_23B3B86E8(sub_23B3FD3E4, v15, v4);

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_23B398890(v4, &qword_27E1321E0, &qword_23B5101A8);
    (*(v12 + 8))(v14, v11);
    goto LABEL_5;
  }

  v21 = v22;
  (*(v22 + 32))(v7, v4, v5);
  sub_23B50C5D4();
  (*(v21 + 8))(v7, v5);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_23B3B86E8@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = sub_23B50C5F4();
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  v11 = v10 - v9;
  v12 = 0;
  v13 = *(a2 + 16);
  v14 = (v7 + 8);
  while (1)
  {
    if (v13 == v12)
    {
      v16 = 1;
      v17 = a3;
      return __swift_storeEnumTagSinglePayload(v17, v16, 1, v5);
    }

    (*(v7 + 16))(v11, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v5);
    v15 = a1(v11);
    if (v3)
    {
      return (*v14)(v11, v5);
    }

    if (v15)
    {
      break;
    }

    (*v14)(v11, v5);
    ++v12;
  }

  v17 = a3;
  (*(v7 + 32))(a3, v11, v5);
  v16 = 0;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v5);
}

void sub_23B3B8890(char *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_195();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_250();
  v7 = sub_23B50C064();
  OUTLINED_FUNCTION_5();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27();
  v13 = (v12 - v11);
  sub_23B3B81F8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    sub_23B398890(v1, &qword_27E132160, &qword_23B510100);
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v14 = sub_23B50CDF4();
    __swift_project_value_buffer(v14, qword_280B4E9D8);
    v15 = sub_23B50CDD4();
    v16 = sub_23B50D4B4();
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_66_1();
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_74_0(v17);
      _os_log_impl(&dword_23B38D000, v15, v16, "Received a nil condition code", v13, 2u);
      v18 = OUTLINED_FUNCTION_35_2();
      MEMORY[0x23EE9E260](v18);
    }

    v19 = 4;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_36();
    v21(v20);
    sub_23B3B9284(v13, &v22);
    (*(v9 + 8))(v13, v7);
    v19 = v22;
  }

  *a1 = v19;
}

void sub_23B3B8AE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_5_32();
  if (v8 && (a4(0), OUTLINED_FUNCTION_6(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_1_47();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_1_47();

    swift_arrayInitWithTakeFrontToBack();
  }
}

uint64_t sub_23B3B8B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v57 = a2;
  v52 = a3;
  v4 = sub_23B50C154();
  v59 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  v53 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132190, &qword_23B510148);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v51 - v15;
  v17 = sub_23B50AD24();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - v22;
  sub_23B50C144();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_23B398890(v16, &qword_27E131E18, &unk_23B50F710);
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v24 = sub_23B50CDF4();
    __swift_project_value_buffer(v24, qword_280B4E9D8);
    v25 = v59;
    v26 = *(v59 + 2);
    v26(v8, a1, v4);
    v27 = sub_23B50CDD4();
    v28 = sub_23B50D4B4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v60 = v58;
      *v29 = 136446210;
      v26(v56, v8, v4);
      v30 = sub_23B50D184();
      v32 = v31;
      (*(v25 + 1))(v8, v4);
      v33 = sub_23B391F1C(v30, v32, &v60);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_23B38D000, v27, v28, "Missing minute weather start time, minute=%{public}s", v29, 0xCu);
      v34 = v58;
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x23EE9E260](v34, -1, -1);
      MEMORY[0x23EE9E260](v29, -1, -1);
    }

    else
    {

      (*(v25 + 1))(v8, v4);
    }

    sub_23B3E3D54();
    swift_allocError();
    *v39 = 1;
    return swift_willThrow();
  }

  else
  {
    v35 = v16;
    v36 = *(v18 + 32);
    v36(v23, v35, v17);
    (*(v18 + 16))(v20, v23, v17);
    v37 = sub_23B50C7C4();
    (*(*(v37 - 8) + 16))(v13, v57, v37);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v37);
    v38 = v58;
    sub_23B3BC884();
    if (v38)
    {
      sub_23B398890(v13, &qword_27E132190, &qword_23B510148);
      v44 = *(v18 + 8);
      v44(v20, v17);
      return (v44)(v23, v17);
    }

    else
    {
      v59 = v36;
      sub_23B398890(v13, &qword_27E132190, &qword_23B510148);
      LODWORD(v58) = v62;
      sub_23B50C114();
      v41 = v40;
      sub_23B50C124();
      sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
      static NSUnitSpeed.wk_millimetersPerHour.getter();
      v42 = v53;
      sub_23B50A9B4();
      sub_23B50C134();
      sub_23B3C3CA0(v43, 0, &v60);
      (*(v18 + 8))(v23, v17);
      v46 = v60;
      v47 = v61;
      v48 = v52;
      v59(v52, v20, v17);
      v49 = type metadata accessor for MinuteWeather(0);
      v48[v49[5]] = v58;
      *&v48[v49[6]] = v41 / 100.0;
      result = (*(v54 + 32))(&v48[v49[7]], v42, v55);
      v50 = &v48[v49[8]];
      *v50 = v46;
      v50[8] = v47;
    }
  }

  return result;
}

void sub_23B3B9284(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_23B50C064();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15 = *(v5 + 16);
  v15(&v31 - v13, a1, v4, v12);
  v16 = (*(v5 + 88))(v14, v4);
  if (v16 == *MEMORY[0x277D7AE70])
  {
LABEL_2:
    v17 = 4;
LABEL_3:
    *a2 = v17;
    return;
  }

  if (v16 == *MEMORY[0x277D7AEB8])
  {
    *a2 = 0;
  }

  else
  {
    if (v16 == *MEMORY[0x277D7ADD8])
    {
      v17 = 1;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7ADE0])
    {
      v17 = 2;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE98])
    {
      v17 = 3;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AEA0])
    {
      v17 = 5;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AEB0])
    {
      v17 = 6;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AEC0])
    {
      v17 = 7;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE78])
    {
      v17 = 8;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE30])
    {
      v17 = 9;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7ADF8])
    {
      v17 = 10;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AEA8])
    {
      v17 = 11;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE50])
    {
      v17 = 12;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE58])
    {
      v17 = 13;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AEC8])
    {
      v17 = 14;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AED0])
    {
      v17 = 15;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE48])
    {
      v17 = 16;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AED8])
    {
      v17 = 17;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE38])
    {
      v17 = 18;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7ADE8])
    {
      v17 = 19;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE00])
    {
      v17 = 20;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE10])
    {
      v17 = 21;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE60])
    {
      v17 = 22;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE40])
    {
      v17 = 23;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE80])
    {
      v17 = 24;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE88])
    {
      v17 = 25;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE68])
    {
      v17 = 26;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE18])
    {
      v17 = 27;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7ADF0])
    {
      v17 = 28;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7ADD0])
    {
      v17 = 29;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE20])
    {
      v17 = 30;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE28])
    {
      v17 = 31;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE90])
    {
      v17 = 32;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AEE0])
    {
      v17 = 33;
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D7AE08])
    {
      if (qword_280B43440 != -1)
      {
        swift_once();
      }

      v18 = sub_23B50CDF4();
      __swift_project_value_buffer(v18, qword_280B4E9D8);
      v19 = sub_23B50CDD4();
      v20 = sub_23B50D4B4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_23B38D000, v19, v20, "Unexpected condition code; condition=notAvailable", v21, 2u);
        MEMORY[0x23EE9E260](v21, -1, -1);
      }

      goto LABEL_2;
    }

    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v22 = sub_23B50CDF4();
    __swift_project_value_buffer(v22, qword_280B4E9D8);
    (v15)(v10, a1, v4);
    v23 = sub_23B50CDD4();
    v33 = sub_23B50D4B4();
    if (os_log_type_enabled(v23, v33))
    {
      v24 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v24 = 136446210;
      (v15)(v7, v10, v4);
      v31 = sub_23B50D184();
      v26 = v25;
      v27 = *(v5 + 8);
      v27(v10, v4);
      v28 = sub_23B391F1C(v31, v26, &v34);

      *(v24 + 4) = v28;
      v29 = v24;
      _os_log_impl(&dword_23B38D000, v23, v33, "Unknown default; condition=%{public}s", v24, 0xCu);
      v30 = v32;
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x23EE9E260](v30, -1, -1);
      MEMORY[0x23EE9E260](v29, -1, -1);
    }

    else
    {

      v27 = *(v5 + 8);
      v27(v10, v4);
    }

    *a2 = 4;
    v27(v14, v4);
  }
}

void sub_23B3B99FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v25;
  a20 = v26;
  LODWORD(v139) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132160, &qword_23B510100);
  OUTLINED_FUNCTION_3(v28);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_64_1();
  sub_23B50C064();
  OUTLINED_FUNCTION_5();
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_55(v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_124();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_125();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_188_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_62_0();
  v44 = v43;
  sub_23B3B81F8();
  if (__swift_getEnumTagSinglePayload(v23, 1, v44) == 1)
  {
    sub_23B398890(v23, &qword_27E132160, &qword_23B510100);
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    OUTLINED_FUNCTION_33_1();
    v45 = sub_23B50CDF4();
    __swift_project_value_buffer(v45, qword_280B4E9D8);
    v46 = sub_23B50CDD4();
    sub_23B50D4B4();
    v47 = OUTLINED_FUNCTION_26_2();
    if (os_log_type_enabled(v47, v48))
    {
      OUTLINED_FUNCTION_66_1();
      v49 = swift_slowAlloc();
      OUTLINED_FUNCTION_74_0(v49);
      OUTLINED_FUNCTION_20_4();
      _os_log_impl(v50, v51, v52, v53, v54, v55);
      v56 = OUTLINED_FUNCTION_35_2();
      MEMORY[0x23EE9E260](v56);
    }

    goto LABEL_29;
  }

  v57 = *(v31 + 32);
  (v57)(v24, v23, v44);
  v134 = *(v31 + 16);
  v134(v22, v24, v44);
  v58 = (*(v31 + 88))(v22, v44);
  if (v58 == *MEMORY[0x277D7AE70])
  {
    OUTLINED_FUNCTION_219();
    v59 = *(v31 + 8);
    v60 = v24;
    v61 = v44;
LABEL_9:
    v59(v60, v61);
    goto LABEL_29;
  }

  v135 = v24;
  v133 = v44;
  if (v58 == *MEMORY[0x277D7AEB8])
  {
LABEL_46:
    OUTLINED_FUNCTION_33_1();
    v74 = OUTLINED_FUNCTION_7_9();
    v75(v74);
    goto LABEL_29;
  }

  if (v58 == *MEMORY[0x277D7ADD8] || v58 == *MEMORY[0x277D7ADE0] || v58 == *MEMORY[0x277D7AE98] || v58 == *MEMORY[0x277D7AEA0] || v58 == *MEMORY[0x277D7AEB0])
  {
LABEL_16:
    v62 = OUTLINED_FUNCTION_14_5();
    v63(v62);
    goto LABEL_29;
  }

  if (v58 == *MEMORY[0x277D7AEC0])
  {
    OUTLINED_FUNCTION_244();
    v64 = OUTLINED_FUNCTION_14_5();
    v65(v64);
    goto LABEL_29;
  }

  if (v58 == *MEMORY[0x277D7AE78])
  {
    goto LABEL_28;
  }

  if (v58 == *MEMORY[0x277D7AE30] || v58 == *MEMORY[0x277D7ADF8])
  {
    OUTLINED_FUNCTION_33_1();
    v66 = OUTLINED_FUNCTION_14_5();
    v67(v66);
    goto LABEL_29;
  }

  if (v58 == *MEMORY[0x277D7AEA8])
  {
    goto LABEL_16;
  }

  if (v58 == *MEMORY[0x277D7AE50])
  {
LABEL_28:
    v68 = OUTLINED_FUNCTION_14_5();
    v69(v68);
    OUTLINED_FUNCTION_33_1();
    goto LABEL_29;
  }

  v131[1] = v21;
  v70 = v138;
  v131[3] = v33;
  v132 = v20;
  v131[2] = v22;
  v71 = v137;
  if (v58 == *MEMORY[0x277D7AE58])
  {
LABEL_31:
    v60 = OUTLINED_FUNCTION_7_9();
    goto LABEL_9;
  }

  if (v58 == *MEMORY[0x277D7AEC8])
  {
LABEL_33:
    v72 = OUTLINED_FUNCTION_7_9();
    v73(v72);
    OUTLINED_FUNCTION_33_1();
    goto LABEL_29;
  }

  if (v58 == *MEMORY[0x277D7AED0])
  {
    goto LABEL_46;
  }

  if (v58 == *MEMORY[0x277D7AE48])
  {
    goto LABEL_31;
  }

  if (v58 == *MEMORY[0x277D7AED8])
  {
    goto LABEL_58;
  }

  if (v58 == *MEMORY[0x277D7AE38] || v58 == *MEMORY[0x277D7ADE8])
  {
    goto LABEL_31;
  }

  if (v58 == *MEMORY[0x277D7AE00])
  {
    goto LABEL_58;
  }

  if (v58 == *MEMORY[0x277D7AE10])
  {
    goto LABEL_31;
  }

  if (v58 == *MEMORY[0x277D7AE60])
  {
    goto LABEL_33;
  }

  if (v58 == *MEMORY[0x277D7AE40])
  {
    goto LABEL_31;
  }

  if (v58 == *MEMORY[0x277D7AE80])
  {
    goto LABEL_46;
  }

  if (v58 == *MEMORY[0x277D7AE88])
  {
    goto LABEL_31;
  }

  if (v58 == *MEMORY[0x277D7AE68])
  {
    goto LABEL_52;
  }

  if (v58 == *MEMORY[0x277D7AE18])
  {
    goto LABEL_46;
  }

  if (v58 == *MEMORY[0x277D7ADF0])
  {
LABEL_52:
    OUTLINED_FUNCTION_244();
    v76 = OUTLINED_FUNCTION_7_9();
    v77(v76);
    goto LABEL_29;
  }

  if (v58 == *MEMORY[0x277D7ADD0] || v58 == *MEMORY[0x277D7AE20])
  {
    goto LABEL_46;
  }

  if (v58 == *MEMORY[0x277D7AE28] || v58 == *MEMORY[0x277D7AE90])
  {
LABEL_58:
    v78 = OUTLINED_FUNCTION_7_9();
    v79(v78);
    goto LABEL_29;
  }

  if (v58 == *MEMORY[0x277D7AEE0])
  {
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_33_1();
  if (v80 == *MEMORY[0x277D7AE08])
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v81 = sub_23B50CDF4();
    __swift_project_value_buffer(v81, qword_280B4E9D8);
    OUTLINED_FUNCTION_166();
    v83 = *(v82 - 256);
    v83();
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_151();
    v83();
    v84 = swift_allocObject();
    OUTLINED_FUNCTION_151();
    v57();
    v85 = sub_23B50CDD4();
    OUTLINED_FUNCTION_205(v85);
    v86 = sub_23B50D4B4();
    v87 = OUTLINED_FUNCTION_257(&unk_284E0EC40);
    *(v87 + 16) = 34;
    v88 = OUTLINED_FUNCTION_257(&unk_284E0EC68);
    *(v88 + 16) = 8;
    OUTLINED_FUNCTION_148();
    v89 = swift_allocObject();
    *(v89 + 16) = sub_23B3FD4D0;
    *(v89 + 24) = v84;
    OUTLINED_FUNCTION_148();
    v90 = swift_allocObject();
    *(v90 + 16) = sub_23B3FD4D4;
    *(v90 + 24) = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132178, &qword_23B510120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B510090;
    *(inited + 32) = sub_23B3FD4D8;
    *(inited + 40) = v87;
    *(inited + 48) = sub_23B3FD4D8;
    *(inited + 56) = v88;
    *(inited + 64) = sub_23B3FD4CC;
    *(inited + 72) = v90;
    swift_setDeallocating();
    sub_23B3FD184();
    LODWORD(v138) = v86;
    v92 = OUTLINED_FUNCTION_236();
    if (os_log_type_enabled(v92, v93))
    {
      OUTLINED_FUNCTION_173();
      v94 = swift_slowAlloc();
      OUTLINED_FUNCTION_135();
      v136 = swift_slowAlloc();
      v140 = v136;
      *v94 = 136446210;
      OUTLINED_FUNCTION_130();
      OUTLINED_FUNCTION_198();
      v95();
      sub_23B50D184();
      OUTLINED_FUNCTION_115();
      (inited)(v90, v87);
      v96 = OUTLINED_FUNCTION_202();
      v99 = sub_23B391F1C(v96, v97, v98);

      *(v94 + 4) = v99;
      OUTLINED_FUNCTION_134();
      _os_log_impl(v100, v101, v102, v103, v94, 0xCu);
      v104 = OUTLINED_FUNCTION_227(&a15);
      __swift_destroy_boxed_opaque_existential_1(v104);
      OUTLINED_FUNCTION_57_1();
      MEMORY[0x23EE9E260]();
      OUTLINED_FUNCTION_57_1();
      MEMORY[0x23EE9E260]();
    }

    else
    {
      OUTLINED_FUNCTION_204();

      OUTLINED_FUNCTION_115();
      OUTLINED_FUNCTION_101();
      OUTLINED_FUNCTION_197();
      (inited)();
    }

    OUTLINED_FUNCTION_197();
  }

  else
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v105 = sub_23B50CDF4();
    __swift_project_value_buffer(v105, qword_280B4E9D8);
    OUTLINED_FUNCTION_166();
    v107 = *(v106 - 256);
    v107();
    (v107)(v136, v70, v21);
    v108 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v109 = swift_allocObject();
    v110 = OUTLINED_FUNCTION_205(v109);
    (v57)(v110 + v108, v70, v21);
    v111 = sub_23B50CDD4();
    v112 = sub_23B50D4B4();
    v113 = OUTLINED_FUNCTION_257(&unk_284E0EB78);
    *(v113 + 16) = 34;
    v114 = OUTLINED_FUNCTION_257(&unk_284E0EBA0);
    *(v114 + 16) = 8;
    OUTLINED_FUNCTION_148();
    v115 = swift_allocObject();
    v116 = v139;
    *(v115 + 16) = sub_23B3FD1E4;
    *(v115 + 24) = v116;
    OUTLINED_FUNCTION_148();
    v117 = swift_allocObject();
    *(v117 + 16) = sub_23B3FD1F0;
    *(v117 + 24) = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132178, &qword_23B510120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B510090;
    *(inited + 32) = sub_23B3FD1E8;
    *(inited + 40) = v113;
    *(inited + 48) = sub_23B3FD4D8;
    *(inited + 56) = v114;
    *(inited + 64) = sub_23B3FD1F8;
    *(inited + 72) = v117;
    swift_setDeallocating();
    sub_23B3FD184();
    LODWORD(v138) = v112;
    v139 = v111;
    if (os_log_type_enabled(v111, v112))
    {
      OUTLINED_FUNCTION_173();
      v118 = swift_slowAlloc();
      OUTLINED_FUNCTION_135();
      v132 = swift_slowAlloc();
      v140 = v132;
      *v118 = 136446210;
      OUTLINED_FUNCTION_130();
      OUTLINED_FUNCTION_198();
      v119();
      sub_23B50D184();
      OUTLINED_FUNCTION_115();
      (inited)(v117, v113);
      v120 = OUTLINED_FUNCTION_202();
      v123 = sub_23B391F1C(v120, v121, v122);

      *(v118 + 4) = v123;
      OUTLINED_FUNCTION_134();
      _os_log_impl(v124, v125, v126, v127, v118, 0xCu);
      v128 = OUTLINED_FUNCTION_227(&a11);
      __swift_destroy_boxed_opaque_existential_1(v128);
      OUTLINED_FUNCTION_57_1();
      MEMORY[0x23EE9E260]();
      OUTLINED_FUNCTION_57_1();
      MEMORY[0x23EE9E260]();
    }

    else
    {
      OUTLINED_FUNCTION_204();

      OUTLINED_FUNCTION_115();
      OUTLINED_FUNCTION_197();
      (inited)();
    }

    OUTLINED_FUNCTION_169();
    (inited)();
    OUTLINED_FUNCTION_145();
  }

  (inited)();
LABEL_29:
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B3BAAFC()
{

  OUTLINED_FUNCTION_148();

  return swift_deallocObject();
}

uint64_t sub_23B3BAB5C()
{
  v1 = OUTLINED_FUNCTION_67();
  v2(v1);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_65();
  v4(v3);
  return v0;
}

uint64_t sub_23B3BABAC()
{
  OUTLINED_FUNCTION_220();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_65();
  v3(v2);
  return v0;
}

uint64_t sub_23B3BAC04()
{
  v1 = OUTLINED_FUNCTION_67();
  v2(v1);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_65();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1)
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_33_3()
{

  return sub_23B50AB34();
}

uint64_t OUTLINED_FUNCTION_33_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a1 + 8) = v10;
  v13 = *(v11 + 176);
  *(v12 + 16) = *(v11 + 168);
  *(v12 + 24) = v13;
  return a10;
}

void sub_23B3BAD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_107();
  a19 = v25;
  a20 = v26;
  v228 = v20;
  v28 = v27;
  OUTLINED_FUNCTION_155(v29);
  v30 = sub_23B50AEF4();
  v31 = OUTLINED_FUNCTION_2_0(v30, &v237);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v32);
  v33 = sub_23B50CCA4();
  v34 = OUTLINED_FUNCTION_2_0(v33, &a16);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_76();
  v37 = OUTLINED_FUNCTION_35(v36);
  v38 = type metadata accessor for WeatherMetadata(v37);
  v39 = OUTLINED_FUNCTION_3(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v41);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_52();
  v226 = v43;
  OUTLINED_FUNCTION_24_0();
  v44 = sub_23B50C5F4();
  v45 = OUTLINED_FUNCTION_2_0(v44, &a14);
  v222 = v46;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6_0();
  v48 = OUTLINED_FUNCTION_35(v47);
  v49 = type metadata accessor for MinuteSummary(v48);
  v50 = OUTLINED_FUNCTION_28_0(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_24_0();
  v225 = sub_23B50C764();
  OUTLINED_FUNCTION_5();
  v227 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_0();
  v224 = v53;
  v54 = OUTLINED_FUNCTION_24_0();
  v55 = type metadata accessor for MinuteCondition(v54);
  v56 = OUTLINED_FUNCTION_28_0(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6_0();
  v57 = OUTLINED_FUNCTION_24_0();
  v58 = type metadata accessor for MinuteWeather(v57);
  v59 = OUTLINED_FUNCTION_28_0(v58);
  v231 = v60;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_12();
  v236 = v61;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_76();
  v237 = v63;
  OUTLINED_FUNCTION_24_0();
  v232[1] = sub_23B50C7C4();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6_0();
  v238 = v65;
  OUTLINED_FUNCTION_24_0();
  v234 = sub_23B50C154();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_0();
  v233 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v69 = OUTLINED_FUNCTION_3(v68);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_62_0();
  v71 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v73 = v72;
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_12_0();
  v77 = v75 - v76;
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_49();
  v235 = v28;
  sub_23B50C644();
  OUTLINED_FUNCTION_21_0(v24);
  if (v79)
  {
    sub_23B398890(v24, &qword_27E131E18, &unk_23B50F710);
    if (qword_280B43440 != -1)
    {
LABEL_57:
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v80 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v80, qword_280B4E9D8);
    v81 = sub_23B50CDD4();
    sub_23B50D4C4();
    v82 = OUTLINED_FUNCTION_26_2();
    v84 = v221;
    if (os_log_type_enabled(v82, v83))
    {
      OUTLINED_FUNCTION_66_1();
      v85 = swift_slowAlloc();
      OUTLINED_FUNCTION_74_0(v85);
      OUTLINED_FUNCTION_20_4();
      _os_log_impl(v86, v87, v88, v89, v90, v91);
      v92 = OUTLINED_FUNCTION_35_2();
      MEMORY[0x23EE9E260](v92);
    }

    goto LABEL_7;
  }

  v216 = v73;
  v96 = OUTLINED_FUNCTION_243();
  v217 = v71;
  v97(v96);
  v232[0] = v77;
  v214 = v23;
  sub_23B50AC94();
  v98 = sub_23B50C654();
  v99 = 0;
  v230 = *(v98 + 16);
  v100 = MEMORY[0x277D84F90];
  v229 = v98;
  while (v230 != v99)
  {
    if (v99 >= *(v98 + 16))
    {
      __break(1u);
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_23_3();
    (*(v103 + 16))(v233, v101 + v102 + *(v103 + 72) * v99, v234);
    sub_23B3B8350(v232[0], v238);
    v104 = OUTLINED_FUNCTION_65();
    sub_23B3B8B94(v104, v105, v106);
    if (v21)
    {
      OUTLINED_FUNCTION_178();
      v130(v233, v234);

      v131 = OUTLINED_FUNCTION_251();
      v132(v131);
      v133 = OUTLINED_FUNCTION_27_2();
      v233(v133);
      v134 = OUTLINED_FUNCTION_79_0();
      v233(v134);

      goto LABEL_53;
    }

    OUTLINED_FUNCTION_178();
    v107(v233, v234);
    sub_23B3BABAC();
    v108 = v100;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v113 = OUTLINED_FUNCTION_126();
      sub_23B3CA5BC(v113, v114, v115, v100);
      v108 = v116;
    }

    v110 = *(v108 + 16);
    v109 = *(v108 + 24);
    v100 = v108;
    if (v110 >= v109 >> 1)
    {
      v117 = OUTLINED_FUNCTION_70_1(v109);
      sub_23B3CA5BC(v117, v110 + 1, 1, v108);
      v100 = v118;
    }

    sub_23B3C7314(v237, type metadata accessor for MinuteWeather);
    v111 = OUTLINED_FUNCTION_251();
    v112(v111);
    *(v100 + 16) = v110 + 1;
    OUTLINED_FUNCTION_23_3();
    sub_23B3B0608();
    ++v99;
    v98 = v229;
  }

  v119 = v235;
  v120 = sub_23B50C684();
  if (*(v120 + 16))
  {
    OUTLINED_FUNCTION_65_2(MEMORY[0x277D84F90]);
    v237 = v121;
    sub_23B3BBE74();
    v122 = 0;
    v123 = a10;
    OUTLINED_FUNCTION_23_3();
    v238 = (v120 + v124);
    while (v122 < *(v120 + 16))
    {
      (*(v227 + 16))(v224, v238 + *(v227 + 72) * v122, v225);
      sub_23B3BBF24();
      if (v21)
      {

        v135 = OUTLINED_FUNCTION_68_1();
        v136(v135);
        v137 = OUTLINED_FUNCTION_27_2();
        (v120)(v137);
        v138 = OUTLINED_FUNCTION_79_0();
        (v120)(v138);
        OUTLINED_FUNCTION_132();

        goto LABEL_53;
      }

      v125 = OUTLINED_FUNCTION_68_1();
      v126(v125);
      v128 = *(a10 + 16);
      v127 = *(a10 + 24);
      if (v128 >= v127 >> 1)
      {
        OUTLINED_FUNCTION_24_2(v127);
        sub_23B3BBE74();
      }

      ++v122;
      *(a10 + 16) = v128 + 1;
      OUTLINED_FUNCTION_23_3();
      sub_23B3B0608();
      v129 = v226;
      if (v237 == v122)
      {

        v139 = 0;
        v119 = v235;
        goto LABEL_27;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v123 = MEMORY[0x277D84F90];
  v129 = v226;
  v139 = v21;
LABEL_27:
  v140 = sub_23B50C664();
  v141 = *(v140 + 16);
  v142 = v223;
  if (v141)
  {
    v239 = MEMORY[0x277D84F90];
    v238 = v140;
    v234 = v141;
    sub_23B41AE30();
    v143 = 0;
    v144 = v239;
    OUTLINED_FUNCTION_23_3();
    v237 = v145 + v146;
    v236 = v147 + 16;
    v148 = v219;
    while (v143 < *(v145 + 16))
    {
      (*(v222 + 16))(v148, v237 + *(v222 + 72) * v143);
      v119 = v228;
      sub_23B3F5030(v148);
      if (v139)
      {

        v153 = OUTLINED_FUNCTION_222();
        v154(v153);
        v155 = *(v216 + 8);
        OUTLINED_FUNCTION_134();
        v155();
        v156 = OUTLINED_FUNCTION_95(v232);
        (v155)(v156);
        OUTLINED_FUNCTION_132();

        goto LABEL_53;
      }

      v149 = OUTLINED_FUNCTION_222();
      v150(v149);
      v152 = *(v239 + 16);
      v151 = *(v239 + 24);
      if (v152 >= v151 >> 1)
      {
        OUTLINED_FUNCTION_30_3(v151);
        sub_23B41AE30();
        v148 = v219;
      }

      ++v143;
      *(v239 + 16) = v152 + 1;
      OUTLINED_FUNCTION_23_3();
      sub_23B3B0608();
      v139 = 0;
      v142 = v223;
      v145 = v238;
      if (v234 == v143)
      {

        v129 = v226;
        goto LABEL_37;
      }
    }

    goto LABEL_56;
  }

  v144 = MEMORY[0x277D84F90];
LABEL_37:
  if (!*(v100 + 16) || !*(v144 + 16))
  {

    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v169 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v169, qword_280B4E9D8);
    v170 = sub_23B50CDD4();
    sub_23B50D4B4();
    v171 = OUTLINED_FUNCTION_26_2();
    v84 = v221;
    if (os_log_type_enabled(v171, v172))
    {
      OUTLINED_FUNCTION_66_1();
      v173 = swift_slowAlloc();
      OUTLINED_FUNCTION_74_0(v173);
      OUTLINED_FUNCTION_20_4();
      _os_log_impl(v174, v175, v176, v177, v178, v179);
      v180 = OUTLINED_FUNCTION_35_2();
      MEMORY[0x23EE9E260](v180);
    }

    v181 = *(v216 + 8);
    OUTLINED_FUNCTION_169();
    v181();
    (v181)(v214, v119);
    OUTLINED_FUNCTION_101();
LABEL_7:
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v84);
    goto LABEL_53;
  }

  sub_23B50C674();
  v157 = OUTLINED_FUNCTION_235();
  sub_23B3AFEEC(v157, v158, v159, v160, v161, v162, v163, v164, v209, v22, v100, v214);
  if (v139)
  {

    OUTLINED_FUNCTION_227(&v231);

    v165 = OUTLINED_FUNCTION_119();
    v166(v165);
    v167 = OUTLINED_FUNCTION_27_2();
    v142(v167);
    v168 = OUTLINED_FUNCTION_79_0();
    v142(v168);
  }

  else
  {
    v182 = OUTLINED_FUNCTION_119();
    v238 = v183;
    v183(v182);
    *v129 = v212;
    *(v129 + v221[14]) = xmmword_23B510070;
    *(v129 + v221[15]) = v123;
    *(v129 + v221[16]) = v144;
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_143();
    sub_23B3B0608();
    OUTLINED_FUNCTION_121(v129 + v221[17]);
    sub_23B3F4818();

    OUTLINED_FUNCTION_114();
    sub_23B50AEE4();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v184, v185, v186, v217);
    MinuteForecastStringBuilder.buildLongString(from:timeZone:referenceDate:)();
    v237 = v187;
    v189 = v188;

    sub_23B398890(v218, &qword_27E131E18, &unk_23B50F710);
    OUTLINED_FUNCTION_56_1();
    v190(v221);
    OUTLINED_FUNCTION_132();

    if (v189)
    {
      v191 = v189;
    }

    else
    {
      v191 = 0xE000000000000000;
    }

    OUTLINED_FUNCTION_114();
    sub_23B50C674();
    OUTLINED_FUNCTION_144();
    sub_23B3AFEEC(v221, v192, v193, v194, v195, v196, v197, v198, v210, v211, v212, v215);
    if (v189)
    {
      v199 = v237;
    }

    else
    {
      v199 = 0;
    }

    v200 = OUTLINED_FUNCTION_119();
    v201(v200);
    sub_23B398890(v226, &qword_27E131CA0, &qword_23B5101A0);
    v202 = *(v216 + 8);
    OUTLINED_FUNCTION_130();
    v202();
    v203 = OUTLINED_FUNCTION_102();
    (v202)(v203, v189);
    *v220 = v213;
    v204 = (v220 + v221[14]);
    *v204 = v199;
    v204[1] = v191;
    *(v220 + v221[15]) = v123;
    *(v220 + v221[16]) = v144;
    OUTLINED_FUNCTION_1_5();
    sub_23B3B0608();
    OUTLINED_FUNCTION_121(v220 + v221[17]);
    OUTLINED_FUNCTION_60_1();
    __swift_storeEnumTagSinglePayload(v205, v206, v207, v208);
  }

LABEL_53:
  OUTLINED_FUNCTION_105();
}

uint64_t OUTLINED_FUNCTION_197_1()
{

  return swift_task_alloc();
}

void sub_23B3BBE74()
{
  OUTLINED_FUNCTION_1_13();
  sub_23B3B3AEC(v1, v2, v3, v4, v5, v6, v7, sub_23B4F5A84);
  *v0 = v8;
}

id OUTLINED_FUNCTION_216()
{

  return [v0 (v1 + 4011)];
}

void OUTLINED_FUNCTION_189_0(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2113;
}

void OUTLINED_FUNCTION_174_1(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

void sub_23B3BC094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_155(v24);
  v104 = sub_23B50CAE4();
  OUTLINED_FUNCTION_5();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12();
  v92 = v28;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_1();
  v91 = v30;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_189();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_76();
  v102 = v33;
  OUTLINED_FUNCTION_24_0();
  v34 = sub_23B50CAD4();
  OUTLINED_FUNCTION_5();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12();
  v97 = v38;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_191();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v44 = OUTLINED_FUNCTION_3(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_5_1();
  v87 = v47;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_76();
  v88 = v49;
  v50 = sub_23B50C724();
  v51 = 0;
  v93 = *(v50 + 16);
  v89 = *MEMORY[0x277D7B0E0];
  v98 = (v26 + 8);
  v99 = (v26 + 104);
  v100 = (v36 + 8);
  v101 = v34;
  for (i = v36; ; v36 = i)
  {
    if (v93 == v51)
    {

      v57 = 1;
      v58 = v88;
      goto LABEL_13;
    }

    if (v51 >= *(v50 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_52_0();
    (*(v36 + 16))(v21, v50 + v52 + *(v36 + 72) * v51, v34);
    sub_23B50CAC4();
    (*v99)(v20, v89, v104);
    OUTLINED_FUNCTION_99();
    sub_23B3FD404(&qword_27E1321D0, v53, MEMORY[0x277D7B0F8]);
    sub_23B50D264();
    sub_23B50D264();
    if (v107 == v105 && v108 == v106)
    {
      break;
    }

    v95 = sub_23B50D834();
    v55 = v21;
    v56 = *v98;
    (*v98)(v20, v104);
    v56(v102, v104);
    v21 = v55;

    if (v95)
    {
      goto LABEL_12;
    }

    v34 = v101;
    (*v100)(v55, v101);
    ++v51;
  }

  v59 = *v98;
  (*v98)(v20, v104);
  v59(v102, v104);

LABEL_12:

  v36 = i;
  v34 = v101;
  (*(i + 32))(v86, v21, v101);
  v58 = v88;
  sub_23B50CAB4();
  (*(i + 8))(v86, v101);
  v57 = 0;
LABEL_13:
  v94 = sub_23B50AD24();
  __swift_storeEnumTagSinglePayload(v58, v57, 1, v94);
  v60 = sub_23B50C724();
  v61 = 0;
  v103 = *(v60 + 16);
  v96 = *MEMORY[0x277D7B0E8];
  while (1)
  {
    if (v103 == v61)
    {

      v67 = 1;
      v68 = v87;
      goto LABEL_25;
    }

    if (v61 >= *(v60 + 16))
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_52_0();
    (*(v36 + 16))(v97, v60 + v62 + *(v36 + 72) * v61, v34);
    sub_23B50CAC4();
    (*v99)(v92, v96, v104);
    OUTLINED_FUNCTION_99();
    sub_23B3FD404(&qword_27E1321D0, v63, MEMORY[0x277D7B0F8]);
    sub_23B50D264();
    sub_23B50D264();
    if (v107 == v105 && v108 == v106)
    {
      break;
    }

    v65 = sub_23B50D834();
    v58 = v98;
    v66 = *v98;
    (*v98)(v92, v104);
    v66(v91, v104);

    if (v65)
    {
      goto LABEL_24;
    }

    v34 = v101;
    (*v100)(v97, v101);
    ++v61;
  }

  v58 = v98;
  v69 = *v98;
  (*v98)(v92, v104);
  v69(v91, v104);

LABEL_24:

  (*(v36 + 32))(v85, v97, v101);
  v68 = v87;
  sub_23B50CAB4();
  v70 = OUTLINED_FUNCTION_146();
  v71(v70);
  v67 = 0;
LABEL_25:
  __swift_storeEnumTagSinglePayload(v68, v67, 1, v94);
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_218();
  sub_23B3B81F8();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_218();
  sub_23B3B81F8();
  sub_23B3BCA54(&v107);
  OUTLINED_FUNCTION_151();
  sub_23B398890(v72, v73, v74);
  v75 = OUTLINED_FUNCTION_119();
  sub_23B398890(v75, v76, &unk_23B50F710);
  v77 = v107;
  OUTLINED_FUNCTION_227(&a18);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v94);
  v81 = type metadata accessor for PrecipitationShift(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v94);
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_218();
  sub_23B3B7EA8();
  OUTLINED_FUNCTION_218();
  sub_23B3B7EA8();
  *(v58 + *(v81 + 24)) = v77;
  OUTLINED_FUNCTION_20();
}

void sub_23B3BC884()
{
  OUTLINED_FUNCTION_107();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_203();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_3(v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_171();
  v8 = sub_23B50C7C4();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_106_0();
  OUTLINED_FUNCTION_210();
  sub_23B3B81F8();
  OUTLINED_FUNCTION_21_0(v0);
  if (v12)
  {
    sub_23B398890(v0, &qword_27E132190, &qword_23B510148);
    *v3 = 0;
  }

  else
  {
    (*(v10 + 32))(v1, v0, v8);
    sub_23B3BEBD8(v1, v3);
    v13 = OUTLINED_FUNCTION_68_1();
    v14(v13);
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_105();
}

void sub_23B3BCA54(char *a1@<X8>)
{
  v137 = a1;
  v1 = sub_23B50C0B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23B50C104();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v131 - v10;
  sub_23B50C714();
  sub_23B50C704();
  sub_23B50C734();
  sub_23B3BEFD0();
  v13 = v12;
  v15 = v14;
  (*(v2 + 8))(v4, v1);
  v16 = *(v6 + 8);
  v16(v8, v5);
  v16(v11, v5);
  v17 = v13 == 0xD000000000000019 && 0x800000023B528F40 == v15;
  if (v17 || (sub_23B50D834() & 1) != 0)
  {

    v18 = 0;
  }

  else
  {
    v19 = v13 == 0xD000000000000016 && 0x800000023B528F60 == v15;
    if (v19 || (sub_23B50D834() & 1) != 0)
    {

      v18 = 1;
    }

    else
    {
      v20 = v13 == 0xD000000000000015 && 0x800000023B528F80 == v15;
      if (v20 || (sub_23B50D834() & 1) != 0)
      {

        v18 = 2;
      }

      else
      {
        v21 = v13 == 0xD00000000000001BLL && 0x800000023B528FA0 == v15;
        if (v21 || (sub_23B50D834() & 1) != 0)
        {

          v18 = 3;
        }

        else
        {
          v22 = v13 == 0xD00000000000001BLL && 0x800000023B528FC0 == v15;
          if (v22 || (sub_23B50D834() & 1) != 0)
          {

            v18 = 4;
          }

          else
          {
            v23 = v13 == 0xD000000000000010 && 0x800000023B528FE0 == v15;
            if (v23 || (sub_23B50D834() & 1) != 0)
            {

              v18 = 5;
            }

            else
            {
              v24 = v13 == 0x2E656C7A7A697264 && v15 == 0xED00007472617473;
              if (v24 || (sub_23B50D834() & 1) != 0)
              {

                v18 = 6;
              }

              else
              {
                v25 = v13 == 0x2E656C7A7A697264 && v15 == 0xEC000000706F7473;
                if (v25 || (sub_23B50D834() & 1) != 0)
                {

                  v18 = 7;
                }

                else
                {
                  v26 = v13 == 0xD000000000000012 && 0x800000023B529000 == v15;
                  if (v26 || (sub_23B50D834() & 1) != 0)
                  {

                    v18 = 8;
                  }

                  else
                  {
                    v27 = v13 == 0xD000000000000012 && 0x800000023B529020 == v15;
                    if (v27 || (sub_23B50D834() & 1) != 0)
                    {

                      v18 = 9;
                    }

                    else
                    {
                      v28 = v13 == 0x6E6F632E6E696172 && v15 == 0xED0000746E617473;
                      if (v28 || (sub_23B50D834() & 1) != 0)
                      {

                        v18 = 10;
                      }

                      else
                      {
                        v29 = v13 == 0x6174732E6E696172 && v15 == 0xEA00000000007472;
                        if (v29 || (sub_23B50D834() & 1) != 0)
                        {

                          v18 = 11;
                        }

                        else
                        {
                          v30 = v13 == 0x6F74732E6E696172 && v15 == 0xE900000000000070;
                          if (v30 || (sub_23B50D834() & 1) != 0)
                          {

                            v18 = 12;
                          }

                          else
                          {
                            v31 = v13 == 0x6174732E6E696172 && v15 == 0xEF706F74735F7472;
                            if (v31 || (sub_23B50D834() & 1) != 0)
                            {

                              v18 = 13;
                            }

                            else
                            {
                              v32 = v13 == 0x6F74732E6E696172 && v15 == 0xEF74726174735F70;
                              if (v32 || (sub_23B50D834() & 1) != 0)
                              {

                                v18 = 14;
                              }

                              else
                              {
                                v136 = 0xD000000000000013;
                                v33 = v13 == 0xD000000000000013 && 0x800000023B529040 == v15;
                                if (v33 || (sub_23B50D834() & 1) != 0)
                                {

                                  v18 = 15;
                                }

                                else
                                {
                                  v34 = v13 == 0xD000000000000010 && 0x800000023B529060 == v15;
                                  if (v34 || (sub_23B50D834() & 1) != 0)
                                  {

                                    v18 = 16;
                                  }

                                  else
                                  {
                                    v35 = v13 == 0x61725F7976616568 && v15 == 0xEF706F74732E6E69;
                                    if (v35 || (sub_23B50D834() & 1) != 0)
                                    {

                                      v18 = 17;
                                    }

                                    else
                                    {
                                      v36 = v13 == 0xD000000000000015 && 0x800000023B529080 == v15;
                                      if (v36 || (sub_23B50D834() & 1) != 0)
                                      {

                                        v18 = 18;
                                      }

                                      else
                                      {
                                        v37 = v13 == 0xD000000000000015 && 0x800000023B5290A0 == v15;
                                        if (v37 || (sub_23B50D834() & 1) != 0)
                                        {

                                          v18 = 19;
                                        }

                                        else
                                        {
                                          v38 = v13 == 0xD00000000000001ELL && 0x800000023B5290C0 == v15;
                                          if (v38 || (sub_23B50D834() & 1) != 0)
                                          {

                                            v18 = 20;
                                          }

                                          else
                                          {
                                            v39 = v13 == 0xD00000000000001ELL && 0x800000023B5290E0 == v15;
                                            if (v39 || (sub_23B50D834() & 1) != 0)
                                            {

                                              v18 = 21;
                                            }

                                            else
                                            {
                                              v40 = v13 == 0xD00000000000001BLL && 0x800000023B529100 == v15;
                                              if (v40 || (sub_23B50D834() & 1) != 0)
                                              {

                                                v18 = 22;
                                              }

                                              else
                                              {
                                                v41 = v13 == 0xD00000000000001BLL && 0x800000023B529120 == v15;
                                                if (v41 || (sub_23B50D834() & 1) != 0)
                                                {

                                                  v18 = 23;
                                                }

                                                else
                                                {
                                                  v42 = v13 == 0xD00000000000001BLL && 0x800000023B529140 == v15;
                                                  if (v42 || (sub_23B50D834() & 1) != 0)
                                                  {

                                                    v18 = 24;
                                                  }

                                                  else
                                                  {
                                                    v43 = v13 == 0xD00000000000001BLL && 0x800000023B529160 == v15;
                                                    if (v43 || (sub_23B50D834() & 1) != 0)
                                                    {

                                                      v18 = 25;
                                                    }

                                                    else
                                                    {
                                                      v135 = 0xD000000000000018;
                                                      v44 = v13 == 0xD000000000000018 && 0x800000023B529180 == v15;
                                                      if (v44 || (sub_23B50D834() & 1) != 0)
                                                      {

                                                        v18 = 26;
                                                      }

                                                      else
                                                      {
                                                        v45 = v13 == v135 && 0x800000023B5291A0 == v15;
                                                        if (v45 || (sub_23B50D834() & 1) != 0)
                                                        {

                                                          v18 = 27;
                                                        }

                                                        else
                                                        {
                                                          v132 = 0xD00000000000001ALL;
                                                          v46 = v13 == 0xD00000000000001ALL && 0x800000023B5291C0 == v15;
                                                          if (v46 || (sub_23B50D834() & 1) != 0)
                                                          {

                                                            v18 = 28;
                                                          }

                                                          else
                                                          {
                                                            v47 = v13 == v132 && 0x800000023B5291E0 == v15;
                                                            if (v47 || (sub_23B50D834() & 1) != 0)
                                                            {

                                                              v18 = 29;
                                                            }

                                                            else
                                                            {
                                                              v134 = 0xD000000000000017;
                                                              v48 = v13 == 0xD000000000000017 && 0x800000023B529200 == v15;
                                                              if (v48 || (sub_23B50D834() & 1) != 0)
                                                              {

                                                                v18 = 30;
                                                              }

                                                              else
                                                              {
                                                                v49 = v13 == v134 && 0x800000023B529220 == v15;
                                                                if (v49 || (sub_23B50D834() & 1) != 0)
                                                                {

                                                                  v18 = 31;
                                                                }

                                                                else
                                                                {
                                                                  v131 = 0xD000000000000020;
                                                                  v50 = v13 == 0xD000000000000020 && 0x800000023B529240 == v15;
                                                                  if (v50 || (sub_23B50D834() & 1) != 0)
                                                                  {

                                                                    v18 = 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v51 = v13 == v131 && 0x800000023B529270 == v15;
                                                                    if (v51 || (sub_23B50D834() & 1) != 0)
                                                                    {

                                                                      v18 = 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v133 = 0xD00000000000001DLL;
                                                                      v52 = v13 == 0xD00000000000001DLL && 0x800000023B5292A0 == v15;
                                                                      if (v52 || (sub_23B50D834() & 1) != 0)
                                                                      {

                                                                        v18 = 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v53 = v13 == v133 && 0x800000023B5292C0 == v15;
                                                                        if (v53 || (sub_23B50D834() & 1) != 0)
                                                                        {

                                                                          v18 = 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v54 = v13 == v131 && 0x800000023B5292E0 == v15;
                                                                          if (v54 || (sub_23B50D834() & 1) != 0)
                                                                          {

                                                                            v18 = 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v55 = v13 == v131 && 0x800000023B529310 == v15;
                                                                            if (v55 || (sub_23B50D834() & 1) != 0)
                                                                            {

                                                                              v18 = 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v56 = v13 == v133 && 0x800000023B529340 == v15;
                                                                              if (v56 || (sub_23B50D834() & 1) != 0)
                                                                              {

                                                                                v18 = 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v57 = v13 == v133 && 0x800000023B529360 == v15;
                                                                                if (v57 || (sub_23B50D834() & 1) != 0)
                                                                                {

                                                                                  v18 = 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v58 = v13 == v132 && 0x800000023B529380 == v15;
                                                                                  if (v58 || (sub_23B50D834() & 1) != 0)
                                                                                  {

                                                                                    v18 = 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v59 = v13 == v134 && 0x800000023B5293A0 == v15;
                                                                                    if (v59 || (sub_23B50D834() & 1) != 0)
                                                                                    {

                                                                                      v18 = 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v60 = v13 == 0xD000000000000016 && 0x800000023B5293C0 == v15;
                                                                                      if (v60 || (sub_23B50D834() & 1) != 0)
                                                                                      {

                                                                                        v18 = 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v132 = 0xD00000000000001CLL;
                                                                                        v61 = v13 == 0xD00000000000001CLL && 0x800000023B5293E0 == v15;
                                                                                        if (v61 || (sub_23B50D834() & 1) != 0)
                                                                                        {

                                                                                          v18 = 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v62 = v13 == v132 && 0x800000023B529400 == v15;
                                                                                          if (v62 || (sub_23B50D834() & 1) != 0)
                                                                                          {

                                                                                            v18 = 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v63 = v13 == 0xD000000000000011 && 0x800000023B529420 == v15;
                                                                                            if (v63 || (sub_23B50D834() & 1) != 0)
                                                                                            {

                                                                                              v18 = 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v64 = v13 == 0x7365697272756C66 && v15 == 0xEE0074726174732ELL;
                                                                                              if (v64 || (sub_23B50D834() & 1) != 0)
                                                                                              {

                                                                                                v18 = 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v65 = v13 == 0x7365697272756C66 && v15 == 0xED0000706F74732ELL;
                                                                                                if (v65 || (sub_23B50D834() & 1) != 0)
                                                                                                {

                                                                                                  v18 = 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v66 = v13 == v136 && 0x800000023B529440 == v15;
                                                                                                  if (v66 || (sub_23B50D834() & 1) != 0)
                                                                                                  {

                                                                                                    v18 = 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v67 = v13 == v136 && 0x800000023B529460 == v15;
                                                                                                    if (v67 || (sub_23B50D834() & 1) != 0)
                                                                                                    {

                                                                                                      v18 = 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v68 = v13 == 0x6E6F632E776F6E73 && v15 == 0xED0000746E617473;
                                                                                                      if (v68 || (sub_23B50D834() & 1) != 0)
                                                                                                      {

                                                                                                        v18 = 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v69 = v13 == 0x6174732E776F6E73 && v15 == 0xEA00000000007472;
                                                                                                        if (v69 || (sub_23B50D834() & 1) != 0)
                                                                                                        {

                                                                                                          v18 = 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v70 = v13 == 0x6F74732E776F6E73 && v15 == 0xE900000000000070;
                                                                                                          if (v70 || (sub_23B50D834() & 1) != 0)
                                                                                                          {

                                                                                                            v18 = 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v71 = v13 == 0x6174732E776F6E73 && v15 == 0xEF706F74735F7472;
                                                                                                            if (v71 || (sub_23B50D834() & 1) != 0)
                                                                                                            {

                                                                                                              v18 = 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v72 = v13 == 0x6F74732E776F6E73 && v15 == 0xEF74726174735F70;
                                                                                                              if (v72 || (sub_23B50D834() & 1) != 0)
                                                                                                              {

                                                                                                                v18 = 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v73 = v13 == v136 && 0x800000023B529480 == v15;
                                                                                                                if (v73 || (sub_23B50D834() & 1) != 0)
                                                                                                                {

                                                                                                                  v18 = 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v74 = v13 == 0xD000000000000010 && 0x800000023B5294A0 == v15;
                                                                                                                  if (v74 || (sub_23B50D834() & 1) != 0)
                                                                                                                  {

                                                                                                                    v18 = 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v75 = v13 == 0x6E735F7976616568 && v15 == 0xEF706F74732E776FLL;
                                                                                                                    if (v75 || (sub_23B50D834() & 1) != 0)
                                                                                                                    {

                                                                                                                      v18 = 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v76 = v13 == 0xD000000000000015 && 0x800000023B5294C0 == v15;
                                                                                                                      if (v76 || (sub_23B50D834() & 1) != 0)
                                                                                                                      {

                                                                                                                        v18 = 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v77 = v13 == 0xD000000000000015 && 0x800000023B5294E0 == v15;
                                                                                                                        if (v77 || (sub_23B50D834() & 1) != 0)
                                                                                                                        {

                                                                                                                          v18 = 59;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v78 = v13 == 0xD00000000000001FLL && 0x800000023B529500 == v15;
                                                                                                                          if (v78 || (sub_23B50D834() & 1) != 0)
                                                                                                                          {

                                                                                                                            v18 = 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v79 = v13 == 0xD00000000000001FLL && 0x800000023B529520 == v15;
                                                                                                                            if (v79 || (sub_23B50D834() & 1) != 0)
                                                                                                                            {

                                                                                                                              v18 = 61;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v80 = v13 == 0xD00000000000001BLL && 0x800000023B529540 == v15;
                                                                                                                              if (v80 || (sub_23B50D834() & 1) != 0)
                                                                                                                              {

                                                                                                                                v18 = 62;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v81 = v13 == 0xD00000000000001BLL && 0x800000023B529560 == v15;
                                                                                                                                if (v81 || (sub_23B50D834() & 1) != 0)
                                                                                                                                {

                                                                                                                                  v18 = 63;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v82 = v13 == v132 && 0x800000023B529580 == v15;
                                                                                                                                  if (v82 || (sub_23B50D834() & 1) != 0)
                                                                                                                                  {

                                                                                                                                    v18 = 64;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v83 = v13 == v132 && 0x800000023B5295A0 == v15;
                                                                                                                                    if (v83 || (sub_23B50D834() & 1) != 0)
                                                                                                                                    {

                                                                                                                                      v18 = 65;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v84 = v13 == v135 && 0x800000023B5295C0 == v15;
                                                                                                                                      if (v84 || (sub_23B50D834() & 1) != 0)
                                                                                                                                      {

                                                                                                                                        v18 = 66;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v85 = v13 == v135 && 0x800000023B5295E0 == v15;
                                                                                                                                        if (v85 || (sub_23B50D834() & 1) != 0)
                                                                                                                                        {

                                                                                                                                          v18 = 67;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v86 = v13 == 0xD00000000000001BLL && 0x800000023B529600 == v15;
                                                                                                                                          if (v86 || (sub_23B50D834() & 1) != 0)
                                                                                                                                          {

                                                                                                                                            v18 = 68;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v87 = v13 == 0xD00000000000001BLL && 0x800000023B529620 == v15;
                                                                                                                                            if (v87 || (sub_23B50D834() & 1) != 0)
                                                                                                                                            {

                                                                                                                                              v18 = 69;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v88 = v13 == v134 && 0x800000023B529640 == v15;
                                                                                                                                              if (v88 || (sub_23B50D834() & 1) != 0)
                                                                                                                                              {

                                                                                                                                                v18 = 70;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v89 = v13 == v134 && 0x800000023B529660 == v15;
                                                                                                                                                if (v89 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                {

                                                                                                                                                  v18 = 71;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v90 = v13 == 0xD000000000000021 && 0x800000023B529680 == v15;
                                                                                                                                                  if (v90 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                  {

                                                                                                                                                    v18 = 72;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v91 = v13 == 0xD000000000000021 && 0x800000023B5296B0 == v15;
                                                                                                                                                    if (v91 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                    {

                                                                                                                                                      v18 = 73;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v92 = v13 == v133 && 0x800000023B5296E0 == v15;
                                                                                                                                                      if (v92 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                      {

                                                                                                                                                        v18 = 74;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v93 = v13 == v133 && 0x800000023B529700 == v15;
                                                                                                                                                        if (v93 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                        {

                                                                                                                                                          v18 = 75;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v94 = v13 == 0xD000000000000021 && 0x800000023B529720 == v15;
                                                                                                                                                          if (v94 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                          {

                                                                                                                                                            v18 = 76;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v95 = v13 == 0xD000000000000021 && 0x800000023B529750 == v15;
                                                                                                                                                            if (v95 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                            {

                                                                                                                                                              v18 = 77;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v96 = v13 == v133 && 0x800000023B529780 == v15;
                                                                                                                                                              if (v96 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                              {

                                                                                                                                                                v18 = 78;
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v97 = v13 == v133 && 0x800000023B5297A0 == v15;
                                                                                                                                                                if (v97 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                {

                                                                                                                                                                  v18 = 79;
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v98 = v13 == v134 && 0x800000023B5297C0 == v15;
                                                                                                                                                                  if (v98 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                  {

                                                                                                                                                                    v18 = 80;
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v99 = v13 == 0xD000000000000014 && 0x800000023B5297E0 == v15;
                                                                                                                                                                    if (v99 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                    {

                                                                                                                                                                      v18 = 81;
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v100 = v13 == v136 && 0x800000023B529800 == v15;
                                                                                                                                                                      if (v100 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                      {

                                                                                                                                                                        v18 = 82;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v101 = v13 == 0xD000000000000019 && 0x800000023B529820 == v15;
                                                                                                                                                                        if (v101 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                        {

                                                                                                                                                                          v18 = 83;
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v102 = v13 == 0xD000000000000019 && 0x800000023B529840 == v15;
                                                                                                                                                                          if (v102 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                          {

                                                                                                                                                                            v18 = 84;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v103 = v13 == 0x6F632E7465656C73 && v15 == 0xEE00746E6174736ELL;
                                                                                                                                                                            if (v103 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                            {

                                                                                                                                                                              v18 = 85;
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v104 = v13 == 0x74732E7465656C73 && v15 == 0xEB00000000747261;
                                                                                                                                                                              if (v104 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                              {

                                                                                                                                                                                v18 = 86;
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v105 = v13 == 0x74732E7465656C73 && v15 == 0xEA0000000000706FLL;
                                                                                                                                                                                if (v105 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                {

                                                                                                                                                                                  v18 = 87;
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  v106 = v13 == 0xD000000000000010 && 0x800000023B529860 == v15;
                                                                                                                                                                                  if (v106 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                  {

                                                                                                                                                                                    v18 = 88;
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    v107 = v13 == 0xD000000000000010 && 0x800000023B529880 == v15;
                                                                                                                                                                                    if (v107 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                    {

                                                                                                                                                                                      v18 = 89;
                                                                                                                                                                                    }

                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                      v108 = v13 == 0xD000000000000016 && 0x800000023B5298A0 == v15;
                                                                                                                                                                                      if (v108 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                      {

                                                                                                                                                                                        v18 = 90;
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        v109 = v13 == v136 && 0x800000023B5298C0 == v15;
                                                                                                                                                                                        if (v109 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                        {

                                                                                                                                                                                          v18 = 91;
                                                                                                                                                                                        }

                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                          v110 = v13 == 0xD000000000000012 && 0x800000023B5298E0 == v15;
                                                                                                                                                                                          if (v110 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                          {

                                                                                                                                                                                            v18 = 92;
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            v111 = v13 == v135 && 0x800000023B529900 == v15;
                                                                                                                                                                                            if (v111 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                            {

                                                                                                                                                                                              v18 = 93;
                                                                                                                                                                                            }

                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                              v112 = v13 == v135 && 0x800000023B529920 == v15;
                                                                                                                                                                                              if (v112 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                              {

                                                                                                                                                                                                v18 = 94;
                                                                                                                                                                                              }

                                                                                                                                                                                              else
                                                                                                                                                                                              {
                                                                                                                                                                                                v113 = v13 == 0x6E6F632E6C696168 && v15 == 0xED0000746E617473;
                                                                                                                                                                                                if (v113 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                                {

                                                                                                                                                                                                  v18 = 95;
                                                                                                                                                                                                }

                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                  v114 = v13 == 0x6174732E6C696168 && v15 == 0xEA00000000007472;
                                                                                                                                                                                                  if (v114 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                                  {

                                                                                                                                                                                                    v18 = 96;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v115 = v13 == 0x6F74732E6C696168 && v15 == 0xE900000000000070;
                                                                                                                                                                                                    if (v115 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                                    {

                                                                                                                                                                                                      v18 = 97;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v116 = v13 == 0x6174732E6C696168 && v15 == 0xEF706F74735F7472;
                                                                                                                                                                                                      if (v116 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                                      {

                                                                                                                                                                                                        v18 = 98;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v117 = v13 == 0x6F74732E6C696168 && v15 == 0xEF74726174735F70;
                                                                                                                                                                                                        if (v117 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                                        {

                                                                                                                                                                                                          v18 = 99;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v118 = v13 == 0x7261656C63 && v15 == 0xE500000000000000;
                                                                                                                                                                                                          if (v118 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                                          {
                                                                                                                                                                                                          }

                                                                                                                                                                                                          else
                                                                                                                                                                                                          {
                                                                                                                                                                                                            if (qword_280B43440 != -1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              swift_once();
                                                                                                                                                                                                            }

                                                                                                                                                                                                            v119 = sub_23B50CDF4();
                                                                                                                                                                                                            __swift_project_value_buffer(v119, qword_280B4E9D8);
                                                                                                                                                                                                            v120 = swift_allocObject();
                                                                                                                                                                                                            *(v120 + 16) = v13;
                                                                                                                                                                                                            *(v120 + 24) = v15;

                                                                                                                                                                                                            v121 = sub_23B50CDD4();
                                                                                                                                                                                                            v122 = sub_23B50D4B4();
                                                                                                                                                                                                            v123 = swift_allocObject();
                                                                                                                                                                                                            *(v123 + 16) = 32;
                                                                                                                                                                                                            v124 = swift_allocObject();
                                                                                                                                                                                                            *(v124 + 16) = 8;
                                                                                                                                                                                                            v125 = swift_allocObject();
                                                                                                                                                                                                            *(v125 + 16) = sub_23B3FD3DC;
                                                                                                                                                                                                            *(v125 + 24) = v120;
                                                                                                                                                                                                            v126 = swift_allocObject();
                                                                                                                                                                                                            *(v126 + 16) = sub_23B3FD4D4;
                                                                                                                                                                                                            *(v126 + 24) = v125;
                                                                                                                                                                                                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132178, &qword_23B510120);
                                                                                                                                                                                                            inited = swift_initStackObject();
                                                                                                                                                                                                            *(inited + 16) = xmmword_23B510090;
                                                                                                                                                                                                            *(inited + 32) = sub_23B3FD4D8;
                                                                                                                                                                                                            *(inited + 40) = v123;
                                                                                                                                                                                                            *(inited + 48) = sub_23B3FD4D8;
                                                                                                                                                                                                            *(inited + 56) = v124;
                                                                                                                                                                                                            *(inited + 64) = sub_23B3FD4CC;
                                                                                                                                                                                                            *(inited + 72) = v126;

                                                                                                                                                                                                            if (os_log_type_enabled(v121, v122))
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v128 = sub_23B3E870C(12);
                                                                                                                                                                                                              v129 = swift_slowAlloc();
                                                                                                                                                                                                              v138 = v129;
                                                                                                                                                                                                              *v128 = 136315138;
                                                                                                                                                                                                              v130 = sub_23B391F1C(v13, v15, &v138);

                                                                                                                                                                                                              *(v128 + 4) = v130;
                                                                                                                                                                                                              _os_log_impl(&dword_23B38D000, v121, v122, "Invalid next hour precipitation token: %s", v128, 0xCu);
                                                                                                                                                                                                              __swift_destroy_boxed_opaque_existential_1(v129);
                                                                                                                                                                                                              MEMORY[0x23EE9E260](v129, -1, -1);
                                                                                                                                                                                                              MEMORY[0x23EE9E260](v128, -1, -1);
                                                                                                                                                                                                            }

                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                          }

                                                                                                                                                                                                          v18 = 100;
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
  }

  *v137 = v18;
}