uint64_t sub_1C110ADA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94190, &qword_1C12B7800);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94198, &qword_1C12B7808);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v40 - v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE941A0, &qword_1C12B7810);
  MEMORY[0x1EEE9AC00](v48);
  v19 = (&v40 - v18);
  v20 = *(a1 + 128);
  if (v20)
  {
    v47 = v15;
    v21 = *(a1 + 136);
    v22 = objc_opt_self();
    v44 = v4;
    v23 = v22;

    v24 = [v23 blueColor];
    v25 = [v24 colorWithAlphaComponent_];
    v42 = v6;

    v49 = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
    v26 = swift_allocObject();
    v43 = a2;
    *(v26 + 16) = v20;
    *(v26 + 24) = v21;

    v40 = v20;
    v41 = v19;
    v27 = v46;
    sub_1C1264AF0();

    v28 = [v23 blueColor];
    v29 = [v28 colorWithAlphaComponent_];

    v49 = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
    v30 = swift_allocObject();
    *(v30 + 16) = v20;
    *(v30 + 24) = v21;

    v31 = v47;
    sub_1C1264AF0();

    v32 = *(v8 + 16);
    v32(v12, v27, v7);
    v33 = v45;
    v32(v45, v31, v7);
    v34 = v42;
    v32(v42, v12, v7);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE941B0, &qword_1C12B7818);
    v32((v34 + *(v35 + 48)), v33, v7);
    v36 = *(v8 + 8);
    v36(v33, v7);
    v36(v12, v7);
    sub_1C0FBA368(v34, v41);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EBE941A8, &qword_1EBE94190, &qword_1C12B7800, MEMORY[0x1E6981F48]);
    sub_1C1263C20();
    sub_1C0FCF004(v40, v21);
    sub_1C0F9E21C(v34, &qword_1EBE94190, &qword_1C12B7800);
    v36(v47, v7);
    return (v36)(v27, v7);
  }

  else
  {
    v38 = [objc_opt_self() blueColor];
    v39 = [v38 colorWithAlphaComponent_];

    *v19 = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EBE941A8, &qword_1EBE94190, &qword_1C12B7800, MEMORY[0x1E6981F48]);
    return sub_1C1263C20();
  }
}

double sub_1C110B374(__int128 *a1, uint64_t a2)
{
  if (*(a2 + 56))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94158, &qword_1C12B77C8);
    sub_1C12655F0();
  }

  return result;
}

void sub_1C110B444(void *a1@<X8>)
{
  sub_1C1262D20();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

double sub_1C110B474(_OWORD *a1, uint64_t a2)
{
  if (*(a2 + 88))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94150, &qword_1C12B77C0);
    sub_1C12655F0();
  }

  return result;
}

void sub_1C110B528(uint64_t a1, uint64_t a2)
{
  v18 = *(a2 + 144);
  v19 = *(a2 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CD0, &qword_1C12B77F0);
  sub_1C1265420();
  if (LOBYTE(v17) == 1)
  {
    v18 = *a2;
    v19 = *(a2 + 16);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94188, &qword_1C12B77F8);
    MEMORY[0x1C68EEF20](&v16, v3);
    v18 = *(a2 + 144);
    v19 = *(a2 + 160);
    LOBYTE(v17) = 0;
    sub_1C1265430();
  }

  v18 = *(a2 + 144);
  v19 = *(a2 + 160);
  sub_1C1265420();
  if (LOBYTE(v17))
  {
    __break(1u);
  }

  else
  {
    v4 = v16;
    sub_1C1262A40();
    v18 = *a2;
    v19 = *(a2 + 16);
    v16 = v4 - v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94188, &qword_1C12B77F8);
    sub_1C12655F0();
    v7 = *(a2 + 56);
    if (v7)
    {
      v9 = *(a2 + 64);
      v8 = *(a2 + 72);
      v10 = *(a2 + 48);
      v18 = *a2;
      v19 = *(a2 + 16);

      MEMORY[0x1C68EEF20](&v16, v6);
      v11 = v16;
      *&v18 = v10;
      *(&v18 + 1) = v7;
      v19 = v9;
      v20 = v8;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94158, &qword_1C12B77C8);
      MEMORY[0x1C68EEF20](&v16, v12);
      v16 = v11 / v17;
      v18 = xmmword_1C12A2E30;
      sub_1C0FDAF38();
      sub_1C1265D80();
      v13 = *(a2 + 32);
      v14 = *(a2 + 40);
      v16 = *(a2 + 24);
      *&v18 = v16;
      *(&v18 + 1) = v13;
      v19 = v14;
      v15[1] = v21;
      sub_1C110BC68(&v16, v15);

      sub_1C12655F0();

      sub_1C110BCC4(&v16);
    }
  }
}

double sub_1C110B784(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CD0, &qword_1C12B77F0);
  sub_1C1265430();
  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI14HorizontalEdgeOIegy_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C110B80C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1C110B84C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C110B8C4()
{
  result = qword_1EBE94120;
  if (!qword_1EBE94120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94118, &qword_1C12B7668);
    sub_1C110B97C();
    sub_1C0FDB6D4(&qword_1EDE76DB8, &qword_1EBE94148, &qword_1C12B77B8, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94120);
  }

  return result;
}

unint64_t sub_1C110B97C()
{
  result = qword_1EBE94128;
  if (!qword_1EBE94128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94110, &qword_1C12B7660);
    sub_1C110BA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94128);
  }

  return result;
}

unint64_t sub_1C110BA08()
{
  result = qword_1EBE94130;
  if (!qword_1EBE94130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94108, &qword_1C12B7658);
    sub_1C110BAC0();
    sub_1C0FDB6D4(&qword_1EDE7BA88, &qword_1EBE93AE8, &qword_1C12B77B0, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94130);
  }

  return result;
}

unint64_t sub_1C110BAC0()
{
  result = qword_1EBE94138;
  if (!qword_1EBE94138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE940F8, &qword_1C12B7648);
    sub_1C0FDB6D4(&qword_1EBE94140, &qword_1EBE94100, &qword_1C12B7650, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94138);
  }

  return result;
}

uint64_t sub_1C110BB80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_8()
{

  if (v0[9])
  {
  }

  if (v0[13])
  {
  }

  if (v0[18])
  {
  }

  return swift_deallocObject();
}

uint64_t PhotosObservableSearchResult.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservableSearchResult.init(_:)(a1);
  return v2;
}

uint64_t PhotosObservableSearchResult.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  OUTLINED_FUNCTION_2_15();
  sub_1C10342F0(a1, v4, v1 + *(v3 + 104));
  return v1;
}

uint64_t sub_1C110BE38(uint64_t a1)
{
  OUTLINED_FUNCTION_2_15();
  v5 = v4;
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_2();
  sub_1C110BF9C();
  v11 = *(v9 + 8);
  v11(v2, v7);
  v17 = v7;
  v18 = *(v5 + 88);
  KeyPath = swift_getKeyPath();
  v15 = v1;
  v16 = a1;
  sub_1C110D12C(KeyPath, sub_1C110D200, v14, MEMORY[0x1E69E7CA8] + 8);

  return v11(a1, v7);
}

uint64_t sub_1C110BF9C()
{
  OUTLINED_FUNCTION_6_24();
  v3 = *(v2 + 104);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  return (*(*(*(v4 + 80) - 8) + 16))(v0, v1 + v3);
}

uint64_t sub_1C110C02C(uint64_t a1)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 104);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  (*(*(*(v5 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_1C110C0CC(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C110C158(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C110BE38(v3);
}

uint64_t sub_1C110C218()
{
  OUTLINED_FUNCTION_2_15();
  KeyPath = swift_getKeyPath();
  sub_1C110D090(KeyPath);

  return sub_1C110BF9C();
}

uint64_t sub_1C110C2B0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C110C02C(v3);
}

uint64_t (*sub_1C110C37C(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_2_15();
  v5 = *(v4 + 80);
  v7 = *(v6 + 88);
  v8 = *(v6 + 96);
  KeyPath = swift_getKeyPath();
  sub_1C110D090(KeyPath);

  OUTLINED_FUNCTION_10_2();
  *v3 = v1;
  swift_getKeyPath();
  type metadata accessor for PhotosObservableSearchResult(255, v5, v7, v8);
  OUTLINED_FUNCTION_3_33();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[5] = sub_1C110C0CC(v3);
  return sub_1C110C4D8;
}

void sub_1C110C4D8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_1C110C52C(v2);

  free(v1);
}

double sub_1C110C52C(void *a1)
{
  v1 = *(*a1 + 80);
  v2 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  swift_getKeyPath();
  type metadata accessor for PhotosObservableSearchResult(255, v1, v2, v3);
  swift_getWitnessTable();
  sub_1C1261F40();

  return result;
}

uint64_t sub_1C110C628()
{
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_7_2();
  sub_1C110C218();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14_16();
  sub_1C12622A0();
  v1 = OUTLINED_FUNCTION_16_17();
  return v2(v1);
}

uint64_t sub_1C110C6E8()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v2(v1);
  v3 = OUTLINED_FUNCTION_2_39();
  v4(v3);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C110C7B0()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v2(v1);
  v3 = OUTLINED_FUNCTION_2_39();
  v4(v3);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C110C878()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v3 = v2(v1);
  v4 = OUTLINED_FUNCTION_8_2();
  v5(v4);
  return v3;
}

uint64_t sub_1C110C950()
{
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_7_2();
  sub_1C110C218();
  OUTLINED_FUNCTION_20();
  v1 = OUTLINED_FUNCTION_14_16();
  v2(v1);
  v3 = OUTLINED_FUNCTION_16_17();
  return v4(v3);
}

uint64_t sub_1C110CA20()
{
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_7_2();
  sub_1C110C218();
  OUTLINED_FUNCTION_20();
  v1 = OUTLINED_FUNCTION_14_16();
  v2(v1);
  v3 = OUTLINED_FUNCTION_16_17();
  return v4(v3);
}

uint64_t sub_1C110CAF0()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v3 = v2(v1);
  v4 = OUTLINED_FUNCTION_8_2();
  v5(v4);
  return v3;
}

uint64_t sub_1C110CBC0()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v3 = v2(v1);
  v4 = OUTLINED_FUNCTION_8_2();
  v5(v4);
  return v3 & 1;
}

uint64_t sub_1C110CC90()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v3 = v2(v1);
  v4 = OUTLINED_FUNCTION_8_2();
  v5(v4);
  return v3 & 1;
}

uint64_t sub_1C110CD64()
{
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_7_2();
  sub_1C110C218();
  OUTLINED_FUNCTION_20();
  v1 = OUTLINED_FUNCTION_14_16();
  v2(v1);
  v3 = OUTLINED_FUNCTION_16_17();
  return v4(v3);
}

uint64_t sub_1C110CE34()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v2(v1);
  v3 = OUTLINED_FUNCTION_2_39();
  v4(v3);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C110CEFC()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v2(v1);
  v3 = OUTLINED_FUNCTION_2_39();
  v4(v3);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C110CFC4()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v2(v1);
  v3 = OUTLINED_FUNCTION_2_39();
  v4(v3);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C110D090(uint64_t a1)
{
  OUTLINED_FUNCTION_3_33();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C110D12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_33();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosObservableSearchResult.deinit()
{
  OUTLINED_FUNCTION_2_15();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 104));
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 112);
  v5 = sub_1C1261F70();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t PhotosObservableSearchResult.__deallocating_deinit()
{
  PhotosObservableSearchResult.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1C110D350(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C110C37C(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C110D3AC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C110D57C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C110D620(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C110D65C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C1261F70();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpImportToolbar(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C110DAE0()
{
  result = qword_1EBE941B8;
  if (!qword_1EBE941B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE941C0, &qword_1C12B7A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE941B8);
  }

  return result;
}

double PhotosPersonHomeCellAspectRatio.rawValue.getter()
{
  result = 1.0;
  if (*v0)
  {
    return 0.75;
  }

  return result;
}

void PhotosPersonHomeCellAspectRatio.init(rawValue:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 == 1.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a2 == 0.0)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t PhotosPersonHomeCell.init(_:aspectRatio:showHearts:canToggleFavorite:showShadows:removeAction:supplementaryGlyphName:isElectedForMagicSlot:placeholderGlyphName:isPlaceholderContent:content:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v24 = a1;
  v26 = a16;
  v27 = a14;
  v28 = a12;
  v29 = *a2;
  if (a3)
  {
    v31 = v29;
    v33 = a5;
    result = (*(*(a20 + 16) + 32))(a17);
    v29 = v31;
    v26 = a16;
    v24 = a1;
    v27 = a14;
    a5 = v33;
    v28 = a12;
  }

  else
  {
    result = 0;
  }

  *a9 = v24;
  *(a9 + 8) = v29;
  *(a9 + 9) = result & 1;
  *(a9 + 10) = a4 & 1;
  *(a9 + 11) = a5 & 1;
  *(a9 + 16) = a6;
  *(a9 + 24) = a7;
  *(a9 + 32) = v28;
  *(a9 + 40) = a13;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11 & 1;
  *(a9 + 65) = v27 & 1;
  *(a9 + 72) = a15;
  *(a9 + 80) = v26;
  return result;
}

uint64_t PhotosPersonHomeCell.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = a1[2];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v56 = a1[3];
  v57 = v3;
  v71[0] = v3;
  v71[1] = v56;
  v55 = v4;
  v72[0] = v4;
  v72[1] = v5;
  v54 = v5;
  v53 = v6;
  v72[2] = v6;
  v72[3] = v7;
  v52 = v7;
  v8 = type metadata accessor for PhotosPersonHomeCell.PersonHomeCell(0, v71);
  OUTLINED_FUNCTION_0();
  v58 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  *(&v41 + 1) = &v41 - v13;
  v14 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v46 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  v42 = &v41 - v19;
  sub_1C1263C30();
  OUTLINED_FUNCTION_0();
  v60 = v21;
  v61 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v41 - v22;
  v23 = *(v2 + 8);
  HIDWORD(v50) = *(v2 + 9);
  LODWORD(v50) = *(v2 + 10);
  HIDWORD(v49) = *(v2 + 11);
  v24 = *(v2 + 16);
  v25 = *(v2 + 24);
  v51 = *(v2 + 32);
  v48 = *(v2 + 48);
  LODWORD(v49) = *(v2 + 64);
  v47 = *(v2 + 72);
  swift_unknownObjectRetain();

  sub_1C0FCF1B4(v24, v25);
  OUTLINED_FUNCTION_2_40();
  if (v23 == 2)
  {
    OUTLINED_FUNCTION_5_25(v73, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    OUTLINED_FUNCTION_1_36();
    WitnessTable = swift_getWitnessTable();
    v27 = v44;
    OUTLINED_FUNCTION_11_20();
    sub_1C0FDBA4C();
    v28 = *(v58 + 8);
    v29 = OUTLINED_FUNCTION_11_20();
    v28(v29);
    sub_1C0FDBA4C();
    v69 = WitnessTable;
    v30 = MEMORY[0x1E697F568];
    v70 = MEMORY[0x1E697F568];
    OUTLINED_FUNCTION_4_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9_23();
    sub_1C1112E18();
    v31 = OUTLINED_FUNCTION_11_20();
    v28(v31);
    (v28)(v27, v8);
  }

  else
  {
    OUTLINED_FUNCTION_5_25(v72, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    v32 = swift_getWitnessTable();
    v24 = v41;
    sub_1C12649E0();
    v33 = OUTLINED_FUNCTION_11_20();
    v34(v33);
    v63 = v32;
    v30 = MEMORY[0x1E697F568];
    v64 = MEMORY[0x1E697F568];
    OUTLINED_FUNCTION_4_0();
    swift_getWitnessTable();
    v35 = v42;
    sub_1C0FDBA4C();
    v36 = *(v46 + 8);
    v36(v24, v14);
    v37 = v43;
    sub_1C0FDBA4C();
    OUTLINED_FUNCTION_9_23();
    sub_1C1112D68();
    v36(v37, v14);
    v36(v35, v14);
  }

  OUTLINED_FUNCTION_1_36();
  v38 = swift_getWitnessTable();
  v67 = v38;
  v68 = v30;
  OUTLINED_FUNCTION_4_0();
  v65 = swift_getWitnessTable();
  v66 = v38;
  OUTLINED_FUNCTION_19_0();
  v39 = v61;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(v60 + 8))(v24, v39);
}

uint64_t sub_1C110E270@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, void (*a12)(uint64_t), uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  __src[0] = a15;
  __src[1] = a16;
  __src[2] = a17;
  __src[3] = a18;
  __src[4] = a19;
  __src[5] = a20;
  v22 = type metadata accessor for PhotosPersonHomeCell.PersonHomeCell(0, __src);
  v23 = a9 + v22[26];
  *v23 = sub_1C1012790(0) & 1;
  *(v23 + 8) = v24;
  v25 = v22[27];
  *(a9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE941E0, &qword_1C12B7CC0);
  swift_storeEnumTagMultiPayload();
  v26 = v22[28];
  *(a9 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  swift_storeEnumTagMultiPayload();
  v27 = v22[29];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a9 + v27), __src, 0xD1uLL);
  v28 = a9 + v22[30];
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 9) = a3;
  *(a9 + 10) = a4;
  *(a9 + 16) = a5;
  *(a9 + 24) = a6;
  *(a9 + v22[24]) = a7;
  *(a9 + 32) = a8;
  *(a9 + 40) = a10;
  *(a9 + 56) = a11;
  swift_unknownObjectRetain();
  v29 = sub_1C0FCF1B4(a5, a6);
  a12(v29);
  sub_1C0FCF004(a5, a6);
  result = swift_unknownObjectRelease();
  *(a9 + v22[25]) = a14;
  return result;
}

unint64_t sub_1C110E4AC()
{
  result = qword_1EBE941C8;
  if (!qword_1EBE941C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE941C8);
  }

  return result;
}

BOOL sub_1C110E518(uint64_t a1)
{
  (*(*(*(a1 + 40) + 16) + 24))(*(a1 + 16));
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

BOOL sub_1C110E580(uint64_t a1)
{
  v1 = (*(*(*(a1 + 40) + 16) + 24))(*(a1 + 16));
  if (v2)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3;
  }

  return v5 == 0;
}

BOOL sub_1C110E600(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  return v3 && sub_1C110E580(a1);
}

uint64_t sub_1C110E624(uint64_t a1)
{
  result = (*(*(*(a1 + 40) + 16) + 24))(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  return result;
}

double sub_1C110E684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 116);
  memcpy(v33, (v2 + v9), 0xD1uLL);
  memcpy(v34, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v34) == 1)
  {
    nullsub_1();
    memcpy(v30, v33, 0xD1uLL);
    nullsub_1();
    memcpy(v32, v10, sizeof(v32));
    memcpy(v31, v33, sizeof(v31));
    nullsub_1();
    sub_1C100D690(v11, &v29);
  }

  else
  {
    nullsub_1();
    memcpy(v30, v33, 0xD1uLL);
    nullsub_1();
    memcpy(v31, v33, sizeof(v31));
    nullsub_1();

    sub_1C1266420();
    v12 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v33, &qword_1EBE91C80, &qword_1C12A75B0);
    (*(v6 + 8))(v8, v5);
  }

  memcpy(&v31[8], &v32[8], 0xC8uLL);
  *v31 = 0x402E000000000000;
  if (*(v2 + 10) == 1)
  {
    v13 = *&v31[176];
    v14 = *&v31[184];
    v15 = *&v31[200];
    v16 = *&v31[128];
    v17 = *&v31[144];
    v18 = *&v31[8];
    v19 = *&v31[16];
    v20 = *&v31[32];
  }

  else
  {
    v26 = *&v31[144];
    v27 = *&v31[128];
    v13 = *&v31[176];
    v28 = *&v31[184];
    v15 = *&v31[200];
    sub_1C100D690(v31, v30);
    if (qword_1EDE82B78 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDE82B80;
    v25 = *&qword_1EDE82B88;
    v20 = qword_1EDE82B98;

    sub_1C100C7D0(v31);
    v19 = v25;
    v17 = v26;
    v16 = v27;
    v14 = v28;
  }

  result = *&v31[168];
  v22 = v31[161];
  v23 = v31[160];
  v24 = *&v31[120];
  *a2 = 0x402E000000000000;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = *&v31[40];
  *(a2 + 56) = *&v31[56];
  *(a2 + 72) = *&v31[72];
  *(a2 + 88) = *&v31[88];
  *(a2 + 104) = *&v31[104];
  *(a2 + 120) = v24;
  *(a2 + 128) = v16;
  *(a2 + 144) = v17;
  *(a2 + 160) = v23;
  *(a2 + 161) = v22;
  *(a2 + 168) = result;
  *(a2 + 176) = v13;
  *(a2 + 184) = v14;
  *(a2 + 200) = v15;
  return result;
}

uint64_t sub_1C110E9F0(uint64_t a1)
{
  v2 = sub_1C1263A80();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C1263530();
}

uint64_t sub_1C110EAB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v82 = *(a1 - 1);
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v81 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91CC8, &qword_1C12AC400);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE941D0, &unk_1C12B7CA0);
  v85 = a1;
  v5 = a1[2];
  v6 = a1[5];
  v88 = a1[4];
  v89 = v6;
  v7 = *(v6 + 8);
  v80 = v5;
  type metadata accessor for PhotosInteractiveFavoriteBadge(255, v5, v88, v7);
  sub_1C1263190();
  type metadata accessor for PhotosFavoriteBadge(255, v5, *(v7 + 8), v8);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v77 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1C12655C0();
  sub_1C1263190();
  sub_1C1263190();
  v79 = MEMORY[0x1E6981880];
  v106[13] = swift_getWitnessTable();
  v106[14] = MEMORY[0x1E697E5D8];
  v9 = MEMORY[0x1E697E858];
  v106[11] = swift_getWitnessTable();
  v106[12] = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  sub_1C12633A0();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v10 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v106[9] = WitnessTable;
  v106[10] = v12;
  v13 = swift_getWitnessTable();
  v14 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v106[7] = v13;
  v106[8] = v14;
  v78 = v9;
  v15 = swift_getWitnessTable();
  v16 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  v106[5] = v15;
  v106[6] = v16;
  v17 = swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView(255, v10, v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE941D8, &unk_1C12B7CB0);
  swift_getTupleTypeMetadata2();
  v67 = sub_1C1265B00();
  v66 = swift_getWitnessTable();
  v19 = sub_1C12655C0();
  v69 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30, &qword_1C12B2020);
  v22 = sub_1C1263190();
  v70 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v62 - v23;
  v63 = sub_1C1263190();
  v72 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v62 - v25;
  v73 = sub_1C1263190();
  v76 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v68 = &v62 - v26;
  v74 = sub_1C1263190();
  v77 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v75 = &v62 - v29;
  v30 = v85;
  v31 = v87;
  sub_1C110E684(v85, v107);
  sub_1C1265980();
  v32 = v80;
  v90 = v80;
  v91 = v86;
  v92 = v88;
  v93 = v89;
  v33 = v30[6];
  v64 = v30[7];
  v94 = v33;
  v95 = v64;
  v34 = v33;
  v62 = v33;
  v96 = v31;
  v97 = v107;
  sub_1C12655B0();
  LOBYTE(v106[0]) = 1;
  v35 = swift_getWitnessTable();
  sub_1C1061D74();
  sub_1C12649C0();
  (*(v69 + 8))(v21, v19);
  v36 = *v31;
  v106[3] = v32;
  v106[4] = v34;
  v106[0] = v36;
  v37 = sub_1C0FDB6D4(&qword_1EDE7B9E0, &unk_1EBE91C30, &qword_1C12B2020, MEMORY[0x1E6980758]);
  v104 = v35;
  v105 = v37;
  swift_unknownObjectRetain();
  v38 = swift_getWitnessTable();
  v39 = v65;
  View.selectionStyle(for:)(v106, v22, v38);
  (*(v70 + 8))(v24, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(v106);
  v40 = sub_1C100D614();
  v102 = v38;
  v103 = v40;
  v41 = v63;
  v42 = swift_getWitnessTable();
  v43 = v68;
  View.dropTargetStyle()(v41, v42);
  (*(v72 + 8))(v39, v41);
  v45 = v81;
  v44 = v82;
  v46 = v85;
  (*(v82 + 16))(v81, v87, v85);
  v47 = v44;
  v48 = (*(v44 + 80) + 64) & ~*(v44 + 80);
  v49 = swift_allocObject();
  v50 = v86;
  *(v49 + 2) = v32;
  *(v49 + 3) = v50;
  v51 = v89;
  *(v49 + 4) = v88;
  *(v49 + 5) = v51;
  v52 = v64;
  *(v49 + 6) = v62;
  *(v49 + 7) = v52;
  (*(v47 + 32))(&v49[v48], v45, v46);
  v53 = sub_1C10A04F0();
  v100 = v42;
  v101 = v53;
  v54 = v73;
  v55 = swift_getWitnessTable();
  v56 = v71;
  sub_1C1264F40();
  sub_1C100C7D0(v107);

  (*(v76 + 8))(v43, v54);
  v57 = sub_1C10136B0();
  v98 = v55;
  v99 = v57;
  v58 = v74;
  swift_getWitnessTable();
  v59 = v75;
  sub_1C0FDBA4C();
  v60 = *(v77 + 8);
  v60(v56, v58);
  sub_1C0FDBA4C();
  return (v60)(v59, v58);
}

uint64_t sub_1C110F550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v76 = a7;
  *&v77 = a8;
  v74 = a5;
  v75 = a6;
  v69 = a4;
  v81 = a1;
  v78 = a9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91CC8, &qword_1C12AC400);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE941D0, &unk_1C12B7CA0);
  v13 = *(a6 + 8);
  v73 = a3;
  type metadata accessor for PhotosInteractiveFavoriteBadge(255, a3, a5, v13);
  sub_1C1263190();
  type metadata accessor for PhotosFavoriteBadge(255, a3, *(v13 + 8), v14);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  sub_1C1263190();
  sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v107 = MEMORY[0x1E697E5D8];
  v104 = swift_getWitnessTable();
  v105 = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  sub_1C12633A0();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  v15 = sub_1C1265B00();
  v67 = swift_getWitnessTable();
  v16 = sub_1C12655C0();
  v72 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v19 = sub_1C1263190();
  v71 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v70 = &v65 - v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v68 = v21;
  v102 = v21;
  v103 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v100 = v23;
  v101 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  v98 = v25;
  v99 = v26;
  v66 = swift_getWitnessTable();
  v28 = type metadata accessor for PhotosDetailsPresentationSourceView(0, v19, v66, v27);
  v79 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v80 = &v65 - v32;
  v82 = v73;
  v83 = v69;
  v84 = v74;
  v85 = v75;
  v86 = v76;
  v87 = v77;
  v88 = v81;
  v89 = a2;
  sub_1C1009330(v15, v67, v33, v34, v35, v36);
  sub_1C12655B0();
  memcpy(v97, (a2 + 40), sizeof(v97));
  sub_1C100D690(a2, v110);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v37 = qword_1EDE82B08;
  v38 = qword_1EDE82B10;
  v77 = xmmword_1EDE82B18;
  v39 = qword_1EDE82B28;

  *&v96[0] = v37;
  *(&v96[0] + 1) = v38;
  v96[1] = v77;
  *&v96[2] = v39;
  memcpy(&v96[2] + 8, v97, 0xA8uLL);
  v40 = v70;
  View.cellStyle(for:)(v96, v68, v70);
  memcpy(v110, v96, 0xD0uLL);
  sub_1C100C7D0(v110);
  (*(v72 + 8))(v18, v16);
  v93[0] = 2;
  LOBYTE(v94[0]) = 0;
  v41 = *(a2 + 16);
  v108[0] = *a2;
  v108[1] = v41;
  v109 = *(a2 + 32);
  v42 = *(a2 + 16);
  v96[0] = *a2;
  v96[1] = v42;
  *&v96[2] = *(a2 + 32);
  sub_1C11128F4(v108, v95);
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(v93, 0, 0, v19, v66, v30);

  (*(v71 + 8))(v40, v19);
  v43 = swift_getWitnessTable();
  v44 = v80;
  *&v77 = v43;
  sub_1C0FDBA4C();
  v45 = v79;
  v46 = *(v79 + 8);
  v46(v30, v28);
  v47 = *(v81 + 16);
  v48 = v30;
  if (v47)
  {
    v49 = *(v81 + 24);

    v50 = sub_1C1263AB0();
    v76 = v30;
    v51 = v50;
    LOBYTE(v96[0]) = 1;
    v52 = sub_1C12638E0();
    LOBYTE(v95[0]) = 1;
    v81 = v28;

    v93[0] = 1;
    v53 = v95[0];
    v54 = sub_1C1264470();
    v75 = v46;
    v55 = v54;
    sub_1C12628A0();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    sub_1C0FCF004(v47, v49);
    v95[0] = v51;
    v95[1] = 0;
    LOBYTE(v95[2]) = v96[0];
    v95[3] = v52;
    v95[4] = 0;
    LOBYTE(v95[5]) = v53;
    v95[6] = 0xD000000000000011;
    v95[7] = 0x80000001C126BF80;
    v44 = v80;
    v28 = v81;
    v95[8] = v47;
    v95[9] = v49;
    v95[10] = 0;
    LOBYTE(v95[11]) = 1;
    v45 = v79;
    LOBYTE(v95[12]) = v55;
    v46 = v75;
    v48 = v76;
    v95[13] = v57;
    v95[14] = v59;
    v95[15] = v61;
    v95[16] = v63;
    LOBYTE(v95[17]) = 0;
    nullsub_1();
    memcpy(v96, v95, 0x89uLL);
  }

  else
  {
    sub_1C1112950(v96);
  }

  (*(v45 + 16))(v48, v44, v28);
  v94[0] = v48;
  memcpy(v93, v96, 0x89uLL);
  v94[1] = v93;
  sub_1C0FDB800(v96, v95, &qword_1EBE941D8, &unk_1C12B7CB0);
  v92[0] = v28;
  v92[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE941D8, &unk_1C12B7CB0);
  v90 = v77;
  v91 = sub_1C1112958();
  sub_1C119EE80(v94, 2, v92);
  sub_1C0FD1A5C(v96, &qword_1EBE941D8, &unk_1C12B7CB0);
  v46(v44, v28);
  memcpy(v95, v93, 0x89uLL);
  sub_1C0FD1A5C(v95, &qword_1EBE941D8, &unk_1C12B7CB0);
  return (v46)(v48, v28);
}

uint64_t sub_1C110FED4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v94 = a8;
  v76 = a7;
  v90 = a2;
  v93 = a1;
  v91 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE941D0, &unk_1C12B7CA0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74 - v14;
  v16 = *(a6 + 8);
  type metadata accessor for PhotosInteractiveFavoriteBadge(255, a3, a5, v16);
  sub_1C1263190();
  type metadata accessor for PhotosFavoriteBadge(255, a3, *(v16 + 8), v17);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  sub_1C1263190();
  v18 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v112 = MEMORY[0x1E697E5D8];
  v109 = swift_getWitnessTable();
  v110 = MEMORY[0x1E697E5C0];
  v19 = swift_getWitnessTable();
  v80 = v18;
  v20 = v93;
  v77 = v19;
  v21 = sub_1C12633A0();
  v89 = v13;
  v78 = v21;
  v85 = sub_1C1263190();
  v82 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v83 = &v74 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC0, &qword_1C12B6EB0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v74 - v26;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC8, &qword_1C12AC400);
  MEMORY[0x1EEE9AC00](v96);
  v81 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v74 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v97 = &v74 - v33;
  v79 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v98 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v74 - v37;
  v86 = a3;
  v103 = a3;
  v104 = a4;
  v87 = a5;
  v105 = a5;
  v106 = a6;
  v88 = a6;
  v39 = v76;
  v107 = v76;
  v40 = v94;
  v108 = v94;
  v41 = type metadata accessor for PhotosPersonHomeCell.PersonHomeCell(0, &v103);
  v95 = v38;
  v42 = a4;
  v43 = v40;
  sub_1C0FDBA4C();
  if (qword_1EBE8FCA8 != -1)
  {
    swift_once();
  }

  v44 = __swift_project_value_buffer(v25, qword_1EBE93F58);
  sub_1C0FDB800(v44, v27, &qword_1EBE91CC0, &qword_1C12B6EB0);
  if (!sub_1C110E518(v41) || (v45 = 1.0, *(v20 + *(v41 + 100)) == 1))
  {
    v45 = 0.0;
  }

  sub_1C0FDB71C(v27, v31, &qword_1EBE91CC0, &qword_1C12B6EB0);
  *&v31[*(v96 + 36)] = v45;
  sub_1C0FDB71C(v31, v97, &qword_1EBE91CC8, &qword_1C12AC400);
  *v15 = sub_1C1263AB0();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v46 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE941F0, &qword_1C12B7CD8) + 44)];
  v47 = v86;
  v92 = v42;
  v48 = v42;
  v49 = v87;
  sub_1C1110844(v20, v86, v48, v87, v88, v39, v43, v46);
  v50 = v15;
  v51 = v90;
  v75 = *(v90 + 40);
  v74 = *(v90 + 56);
  v52 = sub_1C1264470();
  v53 = v50 + *(v89 + 36);
  *v53 = v52;
  *(v53 + 24) = v74;
  *(v53 + 8) = v75;
  *(v53 + 40) = 0;
  v54 = sub_1C1265950();
  *&v75 = &v74;
  MEMORY[0x1EEE9AC00](v54);
  *(&v74 - 8) = v47;
  v55 = v92;
  *(&v74 - 7) = v92;
  *(&v74 - 6) = v49;
  *(&v74 - 5) = v56;
  *(&v74 - 4) = v39;
  v57 = v93;
  *(&v74 - 3) = v43;
  *(&v74 - 2) = v57;
  *(&v74 - 1) = v51;
  v58 = sub_1C1112A1C();
  v59 = v84;
  sub_1C1264F60();
  sub_1C0FD1A5C(v50, &qword_1EBE941D0, &unk_1C12B7CA0);
  v60 = swift_getWitnessTable();
  v102[3] = v58;
  v102[4] = v60;
  v61 = v85;
  v62 = swift_getWitnessTable();
  v63 = v83;
  sub_1C0FDBA4C();
  v64 = v82;
  v93 = *(v82 + 8);
  (v93)(v59, v61);
  v65 = v79;
  v66 = v98;
  v67 = v55;
  (*(v79 + 16))(v98, v95, v55);
  v103 = v66;
  v68 = v97;
  v69 = v81;
  sub_1C0FDB800(v97, v81, &qword_1EBE91CC8, &qword_1C12AC400);
  v104 = v69;
  (*(v64 + 16))(v59, v63, v61);
  v105 = v59;
  v102[0] = v67;
  v102[1] = v96;
  v102[2] = v61;
  v99 = v94;
  v100 = sub_1C1112AD4();
  v101 = v62;
  sub_1C119EE80(&v103, 3, v102);
  v70 = v93;
  (v93)(v63, v61);
  sub_1C0FD1A5C(v68, &qword_1EBE91CC8, &qword_1C12AC400);
  v71 = *(v65 + 8);
  v72 = v92;
  v71(v95, v92);
  v70(v59, v61);
  sub_1C0FD1A5C(v69, &qword_1EBE91CC8, &qword_1C12AC400);
  return (v71)(v98, v72);
}

uint64_t sub_1C1110844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v41 = a7;
  v43 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94218, &qword_1C12B7D00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v40 - v15);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94220, &qword_1C12B7D08);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - v22;
  *v16 = sub_1C12659A0();
  v16[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94228, &qword_1C12B7D10);
  v26 = a3;
  v27 = a3;
  v28 = a4;
  v29 = a4;
  v30 = a5;
  v31 = a5;
  v32 = a6;
  v33 = a6;
  v34 = v41;
  sub_1C1110B1C(a1, a2, v27, v29, v31, v33, v41, v16 + *(v25 + 44));
  v44[0] = a2;
  v44[1] = v26;
  v44[2] = v28;
  v44[3] = v30;
  v44[4] = v32;
  v44[5] = v34;
  if (*(a1 + *(type metadata accessor for PhotosPersonHomeCell.PersonHomeCell(0, v44) + 100)) == 1)
  {
    if (qword_1EDE7B868 != -1)
    {
      swift_once();
    }

    v35 = qword_1EDE7B870;
  }

  else
  {
    v35 = sub_1C1265190();
  }

  sub_1C0FDB71C(v16, v20, &qword_1EBE94218, &qword_1C12B7D00);
  *&v20[*(v42 + 36)] = v35;
  sub_1C0FDB71C(v20, v23, &qword_1EBE94220, &qword_1C12B7D08);
  v36 = v40;
  sub_1C0FDB800(v23, v40, &qword_1EBE94220, &qword_1C12B7D08);
  v37 = v43;
  *v43 = 0;
  *(v37 + 8) = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94230, &qword_1C12B7D18);
  sub_1C0FDB800(v36, v37 + *(v38 + 48), &qword_1EBE94220, &qword_1C12B7D08);
  sub_1C0FD1A5C(v23, &qword_1EBE94220, &qword_1C12B7D08);
  return sub_1C0FD1A5C(v36, &qword_1EBE94220, &qword_1C12B7D08);
}

uint64_t sub_1C1110B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94238, &qword_1C12B7D20);
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94240, &qword_1C12B7D28);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v45 = &v38 - v23;
  v55 = a2;
  v56 = a3;
  v38 = a3;
  v39 = a4;
  v57 = a4;
  v58 = a5;
  v40 = a5;
  v41 = a6;
  v59 = a6;
  v60 = a7;
  v61 = a1;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v53 = a7;
  v24 = a7;
  v54 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94248, &qword_1C12B7D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94250, &qword_1C12B7D38);
  sub_1C1112B9C();
  sub_1C1112CD8();
  v25 = v17;
  sub_1C1265380();
  v63 = a2;
  v64 = v38;
  v65 = v39;
  v66[0] = v40;
  v66[1] = v41;
  v66[2] = v24;
  v26 = type metadata accessor for PhotosPersonHomeCell.PersonHomeCell(0, &v63);
  if (sub_1C110E600(v26) || (v27 = 1.0, !sub_1C110E518(v26)))
  {
    v27 = 0.0;
  }

  (*(v43 + 32))(v21, v25, v44);
  *&v21[*(v42 + 36)] = v27;
  v28 = v45;
  sub_1C0FDB71C(v21, v45, &qword_1EBE94240, &qword_1C12B7D28);
  v29 = *(a1 + 40);
  v63 = *(a1 + 32);
  v64 = v29;
  LOBYTE(v65) = 0;
  v62[0] = 394248;
  LODWORD(v62[1]) = 17367552;

  PhotosPrefetchableImage(_:font:)(&v63, v62, v68);
  sub_1C100DC0C(v63, v64);
  v30 = v68[0];
  v31 = v68[1];
  v32 = v68[2];
  sub_1C12659B0();
  sub_1C1263390();
  if (sub_1C110E600(v26))
  {
    v33 = 1.0;
  }

  else
  {
    v33 = 0.0;
  }

  v34 = v46;
  sub_1C0FDB800(v28, v46, &qword_1EBE94240, &qword_1C12B7D28);
  v35 = v47;
  sub_1C0FDB800(v34, v47, &qword_1EBE94240, &qword_1C12B7D28);
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94260, &unk_1C12B7D50) + 48);
  v62[0] = v30;
  v62[1] = v31;
  v62[2] = v32;
  memcpy(&v62[3], __src, 0x70uLL);
  *&v62[17] = v33;
  memcpy((v35 + v36), v62, 0x90uLL);
  sub_1C0FDB800(v62, &v63, &qword_1EBE94268, &unk_1C12B88F0);
  sub_1C0FD1A5C(v28, &qword_1EBE94240, &qword_1C12B7D28);
  v63 = v30;
  v64 = v31;
  v65 = v32;
  memcpy(v66, __src, 0x70uLL);
  *&v66[14] = v33;
  sub_1C0FD1A5C(&v63, &qword_1EBE94268, &unk_1C12B88F0);
  return sub_1C0FD1A5C(v34, &qword_1EBE94240, &qword_1C12B7D28);
}

void *sub_1C1110F90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = a3;
  __src[3] = a4;
  __src[4] = a5;
  __src[5] = a6;
  v8 = type metadata accessor for PhotosPersonHomeCell.PersonHomeCell(0, __src);
  __src[0] = sub_1C110E624(v8);
  __src[1] = v9;
  sub_1C0FDB9AC();
  v10 = sub_1C12648F0();
  v12 = v11;
  v14 = v13;
  sub_1C11D2C40(v10);
  v15 = sub_1C1264870();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1C0FDB8E8(v10, v12, v14 & 1);

  sub_1C1265960();
  sub_1C1263390();
  v25 = v19 & 1;
  KeyPath = swift_getKeyPath();
  *a7 = v15;
  *(a7 + 8) = v17;
  *(a7 + 16) = v19 & 1;
  *(a7 + 24) = v21;
  result = memcpy((a7 + 32), __src, 0x70uLL);
  *(a7 + 144) = KeyPath;
  *(a7 + 152) = 2;
  *(a7 + 160) = 0;
  return result;
}

uint64_t sub_1C11110F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D28, &unk_1C12A7750);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - v5;
  v7 = *(a1 + 56);
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v13 = *(a1 + 48);
    v14 = v7;
    v15 = 0;
    v12 = 0;
    v10[1] = 394248;
    v11 = 17367552;

    PhotosPrefetchableImage(_:imageScale:font:)();
    sub_1C100DC0C(v13, v14);
    sub_1C0FDB71C(v6, a2, &qword_1EBE90D28, &unk_1C12A7750);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_1C1111244@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v53 = a9;
  v16 = sub_1C12637E0();
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v19) = *(a1 + 9);
  v51 = a3;
  v52 = a7;
  if (v19 == 1)
  {
    v47 = v18;
    v48 = v17;
    v65[0] = a3;
    v49 = a4;
    v50 = a8;
    v65[1] = a4;
    v65[2] = a5;
    v65[3] = a6;
    v65[4] = a7;
    v65[5] = a8;
    v21 = type metadata accessor for PhotosPersonHomeCell.PersonHomeCell(0, v65);
    v22 = (a1 + *(v21 + 104));
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(v65[0]) = v23;
    v65[1] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
    v17 = sub_1C1265420();
    if (v64[0] == 1)
    {
      v25 = a1 + *(v21 + 120);
      v26 = *v25;
      if (*(v25 + 8) != 1)
      {

        sub_1C1266420();
        v27 = sub_1C1264410();
        sub_1C1262620();

        sub_1C12637D0();
        swift_getAtKeyPath();
        sub_1C1008DBC(v26, 0);
        v17 = (*(v47 + 8))(v20, v48);
      }

      a4 = v49;
      a8 = v50;
    }

    else
    {
      a4 = v49;
      a8 = v50;
    }
  }

  MEMORY[0x1EEE9AC00](v17);
  v28 = v51;
  *(&v46 - 8) = v51;
  *(&v46 - 7) = a4;
  v29 = v28;
  *(&v46 - 6) = a5;
  *(&v46 - 5) = a6;
  *(&v46 - 4) = v52;
  *(&v46 - 3) = a8;
  *(&v46 - 2) = a1;
  v30 = *(a6 + 8);
  type metadata accessor for PhotosInteractiveFavoriteBadge(255, v28, a5, v30);
  sub_1C1263190();
  v31 = *(v30 + 8);
  type metadata accessor for PhotosFavoriteBadge(255, v29, v31, v32);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  v33 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  sub_1C1009330(v33, WitnessTable, v35, v36, v37, v38);
  sub_1C12655B0();
  memcpy(v64, v65, 0x70uLL);
  v39 = sub_1C12655C0();
  v40 = swift_getWitnessTable();
  sub_1C1264FA0();
  memcpy(__dst, v64, 0x70uLL);
  (*(*(v39 - 8) + 8))(__dst, v39);
  memcpy(v62, v63, sizeof(v62));
  if (*(a1 + 8) == 1)
  {
    v65[0] = *a1;
    (*(v31 + 8))(v29, v31);
  }

  v41 = sub_1C1263190();
  v57 = v40;
  v58 = MEMORY[0x1E697E5D8];
  v42 = swift_getWitnessTable();
  sub_1C1264F50();
  memcpy(v59, v62, 0x99uLL);
  (*(*(v41 - 8) + 8))(v59, v41);
  memcpy(v61, v64, sizeof(v61));
  v43 = sub_1C1263190();
  v55 = v42;
  v56 = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  memcpy(v60, v61, sizeof(v60));
  v44 = *(*(v43 - 8) + 8);
  v44(v60, v43);
  memcpy(v54, v65, sizeof(v54));
  sub_1C0FDBA4C();
  memcpy(v61, v54, sizeof(v61));
  return (v44)(v61, v43);
}

uint64_t sub_1C1111818(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(a5 + 8);
  swift_unknownObjectRetain();
  v9 = sub_1C1265190();
  PhotosInteractiveFavoriteBadge.init(_:tint:)(v7, v9, v38);
  v10 = type metadata accessor for PhotosInteractiveFavoriteBadge(0, a2, a4, v8);
  swift_unknownObjectRetain();
  WitnessTable = swift_getWitnessTable();
  sub_1C1264F50();
  v35[0] = v38[0];
  v35[1] = v38[1];
  v36[0] = v39[0];
  *(v36 + 9) = *(v39 + 9);
  (*(*(v10 - 8) + 8))(v35, v10);
  memcpy(__dst, __src, 0x48uLL);
  v12 = sub_1C1263190();
  v32 = WitnessTable;
  v33 = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  memcpy(v37, __dst, sizeof(v37));
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v14(v37, v12);
  *&__dst[0] = v7;
  v15 = *(v8 + 8);
  v16 = sub_1C1265190();
  PhotosFavoriteBadge.init(_:tint:)(v16, v27, a2, v15);
  *&v26[9] = v27[0];
  type metadata accessor for PhotosFavoriteBadge(0, a2, v15, v17);
  v18 = swift_getWitnessTable();
  sub_1C1264F50();

  swift_unknownObjectRelease();
  __dst[0] = v27[1];
  *&__dst[1] = v28;
  v19 = sub_1C1263190();
  v24[2] = v18;
  v24[3] = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  sub_1C0FDBA4C();

  swift_unknownObjectRelease();
  memcpy(v25, v41, sizeof(v25));
  memcpy(v23, v41, sizeof(v23));
  v22[0] = v29;
  v22[1] = v30;
  v22[2] = v31;
  v24[0] = v23;
  v24[1] = v22;
  (*(v13 + 16))(__dst, v25, v12);
  swift_unknownObjectRetain();

  v21[0] = v12;
  v21[1] = v19;
  sub_1C119EE80(v24, 2, v21);

  swift_unknownObjectRelease();
  memcpy(v26, v41, 0x48uLL);
  v14(v26, v12);

  swift_unknownObjectRelease();
  memcpy(__dst, v23, 0x48uLL);
  return (v14)(__dst, v12);
}

double sub_1C1111C08(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v8 = (a2 + *(type metadata accessor for PhotosPersonHomeCell.PersonHomeCell(0, &v12) + 104));
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v12) = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return result;
}

_BYTE *storeEnumTagSinglePayload for LemonadePeopleShelfSpecs(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PhotosPersonHomeCellAspectRatio(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C1111E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C1111E60(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1C1111EA0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1C1111F0C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v2 = MEMORY[0x1E69E6370];
    sub_1C1007F24(319);
    if (v3 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        sub_1C1112740(319, &qword_1EDE76CA0, v2, MEMORY[0x1E6981790]);
        if (v5 <= 0x3F)
        {
          sub_1C11126EC(319, &qword_1EDE77568, MEMORY[0x1E697F6A0]);
          if (v6 <= 0x3F)
          {
            sub_1C11126EC(319, &qword_1EDE77570, MEMORY[0x1E697E7E0]);
            if (v7 <= 0x3F)
            {
              sub_1C1112740(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
              if (v8 <= 0x3F)
              {
                sub_1C1112740(319, &qword_1EDE77540, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                if (v9 <= 0x3F)
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

uint64_t sub_1C11120EC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v28 = *(a3 + 24);
  v5 = *(v28 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(sub_1C1263A80() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = sub_1C1263150();
  v12 = *(v10 - 8);
  result = v10 - 8;
  v13 = v12;
  v14 = *(v12 + 64);
  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_35:
    if ((v6 & 0x80000000) != 0)
    {

      return __swift_getEnumTagSinglePayload((((((((a1 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v16 + 16) & ~v16, v6, v28);
    }

    else
    {
      v26 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }

  else
  {
    v17 = *(v8 + 80) & 0xF8 | 7;
    v18 = *(v13 + 80) & 0xF8 | 7;
    v19 = ((v15 + ((v9 + v18 + ((v17 + ((*(v5 + 64) + ((v16 + 64) & ~v16) + 9) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17) + 1) & ~v18) + 224) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v19 <= 3)
    {
      v20 = ((a2 - v7 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    switch(v22)
    {
      case 1:
        v23 = a1[v19];
        if (!a1[v19])
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      case 2:
        v23 = *&a1[v19];
        if (!*&a1[v19])
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      case 3:
        __break(1u);
        return result;
      case 4:
        v23 = *&a1[v19];
        if (!v23)
        {
          goto LABEL_35;
        }

LABEL_28:
        v24 = v19 > 3;
        if (v19 <= 3)
        {
          v25 = (v23 - 1) << (8 * v19);
        }

        else
        {
          v25 = 0;
        }

        if (v24)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }

        result = v7 + (v27 | v25) + 1;
        break;
      default:
        goto LABEL_35;
    }
  }

  return result;
}

void sub_1C11123C4(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v23 = *(a4 + 24);
  v6 = *(v23 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1C1263A80() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(sub_1C1263150() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v6 + 80);
  v14 = *(v9 + 80) & 0xF8 | 7;
  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = ((v12 + ((v10 + v15 + ((v14 + ((*(v6 + 64) + ((v13 + 64) & ~v13) + 9) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + 1) & ~v15) + 224) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v19 = 0;
  }

  else
  {
    if (v16 <= 3)
    {
      v17 = ((a3 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v19)
    {
      case 1:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        break;
      case 2:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        break;
      case 3:
LABEL_50:
        __break(1u);
        break;
      case 4:
        *(a1 + v16) = 0;
        goto LABEL_36;
      default:
LABEL_36:
        if (a2)
        {
LABEL_37:
          if ((v7 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((((((((a1 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13, a2, v7, v23);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v22 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v22 = (a2 - 1);
            }

            *a1 = v22;
          }
        }

        break;
    }
  }

  else
  {
    v20 = ~v8 + a2;
    bzero(a1, v16);
    if (v16 <= 3)
    {
      v21 = (v20 >> 8) + 1;
    }

    else
    {
      v21 = 1;
    }

    if (v16 > 3)
    {
      *a1 = v20;
    }

    else
    {
      *a1 = v20;
    }

    switch(v19)
    {
      case 1:
        *(a1 + v16) = v21;
        break;
      case 2:
        *(a1 + v16) = v21;
        break;
      case 3:
        goto LABEL_50;
      case 4:
        *(a1 + v16) = v21;
        break;
      default:
        return;
    }
  }
}

void sub_1C11126EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C1112740(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_1C11127FC(char a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = *(type metadata accessor for PhotosPersonHomeCell.PersonHomeCell(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_1C1111C08(a1, v10, v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1C1112958()
{
  result = qword_1EDE76C10;
  if (!qword_1EDE76C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE941D8, &unk_1C12B7CB0);
    sub_1C0FDB6D4(&qword_1EDE76C18, &qword_1EBE941E8, &unk_1C12B7CC8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76C10);
  }

  return result;
}

unint64_t sub_1C1112A1C()
{
  result = qword_1EBE941F8;
  if (!qword_1EBE941F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE941D0, &unk_1C12B7CA0);
    sub_1C0FDB6D4(&qword_1EBE94200, &qword_1EBE94208, &unk_1C12B7CE0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE941F8);
  }

  return result;
}

unint64_t sub_1C1112AD4()
{
  result = qword_1EBE94210;
  if (!qword_1EBE94210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91CC8, &qword_1C12AC400);
    sub_1C10B8FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94210);
  }

  return result;
}

unint64_t sub_1C1112B9C()
{
  result = qword_1EDE77218;
  if (!qword_1EDE77218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94248, &qword_1C12B7D30);
    sub_1C1112C54();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0, &qword_1C12AA0A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77218);
  }

  return result;
}

unint64_t sub_1C1112C54()
{
  result = qword_1EDE773D0;
  if (!qword_1EDE773D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94258, &unk_1C12B7D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE773D0);
  }

  return result;
}

unint64_t sub_1C1112CD8()
{
  result = qword_1EDE771B0;
  if (!qword_1EDE771B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94250, &qword_1C12B7D38);
    sub_1C100DA9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771B0);
  }

  return result;
}

uint64_t sub_1C1112D68()
{
  OUTLINED_FUNCTION_5_26();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_8();
  OUTLINED_FUNCTION_15_1();
  (*(v4 + 16))(v2, v1, v0);
  OUTLINED_FUNCTION_13_20();
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_7_25();
}

uint64_t sub_1C1112E18()
{
  OUTLINED_FUNCTION_5_26();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_8();
  OUTLINED_FUNCTION_15_1();
  (*(v4 + 16))(v2, v1, v0);
  OUTLINED_FUNCTION_13_20();
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_7_25();
}

uint64_t View.onStaticCondition<A>(_:transform:)@<X0>(int a1@<W0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a7;
  v41 = a6;
  v34 = a3;
  v35 = a2;
  v36 = a1;
  v39 = a8;
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_30();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v34 - v23;
  sub_1C1263C30();
  OUTLINED_FUNCTION_1();
  v38 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_8();
  if (v36)
  {
    v35(v37);
    OUTLINED_FUNCTION_11_21();
    sub_1C0FDBA4C();
    v27 = *(v20 + 8);
    v28 = OUTLINED_FUNCTION_11_21();
    v27(v28);
    sub_1C0FDBA4C();
    OUTLINED_FUNCTION_11_21();
    sub_1C1112D68();
    v29 = OUTLINED_FUNCTION_11_21();
    v27(v29);
    (v27)(v24, a5);
  }

  else
  {
    sub_1C0FDBA4C();
    sub_1C0FDBA4C();
    sub_1C1112E18();
    v30 = *(v11 + 8);
    v30(v15, a4);
    v30(v18, a4);
  }

  v42 = v40;
  v43 = v41;
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_20();
  sub_1C0FDBA4C();
  v31 = OUTLINED_FUNCTION_13_20();
  return v32(v31);
}

uint64_t View.onPhotosSolariumDisabled<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1C1265930();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_30();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_37();
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a1;
  v30 = a2;
  View.ifPhotosSolariumEnabled<A, B>(then:else:)(sub_1C111456C, v31, sub_1C1114570, v24, a3, a3, a4, a5, a5, a6);
  v36 = MEMORY[0x1E6981CD0];
  v37 = a5;
  v38 = a6;
  OUTLINED_FUNCTION_0_47();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_30(WitnessTable);
  v21 = *(v14 + 8);
  v21(v18, v12);
  OUTLINED_FUNCTION_12_15();
  sub_1C0FDBA4C();
  v22 = OUTLINED_FUNCTION_12_15();
  return (v21)(v22);
}

uint64_t View.trackingKeyboardHeight(_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5[0] = a1;
  v5[1] = a2;
  *&v5[2] = a4;
  return MEMORY[0x1C68EE920](v5, a3, &type metadata for PhotosKeyboardHeightTrackingModifier);
}

uint64_t View.onPhotosSolariumEnabled<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1C1265930();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_30();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_37();
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a1;
  v35 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  View.ifPhotosSolariumEnabled<A, B>(then:else:)(sub_1C11137AC, v29, sub_1C111456C, v24, a3, a4, a3, a5, a6, a5);
  v36 = MEMORY[0x1E6981CD0];
  v37 = a6;
  v38 = a5;
  OUTLINED_FUNCTION_0_47();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_30(WitnessTable);
  v21 = *(v14 + 8);
  v21(v18, v12);
  OUTLINED_FUNCTION_12_15();
  sub_1C0FDBA4C();
  v22 = OUTLINED_FUNCTION_12_15();
  return (v21)(v22);
}

uint64_t sub_1C1113698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_30();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_37();
  v14();
  OUTLINED_FUNCTION_23_7();
  sub_1C0FDBA4C();
  v15 = *(v8 + 8);
  v15(v12, a5);
  OUTLINED_FUNCTION_23_7();
  sub_1C0FDBA4C();
  return (v15)(v5, a5);
}

uint64_t sub_1C11137D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v14(v13, v10);
  sub_1C0FDBA4C();
  v15 = *(v6 + 8);
  v15(v8, a5);
  sub_1C0FDBA4C();
  return (v15)(v12, a5);
}

uint64_t sub_1C1113928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v15(v14, v11);
  sub_1C0FDBA4C();
  v16 = *(v7 + 8);
  v16(v9, a6);
  sub_1C0FDBA4C();
  return (v16)(v13, a6);
}

uint64_t View.ifPhotosVisionOS<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_30();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_37();
  sub_1C1113CB4(v12);
  OUTLINED_FUNCTION_23_7();
  sub_1C0FDBA4C();
  v13 = *(v6 + 8);
  v13(v10, a3);
  OUTLINED_FUNCTION_23_7();
  sub_1C0FDBA4C();
  return (v13)(v3, a3);
}

uint64_t sub_1C1113BDC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0FDBA4C();
  sub_1C0FDBA4C();
  return (*(v4 + 8))(v7, a2);
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx06PhotosA6UICore14HiddenModifier33_0A99AC76FC730140E513C4542021C234LLVGAaBHPxAaBHD1__AhA0cI0HPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_1C1263190();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1C1113D70()
{
  result = qword_1EBE94270;
  if (!qword_1EBE94270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94270);
  }

  return result;
}

uint64_t sub_1C1113DC4(uint64_t a1, int a2)
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

uint64_t sub_1C1113E04(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for HiddenModifier(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HiddenModifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C1113FE4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94278, &qword_1C12B7F60);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94280, &qword_1C12B7F68);
  *(a3 + *(result + 36)) = v5;
  return result;
}

double sub_1C111408C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94288, &qword_1C12B7F70);
  sub_1C1266530();

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94290, &qword_1C12B7F78);
  (*(*(v14 - 8) + 16))(a4, a1, v14);
  v15 = (a4 + *(v12 + 56));
  *v15 = sub_1C111445C;
  v15[1] = v13;

  v16 = [v10 defaultCenter];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94298, &qword_1C12B7F80);
  sub_1C1266530();

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a5;
  v19 = (a4 + *(v17 + 56));
  *v19 = sub_1C11144A8;
  v19[1] = v18;

  return result;
}

void sub_1C1114284(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C12619C0();
  if (v7)
  {
    v8 = v7;
    *&v10.origin.x = sub_1C1265EA0();
    v10.origin.y = v9;
    sub_1C12668E0();
    sub_1C104018C(v11, v8, &v12);

    sub_1C0FD1A08(v11);
    if (v13)
    {
      type metadata accessor for CGRect(0);
      if (swift_dynamicCast())
      {
        v11[0] = a3;
        v11[1] = a4;
        *&v11[2] = a1;

        *&v12 = CGRectGetHeight(v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94188, &qword_1C12B77F8);
        sub_1C12655F0();
      }
    }

    else
    {
      sub_1C0FA4B78(&v12);
    }
  }
}

uint64_t objectdestroyTm_9()
{

  return swift_deallocObject();
}

unint64_t sub_1C11144B4()
{
  result = qword_1EDE7BF20;
  if (!qword_1EDE7BF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94280, &qword_1C12B7F68);
    sub_1C0FDB6D4(&qword_1EDE7BB50, &qword_1EBE94278, &qword_1C12B7F60, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF20);
  }

  return result;
}

uint64_t static OneUpChromeAction.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2 >> 4)
  {
    case 1u:
      if ((v3 & 0xF0) != 0x10)
      {
        goto LABEL_48;
      }

      goto LABEL_29;
    case 2u:
      if (v2 == 32)
      {
        if (v3 == 32)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 33)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 3u:
      if (v2 == 48)
      {
        if (v3 == 48)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 49)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 4u:
      if (v2 == 64)
      {
        if (v3 == 64)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 65)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 5u:
      if (v2 == 80)
      {
        if (v3 == 80)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 81)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 6u:
      if (v2 == 96)
      {
        if (v3 == 96)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 97)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 7u:
      if (v2 == 112)
      {
        if (v3 == 112)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 113)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 8u:
      if (v2 == 128)
      {
        if (v3 == 128)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 129)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 9u:
      if (v2 == 144)
      {
        if (v3 == 144)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 145)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 0xAu:
      if (v2 == 160)
      {
        if (v3 == 160)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 161)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 0xBu:
      if (v2 == 176)
      {
        if (v3 == 176)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 177)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 0xCu:
      if (v2 == 192)
      {
        if (v3 == 192)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 193)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 0xDu:
      if (v2 == 208)
      {
        if (v3 == 208)
        {
          goto LABEL_46;
        }
      }

      else if (v3 == 209)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    case 0xEu:
      if (v2 == 224)
      {
        if (v3 != 224)
        {
          goto LABEL_48;
        }

LABEL_46:
        v4 = 1;
        return v4 & 1;
      }

      if (v3 == 225)
      {
        goto LABEL_46;
      }

LABEL_48:
      v4 = 0;
      return v4 & 1;
    default:
      if (v3 >= 0x10)
      {
        goto LABEL_48;
      }

LABEL_29:
      v4 = v3 ^ v2 ^ 1;
      return v4 & 1;
  }
}

uint64_t OneUpChromeAction.hash(into:)()
{
  v1 = *v0;
  switch(v1 >> 4)
  {
    case 1u:
      v2 = 2;
      goto LABEL_20;
    case 2u:
      if (v1 == 32)
      {
        v3 = 1;
      }

      else
      {
        v3 = 3;
      }

      goto LABEL_44;
    case 3u:
      if (v1 == 48)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_44;
    case 4u:
      if (v1 == 64)
      {
        v3 = 6;
      }

      else
      {
        v3 = 7;
      }

      goto LABEL_44;
    case 5u:
      if (v1 == 80)
      {
        v3 = 8;
      }

      else
      {
        v3 = 9;
      }

      goto LABEL_44;
    case 6u:
      if (v1 == 96)
      {
        v3 = 10;
      }

      else
      {
        v3 = 11;
      }

      goto LABEL_44;
    case 7u:
      if (v1 == 112)
      {
        v3 = 12;
      }

      else
      {
        v3 = 13;
      }

      goto LABEL_44;
    case 8u:
      if (v1 == 128)
      {
        v3 = 14;
      }

      else
      {
        v3 = 15;
      }

      goto LABEL_44;
    case 9u:
      if (v1 == 144)
      {
        v3 = 16;
      }

      else
      {
        v3 = 17;
      }

      goto LABEL_44;
    case 0xAu:
      if (v1 == 160)
      {
        v3 = 18;
      }

      else
      {
        v3 = 19;
      }

      goto LABEL_44;
    case 0xBu:
      if (v1 == 176)
      {
        v3 = 20;
      }

      else
      {
        v3 = 21;
      }

      goto LABEL_44;
    case 0xCu:
      if (v1 == 192)
      {
        v3 = 22;
      }

      else
      {
        v3 = 23;
      }

      goto LABEL_44;
    case 0xDu:
      if (v1 == 208)
      {
        v3 = 24;
      }

      else
      {
        v3 = 25;
      }

      goto LABEL_44;
    case 0xEu:
      if (v1 == 224)
      {
        v3 = 26;
      }

      else
      {
        v3 = 27;
      }

LABEL_44:
      result = MEMORY[0x1C68F07E0](v3);
      break;
    default:
      v2 = 0;
LABEL_20:
      MEMORY[0x1C68F07E0](v2);
      result = sub_1C1266EB0();
      break;
  }

  return result;
}

uint64_t OneUpChromeAction.hashValue.getter()
{
  sub_1C1266E90();
  OneUpChromeAction.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t sub_1C111496C(uint64_t a1)
{
  sub_1C1266E90();
  OneUpChromeAction.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t OneUpNullChromeActionsDelegate.__deallocating_deinit()
{
  sub_1C10F4C7C(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t OneUpChromeAction.description.getter()
{
  v1 = *v0;
  switch(v1 >> 4)
  {
    case 1u:
      sub_1C1266940();

      OUTLINED_FUNCTION_1_37();
      v19[0] = v13 + 25;
      v19[1] = v12;
      goto LABEL_20;
    case 2u:
      if (v1 == 32)
      {
        return 0x6572616853;
      }

      else
      {
        return 0x207373696D736944;
      }

    case 3u:
      if (v1 == 48)
      {
        return 0x4620656C67676F54;
      }

      else
      {
        return 0x4420656C67676F54;
      }

    case 4u:
      if (v1 == 64)
      {
        return 0x6873617254;
      }

      else
      {
        return 1953064005;
      }

    case 5u:
      OUTLINED_FUNCTION_0_48();
      v5 = v16 | 6;
      v6 = v1 == 80;
      goto LABEL_34;
    case 6u:
      OUTLINED_FUNCTION_0_48();
      v9 = v17 + 21;
      v10 = v1 == 96;
      goto LABEL_30;
    case 7u:
      OUTLINED_FUNCTION_0_48();
      v5 = v11 + 23;
      v6 = v1 == 112;
      goto LABEL_34;
    case 8u:
      if (v1 == 128)
      {
        return 0x65726F74736552;
      }

      else
      {
        return 0x6552207473727542;
      }

    case 9u:
      OUTLINED_FUNCTION_1_37();
      OUTLINED_FUNCTION_2_41();
      v10 = v1 == 144;
      goto LABEL_30;
    case 0xAu:
      OUTLINED_FUNCTION_0_48();
      v5 = v18 | 4;
      v6 = v1 == 160;
      goto LABEL_34;
    case 0xBu:
      OUTLINED_FUNCTION_0_48();
      v5 = v4 | 4;
      v6 = v1 == 176;
LABEL_34:
      if (v6)
      {
        return v5;
      }

      else
      {
        return v3;
      }

    case 0xCu:
      OUTLINED_FUNCTION_0_48();
      v9 = v8 | 6;
      v10 = v1 == 192;
      goto LABEL_30;
    case 0xDu:
      OUTLINED_FUNCTION_1_37();
      OUTLINED_FUNCTION_2_41();
      v10 = v1 == 208;
LABEL_30:
      if (v10)
      {
        result = v7;
      }

      else
      {
        result = v9;
      }

      break;
    case 0xEu:
      if (v1 == 224)
      {
        result = 0xD000000000000011;
      }

      else
      {
        result = 0xD00000000000001FLL;
      }

      break;
    default:
      sub_1C1266940();

      strcpy(v19, "Like (set to ");
      HIWORD(v19[1]) = -4864;
LABEL_20:
      if (v1)
      {
        v14 = 1702195828;
      }

      else
      {
        v14 = 0x65736C6166;
      }

      if (v1)
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      MEMORY[0x1C68EF850](v14, v15);

      MEMORY[0x1C68EF850](41, 0xE100000000000000);
      result = v19[0];
      break;
  }

  return result;
}

unint64_t sub_1C1114DF0()
{
  result = qword_1EDE7D7A0;
  if (!qword_1EDE7D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D7A0);
  }

  return result;
}

unint64_t sub_1C1114E44(uint64_t a1, uint64_t a2)
{
  result = sub_1C1114E6C(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C1114E6C(uint64_t a1, uint64_t a2)
{
  result = qword_1EDE778F8;
  if (!qword_1EDE778F8)
  {
    type metadata accessor for OneUpNullChromeActionsDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE778F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OneUpChromeAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x72)
  {
    if (a2 + 142 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 142) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 143;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 4) & 0xFFFFFF8F | (16 * ((*a1 >> 1) & 7))) ^ 0x7F;
  if (v5 >= 0x71)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for OneUpChromeAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 142 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 142) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x72)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x71)
  {
    v6 = ((a2 - 114) >> 8) + 1;
    *result = a2 - 114;
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
          *result = 2 * (((-a2 >> 4) & 7) - 8 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C11150D0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x1F)
  {
    return v1 >> 4;
  }

  else
  {
    return (v1 | 0xFFFFFFFE) + 2 * (v1 >> 4);
  }
}

_BYTE *sub_1C11150FC(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    LOBYTE(v2) = *result & 1 | (16 * a2);
  }

  else
  {
    v2 = (a2 & 1 | (16 * (a2 >> 1))) + 16;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OneUpChromeActionsDelegateError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 6)
  {
    if (a2 + 250 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 250) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 251;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((2 * *a1) & 4 | (*a1 >> 2) & 3) ^ 7;
  if (v5 >= 5)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for OneUpChromeActionsDelegateError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 250 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 250) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 5)
  {
    v6 = ((a2 - 6) >> 8) + 1;
    *result = a2 - 6;
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
          *result = 2 * ((((-a2 & 4) != 0) - 2 * a2) & 7);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C11152AC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (((v1 >> 2) & 2) != 0)
  {
    return (v1 & 1 | (2 * (v1 >> 4))) + 2;
  }

  else
  {
    return (v1 >> 2) & 3;
  }
}

_BYTE *sub_1C11152E4(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    LOBYTE(v2) = *result & 0xF1 | (4 * a2);
  }

  else
  {
    v2 = (a2 & 1 | (16 * (a2 >> 1))) - 8;
  }

  *result = v2;
  return result;
}

void PhotosAsyncImagePhase.image.getter()
{
  if ((*v0 >> 62) <= 1)
  {
  }
}

void PhotosAsyncImagePhase.info.getter(void *a1@<X8>)
{
  if (*v1 >> 62)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  *a1 = v3;
  a1[1] = v4;
}

uint64_t PhotosAsyncImagePhase.error.getter()
{
  v1 = *v0;
  if (*v0 >> 62 != 1)
  {
    return 0;
  }

  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  return v2;
}

uint64_t PhotosAsyncImage.init(provider:configuration:targetPixelSize:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v31[0] = a5;
  v31[1] = a6;
  v31[2] = a7;
  v31[3] = a8;
  v21 = type metadata accessor for PhotosAsyncImage(0, v31);
  v22 = swift_allocObject();
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = a7;
  v22[5] = a8;
  sub_1C1115638(sub_1C11156F4, v22);
  v23 = v21[17];
  sub_1C1115700();
  *(a9 + v23) = sub_1C1266740();
  v24 = (a9 + v21[14]);
  *v24 = a10;
  v24[1] = a11;
  OUTLINED_FUNCTION_15_1();
  (*(v25 + 32))(a9, a1, a6);
  v26 = v21[13];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_1();
  result = (*(v27 + 32))(a9 + v26, a2);
  v29 = (a9 + v21[15]);
  *v29 = a3;
  v29[1] = a4;
  return result;
}

uint64_t sub_1C1115638(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_26_2();
  type metadata accessor for PhotosAsyncImage.LoadingState(v2, v3);
  return sub_1C12628D0();
}

void *sub_1C1115694(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v2;
  type metadata accessor for PhotosAsyncImage.LoadingState(255, v4);
  sub_1C1262900();
  return sub_1C12628E0();
}

unint64_t sub_1C1115700()
{
  result = qword_1EDE7B5B0;
  if (!qword_1EDE7B5B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE7B5B0);
  }

  return result;
}

uint64_t sub_1C1115744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(a5, 1, 1, AssociatedTypeWitness);
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  v11 = type metadata accessor for PhotosAsyncImage.LoadingState(0, v18);
  v12 = v11[13];
  v13 = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(a5 + v12, 1, 1, v13);
  result = __swift_storeEnumTagSinglePayload(a5 + v11[14], 1, 1, a2);
  v15 = a5 + v11[15];
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = (a5 + v11[16]);
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0x8000000000000000;
  *(a5 + v11[17]) = 0;
  v17 = a5 + v11[18];
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  return result;
}

uint64_t PhotosAsyncImage.init<A, B>(provider:configuration:targetPixelSize:content:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v49 = a8;
  v50 = a3;
  v52 = a5;
  v53 = a6;
  v51 = a4;
  v48 = a2;
  v54 = a1;
  v55 = a9;
  v45 = a14;
  v46 = a15;
  OUTLINED_FUNCTION_36_0();
  v43 = a13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = AssociatedTypeWitness;
  OUTLINED_FUNCTION_1();
  v22 = v21;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  v44 = &v43 - v24;
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13();
  v31 = v30 - v29;
  (*(v27 + 16))(v30 - v29, a1, a7);
  (*(v22 + 16))(v25, a2, AssociatedTypeWitness);
  v32 = swift_allocObject();
  v33 = v49;
  v34 = v50;
  v32[2] = a7;
  v32[3] = v33;
  v32[4] = a12;
  v32[5] = a13;
  v36 = v45;
  v35 = v46;
  v32[6] = v45;
  v32[7] = v35;
  v37 = v51;
  v38 = v52;
  v32[8] = v34;
  v32[9] = v37;
  v39 = v53;
  v32[10] = v38;
  v32[11] = v39;
  sub_1C1263C30();
  v40 = sub_1C1263C30();
  v58 = v36;
  v59 = v35;
  WitnessTable = swift_getWitnessTable();
  v57 = v35;
  v41 = swift_getWitnessTable();
  PhotosAsyncImage.init(provider:configuration:targetPixelSize:content:)(v31, v44, sub_1C111620C, v32, v40, a7, v41, v43, v55, a10, a11);
  (*(v22 + 8))(v48, v47);
  return (*(v27 + 8))(v54, a7);
}

uint64_t sub_1C1115B14@<X0>(unint64_t *a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, __n128)@<X3>, uint64_t a5@<X4>, void (*a6)(void, __n128)@<X6>, void (*a7)(uint64_t, __n128)@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, void *a11)
{
  v11 = a7;
  v56 = a5;
  v57 = a4;
  v58 = a3;
  v59 = a2;
  v66 = a8;
  v14 = *(a7 - 1);
  v68 = a11;
  v65 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  v20 = sub_1C1263C30();
  v61 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v60 = &v54 - v21;
  v22 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v54 - v27;
  v67 = v29;
  v30 = sub_1C1263C30();
  v63 = *(v30 - 8);
  v64 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v62 = &v54 - v31;
  v32 = *a1;
  v33 = *a1 >> 62;
  if (!v33)
  {

    goto LABEL_6;
  }

  if (v33 != 1)
  {
LABEL_10:
    (v57)(0);
    v45 = v11;
    v37 = v68;
    sub_1C0FDBA4C();
    v46 = *(v14 + 8);
    v46(v16, v45);
    sub_1C0FDBA4C();
    v47 = v65;
    v69 = v65;
    v70 = v37;
    swift_getWitnessTable();
    v40 = v62;
    sub_1C1112E18();
    v46(v16, v45);
    v46(v19, v45);
    v34 = v47;
    goto LABEL_13;
  }

  if (!a1[1])
  {
    v59 = a6;
    v41 = v11;
    v42 = a1[2];
    v74 = v32 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1C111AD64(v32, 0, v42);
    v43 = (v32 & 0x3FFFFFFFFFFFFFFFLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913F8, &qword_1C12AB770);
    if (swift_dynamicCast())
    {
      v44 = v67;
      v37 = v68;
      if ((v73 & 1) == 0)
      {

        v11 = v41;
        goto LABEL_10;
      }
    }

    else
    {
      v44 = v67;
      v37 = v68;
    }

    v68 = (v32 & 0x3FFFFFFFFFFFFFFFLL);
    (v57)(1);
    v48 = v41;
    sub_1C0FDBA4C();
    v49 = *(v14 + 8);
    v49(v16, v41);
    sub_1C0FDBA4C();
    v50 = v60;
    v51 = v65;
    sub_1C1112E18();
    v71 = v51;
    v72 = v37;
    swift_getWitnessTable();
    v40 = v62;
    sub_1C1112D68();

    (*(v61 + 8))(v50, v44);
    v49(v16, v48);
    v49(v19, v48);
    v34 = v51;
    goto LABEL_13;
  }

LABEL_6:
  (v59)(v32);
  v55 = v28;
  v34 = v65;
  sub_1C0FDBA4C();
  v35 = *(v22 + 8);
  v35(v25, a6);
  sub_1C0FDBA4C();
  v36 = v60;
  v59 = v11;
  v37 = v68;
  sub_1C1112D68();
  v79 = v34;
  v80 = v37;
  v38 = a6;
  v39 = v67;
  swift_getWitnessTable();
  v40 = v62;
  sub_1C1112D68();

  (*(v61 + 8))(v36, v39);
  v35(v25, v38);
  v35(v55, v38);
LABEL_13:
  v77 = v34;
  v78 = v37;
  WitnessTable = swift_getWitnessTable();
  v76 = v37;
  v52 = v64;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(v63 + 8))(v40, v52);
}

uint64_t PhotosAsyncImage.init<A, B>(provider:configuration:targetSize:displayScale:content:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v42 = a6;
  v43 = a8;
  v40 = a4;
  v41 = a5;
  v38 = a9;
  v39 = a3;
  v36 = a15;
  v37 = a13;
  OUTLINED_FUNCTION_36_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - v23;
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  v30 = v29 - v28;
  sub_1C12665D0();
  sub_1C12665C0();
  v32 = v31;
  v34 = v33;
  (*(v26 + 16))(v30, a1, a7);
  (*(v21 + 16))(v24, a2, AssociatedTypeWitness);
  PhotosAsyncImage.init<A, B>(provider:configuration:targetPixelSize:content:placeholder:)(v30, v24, v39, v40, v41, v42, a7, v43, v38, v32, v34, v37, a14, v36, a16);
  (*(v21 + 8))(a2, AssociatedTypeWitness);
  return (*(v26 + 8))(a1, a7);
}

void sub_1C1116480(uint64_t a1, int a2, void *a3, double a4, double a5)
{
  v195 = a1;
  v185 = a2;
  v8 = a3[3];
  v177 = sub_1C1266790();
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v154 - v9;
  v10 = a3[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v174 = sub_1C1266790();
  v173 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v172 = &v154 - v12;
  v193 = AssociatedTypeWitness;
  v178 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v192 = &v154 - v14;
  v179 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v154 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v168 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v155 = &v154 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v191 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v158 = &v154 - v22;
  v23 = sub_1C1266790();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v160 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v182 = &v154 - v24;
  *&v25 = a3[4];
  *&v26 = a3[2];
  *(&v26 + 1) = v8;
  *(&v25 + 1) = v10;
  v163 = v25;
  v198[1] = v25;
  v162 = v26;
  v198[0] = v26;
  v27 = type metadata accessor for PhotosAsyncImage.LoadingState(0, v198);
  v197 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v156 = &v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v190 = &v154 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v159 = &v154 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v154 - v34;
  v36 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v167 = &v154 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v184 = &v154 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v154 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v154 - v45;
  v171 = v10;
  v180 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = *(AssociatedConformanceWitness + 16);
  v49 = v195;
  v157 = AssociatedConformanceWitness;
  v187 = v48(v21);
  v188 = v50;
  v51 = *(v191 + 16);
  v165 = v191 + 16;
  v164 = v51;
  v51(v46, v49, v21);
  __swift_storeEnumTagSinglePayload(v46, 0, 1, v21);
  v189 = a3;
  v52 = a3;
  v53 = v21;
  sub_1C1115694(v52);
  v54 = *(v36 + 16);
  v54(v43, &v35[*(v27 + 52)], v23);
  v55 = *(v197 + 8);
  v56 = v35;
  v57 = TupleTypeMetadata2;
  v194 = v27;
  v58 = v27;
  v59 = v182;
  v161 = v55;
  v197 += 8;
  (v55)(v56, v58);
  v60 = *(v57 + 48);
  v54(v59, v46, v23);
  v54((v59 + v60), v43, v23);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v53);
  v186 = v36;
  v170 = v53;
  v169 = v23;
  if (EnumTagSinglePayload != 1)
  {
    v69 = v43;
    v54(v184, v59, v23);
    if (__swift_getEnumTagSinglePayload(v59 + v60, 1, v53) != 1)
    {
      v71 = v191;
      v72 = v158;
      (*(v191 + 32))(v158, v59 + v60, v53);
      v73 = v184;
      LODWORD(TupleTypeMetadata2) = sub_1C1265DE0();
      v74 = *(v71 + 8);
      v74(v72, v53);
      v75 = v59;
      v76 = *(v186 + 8);
      v76(v69, v23);
      v76(v46, v23);
      v74(v73, v53);
      v76(v75, v23);
      v65 = v196;
      v67 = v188;
      v66 = v189;
      v64 = v185;
      v68 = v161;
      if ((TupleTypeMetadata2 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v70 = *(v186 + 8);
    v70(v43, v23);
    v70(v46, v23);
    (*(v191 + 8))(v184, v53);
    v64 = v185;
LABEL_6:
    (*(v160 + 8))(v59, v57);
    v65 = v196;
    v67 = v188;
    v66 = v189;
    goto LABEL_13;
  }

  v62 = *(v36 + 8);
  v62(v43, v23);
  v62(v46, v23);
  v63 = __swift_getEnumTagSinglePayload(v59 + v60, 1, v53);
  v64 = v185;
  if (v63 != 1)
  {
    goto LABEL_6;
  }

  v62(v59, v23);
  v65 = v196;
  v67 = v188;
  v66 = v189;
  v68 = v161;
LABEL_8:
  v77 = v159;
  sub_1C1115694(v66);
  v78 = &v77[v194[15]];
  v79 = *v78;
  v80 = *(v78 + 1);
  v81 = v78[16];
  v68(v77);
  if (v81)
  {
    goto LABEL_13;
  }

  if (v79 != a4 || v80 != a5)
  {
    goto LABEL_13;
  }

  v114 = v190;
  sub_1C1115694(v66);
  v115 = v194;
  v116 = sub_1C1117928(v194);
  (v68)(v114, v115);
  if (v116)
  {
    if (qword_1EDE81FC8 != -1)
    {
      swift_once();
    }

    v117 = sub_1C1262720();
    __swift_project_value_buffer(v117, qword_1EDE9B6D8);

    v118 = sub_1C12626F0();
    v119 = sub_1C1266400();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *&v198[0] = v121;
      *v120 = 136315394;
      v122 = sub_1C0FA0E80(v187, v67, v198);

      *(v120 + 4) = v122;
      *(v120 + 12) = 2080;
      v123 = sub_1C12665A0();
      v125 = sub_1C0FA0E80(v123, v124, v198);

      *(v120 + 14) = v125;
      v126 = "PhotosAsyncImage declining load for configuration %s targetPixelSize %s: Has Active Request";
LABEL_28:
      _os_log_impl(&dword_1C0F96000, v118, v119, v126, v120, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C68F1630](v121, -1, -1);
      MEMORY[0x1C68F1630](v120, -1, -1);
LABEL_30:

      return;
    }

    goto LABEL_29;
  }

  sub_1C1115694(v66);
  v127 = sub_1C1117980(v115);
  (v68)(v114, v115);
  if (v127)
  {
    if (qword_1EDE81FC8 != -1)
    {
      swift_once();
    }

    v128 = sub_1C1262720();
    __swift_project_value_buffer(v128, qword_1EDE9B6D8);

    v118 = sub_1C12626F0();
    v119 = sub_1C1266400();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *&v198[0] = v121;
      *v120 = 136315394;
      v129 = sub_1C0FA0E80(v187, v67, v198);

      *(v120 + 4) = v129;
      *(v120 + 12) = 2080;
      v130 = sub_1C12665A0();
      v132 = sub_1C0FA0E80(v130, v131, v198);

      *(v120 + 14) = v132;
      v126 = "PhotosAsyncImage declining load for configuration %s targetPixelSize %s: Has Existing Full Quality Image";
      goto LABEL_28;
    }

LABEL_29:

    goto LABEL_30;
  }

  v133 = v156;
  sub_1C1115694(v66);
  v134 = &v133[*(v115 + 64)];
  v136 = *v134;
  v135 = v134[1];
  v137 = v134[2];
  v138 = sub_1C111AD64(*v134, v135, v137);
  (v161)(v133, v115, v138);
  if (!(v136 >> 62))
  {
    sub_1C111ADFC(v136, v135, v137);
    goto LABEL_36;
  }

  if (v136 >> 62 == 1)
  {

    sub_1C111ADFC(v136, v135, v137);
    if (v135)
    {

LABEL_36:
      v139 = v181;
      v140 = v155;
      if (qword_1EDE81FC8 != -1)
      {
        swift_once();
      }

      v141 = sub_1C1262720();
      __swift_project_value_buffer(v141, qword_1EDE9B6D8);
      (*(v139 + 16))(v140, v65, v66);

      v142 = sub_1C12626F0();
      v143 = sub_1C12663F0();

      if (os_log_type_enabled(v142, v143))
      {
        v144 = v140;
        v145 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        *&v198[0] = v146;
        *v145 = 136315650;
        *(v145 + 4) = sub_1C0FA0E80(v187, v67, v198);
        *(v145 + 12) = 2080;
        v147 = sub_1C12665A0();
        v149 = sub_1C0FA0E80(v147, v148, v198);

        *(v145 + 14) = v149;
        *(v145 + 22) = 2080;
        (*(v179 + 16))(v154, v144, v180);
        v150 = sub_1C1265ED0();
        v152 = v151;
        (*(v181 + 8))(v144, v189);
        v153 = sub_1C0FA0E80(v150, v152, v198);
        v67 = v188;

        *(v145 + 24) = v153;
        _os_log_impl(&dword_1C0F96000, v142, v143, "PhotosAsyncImage reloading for configuration %s targetPixelSize %s from provider: %s.", v145, 0x20u);
        swift_arrayDestroy();
        v66 = v189;
        MEMORY[0x1C68F1630](v146, -1, -1);
        MEMORY[0x1C68F1630](v145, -1, -1);
      }

      else
      {

        (*(v139 + 8))(v140, v66);
      }
    }
  }

LABEL_13:
  sub_1C11179B4(v66);
  if ((v64 & 1) == 0)
  {
    v83 = v194;
    sub_1C1262900();
    v84 = v190;
    sub_1C12628E0();
    v85 = &v84[*(v83 + 72)];
    *v85 = 0;
    *(v85 + 1) = 0;
    v85[16] = 1;
    sub_1C12628F0();
  }

  v86 = sub_1C1266400();
  v87 = *(v65 + *(v66 + 68));
  if (os_log_type_enabled(v87, v86))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *&v198[0] = v89;
    *v88 = 136315394;
    *(v88 + 4) = sub_1C0FA0E80(v187, v67, v198);
    *(v88 + 12) = 2080;
    v90 = sub_1C12665A0();
    v92 = sub_1C0FA0E80(v90, v91, v198);

    *(v88 + 14) = v92;
    v67 = v188;
    _os_log_impl(&dword_1C0F96000, v87, v86, "PhotosAsyncImage loadConfiguration %s targetPixelSize %s", v88, 0x16u);
    swift_arrayDestroy();
    v93 = v89;
    v66 = v189;
    MEMORY[0x1C68F1630](v93, -1, -1);
    MEMORY[0x1C68F1630](v88, -1, -1);
  }

  v94 = v181;
  v95 = v168;
  (*(v181 + 16))(v168, v65, v66);
  v96 = (*(v94 + 80) + 49) & ~*(v94 + 80);
  v97 = (v166 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  v99 = v163;
  *(v98 + 16) = v162;
  *(v98 + 32) = v99;
  *(v98 + 48) = v64 & 1;
  (*(v94 + 32))(v98 + v96, v95, v66);
  v100 = (v98 + v97);
  *v100 = v187;
  v100[1] = v67;
  v101 = v192;
  v102 = v195;
  v103 = v180;
  (*(v171 + 40))(v195, sub_1C111BFE8, v98, v180, a4, a5);

  v104 = v178;
  v105 = v172;
  v106 = v101;
  v107 = v193;
  (*(v178 + 16))(v172, v106, v193);
  __swift_storeEnumTagSinglePayload(v105, 0, 1, v107);
  v108 = v194;
  sub_1C1262900();
  v109 = v190;
  sub_1C12628E0();
  (*(v173 + 40))(v109, v105, v174);
  sub_1C12628F0();
  v110 = v175;
  (*(v179 + 16))(v175, v65, v103);
  __swift_storeEnumTagSinglePayload(v110, 0, 1, v103);
  sub_1C12628E0();
  (*(v176 + 40))(&v109[v108[14]], v110, v177);
  sub_1C12628F0();
  v111 = v167;
  v112 = v170;
  v164(v167, v102, v170);
  __swift_storeEnumTagSinglePayload(v111, 0, 1, v112);
  sub_1C12628E0();
  (*(v186 + 40))(&v109[v108[13]], v111, v169);
  sub_1C12628F0();
  sub_1C12628E0();
  v113 = &v109[v108[15]];
  *v113 = a4;
  *(v113 + 1) = a5;
  v113[16] = 0;
  sub_1C12628F0();
  sub_1C12628E0();
  v109[v108[17]] = 0;
  sub_1C12628F0();
  (*(v104 + 8))(v192, v193);
}

uint64_t sub_1C1117928(uint64_t a1)
{
  if (*(v1 + *(a1 + 68)))
  {
    return 0;
  }

  v2 = *(v1 + *(a1 + 64));
  if (v2 >> 62 == 1)
  {
    v3 = (v2 & 0x3FFFFFFFFFFFFFFFLL);

    return 0;
  }

  return 1;
}

uint64_t sub_1C1117980(uint64_t a1)
{
  v2 = v1 + *(a1 + 64);
  if (*v2 >> 62 || (v3 = *(v2 + 8), v3 == 2))
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C11179B4(void *a1)
{
  v2 = a1[5];
  v3 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1C1266790();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v37 - v8;
  v44 = AssociatedTypeWitness;
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v37 - v10;
  v11 = sub_1C1266790();
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  *&v14 = a1[4];
  *&v15 = a1[2];
  *(&v15 + 1) = v3;
  v41 = v2;
  *(&v14 + 1) = v2;
  v50[0] = v15;
  v50[1] = v14;
  v16 = type metadata accessor for PhotosAsyncImage.LoadingState(0, v50);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37 - v23;
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v46 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1115694(a1);
  v27 = v45;
  (*(v45 + 16))(v13, &v24[*(v16 + 56)], v11);
  v28 = *(v17 + 8);
  v28(v24, v16);
  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    return (*(v27 + 8))(v13, v11);
  }

  (*(v47 + 32))(v46, v13, v3);
  sub_1C1115694(a1);
  v30 = v42;
  (*(v48 + 16))(v42, v21, v49);
  v28(v21, v16);
  v31 = v44;
  if (__swift_getEnumTagSinglePayload(v30, 1, v44) == 1)
  {
    (*(v47 + 8))(v46, v3);
    return (*(v48 + 8))(v30, v49);
  }

  else
  {
    v32 = v40;
    (*(v40 + 32))(v43, v30, v31);
    sub_1C1262900();
    v33 = v38;
    sub_1C12628E0();
    v33[*(v16 + 68)] = 1;
    sub_1C12628F0();
    v34 = v39;
    __swift_storeEnumTagSinglePayload(v39, 1, 1, v31);
    sub_1C12628E0();
    (*(v48 + 40))(v33, v34, v49);
    sub_1C12628F0();
    v35 = v43;
    v36 = v46;
    (*(v41 + 48))(v43, v3);
    (*(v32 + 8))(v35, v31);
    return (*(v47 + 8))(v36, v3);
  }
}

void sub_1C1117F3C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v103 = a4;
  v104 = a5;
  v110 = a3;
  v14 = *a1;
  v106 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v105 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v16;
  v113 = v17;
  v114 = v18;
  v115 = a9;
  v19 = type metadata accessor for PhotosAsyncImage(0, &v112);
  v109 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v107 = &v99 - v20;
  v108 = a9;
  v112 = a6;
  v113 = a7;
  v114 = a8;
  v115 = a9;
  v21 = type metadata accessor for PhotosAsyncImage.LoadingState(0, &v112);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v99 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v99 - v29;
  if (*(a1 + 72))
  {
    v112 = v14;
    v31 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913F8, &qword_1C12AB770);
    v32 = v14;
    if (swift_dynamicCast())
    {
      v33 = v19;
      if (v111 != 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v33 = v19;
    }

    v112 = v32;
    v83 = v32;
    if (swift_dynamicCast())
    {
LABEL_22:
      v84 = 0;
LABEL_29:
      v90 = v32;
      sub_1C1262900();
      sub_1C12628E0();
      v91 = &v27[*(v21 + 64)];
      sub_1C111ADFC(*v91, *(v91 + 1), *(v91 + 2));
      *v91 = v32 | 0x4000000000000000;
      *(v91 + 1) = v84;
      *(v91 + 2) = 0;
      sub_1C12628F0();

      return;
    }

    sub_1C1115694(v33);
    v85 = &v24[*(v21 + 64)];
    v86 = *v85;
    v87 = v85[1];
    v88 = v85[2];
    v89 = sub_1C111AD64(*v85, v87, v88);
    (*(v22 + 8))(v24, v21, v89);
    v84 = v86;
    if (v86 >> 62)
    {
      if (v86 >> 62 != 1)
      {
        v84 = 0;
        goto LABEL_28;
      }

      v84 = v87;
    }

    sub_1C111ADFC(v86, v87, v88);
LABEL_28:

    goto LABEL_29;
  }

  v101 = v14;
  v35 = *(a1 + 8);
  v34 = *(a1 + 16);
  v36 = *(a1 + 24);
  v37 = *(a1 + 32);
  v38 = *(a1 + 40);
  v39 = *(a1 + 48);
  v102 = *(a1 + 56);
  v100 = *(a1 + 64);
  v40 = v110;
  v41 = v19;
  if ((a2 & 1) != 0 && (sub_1C1115694(v19), v42 = &v30[*(v21 + 72)], v43 = *v42, v44 = *(v42 + 1), v45 = v42[16], v46 = (*(v22 + 8))(v30, v21), (v45 & 1) == 0) && MEMORY[0x1C68F0CB0](v46, v43, v44, v35, v34))
  {
    v47 = sub_1C1266400();
    v48 = *(v40 + *(v19 + 68));
    if (os_log_type_enabled(v48, v47))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v112 = v50;
      *v49 = 136315650;
      *(v49 + 4) = sub_1C0FA0E80(v103, v104, &v112);
      *(v49 + 12) = 2080;
      v51 = sub_1C12665A0();
      v53 = sub_1C0FA0E80(v51, v52, &v112);

      *(v49 + 14) = v53;
      *(v49 + 22) = 2080;
      v54 = sub_1C12665A0();
      v56 = sub_1C0FA0E80(v54, v55, &v112);

      *(v49 + 24) = v56;
      _os_log_impl(&dword_1C0F96000, v48, v47, "PhotosAsyncImage is increase size ignore image with smaller size %s receivedSize %s imageSize %s", v49, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68F1630](v50, -1, -1);
      MEMORY[0x1C68F1630](v49, -1, -1);
    }
  }

  else
  {
    v57 = *(v19 + 64);
    v58 = sub_1C1262900();
    sub_1C12628E0();
    v59 = &v27[*(v21 + 72)];
    *v59 = v35;
    *(v59 + 1) = v34;
    v59[16] = 0;
    v104 = v58;
    sub_1C12628F0();
    sub_1C1266560();
    v117.origin.x = v60;
    v117.origin.y = v61;
    v117.size.width = v62;
    v117.size.height = v63;
    v116.origin.x = v36;
    v116.origin.y = v37;
    v116.size.width = v38;
    v116.size.height = v39;
    v64 = CGRectEqualToRect(v116, v117);
    if (qword_1EDE81FC8 != -1)
    {
      swift_once();
    }

    v65 = sub_1C1262720();
    v103 = __swift_project_value_buffer(v65, qword_1EDE9B6D8);
    v66 = v102;
    v67 = v109;
    if (!v64)
    {
      v68 = sub_1C12626F0();
      v69 = sub_1C1266410();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v99 = v57;
        v71 = v70;
        v72 = swift_slowAlloc();
        v112 = v72;
        *v71 = 136315138;
        v67 = v109;
        *(v71 + 4) = sub_1C0FA0E80(0xD00000000000008ALL, 0x80000001C126C200, &v112);
        _os_log_impl(&dword_1C0F96000, v68, v69, "%s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v72);
        v73 = v72;
        v40 = v110;
        MEMORY[0x1C68F1630](v73, -1, -1);
        MEMORY[0x1C68F1630](v71, -1, -1);
      }
    }

    if (v66 == 2 && ((v108[7])(a7) & 1) == 0)
    {
      v74 = v107;
      (*(v67 + 16))(v107, v40, v41);
      v75 = sub_1C12626F0();
      LODWORD(v109) = sub_1C12663F0();
      if (os_log_type_enabled(v75, v109))
      {
        v76 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v112 = v108;
        *v76 = 136315138;
        (*(v106 + 16))(v105, v74, a7);
        v77 = sub_1C1265ED0();
        v79 = v78;
        (*(v67 + 8))(v74, v41);
        v80 = sub_1C0FA0E80(v77, v79, &v112);

        *(v76 + 4) = v80;
        _os_log_impl(&dword_1C0F96000, v75, v109, "PhotosAsyncImage provider %s did not indicate whether the image is degraded. This may lead to unnecessary image reloading.", v76, 0xCu);
        v81 = v108;
        __swift_destroy_boxed_opaque_existential_0Tm(v108);
        MEMORY[0x1C68F1630](v81, -1, -1);
        v82 = v76;
        v66 = v102;
        MEMORY[0x1C68F1630](v82, -1, -1);
      }

      else
      {

        (*(v67 + 8))(v74, v41);
      }
    }

    v92 = v101;
    if ([v92 CGImage])
    {
      [v92 scale];
      UIImageOrientation.photosImageOrientation.getter([v92 imageOrientation]);
      v93 = v92;
      sub_1C10E4748(v93);
      v94 = v100;
      if (v95)
      {
        v96 = sub_1C1265370();
      }

      else
      {
        v96 = sub_1C12652E0();
      }

      v97 = v96;
    }

    else
    {
      v97 = sub_1C12652D0();
      v94 = v100;
    }

    if (!v94)
    {
      v94 = sub_1C1265CE0();
    }

    sub_1C12628E0();
    v98 = &v27[*(v21 + 64)];
    sub_1C111ADFC(*v98, *(v98 + 1), *(v98 + 2));
    *v98 = v97;
    *(v98 + 1) = v66;
    *(v98 + 2) = v94;
    sub_1C12628F0();
  }
}

void sub_1C1118954(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v89 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v92 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v82 - v10;
  v12 = *(v11 + 40);
  v93 = *(v11 + 16);
  v90 = *(v11 + 24);
  v94 = v90;
  v95 = v12;
  v13 = type metadata accessor for PhotosAsyncImage.LoadingState(0, &v93);
  v91 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v82 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v82 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v82 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v82 - v22;
  v24 = *(a1 + 52);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = *(AssociatedConformanceWitness + 16);
  v27 = swift_checkMetadataState();
  v86 = v24;
  v28 = a1;
  v85 = v26(v27, AssociatedConformanceWitness);
  v30 = v29;
  v31 = v4;
  sub_1C1115694(a1);
  v32 = v13;
  if (v23[*(v13 + 72) + 16])
  {
    *&v90 = *(v91 + 8);
    v33 = (v90)(v23, v13);
    v34.n128_u64[0] = 0;
    v35.n128_u64[0] = 0;
  }

  else
  {
    *&v90 = *(v91 + 8);
    (v90)(v23, v13);
    v33 = sub_1C12665D0();
    v34.n128_u64[0] = v36;
    v35.n128_u64[0] = v37;
  }

  v38 = MEMORY[0x1C68F0CB0](v33, a2, a3, v34, v35);
  v39 = v92;
  if (v38)
  {
    v40 = v87;
    sub_1C1115694(a1);
    v41 = sub_1C1117928(v13);
    v42 = v4;
    v43 = v90;
    (v90)(v40, v13);
    v44 = v88;
    if ((v41 & 1) == 0 || ((v45 = v83, sub_1C1115694(v28), (v45[*(v13 + 60) + 16] & 1) == 0) ? (v43(v45, v13), v46 = sub_1C12665D0(), v47.n128_u64[0] = v64, v48.n128_u64[0] = v65) : (v46 = (v43)(v45, v13), v47.n128_u64[0] = 0, v48.n128_u64[0] = 0), MEMORY[0x1C68F0CB0](v46, a2, a3, v47, v48)))
    {

      sub_1C1116480(v31 + v86, 1, v28, a2, a3);
      return;
    }

    v66 = v31;
    v67 = v13;
    v68 = v30;
    v69 = sub_1C1266400();
    v70 = *(v42 + *(v28 + 68));
    v71 = v89;
    (*(v89 + 16))(v44, v66, v28);
    if (!os_log_type_enabled(v70, v69))
    {

      (*(v71 + 8))(v44, v28);
      return;
    }

    v52 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v93 = v72;
    *v52 = 136315650;
    v73 = sub_1C0FA0E80(v85, v68, &v93);

    *(v52 + 4) = v73;
    *(v52 + 12) = 2080;
    v74 = v82;
    sub_1C1115694(v28);
    if ((v74[*(v67 + 60) + 16] & 1) == 0)
    {
      (v90)(v74, v67);
      v75 = sub_1C12665A0();
      v77 = v76;
      (*(v89 + 8))(v44, v28);
      v78 = sub_1C0FA0E80(v75, v77, &v93);

      *(v52 + 14) = v78;
      *(v52 + 22) = 2080;
      v79 = sub_1C12665A0();
      v81 = sub_1C0FA0E80(v79, v80, &v93);

      *(v52 + 24) = v81;
      _os_log_impl(&dword_1C0F96000, v70, v69, "PhotosAsyncImage target size change ignored for %s because already requested size %s + 10%% larger than newtargetPixelSize %s", v52, 0x20u);
      swift_arrayDestroy();
      v63 = v72;
      goto LABEL_11;
    }
  }

  else
  {
    v49 = sub_1C1266400();
    v50 = *(v4 + *(v28 + 68));
    v51 = v89;
    (*(v89 + 16))(v39, v4, v28);
    if (!os_log_type_enabled(v50, v49))
    {

      (*(v51 + 8))(v39, v28);
      return;
    }

    v52 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v93 = v91;
    *v52 = 136315650;
    v53 = sub_1C0FA0E80(v85, v30, &v93);

    *(v52 + 4) = v53;
    *(v52 + 12) = 2080;
    v54 = v84;
    sub_1C1115694(v28);
    if ((v54[*(v32 + 72) + 16] & 1) == 0)
    {
      (v90)(v54, v32);
      v55 = sub_1C12665A0();
      v57 = v56;
      (*(v51 + 8))(v39, v28);
      v58 = sub_1C0FA0E80(v55, v57, &v93);

      *(v52 + 14) = v58;
      *(v52 + 22) = 2080;
      v59 = sub_1C12665A0();
      v61 = sub_1C0FA0E80(v59, v60, &v93);

      *(v52 + 24) = v61;
      _os_log_impl(&dword_1C0F96000, v50, v49, "PhotosAsyncImage target size change ignored for %s because receivedSize %s + 10 %% already larger than %s", v52, 0x20u);
      v62 = v91;
      swift_arrayDestroy();
      v63 = v62;
LABEL_11:
      MEMORY[0x1C68F1630](v63, -1, -1);
      MEMORY[0x1C68F1630](v52, -1, -1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t PhotosAsyncImage.body.getter@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v214 = a2;
  v218 = a1;
  v2 = *(a1 + 3);
  v225 = *(a1 + 2);
  v3 = *(a1 + 5);
  v227 = *(a1 + 4);
  __dst[0] = v225;
  __dst[1] = v2;
  __dst[2] = v227;
  __dst[3] = v3;
  v4 = type metadata accessor for PhotosAsyncImage.Inner(255, __dst);
  v5 = sub_1C1263190();
  type metadata accessor for CGSize(255);
  v7 = v6;
  OUTLINED_FUNCTION_3_34();
  v196 = v4;
  WitnessTable = swift_getWitnessTable();
  __dst[9] = WitnessTable;
  __dst[10] = MEMORY[0x1E69805D0];
  OUTLINED_FUNCTION_4_0();
  v8 = swift_getWitnessTable();
  v9 = sub_1C111A1EC();
  __dst[0] = v5;
  __dst[1] = v7;
  __dst[2] = v8;
  __dst[3] = v9;
  OUTLINED_FUNCTION_4_38();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v206 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_34();
  v220 = v13;
  v14 = v228;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v199 = v7;
  v200 = v5;
  __dst[0] = v5;
  __dst[1] = v7;
  v194 = v8;
  __dst[2] = v8;
  __dst[3] = v9;
  v198 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = *(swift_getAssociatedConformanceWitness() + 8);
  v210 = OpaqueTypeMetadata2;
  __dst[0] = OpaqueTypeMetadata2;
  __dst[1] = AssociatedTypeWitness;
  v197 = AssociatedTypeWitness;
  v203 = OpaqueTypeConformance2;
  __dst[2] = OpaqueTypeConformance2;
  __dst[3] = v17;
  v201 = v17;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v202 = v18;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_34();
  v219 = v20;
  v204 = v21;
  v22 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v209 = v23;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_34();
  v208 = v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97A70, &unk_1C12AF120);
  v212 = v22;
  v213 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v211 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v205 = &v178[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v207 = &v178[-v30];
  swift_getAssociatedTypeWitness();
  v192 = sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v190 = v31;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_34();
  v191 = v33;
  __dst[0] = v225;
  __dst[1] = v14;
  v34 = v218;
  __dst[2] = v227;
  __dst[3] = v3;
  v224 = v3;
  v222 = type metadata accessor for PhotosAsyncImage.LoadingState(0, __dst);
  OUTLINED_FUNCTION_0();
  v226 = v35;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_34();
  v221 = v37;
  v38 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  v215 = (v43 - v42);
  OUTLINED_FUNCTION_1();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  v193 = &v178[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v48);
  v217 = &v178[-v49];
  MEMORY[0x1EEE9AC00](v50);
  v216 = &v178[-v51];
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v178[-v53];
  v223 = v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v178[-v57];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  OUTLINED_FUNCTION_15(v59);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v178[-v61];
  v63 = swift_getWitnessTable();
  View.photosTrace.getter();
  v64 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v62, 1, v64) == 1)
  {
    sub_1C111ACFC(v62);
  }

  else
  {
    v186 = v64;
    v187 = v40;
    v188 = v38;
    v65 = v45;
    v66 = *(v45 + 16);
    OUTLINED_FUNCTION_9_24();
    v66();
    OUTLINED_FUNCTION_9_24();
    v66();
    OUTLINED_FUNCTION_9_24();
    v66();
    OUTLINED_FUNCTION_9_24();
    v66();
    v67 = v215;
    sub_1C1262640();
    v68 = sub_1C1262670();
    v69 = sub_1C1266520();
    v185 = v68;
    v70 = sub_1C1266730();
    v189 = v65;
    if (v70)
    {
      v71 = swift_slowAlloc();
      v179 = v69;
      v72 = v71;
      v180 = swift_slowAlloc();
      __src[0] = v180;
      *v72 = 136446978;
      View.photosChangedProperties.getter(v34, v63);
      v74 = v73;
      v181 = *(v65 + 8);
      v181(v58, v34);
      v183 = v65 + 8;
      v75 = OUTLINED_FUNCTION_20_17();
      v77 = sub_1C0FA0E80(v75, v74, v76);

      v184 = v72;
      *(v72 + 4) = v77;
      *(v72 + 12) = 2080;
      v78 = v221;
      sub_1C1115694(v34);
      v190[2](v191, v78, v192);
      v79 = v54;
      v80 = *(v226 + 8);
      v182 = v226 + 8;
      v190 = v80;
      v81 = v222;
      (v80)(v78, v222);
      sub_1C1265ED0();
      v83 = v82;
      v84 = v79;
      v85 = v181;
      v181(v84, v34);
      v86 = OUTLINED_FUNCTION_20_17();
      v88 = sub_1C0FA0E80(v86, v83, v87);

      v89 = v184;
      *(v184 + 14) = v88;
      *(v89 + 11) = 2082;
      v90 = v216;
      sub_1C1115694(v34);
      v91 = v81;
      v92 = v78 + *(v81 + 15);
      v93 = *v92;
      v94 = *(v92 + 8);
      LOBYTE(v83) = *(v92 + 16);
      v95 = OUTLINED_FUNCTION_18_21();
      v96(v95);
      __dst[0] = v93;
      __dst[1] = v94;
      LOBYTE(__dst[2]) = v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932D0, &qword_1C12A2EA0);
      sub_1C1265ED0();
      v98 = v97;
      v85(v90, v34);
      v99 = OUTLINED_FUNCTION_20_17();
      v101 = sub_1C0FA0E80(v99, v98, v100);

      v102 = v184;
      v184[3] = v101;
      *(v102 + 16) = 2082;
      v103 = v217;
      sub_1C1115694(v34);
      v104 = v78 + *(v91 + 18);
      v105 = *v104;
      v106 = *(v104 + 8);
      LOBYTE(v85) = *(v104 + 16);
      v107 = OUTLINED_FUNCTION_18_21();
      v108(v107);
      __dst[0] = v105;
      __dst[1] = v106;
      LOBYTE(__dst[2]) = v85;
      sub_1C1265ED0();
      v110 = v109;
      v181(v103, v34);
      v111 = OUTLINED_FUNCTION_20_17();
      v113 = sub_1C0FA0E80(v111, v110, v112);

      v114 = v184;
      *(v184 + 34) = v113;
      v115 = v215;
      v116 = sub_1C1262630();
      v117 = v185;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v185, v179, v116, "PhotosAsyncImage", "PhotosAsyncImage %{public}s requestID:%s  targetPixelSize:%{public}s receivedSize:%{public}s", v114, 0x2Au);
      v118 = v180;
      swift_arrayDestroy();
      MEMORY[0x1C68F1630](v118, -1, -1);
      MEMORY[0x1C68F1630](v114, -1, -1);

      (*(v187 + 8))(v115, v188);
    }

    else
    {

      (*(v187 + 8))(v67, v188);
      v119 = *(v65 + 8);
      v119(v217, v34);
      v119(v216, v34);
      v119(v54, v34);
      v119(v58, v34);
    }

    OUTLINED_FUNCTION_15_1();
    (*(v120 + 8))(v62);
    v45 = v189;
  }

  v121 = v221;
  v122 = v229;
  sub_1C1115694(v34);
  v123 = v222;
  v124 = (v121 + *(v222 + 16));
  v125 = *v124;
  v126 = v124[1];
  v127 = v124[2];
  v128 = sub_1C111AD64(*v124, v126, v127);
  v129 = *(v226 + 8);
  v226 += 8;
  v192 = v129;
  (v129)(v121, v123, v128);
  v130 = (v122 + v34[15]);
  v131 = *v130;
  v132 = v130[1];
  __dst[0] = v125;
  __dst[1] = v126;
  __dst[2] = v127;
  __dst[3] = v131;
  __dst[4] = v132;
  v216 = *(v45 + 16);
  v217 = (v45 + 16);
  v133 = v193;
  (v216)(v193, v122, v34);
  v134 = (*(v45 + 80) + 48) & ~*(v45 + 80);
  v191 = *(v45 + 80);
  v135 = swift_allocObject();
  v136 = v225;
  v138 = v227;
  v137 = v228;
  v135[2] = v225;
  v135[3] = v137;
  v139 = v224;
  v135[4] = v138;
  v135[5] = v139;
  v215 = *(v45 + 32);
  OUTLINED_FUNCTION_9_24();
  v140();

  swift_checkMetadataState();
  sub_1C1264FF0();

  sub_1C111ADFC(__dst[0], __dst[1], __dst[2]);

  memcpy(v236, __src, sizeof(v236));
  v234 = *(v229 + v34[14]);
  (v216)(v133);
  v141 = swift_allocObject();
  v142 = v136;
  v143 = v227;
  v144 = v228;
  v141[2] = v136;
  v141[3] = v144;
  v145 = v224;
  v141[4] = v143;
  v141[5] = v145;
  OUTLINED_FUNCTION_9_24();
  v215();
  v146 = swift_checkMetadataState();
  swift_checkMetadataState();
  sub_1C1265000();

  memcpy(__dst, v236, 0x48uLL);
  OUTLINED_FUNCTION_15_1();
  (*(v147 + 8))(__dst, v146);
  v200 = v34[13];
  v148 = v133;
  v149 = v133;
  v150 = v229;
  v151 = v34;
  (v216)(v149, v229, v34);
  v152 = swift_allocObject();
  v152[2] = v142;
  v152[3] = v144;
  v153 = v227;
  v154 = v224;
  v152[4] = v227;
  v152[5] = v154;
  (v215)(v152 + v134, v148, v151);
  v223 = swift_checkMetadataState();
  v155 = v201;
  v156 = v150;
  v157 = v220;
  v158 = v210;
  v159 = v203;
  sub_1C1265000();

  (*(v206 + 8))(v157, v158);
  v160 = v142;
  v161 = v228;
  sub_1C111A33C(v156, v160, v228, v153, v154);
  __src[0] = v158;
  __src[1] = v223;
  __src[2] = v159;
  __src[3] = v155;
  v162 = swift_getOpaqueTypeConformance2();
  v163 = v208;
  v164 = v204;
  v165 = v219;
  sub_1C1264A60();

  (*(v202 + 8))(v165, v164);
  v166 = v221;
  sub_1C1115694(v218);
  v167 = v222;
  sub_1C111A4D8(v222, v236);
  v192(v166, v167);
  v234 = *v236;
  v235 = v236[16];
  __src[0] = v225;
  __src[1] = v161;
  __src[2] = v153;
  __src[3] = v154;
  v168 = type metadata accessor for PhotosAsyncImage.LoadingMedia(0, __src);
  v232 = v162;
  v233 = MEMORY[0x1E69805D0];
  v169 = v212;
  v170 = swift_getWitnessTable();
  v171 = swift_getWitnessTable();
  v172 = v205;
  View.displaying<A>(media:)(&v234, v169, v168, v170, v171);
  (*(v209 + 8))(v163, v169);
  v173 = sub_1C111AFBC();
  v230 = v170;
  v231 = v173;
  v174 = v213;
  swift_getWitnessTable();
  v175 = v207;
  sub_1C0FDBA4C();
  v176 = *(v211 + 8);
  v176(v172, v174);
  sub_1C0FDBA4C();
  return (v176)(v175, v174);
}

unint64_t sub_1C111A1EC()
{
  result = qword_1EDE7B618;
  if (!qword_1EDE7B618)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B618);
  }

  return result;
}

void sub_1C111A244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v6 = type metadata accessor for PhotosAsyncImage(0, v7);
  sub_1C1116480(a1 + *(v6 + 52), 0, v6, *(a1 + *(v6 + 56)), *(a1 + *(v6 + 56) + 8));
}

void sub_1C111A29C(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a2;
  v8 = a2[1];
  v10[0] = a4;
  v10[1] = a5;
  v10[2] = a6;
  v10[3] = a7;
  v9 = type metadata accessor for PhotosAsyncImage(0, v10);
  sub_1C1118954(v9, v7, v8);
}

void sub_1C111A2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v8 = type metadata accessor for PhotosAsyncImage(0, v9);
  sub_1C111893C(a2, v8);
}

uint64_t (*sub_1C111A33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = type metadata accessor for PhotosAsyncImage(0, v18);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return sub_1C111BF24;
}

uint64_t sub_1C111A498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v5 = type metadata accessor for PhotosAsyncImage(0, v7);
  return sub_1C11179B4(v5);
}

uint64_t sub_1C111A4D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  result = sub_1C111AAC4(v6, a1[2], a1[3], a1[4], a1[5]);
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  return result;
}

uint64_t sub_1C111A5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v5;
  v45 = *(v6 + 32);
  v7 = sub_1C1263900();
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v36 - v10;
  v42 = sub_1C1262650();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v50 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v36 - v13;
  v15 = *v2;
  v16 = v2[1];
  v18 = v2[2];
  v17 = v2[3];
  v19 = v2[4];
  v58 = *v2;
  v59 = v16;
  v60 = v18;
  v61 = v17;
  v51 = v17;
  v62 = v19;
  WitnessTable = swift_getWitnessTable();
  View.photosTrace.getter();
  v21 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v14, 1, v21) == 1)
  {
    sub_1C111ACFC(v14);
  }

  else
  {
    sub_1C111AD64(v15, v16, v18);

    sub_1C1262640();
    v22 = sub_1C1262670();
    v39 = sub_1C1266520();
    sub_1C111ADFC(v15, v16, v18);

    v40 = v22;
    if (sub_1C1266730())
    {
      v23 = swift_slowAlloc();
      v37 = v23;
      v38 = swift_slowAlloc();
      v56 = v19;
      v57 = v38;
      *v23 = 136446210;
      v52 = v15;
      v53 = v16;
      v54 = v18;
      v55 = v51;
      v24 = View.photosChangedProperties.getter(a1, WitnessTable);
      v26 = sub_1C0FA0E80(v24, v25, &v57);

      v27 = v37;
      *(v37 + 1) = v26;
      v28 = sub_1C1262630();
      v29 = v40;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v40, v39, v28, "PhotosAsyncImage.Inner", "PhotosAsyncImage.Inner %{public}s", v27, 0xCu);
      v30 = v38;
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x1C68F1630](v30, -1, -1);
      MEMORY[0x1C68F1630](v27, -1, -1);
    }

    else
    {
    }

    (*(v41 + 8))(v50, v42);
    (*(*(v21 - 8) + 8))(v14, v21);
  }

  v58 = v15;
  v59 = v16;
  v60 = v18;
  v31 = sub_1C111AD64(v15, v16, v18);
  v51(&v58, v31);
  sub_1C111ADFC(v58, v59, v60);
  v32 = v43;
  sub_1C1263910();
  swift_getWitnessTable();
  v33 = v44;
  sub_1C0FDBA4C();
  v34 = *(v48 + 8);
  v34(v32, v7);
  sub_1C0FDBA4C();
  return (v34)(v33, v7);
}

uint64_t sub_1C111AAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v6 = type metadata accessor for PhotosAsyncImage.LoadingState(0, v9);
  if (*(a1 + *(v6 + 64)) >> 62)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + *(v6 + 72));
  }

  (*(*(v6 - 8) + 8))(a1);
  return v7;
}

BOOL sub_1C111AB74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && *&a1 == *&a4 && *&a2 == *&a5;
  }

  return (a6 & 1) != 0;
}

uint64_t PhotosAsyncImageError.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C111AC80()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EDE9B6D8);
  __swift_project_value_buffer(v0, qword_1EDE9B6D8);
  return sub_1C12626E0();
}

uint64_t sub_1C111ACFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1C111AD64(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62 == 1)
  {
    v4 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  }

  else if (!(a1 >> 62))
  {
  }

  return result;
}

double sub_1C111ADFC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }

  return result;
}

void sub_1C111AE7C()
{
  v0 = OUTLINED_FUNCTION_26_2();
  v2 = type metadata accessor for PhotosAsyncImage(v0, v1);
  OUTLINED_FUNCTION_15(v2);
  v3 = OUTLINED_FUNCTION_7_26();

  sub_1C111A29C(v3, v4, v5, v6, v7, v8, v9);
}

void sub_1C111AF10()
{
  v0 = OUTLINED_FUNCTION_26_2();
  v2 = type metadata accessor for PhotosAsyncImage(v0, v1);
  OUTLINED_FUNCTION_15(v2);
  v3 = OUTLINED_FUNCTION_7_26();

  sub_1C111A2F0(v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1C111AFBC()
{
  result = qword_1EDE7B9F0;
  if (!qword_1EDE7B9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97A70, &unk_1C12AF120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B9F0);
  }

  return result;
}

unint64_t sub_1C111B03C()
{
  result = qword_1EBE942A8[0];
  if (!qword_1EBE942A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE942A8);
  }

  return result;
}

unint64_t sub_1C111B090(void *a1)
{
  v2 = swift_checkMetadataState();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v17 = 0;
    v23 = v2;
    v5 = a1[5];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v7 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    v18 = 0;
    v24 = AssociatedTypeWitness;
    type metadata accessor for CGSize(319);
    if (v8 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    v19 = 0;
    v25 = AssociatedTypeWitness;
    AssociatedTypeWitness = sub_1C1007F88();
    if (v9 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      v20 = 0;
      v26 = AssociatedTypeWitness;
      v10 = a1[4];
      v16[0] = a1[2];
      v16[1] = v3;
      v16[2] = v10;
      v16[3] = v5;
      type metadata accessor for PhotosAsyncImage.LoadingState(255, v16);
      v11 = sub_1C1262900();
      v3 = v11;
      if (v12 <= 0x3F)
      {
        v21 = 0;
        v27 = v11;
        v13 = sub_1C1115700();
        v3 = v13;
        if (v14 <= 0x3F)
        {
          v22 = 0;
          v28 = v13;
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v3;
}

unint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore0A15AsyncImagePhaseO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1C111B218(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C111B26C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1C111B2D4(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
    result[1] = 0;
    result[2] = 0;
  }

  *result = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosAsyncImageError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C111B440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C111B47C(uint64_t result, int a2, int a3)
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

void sub_1C111B4A8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_1C1266790();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1C1266790();
    if (v2 <= 0x3F)
    {
      sub_1C1266790();
      if (v3 <= 0x3F)
      {
        sub_1C111BC90(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C111B5CC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v5 - 8);
  v16 = *(v15 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 > v14)
  {
    v14 = v17;
  }

  if (v14 <= 0xFE)
  {
    v14 = 254;
  }

  if (v8)
  {
    v18 = *(v7 + 64);
  }

  else
  {
    v18 = *(v7 + 64) + 1;
  }

  if (v12)
  {
    v19 = *(*(v10 - 8) + 64);
  }

  else
  {
    v19 = *(*(v10 - 8) + 64) + 1;
  }

  result = *(v11 + 80);
  v21 = *(v15 + 80);
  v22 = *(*(v5 - 8) + 64);
  if (!v16)
  {
    ++v22;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v18 + result;
  if (v14 < a2)
  {
    v24 = ((v22 + ((v19 + v21 + (v23 & ~result)) & ~v21) + 63) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v24 <= 3)
    {
      v25 = ((a2 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v25 = 2;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    switch(v27)
    {
      case 1:
        v28 = a1[v24];
        if (!a1[v24])
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      case 2:
        v28 = *&a1[v24];
        if (!*&a1[v24])
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      case 3:
        __break(1u);
        return result;
      case 4:
        v28 = *&a1[v24];
        if (!v28)
        {
          goto LABEL_45;
        }

LABEL_41:
        v29 = (v28 - 1) << (8 * v24);
        if (v24 <= 3)
        {
          v30 = *a1;
        }

        else
        {
          v29 = 0;
          v30 = *a1;
        }

        v33 = v14 + (v30 | v29);
        break;
      default:
        goto LABEL_45;
    }

    return (v33 + 1);
  }

LABEL_45:
  if (v9 == v14)
  {
    if (v8 >= 2)
    {
      v31 = a1;
      v12 = v8;
      v10 = AssociatedTypeWitness;
      goto LABEL_54;
    }

    return 0;
  }

  v31 = (&a1[v23] & ~result);
  if (v13 == v14)
  {
    if (v12 < 2)
    {
      return 0;
    }
  }

  else
  {
    v31 = (&v31[v19 + v21] & ~v21);
    if (v17 != v14)
    {
      v34 = *((&v31[v22 + 7] & 0xFFFFFFFFFFFFFFF8) + 48);
      if (v34 >= 2)
      {
        v33 = (v34 + 2147483646) & 0x7FFFFFFF;
        return (v33 + 1);
      }

      return 0;
    }

    if (v16 < 2)
    {
      return 0;
    }

    v12 = v16;
    v10 = v5;
  }

LABEL_54:
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, v12, v10);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C111B904(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_getAssociatedTypeWitness();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v7 - 8);
  v18 = *(v17 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v19 > v16)
  {
    v16 = v19;
  }

  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  if (v9)
  {
    v20 = *(v8 + 64);
  }

  else
  {
    v20 = *(v8 + 64) + 1;
  }

  v21 = *(*(v11 - 8) + 64);
  if (!v14)
  {
    ++v21;
  }

  v22 = *(v13 + 80);
  v23 = v20 + v22;
  v24 = *(v17 + 80);
  v25 = *(*(v7 - 8) + 64);
  if (!v18)
  {
    ++v25;
  }

  v26 = ((v25 + ((v21 + v24 + ((v20 + v22) & ~v22)) & ~v24) + 63) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v16 < a3)
  {
    if (v26 <= 3)
    {
      v27 = ((a3 - v16 + 255) >> 8) + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v12 = v28;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v16 >= a2)
  {
    v31 = ~v22;
    switch(v12)
    {
      case 1:
        *(a1 + v26) = 0;
        if (a2)
        {
          goto LABEL_49;
        }

        return;
      case 2:
        *(a1 + v26) = 0;
        if (a2)
        {
          goto LABEL_49;
        }

        return;
      case 3:
LABEL_64:
        __break(1u);
        return;
      case 4:
        *(a1 + v26) = 0;
        goto LABEL_48;
      default:
LABEL_48:
        if (!a2)
        {
          return;
        }

LABEL_49:
        if (v10 == v16)
        {
          v32 = a2 + 1;
          v33 = a1;
          v14 = v9;
          v11 = AssociatedTypeWitness;
        }

        else
        {
          v33 = ((a1 + v23) & v31);
          if (v15 == v16)
          {
            v32 = a2 + 1;
          }

          else
          {
            v33 = ((v33 + v21 + v24) & ~v24);
            if (v19 != v16)
            {
              *(((v33 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 48) = a2 + 1;
              return;
            }

            v32 = a2 + 1;
            v14 = v18;
            v11 = v7;
          }
        }

        __swift_storeEnumTagSinglePayload(v33, v32, v14, v11);
        break;
    }
  }

  else
  {
    v29 = ~v16 + a2;
    bzero(a1, ((v25 + ((v21 + v24 + ((v20 + v22) & ~v22)) & ~v24) + 63) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v26 <= 3)
    {
      v30 = (v29 >> 8) + 1;
    }

    else
    {
      v30 = 1;
    }

    if (v26 > 3)
    {
      *a1 = v29;
    }

    else
    {
      *a1 = v29;
    }

    switch(v12)
    {
      case 1:
        *(a1 + v26) = v30;
        break;
      case 2:
        *(a1 + v26) = v30;
        break;
      case 3:
        goto LABEL_64;
      case 4:
        *(a1 + v26) = v30;
        break;
      default:
        return;
    }
  }
}

void sub_1C111BC90(uint64_t a1)
{
  if (!qword_1EDE76990)
  {
    type metadata accessor for CGSize(255);
    v1 = sub_1C1266790();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE76990);
    }
  }
}

uint64_t sub_1C111BCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C111BD24(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t objectdestroy_5Tm(uint64_t a1, uint64_t a2)
{
  v4 = v3[3];
  v7 = v3[4];
  v6 = v3[5];
  v16 = v3[2];
  v5 = v16;
  v17 = v4;
  v18 = v7;
  v19 = v6;
  type metadata accessor for PhotosAsyncImage(0, &v16);
  OUTLINED_FUNCTION_17_10();
  v9 = v3 + ((*(v8 + 80) + 48) & ~*(v8 + 80));
  OUTLINED_FUNCTION_15_1();
  (*(v10 + 8))(v9, v4);
  v11 = v2[15];
  OUTLINED_FUNCTION_11_22();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_2();
  (*(v12 + 8))(&v9[v11]);

  v13 = &v9[v2[18]];
  v16 = v5;
  v17 = v4;
  v18 = v7;
  v19 = v6;
  type metadata accessor for PhotosAsyncImage.LoadingState(255, &v16);
  OUTLINED_FUNCTION_36_0();
  sub_1C1265AC0();
  OUTLINED_FUNCTION_4_2();
  (*(v14 + 8))(v13);
  OUTLINED_FUNCTION_36_0();
  sub_1C1265AD0();

  return swift_deallocObject();
}

uint64_t sub_1C111BF3C(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v11[0] = v1[2];
  v2 = v11[0];
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v6 = type metadata accessor for PhotosAsyncImage(0, v11);
  OUTLINED_FUNCTION_15(v6);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return a1(v8, v2, v3, v4, v5);
}

void sub_1C111BFE8(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v10[0] = *(v1 + 16);
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for PhotosAsyncImage(0, v10) - 8);
  v8 = (*(v7 + 80) + 49) & ~*(v7 + 80);
  v9 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1C1117F3C(a1, *(v1 + 48), v1 + v8, *v9, *(v9 + 8), v3, v4, v5, v6);
}

uint64_t PhotosSocialGroupCell.init(_:isPlaceholderContent:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  __src[0] = a4;
  __src[1] = a5;
  __src[2] = a6;
  __src[3] = a7;
  __src[4] = a9;
  __src[5] = a10;
  v14 = type metadata accessor for PhotosSocialGroupCell(0, __src);
  v15 = *(v14 + 76);
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(a8 + v15, __src, 0xD1uLL);
  *a8 = a1;
  v16 = swift_unknownObjectRetain();
  a3(v16);
  result = swift_unknownObjectRelease();
  *(a8 + *(v14 + 72)) = a2;
  return result;
}

uint64_t sub_1C111C1AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 76);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v17, &qword_1EBE91C80, &qword_1C12A75B0);
    return (*(v6 + 8))(v8, v5);
  }
}

BOOL sub_1C111C3C8(uint64_t a1)
{
  v1 = sub_1C111C410(a1);
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  return v4 == 0;
}

uint64_t sub_1C111C410(uint64_t a1)
{
  result = (*(*(*(a1 + 40) + 8) + 16))(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  return result;
}

void *sub_1C111C470@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C111C1AC(a1, v4);
  result = memcpy(a2, v4, 0xD0uLL);
  *a2 = 0x4036000000000000;
  return result;
}

uint64_t PhotosSocialGroupCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v49 = *(a1 + 24);
  *&v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91CC8, &qword_1C12AC400);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE944B0, &unk_1C12B8660);
  swift_getTupleTypeMetadata3();
  v2 = sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v3 = OUTLINED_FUNCTION_6_25();
  OUTLINED_FUNCTION_0_0();
  v71 = v3;
  v72 = sub_1C0FDB6D4(v4, &unk_1EBE92EC0, &qword_1C12A8E00, v5);
  v6 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v69 = WitnessTable;
  v70 = sub_1C0FDB6D4(v8, &qword_1EBE91C40, &unk_1C12A7010, v9);
  v48 = v6;
  v10 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v67 = v10;
  v68 = sub_1C0FDB6D4(v11, &unk_1EBE92ED0, &unk_1C12A8E80, v12);
  v42 = v2;
  swift_getWitnessTable();
  v13 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v45 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  OUTLINED_FUNCTION_1_1();
  v43 = swift_getWitnessTable();
  v19 = type metadata accessor for PhotosDetailsPresentationSourceView(0, v13, v43, v18);
  OUTLINED_FUNCTION_0();
  v46 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  v24 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v47 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v44 = &v42 - v30;
  v31 = v50;
  v32 = v52;
  sub_1C111C470(v50, &v73);
  v33 = v31;
  v34 = *(v31 + 16);
  v53 = v34;
  v54 = v49;
  v35 = *(v33 + 32);
  v50 = *(v33 + 48);
  v55 = v35;
  v56 = v50;
  v57 = v32;
  v58 = &v73;
  sub_1C10A7F5C(v42);
  sub_1C1265590();
  v66 = 2;
  v65 = 2;
  v76[0] = v73;
  v76[1] = v74;
  v77 = v75;
  v62 = v73;
  v63 = v74;
  v64 = v75;
  sub_1C11128F4(v76, &v61);
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v66, 0, 0, v13, v43, v23);

  (*(v45 + 8))(v17, v13);
  v36 = *v52;
  v64 = v50;
  *(&v63 + 1) = v34;
  *&v62 = v36;
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_4_3();
  v37 = swift_getWitnessTable();
  View.selectionStyle(for:)(&v62, v19, v37);
  sub_1C100C7D0(&v73);
  (*(v46 + 8))(v23, v19);
  __swift_destroy_boxed_opaque_existential_0Tm(&v62);
  v38 = sub_1C100D614();
  v59 = v37;
  v60 = v38;
  swift_getWitnessTable();
  v39 = v44;
  sub_1C0FDBA4C();
  v40 = *(v47 + 8);
  v40(v28, v24);
  sub_1C0FDBA4C();
  return (v40)(v39, v24);
}

uint64_t sub_1C111CA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v44 = a7;
  *&v45 = a8;
  v42 = a1;
  v43 = a6;
  v40 = a3;
  v41 = a5;
  v50 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91CC8, &qword_1C12AC400);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE944B0, &unk_1C12B8660);
  swift_getTupleTypeMetadata3();
  v11 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1C12655C0();
  v47 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  v16 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  v46 = v16;
  v17 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v48 = v17;
  v18 = sub_1C1263190();
  v49 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - v22;
  v51 = v40;
  v52 = a4;
  v53 = v41;
  v54 = v43;
  v55 = v44;
  v56 = v45;
  v57 = v42;
  v58 = a2;
  sub_1C1009330(v11, WitnessTable, v24, v25, v26, v27);
  sub_1C12655B0();
  memcpy(v66, (a2 + 40), sizeof(v66));
  sub_1C100D690(a2, v67);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDE82B08;
  v29 = qword_1EDE82B10;
  v45 = xmmword_1EDE82B18;
  v30 = qword_1EDE82B28;

  *&v65[0] = v28;
  *(&v65[0] + 1) = v29;
  v65[1] = v45;
  *&v65[2] = v30;
  memcpy(&v65[2] + 8, v66, 0xA8uLL);
  v31 = swift_getWitnessTable();
  View.cellStyle(for:)(v65, v31, v20);
  memcpy(v67, v65, 0xD0uLL);
  sub_1C100C7D0(v67);
  (*(v47 + 8))(v15, v13);
  v32 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v63 = v31;
  v64 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v61 = v33;
  v62 = v34;
  v35 = swift_getWitnessTable();
  v36 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  v59 = v35;
  v60 = v36;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v37 = *(v49 + 8);
  v37(v20, v18);
  sub_1C0FDBA4C();
  return (v37)(v23, v18);
}

uint64_t sub_1C111CF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v52 = a2;
  v47 = a1;
  v57 = a9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC0, &qword_1C12B6EB0);
  MEMORY[0x1EEE9AC00](v48);
  v16 = &v46 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC8, &qword_1C12AC400);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v59 = &v46 - v22;
  v54 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v55 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v46 - v26;
  v49 = a3;
  v50 = a5;
  v70[0] = a3;
  v70[1] = a4;
  v70[2] = a5;
  v28 = v47;
  v51 = a6;
  v70[3] = a6;
  v29 = a7;
  v70[4] = a7;
  v70[5] = a8;
  v30 = type metadata accessor for PhotosSocialGroupCell(0, v70);
  v53 = v27;
  v31 = a8;
  sub_1C0FDBA4C();
  if (qword_1EBE8FCA8 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v48, qword_1EBE93F58);
  sub_1C0FDB800(v32, v16, &qword_1EBE91CC0, &qword_1C12B6EB0);
  if (*(v28 + *(v30 + 72)))
  {
    v33 = 0.0;
  }

  else
  {
    v33 = 1.0;
  }

  sub_1C0FDB71C(v16, v20, &qword_1EBE91CC0, &qword_1C12B6EB0);
  v34 = v59;
  *&v20[*(v58 + 36)] = v33;
  sub_1C0FDB71C(v20, v34, &qword_1EBE91CC8, &qword_1C12AC400);
  v35 = sub_1C1263AA0();
  v64[0] = 1;
  sub_1C111D4D4(v28, v49, a4, v50, v51, v29, a8, v70);
  memcpy(v67, v70, sizeof(v67));
  memcpy(v68, v70, sizeof(v68));
  sub_1C0FDB800(v67, v69, &qword_1EBE94568, &unk_1C12B8860);
  sub_1C0FD1A5C(v68, &qword_1EBE94568, &unk_1C12B8860);
  memcpy(&v66[7], v67, 0x178uLL);
  v36 = v64[0];
  v37 = sub_1C1264470();
  LOBYTE(v70[0]) = 0;
  v69[0] = v35;
  v69[1] = 0;
  LOBYTE(v69[2]) = v36;
  memcpy(&v69[2] + 1, v66, 0x17FuLL);
  LOBYTE(v69[50]) = v37;
  v38 = v53;
  v39 = *(v52 + 56);
  *&v69[51] = *(v52 + 40);
  *&v69[53] = v39;
  LOBYTE(v69[55]) = 0;
  v41 = v54;
  v40 = v55;
  (*(v54 + 16))(v55, v53, a4);
  v65[0] = v40;
  v42 = v59;
  v43 = v56;
  sub_1C0FDB800(v59, v56, &qword_1EBE91CC8, &qword_1C12AC400);
  v65[1] = v43;
  memcpy(v64, v69, 0x1B9uLL);
  v65[2] = v64;
  sub_1C0FDB800(v69, v70, qword_1EBE944B0, &unk_1C12B8660);
  v63[0] = a4;
  v63[1] = v58;
  v63[2] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE944B0, &unk_1C12B8660);
  v60 = v31;
  v61 = sub_1C1112AD4();
  v62 = sub_1C111E1E8();
  sub_1C119EE80(v65, 3, v63);
  sub_1C0FD1A5C(v69, qword_1EBE944B0, &unk_1C12B8660);
  sub_1C0FD1A5C(v42, &qword_1EBE91CC8, &qword_1C12AC400);
  v44 = *(v41 + 8);
  v44(v38, a4);
  memcpy(v70, v64, 0x1B9uLL);
  sub_1C0FD1A5C(v70, qword_1EBE944B0, &unk_1C12B8660);
  sub_1C0FD1A5C(v43, &qword_1EBE91CC8, &qword_1C12AC400);
  return (v44)(v40, a4);
}

uint64_t sub_1C111D4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_1C12659A0();
  v20 = v17;
  v21 = v16;
  sub_1C111D6F8(a2, a3, a4, a5, a6, a7, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v27, __src, sizeof(v27));
  sub_1C0FDB800(__dst, v24, &qword_1EBE94588, &qword_1C12B8878);
  sub_1C0FD1A5C(v27, &qword_1EBE94588, &qword_1C12B8878);
  memcpy(v28, __dst, sizeof(v28));
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  __src[4] = a6;
  __src[5] = a7;
  if (*(a1 + *(type metadata accessor for PhotosSocialGroupCell(0, __src) + 72)) == 1)
  {
    if (qword_1EDE7B868 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDE7B870;
  }

  else
  {
    v18 = sub_1C1265190();
  }

  v23[368] = 1;
  v24[0] = v21;
  v24[1] = v20;
  memcpy(&v24[2], v28, 0x150uLL);
  v24[44] = v18;
  memcpy(&v23[7], v24, 0x168uLL);
  *a8 = 0;
  *(a8 + 8) = 1;
  memcpy((a8 + 9), v23, 0x16FuLL);
  __src[0] = v21;
  __src[1] = v20;
  memcpy(&__src[2], v28, 0x150uLL);
  __src[44] = v18;
  sub_1C0FDB800(v24, v22, &qword_1EBE94590, &qword_1C12B8880);
  return sub_1C0FD1A5C(__src, &qword_1EBE94590, &qword_1C12B8880);
}

uint64_t sub_1C111D6F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  *&v33 = a1;
  *(&v33 + 1) = a2;
  v34 = a3;
  v35 = a4;
  v36[0] = a5;
  v36[1] = a6;
  v7 = type metadata accessor for PhotosSocialGroupCell(0, &v33);
  *&v33 = sub_1C111C410(v7);
  *(&v33 + 1) = v8;
  sub_1C0FDB9AC();
  v23 = sub_1C12648F0();
  v24 = v9;
  v26 = v10;
  v12 = v11;
  sub_1C12659B0();
  v13 = sub_1C1263390();
  v44 = v12 & 1;
  v14 = sub_1C11D2C40(v13);
  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v45 = 0;
  v16 = 1.0;
  if (sub_1C111C3C8(v7))
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 1.0;
  }

  v33 = xmmword_1C12B8620;
  LOBYTE(v34) = 0;
  v28[0] = 394248;
  LODWORD(v28[1]) = 17367552;
  PhotosPrefetchableImage(_:font:)(&v33, v28, v41);
  sub_1C100DC0C(v33, *(&v33 + 1));
  v18 = v41[0];
  v19 = v41[1];
  v20 = v41[2];
  sub_1C12659B0();
  sub_1C1263390();
  if (!sub_1C111C3C8(v7))
  {
    v16 = 0.0;
  }

  v28[0] = v23;
  v28[1] = v26;
  LOBYTE(v28[2]) = v12 & 1;
  *(&v28[2] + 1) = *v43;
  HIDWORD(v28[2]) = *&v43[3];
  v28[3] = v24;
  memcpy(&v28[4], __src, 0x70uLL);
  v28[18] = KeyPath;
  v28[19] = v14;
  v28[20] = v22;
  v28[21] = 2;
  LOBYTE(v28[22]) = 0;
  *(&v28[22] + 1) = v46[0];
  HIDWORD(v28[22]) = *(v46 + 3);
  *&v28[23] = v17;
  memcpy(__dst, v28, 0xC0uLL);
  v29[0] = v18;
  v29[1] = v19;
  v29[2] = v20;
  memcpy(&v29[3], v40, 0x70uLL);
  *&v29[17] = v16;
  memcpy(&__dst[192], v29, 0x90uLL);
  memcpy(a7, __dst, 0x150uLL);
  v30[0] = v18;
  v30[1] = v19;
  v30[2] = v20;
  memcpy(v31, v40, sizeof(v31));
  v32 = v16;
  sub_1C0FDB800(v28, &v33, &qword_1EBE94598, &qword_1C12B88E8);
  sub_1C0FDB800(v29, &v33, &qword_1EBE94268, &unk_1C12B88F0);
  sub_1C0FD1A5C(v30, &qword_1EBE94268, &unk_1C12B88F0);
  *&v33 = v23;
  *(&v33 + 1) = v26;
  LOBYTE(v34) = v12 & 1;
  *(&v34 + 1) = *v43;
  HIDWORD(v34) = *&v43[3];
  v35 = v24;
  memcpy(v36, __src, 0x70uLL);
  v36[14] = KeyPath;
  v36[15] = v14;
  v36[16] = v22;
  v36[17] = 2;
  v37 = 0;
  *v38 = v46[0];
  *&v38[3] = *(v46 + 3);
  v39 = v17;
  return sub_1C0FD1A5C(&v33, &qword_1EBE94598, &qword_1C12B88E8);
}

void sub_1C111DABC(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1C107032C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C111DB68(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((v7 + 8) & ~v7) + *(*(v4 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 217;
    v10 = (a2 - v8 + 255) >> 8;
    if (v9 <= 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = (v14 - 1) << (8 * (((((v7 + 8) & ~v7) + *(*(v4 - 8) + 64)) & 0xF8) - 39));
        if (v9 <= 3)
        {
          v16 = *result;
        }

        else
        {
          v15 = 0;
          v16 = *result;
        }

        result = v8 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C111DCC4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((v10 + 8) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 217;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C111DEBC()
{

  v1 = OBJC_IVAR____TtCV17PhotosSwiftUICore30PhotosSocialGroupCell_Previews9MockModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1C111DF24()
{
  sub_1C111DEBC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for PhotosSocialGroupCell_Previews.MockModel(uint64_t a1)
{
  result = qword_1EBE94540;
  if (!qword_1EBE94540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C111DFD0(uint64_t a1)
{
  result = sub_1C1261F70();
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

uint64_t sub_1C111E098()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1C111E114(uint64_t a1)
{
  result = sub_1C111E1A0(&qword_1EBE94560, type metadata accessor for PhotosSocialGroupCell_Previews.MockModel, &unk_1C12B8804);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C111E1A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C111E1E8()
{
  result = qword_1EBE94570;
  if (!qword_1EBE94570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE944B0, &unk_1C12B8660);
    sub_1C0FDB6D4(&qword_1EBE94578, &qword_1EBE94580, &qword_1C12B8870, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94570);
  }

  return result;
}

uint64_t View.photosScrollPosition<A>(scrollViewModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PhotosScrollPositionModifier(0, *(*a1 + 80), *(*a1 + 88), a4);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;

  sub_1C111FCF0(v12, v13, v14, v15);
  MEMORY[0x1C68EE920](v11, a2, v6, a3);
  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1C111E418(char *a1)
{
  OUTLINED_FUNCTION_2_15();
  v36[1] = v3;
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_1();
  v39 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v36[0] = v36 - v8;
  v9 = sub_1C1266790();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v37 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v36 - v13;
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v41 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v36 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v36 - v23;
  v43 = v1;
  sub_1C111EF44(v36 - v23);
  v38 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v42 = v16;
  v26 = *(v16 + 16);
  v26(v14, v24, v9);
  v44 = a1;
  v26(&v14[v25], a1, v9);
  OUTLINED_FUNCTION_61(v14);
  v40 = v26;
  if (!v28)
  {
    v26(v21, v14, v9);
    OUTLINED_FUNCTION_61(&v14[v25]);
    if (!v28)
    {
      v33 = v39;
      v26 = v36[0];
      (*(v39 + 32))(v36[0], &v14[v25], v5);
      LODWORD(v38) = sub_1C1265DE0();
      v34 = *(v33 + 8);
      v34(v26, v5);
      v35 = OUTLINED_FUNCTION_5_27();
      (v26)(v35);
      v34(v21, v5);
      (v26)(v14, v9);
      if (v38)
      {
        return (v26)(v44, v9);
      }

LABEL_10:
      v30 = v41;
      v31 = v44;
      v40(v41, v44, v9);
      sub_1C111F090(v30);
      return (v26)(v31, v9);
    }

    v29 = OUTLINED_FUNCTION_5_27();
    (v26)(v29);
    (*(v39 + 8))(v21, v5);
LABEL_9:
    (*(v37 + 8))(v14, v38);
    goto LABEL_10;
  }

  v27 = OUTLINED_FUNCTION_5_27();
  (v26)(v27);
  OUTLINED_FUNCTION_61(&v14[v25]);
  if (!v28)
  {
    goto LABEL_9;
  }

  (v26)(v14, v9);
  return (v26)(v44, v9);
}

void (*sub_1C111E834(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_10_2();
  v4 = sub_1C1266790();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  sub_1C111EF44(v7);
  return sub_1C111E918;
}

void sub_1C111E918(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1C111E418(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1C111E418(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_1C111EA1C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C111F3E0();
  if (v6)
  {
    if (a3)
    {
      return;
    }
  }

  else if (a3 & 1) == 0 && (sub_1C1265B60())
  {
    return;
  }

  sub_1C111F4C0(a1, a2, a3 & 1);
}

void (*sub_1C111EAA4(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  *a1 = sub_1C111EA00();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return sub_1C111EAF4;
}

void sub_1C111EB28(char a1)
{
  v1 = a1 & 1;
  if ((sub_1C111F674() & 1) != (a1 & 1))
  {

    sub_1C111ECC4(v1);
  }
}

void (*sub_1C111EB78(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C111F674() & 1;
  return sub_1C111EBC4;
}

uint64_t PhotosScrollViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  PhotosScrollViewModel.init()();
  return v0;
}

uint64_t PhotosScrollViewModel.init()()
{
  OUTLINED_FUNCTION_2_15();
  __swift_storeEnumTagSinglePayload(v0 + *(v1 + 96), 1, 1, *(v2 + 80));
  OUTLINED_FUNCTION_10_2();
  v4 = v0 + *(v3 + 104);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  OUTLINED_FUNCTION_10_2();
  *(v0 + *(v5 + 112)) = 0;
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  return v0;
}

void sub_1C111ECC4(char a1)
{
  v2 = *v1;
  v12 = *(v1 + *(*v1 + 112));
  v3 = a1 & 1;
  v11 = a1;
  v4 = sub_1C0FA8038(&v12, &v11, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_6_26();
    *(v5 - 16) = *(v2 + 80);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v1;
    v10 = v3;
    OUTLINED_FUNCTION_10_22(v7, v9, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    *(v1 + *(v8 + 112)) = v3;
  }
}

uint64_t sub_1C111EE04@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_1C111EEA0(uint64_t a1)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1C111EF44@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_2();
  KeyPath = swift_getKeyPath();
  sub_1C111F6F4(KeyPath);

  return sub_1C111EE04(a1);
}

uint64_t sub_1C111EFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  sub_1C1266790();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a5(v10);
}

uint64_t sub_1C111F090(char *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_1C1266790();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  sub_1C111EE04(v19 - v9);
  v11 = *(v3 + 88);
  v19[1] = *(v11 + 8);
  WitnessTable = swift_getWitnessTable();
  LOBYTE(v3) = sub_1C0FA8038(v10, a1, v5, WitnessTable);
  v13 = *(v7 + 8);
  v14 = v13(v10, v5);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v14);
    OUTLINED_FUNCTION_6_26();
    *(v15 - 16) = v4;
    *(v15 - 8) = v11;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v19[-2] = v1;
    v19[-1] = a1;
    OUTLINED_FUNCTION_10_22(v17, &v19[-4], MEMORY[0x1E69E7CA8]);
  }

  else
  {
    (*(v7 + 16))(v10, a1, v5);
    sub_1C111EEA0(v10);
  }

  return v13(a1, v5);
}

uint64_t sub_1C111F298(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C1266790();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a2, v4);
  return sub_1C111EEA0(v6);
}

void sub_1C111F3AC()
{
  OUTLINED_FUNCTION_10_2();
  v2 = v0 + *(v1 + 104);
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5 & 1;
}

uint64_t sub_1C111F3E0()
{
  OUTLINED_FUNCTION_10_2();
  KeyPath = swift_getKeyPath();
  sub_1C111F6F4(KeyPath);

  return sub_1C111F37C();
}

uint64_t sub_1C111F454@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void sub_1C111F4C0(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_10_2();
  v8 = v7;
  v24[0] = sub_1C111F37C();
  v24[1] = v9;
  v25 = v10 & 1;
  v22[0] = a1;
  v22[1] = a2;
  v11 = a3 & 1;
  v23 = a3 & 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945A0, &qword_1C12B8AA0);
  v13 = sub_1C1120218();
  v14 = sub_1C0FA8038(v24, v22, v12, v13);
  if (v14)
  {
    MEMORY[0x1EEE9AC00](v14);
    OUTLINED_FUNCTION_6_26();
    *(v15 - 16) = *(v8 + 80);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v20[2] = v3;
    v20[3] = a1;
    v20[4] = a2;
    v21 = v11;
    OUTLINED_FUNCTION_10_22(v17, v20, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    v19 = v3 + *(v18 + 104);
    *v19 = a1;
    *(v19 + 8) = a2;
    *(v19 + 16) = v11;
  }
}

uint64_t sub_1C111F674()
{
  OUTLINED_FUNCTION_10_2();
  KeyPath = swift_getKeyPath();
  sub_1C111F6F4(KeyPath);

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v2 + 112));
}

uint64_t sub_1C111F6F4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_42();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C111F78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_42();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosScrollViewModel.deinit()
{
  OUTLINED_FUNCTION_2_15();
  v2 = *(v1 + 96);
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 120);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t PhotosScrollViewModel.__deallocating_deinit()
{
  PhotosScrollViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C111F968(uint64_t a1)
{
  result = sub_1C1266790();
  if (v2 <= 0x3F)
  {
    result = sub_1C1261F70();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C111FC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosScrollViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  result = sub_1C1265790();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C111FCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosScrollViewModel(0, *(*a1 + 80), *(*a1 + 88), a4);
  swift_getWitnessTable();

  return sub_1C1265770();
}

uint64_t sub_1C111FD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosScrollViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  sub_1C1265790();
  sub_1C1265750();
  return v5;
}

uint64_t sub_1C111FDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosScrollViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  v4 = sub_1C1265790();

  return MEMORY[0x1EEDE4B98](v4);
}

uint64_t sub_1C111FE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v49 = a3;
  v4 = *(a2 + 16);
  sub_1C1266790();
  v5 = sub_1C1265640();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  v8 = v4;
  v9 = *(a2 + 24);
  type metadata accessor for PhotosScrollViewModel(255, v4, v9, v10);
  v11 = sub_1C1265790();
  v12 = *(v11 - 8);
  v41 = v11;
  v42 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  swift_getWitnessTable();
  v15 = sub_1C1263DE0();
  v40 = v15;
  WitnessTable = swift_getWitnessTable();
  v52 = v15;
  v53 = v8;
  v17 = v8;
  v38 = v8;
  v39 = v9;
  v54 = WitnessTable;
  v55 = v9;
  v43 = WitnessTable;
  v44 = MEMORY[0x1E697CF40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  sub_1C111FDD0(a2, v24, v25, v26);
  v50 = v17;
  v51 = v9;
  swift_getKeyPath();
  v27 = v41;
  sub_1C1265780();

  (*(v42 + 8))(v14, v27);
  sub_1C111FD90(a2, v28, v29, v30);
  sub_1C111EA00();

  v31 = swift_checkMetadataState();
  v32 = v7;
  v34 = v38;
  v33 = v39;
  v35 = v43;
  sub_1C1264B80();
  (*(v46 + 8))(v32, v47);
  v52 = v31;
  v53 = v34;
  v54 = v35;
  v55 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1C0FDBA4C();
  v36 = *(v45 + 8);
  v36(v20, OpaqueTypeMetadata2);
  sub_1C0FDBA4C();
  return (v36)(v23, OpaqueTypeMetadata2);
}

unint64_t sub_1C1120218()
{
  result = qword_1EBE945A8;
  if (!qword_1EBE945A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE945A0, &qword_1C12B8AA0);
    sub_1C112029C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE945A8);
  }

  return result;
}

unint64_t sub_1C112029C()
{
  result = qword_1EBE945B0;
  if (!qword_1EBE945B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE945B0);
  }

  return result;
}

__n128 sub_1C11202F0()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + *(**(v0 + 16) + 104));
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u8[0] = v1;
  return result;
}

uint64_t PhotosPrefetchable.RootView.init(content:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(type metadata accessor for PhotosPrefetchable.RootView(0, a2, a3, a3) + 36);
  *(a4 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945B8, &qword_1C12B8B38);
  v7 = swift_storeEnumTagMultiPayload();
  return a1(v7);
}

uint64_t sub_1C11203D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945B8, &qword_1C12B8B38);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C1121150(v2 + *(a1 + 36), &v14 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v6 + 32))(a2, v11, v5);
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t PhotosPrefetchable.RootView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_1();
  v49 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  sub_1C1262650();
  OUTLINED_FUNCTION_1();
  v46 = v11;
  v47 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v41 - v22;
  WitnessTable = swift_getWitnessTable();
  View.photosTrace.getter();
  v25 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v23, 1, v25) == 1)
  {
    v26 = sub_1C111ACFC(v23);
    v27 = v2;
  }

  else
  {
    v28 = *(v16 + 16);
    v45 = v2;
    v28(v20, v2, a1);
    sub_1C1262640();
    v29 = sub_1C1262670();
    v43 = sub_1C1266520();
    v44 = v29;
    if (sub_1C1266730())
    {
      v30 = swift_slowAlloc();
      v41 = v30;
      v42 = swift_slowAlloc();
      v50 = v42;
      *v30 = 136446210;
      v31 = View.photosChangedProperties.getter(a1, WitnessTable);
      v33 = v32;
      (*(v16 + 8))(v20, a1);
      v34 = sub_1C0FA0E80(v31, v33, &v50);

      v35 = v41;
      *(v41 + 1) = v34;
      v36 = sub_1C1262630();
      v37 = v44;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v44, v43, v36, "PhotosPrefetchable.RootView", "PhotosPrefetchable.RootView %{public}s", v35, 0xCu);
      v38 = v42;
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x1C68F1630](v38, -1, -1);
      MEMORY[0x1C68F1630](v35, -1, -1);

      (*(v46 + 8))(v14, v47);
    }

    else
    {

      (*(v46 + 8))(v14, v47);
      (*(v16 + 8))(v20, a1);
    }

    v26 = (*(*(v25 - 8) + 8))(v23, v25);
    v27 = v45;
  }

  if (qword_1EDE833C0 != -1)
  {
    v26 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v26);
  v39 = *(a1 + 24);
  *(&v41 - 4) = v4;
  *(&v41 - 3) = v39;
  *(&v41 - 2) = v27;

  sub_1C1219460();

  sub_1C0FDBA4C();
  sub_1C0FDBA4C();
  return (*(v49 + 8))(v9, v4);
}

void sub_1C1120AF0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C11210F8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C1120B78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1C12637E0() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  if (v7 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = *(v6 + 64) + v11;
  if (a2 <= v10)
  {
    goto LABEL_27;
  }

  v13 = v9 + (v12 & ~v11) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v7 < 0xFE)
      {
        v21 = *(((a1 + v12) & ~v11) + v9);
        if (v21 >= 2)
        {
          return (v21 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return __swift_getEnumTagSinglePayload(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void sub_1C1120DB4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(sub_1C12637E0() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = *(v8 + 64) + v13;
  v15 = v11 + 1;
  v16 = (v14 & ~v13) + v11 + 1;
  v17 = 8 * v16;
  if (a3 <= v12)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v12 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v9 < 0xFE)
          {
            v24 = (&a1[v14] & ~v13);
            if (a2 > 0xFE)
            {
              if (v15 <= 3)
              {
                v25 = ~(-1 << (8 * v15));
              }

              else
              {
                v25 = -1;
              }

              if (v15)
              {
                v26 = v25 & (a2 - 255);
                if (v15 <= 3)
                {
                  v27 = v15;
                }

                else
                {
                  v27 = 4;
                }

                bzero(v24, v15);
                switch(v27)
                {
                  case 2:
                    *v24 = v26;
                    break;
                  case 3:
                    *v24 = v26;
                    v24[2] = BYTE2(v26);
                    break;
                  case 4:
                    *v24 = v26;
                    break;
                  default:
                    *v24 = v26;
                    break;
                }
              }
            }

            else
            {
              v24[v11] = -a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v12 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

void sub_1C11210F8(uint64_t a1)
{
  if (!qword_1EDE82FB0)
  {
    sub_1C12637E0();
    v1 = sub_1C1262A70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE82FB0);
    }
  }
}

uint64_t sub_1C1121150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945B8, &qword_1C12B8B38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PhotosContainerWidthBlurLegibilityGradient.init(spec:width:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_2_43();
  sub_1C11216D0(v6, v7);
  result = type metadata accessor for PhotosContainerWidthBlurLegibilityGradient(0);
  v9 = a3 + *(result + 20);
  *v9 = a1;
  *(v9 + 8) = a2 & 1;
  return result;
}

uint64_t PhotosContainerWidthBlurLegibilityGradient.body.getter()
{
  v1 = type metadata accessor for PhotosContainerWidthBlurLegibilityGradient(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  v5 = OUTLINED_FUNCTION_15(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  type metadata accessor for PhotosBlurLegibilityGradient(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_2_43();
  sub_1C1121678(v0, v8);
  PhotosBlurLegibilityGradient.init(spec:)(v8, v12);
  sub_1C1264420();
  sub_1C1121678(v0, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  sub_1C11216D0(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_1C12659A0();
  sub_1C11217A4();
  sub_1C1264DC0();

  return sub_1C11217FC(v12, type metadata accessor for PhotosBlurLegibilityGradient);
}

uint64_t PhotosBlurLegibilityGradient.init(spec:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhotosBlurLegibilityGradient(0);
  v5 = *(v4 + 24);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_43();
  sub_1C1121678(a1, a2);
  v6 = objc_opt_self();
  v7 = [v6 mainDisplay];
  v8 = v7;
  v9 = v7 == 0;
  if (v7)
  {
    [v7 frame];
    OUTLINED_FUNCTION_16_18();
  }

  v10 = [v6 mainDisplay];
  if (v10)
  {
    v11 = v10;
    [v10 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    if (v8)
    {
      v21.origin.x = OUTLINED_FUNCTION_8_0();
      v22.origin.x = v13;
      v22.origin.y = v15;
      v22.size.width = v17;
      v22.size.height = v19;
      v9 = CGRectEqualToRect(v21, v22);
    }

    else
    {
      v9 = 0;
    }
  }

  result = sub_1C11217FC(a1, type metadata accessor for PhotosBlurLegibilityGradientSpec);
  *(a2 + *(v4 + 20)) = !v9;
  return result;
}

uint64_t sub_1C1121678(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_25();
  v4(v3);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_18();
  v6(v5);
  return a2;
}

uint64_t sub_1C11216D0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_25();
  v4(v3);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_18();
  v6(v5);
  return a2;
}

uint64_t sub_1C1121728()
{
  v0 = type metadata accessor for PhotosContainerWidthBlurLegibilityGradient(0);
  OUTLINED_FUNCTION_15(v0);

  return sub_1C112162C();
}

unint64_t sub_1C11217A4()
{
  result = qword_1EDE7A098;
  if (!qword_1EDE7A098)
  {
    type metadata accessor for PhotosBlurLegibilityGradient(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7A098);
  }

  return result;
}

uint64_t sub_1C11217FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t PhotosBlurLegibilityGradient.body.getter@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945C8, &qword_1C12B8C10);
  OUTLINED_FUNCTION_0_49(v2, &v115);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v105 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945D0, &qword_1C12B8C18);
  OUTLINED_FUNCTION_0_49(v6, &v117);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v105 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945D8, &qword_1C12B8C20);
  OUTLINED_FUNCTION_0_49(v10, &v116);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v105 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945E0, &qword_1C12B8C28);
  v15 = OUTLINED_FUNCTION_0_49(v14, &v123);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_30();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v105 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945E8, &qword_1C12B8C30);
  OUTLINED_FUNCTION_0_49(v22, &v122);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945F0, &qword_1C12B8C38);
  OUTLINED_FUNCTION_0_49(v25, &v119);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945F8, &qword_1C12B8C40);
  OUTLINED_FUNCTION_0_49(v28, &v120);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94600, &qword_1C12B8C48);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v105 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94608, &qword_1C12B8C50);
  v36 = OUTLINED_FUNCTION_15(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_30();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_11_1(v105 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94610, &qword_1C12B8C58);
  OUTLINED_FUNCTION_0_49(v42, &v118);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94618, &unk_1C12B8C60);
  v46 = OUTLINED_FUNCTION_0_49(v45, &v121);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_30();
  v49 = v47 - v48;
  MEMORY[0x1EEE9AC00](v50);
  if (*v1 == 1)
  {
    v105[3] = v105 - v51;
    sub_1C112234C(v1);
    v52 = sub_1C12631E0();
    v53 = sub_1C1264470();
    v54 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94628, &qword_1C12B8C78) + 36)];
    *v54 = v52;
    v54[8] = v53;
    v55 = sub_1C12659A0();
    v57 = v56;
    v58 = *(v1 + 24);
    sub_1C112241C();
    v59 = sub_1C11226C0(v58, *(v1 + 32));

    if (*(v1 + 40))
    {
      sub_1C1265B80();
    }

    else
    {
      sub_1C1265B70();
    }

    OUTLINED_FUNCTION_16_18();
    v63 = v31;
    if (*(v1 + 40))
    {
      sub_1C1265B70();
    }

    else
    {
      sub_1C1265B80();
    }

    v64 = &v34[*(v31 + 36)];
    MEMORY[0x1C68EF140](v59);
    OUTLINED_FUNCTION_8_0();
    sub_1C1262F60();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94008, &unk_1C12B7090);
    sub_1C1122804(&v64[*(v65 + 36)]);
    v66 = *&v114[16];
    *v64 = *v114;
    *(v64 + 1) = v66;
    *(v64 + 4) = *&v114[32];
    v67 = &v64[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94640, &qword_1C12B8C90) + 36)];
    *v67 = v55;
    v67[1] = v57;
    if (*(v1 + *(type metadata accessor for PhotosBlurLegibilityGradient(0) + 20)) == 1)
    {
      v68 = sub_1C1265990();
      v70 = v69;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94620, &qword_1C12B8C70);
      v72 = v105[0];
      v73 = (v105[0] + *(v71 + 36));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810, &qword_1C12BADD0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_1C12A3440;
      *(v74 + 32) = sub_1C1265170();
      *(v74 + 40) = sub_1C1265160();
      sub_1C1265B70();
      OUTLINED_FUNCTION_16_18();
      sub_1C1265B80();
      MEMORY[0x1C68EF140](v74);
      OUTLINED_FUNCTION_8_0();
      sub_1C1262F60();
      sub_1C12659A0();
      sub_1C1262C80();
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94658, &qword_1C12B8CB0);
      v105[2] = v63;
      v76 = *(v75 + 36);
      v77 = *MEMORY[0x1E6981DC0];
      sub_1C1265A90();
      OUTLINED_FUNCTION_3();
      (*(v78 + 104))(&v73[v76], v77);
      memcpy(v73, __src, 0x58uLL);
      *(v73 + 11) = 0;
      *(v73 + 12) = 0;
      v79 = &v73[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94648, &qword_1C12B8C98) + 36)];
      *v79 = v68;
      v79[1] = v70;
      sub_1C0FE5654(v34, v72, &qword_1EBE94600, &qword_1C12B8C48);
      sub_1C0FE5654(v72, v108, &qword_1EBE945F8, &qword_1C12B8C40);
      swift_storeEnumTagMultiPayload();
      sub_1C1122CE0();
      sub_1C1122E24();
      sub_1C1263C20();
      sub_1C0FD1A5C(v72, &qword_1EBE945F8, &qword_1C12B8C40);
    }

    else
    {
      sub_1C0FE5654(v34, v108, &qword_1EBE94600, &qword_1C12B8C48);
      swift_storeEnumTagMultiPayload();
      sub_1C1122CE0();
      sub_1C1122E24();
      sub_1C1263C20();
    }

    sub_1C0FD1A5C(v34, &qword_1EBE94600, &qword_1C12B8C48);
    v94 = v107;
    sub_1C0FE4040(v39, v107, &qword_1EBE94608, &qword_1C12B8C50);
    if (*(v1 + 40))
    {
      v95 = *(v1 + 16) ^ 0x8000000000000000;
    }

    else
    {
      v95 = 0;
    }

    if (*(v1 + 40))
    {
      v96 = 0;
    }

    else
    {
      v96 = *(v1 + 16) ^ 0x8000000000000000;
    }

    v97 = sub_1C1264470();
    v98 = v106;
    sub_1C0FE4040(v94, v106, &qword_1EBE94608, &qword_1C12B8C50);
    OUTLINED_FUNCTION_17_21();
    v100 = v98 + v99;
    *v100 = v97;
    *(v100 + 8) = v95;
    *(v100 + 16) = 0;
    *(v100 + 24) = v96;
    *(v100 + 32) = 0;
    *(v100 + 40) = 0;
    sub_1C0FE4040(v98, v49, &qword_1EBE94610, &qword_1C12B8C58);
    *(v49 + *(v109 + 36)) = 0;
    OUTLINED_FUNCTION_14_17();
    sub_1C0FE4040(v101, v102, v103, v104);
    sub_1C0FE5654(v49, v110, &qword_1EBE94618, &unk_1C12B8C60);
    swift_storeEnumTagMultiPayload();
    sub_1C1122B3C();
    sub_1C1123020();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v49, &qword_1EBE94618, &unk_1C12B8C60);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810, &qword_1C12BADD0);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1C12A3440;
    sub_1C112241C();
    v61 = sub_1C12651E0();

    *(v60 + 32) = v61;
    sub_1C112241C();
    v62 = sub_1C12651E0();

    *(v60 + 40) = v62;
    MEMORY[0x1C68EF140](v60);
    if (*(v1 + 40))
    {
      sub_1C1265B80();
    }

    else
    {
      sub_1C1265B70();
    }

    OUTLINED_FUNCTION_16_18();
    if (*(v1 + 40))
    {
      sub_1C1265B70();
    }

    else
    {
      sub_1C1265B80();
    }

    sub_1C1262F60();
    v80 = *v114;
    OUTLINED_FUNCTION_17_21();
    sub_1C1122804(&v5[v81]);
    *v5 = v80;
    v82 = *&v114[8];
    *(v5 + 24) = *&v114[24];
    *(v5 + 8) = v82;
    *(v5 + 20) = 256;
    v83 = sub_1C12631E0();
    v84 = sub_1C1264470();
    sub_1C0FE4040(v5, v9, &qword_1EBE945C8, &qword_1C12B8C10);
    OUTLINED_FUNCTION_17_21();
    v86 = &v9[v85];
    *v86 = v83;
    v86[8] = v84;
    sub_1C0FE4040(v9, v13, &qword_1EBE945D0, &qword_1C12B8C18);
    OUTLINED_FUNCTION_17_21();
    v13[v87] = 0;
    LOBYTE(v83) = sub_1C1264470();
    sub_1C0FE4040(v13, v18, &qword_1EBE945D8, &qword_1C12B8C20);
    v88 = v18 + *(v111 + 36);
    *v88 = v83;
    *(v88 + 8) = 0;
    *(v88 + 16) = 0;
    *(v88 + 24) = xmmword_1C12B8BB0;
    *(v88 + 40) = 0;
    sub_1C0FE4040(v18, v21, &qword_1EBE945E0, &qword_1C12B8C28);
    OUTLINED_FUNCTION_14_17();
    sub_1C0FE5654(v89, v90, v91, v92);
    swift_storeEnumTagMultiPayload();
    sub_1C1122B3C();
    sub_1C1123020();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v21, &qword_1EBE945E0, &qword_1C12B8C28);
  }
}