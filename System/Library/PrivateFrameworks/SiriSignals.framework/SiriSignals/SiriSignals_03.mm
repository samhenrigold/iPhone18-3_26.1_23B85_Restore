uint64_t sub_2314D26FC()
{
  v1 = v0;
  sub_231586954();
  v2 = type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0);
  v3 = sub_231586C24();

  MEMORY[0x23192FF80](0x73776F646E697720, 0xEE0020726F66202CLL);
  MEMORY[0x23192FF80](*(v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 8));
  MEMORY[0x23192FF80](0x656972657571202CLL, 0xED00002074612064);
  sub_23149C774();
  v4 = sub_231586C24();
  MEMORY[0x23192FF80](v4);

  return v3;
}

void sub_2314D283C(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v6 = sub_2314D2948(v5);
    ++v1;
    if (v8)
    {
      v9 = v6;
      v10 = v7;
      v11 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2314F0DD4();
        v3 = v14;
      }

      v12 = *(v3 + 16);
      if (v12 >= *(v3 + 24) >> 1)
      {
        sub_2314F0DD4();
        v3 = v15;
      }

      *(v3 + 16) = v12 + 1;
      v13 = (v3 + 24 * v12);
      v13[4] = v9;
      v13[5] = v10;
      v13[6] = v11;
      v1 = v4;
    }
  }
}

uint64_t sub_2314D2948(uint64_t a1)
{
  strcpy(v21, "sharedUserId");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  sub_2315868E4();
  sub_231566B94(v22, a1, &v23);
  v2 = sub_2314D5E98(v22);
  if (!v24)
  {

    sub_2314A2910(&v23, &qword_27DD5B218, &unk_23158A010);
    goto LABEL_8;
  }

  if ((OUTLINED_FUNCTION_46(v2, v3, v4, MEMORY[0x277D837D0], v5) & 1) == 0)
  {

LABEL_8:
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v11 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v11, qword_280D72248);
    v12 = sub_231585FE4();
    v13 = sub_2315865E4();
    if (!OUTLINED_FUNCTION_10_0(v13))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  strcpy(v21, "eventTimestamp");
  HIBYTE(v21[1]) = -18;
  sub_2315868E4();
  sub_231566B94(v22, a1, &v23);

  v6 = sub_2314D5E98(v22);
  if (v24)
  {
    if (OUTLINED_FUNCTION_46(v6, v7, v8, MEMORY[0x277D839F8], v9))
    {
      return v21[0];
    }
  }

  else
  {

    sub_2314A2910(&v23, &qword_27DD5B218, &unk_23158A010);
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v14 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v14, qword_280D72248);
  v12 = sub_231585FE4();
  v15 = sub_2315865E4();
  if (OUTLINED_FUNCTION_10_0(v15))
  {
LABEL_17:
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_26();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
    OUTLINED_FUNCTION_10();
  }

LABEL_18:

  return 0;
}

uint64_t sub_2314D2BD0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v25 = a1;

  v4 = 0;
  sub_2314D52C4(&v25);
  if (*(v25 + 16))
  {
    v1 = *(v25 + 32);
    v4 = *(v25 + 40);
    v3 = *(v25 + 48);
    v2 = *(v25 + 56);

    sub_2314D5C3C(0, 1);
    v5 = *(v25 + 16);
    if (v5)
    {
      v6 = (v25 + 56);
      v7 = MEMORY[0x277D84F90];
      v8 = v2;
      v9 = v3;
      v10 = v1;
      v11 = v4;
      while (1)
      {
        v1 = *(v6 - 3);
        v4 = *(v6 - 2);
        v3 = *(v6 - 1);
        v2 = *v6;
        v12 = v1 == v10 && v4 == v11;
        if (!v12 && (sub_231586C44() & 1) == 0)
        {
          break;
        }

        v13 = qword_27DD5AD18;

        if (v13 != -1)
        {
          swift_once();
        }

        if (vabdd_f64(v3, v8) >= *&qword_27DD5B2C0)
        {
          goto LABEL_15;
        }

        v3 = v9;
        v1 = v10;
        v4 = v11;
LABEL_22:
        v6 += 4;
        v8 = v2;
        if (!--v5)
        {
          goto LABEL_26;
        }
      }

LABEL_15:
      if (v3 < v8)
      {
        v8 = v3;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_19_2();
        sub_2314F0CFC();
        v7 = v17;
      }

      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_18(v14);
        sub_2314F0CFC();
        v7 = v18;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 32 * v15;
      *(v16 + 32) = v10;
      *(v16 + 40) = v11;
      *(v16 + 48) = v9;
      *(v16 + 56) = v8;
      v9 = v3;
      v10 = v1;
      v11 = v4;
      goto LABEL_22;
    }

    v7 = MEMORY[0x277D84F90];
LABEL_26:

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_19_2();
  sub_2314F0CFC();
  v7 = v23;
LABEL_27:
  v20 = *(v7 + 16);
  v19 = *(v7 + 24);
  if (v20 >= v19 >> 1)
  {
    OUTLINED_FUNCTION_18(v19);
    sub_2314F0CFC();
    v7 = v24;
  }

  *(v7 + 16) = v20 + 1;
  v21 = v7 + 32 * v20;
  *(v21 + 32) = v1;
  *(v21 + 40) = v4;
  *(v21 + 48) = v3;
  *(v21 + 56) = v2;
  return v7;
}

uint64_t sub_2314D2E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  if (a2)
  {
    sub_2314D187C(a1, a2, v10 - v9);
    if (*(*(v11 + *(v7 + 24)) + 16))
    {

      MEMORY[0x23192FF80](32, 0xE100000000000000);
      v12 = sub_2314D2F8C();
      MEMORY[0x23192FF80](v12);

      a1 = a3;
    }

    else
    {
      a1 = 0;
    }

    OUTLINED_FUNCTION_0_10();
    sub_2314D5FBC(v11, v13);
  }

  return a1;
}

uint64_t sub_2314D2F8C()
{
  v1 = *(v0 + *(type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0) + 24));
  v2 = *(v1 + 16);
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_23152D598(0, v2, 0);
    v3 = v1 + 40;
    do
    {
      sub_231586954();
      MEMORY[0x23192FF80](0xD000000000000013, 0x8000000231591250);
      sub_2315864E4();
      MEMORY[0x23192FF80](0xD000000000000016, 0x8000000231591270);
      sub_2315864E4();
      MEMORY[0x23192FF80](41, 0xE100000000000000);
      v5 = *(v12 + 16);
      v4 = *(v12 + 24);
      if (v5 >= v4 >> 1)
      {
        v7 = OUTLINED_FUNCTION_18(v4);
        sub_23152D598(v7, v5 + 1, 1);
      }

      *(v12 + 16) = v5 + 1;
      v6 = v12 + 16 * v5;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0xE000000000000000;
      v3 += 16;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  sub_2314A7490();
  v8 = sub_231586154();
  v10 = v9;

  MEMORY[0x23192FF80](v8, v10);

  MEMORY[0x23192FF80](10528, 0xE200000000000000);
  return 8232;
}

uint64_t sub_2314D31A4()
{
  result = sub_2314A1DFC(1, 0);
  qword_280D6F488 = result;
  unk_280D6F490 = v1;
  qword_280D6F498 = v2;
  return result;
}

uint64_t sub_2314D31D4(uint64_t a1, uint64_t a2, double a3)
{
  sub_231586954();
  MEMORY[0x23192FF80](0xD000000000000011, 0x8000000231591600);
  MEMORY[0x23192FF80](a1, a2);
  MEMORY[0x23192FF80](2113568, 0xE300000000000000);
  sub_2315864E4();
  MEMORY[0x23192FF80](93, 0xE100000000000000);
  return 0;
}

BOOL sub_2314D32B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a1 == a3 && a2 == a4)
  {
    return a5 == a6;
  }

  v9 = sub_231586C44();
  result = 0;
  if (v9)
  {
    return a5 == a6;
  }

  return result;
}

uint64_t sub_2314D33A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_231586954();

  MEMORY[0x23192FF80](a1, a2);
  MEMORY[0x23192FF80](0x73746E756F63202CLL, 0xEA0000000000203ALL);
  sub_2314B676C();
  v5 = sub_2315860E4();
  MEMORY[0x23192FF80](v5);

  MEMORY[0x23192FF80](93, 0xE100000000000000);
  return 0x49656C646E75625BLL;
}

void sub_2314D348C(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a2;
  v17[0] = 102;
  v17[1] = 0xE100000000000000;
  v6 = sub_2314B5298(v5);
  MEMORY[0x23192FF80](v6);

  sub_2315868E4();
  sub_231566B94(v17, a3, &v18);
  sub_2314D5E98(v17);
  if (v19)
  {
    if (swift_dynamicCast())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17[0] = *a1;
      sub_231575A34(102, v5, isUniquelyReferenced_nonNull_native, v8, v9);
      *a1 = v17[0];
      return;
    }
  }

  else
  {
    sub_2314A2910(&v18, &qword_27DD5B218, &unk_23158A010);
  }

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v10 = sub_231585FF4();
  __swift_project_value_buffer(v10, qword_280D72248);

  v11 = sub_231585FE4();
  v12 = sub_2315865E4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136315394;
    sub_2314B5298(v5);
    v15 = sub_2314A22E8();

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    sub_231586104();
    v16 = sub_2314A22E8();

    *(v13 + 14) = v16;
    _os_log_impl(&dword_231496000, v11, v12, "No count for f%s in %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v14, -1, -1);
    MEMORY[0x231931280](v13, -1, -1);
  }
}

unint64_t sub_2314D3734(uint64_t a1, uint64_t a2)
{
  sub_231586954();

  MEMORY[0x23192FF80](a1, a2);
  MEMORY[0x23192FF80](2109216, 0xE300000000000000);
  v4 = sub_231586C24();
  MEMORY[0x23192FF80](v4);

  MEMORY[0x23192FF80](93, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t sub_2314D3818(uint64_t a1, uint64_t a2, double a3)
{

  result = MEMORY[0x23192FF80](64, 0xE100000000000000);
  v5 = round(a3);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    v6 = sub_231586C24();
    MEMORY[0x23192FF80](v6);

    return a1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2314D38EC()
{
  result = sub_2314A1DFC(5, 0);
  qword_27DD5B2D0 = result;
  *algn_27DD5B2D8 = v1;
  qword_27DD5B2E0 = v2;
  return result;
}

BOOL sub_2314D391C()
{

  v0 = OUTLINED_FUNCTION_20_3(&qword_27DD5B2F8, &qword_231589318);

  v1 = *(v0 + 16);

  return v1 == 0;
}

uint64_t sub_2314D3978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v6 = OUTLINED_FUNCTION_20_3(&qword_27DD5B2F8, &qword_231589318);

  sub_231566888(a1, a2, v6, a3);
}

uint64_t sub_2314D3A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a1;

  sub_231514164(sub_2314D45FC, v5);

  return sub_2314A2910(a1, &qword_27DD5B2F0, &qword_231589310);
}

uint64_t sub_2314D3A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B2F0, &qword_231589310);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A1D9C(a4, &v8 - v6, &qword_27DD5B2F0, &qword_231589310);

  return sub_23155C480();
}

uint64_t sub_2314D3B5C()
{

  sub_231514164(sub_2314D3BB4, 0);
}

uint64_t sub_2314D3BB4(uint64_t *a1)
{

  type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0);
  result = sub_2315860F4();
  *a1 = result;
  return result;
}

uint64_t sub_2314D3C08()
{

  return v0;
}

uint64_t sub_2314D3C30()
{
  sub_2314D3C08();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_2314D3C64()
{
  v1 = v0;
  type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0);
  v2 = sub_2315860F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B300, &qword_231589330);
  swift_allocObject();
  v1[2] = sub_23151FC94(v2, 0xD000000000000012, 0x8000000231591330);
  v1[3] = 0xD000000000000014;
  v1[4] = 0x8000000231589230;
  return v1;
}

uint64_t sub_2314D3D28()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  sub_2314A2910(v0 + OBJC_IVAR____TtC11SiriSignals22BiomeQueriesNowPlaying_cacheCountAggregation, &qword_27DD5B330, &qword_231589378);
  return v0;
}

uint64_t sub_2314D3D78()
{
  sub_2314D3D28();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t BiomeQueriesRecognizedUser.__allocating_init(queryProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_23149FD3C(a1, v2 + 16);
  return v2;
}

uint64_t sub_2314D3E34()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(0xD000000000000037, 0x8000000231591120, "recognizedUser.getUsers", 23, 2, sub_2314D3ED4, 0, MEMORY[0x277D837D0], v1, v2);
}

void sub_2314D3ED4(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 32;
  v15 = MEMORY[0x277D84F90];
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_18;
    }

    v5 = *(v3 + 8 * v1);

    sub_2315868E4();
    if (!*(v5 + 16) || (v6 = sub_231574E10(v16), (v7 & 1) == 0))
    {

      sub_2314D5E98(v16);
      goto LABEL_15;
    }

    sub_2314A24F0(*(v5 + 56) + 32 * v6, v17);
    sub_2314D5E98(v16);

    if ((swift_dynamicCast() & 1) != 0 && (v8 = v19) != 0)
    {
      v14 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23149D588();
        v15 = v12;
      }

      v9 = *(v15 + 16);
      v10 = v9 + 1;
      if (v9 >= *(v15 + 24) >> 1)
      {
        sub_23149D588();
        v10 = v9 + 1;
        v15 = v13;
      }

      *(v15 + 16) = v10;
      v11 = v15 + 16 * v9;
      *(v11 + 32) = v14;
      *(v11 + 40) = v8;
      v1 = v4;
    }

    else
    {
LABEL_15:
      ++v1;
    }
  }
}

uint64_t BiomeQueriesRecognizedUser.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_2314D4128(uint64_t a1)
{
  sub_2314D41E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2314D41E0(uint64_t a1)
{
  if (!qword_280D6F438)
  {
    type metadata accessor for BiomeQueriesNowPlaying.CachedCountsAggregation(255);
    v1 = sub_231586774();
    if (!v2)
    {
      atomic_store(v1, &qword_280D6F438);
    }
  }
}

void sub_2314D4338(uint64_t a1)
{
  sub_231585884();
  if (v1 <= 0x3F)
  {
    sub_2314D4534(319, &qword_280D6EA20, &type metadata for BiomeQueriesNowPlaying.TimeWindow, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for BiomeQueriesNowPlaying.TimeWindow(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BiomeQueriesNowPlaying.TimeWindow(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_2314D4474(uint64_t a1)
{
  sub_231585884();
  if (v1 <= 0x3F)
  {
    sub_2314D4534(319, &qword_280D6EA28, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2314D4584(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2314D4534(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2314D4584(uint64_t a1)
{
  if (!qword_280D6EA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B2E8, &unk_23158B460);
    sub_2314B676C();
    v1 = sub_231586124();
    if (!v2)
    {
      atomic_store(v1, &qword_280D6EA40);
    }
  }
}

uint64_t sub_2314D4638(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2314D46C4(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_2314D470C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_231586C84();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = sub_23149C888(v7, v6);
    OUTLINED_FUNCTION_5_2();
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v11;
    if (*(v9 + 24) < v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      sub_231586A74();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    OUTLINED_FUNCTION_27_0();
    v19 = (v18[6] + 16 * v10);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v10) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_231507FFC(v14, a2 & 1);
  v16 = sub_23149C888(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v10 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000001BLL, 0x80000002315913A0);
  sub_231586A54();
  MEMORY[0x23192FF80](39, 0xE100000000000000);
  sub_231586AA4();
  __break(1u);
}

unint64_t *sub_2314D49D0(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_2314D4C8C(v8, v4, v2);
      MEMORY[0x231931280](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_23149BEE0(0, v4, v5);
  v6 = sub_2314D4B34(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t *sub_2314D4B34(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v18 = result;
  v19 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + v13);

    v15 = sub_2314CD714(v14, &unk_284610990);

    if (v15)
    {
      *(v18 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        return sub_2314D4D04(v18, a2, v19, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_2314D4D04(v18, a2, v19, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2314D4C8C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_2314D4B34(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_2314D4D04(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B328, &qword_231589370);
  result = sub_231586AE4();
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
  v12 = result + 64;
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(*(v4 + 48) + v16);
    v29 = *(v17 + 8 * v16);
    sub_231586D14();

    sub_231586274();

    result = sub_231586D44();
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
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + v22) = v18;
    *(*(v9 + 56) + 8 * v22) = v29;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v28;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2314D4FB0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StreamedEventsAggregator.AppEvent(0);
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v9);
  v44 = &v41 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v43 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B348, &qword_231589398);
  result = sub_231586AE4();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v43;
  v42 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v46 = (v14 - 1) & v14;
LABEL_16:
    v22 = v18 | (v15 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v44;
    v47 = *(v45 + 72);
    sub_2314D609C(v23 + v47 * v22, v44, type metadata accessor for StreamedEventsAggregator.AppEvent);
    OUTLINED_FUNCTION_13_2();
    sub_2314D5F5C(v27, v17, v28);
    sub_231586D14();

    sub_231586274();
    result = sub_231586D44();
    v29 = -1 << *(v13 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v17 = v43;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v16 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v17 = v43;
LABEL_25:
    *(v16 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v13 + 48) + 16 * v32);
    *v37 = v26;
    v37[1] = v25;
    OUTLINED_FUNCTION_13_2();
    result = sub_2314D5F5C(v17, v38, v39);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v42;
    v14 = v46;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    ++v19;
    if (a1[v15])
    {
      OUTLINED_FUNCTION_9_0();
      v46 = v21 & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2314D52C4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231562AC4(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_2314D5330(v9);
  *a1 = v2;
  return result;
}

uint64_t sub_2314D5330(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231586C14();
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
        v6 = sub_2315863E4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2314D549C(v7, v8, a1, v4);
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
    return sub_2314D5424(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2314D5424(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 - 32;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *(v9 + 16))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        v12 = *(v9 + 56);
        v13 = *(v9 + 16);
        *(v9 + 32) = *v9;
        *(v9 + 48) = v13;
        *v9 = v10;
        *(v9 + 8) = v11;
        *(v9 + 16) = v7;
        *(v9 + 24) = v12;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2314D549C(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v86 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9 + 16);
        v11 = *a3 + 32 * v7;
        v12 = 32 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 80);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 4;
          v19 = (v10 < v13) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 32 * v6 - 16;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = *(v24 + 1);
                v29 = *v25;
                *v24 = *(v25 - 1);
                *(v24 + 1) = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 32;
              v12 += 32;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v9 - 32;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 32 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *(v35 + 16))
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                v37 = *(v35 + 40);
                v38 = *(v35 + 56);
                v39 = *(v35 + 16);
                *(v35 + 32) = *v35;
                *(v35 + 48) = v39;
                *v35 = v36;
                *(v35 + 8) = v37;
                *(v35 + 16) = v33;
                *(v35 + 24) = v38;
                v35 -= 32;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 32;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v88 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2314F0BEC();
        v8 = v84;
      }

      v41 = v8[2];
      v42 = v41 + 1;
      if (v41 >= v8[3] >> 1)
      {
        sub_2314F0BEC();
        v8 = v85;
      }

      v8[2] = v42;
      v43 = v8 + 4;
      v44 = &v8[2 * v41 + 4];
      *v44 = v7;
      v44[1] = v9;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v41)
      {
        while (1)
        {
          v45 = v42 - 1;
          v46 = &v43[2 * v42 - 2];
          v47 = &v8[2 * v42];
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v48 = v8[4];
            v49 = v8[5];
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_56:
            if (v51)
            {
              goto LABEL_96;
            }

            v63 = *v47;
            v62 = v47[1];
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_99;
            }

            v67 = v46[1];
            v68 = v67 - *v46;
            if (__OFSUB__(v67, *v46))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v65, v68))
            {
              goto LABEL_104;
            }

            if (v65 + v68 >= v50)
            {
              if (v50 < v68)
              {
                v45 = v42 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v42 < 2)
          {
            goto LABEL_98;
          }

          v70 = *v47;
          v69 = v47[1];
          v58 = __OFSUB__(v69, v70);
          v65 = v69 - v70;
          v66 = v58;
LABEL_71:
          if (v66)
          {
            goto LABEL_101;
          }

          v72 = *v46;
          v71 = v46[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_103;
          }

          if (v73 < v65)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v45 - 1 >= v42)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
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

          if (!*a3)
          {
            goto LABEL_112;
          }

          v77 = &v43[2 * v45 - 2];
          v78 = *v77;
          v79 = &v43[2 * v45];
          v80 = v79[1];
          sub_2314D5AB8((*a3 + 32 * *v77), (*a3 + 32 * *v79), (*a3 + 32 * v80), v89);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v80 < v78)
          {
            goto LABEL_91;
          }

          v81 = v8;
          v82 = v8[2];
          if (v45 > v82)
          {
            goto LABEL_92;
          }

          *v77 = v78;
          v77[1] = v80;
          if (v45 >= v82)
          {
            goto LABEL_93;
          }

          v42 = v82 - 1;
          memmove(&v43[2 * v45], v79 + 2, 16 * (v82 - 1 - v45));
          v81[2] = v82 - 1;
          v83 = v82 > 2;
          v8 = v81;
          v5 = 0;
          if (!v83)
          {
            goto LABEL_85;
          }
        }

        v52 = &v43[2 * v42];
        v53 = *(v52 - 8);
        v54 = *(v52 - 7);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_94;
        }

        v57 = *(v52 - 6);
        v56 = *(v52 - 5);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_95;
        }

        v59 = v47[1];
        v60 = v59 - *v47;
        if (__OFSUB__(v59, *v47))
        {
          goto LABEL_97;
        }

        v58 = __OFADD__(v50, v60);
        v61 = v50 + v60;
        if (v58)
        {
          goto LABEL_100;
        }

        if (v61 >= v55)
        {
          v75 = *v46;
          v74 = v46[1];
          v58 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v58)
          {
            goto LABEL_105;
          }

          if (v50 < v76)
          {
            v45 = v42 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v88;
      a4 = v86;
      if (v88 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_2314D598C(&v91, *result, a3);
LABEL_89:
}

uint64_t sub_2314D598C(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_231562458(v5, v7, v8, v9);
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
    sub_2314D5AB8((*a3 + 32 * *v12), (*a3 + 32 * *v14), (*a3 + 32 * v15), a2);
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

uint64_t sub_2314D5AB8(double *a1, double *a2, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_2314F18F8(a1, (a2 - a1) / 32, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v6[2] >= v4[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 4;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 4;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *(v12 + 1);
    *v7 = *v12;
    *(v7 + 1) = v14;
    goto LABEL_13;
  }

  sub_2314F18F8(a2, (a3 - a2) / 32, a4);
  v10 = &v4[4 * v9];
LABEL_15:
  for (v5 -= 4; v10 > v4 && v6 > v7; v5 -= 4)
  {
    if (*(v10 - 2) < *(v6 - 2))
    {
      v17 = v6 - 4;
      v13 = v5 + 4 == v6;
      v6 -= 4;
      if (!v13)
      {
        v18 = *(v17 + 1);
        *v5 = *v17;
        *(v5 + 1) = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 4)
    {
      v16 = *(v10 - 1);
      *v5 = *(v10 - 2);
      *(v5 + 1) = v16;
    }

    v10 -= 4;
  }

LABEL_28:
  v19 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[4 * v19])
  {
    memmove(v6, v4, 32 * v19);
  }

  return 1;
}

uint64_t sub_2314D5C3C(uint64_t result, uint64_t a2)
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

  sub_23153A0B8(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 32 * v5);
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

  result = sub_2314F18F8((v9 + 32 * a2), v11 - a2, v10);
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

uint64_t sub_2314D5D18(uint64_t result, uint64_t a2)
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

  v7 = (result - a2);
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

  sub_23153A0D0(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 24 * v5);
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

  result = sub_2314AE120((v9 + 24 * a2), v11 - a2, v10);
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

uint64_t sub_2314D5DFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = type metadata accessor for BiomeQueriesNowPlaying.UserTimeWindowsCache();
  v10 = &off_284614040;
  *&v8 = a2;
  v6 = *a3;
  *(v6 + 16) = a1 + 1;
  return sub_23149FD3C(&v8, v6 + 40 * a1 + 32);
}

uint64_t sub_2314D5EEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B330, &qword_231589378);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314D5F5C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2314D5FBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

_OWORD *sub_2314D6070(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2314D609C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2314D6138(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2314D6178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2314D61C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_2314D6208(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2314D625C()
{
  result = qword_27DD5B350;
  if (!qword_27DD5B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B350);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_45()
{

  return sub_231585884();
}

uint64_t BiomeSQLQueryResultProvider.query<A>(using:signpostName:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v11 = a5;
  v15 = MEMORY[0x231930B10]();
  sub_2314D63F0(a3, a4, v11, a1, a6, a7, a8, &v17);
  objc_autoreleasePoolPop(v15);
  return v17;
}

uint64_t sub_2314D63F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v61 = a4;
  v62 = a7;
  v64 = a9;
  v14 = type metadata accessor for SiriSignalsSignpost(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D70418 != -1)
  {
    swift_once();
  }

  v17 = qword_280D72240;
  sub_231585FC4();
  v18 = &v16[*(v14 + 20)];
  *v18 = a1;
  *(v18 + 1) = a2;
  v18[16] = a3;
  sub_2315866D4();
  v63 = v17;
  v65 = a1;
  v66 = a2;
  sub_231585FA4();
  v19 = [objc_allocWithZone(MEMORY[0x277CF1A88]) init];
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v68 = v16;
  v20 = sub_231585FF4();
  __swift_project_value_buffer(v20, qword_280D72248);

  v21 = sub_231585FE4();
  v22 = sub_2315865D4();

  v23 = os_log_type_enabled(v21, v22);
  v67 = a3;
  v60 = a8;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = a6;
    v26 = v19;
    v27 = swift_slowAlloc();
    v70 = v27;
    *v24 = 136315138;
    *(v24 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v21, v22, "BiomeSQLQueryResultProvider: executing: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v28 = v27;
    v19 = v26;
    a6 = v25;
    MEMORY[0x231931280](v28, -1, -1);
    MEMORY[0x231931280](v24, -1, -1);
  }

  v29 = sub_2315865B4();
  v30 = [v29 error];
  if (v30)
  {
    v31 = v30;
    v32 = sub_231585FE4();
    v33 = sub_2315865E4();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v68;
    if (v34)
    {
      v36 = v19;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      v39 = v31;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&dword_231496000, v32, v33, "BiomeSQLQueryResultProvider: BiomeSQL query error: %@", v37, 0xCu);
      sub_2314BEEA4(v38);
      MEMORY[0x231931280](v38, -1, -1);
      v41 = v37;
      v19 = v36;
      MEMORY[0x231931280](v41, -1, -1);
    }

    v42 = a6(MEMORY[0x277D84F90]);
  }

  else
  {
    v59 = a6;
    v61 = v19;
    v43 = MEMORY[0x277D84F90];
    v44 = MEMORY[0x277D84F70];
    v35 = v68;
    while ([v29 next])
    {
      v45 = [v29 row];
      if (v45)
      {
        v46 = v45;
        v47 = v44;
        v48 = sub_2315860D4();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2314F1674();
          v43 = v50;
        }

        v49 = *(v43 + 16);
        if (v49 >= *(v43 + 24) >> 1)
        {
          sub_2314F1674();
          v43 = v51;
        }

        *(v43 + 16) = v49 + 1;
        *(v43 + 8 * v49 + 32) = v48;
        v44 = v47;
        v35 = v68;
      }
    }

    v42 = v59(v43);

    v52 = sub_231585FE4();
    v53 = sub_2315865D4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v70 = v55;
      *v54 = 134218242;
      v56 = *(v43 + 16);

      *(v54 + 4) = v56;

      *(v54 + 12) = 2080;
      v69 = v42;
      sub_231586454();

      swift_getWitnessTable();
      sub_231586214();
      v57 = sub_2314A22E8();

      *(v54 + 14) = v57;
      _os_log_impl(&dword_231496000, v52, v53, "BiomeSQLQueryResultProvider: %ld rows, processed result: %s", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x231931280](v55, -1, -1);
      MEMORY[0x231931280](v54, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  *v64 = v42;
  sub_2315866C4();
  sub_231585FB4();
  return sub_2314C1DE4(v35);
}

_BYTE *storeEnumTagSinglePayload for BiomeSQLQueryResultProvider(_BYTE *result, int a2, int a3)
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

id sub_2314D6B64@<X0>(uint64_t a1@<X8>)
{
  result = [v1 starting];
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_2314D6BA0@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v64 - v8;
  v10 = *a2;
  v11 = *(a2 + 8);
  swift_unknownObjectRetain();
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v22 = OUTLINED_FUNCTION_2_9();
    sub_2314D70F4(v22, v23);
LABEL_10:
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v26 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v26, qword_280D72248);
    v27 = sub_231585FE4();
    v28 = sub_2315865E4();
    if (OUTLINED_FUNCTION_3_8(v28))
    {
      v29 = OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_9_6(v29);
      OUTLINED_FUNCTION_1_9(&dword_231496000, v30, v31, "ExtractedNowPlaying: incorrect event type");
      OUTLINED_FUNCTION_5_8();
    }

    goto LABEL_26;
  }

  v13 = [v12 eventBody];
  if (!v13)
  {
    v24 = OUTLINED_FUNCTION_2_9();
    sub_2314D70F4(v24, v25);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v14 = v13;
  v15 = v13;
  v16 = sub_2314D752C(v15);
  if (!v17)
  {
    swift_unknownObjectRelease();

    v32 = OUTLINED_FUNCTION_2_9();
    sub_2314D70F4(v32, v33);
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v34 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v34, qword_280D72248);
    v27 = sub_231585FE4();
    v35 = sub_2315865E4();
    if (OUTLINED_FUNCTION_3_8(v35))
    {
      v36 = OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_9_6(v36);
      OUTLINED_FUNCTION_1_9(&dword_231496000, v37, v38, "ExtractedNowPlaying: nil bundleID");
      OUTLINED_FUNCTION_5_8();
    }

    goto LABEL_26;
  }

  v18 = v16;
  v66 = v17;
  if (qword_280D6F260 != -1)
  {
    swift_once();
  }

  v19 = [v15 absoluteTimestamp];

  if (v19)
  {
    sub_231585834();

    v20 = sub_231585884();
    v21 = 0;
  }

  else
  {
    v20 = sub_231585884();
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v3, v21, 1, v20);
  sub_2314A0710(v3, v9);
  sub_231585884();
  if (__swift_getEnumTagSinglePayload(v9, 1, v20) == 1)
  {
    swift_unknownObjectRelease();
    v39 = OUTLINED_FUNCTION_2_9();
    sub_2314D70F4(v39, v40);
    sub_2314BA0FC(v9);
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v41 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v41, qword_280D72248);
    v27 = sub_231585FE4();
    v42 = sub_2315865E4();
    if (OUTLINED_FUNCTION_3_8(v42))
    {
      v43 = OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_9_6(v43);
      OUTLINED_FUNCTION_1_9(&dword_231496000, v44, v45, "ExtractedNowPlaying: nil timestamp");
      OUTLINED_FUNCTION_5_8();
    }

LABEL_26:

    result = swift_unknownObjectRelease();
    v14 = 0;
    v18 = 0;
    v47 = 0;
    v48 = 0;
    v10 = 0;
    goto LABEL_27;
  }

  sub_23149C774();
  v48 = v49;
  (*(*(v20 - 8) + 8))(v9, v20);
  if (v11 != 1)
  {
    if (v11 != 255)
    {
      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0(&qword_280D70420);
      }

      v50 = sub_231585FF4();
      OUTLINED_FUNCTION_1_4(v50, qword_280D72248);
      v51 = OUTLINED_FUNCTION_2_9();
      sub_2314A5168(v51, v52);
      v53 = sub_231585FE4();
      v54 = sub_2315865E4();
      v55 = OUTLINED_FUNCTION_2_9();
      sub_2314D70F4(v55, v56);
      if (os_log_type_enabled(v53, v54))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v65 = v54;
        v59 = v58;
        v69 = v58;
        *v57 = 136315138;
        v67 = v10;
        v68 = v11;
        v60 = v53;
        SignalValue.description.getter();
        sub_2314A5EEC(v67, v68);
        v61 = sub_2314A22E8();

        *(v57 + 4) = v61;
        _os_log_impl(&dword_231496000, v60, v65, "ExtractedNowPlaying: incorrect SignalValue [%s], assuming empty mapping", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      else
      {

        v62 = OUTLINED_FUNCTION_2_9();
        sub_2314D70F4(v62, v63);
      }
    }

    v10 = sub_2315860F4();
  }

  result = swift_unknownObjectRelease_n();
  v47 = v66;
LABEL_27:
  *a3 = v14;
  a3[1] = v18;
  a3[2] = v47;
  a3[3] = v48;
  a3[4] = v10;
  return result;
}

uint64_t sub_2314D70F4(uint64_t result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_2314A5EEC(result, a2);
  }

  return result;
}

uint64_t sub_2314D7108@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = *a2;
  v11 = *(a2 + 8);
  swift_unknownObjectRetain();
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_8();
LABEL_8:
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v24 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v24, qword_280D72248);
    v25 = sub_231585FE4();
    v26 = sub_2315865E4();
    if (OUTLINED_FUNCTION_3_8(v26))
    {
      v27 = OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_9_6(v27);
      OUTLINED_FUNCTION_1_9(&dword_231496000, v28, v29, "ExtractedNowPlaying: incorrect event type");
      OUTLINED_FUNCTION_5_8();
    }

    result = swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v13 = [v12 eventBody];
  if (!v13)
  {
    OUTLINED_FUNCTION_8_8();
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v14 = v13;
  v15 = [v13 starting];
  v16 = sub_2314D752C(v14);
  if (!v17)
  {
    OUTLINED_FUNCTION_8_8();
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v31 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v31, qword_280D72248);
    v32 = sub_231585FE4();
    v33 = sub_2315865E4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_5_3();
      *v34 = 0;
      _os_log_impl(&dword_231496000, v32, v33, "ExtractedNowPlaying: nil bundleID", v34, 2u);
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_24;
  }

  v18 = v16;
  v19 = v17;
  v43 = v15;
  v20 = [v14 absoluteTimestamp];
  if (v20)
  {
    v21 = v20;
    sub_231585834();

    v22 = sub_231585884();
    v23 = 0;
  }

  else
  {
    v22 = sub_231585884();
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v3, v23, 1, v22);
  sub_2314A0710(v3, v9);
  sub_231585884();
  if (__swift_getEnumTagSinglePayload(v9, 1, v22) == 1)
  {
    OUTLINED_FUNCTION_8_8();
    sub_2314BA0FC(v9);
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v35 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v35, qword_280D72248);
    v32 = sub_231585FE4();
    v36 = sub_2315865E4();
    if (os_log_type_enabled(v32, v36))
    {
      v37 = OUTLINED_FUNCTION_5_3();
      *v37 = 0;
      _os_log_impl(&dword_231496000, v32, v36, "ExtractedInFocus: nil timestamp", v37, 2u);
      OUTLINED_FUNCTION_10();
    }

LABEL_24:

    result = swift_unknownObjectRelease_n();
LABEL_25:
    v18 = 0;
    v19 = 0;
    v38 = 0;
    v39 = 0;
    v10 = 0;
    goto LABEL_26;
  }

  sub_23149C774();
  v39 = v40;

  swift_unknownObjectRelease_n();
  result = (*(*(v22 - 8) + 8))(v9, v22);
  if (v11 == 255)
  {
    v10 = MEMORY[0x277D84F98];
    v41 = v43;
  }

  else
  {
    v41 = v43;
    if (v11 != 1)
    {
      result = OUTLINED_FUNCTION_8_8();
      v10 = MEMORY[0x277D84F98];
    }
  }

  v38 = v41;
LABEL_26:
  *a3 = v18;
  a3[1] = v19;
  a3[2] = v38;
  a3[3] = v39;
  a3[4] = v10;
  return result;
}

uint64_t sub_2314D752C(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2315861A4();

  return v3;
}

uint64_t sub_2314D7590()
{
  v2 = sub_2314D7D2C(v0);
  if (v1)
  {
    v3 = v1;
    if (qword_27DD5AD40 != -1)
    {
      swift_once();
    }

    v4 = sub_2315669BC(v2, v3, qword_27DD600D8);
    if (v5)
    {
      v6 = v4;

      return v6;
    }

    else
    {
      if (qword_27DD5AD48 != -1)
      {
        swift_once();
      }

      v2 = sub_2315669BC(v2, v3, qword_27DD600E0);
    }
  }

  return v2;
}

uint64_t sub_2314D768C()
{
  result = sub_2315860F4();
  qword_27DD600D8 = result;
  return result;
}

uint64_t sub_2314D76C8()
{
  if (qword_27DD5AD40 != -1)
  {
    swift_once();
  }

  result = sub_2314D77A4(v0, sub_2314D7D90, 0);
  qword_27DD600E0 = result;
  return result;
}

uint64_t sub_2314D7750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return a3;
}

uint64_t sub_2314D77A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B358, &qword_23158B510);
    v7 = sub_231586AE4();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v10 = v7;
  sub_2314D7A70(a1, a2, a3, 1, &v10);
  v8 = v10;
  if (v3)
  {
  }

  return v8;
}

uint64_t sub_2314D7854(int a1, uint64_t a2)
{
  HIDWORD(v32) = a1;
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  v33 = a2;

  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v30 = v6;
  v31 = v2;
  if (v5)
  {
    while (1)
    {
      v9 = v7;
LABEL_8:
      v10 = (*(v33 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
      v12 = *v10;
      v11 = v10[1];

      v34 = sub_2314B6158(HIDWORD(v32));
      swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_23149C888(v12, v11);
      if (__OFADD__(*(v8 + 16), (v14 & 1) == 0))
      {
        break;
      }

      v15 = v13;
      v16 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      v17 = sub_231586A64();
      if (v17)
      {
        v17 = sub_23149C888(v12, v11);
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_22;
        }

        v15 = v17;
      }

      v5 &= v5 - 1;
      if (v16)
      {
        OUTLINED_FUNCTION_0_11(v17, v18, v19, v20, v21, v22, v23, v24, v30, v31, v32, v33, v34);
      }

      else
      {
        *(v8 + 8 * (v15 >> 6) + 64) |= 1 << v15;
        v25 = (*(v8 + 48) + 16 * v15);
        *v25 = v12;
        v25[1] = v11;
        OUTLINED_FUNCTION_0_11(v17, v18, v19, v20, v21, v22, v23, v24, v30, v31, v32, v33, v34);
        v26 = *(v8 + 16);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_21;
        }

        *(v8 + 16) = v28;
      }

      v7 = v9;
      v6 = v30;
      v2 = v31;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v9);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_2314D7A70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  sub_2314D7DCC(a1, a2, a3, v50);
  v6 = v50[1];
  v7 = v50[3];
  v8 = v50[4];
  v42 = v50[5];
  v43 = v50[0];
  v9 = (v50[2] + 64) >> 6;

  v40 = v9;
  v41 = v6;
  if (v8)
  {
    while (1)
    {
      v44 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v43 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v43 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v49[0] = v14;
      v49[1] = v15;
      v49[2] = v17;
      v49[3] = v18;

      v42(&v45, v49);

      v19 = v45;
      v20 = v46;
      v21 = v47;
      v22 = v48;
      v23 = *v51;
      v25 = sub_23149C888(v45, v46);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if ((v44 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B360, &unk_231589610);
          sub_231586A74();
        }
      }

      else
      {
        sub_231508524(v28, v44 & 1);
        v30 = sub_23149C888(v19, v20);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_24;
        }

        v25 = v30;
      }

      v8 &= v8 - 1;
      v32 = *v51;
      if (v29)
      {

        v33 = (v32[7] + 16 * v25);
        *v33 = v21;
        v33[1] = v22;
      }

      else
      {
        v32[(v25 >> 6) + 8] |= 1 << v25;
        v34 = (v32[6] + 16 * v25);
        *v34 = v19;
        v34[1] = v20;
        v35 = (v32[7] + 16 * v25);
        *v35 = v21;
        v35[1] = v22;
        v36 = v32[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_23;
        }

        v32[2] = v38;
      }

      a4 = 1;
      v7 = v10;
      v9 = v40;
      v6 = v41;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_2314A4B70(v43);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v44 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_2314D7D2C(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2315861A4();

  return v3;
}

uint64_t sub_2314D7D90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2314D7750(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_2314D7DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_2314D7E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v110 = 0x4449656C646E7562;
  *(&v110 + 1) = 0xE800000000000000;
  sub_2315868E4();
  sub_231566B94(v119, a1, &v116);
  v8 = sub_2314D5E98(v119);
  if (!v117)
  {
    sub_2314CC1C4(&v116, &qword_27DD5B218, &unk_23158A010);
LABEL_7:
    if (qword_280D70420 != -1)
    {
      goto LABEL_74;
    }

    goto LABEL_8;
  }

  if ((OUTLINED_FUNCTION_8_9(v8, v9, v10, MEMORY[0x277D837D0], v11, v12, v13, v14, v81, v84, v87, v91, v95, v97, v98, v102, v104, *(&v104 + 1), v105, *(&v105 + 1), v106, v107, *(&v107 + 1), v108, v109, v110, *(&v110 + 1), v111, *(&v111 + 1), v112, v113, *(&v113 + 1), v114, v115, v116) & 1) == 0)
  {
    goto LABEL_7;
  }

  v15 = v110;
  *&v110 = a2;
  *(&v110 + 1) = a3;

  sub_2315868E4();
  sub_231566B94(v119, a1, &v116);
  v16 = sub_2314D5E98(v119);
  if (v117)
  {
    if (OUTLINED_FUNCTION_8_9(v16, v17, v18, MEMORY[0x277D839F8], v19, v20, v21, v22, v82, v85, v88, v92, v96, v97, v99, v103, v104, *(&v104 + 1), v105, *(&v105 + 1), v106, v107, *(&v107 + 1), v108, v109, v110, *(&v110 + 1), v111, *(&v111 + 1), v112, v113, *(&v113 + 1), v114, v115, v116))
    {
      return v15;
    }
  }

  else
  {

    sub_2314CC1C4(&v116, &qword_27DD5B218, &unk_23158A010);
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v54 = sub_231585FF4();
  __swift_project_value_buffer(v54, qword_280D72248);

  v55 = sub_231585FE4();
  v3 = sub_2315865E4();

  if (os_log_type_enabled(v55, v3))
  {
    v4 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_2314A22E8();
    *(v4 + 12) = 2080;
    v56 = *(a1 + 16);
    v57 = MEMORY[0x277D84F90];
    if (v56)
    {
      v90 = v3;
      v94 = v55;
      v122 = MEMORY[0x277D84F90];
      sub_23152D7D4(0, v56, 0);
      v57 = v122;
      v58 = sub_23156C5C8();
      v60 = v59;
      v61 = 0;
      v101 = v56;
      OUTLINED_FUNCTION_4_8();
      while (1)
      {
        if (v58 < 0 || v58 >= v62 << *(a1 + 32))
        {
          goto LABEL_68;
        }

        OUTLINED_FUNCTION_3_9();
        if (v37)
        {
          goto LABEL_69;
        }

        if (*(a1 + 36) != v60)
        {
          goto LABEL_70;
        }

        sub_2314D6014(*(a1 + 48) + v58 * v63, v119);
        sub_2314A24F0(*(a1 + 56) + 32 * v58, v120);
        OUTLINED_FUNCTION_7_8();
        sub_2314D6070(v120, v118);
        sub_2314D89D4(&v116, &v110);
        v104 = v110;
        v105 = v111;
        v106 = v112;
        sub_2314D6070(&v113, &v107);
        sub_2314D6014(&v104, v121);
        sub_2314CC1C4(&v104, &qword_27DD5B338, &qword_231589660);
        sub_2314CC1C4(&v116, &qword_27DD5B338, &qword_231589660);
        v122 = v57;
        v65 = *(v57 + 16);
        v64 = *(v57 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_23152D7D4(v64 > 1, v65 + 1, 1);
          v57 = v122;
        }

        *(v57 + 16) = v65 + 1;
        OUTLINED_FUNCTION_0_12();
        v68 = v67 << v66;
        if (v58 >= v67 << v66)
        {
          goto LABEL_71;
        }

        if ((*(a1 + 64 + 8 * v4) & v3) == 0)
        {
          goto LABEL_72;
        }

        if (*(a1 + 36) != v60)
        {
          break;
        }

        OUTLINED_FUNCTION_6_9();
        if (v37)
        {
          OUTLINED_FUNCTION_2_0();
          while (v71 < v70)
          {
            v74 = *v72++;
            v73 = v74;
            v3 += 64;
            ++v71;
            if (v74)
            {
              v75 = OUTLINED_FUNCTION_5_9();
              sub_2314ABA68(v75, v60, v76);
              v68 = __clz(__rbit64(v73)) + v3;
              goto LABEL_55;
            }
          }

          v77 = OUTLINED_FUNCTION_5_9();
          sub_2314ABA68(v77, v60, v78);
LABEL_55:
          v62 = 1;
        }

        else
        {
          v68 = __clz(__rbit64(v69)) | v58 & 0x7FFFFFFFFFFFFFC0;
        }

        ++v61;
        v58 = v68;
        v60 = v97;
        if (v61 == v101)
        {
          v55 = v94;
          LOBYTE(v3) = v90;
          goto LABEL_58;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_74:
        OUTLINED_FUNCTION_6_0(&qword_280D70420);
LABEL_8:
        v23 = sub_231585FF4();
        __swift_project_value_buffer(v23, qword_280D72248);

        v24 = sub_231585FE4();
        v25 = sub_2315865E4();

        if (!os_log_type_enabled(v24, v25))
        {
          break;
        }

        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = v27;
        v123 = v27;
        *v26 = 136315138;
        v29 = *(a1 + 16);
        v30 = MEMORY[0x277D84F90];
        if (!v29)
        {
LABEL_30:
          MEMORY[0x231930080](v30, MEMORY[0x277D84030]);

          v53 = sub_2314A22E8();

          *(v26 + 4) = v53;
          _os_log_impl(&dword_231496000, v24, v25, "BundleIDTimestampRecord: missing an expected column bundleID in: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v28);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();
          break;
        }

        v83 = v27;
        v86 = v26;
        v89 = v25;
        v93 = v24;
        v122 = MEMORY[0x277D84F90];
        sub_23152D7D4(0, v29, 0);
        v30 = v122;
        v31 = sub_23156C5C8();
        v33 = v32;
        v34 = 0;
        v100 = v29;
        OUTLINED_FUNCTION_4_8();
        while ((v31 & 0x8000000000000000) == 0 && v31 < v35 << *(a1 + 32))
        {
          OUTLINED_FUNCTION_3_9();
          if (v37)
          {
            goto LABEL_63;
          }

          if (*(a1 + 36) != v33)
          {
            goto LABEL_64;
          }

          sub_2314D6014(*(a1 + 48) + v31 * v36, v119);
          sub_2314A24F0(*(a1 + 56) + 32 * v31, v120);
          OUTLINED_FUNCTION_7_8();
          sub_2314D6070(v120, v118);
          sub_2314D89D4(&v116, &v110);
          v104 = v110;
          v105 = v111;
          v106 = v112;
          sub_2314D6070(&v113, &v107);
          sub_2314D6014(&v104, v121);
          sub_2314CC1C4(&v104, &qword_27DD5B338, &qword_231589660);
          sub_2314CC1C4(&v116, &qword_27DD5B338, &qword_231589660);
          v122 = v30;
          v39 = *(v30 + 16);
          v38 = *(v30 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_23152D7D4(v38 > 1, v39 + 1, 1);
            v30 = v122;
          }

          *(v30 + 16) = v39 + 1;
          OUTLINED_FUNCTION_0_12();
          v42 = v41 << v40;
          if (v31 >= v41 << v40)
          {
            goto LABEL_65;
          }

          if ((*(a1 + 64 + 8 * v4) & v3) == 0)
          {
            goto LABEL_66;
          }

          if (*(a1 + 36) != v33)
          {
            goto LABEL_67;
          }

          OUTLINED_FUNCTION_6_9();
          if (v37)
          {
            OUTLINED_FUNCTION_2_0();
            while (v45 < v44)
            {
              v48 = *v46++;
              v47 = v48;
              v3 += 64;
              ++v45;
              if (v48)
              {
                v49 = OUTLINED_FUNCTION_5_9();
                sub_2314ABA68(v49, v33, v50);
                v42 = __clz(__rbit64(v47)) + v3;
                goto LABEL_27;
              }
            }

            v51 = OUTLINED_FUNCTION_5_9();
            sub_2314ABA68(v51, v33, v52);
LABEL_27:
            v35 = 1;
          }

          else
          {
            v42 = __clz(__rbit64(v43)) | v31 & 0x7FFFFFFFFFFFFFC0;
          }

          ++v34;
          v31 = v42;
          v33 = v97;
          if (v34 == v100)
          {
            v24 = v93;
            v25 = v89;
            v28 = v83;
            v26 = v86;
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
      }

      return 0;
    }

LABEL_58:
    MEMORY[0x231930080](v57, MEMORY[0x277D84030]);

    v79 = sub_2314A22E8();

    *(v4 + 14) = v79;
    _os_log_impl(&dword_231496000, v55, v3, "BundleIDTimestampRecord: missing an expected column %s in: %s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  return 0;
}

void *sub_2314D86B0(uint64_t a1)
{
  v26 = sub_231585884();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2315860F4();
  v6 = *(a1 + 16);
  v25 = (v2 + 8);
  v7 = a1 + 48;
  if (!v6)
  {
    return v5;
  }

  while (1)
  {
    v9 = *(v7 - 16);
    v8 = *(v7 - 8);

    sub_231585804();
    sub_231585784();
    v11 = round(v10);
    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v11 <= -9.22337204e18)
    {
      goto LABEL_16;
    }

    if (v11 >= 9.22337204e18)
    {
      goto LABEL_17;
    }

    (*v25)(v4, v26);
    swift_isUniquelyReferenced_nonNull_native();
    v27 = v5;
    v12 = sub_23149C888(v9, v8);
    if (__OFADD__(v5[2], (v13 & 1) == 0))
    {
      goto LABEL_18;
    }

    v14 = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
    if (sub_231586A64())
    {
      v16 = sub_23149C888(v9, v8);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_20;
      }

      v14 = v16;
    }

    v18 = v11;
    v5 = v27;
    if (v15)
    {
      *(v27[7] + 8 * v14) = v18;
    }

    else
    {
      v27[(v14 >> 6) + 8] |= 1 << v14;
      v19 = (v5[6] + 16 * v14);
      *v19 = v9;
      v19[1] = v8;
      *(v5[7] + 8 * v14) = v18;
      v20 = v5[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_19;
      }

      v5[2] = v22;
    }

    v7 += 24;
    if (!--v6)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_2314D89D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B338, &qword_231589660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2314D8A58()
{
  result = qword_27DD5B368;
  if (!qword_27DD5B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B368);
  }

  return result;
}

uint64_t CalendarSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CalendarSignal.idSynonyms.getter()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_231588340;
    if (qword_280D6F640 != -1)
    {
      swift_once();
    }

    v2 = &qword_280D6F648;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_231588340;
    if (qword_280D6F658 != -1)
    {
      swift_once();
    }

    v2 = &qword_280D6F660;
  }

  v3 = v2[1];
  *(v1 + 32) = *v2;
  *(v1 + 40) = v3;

  return v1;
}

uint64_t static CalendarSignal.id(using:)(char *a1)
{
  v1 = OUTLINED_FUNCTION_0_13();
  MEMORY[0x23192FF80](v1);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  return 0;
}

uint64_t CalendarSignal.init(field:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2315859F4();
  OUTLINED_FUNCTION_4_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *a1;
  sub_2315859E4();
  *(a2 + 16) = v11;
  *(a2 + 24) = sub_23149A718;
  *(a2 + 32) = 0;
  v12 = type metadata accessor for CalendarSignal(0);
  (*(v6 + 16))(a2 + *(v12 + 28), v10, v4);
  v13 = OUTLINED_FUNCTION_0_13();
  MEMORY[0x23192FF80](v13);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  result = (*(v6 + 8))(v10, v4);
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t static CalendarSignal.instances(with:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314D9500();
}

uint64_t CalendarSignal.value(completion:)(void (*a1)(uint64_t *))
{
  v25 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_2315859B4();
  OUTLINED_FUNCTION_4_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v26 = sub_2315856B4();
  OUTLINED_FUNCTION_4_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  sub_231585984();
  type metadata accessor for CalendarSignal(0);
  (*(v1 + 24))();
  sub_231585964();
  (*(v3 + 8))(v7, v25);
  (*(v10 + 8))(v14, v8);
  switch(*(v1 + 16))
  {
    case 1:
      v21 = sub_231585684();
      break;
    case 2:
      v21 = sub_231585694();
      break;
    case 3:
      v21 = sub_231585674();
      break;
    default:
      v21 = sub_2315856A4();
      break;
  }

  if (v22)
  {
    v23 = -1;
  }

  else
  {
    v23 = v21;
  }

  v28 = v23;
  v29 = 0;
  a1(&v28);
  return (*(v16 + 8))(v20, v26);
}

SiriSignals::CalendarSignal::Field_optional __swiftcall CalendarSignal.Field.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231586B04();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CalendarSignal.Field.rawValue.getter()
{
  result = 0x656557664F796164;
  switch(*v0)
  {
    case 1:
      result = 0x6144664F72756F68;
      break;
    case 2:
      result = 0x59664F68746E6F6DLL;
      break;
    case 3:
      result = 0x6F4D664F6B656577;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2314D91CC@<X0>(uint64_t *a1@<X8>)
{
  result = CalendarSignal.Field.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2314D9210(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314D9500();
}

uint64_t type metadata accessor for CalendarSignal(uint64_t a1)
{
  result = qword_280D6F9B8;
  if (!qword_280D6F9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2314D92A0()
{
  v21 = sub_2315859F4();
  OUTLINED_FUNCTION_4_1();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = type metadata accessor for CalendarSignal(0);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v26 = MEMORY[0x277D84F90];
  sub_23152D5B8(0, 4, 0);
  v10 = 0;
  v11 = v26;
  v12 = (v1 + 16);
  v13 = (v1 + 8);
  do
  {
    v14 = byte_28460FF00[v10 + 32];
    sub_2315859E4();
    *(v9 + 16) = v14;
    *(v9 + 24) = sub_23149A718;
    *(v9 + 32) = 0;
    (*v12)(v9 + *(v6 + 28), v5, v21);
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    v15 = OUTLINED_FUNCTION_0_13();
    MEMORY[0x23192FF80](v15);
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    v25 = v14;
    sub_231586A54();
    v16 = v22;
    (*v13)(v5, v21);
    *v9 = v16;
    v26 = v11;
    v18 = *(v11 + 16);
    v17 = *(v11 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_23152D5B8(v17 > 1, v18 + 1, 1);
      v11 = v26;
    }

    ++v10;
    v23 = v6;
    v24 = &protocol witness table for CalendarSignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
    sub_2314D9AC8(v9, boxed_opaque_existential_1);
    *(v11 + 16) = v18 + 1;
    sub_23149FD3C(&v22, v11 + 40 * v18 + 32);
    sub_2314D9B2C(v9);
  }

  while (v10 != 4);
  return v11;
}

uint64_t sub_2314D9500()
{
  v17 = sub_2315859F4();
  v0 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CalendarSignal(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D84F90];
  sub_23152D5B8(0, 4, 0);
  v6 = 0;
  v7 = v22;
  v8 = (v0 + 16);
  v9 = (v0 + 8);
  do
  {
    v10 = byte_28460FF00[v6 + 32];
    sub_2315859E4();
    v5[16] = v10;
    *(v5 + 3) = sub_23149A718;
    *(v5 + 4) = 0;
    v11 = v17;
    (*v8)(&v5[*(v3 + 28)], v2, v17);
    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
    MEMORY[0x23192FF80](0x632E6E6F6D6D6F63, 0xEF7261646E656C61);
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    v21 = v10;
    sub_231586A54();
    v12 = v18;
    (*v9)(v2, v11);
    *v5 = v12;
    v22 = v7;
    v14 = *(v7 + 16);
    v13 = *(v7 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_23152D5B8(v13 > 1, v14 + 1, 1);
      v7 = v22;
    }

    ++v6;
    v19 = v3;
    v20 = &protocol witness table for CalendarSignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    sub_2314D9AC8(v5, boxed_opaque_existential_1);
    *(v7 + 16) = v14 + 1;
    sub_23149FD3C(&v18, v7 + 40 * v14 + 32);
    sub_2314D9B2C(v5);
  }

  while (v6 != 4);
  return v7;
}

unint64_t sub_2314D979C()
{
  result = qword_27DD5B370;
  if (!qword_27DD5B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B370);
  }

  return result;
}

unint64_t sub_2314D97F4()
{
  result = qword_27DD5B378;
  if (!qword_27DD5B378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B380, &qword_2315897B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B378);
  }

  return result;
}

uint64_t sub_2314D9880(uint64_t a1)
{
  result = sub_2314D991C();
  if (v2 <= 0x3F)
  {
    result = sub_2315859F4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2314D991C()
{
  result = qword_280D6FBE0;
  if (!qword_280D6FBE0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280D6FBE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisambiguationDonationFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarSignal.Field(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2314D9AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314D9B2C(uint64_t a1)
{
  v2 = type metadata accessor for CalendarSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ClientCarplaySignal.__allocating_init()()
{
  v0 = swift_allocObject();
  ClientCarplaySignal.init()();
  return v0;
}

void *ClientCarplaySignal.init()()
{
  v0[4] = sub_231586964();
  v0[5] = v1;
  result = [objc_opt_self() keyPathForCarplayConnectedStatus];
  if (result)
  {
    v0[2] = 0;
    v0[3] = result;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ClientCarplaySignal.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_2314D9C64@<X0>(uint64_t a1@<X8>)
{
  result = sub_2314DF690(0, 0);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t ClientCarplaySignal.deinit()
{
  v0 = CoreDuetBackedSignal.deinit();

  return v0;
}

uint64_t ClientCarplaySignal.__deallocating_deinit()
{
  v0 = CoreDuetBackedSignal.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2314D9DFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2314D9E88(v1, v2);
}

uint64_t sub_2314D9E3C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_2314D9E88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t ClientDaylightSignal.__allocating_init()()
{
  v0 = swift_allocObject();
  ClientDaylightSignal.init()();
  return v0;
}

void *ClientDaylightSignal.init()()
{
  v0[4] = sub_231586964();
  v0[5] = v1;
  result = [objc_opt_self() keyPathForSunriseSunsetDataDictionary];
  if (result)
  {
    v0[2] = 0;
    v0[3] = result;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2314D9FC0@<X0>(uint64_t a1@<X8>)
{
  result = sub_2314DF690(0x67696C7961447369, 0xEA00000000007468);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t ClientDaylightSignal.deinit()
{
  v0 = CoreDuetBackedSignal.deinit();

  return v0;
}

uint64_t ClientDaylightSignal.__deallocating_deinit()
{
  v0 = CoreDuetBackedSignal.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2314DA1CC()
{
  result = sub_231586964();
  qword_280D6F660 = result;
  unk_280D6F668 = v1;
  return result;
}

uint64_t static ClientDayOfWeekSignal.signalName.getter()
{
  if (qword_280D6F658 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_280D6F658);
  }

  v0 = qword_280D6F660;

  return v0;
}

uint64_t ClientDayOfWeekSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ClientDayOfWeekSignal.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClientDayOfWeekSignal(0) + 20);

  return sub_2314D9AC8(v3, a1);
}

uint64_t type metadata accessor for ClientDayOfWeekSignal(uint64_t a1)
{
  result = qword_280D6D420;
  if (!qword_280D6D420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ClientDayOfWeekSignal.instances()()
{
  v0 = sub_2315859F4();
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_5();
  v3 = v2 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231588340;
  *(v4 + 56) = type metadata accessor for ClientDayOfWeekSignal(0);
  *(v4 + 64) = &protocol witness table for ClientDayOfWeekSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  sub_2315859E4();
  v6 = OUTLINED_FUNCTION_0_14();
  sub_2314DA468(v6, 0, v3, boxed_opaque_existential_1);
  return v4;
}

uint64_t ClientDayOfWeekSignal.init()@<X0>(void *a1@<X8>)
{
  v2 = sub_2315859F4();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  sub_2315859E4();
  v6 = OUTLINED_FUNCTION_0_14();
  return sub_2314DA468(v6, 0, v5, a1);
}

uint64_t sub_2314DA468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_2315859F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  if (qword_280D6F658 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_280D6F658);
  }

  v13 = unk_280D6F668;
  *a4 = qword_280D6F660;
  a4[1] = v13;
  v14 = *(v9 + 16);
  v14(v12, a3, v8);
  v15 = a4 + *(type metadata accessor for ClientDayOfWeekSignal(0) + 20);
  v15[16] = 0;
  *(v15 + 3) = a1;
  *(v15 + 4) = a2;
  v16 = type metadata accessor for CalendarSignal(0);
  v14(&v15[*(v16 + 28)], v12, v8);

  MEMORY[0x23192FF80](0x632E6E6F6D6D6F63, 0xEF7261646E656C61);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();

  v17 = *(v9 + 8);
  v17(a3, v8);
  result = (v17)(v12, v8);
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_2314DA6FC(uint64_t a1)
{
  result = type metadata accessor for CalendarSignal(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2314DA78C()
{
  result = sub_231586964();
  qword_280D6F648 = result;
  unk_280D6F650 = v1;
  return result;
}

uint64_t static ClientHourOfDaySignal.signalName.getter()
{
  if (qword_280D6F640 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_280D6F640);
  }

  v0 = qword_280D6F648;

  return v0;
}

uint64_t ClientHourOfDaySignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ClientHourOfDaySignal.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClientHourOfDaySignal(0) + 20);

  return sub_2314D9AC8(v3, a1);
}

uint64_t type metadata accessor for ClientHourOfDaySignal(uint64_t a1)
{
  result = qword_280D6D390;
  if (!qword_280D6D390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ClientHourOfDaySignal.instances()()
{
  v0 = sub_2315859F4();
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_5();
  v3 = v2 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231588340;
  *(v4 + 56) = type metadata accessor for ClientHourOfDaySignal(0);
  *(v4 + 64) = &protocol witness table for ClientHourOfDaySignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  sub_2315859E4();
  v6 = OUTLINED_FUNCTION_0_14();
  sub_2314DAA28(v6, 0, v3, boxed_opaque_existential_1);
  return v4;
}

uint64_t ClientHourOfDaySignal.init()@<X0>(void *a1@<X8>)
{
  v2 = sub_2315859F4();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  sub_2315859E4();
  v6 = OUTLINED_FUNCTION_0_14();
  return sub_2314DAA28(v6, 0, v5, a1);
}

uint64_t sub_2314DAA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_2315859F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  if (qword_280D6F640 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_280D6F640);
  }

  v13 = unk_280D6F650;
  *a4 = qword_280D6F648;
  a4[1] = v13;
  v14 = *(v9 + 16);
  v14(v12, a3, v8);
  v15 = a4 + *(type metadata accessor for ClientHourOfDaySignal(0) + 20);
  v15[16] = 1;
  *(v15 + 3) = a1;
  *(v15 + 4) = a2;
  v16 = type metadata accessor for CalendarSignal(0);
  v14(&v15[*(v16 + 28)], v12, v8);

  MEMORY[0x23192FF80](0x632E6E6F6D6D6F63, 0xEF7261646E656C61);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();

  v17 = *(v9 + 8);
  v17(a3, v8);
  result = (v17)(v12, v8);
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_2314DACD8()
{
  result = sub_231586964();
  qword_27DD5B388 = result;
  unk_27DD5B390 = v1;
  return result;
}

uint64_t static ClientInDayLightHourSignal.signalName.getter()
{
  if (qword_27DD5AD58 != -1)
  {
    OUTLINED_FUNCTION_0_15(&qword_27DD5AD58);
  }

  v0 = qword_27DD5B388;

  return v0;
}

uint64_t ClientInDayLightHourSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static ClientInDayLightHourSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientInDayLightHourSignal;
  *(v0 + 64) = &protocol witness table for ClientInDayLightHourSignal;
  if (qword_27DD5AD58 != -1)
  {
    OUTLINED_FUNCTION_0_15(&qword_27DD5AD58);
  }

  v1 = unk_27DD5B390;
  *(v0 + 32) = qword_27DD5B388;
  *(v0 + 40) = v1;

  return v0;
}

uint64_t static ClientInDayLightHourSignal.instances(with:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DB170();
}

SiriSignals::ClientInDayLightHourSignal __swiftcall ClientInDayLightHourSignal.init()()
{
  v1 = v0;
  if (qword_27DD5AD58 != -1)
  {
    OUTLINED_FUNCTION_0_15(&qword_27DD5AD58);
  }

  v2 = unk_27DD5B390;
  *v1 = qword_27DD5B388;
  v1[1] = v2;

  result.id._object = v4;
  result.id._countAndFlagsBits = v3;
  return result;
}

uint64_t ClientInDayLightHourSignal.value(completion:)(void (*a1)(_BOOL8 *))
{
  v1 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_231585994();
  OUTLINED_FUNCTION_4_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_2315859B4();
  OUTLINED_FUNCTION_4_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  sub_231585984();
  (*(v10 + 104))(v14, *MEMORY[0x277CC9980], v8);
  sub_231585874();
  v22 = sub_2315859A4();
  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);
  v25 = (v22 - 8) < 0xB;
  v26 = 0;
  a1(&v25);
  return (*(v17 + 8))(v21, v15);
}

uint64_t sub_2314DB100(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DB170();
}

uint64_t sub_2314DB170()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientInDayLightHourSignal;
  *(v0 + 64) = &protocol witness table for ClientInDayLightHourSignal;
  if (qword_27DD5AD58 != -1)
  {
    swift_once();
  }

  v1 = unk_27DD5B390;
  *(v0 + 32) = qword_27DD5B388;
  *(v0 + 40) = v1;

  return v0;
}

uint64_t sub_2314DB218(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2314DB258(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2314DB2B8()
{
  result = sub_231586964();
  qword_280D6F7B8 = result;
  unk_280D6F7C0 = v1;
  return result;
}

uint64_t static ClientLanguageSignal.signalName.getter()
{
  if (qword_280D6F7B0 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_280D6F7B0);
  }

  return OUTLINED_FUNCTION_3_10();
}

uint64_t static ClientLanguageSignal.instances(with:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DB858();
}

SiriSignals::ClientLanguageSignal __swiftcall ClientLanguageSignal.init()()
{
  v1 = v0;
  v2 = sub_231585954();
  OUTLINED_FUNCTION_4_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  if (qword_280D6F7B0 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_280D6F7B0);
  }

  v9 = unk_280D6F7C0;
  *v1 = qword_280D6F7B8;
  v1[1] = v9;

  sub_231585914();
  v10 = sub_2315858D4();
  v12 = v11;
  v13 = (*(v4 + 8))(v8, v2);
  v1[2] = v10;
  v1[3] = v12;
  result.languageString.value._object = v16;
  result.languageString.value._countAndFlagsBits = v15;
  result.id._object = v14;
  result.id._countAndFlagsBits = v13;
  return result;
}

void ClientLanguageSignal.value()(uint64_t a3@<X8>)
{
  v5 = *(v3 + 24);
  if (v5)
  {
    v6 = sub_2314DB528(*(v3 + 16), v5);
    v7 = -1;
    if ((v6 & 0x10000) == 0)
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = -1;
  }

  *a3 = v7;
  *(a3 + 8) = 0;
}

uint64_t sub_2314DB528(uint64_t a1, uint64_t a2)
{
  v2 = sub_2315861F4();
  OUTLINED_FUNCTION_4_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_2315861E4();
  sub_2315861B4();
  v10 = v9;
  (*(v4 + 8))(v8, v2);
  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_3_10();
    sub_2314C2104(v12, v13);
    v14 = OUTLINED_FUNCTION_3_10();
    sub_2314DC850(v14, v15);
    v16 = SipHash();

    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    LOWORD(v16) = sub_231586CF4();

    v18 = OUTLINED_FUNCTION_3_10();
    sub_2314C215C(v18, v19);
    v11 = v16;
  }

  return v11 | ((v10 >> 60 == 15) << 16);
}

uint64_t sub_2314DB698(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DB858();
}

uint64_t sub_2314DB6F4()
{
  v0 = sub_231585954();
  OUTLINED_FUNCTION_4_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_231588340;
  *(v7 + 56) = &type metadata for ClientLanguageSignal;
  *(v7 + 64) = &protocol witness table for ClientLanguageSignal;
  v8 = swift_allocObject();
  *(v7 + 32) = v8;
  if (qword_280D6F7B0 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_280D6F7B0);
  }

  v9 = unk_280D6F7C0;
  v8[2] = qword_280D6F7B8;
  v8[3] = v9;

  sub_231585914();
  v10 = sub_2315858D4();
  v12 = v11;
  (*(v2 + 8))(v6, v0);
  v8[4] = v10;
  v8[5] = v12;
  return v7;
}

uint64_t sub_2314DB858()
{
  v0 = sub_231585954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231588340;
  *(v4 + 56) = &type metadata for ClientLanguageSignal;
  *(v4 + 64) = &protocol witness table for ClientLanguageSignal;
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  if (qword_280D6F7B0 != -1)
  {
    swift_once();
  }

  v6 = unk_280D6F7C0;
  v5[2] = qword_280D6F7B8;
  v5[3] = v6;

  sub_231585914();
  v7 = sub_2315858D4();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  v5[4] = v7;
  v5[5] = v9;
  return v4;
}

uint64_t sub_2314DBA08()
{
  result = sub_231586964();
  qword_280D6F8E0 = result;
  unk_280D6F8E8 = v1;
  return result;
}

uint64_t static ClientLocaleSignal.signalName.getter()
{
  if (qword_280D6F8D8 != -1)
  {
    OUTLINED_FUNCTION_0_17(&qword_280D6F8D8);
  }

  return OUTLINED_FUNCTION_3_10();
}

uint64_t static ClientLocaleSignal.instances(with:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DBFA8();
}

SiriSignals::ClientLocaleSignal __swiftcall ClientLocaleSignal.init()()
{
  v1 = v0;
  v2 = sub_231585954();
  OUTLINED_FUNCTION_4_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  if (qword_280D6F8D8 != -1)
  {
    OUTLINED_FUNCTION_0_17(&qword_280D6F8D8);
  }

  v9 = unk_280D6F8E8;
  *v1 = qword_280D6F8E0;
  v1[1] = v9;

  sub_231585914();
  v10 = sub_2315858C4();
  v12 = v11;
  v13 = (*(v4 + 8))(v8, v2);
  v1[2] = v10;
  v1[3] = v12;
  result.localeString.value._object = v16;
  result.localeString.value._countAndFlagsBits = v15;
  result.id._object = v14;
  result.id._countAndFlagsBits = v13;
  return result;
}

void ClientLocaleSignal.value()(uint64_t a3@<X8>)
{
  v5 = *(v3 + 24);
  if (v5)
  {
    v6 = sub_2314DBC78(*(v3 + 16), v5);
    v7 = -1;
    if ((v6 & 0x10000) == 0)
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = -1;
  }

  *a3 = v7;
  *(a3 + 8) = 0;
}

uint64_t sub_2314DBC78(uint64_t a1, uint64_t a2)
{
  v2 = sub_2315861F4();
  OUTLINED_FUNCTION_4_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_2315861E4();
  sub_2315861B4();
  v10 = v9;
  (*(v4 + 8))(v8, v2);
  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_3_10();
    sub_2314C2104(v12, v13);
    v14 = OUTLINED_FUNCTION_3_10();
    sub_2314DC850(v14, v15);
    v16 = SipHash();

    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    LOWORD(v16) = sub_231586CF4();

    v18 = OUTLINED_FUNCTION_3_10();
    sub_2314C215C(v18, v19);
    v11 = v16;
  }

  return v11 | ((v10 >> 60 == 15) << 16);
}

uint64_t sub_2314DBDE8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DBFA8();
}

uint64_t sub_2314DBE44()
{
  v0 = sub_231585954();
  OUTLINED_FUNCTION_4_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_231588340;
  *(v7 + 56) = &type metadata for ClientLocaleSignal;
  *(v7 + 64) = &protocol witness table for ClientLocaleSignal;
  v8 = swift_allocObject();
  *(v7 + 32) = v8;
  if (qword_280D6F8D8 != -1)
  {
    OUTLINED_FUNCTION_0_17(&qword_280D6F8D8);
  }

  v9 = unk_280D6F8E8;
  v8[2] = qword_280D6F8E0;
  v8[3] = v9;

  sub_231585914();
  v10 = sub_2315858C4();
  v12 = v11;
  (*(v2 + 8))(v6, v0);
  v8[4] = v10;
  v8[5] = v12;
  return v7;
}

uint64_t sub_2314DBFA8()
{
  v0 = sub_231585954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231588340;
  *(v4 + 56) = &type metadata for ClientLocaleSignal;
  *(v4 + 64) = &protocol witness table for ClientLocaleSignal;
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  if (qword_280D6F8D8 != -1)
  {
    swift_once();
  }

  v6 = unk_280D6F8E8;
  v5[2] = qword_280D6F8E0;
  v5[3] = v6;

  sub_231585914();
  v7 = sub_2315858C4();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  v5[4] = v7;
  v5[5] = v9;
  return v4;
}

uint64_t sub_2314DC158()
{
  result = sub_231586964();
  qword_280D6F8C8 = result;
  unk_280D6F8D0 = v1;
  return result;
}

uint64_t static ClientRegionSignal.signalName.getter()
{
  if (qword_280D6F8C0 != -1)
  {
    OUTLINED_FUNCTION_2_10(&qword_280D6F8C0);
  }

  return OUTLINED_FUNCTION_3_10();
}

uint64_t static ClientRegionSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientRegionSignal;
  *(v0 + 64) = &protocol witness table for ClientRegionSignal;
  *(v0 + 32) = swift_allocObject();
  ClientRegionSignal.init()();
  return v0;
}

uint64_t static ClientRegionSignal.instances(with:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DC754();
}

SiriSignals::ClientRegionSignal __swiftcall ClientRegionSignal.init()()
{
  v2 = v0;
  v3 = sub_231585934();
  OUTLINED_FUNCTION_4_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v7 = sub_231585954();
  OUTLINED_FUNCTION_4_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B398, &qword_231589B08);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  if (qword_280D6F8C0 != -1)
  {
    OUTLINED_FUNCTION_2_10(&qword_280D6F8C0);
  }

  v17 = qword_280D6F8C8;
  v16 = unk_280D6F8D0;

  sub_231585914();
  sub_231585944();
  (*(v9 + 8))(v12, v7);
  sub_231585924();
  (*(v5 + 8))(v1, v3);
  v18 = sub_231585904();
  if (__swift_getEnumTagSinglePayload(v15, 1, v18) == 1)
  {
    v19 = sub_2314DC7D8(v15);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = sub_2315858F4();
    v24 = v25;
    v19 = (*(*(v18 - 8) + 8))(v15, v18);
  }

  *v2 = v17;
  v2[1] = v16;
  v2[2] = v23;
  v2[3] = v24;
  result.regionString.value._object = v22;
  result.regionString.value._countAndFlagsBits = v21;
  result.id._object = v20;
  result.id._countAndFlagsBits = v19;
  return result;
}

void ClientRegionSignal.value()(uint64_t a3@<X8>)
{
  v5 = *(v3 + 24);
  if (v5)
  {
    v6 = sub_2314DC590(*(v3 + 16), v5);
    v7 = -1;
    if ((v6 & 0x10000) == 0)
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = -1;
  }

  *a3 = v7;
  *(a3 + 8) = 0;
}

uint64_t sub_2314DC590(uint64_t a1, uint64_t a2)
{
  v3 = sub_2315861F4();
  OUTLINED_FUNCTION_4_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  sub_2315861E4();
  sub_2315861B4();
  v8 = v7;
  (*(v5 + 8))(v2, v3);
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_10();
    sub_2314C2104(v10, v11);
    v12 = OUTLINED_FUNCTION_3_10();
    sub_2314DC850(v12, v13);
    v14 = SipHash();

    v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    LOWORD(v14) = sub_231586CF4();

    v16 = OUTLINED_FUNCTION_3_10();
    sub_2314C215C(v16, v17);
    v9 = v14;
  }

  return v9 | ((v8 >> 60 == 15) << 16);
}

uint64_t sub_2314DC6F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DC754();
}

uint64_t sub_2314DC754()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientRegionSignal;
  *(v0 + 64) = &protocol witness table for ClientRegionSignal;
  *(v0 + 32) = swift_allocObject();
  ClientRegionSignal.init()();
  return v0;
}

uint64_t sub_2314DC7D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B398, &qword_231589B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2314DC850(uint64_t a1, unint64_t a2)
{
  v5 = sub_231585764();
  OUTLINED_FUNCTION_4_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v9 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v11 = *(a1 + 16);
      v10 = *(a1 + 24);
      v9 = v10 - v11;
      if (!__OFSUB__(v10, v11))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return;
    case 3uLL:
      goto LABEL_9;
    default:
      v9 = BYTE6(a2);
LABEL_6:
      if (!v9)
      {
        goto LABEL_9;
      }

      sub_2314A26B0(v9, 0);
      v12 = sub_231585734();
      sub_2314BEE4C(a1, a2);
      (*(v7 + 8))(v2, v5);
      if (v12 != v9)
      {
        __break(1u);
LABEL_9:
        sub_2314BEE4C(a1, a2);
      }

      return;
  }
}

uint64_t sub_2314DC9CC()
{
  result = sub_231586964();
  qword_280D6D300 = result;
  *algn_280D6D308 = v1;
  return result;
}

uint64_t static ClientTimeRangeSignal.signalName.getter()
{
  if (qword_280D6D2F8 != -1)
  {
    OUTLINED_FUNCTION_0_18(&qword_280D6D2F8);
  }

  v0 = qword_280D6D300;

  return v0;
}

uint64_t ClientTimeRangeSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static ClientTimeRangeSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientTimeRangeSignal;
  *(v0 + 64) = &protocol witness table for ClientTimeRangeSignal;
  if (qword_280D6D2F8 != -1)
  {
    OUTLINED_FUNCTION_0_18(&qword_280D6D2F8);
  }

  v1 = *algn_280D6D308;
  *(v0 + 32) = qword_280D6D300;
  *(v0 + 40) = v1;

  return v0;
}

uint64_t static ClientTimeRangeSignal.instances(with:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DCC48();
}

SiriSignals::ClientTimeRangeSignal __swiftcall ClientTimeRangeSignal.init()()
{
  v1 = v0;
  if (qword_280D6D2F8 != -1)
  {
    OUTLINED_FUNCTION_0_18(&qword_280D6D2F8);
  }

  v2 = *algn_280D6D308;
  *v1 = qword_280D6D300;
  v1[1] = v2;

  result.id._object = v4;
  result.id._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2314DCBD8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314DCC48();
}

uint64_t sub_2314DCC48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientTimeRangeSignal;
  *(v0 + 64) = &protocol witness table for ClientTimeRangeSignal;
  if (qword_280D6D2F8 != -1)
  {
    swift_once();
  }

  v1 = *algn_280D6D308;
  *(v0 + 32) = qword_280D6D300;
  *(v0 + 40) = v1;

  return v0;
}

uint64_t sub_2314DCD00(void (*a1)(__int128 *__return_ptr, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  v7 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v19 = *v7;
      a1(&v16, &v19, a2);
      if (v3)
      {
        break;
      }

      if (v17)
      {
        sub_23149FD3C(&v16, v18);
        sub_23149FD3C(v18, &v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_19_2();
          sub_2314F0CB4(v10, v11, v12, v6);
          v6 = v13;
        }

        v9 = *(v6 + 16);
        v8 = *(v6 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_2314F0CB4(v8 > 1, v9 + 1, 1, v6);
          v6 = v14;
        }

        *(v6 + 16) = v9 + 1;
        sub_23149FD3C(&v16, v6 + 40 * v9 + 32);
      }

      else
      {
        sub_2314CC1C4(&v16, &qword_27DD5B3A8, &qword_231589C98);
      }

      ++v7;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_2314DCE50(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v4 = *(a3 + 16);
  v5 = (a3 + 40);
  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    while (1)
    {
      v7 = *v5;
      v17[0] = *(v5 - 1);
      v17[1] = v7;

      (v18)(&v15, v17);
      if (v3)
      {
        break;
      }

      v8 = v16;
      if (v16)
      {
        v9 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_19_2();
          sub_23149D588();
          v6 = v12;
        }

        v10 = *(v6 + 16);
        if (v10 >= *(v6 + 24) >> 1)
        {
          sub_23149D588();
          v6 = v13;
        }

        *(v6 + 16) = v10 + 1;
        v11 = v6 + 16 * v10;
        *(v11 + 32) = v9;
        *(v11 + 40) = v8;
      }

      v5 += 2;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

id sub_2314DCF7C(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B3B0, &unk_231589CA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v30 = type metadata accessor for StreamedEventsAggregator.Event(0);
  v27 = *(v30 - 8);
  v8 = MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v26 = &v25 - v10;
  result = sub_2314A7080(a3);
  v12 = result;
  v13 = 0;
  v32 = a3 & 0xC000000000000001;
  v14 = a3 & 0xFFFFFFFFFFFFFF8;
  v15 = MEMORY[0x277D84F90];
  v28 = a3;
  while (1)
  {
    if (v12 == v13)
    {
      return v15;
    }

    if (v32)
    {
      result = MEMORY[0x231930660](v13, a3);
    }

    else
    {
      if (v13 >= *(v14 + 16))
      {
        goto LABEL_20;
      }

      result = *(a3 + 8 * v13 + 32);
    }

    v16 = result;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    v33 = result;
    v31(&v33);
    if (v3)
    {

      return v15;
    }

    if (__swift_getEnumTagSinglePayload(v7, 1, v30) == 1)
    {
      result = sub_2314CC1C4(v7, &qword_27DD5B3B0, &unk_231589CA0);
    }

    else
    {
      v17 = v26;
      sub_2314DED78(v7, v26);
      sub_2314DED78(v17, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = OUTLINED_FUNCTION_19_2();
        sub_2314F10A8(v20, v21, v22, v15);
        v15 = v23;
      }

      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2314F10A8(v18 > 1, v19 + 1, 1, v15);
        v15 = v24;
      }

      *(v15 + 16) = v19 + 1;
      result = sub_2314DED78(v29, v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v19);
      a3 = v28;
    }

    ++v13;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2314DD244(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  if (v6)
  {
    while (1)
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      (a1)(&v11, v12);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x231930040](v9);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2315863C4();
        }

        sub_231586404();
        v5 = v13;
      }

      v7 += 2;
      if (!--v6)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t CommonSignalValuesProcessor.__allocating_init(useCase:)(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t sub_2314DD3A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = sub_2314DD428(*a1, v5);
  v7 = *(v2 + 16);
  v9[2] = &v11;
  v9[3] = v4;
  v9[4] = v5;
  v10 = v7;
  result = sub_2314DD244(sub_2314DECD0, v9, v5);
  *a2 = v6;
  a2[1] = result;
  return result;
}

void *sub_2314DD428(uint64_t a1, unint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D58218]) init];
  if (v2)
  {
    v3 = v2;
    if (qword_280D6F7B0 != -1)
    {
      swift_once();
    }

    v4 = qword_280D6F7B8;
    v5 = unk_280D6F7C0;
    v6 = [v3 rawLanguage];
    v8 = sub_2315414E8(v7, v4, v5, 0, 0);
    if (v9)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }

    [v3 setRawLanguage_];
    if (qword_280D6F8D8 != -1)
    {
      swift_once();
    }

    v11 = qword_280D6F8E0;
    v12 = unk_280D6F8E8;
    v13 = [v3 rawLocale];
    v15 = sub_2315414E8(v14, v11, v12, 0, 0);
    if (v16)
    {
      v17 = v13;
    }

    else
    {
      v17 = v15;
    }

    [v3 setRawLocale_];
    if (qword_280D6F8F8 != -1)
    {
      swift_once();
    }

    v18 = qword_280D6F900;
    v19 = unk_280D6F908;
    v20 = [v3 rawRequestDeviceCategory];
    v22 = sub_2315414E8(v21, v18, v19, 0, 0);
    if (v23)
    {
      v24 = v20;
    }

    else
    {
      v24 = v22;
    }

    [v3 setRawRequestDeviceCategory_];
    MEMORY[0x23192FF80](0x632E6E6F6D6D6F63, 0xEF7261646E656C61);
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    sub_231586A54();
    v25 = [v3 rawClientHourOfDay];
    v27 = sub_2315414E8(v26, 0, 0xE000000000000000, 0, 0);
    v29 = v28;

    v30 = 0x7FFFFFFF;
    if (v27 < 0x7FFFFFFF)
    {
      v30 = v27;
    }

    if (v27 >= 0xFFFFFFFF80000000)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0x80000000;
    }

    if (v29)
    {
      v32 = v25;
    }

    else
    {
      v32 = v31;
    }

    [v3 setRawClientHourOfDay_];
    MEMORY[0x23192FF80](0x632E6E6F6D6D6F63, 0xEF7261646E656C61);
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    sub_231586A54();
    v33 = [v3 clientDayOfWeek];
    v35 = sub_2315414E8(v34, 0, 0xE000000000000000, 0, 0);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      if (v35 < 0xFFFFFFFF80000000)
      {
        v33 = 0x80000000;
      }

      else if (v35 >= 0x7FFFFFFF)
      {
        v33 = 0x7FFFFFFFLL;
      }

      else
      {
        v33 = v35;
      }
    }

    [v3 setClientDayOfWeek_];
    if (qword_27DD5AD58 != -1)
    {
      swift_once();
    }

    v38 = qword_27DD5B388;
    v39 = unk_27DD5B390;
    v40 = [v3 isClientDaylight];
    v42 = sub_2315414E8(v41, v38, v39, 0, 0) != 0;
    if (v43)
    {
      v44 = v40;
    }

    else
    {
      v44 = v42;
    }

    [v3 setIsClientDaylight_];
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v45 = sub_231585FF4();
    __swift_project_value_buffer(v45, qword_280D72248);
    v46 = sub_231585FE4();
    v47 = sub_2315865E4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_231496000, v46, v47, "SELFMessageBuilding: Failed to create INFERENCESchemaINFERENCECommonAppIndependentSignals", v48, 2u);
      MEMORY[0x231931280](v48, -1, -1);
    }

    return 0;
  }

  return v3;
}

id CommonSignalValuesProcessor.CommonContainer.independent.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t CommonSignalValuesProcessor.CommonContainer.dependent.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void *sub_2314DDA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = [objc_allocWithZone(MEMORY[0x277D58210]) init];
  if (v10)
  {
    v11 = v10;
    v12 = sub_231586174();
    [v11 setAppBundleId_];

    if (qword_280D6D5F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = qword_280D6D600;
    v14 = qword_280D6D608;

    v15 = [v11 totalTimeSpentByUserInAppPerDay];
    v17 = sub_2315414E8(v16, v13, v14, a4, a5);
    v19 = v18;

    v20 = -1;
    if (v17 < 0xFFFFFFFF)
    {
      v20 = v17;
    }

    if (v17 < 0)
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v15;
    }

    else
    {
      v21 = v20;
    }

    [v11 setTotalTimeSpentByUserInAppPerDay_];
    if (qword_27DD5AE50 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v22 = qword_27DD5C198;
    v23 = qword_27DD5C1A0;

    v24 = [v11 timeSpentByUserInAppToday];
    v26 = sub_2315414E8(v25, v22, v23, a4, a5);
    v28 = v27;

    v29 = -1;
    if (v26 < 0xFFFFFFFF)
    {
      v29 = v26;
    }

    if (v26 < 0)
    {
      v29 = 0;
    }

    if (v28)
    {
      v30 = v24;
    }

    else
    {
      v30 = v29;
    }

    [v11 setTimeSpentByUserInAppToday_];
    if (qword_280D6F020 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v31 = qword_280D6F028;
    v32 = qword_280D6F030;

    v33 = [v11 timeSinceAppLastLaunchedInSec];
    v35 = sub_2315414E8(v34, v31, v32, a4, a5);
    v37 = v36;

    v38 = 0x7FFFFFFF;
    if (v35 < 0x7FFFFFFF)
    {
      v38 = v35;
    }

    if (v35 >= 0xFFFFFFFF80000000)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0x80000000;
    }

    if (v37)
    {
      v40 = v33;
    }

    else
    {
      v40 = v39;
    }

    [v11 setTimeSinceAppLastLaunchedInSec_];
    if (qword_280D6CE18 != -1)
    {
      swift_once();
    }

    v41 = qword_280D6CE20;
    v42 = *algn_280D6CE28;
    v43 = [v11 isForegroundApp];
    v45 = sub_2315414E8(v44, v41, v42, a4, a5) != 0;
    if (v46)
    {
      v47 = v43;
    }

    else
    {
      v47 = v45;
    }

    [v11 setIsForegroundApp_];
    v48 = [v11 isFirstPartyBundle];
    v50 = sub_2315414E8(v49, 0xD000000000000016, 0x80000002315917D0, a4, a5) != 0;
    if (v51)
    {
      v52 = v48;
    }

    else
    {
      v52 = v50;
    }

    [v11 setIsFirstPartyBundle_];
    if (v7 != 17)
    {
      v53 = sub_2314DDF48(a1, a2, a4, a5, v7);
      if (v53)
      {
        v54 = v53;
        [v11 setAppDependentFrequencyAndRecencySignals_];
      }
    }
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v55 = sub_231585FF4();
    __swift_project_value_buffer(v55, qword_280D72248);
    v56 = sub_231585FE4();
    v57 = sub_2315865E4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_231496000, v56, v57, "SELFMessageBuilding: Failed to create INFERENCESchemaINFERENCECommonAppDependentSignals", v58, 2u);
      MEMORY[0x231931280](v58, -1, -1);
    }

    return 0;
  }

  return v11;
}

void *sub_2314DDF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D58208]) init];
  if (v8)
  {
    v9 = v8;
    if (qword_280D6D6B0 != -1)
    {
      swift_once();
    }

    v10 = qword_280D6D6B8;
    v11 = unk_280D6D6C0;
    v195 = DomainUseCase.rawValue.getter();
    v199 = v12;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    MEMORY[0x23192FF80](v10, v11);
    v13 = [v9 timeSinceAppUsedInSec];
    v15 = sub_2315414E8(v14, v195, v199, a3, a4);
    LOBYTE(v10) = v16;

    if (v10)
    {
      v17 = v13;
    }

    else
    {
      v17 = v15;
    }

    [v9 setTimeSinceAppUsedInSec_];
    if (qword_280D6CEE8 != -1)
    {
      swift_once();
    }

    v18 = qword_280D6CEF0;
    v19 = unk_280D6CEF8;
    v196 = DomainUseCase.rawValue.getter();
    v200 = v20;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    MEMORY[0x23192FF80](v18, v19);
    v21 = [v9 recencyOrderOfAppUsed];
    v23 = sub_2315414E8(v22, v196, v200, a3, a4);
    v25 = v24;

    v26 = 0x7FFFFFFF;
    if (v23 < 0x7FFFFFFF)
    {
      v26 = v23;
    }

    if (v23 >= 0xFFFFFFFF80000000)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0x80000000;
    }

    if (v25)
    {
      v28 = v21;
    }

    else
    {
      v28 = v27;
    }

    [v9 setRecencyOrderOfAppUsed_];
    v29 = a3;
    if (qword_280D6D2E0 != -1)
    {
      swift_once();
    }

    v30 = qword_280D6D2E8;
    v31 = unk_280D6D2F0;
    v197 = DomainUseCase.rawValue.getter();
    v201 = v32;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    MEMORY[0x23192FF80](v30, v31);
    v33 = sub_231531C44(v197, v201, 0);
    HIDWORD(v194) = a5;
    v35 = v34;
    v36 = [v9 appUsageCount2Min];
    v37 = a3;
    v39 = sub_2315414E8(v38, v33, v35, a3, a4);
    v41 = v40;

    v42 = 0x7FFFFFFF;
    if (v39 < 0x7FFFFFFF)
    {
      v42 = v39;
    }

    if (v39 >= 0xFFFFFFFF80000000)
    {
      v43 = v42;
    }

    else
    {
      v43 = 0x80000000;
    }

    if (v41)
    {
      v44 = v36;
    }

    else
    {
      v44 = v43;
    }

    [v9 setAppUsageCount2Min_];
    v45 = sub_231531C44(v197, v201, 1);
    v47 = v46;
    LODWORD(v194) = [v9 appUsageCount10Min];
    v49 = sub_2315414E8(v48, v45, v47, a3, a4);
    v51 = v50;

    v52 = 0x7FFFFFFF;
    if (v49 < 0x7FFFFFFF)
    {
      v52 = v49;
    }

    if (v49 >= 0xFFFFFFFF80000000)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0x80000000;
    }

    if (v51)
    {
      v54 = v194;
    }

    else
    {
      v54 = v53;
    }

    [v9 setAppUsageCount10Min_];
    v55 = sub_231531C44(v197, v201, 2);
    v57 = v56;
    v58 = [v9 appUsageCount1Hr];
    v60 = sub_2315414E8(v59, v55, v57, a3, a4);
    v62 = v61;

    v63 = 0x7FFFFFFF;
    if (v60 < 0x7FFFFFFF)
    {
      v63 = v60;
    }

    if (v60 >= 0xFFFFFFFF80000000)
    {
      v64 = v63;
    }

    else
    {
      v64 = 0x80000000;
    }

    if (v62)
    {
      v65 = v58;
    }

    else
    {
      v65 = v64;
    }

    [v9 setAppUsageCount1Hr_];
    v66 = sub_231531C44(v197, v201, 3);
    v68 = v67;
    v69 = [v9 appUsageCount6Hrs];
    v71 = sub_2315414E8(v70, v66, v68, a3, a4);
    v73 = v72;

    v74 = 0x7FFFFFFF;
    if (v71 < 0x7FFFFFFF)
    {
      v74 = v71;
    }

    if (v71 >= 0xFFFFFFFF80000000)
    {
      v75 = v74;
    }

    else
    {
      v75 = 0x80000000;
    }

    if (v73)
    {
      v76 = v69;
    }

    else
    {
      v76 = v75;
    }

    [v9 setAppUsageCount6Hrs_];
    v77 = v9;
    v78 = sub_231531C44(v197, v201, 4);
    v80 = v79;
    v81 = [v9 appUsageCount1Day];
    v83 = sub_2315414E8(v82, v78, v80, v37, a4);
    v85 = v84;

    v86 = 0x7FFFFFFF;
    if (v83 < 0x7FFFFFFF)
    {
      v86 = v83;
    }

    if (v83 >= 0xFFFFFFFF80000000)
    {
      v87 = v86;
    }

    else
    {
      v87 = 0x80000000;
    }

    if (v85)
    {
      v88 = v81;
    }

    else
    {
      v88 = v87;
    }

    [v77 setAppUsageCount1Day_];
    v89 = sub_231531C44(v197, v201, 5);
    v91 = v90;
    v92 = [v77 appUsageCount7Days];
    v94 = sub_2315414E8(v93, v89, v91, v37, a4);
    v96 = v95;

    v97 = 0x7FFFFFFF;
    if (v94 < 0x7FFFFFFF)
    {
      v97 = v94;
    }

    if (v94 >= 0xFFFFFFFF80000000)
    {
      v98 = v97;
    }

    else
    {
      v98 = 0x80000000;
    }

    if (v96)
    {
      v99 = v92;
    }

    else
    {
      v99 = v98;
    }

    [v77 setAppUsageCount7Days_];
    v100 = sub_231531C44(v197, v201, 6);
    v102 = v101;
    v103 = [v77 appUsageCount28Days];
    v105 = sub_2315414E8(v104, v100, v102, v37, a4);
    v107 = v106;

    v108 = 0x7FFFFFFF;
    if (v105 < 0x7FFFFFFF)
    {
      v108 = v105;
    }

    if (v105 >= 0xFFFFFFFF80000000)
    {
      v109 = v108;
    }

    else
    {
      v109 = 0x80000000;
    }

    if (v107)
    {
      v110 = v103;
    }

    else
    {
      v110 = v109;
    }

    [v77 setAppUsageCount28Days_];
    v111 = sub_231531C44(v197, v201, 7);
    v113 = v112;

    v114 = [v77 appUsageCountInf];
    v116 = sub_2315414E8(v115, v111, v113, v37, a4);
    v118 = v117;

    v119 = 0x7FFFFFFF;
    if (v116 < 0x7FFFFFFF)
    {
      v119 = v116;
    }

    if (v116 >= 0xFFFFFFFF80000000)
    {
      v120 = v119;
    }

    else
    {
      v120 = 0x80000000;
    }

    if (v118)
    {
      v121 = v114;
    }

    else
    {
      v121 = v120;
    }

    [v77 setAppUsageCountInf_];
    if (qword_280D6CB18 != -1)
    {
      swift_once();
    }

    v122 = qword_280D6CB20;
    v123 = *algn_280D6CB28;
    v198 = DomainUseCase.rawValue.getter();
    v202 = v124;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    MEMORY[0x23192FF80](v122, v123);
    v125 = sub_231531C44(v198, v202, 0);
    v127 = v126;
    v128 = [v77 taskAbandonCountInUsingApp2Min];
    v130 = sub_2315414E8(v129, v125, v127, v29, a4);
    v132 = v131;

    v133 = 0x7FFFFFFF;
    if (v130 < 0x7FFFFFFF)
    {
      v133 = v130;
    }

    if (v130 >= 0xFFFFFFFF80000000)
    {
      v134 = v133;
    }

    else
    {
      v134 = 0x80000000;
    }

    if (v132)
    {
      v135 = v128;
    }

    else
    {
      v135 = v134;
    }

    [v77 setTaskAbandonCountInUsingApp2Min_];
    v136 = sub_231531C44(v198, v202, 1);
    v138 = v137;
    v139 = [v77 taskAbandonCountInUsingApp10Min];
    v141 = sub_2315414E8(v140, v136, v138, v29, a4);
    v143 = v142;

    v144 = 0x7FFFFFFF;
    if (v141 < 0x7FFFFFFF)
    {
      v144 = v141;
    }

    if (v141 >= 0xFFFFFFFF80000000)
    {
      v145 = v144;
    }

    else
    {
      v145 = 0x80000000;
    }

    if (v143)
    {
      v146 = v139;
    }

    else
    {
      v146 = v145;
    }

    [v77 setTaskAbandonCountInUsingApp10Min_];
    v147 = sub_231531C44(v198, v202, 2);
    v149 = v148;
    v150 = [v77 taskAbandonCountInUsingApp1Hr];
    v152 = sub_2315414E8(v151, v147, v149, v29, a4);
    LOBYTE(v147) = v153;

    if ((v147 & 1) == 0)
    {
      if (v152 < 0xFFFFFFFF80000000)
      {
        v150 = 0x80000000;
      }

      else if (v152 >= 0x7FFFFFFF)
      {
        v150 = 0x7FFFFFFFLL;
      }

      else
      {
        v150 = v152;
      }
    }

    [v77 setTaskAbandonCountInUsingApp1Hr_];
    v154 = sub_231531C44(v198, v202, 3);
    v156 = v155;
    v157 = [v77 taskAbandonCountInUsingApp6Hrs];
    v159 = sub_2315414E8(v158, v154, v156, v29, a4);
    LOBYTE(v154) = v160;

    if ((v154 & 1) == 0)
    {
      if (v159 < 0xFFFFFFFF80000000)
      {
        v157 = 0x80000000;
      }

      else if (v159 >= 0x7FFFFFFF)
      {
        v157 = 0x7FFFFFFFLL;
      }

      else
      {
        v157 = v159;
      }
    }

    [v77 setTaskAbandonCountInUsingApp6Hrs_];
    v161 = sub_231531C44(v198, v202, 4);
    v163 = v162;
    v164 = [v77 taskAbandonCountInUsingApp1Day];
    v166 = sub_2315414E8(v165, v161, v163, v29, a4);
    LOBYTE(v161) = v167;

    if ((v161 & 1) == 0)
    {
      if (v166 < 0xFFFFFFFF80000000)
      {
        v164 = 0x80000000;
      }

      else if (v166 >= 0x7FFFFFFF)
      {
        v164 = 0x7FFFFFFFLL;
      }

      else
      {
        v164 = v166;
      }
    }

    [v77 setTaskAbandonCountInUsingApp1Day_];
    v168 = sub_231531C44(v198, v202, 5);
    v170 = v169;
    v171 = [v77 taskAbandonCountInUsingApp7Days];
    v173 = sub_2315414E8(v172, v168, v170, v29, a4);
    LOBYTE(v168) = v174;

    if ((v168 & 1) == 0)
    {
      if (v173 < 0xFFFFFFFF80000000)
      {
        v171 = 0x80000000;
      }

      else if (v173 >= 0x7FFFFFFF)
      {
        v171 = 0x7FFFFFFFLL;
      }

      else
      {
        v171 = v173;
      }
    }

    [v77 setTaskAbandonCountInUsingApp7Days_];
    v175 = sub_231531C44(v198, v202, 6);
    v177 = v176;
    v178 = [v77 taskAbandonCountInUsingApp28Days];
    v180 = sub_2315414E8(v179, v175, v177, v29, a4);
    LOBYTE(v175) = v181;

    if ((v175 & 1) == 0)
    {
      if (v180 < 0xFFFFFFFF80000000)
      {
        v178 = 0x80000000;
      }

      else if (v180 >= 0x7FFFFFFF)
      {
        v178 = 0x7FFFFFFFLL;
      }

      else
      {
        v178 = v180;
      }
    }

    [v77 setTaskAbandonCountInUsingApp28Days_];
    v182 = sub_231531C44(v198, v202, 7);
    v184 = v183;

    v185 = [v77 taskAbandonCountInUsingAppInf];
    v187 = sub_2315414E8(v186, v182, v184, v29, a4);
    LOBYTE(v182) = v188;

    if ((v182 & 1) == 0)
    {
      if (v187 < 0xFFFFFFFF80000000)
      {
        v185 = 0x80000000;
      }

      else if (v187 >= 0x7FFFFFFF)
      {
        v185 = 0x7FFFFFFFLL;
      }

      else
      {
        v185 = v187;
      }
    }

    [v77 setTaskAbandonCountInUsingAppInf_];
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v189 = sub_231585FF4();
    __swift_project_value_buffer(v189, qword_280D72248);
    v190 = sub_231585FE4();
    v191 = sub_2315865E4();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      *v192 = 0;
      _os_log_impl(&dword_231496000, v190, v191, "SELFMessageBuilding: Failed to create INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals", v192, 2u);
      MEMORY[0x231931280](v192, -1, -1);
    }

    return 0;
  }

  return v77;
}

void *sub_2314DEC88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2314DDA20(*a1, a1[1], *a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2314DED78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamedEventsAggregator.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

SiriSignals::CommunicationTypeSignal::CommunicationType_optional __swiftcall CommunicationTypeSignal.CommunicationType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2314DEE30@<X0>(uint64_t *a1@<X8>)
{
  result = CommunicationTypeSignal.CommunicationType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2314DEE7C()
{
  result = sub_231586964();
  qword_27DD5B3B8 = result;
  unk_27DD5B3C0 = v1;
  return result;
}

uint64_t static CommunicationTypeSignal.signalName.getter()
{
  if (qword_27DD5AD60 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_27DD5AD60);
  }

  v0 = qword_27DD5B3B8;

  return v0;
}

uint64_t CommunicationTypeSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

SiriSignals::CommunicationTypeSignal __swiftcall CommunicationTypeSignal.init(communicationType:)(SiriSignals::CommunicationTypeSignal::CommunicationType communicationType)
{
  v2 = v1;
  v3 = *communicationType;
  if (qword_27DD5AD60 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_27DD5AD60);
  }

  v4 = unk_27DD5B3C0;
  *v2 = qword_27DD5B3B8;
  *(v2 + 8) = v4;
  *(v2 + 16) = v3;

  result.id._object = v6;
  result.id._countAndFlagsBits = v5;
  result.communicationType = v7;
  return result;
}

uint64_t CommunicationTypeSignal.value(completion:)(uint64_t (*a1)(uint64_t *))
{
  v3 = *(v1 + 16);
  v4 = 0;
  return a1(&v3);
}

unint64_t sub_2314DEFE8()
{
  result = qword_27DD5B3C8;
  if (!qword_27DD5B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B3C8);
  }

  return result;
}

unint64_t sub_2314DF040()
{
  result = qword_27DD5B3D0;
  if (!qword_27DD5B3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B3D8, &qword_231589D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B3D0);
  }

  return result;
}

uint64_t sub_2314DF0C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2314DF104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommunicationTypeSignal.CommunicationType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CommunicationTypeSignal.CommunicationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

SiriSignals::ContactHandleTypeSignal::ContactHandleType_optional __swiftcall ContactHandleTypeSignal.ContactHandleType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2314DF2E8@<X0>(uint64_t *a1@<X8>)
{
  result = ContactHandleTypeSignal.ContactHandleType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2314DF334()
{
  result = sub_231586964();
  qword_27DD5B3E0 = result;
  *algn_27DD5B3E8 = v1;
  return result;
}

uint64_t static ContactHandleTypeSignal.signalName.getter()
{
  if (qword_27DD5AD68 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_27DD5AD68);
  }

  v0 = qword_27DD5B3E0;

  return v0;
}

uint64_t ContactHandleTypeSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

SiriSignals::ContactHandleTypeSignal __swiftcall ContactHandleTypeSignal.init(contactHandleType:)(SiriSignals::ContactHandleTypeSignal::ContactHandleType contactHandleType)
{
  v2 = v1;
  v3 = *contactHandleType;
  if (qword_27DD5AD68 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_27DD5AD68);
  }

  v4 = *algn_27DD5B3E8;
  *v2 = qword_27DD5B3E0;
  *(v2 + 8) = v4;
  *(v2 + 16) = v3;

  result.id._object = v6;
  result.id._countAndFlagsBits = v5;
  result.contactHandleType = v7;
  return result;
}

uint64_t ContactHandleTypeSignal.value(completion:)(uint64_t (*a1)(uint64_t *))
{
  v3 = *(v1 + 16);
  v4 = 0;
  return a1(&v3);
}

unint64_t sub_2314DF4A0()
{
  result = qword_27DD5B3F0;
  if (!qword_27DD5B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B3F0);
  }

  return result;
}

unint64_t sub_2314DF4F8()
{
  result = qword_27DD5B3F8;
  if (!qword_27DD5B3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD5B400, &qword_231589ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B3F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactHandleTypeSignal.ContactHandleType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t CoreDuetBackedSignal.deinit()
{

  return v0;
}

uint64_t sub_2314DF690(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2314DFC08();
  if (!v6)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v25 = sub_231585FF4();
    OUTLINED_FUNCTION_3_11(v25, qword_280D72248);
    v21 = sub_231585FE4();
    v26 = sub_2315865E4();

    if (os_log_type_enabled(v21, v26))
    {
      v14 = -1;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = *(v3 + 24);
      *(v27 + 4) = v29;
      *v28 = v29;
      v30 = v29;
      _os_log_impl(&dword_231496000, v21, v26, "CoreDuetBackedSignal#valueForKeyPath missing values, so no value for path: %@", v27, 0xCu);
      sub_2314CC1C4(v28, &unk_27DD5B410, &unk_2315890B0);
      OUTLINED_FUNCTION_10();
      goto LABEL_19;
    }

LABEL_20:

    return -1;
  }

  v7 = *(v2 + 24);
  v8 = sub_231566778(v7, v6);

  if (!v8 || (v9 = [v8 value], v8, !v9))
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v20 = sub_231585FF4();
    OUTLINED_FUNCTION_3_11(v20, qword_280D72248);
    v21 = sub_231585FE4();
    v22 = sub_2315865D4();

    if (os_log_type_enabled(v21, v22))
    {
      v14 = -1;
      swift_slowAlloc();
      v23 = OUTLINED_FUNCTION_2_11();
      *v3 = 138412290;
      *(v3 + 4) = v7;
      *v23 = v7;
      v24 = v7;
      _os_log_impl(&dword_231496000, v21, v22, "CoreDuetBackedSignal#valueForKeyPath missing value for path: %@", v3, 0xCu);
      sub_2314CC1C4(v23, &unk_27DD5B410, &unk_2315890B0);
      OUTLINED_FUNCTION_10();
LABEL_19:
      OUTLINED_FUNCTION_10();

      return v14;
    }

    goto LABEL_20;
  }

  *&v41 = v9;
  swift_unknownObjectRetain();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B840, &unk_23158A000);
  if (!OUTLINED_FUNCTION_4_9(v10, v11, v12, MEMORY[0x277D839B0], v13))
  {
    if (a2)
    {
      *&v41 = v9;
      swift_unknownObjectRetain();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B420, &unk_23158E0A0);
      if (OUTLINED_FUNCTION_4_9(v31, v32, v33, v31, v34))
      {
        sub_23156682C(a1, a2, v43, &v41);

        if (!v42)
        {
          swift_unknownObjectRelease();
          sub_2314CC1C4(&v41, &qword_27DD5B218, &unk_23158A010);
          return -1;
        }

        if (swift_dynamicCast())
        {
          v14 = v43;
          if (qword_280D70420 != -1)
          {
            OUTLINED_FUNCTION_6_0(&qword_280D70420);
          }

          v35 = sub_231585FF4();
          OUTLINED_FUNCTION_3_11(v35, qword_280D72248);

          v16 = sub_231585FE4();
          v36 = sub_2315865D4();

          if (!os_log_type_enabled(v16, v36))
          {
            goto LABEL_10;
          }

          swift_slowAlloc();
          v37 = OUTLINED_FUNCTION_2_11();
          v38 = swift_slowAlloc();
          *&v41 = v38;
          *v3 = 138412802;
          *(v3 + 4) = v7;
          *v37 = v7;
          *(v3 + 12) = 2080;
          v39 = v7;
          *(v3 + 14) = sub_2314A22E8();
          *(v3 + 22) = 2048;
          *(v3 + 24) = v14;
          _os_log_impl(&dword_231496000, v16, v36, "CoreDuetBackedSignal#valueForKeyPath for path: %@ and subpath: %s, received BOOL value: %ld", v3, 0x20u);
          sub_2314CC1C4(v37, &unk_27DD5B410, &unk_2315890B0);
          OUTLINED_FUNCTION_10();
          __swift_destroy_boxed_opaque_existential_1(v38);
          goto LABEL_9;
        }
      }
    }

    swift_unknownObjectRelease();
    return -1;
  }

  v14 = v43;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v15 = sub_231585FF4();
  OUTLINED_FUNCTION_3_11(v15, qword_280D72248);
  v16 = sub_231585FE4();
  v17 = sub_2315865D4();

  if (!os_log_type_enabled(v16, v17))
  {
    goto LABEL_10;
  }

  swift_slowAlloc();
  v18 = OUTLINED_FUNCTION_2_11();
  *v3 = 138412546;
  *(v3 + 4) = v7;
  *v18 = v7;
  *(v3 + 12) = 2048;
  *(v3 + 14) = v14;
  v19 = v7;
  _os_log_impl(&dword_231496000, v16, v17, "CoreDuetBackedSignal#valueForKeyPath for path: %@ received BOOL value: %ld", v3, 0x16u);
  sub_2314CC1C4(v18, &unk_27DD5B410, &unk_2315890B0);
LABEL_9:
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_10();
LABEL_10:

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_2314DFC08()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  else
  {
    v2 = [objc_opt_self() userContext];
    if (v2)
    {
      v3 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B830, &qword_23158B470);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_231588FF0;
      v5 = *(v0 + 24);
      *(v4 + 32) = v5;
      sub_2314A207C(0, &qword_280D6FE80, 0x277CFE358);
      v6 = v5;
      v7 = sub_231586374();

      v8 = [v3 valuesForKeyPaths_];

      if (v8)
      {
        sub_2314A207C(0, &qword_280D6FEA0, 0x277CFE340);
        sub_2314DFED8();
        v1 = sub_2315860D4();
      }

      else
      {

        v1 = 0;
      }

      *(v0 + 16) = v1;
    }

    else
    {
      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0(&qword_280D70420);
      }

      v9 = sub_231585FF4();
      __swift_project_value_buffer(v9, qword_280D72248);
      v10 = sub_231585FE4();
      v11 = sub_2315865E4();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_231496000, v10, v11, "CoreDuetBackedSignal#valueForKeyPath Could not find user context; values are empty", v12, 2u);
        OUTLINED_FUNCTION_10();
      }

      sub_2314A207C(0, &qword_280D6FE80, 0x277CFE358);
      sub_2314A207C(0, &qword_280D6FEA0, 0x277CFE340);
      sub_2314DFED8();
      return sub_2315860F4();
    }
  }

  return v1;
}

uint64_t CoreDuetBackedSignal.__deallocating_deinit()
{
  CoreDuetBackedSignal.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_2314DFED8()
{
  result = qword_280D6FE70;
  if (!qword_280D6FE70)
  {
    sub_2314A207C(255, &qword_280D6FE80, 0x277CFE358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6FE70);
  }

  return result;
}

uint64_t sub_2314DFF40@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_231585F94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x277D5B348])
  {
    *a1 = 0;
  }

  else if (result == *MEMORY[0x277D5B340])
  {
    *a1 = 1;
  }

  else
  {
    *a1 = 2;
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_2314E0098(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2314E00D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2314E0124(uint64_t a1)
{
  if (qword_27DD5AD70 != -1)
  {
    swift_once();
  }

  v2 = qword_27DD600E8;
  v3 = sub_2315857C4();
  v4 = [v2 stringForObjectValue_];

  if (v4)
  {
    v5 = sub_2315861A4();
  }

  else
  {
    v5 = 0x656E696665646E75;
  }

  MEMORY[0x23192FF80](23328, 0xE200000000000000);
  sub_23149C774();
  v6 = sub_231586C24();
  MEMORY[0x23192FF80](v6);

  MEMORY[0x23192FF80](93, 0xE100000000000000);
  v7 = sub_231585884();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v5;
}

id sub_2314E029C()
{
  result = sub_2314E02BC();
  qword_27DD600E8 = result;
  return result;
}

id sub_2314E02BC()
{
  v0 = sub_2315859F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_2314E04CC(0xD000000000000015, 0x8000000231591870, v4);
  sub_2315859E4();
  v5 = sub_2315859D4();
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone_];

  return v4;
}

uint64_t sub_2314E03E4()
{
  v0 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_231585874();
  sub_23149C774();
  v8 = v7;
  (*(v2 + 8))(v6, v0);
  return v8;
}

uint64_t sub_2314E049C()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_2314E04CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231586174();

  [a3 setDateFormat_];
}

uint64_t sub_2314E0530@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  sub_231585994();
  OUTLINED_FUNCTION_4_1();
  v37 = v2;
  v38 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  sub_2315859B4();
  OUTLINED_FUNCTION_4_1();
  v34 = v7;
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  v14 = sub_2315859F4();
  OUTLINED_FUNCTION_4_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  sub_231585874();
  sub_2315859E4();
  v28 = sub_2315859C4();
  (*(v16 + 8))(v20, v14);
  v29 = v28;
  v31 = v37;
  v30 = v38;
  sub_231585984();
  result = (*(v31 + 104))(v5, *MEMORY[0x277CC99A8], v30);
  if (v29 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_231585974();
  (*(v31 + 8))(v5, v30);
  (*(v34 + 8))(v10, v35);
  if (__swift_getEnumTagSinglePayload(v13, 1, v21) == 1)
  {
    sub_2314BA0FC(v13);
    sub_231585874();
    return (*(v23 + 8))(v27, v21);
  }

  else
  {
    (*(v23 + 8))(v27, v21);
    return (*(v23 + 32))(v36, v13, v21);
  }
}

uint64_t sub_2314E08C8(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() defaultWorkspace];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v27[0] = 0;
  v4 = [v2 defaultApplicationForCategory:a1 error:v27];

  if (v4)
  {
    v5 = v27[0];
    v6 = sub_2314E0C98(v4);
    v8 = v7;
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v9 = sub_231585FF4();
    __swift_project_value_buffer(v9, qword_280D72248);

    v10 = sub_231585FE4();
    v11 = sub_2315865D4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27[0] = v13;
      *v12 = 136315138;

      v14 = sub_2314A22E8();

      *(v12 + 4) = v14;
      _os_log_impl(&dword_231496000, v10, v11, "#DefaultAppProvider#getDefaultAppId: DefaultApp: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    if (v8)
    {
      v15 = v6 == 0xD000000000000015 && v8 == 0x800000023158F920;
      if (v15 || (sub_231586C44() & 1) != 0)
      {

        return 0xD000000000000017;
      }
    }
  }

  else
  {
    v16 = v27[0];
    v17 = sub_2315856D4();

    swift_willThrow();
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v18 = sub_231585FF4();
    __swift_project_value_buffer(v18, qword_280D72248);
    v19 = v17;
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      v24 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
      sub_231586204();
      v25 = sub_2314A22E8();

      *(v22 + 4) = v25;
      _os_log_impl(&dword_231496000, v20, v21, "#DefaultAppProvider#getDefaultAppId: got an exception when fetching default app error: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    else
    {
    }

    return 0;
  }

  return v6;
}

uint64_t sub_2314E0C98(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2315861A4();

  return v3;
}

uint64_t sub_2314E0DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_231585744();
  v9 = sub_2315860C4();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2314E0EA0;
  v12[3] = &block_descriptor_4;
  v10 = _Block_copy(v12);

  [v5 saveRecordWithData:v8 recordInfo:v9 completion:v10];
  _Block_release(v10);
}

uint64_t sub_2314E0EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B438, &unk_23158A1A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_231585894();
    v10 = sub_2315858A4();
    v11 = 0;
  }

  else
  {
    v10 = sub_2315858A4();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v11, 1, v10);

  v12 = a3;
  v9(v8, a3);

  return sub_2314E2130(v8);
}

uint64_t sub_2314E1088()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v3 = sub_23149C7D4(v2, v1);
  if (v3)
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_1_12();
    [v4 doubleForKey_];
  }

  return sub_231585804();
}

uint64_t sub_2314E1134(uint64_t a1)
{
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v5 = sub_23149C7D4(v4, v3);
  if (v5)
  {
    v6 = v5;
    sub_231585814();
    v8 = v7;
    v9 = OUTLINED_FUNCTION_1_12();
    [v6 setDouble:v9 forKey:v8];
  }

  v10 = sub_231585884();
  v11 = *(*(v10 - 8) + 8);

  return v11(a1, v10);
}

void *sub_2314E1210(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[7] = a1;
  v2[8] = a2;
  v6 = sub_2314E2198();

  v7 = sub_2314E1338(a1, a2);
  if (v7)
  {
    v3[5] = v6;
    v3[6] = &off_284615438;
    v3[2] = v7;
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v8 = sub_231585FF4();
    __swift_project_value_buffer(v8, qword_280D72248);
    v9 = sub_231585FE4();
    v10 = sub_2315865E4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_5_3();
      *v11 = 0;
      _os_log_impl(&dword_231496000, v9, v10, "Unable to init DESRecordStore", v11, 2u);
      OUTLINED_FUNCTION_10();
    }

    type metadata accessor for DESIntentEventStore();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

id sub_2314E1338(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_231586174();

  v4 = [v2 initWithBundleIdentifier_];

  return v4;
}

uint64_t sub_2314E13AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a3;
  v6 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B430, &unk_23158B8B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = 1702125924;
  *(inited + 40) = 0xE400000000000000;
  sub_231585874();
  sub_231585814();
  v14 = v13;
  (*(v8 + 8))(v11, v6);
  *(inited + 72) = MEMORY[0x277D839F8];
  *(inited + 48) = v14;
  v27 = sub_2315860F4();
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v15 = sub_231585FF4();
  __swift_project_value_buffer(v15, qword_280D72248);
  v16 = sub_231585FE4();
  v17 = sub_2315865D4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_5_3();
    *v18 = 0;
    _os_log_impl(&dword_231496000, v16, v17, "DesIntentEventStore#makeRecord saving record...", v18, 2u);
    OUTLINED_FUNCTION_10();
  }

  v20 = v4[5];
  v19 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v20);
  v21 = sub_231585EA4();
  v23 = v22;
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = v28;
  v24[4] = v4;
  v25 = *(v19 + 8);

  v25(v21, v23, v27, sub_2314E20B4, v24, v20, v19);

  sub_2314BEE4C(v21, v23);
}

void sub_2314E1664(uint64_t a1, void *a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v37 = a4;
  v7 = sub_231585884();
  MEMORY[0x28223BE20](v7 - 8);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B438, &unk_23158A1A0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v15 = sub_231585FF4();
  __swift_project_value_buffer(v15, qword_280D72248);
  sub_2314E20C0(a1, v14);
  v16 = sub_231585FE4();
  v17 = sub_2315865C4();
  if (!os_log_type_enabled(v16, v17))
  {

    sub_2314E2130(v14);
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_9:
    v32 = v36;
    sub_231585874();
    sub_2314E1134(v32);
    a3(1, 0);
    return;
  }

  v18 = swift_slowAlloc();
  v35 = a3;
  v19 = v18;
  v20 = swift_slowAlloc();
  v34 = a2;
  v21 = v20;
  v38 = v20;
  *v19 = 136315138;
  sub_2314E20C0(v14, v12);
  sub_231586204();
  sub_2314E2130(v14);
  v22 = sub_2314A22E8();

  *(v19 + 4) = v22;
  _os_log_impl(&dword_231496000, v16, v17, "DesIntentEventStore#makeRecord Record Identifier: %s", v19, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v21);
  a2 = v34;
  MEMORY[0x231931280](v21, -1, -1);
  v23 = v19;
  a3 = v35;
  MEMORY[0x231931280](v23, -1, -1);

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_5:
  v24 = a2;
  v25 = sub_231585FE4();
  v26 = sub_2315865E4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40 = v28;
    *v27 = 136315138;
    swift_getErrorValue();
    v38 = sub_231586C94();
    v39 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B120, &qword_23158ACE0);
    sub_231586204();
    v30 = sub_2314A22E8();

    *(v27 + 4) = v30;
    _os_log_impl(&dword_231496000, v25, v26, "DesIntentEventStore#makeRecord Error creating record: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x231931280](v28, -1, -1);
    MEMORY[0x231931280](v27, -1, -1);
  }

  sub_2314E2048();
  v31 = swift_allocError();
  a3(v31, 1);
}

void *sub_2314E1A58(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2314E2048();
  *(v2 + 16) = swift_allocError();
  *(v2 + 24) = 1;
  v3 = dispatch_semaphore_create(0);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = v3;
  sub_2314E13AC(a1, sub_2314E209C, v4);

  sub_2315866E4();

  swift_beginAccess();
  v6 = *(v2 + 16);
  sub_2314E20A8(v6, *(v2 + 24));

  return v6;
}

uint64_t sub_2314E1B78(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2 & 1;
  sub_2314E20A8(a1, a2 & 1);
  sub_2314E203C(v6, v7);
  return sub_2315866F4();
}

uint64_t sub_2314E1BFC(uint64_t a1, char a2)
{
  v5 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  v14 = v2[5];
  v15 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v14);
  if (((*(v15 + 16))(v14, v15) & 1) == 0)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v19 = sub_231585FF4();
    __swift_project_value_buffer(v19, qword_280D72248);
    v20 = sub_231585FE4();
    v21 = sub_2315865D4();
    if (!OUTLINED_FUNCTION_10_0(v21))
    {
      goto LABEL_21;
    }

LABEL_7:
    *OUTLINED_FUNCTION_5_3() = 0;
    OUTLINED_FUNCTION_26();
    v27 = 2;
    goto LABEL_20;
  }

  v16 = v2[5];
  v17 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v16);
  if (a2)
  {
    v18 = (*(v17 + 32))(v16, v17);
  }

  else
  {
    v18 = (*(v17 + 24))(a1, v16, v17);
  }

  v28 = v18;
  sub_231585874();
  sub_2314E1088();
  sub_2315857A4();
  v30 = v29;
  v31 = *(v7 + 8);
  v31(v11, v5);
  v31(v13, v5);
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v32 = sub_231585FF4();
  __swift_project_value_buffer(v32, qword_280D72248);
  v33 = sub_231585FE4();
  v34 = sub_2315865D4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 67109376;
    *(v35 + 4) = v28 & 1;
    *(v35 + 8) = 2048;
    *(v35 + 10) = v30;
    _os_log_impl(&dword_231496000, v33, v34, "RecordStore#shouldMakeRecord Store shouldMakeRecord?:%{BOOL}d, elapsedStore:%fs", v35, 0x12u);
    OUTLINED_FUNCTION_10();
  }

  v20 = sub_231585FE4();
  if (v30 <= 21600.0)
  {
    v44 = sub_2315865F4();
    if (!OUTLINED_FUNCTION_10_0(v44))
    {
LABEL_21:

      return 0;
    }

    v45 = swift_slowAlloc();
    *v45 = 134218240;
    *(v45 + 4) = v30;
    *(v45 + 12) = 2048;
    *(v45 + 14) = 0x40D5180000000000;
    OUTLINED_FUNCTION_26();
    v27 = 22;
LABEL_20:
    _os_log_impl(v22, v23, v24, v25, v26, v27);
    OUTLINED_FUNCTION_10();
    goto LABEL_21;
  }

  v36 = sub_2315865C4();
  v37 = OUTLINED_FUNCTION_10_0(v36);
  if ((v28 & 1) == 0)
  {
    if (!v37)
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  if (v37)
  {
    *OUTLINED_FUNCTION_5_3() = 0;
    OUTLINED_FUNCTION_26();
    _os_log_impl(v38, v39, v40, v41, v42, 2u);
    OUTLINED_FUNCTION_10();
  }

  return 1;
}

uint64_t sub_2314E1FD8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

void sub_2314E203C(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_2314E2048()
{
  result = qword_27DD5B428;
  if (!qword_27DD5B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B428);
  }

  return result;
}

id sub_2314E20A8(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_2314E20C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B438, &unk_23158A1A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314E2130(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B438, &unk_23158A1A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2314E2198()
{
  result = qword_27DD5B440;
  if (!qword_27DD5B440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD5B440);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DESIntentEventStoreError(_BYTE *result, int a2, int a3)
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

unint64_t sub_2314E228C()
{
  result = qword_27DD5B448;
  if (!qword_27DD5B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B448);
  }

  return result;
}

uint64_t static DeviceClassSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for DeviceClassSignal;
  *(v0 + 64) = &protocol witness table for DeviceClassSignal;
  if (qword_280D6F8F8 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_280D6F8F8);
  }

  v1 = unk_280D6F908;
  *(v0 + 32) = qword_280D6F900;
  *(v0 + 40) = v1;

  return v0;
}

uint64_t sub_2314E238C()
{
  result = sub_231586964();
  qword_280D6F900 = result;
  unk_280D6F908 = v1;
  return result;
}

uint64_t static DeviceClassSignal.signalName.getter()
{
  if (qword_280D6F8F8 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_280D6F8F8);
  }

  v0 = qword_280D6F900;

  return v0;
}

uint64_t DeviceClassSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static DeviceClassSignal.instances(with:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314E25DC();
}

SiriSignals::DeviceClassSignal __swiftcall DeviceClassSignal.init()()
{
  v1 = v0;
  if (qword_280D6F8F8 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_280D6F8F8);
  }

  v2 = unk_280D6F908;
  *v1 = qword_280D6F900;
  v1[1] = v2;

  result.id._object = v4;
  result.id._countAndFlagsBits = v3;
  return result;
}

uint64_t DeviceClassSignal.value(completion:)(uint64_t (*a1)(uint64_t *))
{
  v2 = sub_231586174();
  v3 = MGGetSInt32Answer();

  v5 = v3;
  v6 = 0;
  return a1(&v5);
}

uint64_t sub_2314E256C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314E25DC();
}

uint64_t sub_2314E25DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for DeviceClassSignal;
  *(v0 + 64) = &protocol witness table for DeviceClassSignal;
  if (qword_280D6F8F8 != -1)
  {
    swift_once();
  }

  v1 = unk_280D6F908;
  *(v0 + 32) = qword_280D6F900;
  *(v0 + 40) = v1;

  return v0;
}

void sub_2314E2694()
{
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_6_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = OUTLINED_FUNCTION_19(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_18_0();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_12_6(v7);
  OUTLINED_FUNCTION_5_10(v8);
  v9 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_7_9();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_21_2(v10, sel_publisherWithOptions_);

  OUTLINED_FUNCTION_13_3();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_8_10(v13);
  OUTLINED_FUNCTION_0_22(v14);
  OUTLINED_FUNCTION_1_13();
  v21 = v15;
  v22 = &block_descriptor_5;
  _Block_copy(v20);
  OUTLINED_FUNCTION_10_5();
  v16 = v2;

  v23 = sub_2314E3CD0;
  v24 = v0;
  v20[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_2_12();
  v21 = v17;
  v22 = &block_descriptor_9;
  _Block_copy(v20);
  OUTLINED_FUNCTION_14_3();

  v19 = OUTLINED_FUNCTION_11_7(v18, sel_sinkWithCompletion_receiveInput_);
  OUTLINED_FUNCTION_20_4();
  _Block_release(v3);

  OUTLINED_FUNCTION_16_3();
}

void sub_2314E284C()
{
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_6_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = OUTLINED_FUNCTION_19(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_18_0();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_12_6(v7);
  OUTLINED_FUNCTION_5_10(v8);
  v9 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_7_9();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_21_2(v10, sel_publisherWithOptions_);

  OUTLINED_FUNCTION_13_3();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_8_10(v13);
  OUTLINED_FUNCTION_0_22(v14);
  OUTLINED_FUNCTION_1_13();
  v21 = v15;
  v22 = &block_descriptor_18;
  _Block_copy(v20);
  OUTLINED_FUNCTION_10_5();
  v16 = v2;

  v23 = sub_2314E3E2C;
  v24 = v0;
  v20[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_2_12();
  v21 = v17;
  v22 = &block_descriptor_21;
  _Block_copy(v20);
  OUTLINED_FUNCTION_14_3();

  v19 = OUTLINED_FUNCTION_11_7(v18, sel_sinkWithCompletion_receiveInput_);
  OUTLINED_FUNCTION_20_4();
  _Block_release(v3);

  OUTLINED_FUNCTION_16_3();
}

void sub_2314E2A04()
{
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_6_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = OUTLINED_FUNCTION_19(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_18_0();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_12_6(v7);
  OUTLINED_FUNCTION_5_10(v8);
  v9 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_7_9();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_21_2(v10, sel_publisherWithOptions_);

  OUTLINED_FUNCTION_13_3();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_8_10(v13);
  OUTLINED_FUNCTION_0_22(v14);
  OUTLINED_FUNCTION_1_13();
  v21 = v15;
  v22 = &block_descriptor_54;
  _Block_copy(v20);
  OUTLINED_FUNCTION_10_5();
  v16 = v2;

  v23 = sub_2314E3E2C;
  v24 = v0;
  v20[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_2_12();
  v21 = v17;
  v22 = &block_descriptor_57;
  _Block_copy(v20);
  OUTLINED_FUNCTION_14_3();

  v19 = OUTLINED_FUNCTION_11_7(v18, sel_sinkWithCompletion_receiveInput_);
  OUTLINED_FUNCTION_20_4();
  _Block_release(v3);

  OUTLINED_FUNCTION_16_3();
}

void sub_2314E2BBC()
{
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_6_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = OUTLINED_FUNCTION_19(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_18_0();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_12_6(v7);
  OUTLINED_FUNCTION_5_10(v8);
  v9 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_7_9();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_21_2(v10, sel_publisherWithOptions_);

  OUTLINED_FUNCTION_13_3();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_8_10(v13);
  OUTLINED_FUNCTION_0_22(v14);
  OUTLINED_FUNCTION_1_13();
  v21 = v15;
  v22 = &block_descriptor_30;
  _Block_copy(v20);
  OUTLINED_FUNCTION_10_5();
  v16 = v2;

  v23 = sub_2314E3E2C;
  v24 = v0;
  v20[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_2_12();
  v21 = v17;
  v22 = &block_descriptor_33;
  _Block_copy(v20);
  OUTLINED_FUNCTION_14_3();

  v19 = OUTLINED_FUNCTION_11_7(v18, sel_sinkWithCompletion_receiveInput_);
  OUTLINED_FUNCTION_20_4();
  _Block_release(v3);

  OUTLINED_FUNCTION_16_3();
}

void sub_2314E2D74()
{
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_6_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = OUTLINED_FUNCTION_19(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_18_0();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_12_6(v7);
  OUTLINED_FUNCTION_5_10(v8);
  v9 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_7_9();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_21_2(v10, sel_publisherWithOptions_);

  OUTLINED_FUNCTION_13_3();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_8_10(v13);
  OUTLINED_FUNCTION_0_22(v14);
  OUTLINED_FUNCTION_1_13();
  v21 = v15;
  v22 = &block_descriptor_66;
  _Block_copy(v20);
  OUTLINED_FUNCTION_10_5();
  v16 = v2;

  v23 = sub_2314E3E2C;
  v24 = v0;
  v20[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_2_12();
  v21 = v17;
  v22 = &block_descriptor_69;
  _Block_copy(v20);
  OUTLINED_FUNCTION_14_3();

  v19 = OUTLINED_FUNCTION_11_7(v18, sel_sinkWithCompletion_receiveInput_);
  OUTLINED_FUNCTION_20_4();
  _Block_release(v3);

  OUTLINED_FUNCTION_16_3();
}

void sub_2314E2F2C()
{
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_6_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = OUTLINED_FUNCTION_19(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_18_0();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_12_6(v7);
  OUTLINED_FUNCTION_5_10(v8);
  v9 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_7_9();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_21_2(v10, sel_publisherWithOptions_);

  OUTLINED_FUNCTION_13_3();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_8_10(v13);
  OUTLINED_FUNCTION_0_22(v14);
  OUTLINED_FUNCTION_1_13();
  v21 = v15;
  v22 = &block_descriptor_42;
  _Block_copy(v20);
  OUTLINED_FUNCTION_10_5();
  v16 = v2;

  v23 = sub_2314E3E2C;
  v24 = v0;
  v20[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_2_12();
  v21 = v17;
  v22 = &block_descriptor_45;
  _Block_copy(v20);
  OUTLINED_FUNCTION_14_3();

  v19 = OUTLINED_FUNCTION_11_7(v18, sel_sinkWithCompletion_receiveInput_);
  OUTLINED_FUNCTION_20_4();
  _Block_release(v3);

  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2314E30E4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *__return_ptr, void), uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  OUTLINED_FUNCTION_22_4(a2 + 16, v42);
  if (*(a2 + 16))
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v14 = sub_231585FF4();
    __swift_project_value_buffer(v14, qword_280D72248);

    v15 = sub_231585FE4();
    v16 = sub_2315865D4();

    if (os_log_type_enabled(v15, v16))
    {
      v34 = a6;
      v17 = swift_slowAlloc();
      v18 = a4;
      v19 = swift_slowAlloc();
      v39 = v19;
      *v17 = 136315138;
      OUTLINED_FUNCTION_22_4(a2 + 16, v36);
      v40 = *(a2 + 16);
      v20 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
      sub_231586204();
      v21 = sub_2314A22E8();

      *(v17 + 4) = v21;
      _os_log_impl(&dword_231496000, v15, v16, "BiomeLatestEventProcessor: Latest event: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      a4 = v18;
      OUTLINED_FUNCTION_10();
      a6 = v34;
      OUTLINED_FUNCTION_10();
    }
  }

  else
  {
    v35 = a4;
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v22 = sub_231585FF4();
    __swift_project_value_buffer(v22, qword_280D72248);
    v23 = a3;

    v24 = sub_231585FE4();
    v25 = sub_2315865E4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = a6;
      v28 = swift_slowAlloc();
      v39 = v28;
      *v26 = 136315138;
      v29 = [v23 identifier];
      sub_2315861A4();

      v30 = sub_2314A22E8();

      *(v26 + 4) = v30;
      _os_log_impl(&dword_231496000, v24, v25, "BiomeLatestEventProcessor: No value extracted from the Biome stream: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      a6 = v27;
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    a4 = v35;
  }

  OUTLINED_FUNCTION_22_4(a2 + 16, &v39);
  v31 = *(a2 + 16);
  v32 = v31;
  a4(&v40, v31);

  v37 = v40;
  v38 = v41;
  a6(&v37);
  return sub_2314A5EEC(v37, v38);
}

void sub_2314E3434(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x231930B10]();
  v5 = [a1 eventBody];
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = v5;

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_2314E34C8()
{
  result = sub_231586964();
  qword_280D6F250 = result;
  qword_280D6F258 = v1;
  return result;
}

uint64_t *sub_2314E34FC()
{
  if (qword_280D6F240 != -1)
  {
    OUTLINED_FUNCTION_4_10(&qword_280D6F240);
  }

  return &qword_280D6F250;
}

uint64_t static DeviceMotionStateSignal.signalName.getter()
{
  if (qword_280D6F240 != -1)
  {
    OUTLINED_FUNCTION_4_10(&qword_280D6F240);
  }

  OUTLINED_FUNCTION_22_4(&qword_280D6F250, v2);
  v0 = qword_280D6F250;

  return v0;
}

uint64_t static DeviceMotionStateSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6F240 != -1)
  {
    OUTLINED_FUNCTION_4_10(&qword_280D6F240);
  }

  swift_beginAccess();
  qword_280D6F250 = a1;
  qword_280D6F258 = a2;
}

uint64_t (*static DeviceMotionStateSignal.signalName.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280D6F240 != -1)
  {
    OUTLINED_FUNCTION_4_10(&qword_280D6F240);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_2314E369C@<D0>(void *a1@<X8>)
{
  sub_2314E34FC();
  swift_beginAccess();
  v2 = qword_280D6F258;
  *a1 = qword_280D6F250;
  a1[1] = v2;

  return result;
}

uint64_t sub_2314E36F0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_2314E34FC();
  swift_beginAccess();
  qword_280D6F250 = v2;
  qword_280D6F258 = v1;
}

uint64_t DeviceMotionStateSignal.id.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_2314E378C(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v3 = a1;
  if ([v3 confidence] != 3 && objc_msgSend(v3, sel_confidence) != 2)
  {

LABEL_9:
    v4 = -1;
    goto LABEL_10;
  }

  if ([v3 unknown])
  {

    v4 = 0;
  }

  else if ([v3 stationary])
  {

    v4 = 1;
  }

  else if ([v3 walking])
  {

    v4 = 2;
  }

  else if ([v3 running] || objc_msgSend(v3, sel_cycling))
  {

    v4 = 3;
  }

  else
  {
    v5 = [v3 automotive];

    v4 = 4;
    if (!v5)
    {
      v4 = -1;
    }
  }

LABEL_10:
  *a2 = v4;
  *(a2 + 8) = 0;
}

uint64_t static DeviceMotionStateSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Motion];
  swift_unknownObjectRelease();
  v2 = [v1 Activity];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for DeviceMotionStateSignal;
  *(v0 + 64) = &protocol witness table for DeviceMotionStateSignal;
  OUTLINED_FUNCTION_13_3();
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F240 != -1)
  {
    OUTLINED_FUNCTION_4_10(&qword_280D6F240);
  }

  OUTLINED_FUNCTION_22_4(&qword_280D6F250, v6);
  v4 = qword_280D6F258;
  v3[5] = qword_280D6F250;
  v3[6] = v4;
  v3[7] = &unk_284610878;
  v3[2] = v2;
  v3[3] = sub_2314E378C;
  v3[4] = 0;

  return v0;
}

uint64_t static DeviceMotionStateSignal.instances(with:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314E3AAC();
}

uint64_t sub_2314E3A50(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314E3AAC();
}

uint64_t sub_2314E3AAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Motion];
  swift_unknownObjectRelease();
  v2 = [v1 Activity];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for DeviceMotionStateSignal;
  *(v0 + 64) = &protocol witness table for DeviceMotionStateSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F258;
  v3[5] = qword_280D6F250;
  v3[6] = v4;
  v3[7] = &unk_284610320;
  v3[2] = v2;
  v3[3] = sub_2314E378C;
  v3[4] = 0;

  return v0;
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

uint64_t sub_2314E3C20(uint64_t *a1, int a2)
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

uint64_t sub_2314E3C60(uint64_t result, int a2, int a3)
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

uint64_t objectdestroy_5Tm()
{

  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

_BYTE *storeEnumTagSinglePayload for DeviceSupport(_BYTE *result, int a2, int a3)
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

uint64_t sub_2314E3F00()
{
  result = sub_2315860F4();
  qword_280D6E350 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DeviceSupport.DeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeviceSupport.DeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
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