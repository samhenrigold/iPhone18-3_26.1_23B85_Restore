void sub_1BCCAB464(uint64_t a1)
{
  if (!qword_1EDA1BC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBD0BDC8, qword_1BCE5E408);
    v1 = sub_1BCE1B4F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA1BC20);
    }
  }
}

void sub_1BCCAB4C8(uint64_t a1)
{
  if (!qword_1EDA1BBE0)
  {
    type metadata accessor for ForegroundEffectRenderer(255);
    sub_1BCCAB55C(&qword_1EDA195E8, type metadata accessor for ForegroundEffectRenderer, &unk_1BCE6E690);
    v1 = sub_1BCE1B510();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA1BBE0);
    }
  }
}

uint64_t sub_1BCCAB55C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BCCAB5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BCCAB630(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BCCAB650(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

uint64_t objectdestroyTm_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ForegroundEffectView(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v4 + v8;
  j__swift_release(*(v4 + v8));
  sub_1BCA21FC4(*(v10 + 16), *(v10 + 24));
  sub_1BCA21FC4(*(v10 + 32), *(v10 + 40));
  sub_1BCA21FC4(*(v10 + 48), *(v10 + 56));
  sub_1BCCAADB0(*(v10 + 64), *(v10 + 72));
  (*(*(v5 - 8) + 8))(v4 + v8 + v6[15], v5);

  return MEMORY[0x1EEE6BDD0](v4, v8 + v9, v7 | 7);
}

uint64_t sub_1BCCAB7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ForegroundEffectView(0, *(v4 + 16), *(v4 + 24), a4);
  v5 = OUTLINED_FUNCTION_6_47();

  return sub_1BCCAA5F4(v5);
}

uint64_t sub_1BCCAB824@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BCE1BC20();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A188, &qword_1BCE53840);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for MoonInlineContentView(0);
  sub_1BC9660CC(v1 + *(v13 + 20), v12, &qword_1EBD0A188, &qword_1BCE53840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BCE1B4E0();
    OUTLINED_FUNCTION_4();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    sub_1BCE1D8C0();
    v16 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t MoonInlineContentView.init(status:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MoonInlineContentView(0) + 20);
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A188, &qword_1BCE53840);
  swift_storeEnumTagMultiPayload();
  v4 = OUTLINED_FUNCTION_10_1();
  return sub_1BCB7CF58(v4, v5, v6);
}

uint64_t type metadata accessor for MoonInlineContentView(uint64_t a1)
{
  result = qword_1EDA19DA0;
  if (!qword_1EDA19DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MoonInlineContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v119 = a1;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BED0, &qword_1BCE5E518);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_16();
  v118 = v3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BED8, &qword_1BCE5E520);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_16();
  v112 = v5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BEE0, &unk_1BCE5E528);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_16();
  v113 = v7;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B78, &qword_1BCE55A90);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_16();
  v114 = v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BEE8, &qword_1BCE5E538);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_16();
  v109 = v11;
  sub_1BCE1C100();
  OUTLINED_FUNCTION_2();
  v98 = v13;
  v99 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v105 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BEF0, &qword_1BCE5E540);
  OUTLINED_FUNCTION_2();
  v101 = v17;
  v102 = v16;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10_16();
  v100 = v19;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BEF8, &unk_1BCE5E548);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  v103 = v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v104 = v93 - v23;
  sub_1BCE1B4E0();
  OUTLINED_FUNCTION_2();
  v96 = v24;
  v97 = v25;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_0();
  v28 = v27 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09858, &qword_1BCE50D90);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v93 - v30;
  v32 = sub_1BCE19AD0();
  OUTLINED_FUNCTION_2();
  v106 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_0();
  v37 = v36 - v35;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BF00, &unk_1BCE5E558);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v93 - v39;
  v41 = type metadata accessor for MoonComplicationViewModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_0();
  v45 = v44 - v43;
  v46 = type metadata accessor for MoonComplicationDataStatus(0);
  MEMORY[0x1EEE9AC00](v46 - 8);
  OUTLINED_FUNCTION_2_0();
  v49 = v48 - v47;
  sub_1BCB7CD10(v1, v48 - v47);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 2, v41);
  if (EnumTagSinglePayload)
  {
    v51 = v114;
    if (EnumTagSinglePayload == 1)
    {
      sub_1BCCAC990(v114);
      OUTLINED_FUNCTION_10_41(v51);
      swift_storeEnumTagMultiPayload();
      sub_1BCCACD24();
      sub_1BCB56760();
      v52 = v113;
      sub_1BCE1BF60();
      sub_1BC9660CC(v52, v118, &qword_1EBD0BEE0, &unk_1BCE5E528);
      swift_storeEnumTagMultiPayload();
      sub_1BCCACCF4();
      OUTLINED_FUNCTION_9_41();
      sub_1BCE1BF60();
      sub_1BC94C05C(v52, &qword_1EBD0BEE0, &unk_1BCE5E528);
    }

    else
    {
      sub_1BCCAC990(v114);
      OUTLINED_FUNCTION_10_41(v51);
      swift_storeEnumTagMultiPayload();
      sub_1BCCACCF4();
      sub_1BCB56760();
      sub_1BCE1BF60();
    }

    return sub_1BC94C05C(v51, &qword_1EBD09B78, &qword_1BCE55A90);
  }

  else
  {
    v93[1] = v1;
    v95 = v40;
    sub_1BCB7CF58(v49, v45, type metadata accessor for MoonComplicationViewModel);
    sub_1BC9660CC(v45, v31, &qword_1EBD09858, &qword_1BCE50D90);
    v53 = __swift_getEnumTagSinglePayload(v31, 1, v32);
    v94 = v45;
    if (v53 == 1)
    {
      sub_1BC94C05C(v31, &qword_1EBD09858, &qword_1BCE50D90);
      v54 = v114;
      sub_1BCCAC990(v114);
      OUTLINED_FUNCTION_10_41(v54);
      swift_storeEnumTagMultiPayload();
      sub_1BCCACDD8();
      sub_1BCB56760();
      OUTLINED_FUNCTION_12_39();
      sub_1BCE1BF60();
      sub_1BC94C05C(v54, &qword_1EBD09B78, &qword_1BCE55A90);
    }

    else
    {
      v56 = *(v106 + 32);
      v57 = v37;
      v114 = v32;
      v56(v37, v31, v32);
      v58 = sub_1BCE19AA0();
      v125[0] = *(v45 + *(v41 + 20));
      v59 = MoonPhase.symbolName(for:)(v125, v58);
      v61 = v60;
      sub_1BCCAB824(v28);
      sub_1BCDC0C0C(v59, v61);

      (*(v97 + 8))(v28, v96);
      v62 = sub_1BCE1CBA0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A630, &qword_1BCE55740);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BCE3E030;
      v64 = sub_1BCE1C200();
      *(inited + 32) = v64;
      v65 = sub_1BCE1C220();
      *(inited + 33) = v65;
      v66 = sub_1BCE1C210();
      sub_1BCE1C210();
      if (sub_1BCE1C210() != v64)
      {
        v66 = sub_1BCE1C210();
      }

      sub_1BCE1C210();
      v67 = sub_1BCE1C210();
      v69 = v99;
      v68 = v100;
      if (v67 != v65)
      {
        v66 = sub_1BCE1C210();
      }

      v70 = v105;
      sub_1BCCAC728(v125);
      memcpy(v123, v125, sizeof(v123));
      memcpy(v124, v125, sizeof(v124));
      v105 = v62;
      sub_1BC9660CC(v123, v122, &qword_1EBD0A220, &qword_1BCE53960);
      sub_1BC94C05C(v124, &qword_1EBD0A220, &qword_1BCE53960);
      memcpy(&__src[7], v123, 0x48uLL);
      v122[0] = v66;
      memcpy(&v122[1], __src, 0x4FuLL);
      sub_1BCE1C0D0();
      v97 = v57;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A230, &unk_1BCE539A0);
      v72 = sub_1BCCACEA0();
      sub_1BCE1C930();
      (*(v98 + 8))(v70, v69);
      memcpy(v125, v122, sizeof(v125));
      sub_1BC94C05C(v125, &qword_1EBD0A230, &unk_1BCE539A0);
      sub_1BCE1BD30();
      v73 = v68;
      if (qword_1EDA1EFB0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_1EDA1EFB0);
      }

      swift_beginAccess();
      v74 = qword_1EDA1EFB8;
      v75 = qword_1EDA1EFB8;
      OUTLINED_FUNCTION_7_2();
      v76 = OUTLINED_FUNCTION_8_47();
      v82 = sub_1BCE1C680(v76, v77, v78, v79, v80, v81, v74, 0);
      v84 = v83;
      LOBYTE(v74) = v85;
      v40 = v86;
      v120 = v71;
      v121 = v72;
      OUTLINED_FUNCTION_0_1();
      swift_getOpaqueTypeConformance2();
      v87 = v102;
      v88 = v103;
      sub_1BCE1C8D0();
      sub_1BC998CF4(v82, v84, v74 & 1);

      (*(v101 + 8))(v73, v87);
      v89 = v97;
      sub_1BCE19AA0();
      v120 = sub_1BCE1A120();
      v121 = v90;
      sub_1BC970820();
      v91 = v104;
      sub_1BCE1B880();

      sub_1BC94C05C(v88, &qword_1EBD0BEF8, &unk_1BCE5E548);
      sub_1BC9660CC(v91, v109, &qword_1EBD0BEF8, &unk_1BCE5E548);
      swift_storeEnumTagMultiPayload();
      sub_1BCCACDD8();
      sub_1BCB56760();
      OUTLINED_FUNCTION_12_39();
      sub_1BCE1BF60();

      sub_1BC94C05C(v91, &qword_1EBD0BEF8, &unk_1BCE5E548);
      (*(v106 + 8))(v89, v114);
    }

    sub_1BC9660CC(v40, v112, &qword_1EBD0BF00, &unk_1BCE5E558);
    swift_storeEnumTagMultiPayload();
    sub_1BCCACD24();
    sub_1BCB56760();
    v92 = v113;
    sub_1BCE1BF60();
    sub_1BC9660CC(v92, v118, &qword_1EBD0BEE0, &unk_1BCE5E528);
    swift_storeEnumTagMultiPayload();
    sub_1BCCACCF4();
    OUTLINED_FUNCTION_9_41();
    sub_1BCE1BF60();
    sub_1BC94C05C(v92, &qword_1EBD0BEE0, &unk_1BCE5E528);
    sub_1BC94C05C(v40, &qword_1EBD0BF00, &unk_1BCE5E558);
    return sub_1BCB7CFB4(v94);
  }
}

double sub_1BCCAC728@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1BCE1BD20();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1BCE1BD10();
  sub_1BCE1BD00();
  sub_1BCE1BCE0();
  sub_1BCE1BD00();
  sub_1BCE19AA0();
  sub_1BCE1A120();
  sub_1BCE1BCF0();

  sub_1BCE1BD00();
  v4 = sub_1BCE1BD40();
  v8 = sub_1BCE1C680(v4, v6, v5 & 1, v7, 0, 0, 0, 0, 0, 256);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1BCE1BD10();
  sub_1BCE1BD00();
  sub_1BCE1BCE0();
  sub_1BCE1BD00();
  v15 = sub_1BCE19AA0();
  MoonPhase.abbreviatedDescription.getter(v15);
  sub_1BCE1BCF0();

  sub_1BCE1BD00();
  v16 = sub_1BCE1BD40();
  LOWORD(v27) = 256;
  v20 = sub_1BCE1C680(v16, v18, v17 & 1, v19, 0, 0, 0, 0, 0, v27);
  v22 = v21;
  v24 = v23 & 1;
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = 257;
  *(a2 + 40) = v20;
  *(a2 + 48) = v21;
  *(a2 + 56) = v23 & 1;
  *(a2 + 64) = v25;
  sub_1BCA81D10(v8, v10, v12 & 1);

  sub_1BCA81D10(v20, v22, v24);

  sub_1BC998CF4(v20, v22, v24);

  sub_1BC998CF4(v8, v10, v12 & 1);

  return result;
}

uint64_t sub_1BCCAC990@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_1BCE1C100();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = sub_1BCE1BD20();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_2_0();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B70, &unk_1BCE52690);
  OUTLINED_FUNCTION_2();
  v10 = v9;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  sub_1BCE1BD10();
  sub_1BCE1BD00();
  sub_1BCE1CBA0();
  sub_1BCE1BCE0();

  sub_1BCE1BD00();
  sub_1BCE1BD40();
  OUTLINED_FUNCTION_7_2();
  v18 = sub_1BCE1C680(v15, v16, v14 & 1, v17, 0, 0, 0, 0);
  v20 = v19;
  v44 = v18;
  v45 = v19;
  v22 = v21 & 1;
  v46 = v21 & 1;
  v47 = v23;
  sub_1BCE1C0D0();
  sub_1BCE1C930();
  (*(v3 + 8))(v7, v1);
  sub_1BC998CF4(v18, v20, v22);

  sub_1BCE1BD30();
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1EDA1EFB0);
  }

  swift_beginAccess();
  v24 = qword_1EDA1EFB8;
  v25 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_7_2();
  v26 = OUTLINED_FUNCTION_8_47();
  v32 = sub_1BCE1C680(v26, v27, v28, v29, v30, v31, v24, 0, v41);
  v34 = v33;
  v36 = v35;
  v42 = MEMORY[0x1E6981148];
  v43 = MEMORY[0x1E6981138];
  OUTLINED_FUNCTION_0_1();
  swift_getOpaqueTypeConformance2();
  v37 = v40;
  sub_1BCE1C8D0();
  sub_1BC998CF4(v32, v34, v36 & 1);

  return (*(v10 + 8))(v13, v37);
}

uint64_t sub_1BCCACD54(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BCB56760();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BCCACDD8()
{
  result = qword_1EDA1BA78;
  if (!qword_1EDA1BA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0BEF8, &unk_1BCE5E548);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A230, &unk_1BCE539A0);
    sub_1BCCACEA0();
    swift_getOpaqueTypeConformance2();
    sub_1BC99B7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BA78);
  }

  return result;
}

unint64_t sub_1BCCACEA0()
{
  result = qword_1EDA1BBD0;
  if (!qword_1EDA1BBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A230, &unk_1BCE539A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BBD0);
  }

  return result;
}

void sub_1BCCACF4C(uint64_t a1)
{
  type metadata accessor for MoonComplicationDataStatus(319);
  if (v1 <= 0x3F)
  {
    sub_1BCB7CCB8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BCCACFD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08590, &unk_1BCE48AD0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for PlatterViewLocation(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_1BCCAD3A0(v5, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_1BCCAD410(v2);
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v7 = *v2;
    v8 = v2[1];

    sub_1BCA94D4C(v2);
  }

  qword_1EBD2A3A0 = v7;
  *algn_1EBD2A3A8 = v8;
  qword_1EBD2A3B0 = 0;
  unk_1EBD2A3B8 = 0xE000000000000000;
  qword_1EBD2A3C0 = 0;
  unk_1EBD2A3C8 = 0xE000000000000000;
  qword_1EBD2A3D0 = 0;
  unk_1EBD2A3D8 = 0xE000000000000000;
  qword_1EBD2A3E0 = 0;
  unk_1EBD2A3E8 = 0xE000000000000000;
  xmmword_1EBD2A3F0 = 0u;
  unk_1EBD2A400 = 0u;
  return sub_1BCCAD410(v5);
}

uint64_t static CurrentObservationsHeaderViewModel.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v36 = a1[6];
  v34 = a1[8];
  v35 = a1[7];
  v25 = a1[10];
  v27 = a1[11];
  v30 = a1[13];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v32 = a2[8];
  v33 = a1[9];
  v31 = a2[9];
  v23 = a1[12];
  v24 = a2[10];
  v26 = a2[11];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v28 = a2[12];
  v29 = a2[13];
  if (!v12 && (sub_1BCE1E090() & 1) == 0)
  {
    return 0;
  }

  v13 = v2 == v6 && v3 == v7;
  if (!v13 && (sub_1BCE1E090() & 1) == 0)
  {
    return 0;
  }

  v14 = v4 == v8 && v5 == v9;
  if (!v14 && (sub_1BCE1E090() & 1) == 0)
  {
    return 0;
  }

  v15 = v36 == v10 && v35 == v11;
  if (!v15 && (sub_1BCE1E090() & 1) == 0)
  {
    return 0;
  }

  v16 = v34 == v32 && v33 == v31;
  if (!v16 && (sub_1BCE1E090() & 1) == 0)
  {
    return 0;
  }

  if (v27)
  {
    v18 = v29;
    v17 = v30;
    v19 = v28;
    if (!v26)
    {
      return 0;
    }

    v20 = v25 == v24 && v27 == v26;
    if (!v20 && (sub_1BCE1E090() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v18 = v29;
    v17 = v30;
    v19 = v28;
    if (v26)
    {
      return 0;
    }
  }

  if (v17)
  {
    if (v18)
    {
      v21 = v23 == v19 && v17 == v18;
      if (v21 || (sub_1BCE1E090() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v18)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1BCCAD2F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1BCCAD334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BCCAD3A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08590, &unk_1BCE48AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCCAD410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08590, &unk_1BCE48AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BCCAD478(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCAD9C68();
  v4 = v3;
  sub_1BCAD9C68();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42A0000042480000;
  *(a1 + 72) = 0xC3AF000000000000;
  *(a1 + 80) = xmmword_1BCE43900;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 128) = _Q0;
  *(a1 + 144) = _Q0;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = _Q0;
  *(a1 + 208) = _Q0;
  *(a1 + 224) = xmmword_1BCE3BF10;
  *(a1 + 240) = 0x41F0000040A00000;
  *(a1 + 248) = 1166843904;
  *(a1 + 256) = 0x3D4CCCCD3CF5C28FLL;
  *(a1 + 264) = 0x404D7252416522BCLL;
  *(a1 + 272) = 1101004800;
  *(a1 + 288) = _Q0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 1086324736;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = _Q0;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3EC1C9A8;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = _Q0;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = _Q0;
  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0x4094035940A00000;
  *(a1 + 624) = _Q0;
  *(a1 + 640) = _Q0;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x4066666740499999;
  *(a1 + 720) = 0x4200000042000000;
  *(a1 + 728) = 0x42480000C106680CLL;
  *(a1 + 736) = 0;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE48800;
  *(a1 + 768) = 0x7970736957;
  *(a1 + 776) = 0xE500000000000000;
  strcpy((a1 + 784), "Wispy_Single");
  *(a1 + 797) = 0;
  *(a1 + 798) = -5120;
  *(a1 + 800) = 6;
  *(a1 + 816) = xmmword_1BCE3BF50;
  *(a1 + 832) = 1077936128;
  *(a1 + 840) = vdup_n_s32(0x40666667u);
  *(a1 + 848) = 0x4160000041500000;
  *(a1 + 856) = 0x42480000C072F840;
  *(a1 + 864) = 0;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE48810;
  *(a1 + 896) = 0x7970736957;
  *(a1 + 904) = 0xE500000000000000;
  strcpy((a1 + 912), "Wispy_Single");
  *(a1 + 925) = 0;
  *(a1 + 926) = -5120;
  *(a1 + 928) = 6;
  *(a1 + 944) = xmmword_1BCE3BF70;
  *(a1 + 960) = 1077936128;
  *(a1 + 968) = 0x40E6666740D33334;
  __asm { FMOV            V2.2S, #6.0 }

  *(a1 + 976) = _D2;
  *(a1 + 984) = 0x42480000C0F2F638;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 3;
  *(a1 + 1008) = xmmword_1BCE48820;
  *(a1 + 1024) = 0x7970736957;
  *(a1 + 1032) = 0xE500000000000000;
  strcpy((a1 + 1040), "Wispy_Single");
  *(a1 + 1053) = 0;
  *(a1 + 1054) = -5120;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1077936128;
  *(a1 + 1096) = 0;
  __asm { FMOV            V2.2S, #3.25 }

  *(a1 + 1104) = _D2;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3C710;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE47CB0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1376) = _Q0;
  *(a1 + 1392) = xmmword_1BCE3BFB0;
  *(a1 + 1408) = _Q0;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3BFD0;
  *(a1 + 1568) = 0x42B5FAE142458F5CLL;
  *(a1 + 1584) = xmmword_1BCE3BFE0;
  *(a1 + 1600) = xmmword_1BCE3BFF0;
  __asm { FMOV            V3.2S, #-15.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1638) = 0;
  *(a1 + 1631) = 0;
  *(a1 + 1646) = 1;
  *(a1 + 1648) = 16843009;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v14;
  *(a1 + 1659) = v15;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 3;
  *(a1 + 1776) = xmmword_1BCE3C030;
  *(a1 + 1792) = xmmword_1BCE3C040;
  *(a1 + 1808) = xmmword_1BCE3C050;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1052770304;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E99999A00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3C070;
  *(a1 + 1984) = 0x3F80000041400000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v13;
}

id VFXView.setupView(with:)(double *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v6 = [v1 subviews];
  sub_1BCCADD2C();
  v7 = sub_1BCE1D570();

  result = sub_1BC947924(v7);
  if (result)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB304A0](0, v7);
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v9 = *(v7 + 32);
    }

    v10 = v9;

    v11 = [v10 layer];

    if (v11)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        [v12 setLowLatency_];
      }
    }
  }

  else
  {
  }

  [v1 setEffect_];
  [v1 setResizingMode_];
  v13 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor_];

  [v1 setScaleFactor_];

  return [v1 setPreferredFramesPerSecond_];
}

unint64_t sub_1BCCADD2C()
{
  result = qword_1EDA1C0D0;
  if (!qword_1EDA1C0D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA1C0D0);
  }

  return result;
}

uint64_t sub_1BCCADD70(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_1BCE19060();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BCE19470();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BCE193E0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE19390();
  sub_1BCE193A0();
  (*(v12 + 8))(v14, v11);
  sub_1BCCAEA94(&qword_1EDA1EBB8, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD8]);
  LOBYTE(v14) = sub_1BCE1D210();
  (*(v8 + 8))(v10, v7);
  if (v14)
  {
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = qword_1EDA1EFB8;
    v16 = sub_1BCE18B60();
  }

  else
  {
    sub_1BCE194F0();
    if (qword_1EDA1EF48 != -1)
    {
      swift_once();
    }

    v17 = sub_1BC9600B0(v6, a1, 2, qword_1EDA2F030, *algn_1EDA2F038);
    v19 = v18;
    v20 = *(v4 + 8);
    v20(v6, v3);
    sub_1BCE194F0();
    Date.weekday(in:)();
    v22 = v21;
    v20(v6, v3);
    switch(v22)
    {
      case 1:
        if (qword_1EDA1EFB0 != -1)
        {
          goto LABEL_23;
        }

        break;
      case 2:
        if (qword_1EDA1EFB0 != -1)
        {
          goto LABEL_23;
        }

        break;
      case 3:
        if (qword_1EDA1EFB0 != -1)
        {
          goto LABEL_23;
        }

        break;
      case 4:
        if (qword_1EDA1EFB0 != -1)
        {
          goto LABEL_23;
        }

        break;
      case 5:
        if (qword_1EDA1EFB0 != -1)
        {
          goto LABEL_23;
        }

        break;
      case 6:
        if (qword_1EDA1EFB0 != -1)
        {
          goto LABEL_23;
        }

        break;
      default:
        if (qword_1EDA1EFB0 != -1)
        {
LABEL_23:
          swift_once();
        }

        break;
    }

    swift_beginAccess();
    v23 = qword_1EDA1EFB8;
    sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880, &unk_1BCE483D0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1BCE3E050;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1BC9804E0();
    *(v24 + 32) = v17;
    *(v24 + 40) = v19;
    v16 = sub_1BCE1D250();
  }

  return v16;
}

uint64_t sub_1BCCAE598(uint64_t a1, uint64_t a2, void (*a3)(__n128))
{
  v4 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v8);
  LOBYTE(a3) = sub_1BCE19300();
  (*(v6 + 8))(v10, v4);
  return a3 & 1;
}

uint64_t sub_1BCCAE688(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BCE19BA0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BF10, &qword_1BCE5E700);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_1BCE19830();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCCAEA24(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1BC94F81C(v9, &qword_1EBD0BF10, &qword_1BCE5E700);
LABEL_6:
    v16 = 0;
    return v16 & 1;
  }

  (*(v11 + 32))(v13, v9, v10);
  v14 = sub_1BCE19810();
  if ((MEMORY[0x1BFB2BF60](v14, 0) & 1) == 0)
  {
    (*(v11 + 8))(v13, v10);
    goto LABEL_6;
  }

  (*(v4 + 104))(v6, *MEMORY[0x1E6984DB8], v3);
  sub_1BCCAEA94(&qword_1EBD0B958, MEMORY[0x1E6984DE0], MEMORY[0x1E6984DF0]);
  v15 = sub_1BCE1D210();
  (*(v4 + 8))(v6, v3);
  (*(v11 + 8))(v13, v10);
  v16 = v15 ^ 1;
  return v16 & 1;
}

uint64_t sub_1BCCAE950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (String.beginsWithFirstArgument.getter(a1, a2))
  {
    sub_1BC970820();
    return sub_1BCE1DB80();
  }

  else
  {
  }

  return a3;
}

uint64_t sub_1BCCAEA24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BF10, &qword_1BCE5E700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCCAEA94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BCCAEADC(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BC9F857C();
  v4 = v3;
  sub_1BC9F857C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 2;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42A0000042480000;
  *(a1 + 72) = 0;
  *(a1 + 80) = xmmword_1BCE3BEE0;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 128) = _Q0;
  *(a1 + 144) = _Q0;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = _Q0;
  *(a1 + 208) = _Q0;
  *(a1 + 224) = xmmword_1BCE3BF10;
  *(a1 + 240) = 0x41F0000040A00000;
  *(a1 + 248) = 1166843904;
  *(a1 + 256) = 0x3D23D70A3CA3D70ALL;
  *(a1 + 264) = 0x404D7252416522BCLL;
  *(a1 + 272) = 1101004800;
  *(a1 + 288) = _Q0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 1086324736;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = _Q0;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3EC1C9A8;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = _Q0;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = _Q0;
  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0x4094035940A00000;
  *(a1 + 624) = _Q0;
  *(a1 + 640) = _Q0;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F8000003F000000;
  *(a1 + 720) = 0x400000003FC00000;
  *(a1 + 728) = 0;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = xmmword_1BCE3BF50;
  *(a1 + 832) = 1077936128;
  *(a1 + 840) = 0x3F99999A3F866666;
  *(a1 + 848) = 0x4200000042000000;
  *(a1 + 856) = 3229614080;
  *(a1 + 864) = 0;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3BF60;
  *(a1 + 896) = 0x7970736957;
  *(a1 + 904) = 0xE500000000000000;
  strcpy((a1 + 912), "Wispy_Single");
  *(a1 + 925) = 0;
  *(a1 + 926) = -5120;
  *(a1 + 928) = 6;
  *(a1 + 944) = xmmword_1BCE3BF70;
  *(a1 + 960) = 1077936128;
  *(a1 + 968) = vdup_n_s32(0x3F99999Au);
  *(a1 + 976) = 0x4160000041500000;
  *(a1 + 984) = 1066192077;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3BF80;
  *(a1 + 1024) = 0x7970736957;
  *(a1 + 1032) = 0xE500000000000000;
  strcpy((a1 + 1040), "Wispy_Single");
  *(a1 + 1053) = 0;
  *(a1 + 1054) = -5120;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1077936128;
  *(a1 + 1096) = 0x4019999A400CCCCDLL;
  __asm { FMOV            V3.2S, #6.0 }

  *(a1 + 1104) = _D3;
  *(a1 + 1112) = 1061997773;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 3;
  *(a1 + 1136) = xmmword_1BCE3BF90;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE3BFA0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1376) = _Q0;
  *(a1 + 1392) = xmmword_1BCE3BFB0;
  *(a1 + 1408) = _Q0;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3BFD0;
  *(a1 + 1568) = 0x42B5FAE142458F5CLL;
  *(a1 + 1584) = xmmword_1BCE3BFE0;
  *(a1 + 1600) = xmmword_1BCE3BFF0;
  __asm { FMOV            V2.2S, #-15.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1638) = 0;
  *(a1 + 1631) = 0;
  *(v2 + 210) = 16777217;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 3;
  *(a1 + 1776) = xmmword_1BCE3C030;
  *(a1 + 1792) = xmmword_1BCE3C040;
  *(a1 + 1808) = xmmword_1BCE3C050;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3C070;
  *(a1 + 1984) = 0x3F80000041400000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

uint64_t UltravioletHourlyRectangularContentView.status.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UltravioletHourlyRectangularContentView(0);
  OUTLINED_FUNCTION_0_64();
  return sub_1BCCB1E70(v1 + v3, a1, v4);
}

uint64_t UltravioletHourlyRectangularContentView.init(status:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD079D0, &qword_1BCE40A70);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for UltravioletHourlyRectangularContentView(0);
  OUTLINED_FUNCTION_0_64();
  return sub_1BCCB1E10(a1, a2 + v4, v5);
}

uint64_t UltravioletHourlyRectangularContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v40[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BF18, &qword_1BCE5E748);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v40 - v4;
  v40[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BF20, &qword_1BCE5E750);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v40 - v7;
  v9 = type metadata accessor for UltravioletHourlyRectangularContentView.Content(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = type metadata accessor for UltravioletComplicationDataStatus(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = type metadata accessor for UltravioletComplicationViewModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  type metadata accessor for UltravioletHourlyRectangularContentView(0);
  OUTLINED_FUNCTION_0_64();
  sub_1BCCB1E70(v1 + v23, v17, v24);
  if (__swift_getEnumTagSinglePayload(v17, 2, v18))
  {
    sub_1BCCB1ED0(v17, type metadata accessor for UltravioletComplicationDataStatus);
    KeyPath = swift_getKeyPath();
    v26 = swift_getKeyPath();
    v43 = 0;
    v42 = 0;
    if (qword_1EBD07188 != -1)
    {
      OUTLINED_FUNCTION_5_4(&qword_1EBD07188);
    }

    __src[0] = KeyPath;
    LOBYTE(__src[1]) = v43;
    __src[2] = v26;
    memset(&__src[3], 0, 24);
    LOWORD(__src[6]) = v42;
    *&__src[7] = xmmword_1EBD0A568;
    __src[9] = qword_1EBD0A578;
    v27 = sub_1BCCB1D8C();
    sub_1BCE1C7E0();
    memcpy(__dst, __src, 0x50uLL);
    sub_1BCCB1DE0(__dst);
    (*(v3 + 16))(v8, v5, v2);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_67();
    sub_1BCCB259C(v28, v29, &unk_1BCE5E91C);
    __src[0] = &type metadata for UltravioletHourlyRectangularContentView.Placeholder;
    __src[1] = v27;
    OUTLINED_FUNCTION_3_7();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_7_1(OpaqueTypeConformance2);
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_1BCCB1E10(v17, v22, type metadata accessor for UltravioletComplicationViewModel);
    sub_1BCCB1E70(v22, v13 + *(v9 + 24), type metadata accessor for UltravioletComplicationViewModel);
    v32 = swift_getKeyPath();
    v33 = swift_getKeyPath();
    *v13 = v32;
    *(v13 + 8) = 0;
    *(v13 + 16) = v33;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    v34 = v13 + *(v9 + 28);
    if (qword_1EBD07188 != -1)
    {
      OUTLINED_FUNCTION_5_4(&qword_1EBD07188);
    }

    v35 = qword_1EBD0A578;
    *v34 = xmmword_1EBD0A568;
    *(v34 + 16) = v35;
    sub_1BCCB1E70(v13, v8, type metadata accessor for UltravioletHourlyRectangularContentView.Content);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_67();
    sub_1BCCB259C(v36, v37, &unk_1BCE5E91C);
    v38 = sub_1BCCB1D8C();
    __dst[0] = &type metadata for UltravioletHourlyRectangularContentView.Placeholder;
    __dst[1] = v38;
    OUTLINED_FUNCTION_3_7();
    v39 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_7_1(v39);
    sub_1BCCB1ED0(v13, type metadata accessor for UltravioletHourlyRectangularContentView.Content);
    return sub_1BCCB1ED0(v22, type metadata accessor for UltravioletComplicationViewModel);
  }
}

uint64_t sub_1BCCAF790()
{
  v1 = sub_1BCE1BC20();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_1BCE1D8C0();
    v6 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FC4(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

double sub_1BCCAF8D8()
{
  v1 = sub_1BCE1BC20();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    return *(v0 + 16);
  }

  sub_1BCE1D8C0();
  v10 = sub_1BCE1C1F0();
  sub_1BCE1AC20();

  sub_1BCE1BC10();
  swift_getAtKeyPath();
  sub_1BCA21FD0(v6, v5, v8, v7, 0);
  (*(v2 + 8))(v4, v1);
  return v11;
}

uint64_t sub_1BCCAFA58@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v31 = sub_1BCE1C100();
  v2 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BFE0, &qword_1BCE5EA48);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BFE8, &qword_1BCE5EA50);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BFF0, &qword_1BCE5EA58);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v29 - v12;
  v14 = sub_1BCE1BE00();
  v30 = type metadata accessor for UltravioletHourlyRectangularContentView.Content(0);
  v15 = *(v1 + *(v30 + 28) + 8);
  *v7 = v14;
  *(v7 + 1) = v15;
  v7[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BFF8, &qword_1BCE5EA60);
  sub_1BCCAFE30(v1, &v7[*(v16 + 44)]);
  v33 = v1;
  v17 = sub_1BCCB0BF4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = sub_1BCE1C250();
  v25 = &v7[*(v5 + 36)];
  *v25 = v24;
  *(v25 + 1) = v17;
  *(v25 + 2) = v19;
  *(v25 + 3) = v21;
  *(v25 + 4) = v23;
  v25[40] = 0;
  sub_1BCE1C0D0();
  v26 = sub_1BCCB21C0();
  sub_1BCE1C930();
  (*(v2 + 8))(v4, v31);
  sub_1BC94C05C(v7, &qword_1EBD0BFE0, &qword_1BCE5EA48);
  if (qword_1EDA17928 != -1)
  {
    swift_once();
  }

  v37 = xmmword_1EDA2EE90;
  v35 = v5;
  v36 = v26;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  sub_1BCE1C8E0();
  (*(v9 + 8))(v11, v8);
  *&v37 = sub_1BCA44ED4();
  *(&v37 + 1) = v27;
  sub_1BCE1B880();

  return sub_1BC94C05C(v13, &qword_1EBD0BFF0, &qword_1BCE5EA58);
}

uint64_t sub_1BCCAFE30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C018, &qword_1BCE5EA70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for UltravioletHourlyRectangularContentView.Content(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + *(v13 + 32));
  sub_1BCCB1E70(a1, v12, type metadata accessor for UltravioletHourlyRectangularContentView.Content);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v30 = swift_allocObject();
  sub_1BCCB1E10(v12, v30 + v14, type metadata accessor for UltravioletHourlyRectangularContentView.Content);
  type metadata accessor for UltravioletComplicationViewModel(0);
  if (qword_1EDA1BEA0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDA1BEA8;
  v16 = sub_1BCE1A060();
  v34 = v15;
  v17._rawValue = v15;
  ColorSpectrum.color(for:in:)(v17, v16);
  v19 = v18;
  v28 = v18;
  sub_1BCCB1E70(a1, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UltravioletHourlyRectangularContentView.Content);
  v20 = swift_allocObject();
  sub_1BCCB1E10(v12, v20 + v14, type metadata accessor for UltravioletHourlyRectangularContentView.Content);
  KeyPath = swift_getKeyPath();
  v29 = KeyPath;
  LOBYTE(v34) = 0;
  *v8 = sub_1BCE1BC90();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C020, &qword_1BCE5EA78);
  sub_1BCCB06D0(a1, &v8[*(v22 + 44)]);
  sub_1BC952ABC(v8, v5, &qword_1EBD0C018, &qword_1BCE5EA70);
  __src[0] = KeyPath;
  LOBYTE(__src[1]) = 0;
  v23 = v31;
  *(&__src[1] + 1) = v31;
  v24 = v30;
  __src[2] = sub_1BCCB2278;
  __src[3] = v30;
  __src[4] = v19;
  __src[5] = sub_1BCCB2438;
  __src[6] = v20;
  LOBYTE(__src[7]) = 0;
  __src[8] = 0;
  v25 = v32;
  memcpy(v32, __src, 0x48uLL);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C028, &unk_1BCE5EA80);
  sub_1BC952ABC(v5, v25 + *(v26 + 48), &qword_1EBD0C018, &qword_1BCE5EA70);
  sub_1BC952ABC(__src, &v34, &qword_1EBD087E8, &qword_1BCE4A210);
  sub_1BC94C05C(v8, &qword_1EBD0C018, &qword_1BCE5EA70);
  sub_1BC94C05C(v5, &qword_1EBD0C018, &qword_1BCE5EA70);
  v34 = v29;
  v35 = 0;
  v36 = v23;
  v37 = 0;
  v38 = sub_1BCCB2278;
  v39 = v24;
  v40 = v28;
  v41 = sub_1BCCB2438;
  v42 = v20;
  v43 = 0;
  v44 = 0;
  return sub_1BC94C05C(&v34, &qword_1EBD087E8, &qword_1BCE4A210);
}

void *sub_1BCCB0208@<X0>(void *a2@<X8>)
{
  if (qword_1EBD06FF8 != -1)
  {
    swift_once();
  }

  if (byte_1EBD2A139 == 1)
  {
    sub_1BCE1BC90();
    sub_1BCCB0520(__src);
  }

  else
  {
    type metadata accessor for UltravioletHourlyRectangularContentView.Content(0);
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_1EDA1EFB8;
    sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880, &unk_1BCE483D0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BCE3E050;
    type metadata accessor for UltravioletComplicationViewModel(0);
    v6 = sub_1BCA45518();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1BC9804E0();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_1BCE1D2B0();

    sub_1BC970820();
    v9 = sub_1BCE1DB60();
    v11 = v10;

    __src[0] = v9;
    __src[1] = v11;
    sub_1BCE1C6A0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08810, &unk_1BCE4A240);
  sub_1BC957184(&qword_1EBD08818, &qword_1EBD08810, &unk_1BCE4A240, MEMORY[0x1E69817F8]);
  sub_1BCE1BF60();
  return memcpy(a2, __src, 0x41uLL);
}

double sub_1BCCB0520@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for UltravioletHourlyRectangularContentView.Content(0);
  type metadata accessor for UltravioletComplicationViewModel(0);
  sub_1BCE1A070();
  sub_1BCE1A030();
  v3 = sub_1BCE1CBA0();
  sub_1BCA45518();
  sub_1BC970820();
  v4 = sub_1BCE1C6A0();
  v6 = v5;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v8 = v7 & 1;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;

  sub_1BCA81D10(v4, v6, v8);

  sub_1BC998CF4(v4, v6, v8);

  return result;
}

uint64_t sub_1BCCB0648@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UltravioletHourlyRectangularContentView.Content(0);
  type metadata accessor for UltravioletComplicationViewModel(0);
  sub_1BCE1A070();
  sub_1BCE1A020();
  sub_1BC970820();
  result = sub_1BCE1C6A0();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1BCCB06D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BFB8, qword_1BCE5EA00);
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  sub_1BCC74DE8(v24);
  v8 = a1 + *(type metadata accessor for UltravioletHourlyRectangularContentView.Content(0) + 24);
  __dst[0] = *(v8 + *(type metadata accessor for UltravioletComplicationViewModel(0) + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BA48, &qword_1BCE5C810);
  sub_1BC957184(&qword_1EBD0BFC0, &qword_1EBD0BA48, &qword_1BCE5C810, MEMORY[0x1E69E6340]);
  v9 = sub_1BCE1D700();
  v10 = *(v9 + 16);
  __dst[0] = 0;
  __dst[1] = v10;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD084C0, &qword_1BCE58550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BFC8, &qword_1BCE5EA38);
  sub_1BCA822E8();
  sub_1BC957184(&qword_1EBD0BFD0, &qword_1EBD0BFC8, &qword_1BCE5EA38, MEMORY[0x1E6981F48]);
  sub_1BCE1CE10();
  if (qword_1EBD07190 != -1)
  {
    swift_once();
  }

  v11 = qword_1EBD2A238;
  if (qword_1EBD07198 != -1)
  {
    swift_once();
  }

  v12 = qword_1EBD2A240;
  v13 = *(v3 + 16);
  v14 = v23;
  v15 = v21;
  v13(v23, v7, v21);
  memcpy(v25, v24, 0x60uLL);
  v25[12] = 0x3FF0000000000000;
  v16 = v22;
  memcpy(v22, v25, 0x68uLL);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C030, &qword_1BCE5EA90);
  v13(&v16[*(v17 + 48)], v14, v15);
  v18 = &v16[*(v17 + 64)];
  *v18 = v11;
  v18[1] = v12;

  sub_1BC952ABC(v25, __dst, &qword_1EBD08778, &unk_1BCE4A1B0);
  v19 = *(v3 + 8);

  v19(v7, v15);

  v19(v14, v15);
  memcpy(__dst, v24, 0x60uLL);
  __dst[12] = 0x3FF0000000000000;
  return sub_1BC94C05C(__dst, &qword_1EBD08778, &unk_1BCE4A1B0);
}

void sub_1BCCB0ADC(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (qword_1EBD07190 != -1)
  {
    swift_once();
  }

  v6 = qword_1EBD2A238;
  if (qword_1EBD07198 == -1)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  swift_once();
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5 < *(a2 + 16))
  {
    v7 = qword_1EBD2A240;

    sub_1BCC7BA0C(v8, 0, &v13);
    v9 = v13;
    v10 = v17;
    v11 = v14 & 1;
    *a3 = v6;
    *(a3 + 8) = v7;
    *(a3 + 16) = v9;
    *(a3 + 24) = v11;
    v12 = v16;
    *(a3 + 32) = v15;
    *(a3 + 48) = v12;
    *(a3 + 64) = v10;
    return;
  }

LABEL_9:
  __break(1u);
}

double sub_1BCCB0BF4()
{
  v1 = 0.0;
  if (sub_1BCCAF790())
  {
    v1 = *(v0 + *(type metadata accessor for UltravioletHourlyRectangularContentView.Content(0) + 28) + 16);
  }

  sub_1BCCAF8D8();
  sub_1BCCAF8D8();
  sub_1BCCAF8D8();
  return v1;
}

uint64_t sub_1BCCB0C5C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v28 = sub_1BCE1C100();
  v2 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BF68, &qword_1BCE5E9C0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BF70, &qword_1BCE5E9C8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BF78, &qword_1BCE5E9D0);
  MEMORY[0x1EEE9AC00](v29);
  v13 = &v28 - v12;
  memcpy(__dst, v1, 0x50uLL);
  v14 = sub_1BCE1BE00();
  v15 = __dst[8];
  *v7 = v14;
  *(v7 + 1) = v15;
  v7[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BF80, &qword_1BCE5E9D8);
  sub_1BCCB1044(__dst, &v7[*(v16 + 44)]);
  v17 = sub_1BCCB17F8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = sub_1BCE1C250();
  v25 = &v7[*(v5 + 36)];
  *v25 = v24;
  *(v25 + 1) = v17;
  *(v25 + 2) = v19;
  *(v25 + 3) = v21;
  *(v25 + 4) = v23;
  v25[40] = 0;
  sub_1BCE1C0D0();
  v26 = sub_1BCCB20C4();
  sub_1BCE1C930();
  (*(v2 + 8))(v4, v28);
  sub_1BC94C05C(v7, &qword_1EBD0BF68, &qword_1BCE5E9C0);
  if (qword_1EDA17928 != -1)
  {
    swift_once();
  }

  v33 = xmmword_1EDA2EE90;
  v31 = v5;
  v32 = v26;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  sub_1BCE1C8E0();
  (*(v9 + 8))(v11, v8);
  if (qword_1EDA17920 != -1)
  {
    swift_once();
  }

  v33 = xmmword_1EDA2EE80;
  sub_1BCE1B880();
  return sub_1BC94C05C(v13, &qword_1EBD0BF78, &qword_1BCE5E9D0);
}

double sub_1BCCB1044@<D0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BFA0, &qword_1BCE5E9E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  if (a1[49])
  {
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = qword_1EDA1EFB8;
    v11 = sub_1BCE18B60();
    v13 = v12;

    v20[1] = v11;
    v20[2] = v13;
    sub_1BC970820();
    v14 = sub_1BCE1DB60();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *v9 = sub_1BCE1BC90();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BFA8, &qword_1BCE5E9F0);
  sub_1BCCB12B4(a1, &v9[*(v17 + 44)]);
  sub_1BC952ABC(v9, v6, &qword_1EBD0BFA0, &qword_1BCE5E9E8);
  *a2 = v14;
  a2[1] = v16;
  a2[2] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BFB0, &qword_1BCE5E9F8);
  sub_1BC952ABC(v6, a2 + *(v18 + 48), &qword_1EBD0BFA0, &qword_1BCE5E9E8);

  sub_1BC94C05C(v9, &qword_1EBD0BFA0, &qword_1BCE5E9E8);
  sub_1BC94C05C(v6, &qword_1EBD0BFA0, &qword_1BCE5E9E8);

  return result;
}

uint64_t sub_1BCCB12B4@<X0>(const void *a1@<X0>, char *a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BFB8, qword_1BCE5EA00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = sub_1BCE19470();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE19460();
  v13 = sub_1BCCE0F9C();
  (*(v10 + 8))(v12, v9);
  v27[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BA48, &qword_1BCE5C810);
  sub_1BC957184(&qword_1EBD0BFC0, &qword_1EBD0BA48, &qword_1BCE5C810, MEMORY[0x1E69E6340]);
  v14 = sub_1BCE1D700();

  v15 = *(v14 + 16);
  v28 = 0;
  v29 = v15;
  swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  memcpy((v16 + 24), a1, 0x50uLL);
  sub_1BCCB2188(a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD084C0, &qword_1BCE58550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BFC8, &qword_1BCE5EA38);
  sub_1BCA822E8();
  sub_1BC957184(&qword_1EBD0BFD0, &qword_1EBD0BFC8, &qword_1BCE5EA38, MEMORY[0x1E6981F48]);
  sub_1BCE1CE10();
  if (qword_1EBD07190 != -1)
  {
    swift_once();
  }

  v17 = qword_1EBD2A238;
  if (qword_1EBD07198 != -1)
  {
    swift_once();
  }

  v18 = qword_1EBD2A240;
  v19 = *(v4 + 16);
  v20 = v25;
  v19(v25, v8, v3);
  v21 = v26;
  v19(v26, v20, v3);
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BFD8, &qword_1BCE5EA40) + 48)];
  *v22 = v17;
  v22[1] = v18;
  v23 = *(v4 + 8);
  swift_retain_n();
  v23(v8, v3);

  return (v23)(v20, v3);
}

void sub_1BCCB16D0(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  if (qword_1EBD07190 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBD2A238;
  if (qword_1EBD07198 == -1)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  swift_once();
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v7 < *(a2 + 16))
  {
    v9 = qword_1EBD2A240;
    v10 = *(a3 + 49);

    sub_1BCC7BA0C(v11, v10, &v16);
    v12 = v16;
    v13 = v20;
    v14 = v17 & 1;
    *a4 = v8;
    *(a4 + 8) = v9;
    *(a4 + 16) = v12;
    *(a4 + 24) = v14;
    v15 = v19;
    *(a4 + 32) = v18;
    *(a4 + 48) = v15;
    *(a4 + 64) = v13;
    return;
  }

LABEL_9:
  __break(1u);
}

double sub_1BCCB17F8()
{
  v1 = sub_1BCE1BC20();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 72);
  if (*(v0 + 8) == 1)
  {
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if (!v10)
      {

        sub_1BCE1D8C0();
        v20 = sub_1BCE1C1F0();
        sub_1BCE1AC20();

        sub_1BCE1BC10();
        swift_getAtKeyPath();
        sub_1BCA21FD0(v7, v6, v8, v9, 0);
        v21 = *(v2 + 8);
        v21(v4, v1);

        sub_1BCE1D8C0();
        v22 = sub_1BCE1C1F0();
        sub_1BCE1AC20();

        sub_1BCE1BC10();
        swift_getAtKeyPath();
        sub_1BCA21FD0(v7, v6, v8, v9, 0);
        v21(v4, v1);

        sub_1BCE1D8C0();
        v23 = sub_1BCE1C1F0();
        sub_1BCE1AC20();

        sub_1BCE1BC10();
        swift_getAtKeyPath();
        sub_1BCA21FD0(v7, v6, v8, v9, 0);
        v21(v4, v1);
      }

      return 0.0;
    }
  }

  else
  {
    v30 = *(v0 + 48);

    sub_1BCE1D8C0();
    v12 = v4;
    v13 = v7;
    v14 = v2;
    v15 = v1;
    v16 = v6;
    v17 = v8;
    v18 = v9;
    v19 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    v9 = v18;
    v8 = v17;
    v6 = v16;
    v1 = v15;
    v2 = v14;
    v7 = v13;
    v4 = v12;
    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FC4(v5, 0);
    (*(v2 + 8))(v12, v1);
    v10 = v30;
    if (v31 != 1)
    {
      goto LABEL_3;
    }
  }

  if (!v10)
  {

    sub_1BCE1D8C0();
    v24 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FD0(v7, v6, v8, v9, 0);
    v25 = *(v2 + 8);
    v25(v4, v1);

    sub_1BCE1D8C0();
    v26 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FD0(v7, v6, v8, v9, 0);
    v25(v4, v1);

    sub_1BCE1D8C0();
    v27 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FD0(v7, v6, v8, v9, 0);
    v25(v4, v1);
  }

  return v11;
}

unint64_t sub_1BCCB1D8C()
{
  result = qword_1EBD0BF28;
  if (!qword_1EBD0BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BF28);
  }

  return result;
}

uint64_t sub_1BCCB1E10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1BCCB1E70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BCCB1ED0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1BCCB1F6C()
{
  result = qword_1EBD0BF48;
  if (!qword_1EBD0BF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0BF50, &qword_1BCE5E848);
    sub_1BCCB259C(&qword_1EBD0BF30, type metadata accessor for UltravioletHourlyRectangularContentView.Content, &unk_1BCE5E91C);
    sub_1BCCB1D8C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BF48);
  }

  return result;
}

unint64_t sub_1BCCB20C4()
{
  result = qword_1EBD0BF88;
  if (!qword_1EBD0BF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0BF68, &qword_1BCE5E9C0);
    sub_1BC957184(&qword_1EBD0BF90, &qword_1EBD0BF98, &qword_1BCE5E9E0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BF88);
  }

  return result;
}

unint64_t sub_1BCCB21C0()
{
  result = qword_1EBD0C000;
  if (!qword_1EBD0C000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0BFE0, &qword_1BCE5EA48);
    sub_1BC957184(&qword_1EBD0C008, &qword_1EBD0C010, &qword_1BCE5EA68, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C000);
  }

  return result;
}

void *sub_1BCCB2278()
{
  v0 = *(type metadata accessor for UltravioletHourlyRectangularContentView.Content(0) - 8);
  OUTLINED_FUNCTION_7_22(*(v0 + 80));

  return sub_1BCCB0208(v1);
}

uint64_t objectdestroy_28Tm()
{
  v1 = (type metadata accessor for UltravioletHourlyRectangularContentView.Content(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_1BCA21FC4(*(v0 + v3), *(v0 + v3 + 8));
  sub_1BCA21FD0(*(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40), *(v0 + v3 + 48));
  v5 = v0 + v3 + v1[8];
  v6 = type metadata accessor for UltravioletComplicationViewModel(0);
  v7 = *(v6 + 20);
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v5 + v7);
  v9 = *(v6 + 24);
  sub_1BCE1A080();
  OUTLINED_FUNCTION_4();
  (*(v10 + 8))(v5 + v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BCCB2438()
{
  v0 = *(type metadata accessor for UltravioletHourlyRectangularContentView.Content(0) - 8);
  OUTLINED_FUNCTION_7_22(*(v0 + 80));

  return sub_1BCCB0648(v1);
}

unint64_t sub_1BCCB24A4()
{
  result = qword_1EBD0C038;
  if (!qword_1EBD0C038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0BF78, &qword_1BCE5E9D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0BF68, &qword_1BCE5E9C0);
    sub_1BCCB20C4();
    swift_getOpaqueTypeConformance2();
    sub_1BCCB259C(&qword_1EDA1EE68, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C038);
  }

  return result;
}

uint64_t sub_1BCCB259C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BCCB25E4()
{
  result = qword_1EBD0C040;
  if (!qword_1EBD0C040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0BFF0, &qword_1BCE5EA58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0BFE0, &qword_1BCE5EA48);
    sub_1BCCB21C0();
    swift_getOpaqueTypeConformance2();
    sub_1BCCB259C(&qword_1EDA1EE68, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C040);
  }

  return result;
}

uint64_t sub_1BCCB26E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1BCCB2724(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BCCB27B4@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  *a1 = sub_1BCE1CEE0();
  a1[1] = v3;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C048, &qword_1BCE5EB90) + 44);
  *v4 = sub_1BCE1BC90();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C050, &qword_1BCE5EB98);
  return sub_1BCCB2840(__dst, &v4[*(v5 + 44)]);
}

uint64_t sub_1BCCB2840@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C058, &qword_1BCE5EBA0);
  MEMORY[0x1EEE9AC00](v65);
  v4 = &v62 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C060, &qword_1BCE5EBA8);
  v74 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v75 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v62 - v7;
  v63 = sub_1BCE1C100();
  v8 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C068, &qword_1BCE5EBB0);
  v73 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C070, &qword_1BCE5EBB8);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  v62 = a1;
  sub_1BCCB2F60(a1, &v62 - v18);
  v20 = sub_1BCE1C280();
  sub_1BCE1B4A0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C078, &qword_1BCE5EBC0) + 36)];
  v70 = v19;
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = sub_1BCE1C290();
  sub_1BCE1B4A0();
  v31 = &v19[*(v15 + 44)];
  *v31 = v30;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  v36 = sub_1BCE1BE00();
  v78 = 1;
  sub_1BCCB34E0(a1, v81);
  memcpy(v79, v81, 0xD3uLL);
  memcpy(v80, v81, 0xD3uLL);
  sub_1BCA92D58(v79, v76, &qword_1EBD0C080, &qword_1BCE5EBC8);
  sub_1BC94C0B4(v80, &qword_1EBD0C080, &qword_1BCE5EBC8);
  memcpy(&v77[7], v79, 0xD3uLL);
  v76[0] = v36;
  v76[1] = 0;
  LOBYTE(v76[2]) = v78;
  memcpy(&v76[2] + 1, v77, 0xDAuLL);
  sub_1BCE1C0E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C088, &qword_1BCE5EBD0);
  sub_1BC957184(&qword_1EBD0C090, &qword_1EBD0C088, &qword_1BCE5EBD0, MEMORY[0x1E6981870]);
  sub_1BCE1C930();
  v37 = *(v8 + 8);
  v38 = v63;
  v37(v10, v63);
  memcpy(v81, v76, 0xEBuLL);
  sub_1BC94C0B4(v81, &qword_1EBD0C088, &qword_1BCE5EBD0);
  *v4 = sub_1BCE1BE10();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C098, &qword_1BCE5EBD8);
  sub_1BCCB39C4(v62, &v4[*(v39 + 44)]);
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C0A0, &qword_1BCE5EBE0) + 36)] = 0x3FF0000000000000;
  LOBYTE(v36) = sub_1BCE1C290();
  sub_1BCE1B4A0();
  v40 = &v4[*(v65 + 36)];
  *v40 = v36;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  sub_1BCE1C0E0();
  sub_1BCCB3FEC();
  v45 = v72;
  sub_1BCE1C930();
  v37(v10, v38);
  sub_1BC94C0B4(v4, &qword_1EBD0C058, &qword_1BCE5EBA0);
  v46 = v69;
  sub_1BCA92D58(v70, v69, &qword_1EBD0C070, &qword_1BCE5EBB8);
  v47 = *(v73 + 16);
  v48 = v71;
  v49 = v64;
  v47(v71, v68, v64);
  v50 = *(v74 + 16);
  v51 = v45;
  v52 = v66;
  v50(v75, v51, v66);
  v53 = v46;
  v54 = v67;
  sub_1BCA92D58(v53, v67, &qword_1EBD0C070, &qword_1BCE5EBB8);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C0C8, &qword_1BCE5EBF8);
  v47((v54 + v55[12]), v48, v49);
  v56 = v54 + v55[16];
  *v56 = 0x4020000000000000;
  *(v56 + 8) = 0;
  v57 = v54 + v55[20];
  v58 = v75;
  v50(v57, v75, v52);
  v59 = *(v74 + 8);
  v59(v72, v52);
  v60 = *(v73 + 8);
  v60(v68, v49);
  sub_1BC94C0B4(v70, &qword_1EBD0C070, &qword_1BCE5EBB8);
  v59(v58, v52);
  v60(v71, v49);
  return sub_1BC94C0B4(v69, &qword_1EBD0C070, &qword_1BCE5EBB8);
}

uint64_t sub_1BCCB2F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C0E0, &unk_1BCE5EC80);
  MEMORY[0x1EEE9AC00](v38);
  v5 = v35 - v4;
  v6 = sub_1BCE1CBB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD093E8, &unk_1BCE4EA20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v35 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C0E8, &qword_1BCE5EC90);
  MEMORY[0x1EEE9AC00](v36);
  v14 = v35 - v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C0F0, &qword_1BCE5EC98);
  MEMORY[0x1EEE9AC00](v37);
  v16 = v35 - v15;
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {

    sub_1BCE1CBA0();
    v20 = *MEMORY[0x1E6981688];
    v21 = sub_1BCE1CBF0();
    v35[1] = a2;
    v22 = v21;
    (*(*(v21 - 8) + 104))(v12, v20, v21);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v22);
    sub_1BCE1CBC0();

    sub_1BC94C0B4(v12, &qword_1EBD093E8, &unk_1BCE4EA20);
    (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
    v23 = sub_1BCE1CC10();

    (*(v7 + 8))(v9, v6);
    v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C0F8, &unk_1BCE5ECA0) + 36)];
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09430, &qword_1BCE4EA60) + 28);
    v26 = *MEMORY[0x1E69816C0];
    v27 = sub_1BCE1CC00();
    (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
    *v24 = swift_getKeyPath();
    *v14 = v23;
    *(v14 + 1) = 0;
    *(v14 + 8) = 1;
    sub_1BCE1CEE0();
    sub_1BCE1B610();
    v28 = &v14[*(v36 + 36)];
    v29 = v43;
    *v28 = v42;
    *(v28 + 1) = v29;
    *(v28 + 2) = v44;
    sub_1BCCB41CC();
    sub_1BCE1C840();
    sub_1BC94C0B4(v14, &qword_1EBD0C0E8, &qword_1BCE5EC90);
    sub_1BCA92D58(v16, v5, &qword_1EBD0C0F0, &qword_1BCE5EC98);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C110, &qword_1BCE5ECE8);
    sub_1BCCB4310();
    sub_1BCCB439C();
    sub_1BCE1BF60();
    return sub_1BC94C0B4(v16, &qword_1EBD0C0F0, &qword_1BCE5EC98);
  }

  else
  {
    sub_1BCE1CEE0();
    sub_1BCE1B610();
    v31 = v42;
    v32 = BYTE8(v42);
    v33 = v43;
    v34 = BYTE8(v43);
    v41 = 1;
    v40 = BYTE8(v42);
    v39 = BYTE8(v43);
    *v5 = 0;
    v5[8] = 1;
    *(v5 + 2) = v31;
    v5[24] = v32;
    *(v5 + 4) = v33;
    v5[40] = v34;
    *(v5 + 3) = v44;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C110, &qword_1BCE5ECE8);
    sub_1BCCB4310();
    sub_1BCCB439C();
    return sub_1BCE1BF60();
  }
}

void sub_1BCCB34E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[14];
  v2 = a1[15];
  v63 = a1[16];
  [v3 wu:32.0 scaledValueForValue:?];
  v5 = v4;
  sub_1BC970820();

  v6 = sub_1BCE1C6A0();
  v8 = v7;
  v10 = v9;
  v11 = v3;
  sub_1BCE1C4A0();
  v12 = sub_1BCE1C610();
  v66 = v13;
  v67 = v12;
  v65 = v14;
  v68 = v15;
  sub_1BC998CF4(v6, v8, v10 & 1);

  KeyPath = swift_getKeyPath();
  [v2 wu:20.0 scaledValueForValue:?];
  v17 = v16;

  v18 = sub_1BCE1C6A0();
  v20 = v19;
  v22 = v21;
  v23 = v2;
  sub_1BCE1C4A0();
  v24 = sub_1BCE1C610();
  v26 = v25;
  v28 = v27;
  sub_1BC998CF4(v18, v20, v22 & 1);

  v57 = objc_opt_self();
  v29 = [v57 labelColor];
  v30 = [v29 colorWithAlphaComponent_];

  sub_1BCE1CA20();
  v31 = sub_1BCE1C5C0();
  v60 = v32;
  v61 = v31;
  v59 = v33;
  v62 = v34;

  sub_1BC998CF4(v24, v26, v28 & 1);

  v58 = swift_getKeyPath();
  [v63 wu:16.0 scaledValueForValue:?];
  v36 = v35;

  v37 = sub_1BCE1C6A0();
  v39 = v38;
  v41 = v40;
  v42 = v63;
  sub_1BCE1C4A0();
  v43 = sub_1BCE1C610();
  v45 = v44;
  v47 = v46;
  sub_1BC998CF4(v37, v39, v41 & 1);

  v48 = [v57 labelColor];
  v49 = [v48 colorWithAlphaComponent_];

  sub_1BCE1CA20();
  v50 = sub_1BCE1C5C0();
  v52 = v51;
  LOBYTE(v39) = v53;
  v55 = v54;

  sub_1BC998CF4(v43, v45, v47 & 1);

  [v42 wu:20.0 scaledValueForValue:?];
  v98 = v5;
  v99 = 0;
  v100 = 256;
  v91 = v67;
  v92 = v66;
  v93 = v65 & 1;
  v94 = v68;
  v95 = KeyPath;
  v96 = 1;
  v97 = 0;
  v101[0] = &v98;
  v101[1] = &v91;
  v88 = v17;
  v89 = 0;
  v90 = 256;
  v81 = v61;
  v82 = v60;
  v83 = v59 & 1;
  v84 = v62;
  v85 = v58;
  v86 = 1;
  v87 = 0;
  v101[2] = &v88;
  v101[3] = &v81;
  v78 = v36;
  v79 = 0;
  v80 = 256;
  v73 = v50;
  v74 = v52;
  v75 = v39 & 1;
  v76 = v55;
  v77 = 256;
  v101[4] = &v78;
  v101[5] = &v73;
  v70 = v56;
  v71 = 0;
  v72 = 256;
  v101[6] = &v70;
  sub_1BCBB4248(v101, a2);
  sub_1BC998CF4(v73, v74, v75);

  sub_1BC998CF4(v81, v82, v83);

  sub_1BC998CF4(v91, v92, v93);
}

void sub_1BCCB39C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C0D0, &unk_1BCE5EC00);
  MEMORY[0x1EEE9AC00](v72);
  v4 = &v63 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A8E0, &qword_1BCE56588);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v74 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v63 - v8;
  v9 = *(a1 + 112);
  v10 = *(a1 + 120);
  v11 = *(a1 + 136);
  v67 = *(a1 + 144);
  [v9 wu:32.0 scaledValueForValue:?];
  v13 = v12;
  [v10 &selRef:20.0 addQuad:?];
  v15 = v14;
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v18 = *(a1 + 80);
  v96 = *(a1 + 96);
  v97 = v18;
  v82 = v16;
  v83 = v17;
  sub_1BC970820();

  v19 = sub_1BCE1C6A0();
  v21 = v20;
  v23 = v22;
  v24 = v11;
  sub_1BCE1C4A0();
  v25 = sub_1BCE1C610();
  v27 = v26;
  v29 = v28;
  v30 = v23 & 1;
  v31 = v67;
  sub_1BC998CF4(v19, v21, v30);

  v32 = objc_opt_self();
  v33 = [v32 labelColor];
  sub_1BCE1CA20();
  v70 = sub_1BCE1C5C0();
  v69 = v34;
  v68 = v35;
  v71 = v36;

  v37 = v27;
  v38 = &selRef_initWithName_isContinuous_dataPoints_;
  sub_1BC998CF4(v25, v37, v29 & 1);

  KeyPath = swift_getKeyPath();
  [v31 wu:16.0 scaledValueForValue:?];
  v41 = v40;
  v99 = v97;
  v42 = *(&v97 + 1);
  if (*(&v97 + 1) && (v98 = v96, (v43 = *(&v96 + 1)) != 0))
  {
    v66 = v98;
    v65 = v99;
    sub_1BCA92D58(&v99, &v82, &qword_1EBD0C0D8, &qword_1BCE5EC40);
    sub_1BCA92D58(&v98, &v82, &qword_1EBD0C0D8, &qword_1BCE5EC40);
    v44 = v31;
    v64 = sub_1BCE1C4A0();
    v45 = [v32 labelColor];
    v46 = [v45 colorWithAlphaComponent_];

    v47 = sub_1BCE1CA20();
    v48 = sub_1BCE1CF00();
    v50 = v49;
    v51 = v31;
    v52 = sub_1BCE1CAB0();
    v53 = *(type metadata accessor for TemperatureHighLowText(0) + 52);
    *&v4[v53] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08430, &unk_1BCE4DAD0);
    swift_storeEnumTagMultiPayload();
    *v4 = v65;
    *(v4 + 1) = v42;
    *(v4 + 2) = v66;
    *(v4 + 3) = v43;
    *(v4 + 5) = v52;
    *(v4 + 6) = v47;
    v4[56] = 0;
    *(v4 + 8) = v48;
    *(v4 + 9) = v50;
    v4[80] = 0;
    *(v4 + 11) = 0;
    *(v4 + 4) = v64;
    v31 = v51;
    v38 = &selRef_initWithName_isContinuous_dataPoints_;
    v54 = swift_getKeyPath();
    v55 = v72;
    v56 = &v4[*(v72 + 36)];
    *v56 = v54;
    *(v56 + 1) = 1;
    v56[16] = 0;
    v57 = v4;
    v58 = v73;
    sub_1BCCB415C(v57, v73);
    v59 = 0;
  }

  else
  {
    v59 = 1;
    v58 = v73;
    v55 = v72;
  }

  __swift_storeEnumTagSinglePayload(v58, v59, 1, v55);
  [v31 v38[15]];
  v61 = v60;
  v92 = v13;
  v93 = 0;
  v94 = 256;
  v89 = v15;
  v90 = 0;
  v91 = 256;
  v95[0] = &v92;
  v95[1] = &v89;
  v82 = v70;
  v83 = v69;
  v84 = v68 & 1;
  v85 = v71;
  v86 = KeyPath;
  v87 = 1;
  v88 = 0;
  v79 = v41;
  v80 = 0;
  v81 = 256;
  v95[2] = &v82;
  v95[3] = &v79;
  v62 = v74;
  sub_1BCA92D58(v58, v74, &qword_1EBD0A8E0, &qword_1BCE56588);
  v76 = v61;
  v77 = 0;
  v78 = 256;
  v95[4] = v62;
  v95[5] = &v76;
  sub_1BCBB4430(v95, v75);
  sub_1BC94C0B4(v58, &qword_1EBD0A8E0, &qword_1BCE56588);
  sub_1BC94C0B4(v62, &qword_1EBD0A8E0, &qword_1BCE56588);
  sub_1BC998CF4(v82, v83, v84);
}

unint64_t sub_1BCCB3FEC()
{
  result = qword_1EBD0C0A8;
  if (!qword_1EBD0C0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C058, &qword_1BCE5EBA0);
    sub_1BCCB4078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C0A8);
  }

  return result;
}

unint64_t sub_1BCCB4078()
{
  result = qword_1EBD0C0B0;
  if (!qword_1EBD0C0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C0A0, &qword_1BCE5EBE0);
    sub_1BC957184(&qword_1EBD0C0B8, &qword_1EBD0C0C0, &unk_1BCE5EBE8, MEMORY[0x1E6981870]);
    sub_1BC957184(&qword_1EDA1E9B8, &qword_1EBD07E70, &qword_1BCE563F0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C0B0);
  }

  return result;
}

uint64_t sub_1BCCB415C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C0D0, &unk_1BCE5EC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BCCB41CC()
{
  result = qword_1EBD0C100;
  if (!qword_1EBD0C100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C0E8, &qword_1BCE5EC90);
    sub_1BCCB4258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C100);
  }

  return result;
}

unint64_t sub_1BCCB4258()
{
  result = qword_1EBD0C108;
  if (!qword_1EBD0C108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C0F8, &unk_1BCE5ECA0);
    sub_1BCC0D960();
    sub_1BC957184(&qword_1EDA1B698, &qword_1EBD09430, &qword_1BCE4EA60, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C108);
  }

  return result;
}

unint64_t sub_1BCCB4310()
{
  result = qword_1EBD0C118;
  if (!qword_1EBD0C118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C0F0, &qword_1BCE5EC98);
    sub_1BCCB41CC();
    sub_1BC99B7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C118);
  }

  return result;
}

unint64_t sub_1BCCB439C()
{
  result = qword_1EDA1B9A8;
  if (!qword_1EDA1B9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C110, &qword_1BCE5ECE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B9A8);
  }

  return result;
}

void sub_1BCCB4420(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA4A544();
  v4 = v3;
  sub_1BCA4A544();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 5;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42A0000042480000;
  *(a1 + 72) = 0xC3AF000000000000;
  *(a1 + 80) = xmmword_1BCE43900;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 128) = _Q0;
  *(a1 + 144) = _Q0;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = _Q0;
  *(a1 + 208) = _Q0;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  *(a1 + 288) = _Q0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = _Q0;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3EC1C9A8;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = _Q0;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = _Q0;
  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0x40E0000040C00000;
  *(a1 + 624) = _Q0;
  *(a1 + 640) = _Q0;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40C0000040400000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F8000003F000000;
  *(a1 + 720) = 0x401333333FDCCCCDLL;
  *(a1 + 728) = 0;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = xmmword_1BCE3BF50;
  *(a1 + 832) = 1077936128;
  *(a1 + 840) = vdup_n_s32(0x3F666666u);
  *(a1 + 848) = 0x4218000042100000;
  *(a1 + 856) = 3228202736;
  *(a1 + 864) = 0;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE43910;
  *(a1 + 896) = 0x7970736957;
  *(a1 + 904) = 0xE500000000000000;
  strcpy((a1 + 912), "Wispy_Single");
  *(a1 + 925) = 0;
  *(a1 + 926) = -5120;
  *(a1 + 928) = 6;
  *(a1 + 944) = xmmword_1BCE3BF70;
  *(a1 + 960) = 1077936128;
  *(a1 + 968) = vdup_n_s32(0x3F99999Au);
  *(a1 + 976) = 0x41C0000041900000;
  *(a1 + 984) = 3232313200;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE43920;
  *(a1 + 1024) = 0x7970736957;
  *(a1 + 1032) = 0xE500000000000000;
  strcpy((a1 + 1040), "Wispy_Single");
  *(a1 + 1053) = 0;
  *(a1 + 1054) = -5120;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1077936128;
  __asm { FMOV            V2.2S, #1.5 }

  *(a1 + 1096) = _D2;
  *(a1 + 1104) = 0x4140000041000000;
  *(a1 + 1112) = 1063039165;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 3;
  *(a1 + 1136) = xmmword_1BCE3F040;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE48830;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1376) = _Q0;
  *(a1 + 1392) = xmmword_1BCE3BFB0;
  *(a1 + 1408) = _Q0;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3BFD0;
  *(a1 + 1568) = 0x42B5FAE142458F5CLL;
  *(a1 + 1584) = xmmword_1BCE3BFE0;
  *(a1 + 1600) = xmmword_1BCE3BFF0;
  __asm { FMOV            V3.2S, #-15.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1644) = 0;
  *(a1 + 1628) = 0u;
  *(v2 + 210) = 16777217;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 6;
  *(a1 + 1776) = xmmword_1BCE3C030;
  *(a1 + 1792) = xmmword_1BCE3C040;
  *(a1 + 1808) = xmmword_1BCE3C050;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107820544;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE403A0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x407333333FB33333;
  *(a1 + 2008) = 0x408000004019999ALL;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 7;
  *(a1 + 2208) = 0x40F478343FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE43930;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

uint64_t HumidityComplicationDailyViewModel.init(current:daily:date:timeZone:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1BCE19080();
  v14 = type metadata accessor for HumidityComplicationDailyViewModel(0);
  v15 = a7 + v14[5];
  *v15 = a1;
  *(v15 + 8) = a2 & 1;
  v16 = a7 + v14[6];
  *v16 = a3;
  *(v16 + 8) = a4 & 1;
  v17 = v14[7];
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  (*(v18 + 32))(a7 + v17, a5);
  v19 = v14[8];
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  v21 = *(v20 + 32);

  return v21(a7 + v19, a6);
}

uint64_t type metadata accessor for HumidityComplicationDailyViewModel(uint64_t a1)
{
  result = qword_1EBD0C148;
  if (!qword_1EBD0C148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCCB4C94(uint64_t a1)
{
  v1 = type metadata accessor for HumidityComplicationDailyViewModel(0);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  sub_1BCE197B0();
  sub_1BCD85BA4(v14, 0, 6);
  v16 = v15;
  (*(v10 + 8))(v14, v8);
  v17 = *(v16 + 16);
  if (v17)
  {
    v19 = *(v10 + 16);
    v18 = v10 + 16;
    v20 = v16 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v28 = *(v18 + 56);
    v29 = v19;
    v21 = MEMORY[0x1E69E7CC0];
    do
    {
      v29(v7 + v1[7], v20, v8);
      sub_1BCE19460();
      sub_1BCE19080();
      v22 = v7 + v1[5];
      *v22 = 0;
      *(v22 + 8) = 1;
      v23 = v7 + v1[6];
      *v23 = 0;
      *(v23 + 8) = 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BCB65AB0();
        v21 = v25;
      }

      v24 = *(v21 + 16);
      if (v24 >= *(v21 + 24) >> 1)
      {
        sub_1BCB65AB0();
        v21 = v26;
      }

      *(v21 + 16) = v24 + 1;
      sub_1BCADBA60(v7, v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v24);
      v20 += v28;
      --v17;
    }

    while (v17);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v21;
}

uint64_t HumidityComplicationDailyViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1BCE19090();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t HumidityComplicationDailyViewModel.id.setter(uint64_t a1)
{
  sub_1BCE19090();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t HumidityComplicationDailyViewModel.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HumidityComplicationDailyViewModel(0) + 28);
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t HumidityComplicationDailyViewModel.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HumidityComplicationDailyViewModel(0) + 32);
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t static HumidityComplicationDailyViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1BCE19070())
  {
    type metadata accessor for HumidityComplicationDailyViewModel(0);
    OUTLINED_FUNCTION_12_41();
    if (v3)
    {
      if (!v2)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_4();
      if (v4)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_12_41();
    if (v6)
    {
      if (!v5)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_4();
      if (v7)
      {
        return 0;
      }
    }

    if (sub_1BCE19010())
    {

      JUMPOUT(0x1BFB2BB80);
    }
  }

  return 0;
}

uint64_t sub_1BCCB51F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x796C696164 && a2 == 0xE500000000000000;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702125924 && a2 == 0xE400000000000000;
        if (v8 || (sub_1BCE1E090() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1BCE1E090();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1BCCB538C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x746E6572727563;
      break;
    case 2:
      result = 0x796C696164;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 0x656E6F5A656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCCB5418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCCB51F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCCB5440(uint64_t a1)
{
  v2 = sub_1BCCB5724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCCB547C(uint64_t a1)
{
  v2 = sub_1BCCB5724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HumidityComplicationDailyViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C130, &qword_1BCE5ED20);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCCB5724();
  sub_1BCE1E170();
  v24 = 0;
  sub_1BCE19090();
  OUTLINED_FUNCTION_4_57();
  sub_1BCCB5D10(v11, v12, MEMORY[0x1E69695B0]);
  OUTLINED_FUNCTION_6_48(v3, &v24);
  if (!v2)
  {
    v13 = type metadata accessor for HumidityComplicationDailyViewModel(0);
    OUTLINED_FUNCTION_9_43(v3 + v13[5]);
    v23[2] = 1;
    sub_1BCE1DFB0();
    OUTLINED_FUNCTION_9_43(v3 + v13[6]);
    v23[1] = 2;
    sub_1BCE1DFB0();
    v14 = v13[7];
    v23[0] = 3;
    sub_1BCE19060();
    OUTLINED_FUNCTION_5_52();
    sub_1BCCB5D10(v15, v16, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_6_48(v3 + v14, v23);
    v17 = v13[8];
    v22 = 4;
    sub_1BCE19470();
    OUTLINED_FUNCTION_3_68();
    sub_1BCCB5D10(v18, v19, MEMORY[0x1E6969BC8]);
    OUTLINED_FUNCTION_6_48(v3 + v17, &v22);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1BCCB5724()
{
  result = qword_1EBD0C138;
  if (!qword_1EBD0C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C138);
  }

  return result;
}

uint64_t HumidityComplicationDailyViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v49 = sub_1BCE19470();
  OUTLINED_FUNCTION_2();
  v47 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v50 = v6 - v5;
  v54 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v52 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = sub_1BCE19090();
  OUTLINED_FUNCTION_2();
  v51 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v55 = v16 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C140, &qword_1BCE5ED28);
  OUTLINED_FUNCTION_2();
  v53 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v21 = type metadata accessor for HumidityComplicationDailyViewModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCCB5724();
  v56 = v20;
  v26 = v58;
  sub_1BCE1E160();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v11;
  v58 = v25;
  v29 = v51;
  v28 = v52;
  v30 = v54;
  v63 = 0;
  OUTLINED_FUNCTION_4_57();
  sub_1BCCB5D10(v31, v32, MEMORY[0x1E69695D0]);
  sub_1BCE1DF70();
  (*(v29 + 32))(v58, v55, v12);
  v62 = 1;
  v33 = sub_1BCE1DF00();
  OUTLINED_FUNCTION_8_48(v33, v34, *(v21 + 20));
  v61 = 2;
  v35 = sub_1BCE1DF00();
  v55 = v21;
  OUTLINED_FUNCTION_8_48(v35, v36, *(v21 + 24));
  v60 = 3;
  OUTLINED_FUNCTION_5_52();
  sub_1BCCB5D10(v37, v38, MEMORY[0x1E6969558]);
  sub_1BCE1DF70();
  v39 = v30;
  v40 = a1;
  (*(v28 + 32))(v58 + *(v55 + 28), v27, v39);
  v59 = 4;
  OUTLINED_FUNCTION_3_68();
  sub_1BCCB5D10(v41, v42, MEMORY[0x1E6969BE0]);
  v43 = v49;
  v44 = v50;
  sub_1BCE1DF70();
  (*(v53 + 8))(v56, v57);
  v45 = v58;
  (*(v47 + 32))(v58 + *(v55 + 32), v44, v43);
  sub_1BCA23704(v45, v48);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_1BCA23768(v45);
}

uint64_t sub_1BCCB5D10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BCCB5DB8(uint64_t a1)
{
  sub_1BCE19090();
  if (v1 <= 0x3F)
  {
    sub_1BC99AD8C();
    if (v2 <= 0x3F)
    {
      sub_1BCE19060();
      if (v3 <= 0x3F)
      {
        sub_1BCE19470();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HumidityComplicationDailyViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BCCB5F4C()
{
  result = qword_1EBD0C158;
  if (!qword_1EBD0C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C158);
  }

  return result;
}

unint64_t sub_1BCCB5FA4()
{
  result = qword_1EBD0C160;
  if (!qword_1EBD0C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C160);
  }

  return result;
}

unint64_t sub_1BCCB5FFC()
{
  result = qword_1EBD0C168;
  if (!qword_1EBD0C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C168);
  }

  return result;
}

uint64_t sub_1BCCB6050@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_1EBD07398 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBD2A428;
  v5 = type metadata accessor for HumidityComplicationDailyViewModel(0);
  v6 = v5;
  v7 = (v1 + *(v5 + 24));
  v8 = *v7;
  if (v7[1])
  {
    v9 = ColorSpectrum.gradientStops.getter();
    v10 = *(v6 + 28);
    v11 = type metadata accessor for ComplicationDailyGaugeViewModel(0);
    v12 = *(v11 + 28);
    sub_1BCE19060();
    OUTLINED_FUNCTION_4();
    (*(v13 + 16))(a1 + v12, v2 + v10);
    v14 = *(v6 + 32);
    v15 = *(v11 + 32);
    sub_1BCE19470();
    OUTLINED_FUNCTION_4();
    result = (*(v16 + 16))(a1 + v15, v2 + v14);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = v8;
    *(a1 + 24) = 1;
  }

  else
  {
    v18 = v1 + *(v5 + 20);
    if (*(v18 + 8))
    {
      v19 = 0;
      v20 = 0.0;
    }

    else
    {
      v20 = *v18;
      v21._rawValue = v4;
      ColorSpectrum.color(for:in:)(v21, *v18);
      v19 = v22;
    }

    v9 = ColorSpectrum.gradientStops.getter();

    v23 = *(v6 + 28);
    v24 = type metadata accessor for ComplicationDailyGaugeViewModel(0);
    v25 = *(v24 + 28);
    sub_1BCE19060();
    OUTLINED_FUNCTION_4();
    (*(v26 + 16))(a1 + v25, v2 + v23);
    v27 = *(v6 + 32);
    v28 = *(v24 + 32);
    sub_1BCE19470();
    OUTLINED_FUNCTION_4();
    result = (*(v29 + 16))(a1 + v28, v2 + v27);
    *a1 = v19;
    *(a1 + 8) = v20;
    *(a1 + 16) = v8;
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = v9;
  return result;
}

void sub_1BCCB6290(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCCB6A24();
  v4 = v3;
  sub_1BCCB6A24();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC42F000000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE51CA0;
  *(a1 + 112) = 0x3E851EB83E570A3DLL;
  *(a1 + 128) = xmmword_1BCE3D880;
  *(a1 + 144) = xmmword_1BCE402F0;
  *(a1 + 160) = xmmword_1BCE3E670;
  *(a1 + 176) = 1167663104;
  *(a1 + 184) = 0x3E570A3D3E0F5C29;
  *(a1 + 192) = xmmword_1BCE40310;
  *(a1 + 208) = xmmword_1BCE40320;
  *(a1 + 224) = xmmword_1BCE40330;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x4019999A3FE66667;
  *(a1 + 720) = 0x4170000041500000;
  *(a1 + 728) = 1097138248;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3E0A0;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x404000004019999ALL;
  *(a1 + 848) = 0x4183D70A40E00000;
  *(a1 + 856) = 1079592688;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE40340;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004D202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4D656C676E6953;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x404000004019999ALL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 1096187940;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE40350;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V3.2S, #3.25 }

  *(a1 + 1104) = _D3;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3FB50;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE59050;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0xD000000000000010;
  *(a1 + 1248) = 0x80000001BCE798A0;
  *(a1 + 1256) = 0xD000000000000015;
  *(a1 + 1264) = 0x80000001BCE798C0;
  *(a1 + 1272) = 5;
  *(a1 + 1280) = 1;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1632) = 257;
  *(a1 + 1634) = 0;
  *(a1 + 1642) = 0x101010100010000;
  *(a1 + 1650) = 256;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 1;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1061972805;
  *(a1 + 1664) = 0x408800004053D70ALL;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE51BF0;
  *(a1 + 1696) = xmmword_1BCE40380;
  *(a1 + 1712) = xmmword_1BCE40390;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3ECCCCCD47C35000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 10;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1052770304;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E99999A00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E28F5C33D851EB8;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4080000040600000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1041865114;
  *(a1 + 2200) = 12;
  *(a1 + 2208) = 0x414000003FC00000;
  *(a1 + 2224) = xmmword_1BCE403B0;
  *(a1 + 2240) = xmmword_1BCE51090;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

double sub_1BCCB6A24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858, &qword_1BCE6CF50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3CB30;
  *(v0 + 64) = 0x420C000044228000;
  *(v0 + 80) = xmmword_1BCE403D0;
  *(v0 + 96) = xmmword_1BCE403E0;
  *(v0 + 112) = xmmword_1BCE403F0;
  *(v0 + 128) = xmmword_1BCE40400;
  *(v0 + 4928) = 1153957888;
  *(v0 + 6144) = 1153957888;
  *(v0 + 4944) = xmmword_1BCE40840;
  *(v0 + 6160) = xmmword_1BCE40840;
  *(v0 + 4960) = xmmword_1BCE40850;
  *(v0 + 6176) = xmmword_1BCE40850;
  *(v0 + 4976) = xmmword_1BCE40860;
  *(v0 + 6192) = xmmword_1BCE40860;
  *(v0 + 4992) = xmmword_1BCE40870;
  *(v0 + 6208) = xmmword_1BCE40870;
  *(v0 + 5040) = xmmword_1BCE40880;
  *(v0 + 6256) = xmmword_1BCE40880;
  *(v0 + 5056) = xmmword_1BCE40890;
  *(v0 + 6272) = xmmword_1BCE40890;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5360) = xmmword_1BCE408A0;
  *(v0 + 6576) = xmmword_1BCE408A0;
  *(v0 + 5376) = xmmword_1BCE408B0;
  *(v0 + 6592) = xmmword_1BCE408B0;
  *(v0 + 5392) = xmmword_1BCE408C0;
  *(v0 + 6608) = xmmword_1BCE408C0;
  *(v0 + 5408) = xmmword_1BCE408D0;
  *(v0 + 6624) = xmmword_1BCE408D0;
  *(v0 + 5424) = xmmword_1BCE408E0;
  *(v0 + 6640) = xmmword_1BCE408E0;
  *(v0 + 5440) = xmmword_1BCE408F0;
  *(v0 + 6656) = xmmword_1BCE408F0;
  *(v0 + 5456) = xmmword_1BCE40900;
  *(v0 + 6672) = xmmword_1BCE40900;
  *(v0 + 5472) = xmmword_1BCE40910;
  *(v0 + 6688) = xmmword_1BCE40910;
  *(v0 + 5872) = xmmword_1BCE40920;
  *(v0 + 7088) = xmmword_1BCE40920;
  *(v0 + 5888) = xmmword_1BCE40930;
  *(v0 + 7104) = xmmword_1BCE40930;
  *(v0 + 5904) = xmmword_1BCE40940;
  *(v0 + 7120) = xmmword_1BCE40940;
  *(v0 + 5920) = xmmword_1BCE40950;
  *(v0 + 7136) = xmmword_1BCE40950;
  *(v0 + 3696) = xmmword_1BCE3CE40;
  *(v0 + 4912) = xmmword_1BCE3CE40;
  *(v0 + 6128) = xmmword_1BCE3CE40;
  *(v0 + 7344) = xmmword_1BCE3CE40;
  *(v0 + 3712) = 1152319488;
  *(v0 + 7360) = 1152319488;
  *(v0 + 3728) = xmmword_1BCE406D0;
  *(v0 + 7376) = xmmword_1BCE406D0;
  *(v0 + 3744) = xmmword_1BCE406E0;
  *(v0 + 7392) = xmmword_1BCE406E0;
  *(v0 + 3792) = xmmword_1BCE406F0;
  *(v0 + 7440) = xmmword_1BCE406F0;
  *(v0 + 3808) = xmmword_1BCE40700;
  *(v0 + 7456) = xmmword_1BCE40700;
  *(v0 + 3824) = xmmword_1BCE40710;
  *(v0 + 7472) = xmmword_1BCE40710;
  *(v0 + 3840) = xmmword_1BCE40720;
  *(v0 + 7488) = xmmword_1BCE40720;
  *(v0 + 3920) = xmmword_1BCE40740;
  *(v0 + 5136) = xmmword_1BCE40740;
  *(v0 + 6352) = xmmword_1BCE40740;
  *(v0 + 7568) = xmmword_1BCE40740;
  *(v0 + 3936) = xmmword_1BCE40750;
  *(v0 + 5152) = xmmword_1BCE40750;
  *(v0 + 6368) = xmmword_1BCE40750;
  *(v0 + 7584) = xmmword_1BCE40750;
  *(v0 + 3984) = xmmword_1BCE40760;
  *(v0 + 5200) = xmmword_1BCE40760;
  *(v0 + 6416) = xmmword_1BCE40760;
  *(v0 + 7632) = xmmword_1BCE40760;
  *(v0 + 4000) = xmmword_1BCE40770;
  *(v0 + 5216) = xmmword_1BCE40770;
  *(v0 + 6432) = xmmword_1BCE40770;
  *(v0 + 7648) = xmmword_1BCE40770;
  *(v0 + 4016) = xmmword_1BCE430A0;
  *(v0 + 5232) = xmmword_1BCE430A0;
  *(v0 + 6448) = xmmword_1BCE430A0;
  *(v0 + 7664) = xmmword_1BCE430A0;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CDC0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 4144) = xmmword_1BCE40790;
  *(v0 + 7792) = xmmword_1BCE40790;
  *(v0 + 4160) = xmmword_1BCE407A0;
  *(v0 + 7808) = xmmword_1BCE407A0;
  *(v0 + 4176) = xmmword_1BCE407B0;
  *(v0 + 7824) = xmmword_1BCE407B0;
  *(v0 + 4192) = xmmword_1BCE407C0;
  *(v0 + 7840) = xmmword_1BCE407C0;
  *(v0 + 4208) = xmmword_1BCE407D0;
  *(v0 + 7856) = xmmword_1BCE407D0;
  *(v0 + 4224) = xmmword_1BCE407E0;
  *(v0 + 7872) = xmmword_1BCE407E0;
  *(v0 + 4240) = xmmword_1BCE407F0;
  *(v0 + 7888) = xmmword_1BCE407F0;
  *(v0 + 4256) = xmmword_1BCE40800;
  *(v0 + 7904) = xmmword_1BCE40800;
  *(v0 + 4656) = xmmword_1BCE40810;
  *(v0 + 8304) = xmmword_1BCE40810;
  *(v0 + 4672) = xmmword_1BCE40820;
  *(v0 + 8320) = xmmword_1BCE40820;
  *(v0 + 4688) = xmmword_1BCE40830;
  *(v0 + 8336) = xmmword_1BCE40830;
  *(v0 + 4704) = xmmword_1BCE3DA70;
  *(v0 + 8352) = xmmword_1BCE3DA70;
  *(v0 + 2496) = 0x4316000044610000;
  *(v0 + 8576) = 0x4316000044610000;
  *(v0 + 2512) = xmmword_1BCE40590;
  *(v0 + 8592) = xmmword_1BCE40590;
  *(v0 + 2528) = xmmword_1BCE405A0;
  *(v0 + 8608) = xmmword_1BCE405A0;
  *(v0 + 2544) = xmmword_1BCE405B0;
  *(v0 + 3760) = xmmword_1BCE405B0;
  *(v0 + 7408) = xmmword_1BCE405B0;
  *(v0 + 8624) = xmmword_1BCE405B0;
  *(v0 + 2560) = xmmword_1BCE405C0;
  *(v0 + 3776) = xmmword_1BCE405C0;
  *(v0 + 7424) = xmmword_1BCE405C0;
  *(v0 + 8640) = xmmword_1BCE405C0;
  *(v0 + 2608) = xmmword_1BCE405D0;
  *(v0 + 8688) = xmmword_1BCE405D0;
  *(v0 + 2624) = xmmword_1BCE405E0;
  *(v0 + 8704) = xmmword_1BCE405E0;
  *(v0 + 2800) = xmmword_1BCE42C40;
  *(v0 + 8880) = xmmword_1BCE42C40;
  *(v0 + 2928) = xmmword_1BCE40610;
  *(v0 + 9008) = xmmword_1BCE40610;
  *(v0 + 2944) = xmmword_1BCE40620;
  *(v0 + 9024) = xmmword_1BCE40620;
  *(v0 + 2960) = xmmword_1BCE40630;
  *(v0 + 9040) = xmmword_1BCE40630;
  *(v0 + 2976) = xmmword_1BCE40640;
  *(v0 + 9056) = xmmword_1BCE40640;
  *(v0 + 2992) = xmmword_1BCE40650;
  *(v0 + 9072) = xmmword_1BCE40650;
  *(v0 + 3008) = xmmword_1BCE40660;
  *(v0 + 9088) = xmmword_1BCE40660;
  *(v0 + 3024) = xmmword_1BCE40670;
  *(v0 + 9104) = xmmword_1BCE40670;
  *(v0 + 3040) = xmmword_1BCE40680;
  *(v0 + 9120) = xmmword_1BCE40680;
  *(v0 + 3440) = xmmword_1BCE40690;
  *(v0 + 9520) = xmmword_1BCE40690;
  *(v0 + 3456) = xmmword_1BCE406A0;
  *(v0 + 9536) = xmmword_1BCE406A0;
  *(v0 + 3472) = xmmword_1BCE406B0;
  *(v0 + 9552) = xmmword_1BCE406B0;
  *(v0 + 3488) = xmmword_1BCE406C0;
  *(v0 + 9568) = xmmword_1BCE406C0;
  *(v0 + 1392) = xmmword_1BCE40560;
  *(v0 + 9904) = xmmword_1BCE40560;
  *(v0 + 1408) = xmmword_1BCE40570;
  *(v0 + 9920) = xmmword_1BCE40570;
  *(v0 + 2272) = xmmword_1BCE40580;
  *(v0 + 10784) = xmmword_1BCE40580;
  *(v0 + 144) = xmmword_1BCE3EEF0;
  *(v0 + 160) = xmmword_1BCE3EF00;
  *(v0 + 1264) = xmmword_1BCE3CB30;
  *(v0 + 2480) = xmmword_1BCE3CB30;
  *(v0 + 8560) = xmmword_1BCE3CB30;
  *(v0 + 9776) = xmmword_1BCE3CB30;
  *(v0 + 10992) = xmmword_1BCE3CB30;
  *(v0 + 1280) = 0x420C000044228000;
  *(v0 + 9792) = 0x420C000044228000;
  *(v0 + 11008) = 0x420C000044228000;
  *(v0 + 176) = xmmword_1BCE40410;
  *(v0 + 192) = xmmword_1BCE40420;
  *(v0 + 1296) = xmmword_1BCE403D0;
  *(v0 + 9808) = xmmword_1BCE403D0;
  *(v0 + 11024) = xmmword_1BCE403D0;
  __asm { FMOV            V4.2D, #1.0 }

  *(v0 + 1312) = xmmword_1BCE403E0;
  *(v0 + 9824) = xmmword_1BCE403E0;
  *(v0 + 11040) = xmmword_1BCE403E0;
  *(v0 + 1328) = xmmword_1BCE403F0;
  *(v0 + 9840) = xmmword_1BCE403F0;
  *(v0 + 11056) = xmmword_1BCE403F0;
  *(v0 + 1344) = xmmword_1BCE40400;
  *(v0 + 9856) = xmmword_1BCE40400;
  *(v0 + 11072) = xmmword_1BCE40400;
  *(v0 + 240) = xmmword_1BCE3E780;
  *(v0 + 256) = xmmword_1BCE3E790;
  *(v0 + 1360) = xmmword_1BCE3EEF0;
  *(v0 + 2576) = xmmword_1BCE3EEF0;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 8656) = xmmword_1BCE3EEF0;
  *(v0 + 9872) = xmmword_1BCE3EEF0;
  *(v0 + 11088) = xmmword_1BCE3EEF0;
  *(v0 + 1376) = xmmword_1BCE3EF00;
  *(v0 + 2592) = xmmword_1BCE3EF00;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 8672) = xmmword_1BCE3EF00;
  *(v0 + 9888) = xmmword_1BCE3EF00;
  *(v0 + 11104) = xmmword_1BCE3EF00;
  *(v0 + 272) = xmmword_1BCE40440;
  *(v0 + 288) = xmmword_1BCE40450;
  *(v0 + 11120) = xmmword_1BCE40410;
  *(v0 + 11136) = xmmword_1BCE40420;
  *(v0 + 304) = xmmword_1BCE40460;
  *(v0 + 320) = xmmword_1BCE40470;
  *(v0 + 1456) = xmmword_1BCE3E780;
  *(v0 + 2672) = xmmword_1BCE3E780;
  *(v0 + 3888) = xmmword_1BCE3E780;
  *(v0 + 5104) = xmmword_1BCE3E780;
  *(v0 + 6320) = xmmword_1BCE3E780;
  *(v0 + 7536) = xmmword_1BCE3E780;
  *(v0 + 8752) = xmmword_1BCE3E780;
  *(v0 + 9968) = xmmword_1BCE3E780;
  *(v0 + 11184) = xmmword_1BCE3E780;
  *(v0 + 1472) = xmmword_1BCE3E790;
  *(v0 + 2688) = xmmword_1BCE3E790;
  *(v0 + 3904) = xmmword_1BCE3E790;
  *(v0 + 5120) = xmmword_1BCE3E790;
  *(v0 + 6336) = xmmword_1BCE3E790;
  *(v0 + 7552) = xmmword_1BCE3E790;
  *(v0 + 8768) = xmmword_1BCE3E790;
  *(v0 + 9984) = xmmword_1BCE3E790;
  *(v0 + 11200) = xmmword_1BCE3E790;
  *(v0 + 336) = xmmword_1BCE40480;
  *(v0 + 352) = xmmword_1BCE40490;
  *(v0 + 1488) = xmmword_1BCE40440;
  *(v0 + 2704) = xmmword_1BCE40440;
  *(v0 + 8784) = xmmword_1BCE40440;
  *(v0 + 10000) = xmmword_1BCE40440;
  *(v0 + 11216) = xmmword_1BCE40440;
  result = 1.0;
  *(v0 + 1504) = xmmword_1BCE40450;
  *(v0 + 2720) = xmmword_1BCE40450;
  *(v0 + 8800) = xmmword_1BCE40450;
  *(v0 + 10016) = xmmword_1BCE40450;
  *(v0 + 11232) = xmmword_1BCE40450;
  *(v0 + 1520) = xmmword_1BCE40460;
  *(v0 + 2736) = xmmword_1BCE40460;
  *(v0 + 3952) = xmmword_1BCE40460;
  *(v0 + 5168) = xmmword_1BCE40460;
  *(v0 + 6384) = xmmword_1BCE40460;
  *(v0 + 7600) = xmmword_1BCE40460;
  *(v0 + 8240) = _Q4;
  *(v0 + 8368) = _Q4;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = _Q4;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 8816) = xmmword_1BCE40460;
  *(v0 + 10032) = xmmword_1BCE40460;
  *(v0 + 11248) = xmmword_1BCE40460;
  *(v0 + 8160) = _Q4;
  *(v0 + 8176) = _Q4;
  *(v0 + 0x2000) = _Q4;
  *(v0 + 8208) = _Q4;
  *(v0 + 8224) = _Q4;
  *(v0 + 1536) = xmmword_1BCE40470;
  *(v0 + 8080) = _Q4;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8112) = _Q4;
  *(v0 + 8128) = _Q4;
  *(v0 + 8144) = _Q4;
  *(v0 + 7984) = _Q4;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8016) = _Q4;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 8048) = _Q4;
  *(v0 + 8064) = _Q4;
  *(v0 + 2752) = xmmword_1BCE40470;
  *(v0 + 3968) = xmmword_1BCE40470;
  *(v0 + 7920) = _Q4;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = _Q4;
  *(v0 + 7968) = _Q4;
  *(v0 + 5184) = xmmword_1BCE40470;
  *(v0 + 6400) = xmmword_1BCE40470;
  *(v0 + 7616) = xmmword_1BCE40470;
  *(v0 + 8832) = xmmword_1BCE40470;
  *(v0 + 10048) = xmmword_1BCE40470;
  *(v0 + 11264) = xmmword_1BCE40470;
  *(v0 + 1552) = xmmword_1BCE40480;
  *(v0 + 2768) = xmmword_1BCE40480;
  *(v0 + 7728) = 0u;
  *(v0 + 7760) = _Q4;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 1065353216;
  *(v0 + 7744) = 0u;
  *(v0 + 8848) = xmmword_1BCE40480;
  *(v0 + 10064) = xmmword_1BCE40480;
  *(v0 + 11280) = xmmword_1BCE40480;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 1568) = xmmword_1BCE40490;
  *(v0 + 2784) = xmmword_1BCE40490;
  *(v0 + 8864) = xmmword_1BCE40490;
  *(v0 + 10080) = xmmword_1BCE40490;
  *(v0 + 11296) = xmmword_1BCE40490;
  *(v0 + 384) = 1061997773;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 7504) = _Q4;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 10096) = xmmword_1BCE3FC10;
  *(v0 + 11312) = xmmword_1BCE3FC10;
  *(v0 + 1600) = 1061997773;
  *(v0 + 2816) = 1061997773;
  *(v0 + 8896) = 1061997773;
  *(v0 + 10112) = 1061997773;
  *(v0 + 11328) = 1061997773;
  *(v0 + 7337) = *v12;
  *(v0 + 7368) = 1056964608;
  *(v0 + 7328) = 0x4040800000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v12[3];
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q4;
  *(v0 + 7280) = _Q4;
  *(v0 + 7296) = _Q4;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7152) = _Q4;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = _Q4;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = _Q4;
  *(v0 + 7232) = _Q4;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 7056) = _Q4;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 6960) = _Q4;
  *(v0 + 6976) = _Q4;
  *(v0 + 6992) = _Q4;
  *(v0 + 7008) = _Q4;
  *(v0 + 7024) = _Q4;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 6864) = _Q4;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 6896) = _Q4;
  *(v0 + 6912) = _Q4;
  *(v0 + 6928) = _Q4;
  *(v0 + 6944) = _Q4;
  *(v0 + 6768) = _Q4;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6800) = _Q4;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 6832) = _Q4;
  *(v0 + 6848) = _Q4;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 6704) = _Q4;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6736) = _Q4;
  *(v0 + 6752) = _Q4;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 6544) = _Q4;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 496) = xmmword_1BCE404B0;
  *(v0 + 512) = xmmword_1BCE404C0;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 1065353216;
  *(v0 + 1712) = xmmword_1BCE404B0;
  *(v0 + 10224) = xmmword_1BCE404B0;
  *(v0 + 11440) = xmmword_1BCE404B0;
  *(v0 + 1728) = xmmword_1BCE404C0;
  *(v0 + 10240) = xmmword_1BCE404C0;
  *(v0 + 11456) = xmmword_1BCE404C0;
  *(v0 + 528) = xmmword_1BCE404D0;
  *(v0 + 544) = xmmword_1BCE404E0;
  *(v0 + 1744) = xmmword_1BCE404D0;
  *(v0 + 6288) = _Q4;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 10256) = xmmword_1BCE404D0;
  *(v0 + 11472) = xmmword_1BCE404D0;
  *(v0 + 1760) = xmmword_1BCE404E0;
  *(v0 + 10272) = xmmword_1BCE404E0;
  *(v0 + 11488) = xmmword_1BCE404E0;
  *(v0 + 560) = xmmword_1BCE404F0;
  *(v0 + 576) = xmmword_1BCE40500;
  *(v0 + 1776) = xmmword_1BCE404F0;
  *(v0 + 6016) = _Q4;
  *(v0 + 6121) = *v11;
  *(v0 + 6152) = 1061997773;
  *(v0 + 6080) = _Q4;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6124) = *&v11[3];
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = _Q4;
  *(v0 + 6064) = _Q4;
  *(v0 + 10288) = xmmword_1BCE404F0;
  *(v0 + 11504) = xmmword_1BCE404F0;
  *(v0 + 5936) = _Q4;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5968) = _Q4;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q4;
  *(v0 + 1792) = xmmword_1BCE40500;
  *(v0 + 5648) = _Q4;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q4;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5728) = _Q4;
  *(v0 + 5744) = _Q4;
  *(v0 + 5760) = _Q4;
  *(v0 + 5776) = _Q4;
  *(v0 + 5792) = _Q4;
  *(v0 + 5808) = _Q4;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 5680) = _Q4;
  *(v0 + 5696) = _Q4;
  *(v0 + 5712) = _Q4;
  *(v0 + 10304) = xmmword_1BCE40500;
  *(v0 + 11520) = xmmword_1BCE40500;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 5584) = _Q4;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5616) = _Q4;
  *(v0 + 5632) = _Q4;
  *(v0 + 1808) = xmmword_1BCE40510;
  *(v0 + 5488) = _Q4;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5520) = _Q4;
  *(v0 + 5536) = _Q4;
  *(v0 + 5552) = _Q4;
  *(v0 + 10320) = xmmword_1BCE40510;
  *(v0 + 11536) = xmmword_1BCE40510;
  *(v0 + 592) = xmmword_1BCE40510;
  *(v0 + 608) = xmmword_1BCE40520;
  *(v0 + 1824) = xmmword_1BCE40520;
  *(v0 + 10336) = xmmword_1BCE40520;
  *(v0 + 11552) = xmmword_1BCE40520;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 5328) = _Q4;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 1065353216;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 5072) = _Q4;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 2224) = xmmword_1BCE40530;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4905) = *v10;
  *(v0 + 4908) = *&v10[3];
  *(v0 + 4936) = 1061997773;
  *(v0 + 4832) = _Q4;
  *(v0 + 4848) = _Q4;
  *(v0 + 4864) = _Q4;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4904) = 0;
  *(v0 + 4784) = _Q4;
  *(v0 + 4800) = _Q4;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 10736) = xmmword_1BCE40530;
  *(v0 + 11952) = xmmword_1BCE40530;
  *(v0 + 1008) = xmmword_1BCE40530;
  *(v0 + 1024) = xmmword_1BCE3F690;
  *(v0 + 4720) = _Q4;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = _Q4;
  *(v0 + 2240) = xmmword_1BCE3F690;
  *(v0 + 4576) = _Q4;
  *(v0 + 4592) = _Q4;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = _Q4;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4496) = _Q4;
  *(v0 + 4512) = _Q4;
  *(v0 + 4528) = _Q4;
  *(v0 + 4544) = _Q4;
  *(v0 + 4560) = _Q4;
  *(v0 + 10752) = xmmword_1BCE3F690;
  *(v0 + 11968) = xmmword_1BCE3F690;
  *(v0 + 4416) = _Q4;
  *(v0 + 4432) = _Q4;
  *(v0 + 4464) = _Q4;
  *(v0 + 4480) = _Q4;
  *(v0 + 1040) = xmmword_1BCE40540;
  *(v0 + 4320) = _Q4;
  *(v0 + 4336) = _Q4;
  *(v0 + 4368) = _Q4;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = _Q4;
  *(v0 + 2256) = xmmword_1BCE40540;
  *(v0 + 4272) = _Q4;
  *(v0 + 4304) = _Q4;
  *(v0 + 10768) = xmmword_1BCE40540;
  *(v0 + 11984) = xmmword_1BCE40540;
  *(v0 + 1056) = xmmword_1BCE40550;
  *(v0 + 12000) = xmmword_1BCE40550;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4112) = _Q4;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 3856) = _Q4;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 9248) = xmmword_1BCE3C8C0;
  *(v0 + 9472) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 10464) = xmmword_1BCE3C8C0;
  *(v0 + 10688) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 11680) = xmmword_1BCE3C8C0;
  *(v0 + 11904) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 3632) = _Q4;
  *(v0 + 3689) = *v9;
  *(v0 + 3720) = 1056964608;
  *(v0 + 3648) = _Q4;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4040800000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3692) = *&v9[3];
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3568) = _Q4;
  *(v0 + 3584) = _Q4;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = _Q4;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 3504) = _Q4;
  *(v0 + 3536) = _Q4;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3088) = _Q4;
  *(v0 + 3360) = _Q4;
  *(v0 + 3376) = _Q4;
  *(v0 + 3408) = _Q4;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3264) = _Q4;
  *(v0 + 3280) = _Q4;
  *(v0 + 3296) = _Q4;
  *(v0 + 3312) = _Q4;
  *(v0 + 3328) = _Q4;
  *(v0 + 3344) = _Q4;
  *(v0 + 3104) = _Q4;
  *(v0 + 3120) = _Q4;
  *(v0 + 3184) = _Q4;
  *(v0 + 3200) = _Q4;
  *(v0 + 3216) = _Q4;
  *(v0 + 3248) = _Q4;
  *(v0 + 3152) = _Q4;
  *(v0 + 8416) = xmmword_1BCE3DAE0;
  *(v0 + 8992) = xmmword_1BCE3DAE0;
  *(v0 + 9504) = xmmword_1BCE3DAE0;
  *(v0 + 9632) = xmmword_1BCE3DAE0;
  *(v0 + 10208) = xmmword_1BCE3DAE0;
  *(v0 + 10720) = xmmword_1BCE3DAE0;
  *(v0 + 10848) = xmmword_1BCE3DAE0;
  *(v0 + 11424) = xmmword_1BCE3DAE0;
  *(v0 + 11936) = xmmword_1BCE3DAE0;
  *(v0 + 12064) = xmmword_1BCE3DAE0;
  *(v0 + 3056) = _Q4;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 2896) = _Q4;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q4;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 1067450368;
  *(v0 + 208) = _Q4;
  *(v0 + 464) = _Q4;
  *(v0 + 624) = _Q4;
  *(v0 + 672) = _Q4;
  *(v0 + 688) = _Q4;
  *(v0 + 720) = _Q4;
  *(v0 + 768) = _Q4;
  *(v0 + 784) = _Q4;
  *(v0 + 944) = _Q4;
  *(v0 + 976) = _Q4;
  *(v0 + 400) = _Q4;
  *(v0 + 424) = 1067450368;
  *(v0 + 2640) = _Q4;
  *(v0 + 656) = _Q4;
  *(v0 + 752) = _Q4;
  *(v0 + 816) = _Q4;
  *(v0 + 832) = _Q4;
  *(v0 + 848) = _Q4;
  *(v0 + 864) = _Q4;
  *(v0 + 880) = _Q4;
  *(v0 + 896) = _Q4;
  *(v0 + 2400) = _Q4;
  *(v0 + 2473) = *v8;
  *(v0 + 2476) = *&v8[3];
  *(v0 + 2504) = 1053609165;
  *(v0 + 2416) = _Q4;
  *(v0 + 2432) = _Q4;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 912) = _Q4;
  *(v0 + 928) = _Q4;
  *(v0 + 2320) = _Q4;
  *(v0 + 2352) = _Q4;
  *(v0 + 2368) = _Q4;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 1072) = _Q4;
  *(v0 + 1104) = _Q4;
  *(v0 + 1136) = _Q4;
  *(v0 + 1152) = _Q4;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 2288) = _Q4;
  *(v0 + 1184) = _Q4;
  *(v0 + 1200) = _Q4;
  *(v0 + 2128) = _Q4;
  *(v0 + 2144) = _Q4;
  *(v0 + 2160) = _Q4;
  *(v0 + 2192) = _Q4;
  *(v0 + 1216) = _Q4;
  *(v0 + 2048) = _Q4;
  *(v0 + 2064) = _Q4;
  *(v0 + 2080) = _Q4;
  *(v0 + 2096) = _Q4;
  *(v0 + 2112) = _Q4;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1984) = _Q4;
  *(v0 + 2000) = _Q4;
  *(v0 + 2032) = _Q4;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v7;
  *(v0 + 1936) = _Q4;
  *(v0 + 1968) = _Q4;
  *(v0 + 1260) = *&v7[3];
  *(v0 + 1840) = _Q4;
  *(v0 + 1872) = _Q4;
  *(v0 + 1888) = _Q4;
  *(v0 + 1904) = _Q4;
  *(v0 + 1288) = 1050253722;
  *(v0 + 1424) = _Q4;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q4;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 1067450368;
  *(v0 + 1680) = _Q4;
  *(v0 + 8400) = _Q4;
  *(v0 + 8432) = _Q4;
  *(v0 + 8448) = _Q4;
  *(v0 + 8480) = _Q4;
  *(v0 + 8496) = _Q4;
  *(v0 + 8512) = _Q4;
  *(v0 + 8720) = _Q4;
  *(v0 + 8912) = _Q4;
  *(v0 + 8976) = _Q4;
  *(v0 + 9136) = _Q4;
  *(v0 + 9168) = _Q4;
  *(v0 + 9184) = _Q4;
  *(v0 + 9200) = _Q4;
  *(v0 + 9232) = _Q4;
  *(v0 + 9264) = _Q4;
  *(v0 + 9280) = _Q4;
  *(v0 + 9296) = _Q4;
  *(v0 + 9328) = _Q4;
  *(v0 + 9344) = _Q4;
  *(v0 + 9360) = _Q4;
  *(v0 + 9376) = _Q4;
  *(v0 + 9392) = _Q4;
  *(v0 + 9408) = _Q4;
  *(v0 + 9424) = _Q4;
  *(v0 + 9440) = _Q4;
  *(v0 + 9456) = _Q4;
  *(v0 + 9488) = _Q4;
  *(v0 + 9584) = _Q4;
  *(v0 + 9616) = _Q4;
  *(v0 + 9648) = _Q4;
  *(v0 + 9664) = _Q4;
  *(v0 + 9696) = _Q4;
  *(v0 + 9712) = _Q4;
  *(v0 + 9728) = _Q4;
  *(v0 + 9936) = _Q4;
  *(v0 + 10128) = _Q4;
  *(v0 + 10192) = _Q4;
  *(v0 + 10352) = _Q4;
  *(v0 + 10384) = _Q4;
  *(v0 + 10400) = _Q4;
  *(v0 + 10416) = _Q4;
  *(v0 + 10448) = _Q4;
  *(v0 + 10480) = _Q4;
  *(v0 + 10496) = _Q4;
  *(v0 + 10512) = _Q4;
  *(v0 + 10544) = _Q4;
  *(v0 + 10560) = _Q4;
  *(v0 + 10576) = _Q4;
  *(v0 + 10592) = _Q4;
  *(v0 + 10608) = _Q4;
  *(v0 + 10624) = _Q4;
  *(v0 + 10640) = _Q4;
  *(v0 + 10656) = _Q4;
  *(v0 + 10672) = _Q4;
  *(v0 + 10704) = _Q4;
  *(v0 + 10800) = _Q4;
  *(v0 + 10832) = _Q4;
  *(v0 + 10864) = _Q4;
  *(v0 + 10880) = _Q4;
  *(v0 + 10912) = _Q4;
  *(v0 + 10928) = _Q4;
  *(v0 + 10944) = _Q4;
  *(v0 + 11152) = _Q4;
  *(v0 + 11344) = _Q4;
  *(v0 + 11408) = _Q4;
  *(v0 + 11568) = _Q4;
  *(v0 + 11600) = _Q4;
  *(v0 + 11616) = _Q4;
  *(v0 + 11632) = _Q4;
  *(v0 + 11664) = _Q4;
  *(v0 + 11696) = _Q4;
  *(v0 + 11712) = _Q4;
  *(v0 + 11728) = _Q4;
  *(v0 + 11760) = _Q4;
  *(v0 + 11776) = _Q4;
  *(v0 + 11792) = _Q4;
  *(v0 + 11808) = _Q4;
  *(v0 + 11824) = _Q4;
  *(v0 + 11840) = _Q4;
  *(v0 + 11856) = _Q4;
  *(v0 + 11872) = _Q4;
  *(v0 + 11888) = _Q4;
  *(v0 + 11920) = _Q4;
  *(v0 + 12016) = _Q4;
  *(v0 + 12048) = _Q4;
  *(v0 + 12080) = _Q4;
  *(v0 + 12096) = _Q4;
  *(v0 + 12128) = _Q4;
  *(v0 + 12144) = _Q4;
  *(v0 + 12160) = _Q4;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1050253722;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC018000000000000;
  *(v0 + 8552) = 1;
  *(v0 + 8553) = *v13;
  *(v0 + 8556) = *&v13[3];
  *(v0 + 8584) = 1053609165;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 1067450368;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 9769) = *v14;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v14[3];
  *(v0 + 9800) = 1050253722;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 1067450368;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v15;
  *(v0 + 10988) = *&v15[3];
  *(v0 + 11016) = 1050253722;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 1067450368;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

uint64_t type metadata accessor for AirQualityCornerNumericalContentView(uint64_t a1)
{
  result = qword_1EBD0C170;
  if (!qword_1EBD0C170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCCB7BCC@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  sub_1BCE1C100();
  OUTLINED_FUNCTION_2();
  v35 = v3;
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B70, &unk_1BCE52690);
  OUTLINED_FUNCTION_2();
  v37 = v7;
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B78, &qword_1BCE55A90);
  MEMORY[0x1EEE9AC00](v41);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B80, &unk_1BCE526A0);
  OUTLINED_FUNCTION_2();
  v40 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v39 = &v35 - v17;
  v18 = *(type metadata accessor for AirQualityComplicationViewModel(0) + 24);
  v43 = v1;
  *&v47 = *(v1 + v18);
  sub_1BCA28540();
  *&v47 = sub_1BCE1DBE0();
  *(&v47 + 1) = v19;
  sub_1BC970820();
  v20 = sub_1BCE1C6A0();
  v22 = v21;
  *&v47 = v20;
  *(&v47 + 1) = v21;
  v24 = v23 & 1;
  v48 = v23 & 1;
  v49 = v25;
  sub_1BCE1C0D0();
  sub_1BCE1C930();
  (*(v35 + 8))(v5, v36);
  sub_1BC998CF4(v20, v22, v24);

  if (qword_1EDA17D90 != -1)
  {
    swift_once();
  }

  v47 = xmmword_1EDA2EF08;
  v45 = MEMORY[0x1E6981148];
  v46 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  v26 = v38;
  sub_1BCE1C8E0();
  (*(v37 + 8))(v9, v26);
  v27 = v43;
  *&v47 = sub_1BCA27F48();
  *(&v47 + 1) = v28;
  v29 = v41;
  sub_1BCE1B880();

  sub_1BC9BA63C(v11);
  v30 = sub_1BCB56760();
  v31 = v39;
  sub_1BCE1C760();
  v32 = sub_1BC9BA63C(v14);
  MEMORY[0x1EEE9AC00](v32);
  *(&v35 - 2) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A360, &qword_1BCE5EFD0);
  *&v47 = v29;
  *(&v47 + 1) = v30;
  OUTLINED_FUNCTION_0_65();
  swift_getOpaqueTypeConformance2();
  sub_1BCB8CD7C();
  v33 = v42;
  sub_1BCE1C740();
  return (*(v40 + 8))(v31, v33);
}

void sub_1BCCB8080(uint64_t a2@<X8>)
{
  type metadata accessor for AirQualityComplicationViewModel(0);
  v3 = sub_1BCA28250();
  if (v3 > sub_1BCA280F4())
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    MEMORY[0x1EEE9AC00](v5);
    sub_1BC96ABEC();
    sub_1BCE1CB70();
    AirQualityScale.gradientStops.getter();
    sub_1BCE1CE60();
    KeyPath = swift_getKeyPath();
    v7 = sub_1BCE1B620();
    v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A360, &qword_1BCE5EFD0) + 36));
    *v8 = KeyPath;
    v8[1] = v7;
  }
}

void sub_1BCCB8270(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCCB8A20();
  v4 = v3;
  sub_1BCCB8A20();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC42F000000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE5CCC0;
  *(a1 + 112) = 0x3E851EB83E570A3DLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3F430;
  *(a1 + 160) = xmmword_1BCE46C90;
  *(a1 + 176) = 1165623296;
  *(a1 + 184) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 192) = xmmword_1BCE465E0;
  *(a1 + 208) = xmmword_1BCE40320;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3FC000003F666667;
  *(a1 + 720) = 0x4182A3D74124CCCDLL;
  *(a1 + 728) = 3189922816;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3E0A0;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3FE666673F99999ALL;
  *(a1 + 848) = 0x4160000041200000;
  *(a1 + 856) = 1082365648;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3E0B0;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 5;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x404000004019999ALL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 3221225472;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB0000000053202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF53656C676E6953;
  *(a1 + 1056) = 5;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V3.2S, #3.25 }

  *(a1 + 1104) = _D3;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3C710;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = xmmword_1BCE465F0;
  *(a1 + 1216) = xmmword_1BCE41310;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0xD000000000000010;
  *(a1 + 1248) = 0x80000001BCE7A1D0;
  *(a1 + 1256) = 0xD000000000000015;
  *(a1 + 1264) = 0x80000001BCE7AD60;
  *(a1 + 1272) = 4;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1632) = 257;
  *(a1 + 1642) = 0;
  *(a1 + 1634) = 0;
  *(v2 + 208) = 0x100000001010001;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 1;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1061980996;
  *(a1 + 1664) = 0x4110000040C00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE46CA0;
  *(a1 + 1696) = xmmword_1BCE46620;
  *(a1 + 1712) = xmmword_1BCE46630;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3EDEB85247927C00;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 10;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1052770304;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E99999A00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE46CC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E28F5C33D851EB8;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4080000040600000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1041865114;
  *(a1 + 2200) = 20;
  *(a1 + 2208) = 0x41F000003FC00000;
  *(a1 + 2224) = xmmword_1BCE46650;
  *(a1 + 2240) = xmmword_1BCE499C0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

double sub_1BCCB8A20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858, &qword_1BCE6CF50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3CE40;
  *(v0 + 64) = 0x42C8000044160000;
  *(v0 + 80) = xmmword_1BCE46670;
  *(v0 + 96) = xmmword_1BCE46680;
  *(v0 + 112) = xmmword_1BCE46690;
  *(v0 + 128) = xmmword_1BCE466A0;
  *(v0 + 3024) = xmmword_1BCE46850;
  *(v0 + 4928) = 1153957888;
  *(v0 + 6144) = 1153957888;
  *(v0 + 4944) = xmmword_1BCE40840;
  *(v0 + 6160) = xmmword_1BCE40840;
  *(v0 + 4960) = xmmword_1BCE40850;
  *(v0 + 6176) = xmmword_1BCE40850;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5360) = xmmword_1BCE46940;
  *(v0 + 6576) = xmmword_1BCE46940;
  *(v0 + 5376) = xmmword_1BCE46950;
  *(v0 + 6592) = xmmword_1BCE46950;
  *(v0 + 5392) = xmmword_1BCE46960;
  *(v0 + 6608) = xmmword_1BCE46960;
  *(v0 + 5408) = xmmword_1BCE46970;
  *(v0 + 6624) = xmmword_1BCE46970;
  *(v0 + 5424) = xmmword_1BCE46980;
  *(v0 + 6640) = xmmword_1BCE46980;
  *(v0 + 5440) = xmmword_1BCE41640;
  *(v0 + 6656) = xmmword_1BCE41640;
  *(v0 + 5472) = xmmword_1BCE46990;
  *(v0 + 6688) = xmmword_1BCE46990;
  v1 = vdupq_n_s64(0x3FED51B200000000uLL);
  *(v0 + 5872) = v1;
  *(v0 + 7088) = v1;
  *(v0 + 5888) = xmmword_1BCE469A0;
  *(v0 + 7104) = xmmword_1BCE469A0;
  *(v0 + 5904) = xmmword_1BCE469B0;
  *(v0 + 7120) = xmmword_1BCE469B0;
  *(v0 + 3712) = 1152319488;
  *(v0 + 7360) = 1152319488;
  *(v0 + 3728) = xmmword_1BCE406D0;
  *(v0 + 7376) = xmmword_1BCE406D0;
  *(v0 + 3744) = xmmword_1BCE406E0;
  *(v0 + 7392) = xmmword_1BCE406E0;
  *(v0 + 3760) = xmmword_1BCE46870;
  *(v0 + 4976) = xmmword_1BCE46870;
  *(v0 + 6192) = xmmword_1BCE46870;
  *(v0 + 7408) = xmmword_1BCE46870;
  *(v0 + 3776) = xmmword_1BCE3DC00;
  *(v0 + 4992) = xmmword_1BCE3DC00;
  *(v0 + 6208) = xmmword_1BCE3DC00;
  *(v0 + 7424) = xmmword_1BCE3DC00;
  *(v0 + 3792) = xmmword_1BCE406F0;
  *(v0 + 7440) = xmmword_1BCE406F0;
  *(v0 + 3808) = xmmword_1BCE40700;
  *(v0 + 7456) = xmmword_1BCE40700;
  *(v0 + 3824) = xmmword_1BCE46880;
  *(v0 + 5040) = xmmword_1BCE46880;
  *(v0 + 6256) = xmmword_1BCE46880;
  *(v0 + 7472) = xmmword_1BCE46880;
  *(v0 + 3840) = xmmword_1BCE3CBA0;
  *(v0 + 7488) = xmmword_1BCE3CBA0;
  *(v0 + 3936) = xmmword_1BCE468A0;
  *(v0 + 7584) = xmmword_1BCE468A0;
  *(v0 + 3984) = xmmword_1BCE40760;
  *(v0 + 5200) = xmmword_1BCE40760;
  *(v0 + 6416) = xmmword_1BCE40760;
  *(v0 + 7632) = xmmword_1BCE40760;
  *(v0 + 4000) = xmmword_1BCE40770;
  *(v0 + 5216) = xmmword_1BCE40770;
  *(v0 + 6432) = xmmword_1BCE40770;
  *(v0 + 7648) = xmmword_1BCE40770;
  *(v0 + 4016) = xmmword_1BCE430A0;
  *(v0 + 5232) = xmmword_1BCE430A0;
  *(v0 + 6448) = xmmword_1BCE430A0;
  *(v0 + 7664) = xmmword_1BCE430A0;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CDC0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 4144) = xmmword_1BCE468B0;
  *(v0 + 7792) = xmmword_1BCE468B0;
  *(v0 + 4160) = xmmword_1BCE468C0;
  *(v0 + 7808) = xmmword_1BCE468C0;
  *(v0 + 4176) = xmmword_1BCE468D0;
  *(v0 + 7824) = xmmword_1BCE468D0;
  *(v0 + 4192) = xmmword_1BCE468E0;
  *(v0 + 7840) = xmmword_1BCE468E0;
  *(v0 + 4208) = xmmword_1BCE468F0;
  *(v0 + 7856) = xmmword_1BCE468F0;
  *(v0 + 4224) = xmmword_1BCE46900;
  *(v0 + 7872) = xmmword_1BCE46900;
  *(v0 + 4240) = xmmword_1BCE46910;
  *(v0 + 5456) = xmmword_1BCE46910;
  *(v0 + 6672) = xmmword_1BCE46910;
  *(v0 + 7888) = xmmword_1BCE46910;
  *(v0 + 4256) = xmmword_1BCE46920;
  *(v0 + 7904) = xmmword_1BCE46920;
  *(v0 + 4688) = xmmword_1BCE46930;
  *(v0 + 8336) = xmmword_1BCE46930;
  *(v0 + 2496) = 0x4316000044610000;
  *(v0 + 8576) = 0x4316000044610000;
  *(v0 + 2512) = xmmword_1BCE40590;
  *(v0 + 8592) = xmmword_1BCE40590;
  *(v0 + 2528) = xmmword_1BCE405A0;
  *(v0 + 8608) = xmmword_1BCE405A0;
  *(v0 + 2544) = xmmword_1BCE405B0;
  *(v0 + 8624) = xmmword_1BCE405B0;
  *(v0 + 2560) = xmmword_1BCE405C0;
  *(v0 + 8640) = xmmword_1BCE405C0;
  *(v0 + 2608) = xmmword_1BCE467B0;
  *(v0 + 8688) = xmmword_1BCE467B0;
  *(v0 + 2624) = xmmword_1BCE467C0;
  *(v0 + 8704) = xmmword_1BCE467C0;
  *(v0 + 2672) = xmmword_1BCE3E780;
  *(v0 + 3888) = xmmword_1BCE3E780;
  *(v0 + 5104) = xmmword_1BCE3E780;
  *(v0 + 6320) = xmmword_1BCE3E780;
  *(v0 + 7536) = xmmword_1BCE3E780;
  *(v0 + 8752) = xmmword_1BCE3E780;
  *(v0 + 2704) = xmmword_1BCE467D0;
  *(v0 + 3920) = xmmword_1BCE467D0;
  *(v0 + 5136) = xmmword_1BCE467D0;
  *(v0 + 6352) = xmmword_1BCE467D0;
  *(v0 + 7568) = xmmword_1BCE467D0;
  *(v0 + 8784) = xmmword_1BCE467D0;
  *(v0 + 2720) = xmmword_1BCE467E0;
  *(v0 + 5152) = xmmword_1BCE467E0;
  *(v0 + 6368) = xmmword_1BCE467E0;
  *(v0 + 8800) = xmmword_1BCE467E0;
  *(v0 + 2800) = xmmword_1BCE42C40;
  *(v0 + 8880) = xmmword_1BCE42C40;
  *v1.i8 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v1.i64[0];
  *(v0 + 8896) = v1.i64[0];
  *(v0 + 2928) = xmmword_1BCE467F0;
  *(v0 + 9008) = xmmword_1BCE467F0;
  *(v0 + 2944) = xmmword_1BCE46800;
  *(v0 + 9024) = xmmword_1BCE46800;
  *(v0 + 2960) = xmmword_1BCE46810;
  *(v0 + 9040) = xmmword_1BCE46810;
  *(v0 + 2976) = xmmword_1BCE46820;
  *(v0 + 9056) = xmmword_1BCE46820;
  *(v0 + 2992) = xmmword_1BCE46830;
  *(v0 + 9072) = xmmword_1BCE46830;
  *(v0 + 3008) = xmmword_1BCE46840;
  *(v0 + 9088) = xmmword_1BCE46840;
  *(v0 + 9104) = xmmword_1BCE469C0;
  *(v0 + 3040) = xmmword_1BCE42F00;
  *(v0 + 9120) = xmmword_1BCE42F00;
  *(v0 + 3472) = xmmword_1BCE46860;
  *(v0 + 9552) = xmmword_1BCE46860;
  *(v0 + 10320) = xmmword_1BCE469D0;
  *(v0 + 10736) = xmmword_1BCE469E0;
  *(v0 + 10752) = xmmword_1BCE469F0;
  *(v0 + 144) = xmmword_1BCE3EEF0;
  *(v0 + 160) = xmmword_1BCE3EF00;
  *(v0 + 1264) = xmmword_1BCE3CE40;
  *(v0 + 2480) = xmmword_1BCE3CE40;
  *(v0 + 3696) = xmmword_1BCE3CE40;
  *(v0 + 4912) = xmmword_1BCE3CE40;
  *(v0 + 6128) = xmmword_1BCE3CE40;
  *(v0 + 7344) = xmmword_1BCE3CE40;
  *(v0 + 8560) = xmmword_1BCE3CE40;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 1280) = 0x42C8000044160000;
  *(v0 + 9792) = 0x42C8000044160000;
  *(v0 + 11008) = 0x42C8000044160000;
  *(v0 + 176) = xmmword_1BCE466B0;
  *(v0 + 192) = xmmword_1BCE466C0;
  *(v0 + 1296) = xmmword_1BCE46670;
  *(v0 + 9808) = xmmword_1BCE46670;
  *(v0 + 11024) = xmmword_1BCE46670;
  __asm { FMOV            V4.2D, #1.0 }

  *(v0 + 1312) = xmmword_1BCE46680;
  *(v0 + 9824) = xmmword_1BCE46680;
  *(v0 + 11040) = xmmword_1BCE46680;
  *(v0 + 1328) = xmmword_1BCE46690;
  *(v0 + 9840) = xmmword_1BCE46690;
  *(v0 + 11056) = xmmword_1BCE46690;
  *(v0 + 240) = xmmword_1BCE466F0;
  *(v0 + 256) = xmmword_1BCE3E790;
  *(v0 + 1344) = xmmword_1BCE466A0;
  *(v0 + 9856) = xmmword_1BCE466A0;
  *(v0 + 11072) = xmmword_1BCE466A0;
  *(v0 + 1360) = xmmword_1BCE3EEF0;
  *(v0 + 2576) = xmmword_1BCE3EEF0;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 8656) = xmmword_1BCE3EEF0;
  *(v0 + 9872) = xmmword_1BCE3EEF0;
  *(v0 + 11088) = xmmword_1BCE3EEF0;
  *(v0 + 272) = xmmword_1BCE40440;
  *(v0 + 288) = xmmword_1BCE46700;
  *(v0 + 1376) = xmmword_1BCE3EF00;
  *(v0 + 2592) = xmmword_1BCE3EF00;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 8672) = xmmword_1BCE3EF00;
  *(v0 + 9888) = xmmword_1BCE3EF00;
  *(v0 + 11104) = xmmword_1BCE3EF00;
  *(v0 + 1392) = xmmword_1BCE466B0;
  *(v0 + 9904) = xmmword_1BCE466B0;
  *(v0 + 11120) = xmmword_1BCE466B0;
  *(v0 + 1408) = xmmword_1BCE466C0;
  *(v0 + 9920) = xmmword_1BCE466C0;
  *(v0 + 11136) = xmmword_1BCE466C0;
  *(v0 + 320) = xmmword_1BCE3E1D0;
  *(v0 + 336) = xmmword_1BCE40480;
  *(v0 + 1456) = xmmword_1BCE466F0;
  *(v0 + 9968) = xmmword_1BCE466F0;
  *(v0 + 11184) = xmmword_1BCE466F0;
  *(v0 + 352) = xmmword_1BCE40490;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 1472) = xmmword_1BCE3E790;
  *(v0 + 2688) = xmmword_1BCE3E790;
  *(v0 + 3904) = xmmword_1BCE3E790;
  *(v0 + 5120) = xmmword_1BCE3E790;
  *(v0 + 6336) = xmmword_1BCE3E790;
  *(v0 + 7552) = xmmword_1BCE3E790;
  *(v0 + 8768) = xmmword_1BCE3E790;
  *(v0 + 9984) = xmmword_1BCE3E790;
  *(v0 + 11200) = xmmword_1BCE3E790;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1488) = xmmword_1BCE40440;
  *(v0 + 10000) = xmmword_1BCE40440;
  *(v0 + 11216) = xmmword_1BCE40440;
  result = 1.0;
  *(v0 + 1504) = xmmword_1BCE46700;
  *(v0 + 10016) = xmmword_1BCE46700;
  *(v0 + 11232) = xmmword_1BCE46700;
  *(v0 + 1536) = xmmword_1BCE3E1D0;
  *(v0 + 2752) = xmmword_1BCE3E1D0;
  *(v0 + 3968) = xmmword_1BCE3E1D0;
  *(v0 + 5184) = xmmword_1BCE3E1D0;
  *(v0 + 6400) = xmmword_1BCE3E1D0;
  *(v0 + 7616) = xmmword_1BCE3E1D0;
  *(v0 + 8832) = xmmword_1BCE3E1D0;
  *(v0 + 10048) = xmmword_1BCE3E1D0;
  *(v0 + 11264) = xmmword_1BCE3E1D0;
  *(v0 + 1552) = xmmword_1BCE40480;
  *(v0 + 2768) = xmmword_1BCE40480;
  *(v0 + 8848) = xmmword_1BCE40480;
  *(v0 + 10064) = xmmword_1BCE40480;
  *(v0 + 11280) = xmmword_1BCE40480;
  *(v0 + 1568) = xmmword_1BCE40490;
  *(v0 + 2784) = xmmword_1BCE40490;
  *(v0 + 8064) = _Q4;
  *(v0 + 8080) = _Q4;
  *(v0 + 8352) = xmmword_1BCE3A880;
  *(v0 + 8368) = _Q4;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = _Q4;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 8304) = _Q4;
  *(v0 + 8320) = xmmword_1BCE3DAE0;
  *(v0 + 8160) = _Q4;
  *(v0 + 8176) = _Q4;
  *(v0 + 0x2000) = _Q4;
  *(v0 + 8208) = _Q4;
  *(v0 + 8224) = _Q4;
  *(v0 + 8240) = _Q4;
  *(v0 + 8112) = _Q4;
  *(v0 + 8128) = _Q4;
  *(v0 + 8144) = _Q4;
  *(v0 + 8864) = xmmword_1BCE40490;
  *(v0 + 10080) = xmmword_1BCE40490;
  *(v0 + 11296) = xmmword_1BCE40490;
  *(v0 + 7984) = _Q4;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8016) = _Q4;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 8048) = _Q4;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 7920) = _Q4;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = _Q4;
  *(v0 + 7968) = _Q4;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 10096) = xmmword_1BCE3FC10;
  *(v0 + 11312) = xmmword_1BCE3FC10;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 496) = xmmword_1BCE46710;
  *(v0 + 512) = xmmword_1BCE46720;
  *(v0 + 7720) = 1065353216;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 7760) = _Q4;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 2864) = 0u;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 7600) = _Q4;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 7504) = _Q4;
  *(v0 + 7520) = _Q4;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 1712) = xmmword_1BCE46710;
  *(v0 + 7368) = 1061997773;
  *(v0 + 10224) = xmmword_1BCE46710;
  *(v0 + 11440) = xmmword_1BCE46710;
  *(v0 + 7337) = *v13;
  *(v0 + 7296) = _Q4;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4040800000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v13[3];
  *(v0 + 7216) = _Q4;
  *(v0 + 7232) = _Q4;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q4;
  *(v0 + 7280) = _Q4;
  *(v0 + 1728) = xmmword_1BCE46720;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = _Q4;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 10240) = xmmword_1BCE46720;
  *(v0 + 11456) = xmmword_1BCE46720;
  *(v0 + 528) = xmmword_1BCE46730;
  *(v0 + 544) = xmmword_1BCE46740;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7136) = xmmword_1BCE3A880;
  *(v0 + 7152) = _Q4;
  *(v0 + 6976) = _Q4;
  *(v0 + 6992) = _Q4;
  *(v0 + 7008) = _Q4;
  *(v0 + 7024) = _Q4;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q4;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 6896) = _Q4;
  *(v0 + 6912) = _Q4;
  *(v0 + 6928) = _Q4;
  *(v0 + 6944) = _Q4;
  *(v0 + 6960) = _Q4;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6800) = _Q4;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 6832) = _Q4;
  *(v0 + 6848) = _Q4;
  *(v0 + 6864) = _Q4;
  *(v0 + 6704) = _Q4;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6736) = _Q4;
  *(v0 + 6752) = _Q4;
  *(v0 + 6768) = _Q4;
  *(v0 + 1744) = xmmword_1BCE46730;
  *(v0 + 10256) = xmmword_1BCE46730;
  *(v0 + 11472) = xmmword_1BCE46730;
  *(v0 + 1760) = xmmword_1BCE46740;
  *(v0 + 10272) = xmmword_1BCE46740;
  *(v0 + 11488) = xmmword_1BCE46740;
  *(v0 + 560) = xmmword_1BCE46750;
  *(v0 + 576) = xmmword_1BCE46760;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 1776) = xmmword_1BCE46750;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 1065353216;
  *(v0 + 6544) = _Q4;
  *(v0 + 10288) = xmmword_1BCE46750;
  *(v0 + 11504) = xmmword_1BCE46750;
  *(v0 + 1792) = xmmword_1BCE46760;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 10304) = xmmword_1BCE46760;
  *(v0 + 11520) = xmmword_1BCE46760;
  *(v0 + 1808) = xmmword_1BCE46770;
  *(v0 + 11536) = xmmword_1BCE46770;
  *(v0 + 592) = xmmword_1BCE46770;
  *(v0 + 608) = xmmword_1BCE46780;
  *(v0 + 6384) = _Q4;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 1824) = xmmword_1BCE46780;
  *(v0 + 6288) = _Q4;
  *(v0 + 6304) = _Q4;
  *(v0 + 10336) = xmmword_1BCE46780;
  *(v0 + 11552) = xmmword_1BCE46780;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 6272) = _Q4;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 6121) = *v12;
  *(v0 + 6124) = *&v12[3];
  *(v0 + 6152) = 1061997773;
  *(v0 + 6048) = _Q4;
  *(v0 + 6064) = _Q4;
  *(v0 + 6080) = _Q4;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 5968) = _Q4;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q4;
  *(v0 + 6016) = _Q4;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 11952) = xmmword_1BCE46A00;
  *(v0 + 2224) = xmmword_1BCE46790;
  *(v0 + 1008) = xmmword_1BCE46790;
  *(v0 + 1024) = xmmword_1BCE40080;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5920) = xmmword_1BCE3A880;
  *(v0 + 5936) = _Q4;
  *(v0 + 5760) = _Q4;
  *(v0 + 5776) = _Q4;
  *(v0 + 5792) = _Q4;
  *(v0 + 5808) = _Q4;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q4;
  *(v0 + 5680) = _Q4;
  *(v0 + 5696) = _Q4;
  *(v0 + 5712) = _Q4;
  *(v0 + 5728) = _Q4;
  *(v0 + 5744) = _Q4;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 5584) = _Q4;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5616) = _Q4;
  *(v0 + 5632) = _Q4;
  *(v0 + 5648) = _Q4;
  *(v0 + 2240) = xmmword_1BCE40080;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5520) = _Q4;
  *(v0 + 5536) = _Q4;
  *(v0 + 5552) = _Q4;
  *(v0 + 11968) = xmmword_1BCE40080;
  *(v0 + 1040) = xmmword_1BCE467A0;
  *(v0 + 2256) = xmmword_1BCE467A0;
  *(v0 + 5488) = _Q4;
  *(v0 + 10768) = xmmword_1BCE467A0;
  *(v0 + 11984) = xmmword_1BCE467A0;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 1056) = xmmword_1BCE3A880;
  *(v0 + 5328) = _Q4;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 2272) = xmmword_1BCE3A880;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 1065353216;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 3488) = xmmword_1BCE3A880;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 5168) = _Q4;
  *(v0 + 4704) = xmmword_1BCE3A880;
  *(v0 + 5056) = _Q4;
  *(v0 + 5072) = _Q4;
  *(v0 + 5088) = _Q4;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 9568) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 10784) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 12000) = xmmword_1BCE3A880;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v11;
  *(v0 + 4908) = *&v11[3];
  *(v0 + 4936) = 1061997773;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q4;
  *(v0 + 4848) = _Q4;
  *(v0 + 4864) = _Q4;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4720) = _Q4;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = _Q4;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = _Q4;
  *(v0 + 4800) = _Q4;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = _Q4;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4656) = _Q4;
  *(v0 + 4672) = xmmword_1BCE3DAE0;
  *(v0 + 4528) = _Q4;
  *(v0 + 4544) = _Q4;
  *(v0 + 4560) = _Q4;
  *(v0 + 4576) = _Q4;
  *(v0 + 4592) = _Q4;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 4432) = _Q4;
  *(v0 + 4464) = _Q4;
  *(v0 + 4480) = _Q4;
  *(v0 + 4496) = _Q4;
  *(v0 + 4512) = _Q4;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 4336) = _Q4;
  *(v0 + 4368) = _Q4;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = _Q4;
  *(v0 + 4416) = _Q4;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 4272) = _Q4;
  *(v0 + 4304) = _Q4;
  *(v0 + 4320) = _Q4;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4112) = _Q4;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 9248) = xmmword_1BCE3C8C0;
  *(v0 + 9472) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 10464) = xmmword_1BCE3C8C0;
  *(v0 + 10688) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11680) = xmmword_1BCE3C8C0;
  *(v0 + 11904) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3952) = _Q4;
  *(v0 + 3456) = xmmword_1BCE3DAE0;
  *(v0 + 3536) = _Q4;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3568) = _Q4;
  *(v0 + 3856) = _Q4;
  *(v0 + 3872) = _Q4;
  *(v0 + 3584) = _Q4;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = _Q4;
  *(v0 + 3632) = _Q4;
  *(v0 + 3648) = _Q4;
  *(v0 + 3689) = *v10;
  *(v0 + 3692) = *&v10[3];
  *(v0 + 3720) = 1061997773;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4040800000000000;
  *(v0 + 3688) = 0;
  *(v0 + 8416) = xmmword_1BCE3DAE0;
  *(v0 + 8992) = xmmword_1BCE3DAE0;
  *(v0 + 9504) = xmmword_1BCE3DAE0;
  *(v0 + 9536) = xmmword_1BCE3DAE0;
  *(v0 + 9632) = xmmword_1BCE3DAE0;
  *(v0 + 10208) = xmmword_1BCE3DAE0;
  *(v0 + 10720) = xmmword_1BCE3DAE0;
  *(v0 + 10848) = xmmword_1BCE3DAE0;
  *(v0 + 11424) = xmmword_1BCE3DAE0;
  *(v0 + 11936) = xmmword_1BCE3DAE0;
  *(v0 + 12064) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3440) = _Q4;
  *(v0 + 3504) = _Q4;
  *(v0 + 3248) = _Q4;
  *(v0 + 3264) = _Q4;
  *(v0 + 3344) = _Q4;
  *(v0 + 3360) = _Q4;
  *(v0 + 3376) = _Q4;
  *(v0 + 3408) = _Q4;
  *(v0 + 3280) = _Q4;
  *(v0 + 3296) = _Q4;
  *(v0 + 3312) = _Q4;
  *(v0 + 3328) = _Q4;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 3152) = _Q4;
  *(v0 + 3184) = _Q4;
  *(v0 + 3200) = _Q4;
  *(v0 + 3216) = _Q4;
  *(v0 + 304) = _Q4;
  *(v0 + 464) = _Q4;
  *(v0 + 3056) = _Q4;
  *(v0 + 3088) = _Q4;
  *(v0 + 3104) = _Q4;
  *(v0 + 3120) = _Q4;
  *(v0 + 624) = _Q4;
  *(v0 + 672) = _Q4;
  *(v0 + 688) = _Q4;
  *(v0 + 720) = _Q4;
  *(v0 + 768) = _Q4;
  *(v0 + 784) = _Q4;
  *(v0 + 944) = _Q4;
  *(v0 + 976) = _Q4;
  *(v0 + 208) = _Q4;
  *(v0 + 224) = _Q4;
  *(v0 + 400) = _Q4;
  *(v0 + 2896) = _Q4;
  *(v0 + 656) = _Q4;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q4;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 1065353216;
  *(v0 + 752) = _Q4;
  *(v0 + 816) = _Q4;
  *(v0 + 832) = _Q4;
  *(v0 + 848) = _Q4;
  *(v0 + 864) = _Q4;
  *(v0 + 2736) = _Q4;
  *(v0 + 880) = _Q4;
  *(v0 + 896) = _Q4;
  *(v0 + 912) = _Q4;
  *(v0 + 928) = _Q4;
  *(v0 + 2640) = _Q4;
  *(v0 + 2656) = _Q4;
  *(v0 + 1072) = _Q4;
  *(v0 + 1104) = _Q4;
  *(v0 + 1136) = _Q4;
  *(v0 + 1152) = _Q4;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q4;
  *(v0 + 1200) = _Q4;
  *(v0 + 1216) = _Q4;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v9;
  *(v0 + 2476) = *&v9[3];
  *(v0 + 2504) = 1056964608;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = _Q4;
  *(v0 + 2416) = _Q4;
  *(v0 + 2432) = _Q4;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 2368) = _Q4;
  *(v0 + 1257) = *v8;
  *(v0 + 1260) = *&v8[3];
  *(v0 + 2288) = _Q4;
  *(v0 + 2320) = _Q4;
  *(v0 + 2352) = _Q4;
  *(v0 + 1288) = 1053609165;
  *(v0 + 1424) = _Q4;
  *(v0 + 1440) = _Q4;
  *(v0 + 1520) = _Q4;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 2192) = _Q4;
  *(v0 + 1616) = _Q4;
  *(v0 + 2096) = _Q4;
  *(v0 + 2112) = _Q4;
  *(v0 + 2128) = _Q4;
  *(v0 + 2144) = _Q4;
  *(v0 + 2160) = _Q4;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 2000) = _Q4;
  *(v0 + 2032) = _Q4;
  *(v0 + 2048) = _Q4;
  *(v0 + 2064) = _Q4;
  *(v0 + 2080) = _Q4;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1680) = _Q4;
  *(v0 + 1904) = _Q4;
  *(v0 + 1936) = _Q4;
  *(v0 + 1968) = _Q4;
  *(v0 + 1984) = _Q4;
  *(v0 + 1840) = _Q4;
  *(v0 + 1872) = _Q4;
  *(v0 + 1888) = _Q4;
  *(v0 + 8400) = _Q4;
  *(v0 + 8432) = _Q4;
  *(v0 + 8448) = _Q4;
  *(v0 + 8480) = _Q4;
  *(v0 + 8496) = _Q4;
  *(v0 + 8512) = _Q4;
  *(v0 + 8720) = _Q4;
  *(v0 + 8736) = _Q4;
  *(v0 + 8816) = _Q4;
  *(v0 + 8912) = _Q4;
  *(v0 + 8976) = _Q4;
  *(v0 + 9136) = _Q4;
  *(v0 + 9168) = _Q4;
  *(v0 + 9184) = _Q4;
  *(v0 + 9200) = _Q4;
  *(v0 + 9232) = _Q4;
  *(v0 + 9264) = _Q4;
  *(v0 + 9280) = _Q4;
  *(v0 + 9296) = _Q4;
  *(v0 + 9328) = _Q4;
  *(v0 + 9344) = _Q4;
  *(v0 + 9360) = _Q4;
  *(v0 + 9376) = _Q4;
  *(v0 + 9392) = _Q4;
  *(v0 + 9408) = _Q4;
  *(v0 + 9424) = _Q4;
  *(v0 + 9440) = _Q4;
  *(v0 + 9456) = _Q4;
  *(v0 + 9488) = _Q4;
  *(v0 + 9520) = _Q4;
  *(v0 + 9584) = _Q4;
  *(v0 + 9616) = _Q4;
  *(v0 + 9648) = _Q4;
  *(v0 + 9664) = _Q4;
  *(v0 + 9696) = _Q4;
  *(v0 + 9712) = _Q4;
  *(v0 + 9728) = _Q4;
  *(v0 + 9936) = _Q4;
  *(v0 + 9952) = _Q4;
  *(v0 + 10032) = _Q4;
  *(v0 + 10128) = _Q4;
  *(v0 + 10192) = _Q4;
  *(v0 + 10352) = _Q4;
  *(v0 + 10384) = _Q4;
  *(v0 + 10400) = _Q4;
  *(v0 + 10416) = _Q4;
  *(v0 + 10448) = _Q4;
  *(v0 + 10480) = _Q4;
  *(v0 + 10496) = _Q4;
  *(v0 + 10512) = _Q4;
  *(v0 + 10544) = _Q4;
  *(v0 + 10560) = _Q4;
  *(v0 + 10576) = _Q4;
  *(v0 + 10592) = _Q4;
  *(v0 + 10608) = _Q4;
  *(v0 + 10624) = _Q4;
  *(v0 + 10640) = _Q4;
  *(v0 + 10656) = _Q4;
  *(v0 + 10672) = _Q4;
  *(v0 + 10704) = _Q4;
  *(v0 + 10800) = _Q4;
  *(v0 + 10832) = _Q4;
  *(v0 + 10864) = _Q4;
  *(v0 + 10880) = _Q4;
  *(v0 + 10912) = _Q4;
  *(v0 + 10928) = _Q4;
  *(v0 + 10944) = _Q4;
  *(v0 + 11152) = _Q4;
  *(v0 + 11168) = _Q4;
  *(v0 + 11248) = _Q4;
  *(v0 + 11344) = _Q4;
  *(v0 + 11408) = _Q4;
  *(v0 + 11568) = _Q4;
  *(v0 + 11600) = _Q4;
  *(v0 + 11616) = _Q4;
  *(v0 + 11632) = _Q4;
  *(v0 + 11664) = _Q4;
  *(v0 + 11696) = _Q4;
  *(v0 + 11712) = _Q4;
  *(v0 + 11728) = _Q4;
  *(v0 + 11760) = _Q4;
  *(v0 + 11776) = _Q4;
  *(v0 + 11792) = _Q4;
  *(v0 + 11808) = _Q4;
  *(v0 + 11824) = _Q4;
  *(v0 + 11840) = _Q4;
  *(v0 + 11856) = _Q4;
  *(v0 + 11872) = _Q4;
  *(v0 + 11888) = _Q4;
  *(v0 + 11920) = _Q4;
  *(v0 + 12016) = _Q4;
  *(v0 + 12048) = _Q4;
  *(v0 + 12080) = _Q4;
  *(v0 + 12096) = _Q4;
  *(v0 + 12128) = _Q4;
  *(v0 + 12144) = _Q4;
  *(v0 + 12160) = _Q4;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 1065353216;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1053609165;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8553) = *v14;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC017FFFFFFFFFFE8;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v14[3];
  *(v0 + 8584) = 1056964608;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 1065353216;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC032000000000004;
  *(v0 + 9769) = *v15;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v15[3];
  *(v0 + 9800) = 1053609165;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 1065353216;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v16;
  *(v0 + 10988) = *&v16[3];
  *(v0 + 11016) = 1053609165;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 1065353216;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

double sub_1BCCB9AF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0.0;
    v10 = 32;
    v11 = *(a1 + 16);
    do
    {
      v9 = v9 + *(a1 + v10);
      v10 += 16;
      --v11;
    }

    while (v11);
    v22 = MEMORY[0x1E69E7CC0];
    sub_1BCA153F8(0, v8, 0);
    v12 = 0;
    v13 = v22;
    v14 = *(v22 + 16);
    v15 = 16 * v14;
    do
    {
      v16 = *(a1 + v12 + 32);
      v17 = *(a1 + v12 + 40);
      v18 = *(v22 + 24);
      v19 = v14 + 1;
      if (v14 >= v18 >> 1)
      {
        sub_1BCA153F8((v18 > 1), v14 + 1, 1);
      }

      *(v22 + 16) = v19;
      v20 = v22 + v15 + v12;
      *(v20 + 32) = v16 / v9;
      *(v20 + 40) = v17;
      v12 += 16;
      v14 = v19;
      --v8;
    }

    while (v8);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v13;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  result = 1.75;
  *(a3 + 24) = xmmword_1BCE5F010;
  *(a3 + 40) = 9;
  return result;
}

void sub_1BCCB9C5C(uint64_t a1, long double a2)
{
  v5 = *(v2 + 24);
  v33 = *(v2 + 32);

  sub_1BCAF6964();
  v9 = v6;
  v10 = v7;
  v11 = v8;
  v12 = v8 >> 1;
  v13 = 0.0;
  v14 = (v8 >> 1) - v7;
  if (v8 >> 1 == v7)
  {
LABEL_5:
    v17 = v12 - v7;
    if (__OFSUB__(v12, v7))
    {
      __break(1u);
    }

    else if ((v17 & 0x8000000000000000) == 0)
    {
      if (!v17)
      {
LABEL_26:
        swift_unknownObjectRelease();
        return;
      }

      v32 = atan2(v5, a2);
      if (v10 <= 0)
      {
        if (v11 >= 2)
        {
          if (v17 <= v12)
          {
            v18 = 0;
            v19 = MEMORY[0x1E69E7CC0];
            v20 = (v9 + 8);
            v21 = 0.0;
            do
            {
              --v17;
              if (v18)
              {
                v22 = 2 * (v17 == 0);
              }

              else
              {
                v22 = 1;
              }

              v23 = *(v20 - 1);
              v24 = *v20;
              v25 = v33 * v23 / v13;
              if (v21 == 0.0)
              {
                v26 = (6.28318531 - v33) * 0.5 + v25 * 0.5 + 1.57079633;
              }

              else
              {
                v26 = v21;
              }

              if (v24 <= a1)
              {
                v27 = 1.0;
              }

              else
              {
                v27 = 0.5;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1BCB66388();
                v19 = v30;
              }

              v28 = *(v19 + 16);
              if (v28 >= *(v19 + 24) >> 1)
              {
                sub_1BCB66388();
                v19 = v31;
              }

              *(v19 + 16) = v28 + 1;
              v29 = v19 + 56 * v28;
              *(v29 + 32) = v24;
              v21 = v25 + v26;
              v20 += 2;
              *(v29 + 40) = v26;
              *(v29 + 48) = v23;
              *(v29 + 56) = v24;
              *(v29 + 64) = v22;
              *(v29 + 72) = v25 - v32;
              *(v29 + 80) = v27;
              --v18;
            }

            while (v17);
            goto LABEL_26;
          }

          goto LABEL_31;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_29;
  }

  if ((v8 >> 1) > v7)
  {
    v15 = (v6 + 16 * v7);
    do
    {
      v16 = *v15;
      v15 += 2;
      v13 = v13 + v16;
      --v14;
    }

    while (v14);
    goto LABEL_5;
  }

LABEL_32:
  __break(1u);
}

uint64_t NonNumericalGaugeChart.body.getter@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v8[2] = v1[2];
  v4 = swift_allocObject();
  v5 = v1[1];
  *(v4 + 1) = *v1;
  *(v4 + 2) = v5;
  *(v4 + 3) = v1[2];
  *a1 = sub_1BCCBA0E8;
  a1[1] = v4;
  return sub_1BCCBA0F0(v8, &v7);
}

uint64_t sub_1BCCB9F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BCE1BCA0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C1B8, &qword_1BCE5F278);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v17 - v9);
  *v10 = sub_1BCE1CEE0();
  v10[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C1C0, &qword_1BCE5F280);
  sub_1BCCBA144(a1, a2);
  sub_1BCE1B630();
  v13 = v12 * 0.5;
  sub_1BCE1B630();
  v15 = (v10 + *(v8 + 36));
  *v15 = v13;
  v15[1] = v14 * 0.5;
  (*(v5 + 104))(v7, *MEMORY[0x1E697F3A0], v4);
  sub_1BCCBB274();
  sub_1BCE1C820();
  (*(v5 + 8))(v7, v4);
  return sub_1BCCBB32C(v10);
}

uint64_t sub_1BCCBA144(uint64_t a1, uint64_t a2)
{
  sub_1BCE1B630();
  v4 = v3 * 0.5;
  sub_1BCE1B630();
  if (v5 * 0.5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5 * 0.5;
  }

  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v11[2] = *(a2 + 32);
  sub_1BCCB9C5C(*(a2 + 16), v6);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = *(a2 + 16);
  *(v8 + 24) = *a2;
  *(v8 + 40) = v9;
  *(v8 + 56) = *(a2 + 32);
  sub_1BCCBA0F0(a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C1E0, &qword_1BCE5F290);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C1E8, &qword_1BCE5F298);
  sub_1BC957184(&qword_1EBD0C1F0, &qword_1EBD0C1E0, &qword_1BCE5F290, MEMORY[0x1E69E6338]);
  sub_1BCCBB3A0();
  sub_1BCCBB458();
  return sub_1BCE1CE20();
}

void sub_1BCCBA2B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = a4 - *(a2 + 8);
  sub_1BCE1CFA0();
  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = a4;
  *(a3 + 24) = 0x3FF4000000000000;
  *(a3 + 32) = v7;
  *(a3 + 40) = v6;
  *(a3 + 48) = v11;
  *(a3 + 56) = v12;
  *(a3 + 64) = v9;
}

uint64_t sub_1BCCBA32C(uint64_t *a1, int a2)
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

uint64_t sub_1BCCBA36C(uint64_t result, int a2, int a3)
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

uint64_t sub_1BCCBA3D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
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

uint64_t sub_1BCCBA414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1BCCBA46C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 56))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
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

uint64_t sub_1BCCBA4A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 2;
    }
  }

  return result;
}

double sub_1BCCBA584@<D0>(uint64_t a1@<X8>)
{
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  if (*(v5 + 32))
  {
    sub_1BCCBA9A8(*(v5 + 32) != 1, v13, v7, v8, v9);
  }

  else
  {
    sub_1BCCBA604(v13, v7, v8, v9);
  }

  v10 = v14;
  result = *v13;
  v12 = v13[1];
  *a1 = v13[0];
  *(a1 + 16) = v12;
  *(a1 + 32) = v10;
  return result;
}

double sub_1BCCBA604@<D0>(uint64_t a1@<X8>, double a2@<D1>, double a3@<D2>, double a4@<D3>)
{
  v5 = v4;
  Mutable = CGPathCreateMutable();
  if (a4 == 0.0)
  {
    v11 = *v5;
    __sincos_stret(*v5 * 0.5);
    sub_1BCE1D940();
    sub_1BCE1D960();
    sub_1BCE1D950();
    sin(-(v11 * 0.5));
    sub_1BCE1D960();
  }

  else
  {
    v20 = atan2(a4 * a4 / (a2 + a2) + a4, a2 + a4);
    v23 = atan2(a4 - a4 * a4 / (a3 + a3), a3 - a4);
    v12 = *v5 * 0.5;
    __sincos_stret(v12);
    v13 = __sincos_stret(v12 - v20);
    cosval = v13.__cosval;
    sinval = v13.__sinval;
    v16 = __sincos_stret(v12 - v23);
    v17 = v16.__cosval;
    v18 = v16.__sinval;
    v21 = v18;
    v22 = v17;
    sub_1BCE1D940();
    sub_1BCE1D960();
    sub_1BCE1D950();
    atan2(sinval, cosval);
    sub_1BCE1D950();
    sub_1BCE1D950();
    sub_1BCE1D960();
    sub_1BCE1D950();
    atan2(-v21, v22);
    sub_1BCE1D950();
  }

  sub_1BCE1D950();
  CGPathCloseSubpath(Mutable);
  sub_1BCE1C500();
  result = *&v24;
  *a1 = v24;
  *(a1 + 16) = v25;
  *(a1 + 32) = v26;
  return result;
}

double sub_1BCCBA9A8@<D0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v6 = v5;
  Mutable = CGPathCreateMutable();
  v39 = atan2(a5 * a5 / (a3 + a3) + a5, a3 + a5);
  v40 = atan2(a5 - a5 * a5 / (a4 + a4), a4 - a5);
  v13 = *v6 * 0.5;
  __sincos_stret(v13);
  v14 = __sincos_stret(v13 - v39);
  cosval = v14.__cosval;
  v38 = cosval;
  sinval = v14.__sinval;
  v35 = sinval;
  v17 = __sincos_stret(v13 - v40);
  v18 = v17.__cosval;
  v36 = v18;
  v19 = v17.__sinval;
  v37 = v19;
  v20 = (a4 - a3) * 0.5;
  v21 = atan2(v20 + v20 * v20 / (a3 + a3), v20 + a3);
  v22 = atan2(v20 - v20 * v20 / (a4 + a4), a4 - v20);
  v23 = v13 - v21;
  v24 = __sincosf_stret(v23);
  v25 = v13 - v22;
  v26 = __sincosf_stret(v25);
  atan2(v35, v38);
  v27 = atan2(v24.__sinval, v24.__cosval);
  v28 = atan2(-v26.__sinval, v26.__cosval);
  atan2(-v37, v36);
  if (a1)
  {
    v29 = v27;
    sinf(v29);
    v30 = -v28;
    sinf(v30);
    v31 = v27;
    cosf(v31);
    cosf(v30);
    sub_1BCE1D950();
    sub_1BCE1D950();
    sub_1BCE1D960();
  }

  else
  {
    v32 = -v27;
    sinf(v32);
    v33 = v28;
    sinf(v33);
    cosf(v32);
    cosf(v33);
    sub_1BCE1D940();
    sub_1BCE1D960();
    sub_1BCE1D950();
    sub_1BCE1D950();
  }

  sub_1BCE1D950();
  sub_1BCE1D950();
  sub_1BCE1D950();
  CGPathCloseSubpath(Mutable);
  sub_1BCE1C500();
  result = *&v41;
  *a2 = v41;
  *(a2 + 16) = v42;
  *(a2 + 32) = v43;
  return result;
}

double sub_1BCCBAF54@<D0>(uint64_t a1@<X8>)
{
  v7 = v5[1];
  v12 = *v5;
  v13 = v7;
  v14 = *(v5 + 32);
  sub_1BCCBA584(v10);
  result = *v10;
  v9 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v9;
  *(a1 + 32) = v11;
  return result;
}

void (*sub_1BCCBAFE8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1BCE1B480();
  return sub_1BCA286DC;
}

uint64_t sub_1BCCBB05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BCCBB220();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1BCCBB0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BCCBB220();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1BCCBB124(uint64_t a1)
{
  v2 = sub_1BCCBB220();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1BCCBB174()
{
  result = qword_1EBD0C1A0;
  if (!qword_1EBD0C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C1A0);
  }

  return result;
}

unint64_t sub_1BCCBB1CC()
{
  result = qword_1EBD0C1A8;
  if (!qword_1EBD0C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C1A8);
  }

  return result;
}

unint64_t sub_1BCCBB220()
{
  result = qword_1EBD0C1B0;
  if (!qword_1EBD0C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C1B0);
  }

  return result;
}

unint64_t sub_1BCCBB274()
{
  result = qword_1EBD0C1C8;
  if (!qword_1EBD0C1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C1B8, &qword_1BCE5F278);
    sub_1BC957184(&qword_1EBD0C1D0, &qword_1EBD0C1D8, &qword_1BCE5F288, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C1C8);
  }

  return result;
}

uint64_t sub_1BCCBB32C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C1B8, &qword_1BCE5F278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BCCBB3A0()
{
  result = qword_1EBD0C1F8;
  if (!qword_1EBD0C1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C1E8, &qword_1BCE5F298);
    sub_1BC957184(&qword_1EBD0C200, &qword_1EBD0C208, &qword_1BCE5F2A0, MEMORY[0x1E697DF00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C1F8);
  }

  return result;
}

unint64_t sub_1BCCBB458()
{
  result = qword_1EBD0C210;
  if (!qword_1EBD0C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C210);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Arc.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BCCBB58C()
{
  result = qword_1EBD0C218;
  if (!qword_1EBD0C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C218);
  }

  return result;
}

unint64_t sub_1BCCBB5E4()
{
  result = qword_1EBD0C220;
  if (!qword_1EBD0C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C220);
  }

  return result;
}

void sub_1BCCBB638(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA75E88();
  v4 = v3;
  sub_1BCA75E88();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3AF000000000000;
  *(a1 + 80) = xmmword_1BCE3F410;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4100000041727059;
  *(a1 + 248) = 1109393408;
  *(a1 + 256) = 0x3E19999A3DB851ECLL;
  *(a1 + 264) = 0x40A00000410F6D04;
  *(a1 + 272) = 1093310165;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x42A0000041400000;
  *(a1 + 328) = 0x3E3851EC3DCCCCCDLL;
  *(a1 + 336) = 0x4000000041076DDCLL;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F99999A3F19999ALL;
  *(a1 + 720) = 0x41B1B85241900000;
  *(a1 + 728) = 1102579360;
  *(a1 + 736) = 1;
  *(a1 + 744) = 10;
  *(a1 + 752) = xmmword_1BCE53B20;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F4CCCCD3ECCCCCDLL;
  *(a1 + 848) = 0x417C0000413CF5C2;
  *(a1 + 856) = 1094983344;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3F4C0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x415A8F5C40E00000;
  *(a1 + 984) = 1076315424;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF4C202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE798E0;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 1084503840;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE5F350;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3E851EB83DF5C28FLL;
  *(a1 + 1296) = 0x4140000041500000;
  *(a1 + 1304) = 1099951505;
  *(a1 + 1312) = xmmword_1BCE3C7C0;
  *(a1 + 1328) = xmmword_1BCE3FB70;
  *(a1 + 1344) = 0x4170000041200000;
  *(a1 + 1352) = 1092616192;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 5;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1637) = 0;
  *(a1 + 1631) = 0;
  *(v2 + 209) = 16843009;
  *(v2 + 213) = 50331648;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 12;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3C070;
  *(a1 + 1984) = 0x3F800000412D53BALL;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3F500;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E23D70A3D8F5C29;
  *(a1 + 2128) = 0x408000003FC00000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1049918177;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

uint64_t Gradient.init(_:)(uint64_t a1)
{
  v30 = sub_1BCE1A600();
  v2 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BCE1A5B0();
  v6 = *(v5 + 16);
  if (v6)
  {
    v27 = a1;
    v31 = MEMORY[0x1E69E7CC0];
    sub_1BC9950E0(0, v6, 0);
    v7 = v31;
    v9 = *(v2 + 16);
    v8 = v2 + 16;
    v10 = *(v8 + 64);
    v26 = v5;
    v11 = v5 + ((v10 + 32) & ~v10);
    v28 = *(v8 + 56);
    v29 = v9;
    v12 = (v8 - 8);
    do
    {
      v13 = v30;
      v14 = v8;
      v29(v4, v11, v30);
      v15 = sub_1BCE1A5E0();
      Color.init(hex:)(v15, v16);
      sub_1BCE1A5F0();
      v17 = sub_1BCE1CE50();
      v19 = v18;
      (*v12)(v4, v13);
      v31 = v7;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1BC9950E0((v20 > 1), v21 + 1, 1);
        v7 = v31;
      }

      *(v7 + 16) = v21 + 1;
      v22 = v7 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v11 += v28;
      --v6;
      v8 = v14;
    }

    while (v6);

    a1 = v27;
  }

  else
  {
  }

  v23 = sub_1BCE1CE60();
  v24 = sub_1BCE1A5C0();
  (*(*(v24 - 8) + 8))(a1, v24);
  return v23;
}

void Gradient.mostLuminantStopColor.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = *(a1 + 32);

    v4 = 1;
LABEL_3:
    v5 = (v2 + 16 * v4);
    while (v1 != v4)
    {
      if (v4 >= v1)
      {
        __break(1u);
LABEL_12:
        __break(1u);
        return;
      }

      if (__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }

      v6 = *v5;

      sub_1BCDB9DC4(v3);
      v8 = v7;
      sub_1BCDB9DC4(v6);
      if (v8 < v9)
      {

        ++v4;
        v3 = v6;
        goto LABEL_3;
      }

      ++v4;
      v5 += 2;
    }
  }
}

double sub_1BCCBC0D4@<D0>(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA39604();
  v4 = v3;
  sub_1BCA39604();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC37A000000000000;
  *(a1 + 80) = xmmword_1BCE3EB50;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE50250;
  *(a1 + 240) = 0x4190000041727059;
  *(a1 + 248) = 1126170624;
  *(a1 + 256) = 0x3E1DB22D3DCCCCCDLL;
  *(a1 + 264) = 0x40A00000410F6D04;
  *(a1 + 272) = 1093310349;
  __asm { FMOV            V1.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q1;
  *(a1 + 320) = 0x437A000041500000;
  *(a1 + 328) = 0x3E4CCCCD3DB851ECLL;
  *(a1 + 336) = 0x4000000041076DDCLL;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q1;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q1;
  *(a1 + 544) = _Q1;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q1;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F19999A3F000000;
  *(a1 + 720) = 0x41A0000041700000;
  *(a1 + 728) = 1082130432;
  *(a1 + 736) = 1;
  *(a1 + 744) = 12;
  *(a1 + 752) = xmmword_1BCE5F380;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 10;
  *(a1 + 816) = _Q1;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F4CCCCD3F333333;
  *(a1 + 848) = 0x4188000041600000;
  *(a1 + 856) = 1081081856;
  *(a1 + 864) = 1;
  *(a1 + 872) = 3;
  *(a1 + 880) = xmmword_1BCE5F390;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q1;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F333333;
  __asm { FMOV            V4.2S, #13.0 }

  *(a1 + 976) = _D4;
  *(a1 + 984) = 1091291412;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 5;
  *(a1 + 1008) = xmmword_1BCE43200;
  *(a1 + 1024) = 0xD000000000000010;
  *(a1 + 1032) = 0x80000001BCE79860;
  *(a1 + 1040) = 0xD000000000000014;
  *(a1 + 1048) = 0x80000001BCE79880;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q1;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 1084503840;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q1;
  *(a1 + 1216) = xmmword_1BCE43210;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3E851EB83E4CCCCDLL;
  *(a1 + 1296) = 0x41C8000041880000;
  *(a1 + 1304) = 1099951505;
  *(a1 + 1312) = xmmword_1BCE3C7C0;
  *(a1 + 1328) = xmmword_1BCE3FB70;
  *(a1 + 1344) = 0x4170000041200000;
  *(a1 + 1352) = 1092616192;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 5;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q1;
  *(a1 + 1488) = _Q1;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q1;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1637) = 0;
  *(a1 + 1631) = 0;
  *(v2 + 209) = 0x300000101000101;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v14;
  *(a1 + 1659) = v15;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 12;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q1;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q1;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 2128) = 0x407333333FC00000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q1;
  *(a1 + 2176) = _Q1;
  *(a1 + 2192) = 1051931443;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  result = 2.00000047;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q1;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v13;
  return result;
}

void VFXEffectType.url.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = [objc_opt_self() mainBundle];
  v4 = "WeatherV136_Default_Collision";
  if (v3)
  {
    v4 = "r example, Warmer tomorrow";
  }

  sub_1BCDBDB0C((v4 | 0x8000000000000000), 0xE300000000000000, a1);
}

uint64_t VFXEffectType.hashValue.getter()
{
  v1 = *v0;
  sub_1BCE1E100();
  MEMORY[0x1BFB30850](v1);
  return sub_1BCE1E150();
}

uint64_t VFXEffectType.description.getter()
{
  if (*v0)
  {
    return 0x6F6973696C6C6F63;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

unint64_t sub_1BCCBC9BC()
{
  result = qword_1EBD0C228;
  if (!qword_1EBD0C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C228);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VFXEffectType(_BYTE *result, unsigned int a2, unsigned int a3)
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

double sub_1BCCBCAF0@<D0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA9E01C();
  v4 = v3;
  sub_1BCA9E01C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 128) = _Q0;
  *(a1 + 144) = _Q0;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = _Q0;
  *(a1 + 208) = _Q0;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  *(a1 + 288) = _Q0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = _Q0;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B449BA63F4CCCCDLL;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3EB70;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = _Q0;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = _Q0;
  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE497C0;
  *(a1 + 640) = xmmword_1BCE497D0;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = xmmword_1BCE4B1E0;
  *(a1 + 704) = 1061997773;
  *(a1 + 712) = 0x3F6666663E99999ALL;
  *(a1 + 720) = 0x4198000041700000;
  *(a1 + 728) = 1066369312;
  *(a1 + 736) = 1;
  *(a1 + 744) = 6;
  *(a1 + 752) = xmmword_1BCE3EB80;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1061997773;
  *(a1 + 840) = 0x3F19999A3E4CCCCDLL;
  *(a1 + 848) = 0x41A0000041700000;
  *(a1 + 856) = 1092107296;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE44850;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79320;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79340;
  *(a1 + 928) = 9;
  *(a1 + 944) = xmmword_1BCE5D4C0;
  *(a1 + 960) = 1063675494;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x4170000041200000;
  *(a1 + 984) = 1083393800;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3EBA0;
  *(a1 + 1024) = 0x2D20737572726943;
  *(a1 + 1032) = 0xEA00000000005320;
  strcpy((a1 + 1040), "Cirrus_SingleS");
  *(a1 + 1055) = -18;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = xmmword_1BCE4B1F0;
  *(a1 + 1088) = 1082130432;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x4080000040400000;
  *(a1 + 1112) = 1085783552;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 6;
  *(a1 + 1136) = xmmword_1BCE44860;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE49810;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1376) = xmmword_1BCE4B200;
  *(a1 + 1392) = xmmword_1BCE4B210;
  *(a1 + 1408) = xmmword_1BCE49840;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = _Q0;
  *(a1 + 1600) = _Q0;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0u;
  *(a1 + 1644) = 1;
  *(a1 + 1646) = 16843009;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 8;
  *(a1 + 1776) = xmmword_1BCE3EDA0;
  *(a1 + 1792) = xmmword_1BCE49850;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3EBB0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1056964608;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1110704128;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3EBC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE42410;
  *(a1 + 2240) = xmmword_1BCE44880;
  result = 0.00781250185;
  *(a1 + 2256) = xmmword_1BCE3C700;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
  return result;
}

uint64_t InterpolatedMoonData.init(illuminatedFraction:moonPhase:distance:moonrise:moonset:nextFullMoonDuration:librationPositionAngle:isMoonRisen:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>)
{
  v23 = sub_1BCE1A7E0();
  MEMORY[0x1EEE9AC00](v23);
  *a9 = a10;
  *(a9 + 8) = a1;
  *(a9 + 16) = a11;
  v24 = type metadata accessor for InterpolatedMoonData(0);
  sub_1BC962464(a2, a9 + v24[7]);
  sub_1BC962464(a3, a9 + v24[8]);
  v25 = a9 + v24[9];
  *v25 = a4;
  *(v25 + 8) = a5;
  *(v25 + 16) = a6;
  *(a9 + v24[10]) = a12;
  v26 = swift_allocObject();
  *(v26 + 16) = a7;
  *(v26 + 24) = a8;
  sub_1BC96DF30();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C510, &qword_1BCE604C0);
  sub_1BC96DFE0();
  sub_1BCE1DC30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B320, &qword_1BCE59770);
  swift_allocObject();
  v27 = sub_1BCE1A940();

  sub_1BCA0A6F0(a3);
  result = sub_1BCA0A6F0(a2);
  *(a9 + v24[11]) = v27;
  return result;
}

uint64_t type metadata accessor for InterpolatedMoonData(uint64_t a1)
{
  result = qword_1EBD0C230;
  if (!qword_1EBD0C230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InterpolatedMoonData.moonrise.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InterpolatedMoonData(0) + 28);

  return sub_1BC962464(v3, a1);
}

uint64_t InterpolatedMoonData.moonset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InterpolatedMoonData(0) + 32);

  return sub_1BC962464(v3, a1);
}

uint64_t InterpolatedMoonData.nextFullMoonDuration.getter()
{
  v1 = v0 + *(type metadata accessor for InterpolatedMoonData(0) + 36);
  v2 = *v1;
  sub_1BCCBD6AC(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t InterpolatedMoonData.isMoonRisen.getter()
{
  type metadata accessor for InterpolatedMoonData(0);
  sub_1BCE1A930();
  return v1;
}

uint64_t sub_1BCCBD64C@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1BCCBD67C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1BCCBD6AC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1BCA901A4(a1, a2, a3);
  }

  return a1;
}

void sub_1BCCBD6E8(uint64_t a1)
{
  sub_1BC942DC4(319);
  if (v1 <= 0x3F)
  {
    sub_1BCCBD7A4();
    if (v2 <= 0x3F)
    {
      sub_1BCCBD7F4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BCCBD7A4()
{
  if (!qword_1EBD0C240)
  {
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD0C240);
    }
  }
}

void sub_1BCCBD7F4(uint64_t a1)
{
  if (!qword_1EBD0C248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C250, &qword_1BCE5F4C8);
    v1 = sub_1BCE1A950();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD0C248);
    }
  }
}

uint64_t sub_1BCCBD858@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.useMonochromeVariant.getter();
  *a1 = result & 1;
  return result;
}

uint64_t ConditionImage.init(conditionSymbol:iconHasRain:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  v8 = type metadata accessor for ConditionImage(0);
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08430, &unk_1BCE4DAD0);
  swift_storeEnumTagMultiPayload();
  v10 = v8[6];
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08438, &qword_1BCE47460);
  result = swift_storeEnumTagMultiPayload();
  v12 = (a4 + v8[7]);
  *v12 = a1;
  v12[1] = a2;
  *(a4 + v8[8]) = a3;
  return result;
}

uint64_t sub_1BCCBD9D4()
{
  v1 = sub_1BCE1BC20();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_1BCE1D8C0();
    v8 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FC4(v7, 0);
    (*(v3 + 8))(v6, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t ConditionImage.body.getter@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C258, &qword_1BCE5F568);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v94 - v3);
  v5 = type metadata accessor for ConditionImage(0);
  OUTLINED_FUNCTION_2();
  v95 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v10 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C260, &qword_1BCE5F570);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v94 - v12);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C268, &qword_1BCE5F578);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  v100 = v94 - v15;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C270, &qword_1BCE5F580);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v94 - v17;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C278, &qword_1BCE5F588);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v94 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C280, &qword_1BCE5F590);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = (v94 - v24);
  if (sub_1BCCBD9D4())
  {
    v26 = (v1 + *(v5 + 28));
    v27 = *v26;
    v28 = v26[1];
    *v25 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08438, &qword_1BCE47460);
    swift_storeEnumTagMultiPayload();
    v29 = v25 + v22[9];
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    v30 = (v25 + v22[10]);
    *v30 = v27;
    v30[1] = v28;
    v31 = (v25 + v22[11]);
    *v31 = sub_1BCCBE44C;
    v31[1] = 0;
    swift_bridgeObjectRetain_n();
    v32 = sub_1BCAB6160(v27, v28);
    v34 = v33;
    v36 = v35;
    v37 = (v25 + v22[12]);
    *v37 = v32;
    v37[1] = v33;
    v37[2] = v35;

    v38 = sub_1BCAB608C(v32, v34, v36);
    v40 = v39;
    v42 = v41;

    v43 = (v25 + v22[13]);
    *v43 = v38;
    v43[1] = v40;
    v43[2] = v42;
    sub_1BC9660CC(v25, v18, &qword_1EBD0C280, &qword_1BCE5F590);
    swift_storeEnumTagMultiPayload();
    sub_1BC957184(&qword_1EDA19378, &qword_1EBD0C280, &qword_1BCE5F590, &protocol conformance descriptor for WidgetAccentableIconView<A>);
    sub_1BCCBF37C();
    sub_1BCE1BF60();
    sub_1BC9660CC(v21, v100, &qword_1EBD0C278, &qword_1BCE5F588);
    swift_storeEnumTagMultiPayload();
    sub_1BCCBF2C4();
    sub_1BC957184(qword_1EDA19388, &qword_1EBD0C258, &qword_1BCE5F568, &protocol conformance descriptor for WidgetAccentableIconView<A>);
    sub_1BCE1BF60();
    sub_1BC94C05C(v21, &qword_1EBD0C278, &qword_1BCE5F588);
    v44 = OUTLINED_FUNCTION_10_1();
    v46 = &qword_1BCE5F590;
  }

  else
  {
    v94[1] = v22;
    v47 = *(v1 + *(v5 + 32));
    v48 = (v1 + *(v5 + 28));
    v50 = *v48;
    v49 = v48[1];
    if (v47 == 1)
    {
      sub_1BCCBF460(v1, v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v51 = (*(v95 + 80) + 16) & ~*(v95 + 80);
      v52 = swift_allocObject();
      sub_1BCCBF4C4(v10, v52 + v51);
      *v13 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08438, &qword_1BCE47460);
      swift_storeEnumTagMultiPayload();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C288, &qword_1BCE5F598);
      v54 = v13 + v53[9];
      *v54 = swift_getKeyPath();
      v54[8] = 0;
      v55 = (v13 + v53[10]);
      *v55 = v50;
      v55[1] = v49;
      v56 = (v13 + v53[11]);
      *v56 = sub_1BCCBF528;
      v56[1] = v52;
      swift_bridgeObjectRetain_n();
      v57 = sub_1BCAB6160(v50, v49);
      v59 = v58;
      v61 = v60;
      v62 = (v13 + v53[12]);
      *v62 = v57;
      v62[1] = v58;
      v62[2] = v60;

      v63 = sub_1BCAB608C(v57, v59, v61);
      v65 = v64;
      v67 = v66;

      v68 = (v13 + v53[13]);
      *v68 = v63;
      v68[1] = v65;
      v68[2] = v67;
      KeyPath = swift_getKeyPath();
      v70 = (v13 + *(v97 + 36));
      v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C290, &qword_1BCE5F5A0) + 28);
      v72 = *MEMORY[0x1E697DBA8];
      sub_1BCE1B4E0();
      OUTLINED_FUNCTION_4();
      (*(v73 + 104))(v70 + v71, v72);
      *v70 = KeyPath;
      v74 = &qword_1EBD0C260;
      v75 = &qword_1BCE5F570;
      sub_1BC9660CC(v13, v18, &qword_1EBD0C260, &qword_1BCE5F570);
      swift_storeEnumTagMultiPayload();
      sub_1BC957184(&qword_1EDA19378, &qword_1EBD0C280, &qword_1BCE5F590, &protocol conformance descriptor for WidgetAccentableIconView<A>);
      sub_1BCCBF37C();
      sub_1BCE1BF60();
      sub_1BC9660CC(v21, v100, &qword_1EBD0C278, &qword_1BCE5F588);
      swift_storeEnumTagMultiPayload();
      sub_1BCCBF2C4();
      sub_1BC957184(qword_1EDA19388, &qword_1EBD0C258, &qword_1BCE5F568, &protocol conformance descriptor for WidgetAccentableIconView<A>);
      sub_1BCE1BF60();
      sub_1BC94C05C(v21, &qword_1EBD0C278, &qword_1BCE5F588);
      v44 = v13;
    }

    else
    {
      *v4 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08438, &qword_1BCE47460);
      swift_storeEnumTagMultiPayload();
      v76 = v101;
      v77 = v4 + *(v101 + 36);
      *v77 = swift_getKeyPath();
      v77[8] = 0;
      v78 = (v4 + v76[10]);
      *v78 = v50;
      v78[1] = v49;
      v79 = (v4 + v76[11]);
      *v79 = sub_1BCCBE590;
      v79[1] = 0;
      swift_bridgeObjectRetain_n();
      v80 = sub_1BCAB6160(v50, v49);
      v82 = v81;
      v83 = (v4 + v76[12]);
      *v83 = v80;
      v83[1] = v84;
      v83[2] = v81;

      v85 = OUTLINED_FUNCTION_10_1();
      v87 = sub_1BCAB608C(v85, v86, v82);
      v89 = v88;
      v91 = v90;

      v92 = (v4 + v76[13]);
      *v92 = v87;
      v92[1] = v89;
      v92[2] = v91;
      v74 = &qword_1EBD0C258;
      v75 = &qword_1BCE5F568;
      sub_1BC9660CC(v4, v100, &qword_1EBD0C258, &qword_1BCE5F568);
      swift_storeEnumTagMultiPayload();
      sub_1BCCBF2C4();
      sub_1BC957184(qword_1EDA19388, &qword_1EBD0C258, &qword_1BCE5F568, &protocol conformance descriptor for WidgetAccentableIconView<A>);
      sub_1BCE1BF60();
      v44 = v4;
    }

    v45 = v74;
    v46 = v75;
  }

  return sub_1BC94C05C(v44, v45, v46);
}

double sub_1BCCBE44C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return result;
}

double sub_1BCCBE454@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C2E8, &qword_1BCE5F7E8) + 36));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08438, &qword_1BCE47460);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for ConditionImageStyleModifier(0);
  v8 = *(v7 + 20);
  *(v6 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08430, &unk_1BCE4DAD0);
  swift_storeEnumTagMultiPayload();
  v9 = v6 + *(v7 + 24);
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  *a3 = a1;
  v10 = (a2 + *(type metadata accessor for ConditionImage(0) + 28));
  v12 = *v10;
  v11 = v10[1];
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C2F0, &qword_1BCE5F820) + 36));
  *v13 = v12;
  v13[1] = v11;

  return result;
}

double sub_1BCCBE590@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C2E8, &qword_1BCE5F7E8) + 36));
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08438, &qword_1BCE47460);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for ConditionImageStyleModifier(0);
  v6 = *(v5 + 20);
  *(v4 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08430, &unk_1BCE4DAD0);
  swift_storeEnumTagMultiPayload();
  v7 = v4 + *(v5 + 24);
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  *a2 = a1;

  return result;
}

uint64_t sub_1BCCBE690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C2A0, &qword_1BCE5F760);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C2A8, &qword_1BCE5F768);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C2B0, &qword_1BCE5F770);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v30 - v14;
  v16 = [objc_opt_self() systemCyanColor];
  v17 = sub_1BCE1CA20();
  v18 = a2 == 0xD000000000000014 && 0x80000001BCE7BF20 == a3;
  if (v18 || (sub_1BCE1E090() & 1) != 0)
  {
    v19 = sub_1BCE1CAB0();
    v20 = sub_1BCE1CAB0();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C2B8, &unk_1BCE5F778);
    (*(*(v21 - 8) + 16))(v15, a1, v21);
    v22 = &v15[*(v13 + 36)];
    *v22 = v19;
    v22[1] = v20;
    v22[2] = v17;
    v23 = &qword_1EBD0C2B0;
    v24 = &qword_1BCE5F770;
    sub_1BC9660CC(v15, v12, &qword_1EBD0C2B0, &qword_1BCE5F770);
    swift_storeEnumTagMultiPayload();
    sub_1BCCBF964();
    sub_1BCCBFA48();
    sub_1BCE1BF60();
    v25 = v15;
  }

  else
  {
    v26 = sub_1BCE1CAB0();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C2B8, &unk_1BCE5F778);
    (*(*(v27 - 8) + 16))(v9, a1, v27);
    v28 = &v9[*(v7 + 36)];
    *v28 = v26;
    v28[1] = v17;
    v23 = &qword_1EBD0C2A0;
    v24 = &qword_1BCE5F760;
    sub_1BC9660CC(v9, v12, &qword_1EBD0C2A0, &qword_1BCE5F760);
    swift_storeEnumTagMultiPayload();
    sub_1BCCBF964();
    sub_1BCCBFA48();
    sub_1BCE1BF60();
    v25 = v9;
  }

  return sub_1BC94C05C(v25, v23, v24);
}

uint64_t sub_1BCCBE9DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BCE1BC20();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08438, &qword_1BCE47460);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1BC9660CC(v2, &v14 - v9, &qword_1EBD08438, &qword_1BCE47460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BCE1D0D0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1BCE1D8C0();
    v13 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BCCBEBDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BCE1BC20();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08430, &unk_1BCE4DAD0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ConditionImageStyleModifier(0);
  sub_1BC9660CC(v1 + *(v10 + 20), v9, &qword_1EBD08430, &unk_1BCE4DAD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BCE1BDC0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1BCE1D8C0();
    v13 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1BCCBEDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v2 = sub_1BCE1BDC0();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v35 - v5;
  v6 = sub_1BCE1D0D0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD088C8, &qword_1BCE56EC0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C2C8, &qword_1BCE5F798);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  sub_1BCCBE9DC(v12);
  sub_1BCE1D0C0();
  v19 = sub_1BCE1D0A0();
  v20 = *(v7 + 8);
  v20(v9, v6);
  v20(v12, v6);
  if (v19 & 1) != 0 && (v21 = v35, sub_1BCCBEBDC(v35), v23 = v36, v22 = v37, v24 = v38, (*(v37 + 104))(v36, *MEMORY[0x1E697F600], v38), v25 = sub_1BCE1B4D0(), v26 = *(v22 + 8), v26(v23, v24), v26(v21, v24), (v25))
  {
    sub_1BCE1BE30();
  }

  else
  {
    sub_1BCE1BE20();
  }

  v27 = sub_1BCE1BE50();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v27);
  KeyPath = swift_getKeyPath();
  v29 = &v18[*(v16 + 36)];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C2D0, &qword_1BCE5F7D0);
  sub_1BC999734(v15, v29 + *(v30 + 28), &qword_1EBD088C8, &qword_1BCE56EC0);
  *v29 = KeyPath;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C2D8, &qword_1BCE5F7D8);
  (*(*(v31 - 8) + 16))(v18, v39, v31);
  v32 = sub_1BCE1CAB0();
  v33 = v40;
  sub_1BC999734(v18, v40, &qword_1EBD0C2C8, &qword_1BCE5F798);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C2E0, &qword_1BCE5F7E0);
  *(v33 + *(result + 36)) = v32;
  return result;
}

uint64_t sub_1BCCBF208(uint64_t a1)
{
  sub_1BCE1D0D0();
  OUTLINED_FUNCTION_2();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1BCE1BBB0();
}

unint64_t sub_1BCCBF2C4()
{
  result = qword_1EDA1B850;
  if (!qword_1EDA1B850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C278, &qword_1BCE5F588);
    sub_1BC957184(&qword_1EDA19378, &qword_1EBD0C280, &qword_1BCE5F590, &protocol conformance descriptor for WidgetAccentableIconView<A>);
    sub_1BCCBF37C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B850);
  }

  return result;
}

unint64_t sub_1BCCBF37C()
{
  result = qword_1EDA1BB78;
  if (!qword_1EDA1BB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C260, &qword_1BCE5F570);
    sub_1BC957184(&qword_1EDA19380, &qword_1EBD0C288, &qword_1BCE5F598, &protocol conformance descriptor for WidgetAccentableIconView<A>);
    sub_1BC957184(&qword_1EDA1E988, &qword_1EBD0C290, &qword_1BCE5F5A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BB78);
  }

  return result;
}

uint64_t sub_1BCCBF460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCCBF4C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1BCCBF528@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for ConditionImage(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BCCBE454(a1, v6, a2);
}

void sub_1BCCBF5EC(uint64_t a1)
{
  sub_1BCA21D6C(319, &qword_1EDA1EA38, MEMORY[0x1E69E6370]);
  if (v1 <= 0x3F)
  {
    sub_1BCCBF6E4(319, &qword_1EDA1BBF8, MEMORY[0x1E697F610]);
    if (v2 <= 0x3F)
    {
      sub_1BCCBF6E4(319, &qword_1EDA1EA48, MEMORY[0x1E6985778]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BCCBF6E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BCE1B4F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BCCBF738()
{
  result = qword_1EDA1B7A8;
  if (!qword_1EDA1B7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C298, &qword_1BCE5F650);
    sub_1BCCBF2C4();
    sub_1BC957184(qword_1EDA19388, &qword_1EBD0C258, &qword_1BCE5F568, &protocol conformance descriptor for WidgetAccentableIconView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B7A8);
  }

  return result;
}

void sub_1BCCBF848(uint64_t a1)
{
  sub_1BCCBF6E4(319, &qword_1EDA1EA48, MEMORY[0x1E6985778]);
  if (v1 <= 0x3F)
  {
    sub_1BCCBF6E4(319, &qword_1EDA1BBF8, MEMORY[0x1E697F610]);
    if (v2 <= 0x3F)
    {
      sub_1BCA21D6C(319, &qword_1EDA1BC10, MEMORY[0x1E697E0B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BCCBF964()
{
  result = qword_1EDA1BB30;
  if (!qword_1EDA1BB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C2B0, &qword_1BCE5F770);
    sub_1BC957184(&qword_1EDA1B718, &qword_1EBD0C2B8, &unk_1BCE5F778, MEMORY[0x1E697FDF8]);
    sub_1BC957184(&qword_1EDA1B700, &qword_1EBD08900, &qword_1BCE4A9D0, MEMORY[0x1E6980608]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BB30);
  }

  return result;
}

unint64_t sub_1BCCBFA48()
{
  result = qword_1EDA1BB38;
  if (!qword_1EDA1BB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C2A0, &qword_1BCE5F760);
    sub_1BC957184(&qword_1EDA1B718, &qword_1EBD0C2B8, &unk_1BCE5F778, MEMORY[0x1E697FDF8]);
    sub_1BC957184(&qword_1EDA1B708, &qword_1EBD0C2C0, &unk_1BCE5F788, MEMORY[0x1E6980600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BB38);
  }

  return result;
}

uint64_t sub_1BCCBFB2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD088C8, &qword_1BCE56EC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BC9660CC(a1, &v5 - v3, &qword_1EBD088C8, &qword_1BCE56EC0);
  return sub_1BCE1BAC0();
}

unint64_t sub_1BCCBFBD4()
{
  result = qword_1EDA1B848;
  if (!qword_1EDA1B848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C2F8, &qword_1BCE5F828);
    sub_1BCCBF964();
    sub_1BCCBFA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B848);
  }

  return result;
}

unint64_t sub_1BCCBFC60()
{
  result = qword_1EDA1B950;
  if (!qword_1EDA1B950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C2E0, &qword_1BCE5F7E0);
    sub_1BCCBFD18();
    sub_1BC957184(&qword_1EDA1B710, &qword_1EBD09DC8, &qword_1BCE52D50, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B950);
  }

  return result;
}

unint64_t sub_1BCCBFD18()
{
  result = qword_1EDA1BB58;
  if (!qword_1EDA1BB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C2C8, &qword_1BCE5F798);
    sub_1BC957184(&qword_1EDA1B758, &qword_1EBD0C2D8, &qword_1BCE5F7D8, MEMORY[0x1E697FDF8]);
    sub_1BC957184(&qword_1EDA1B6B8, &qword_1EBD0C2D0, &qword_1BCE5F7D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BB58);
  }

  return result;
}

void sub_1BCCBFDFC(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCCC0568(xmmword_1BCE3D4B0);
  v4 = v3;
  sub_1BCCC0568(xmmword_1BCE3CBC0);
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 5;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3FA000000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE49190;
  *(a1 + 240) = 0x4270000041727059;
  *(a1 + 248) = 1120403456;
  *(a1 + 256) = 0x3F4CCCCD3F19999ALL;
  *(a1 + 264) = 0x40A00000410F6D04;
  *(a1 + 272) = 1093310165;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x432F32C742200000;
  *(a1 + 328) = 0x3F19999A3F000000;
  *(a1 + 336) = 0x4000000041076DDCLL;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40E0000040C00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40C0000040400000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F19999A3F000000;
  *(a1 + 720) = 0x41E0000041A00000;
  *(a1 + 728) = 1085898072;
  *(a1 + 736) = 1;
  *(a1 + 744) = 11;
  *(a1 + 752) = xmmword_1BCE431E0;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 10;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F4CCCCD3F333333;
  *(a1 + 848) = 0x41F0000041C00000;
  *(a1 + 856) = 1086789120;
  *(a1 + 864) = 1;
  *(a1 + 872) = 3;
  *(a1 + 880) = xmmword_1BCE431F0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F333333;
  *(a1 + 976) = vdup_n_s32(0x416F3333u);
  *(a1 + 984) = 1090833363;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE43200;
  *(a1 + 1024) = 0xD000000000000010;
  *(a1 + 1032) = 0x80000001BCE79860;
  *(a1 + 1040) = 0xD000000000000014;
  *(a1 + 1048) = 0x80000001BCE79880;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x401333333FDCCCCDLL;
  *(a1 + 1112) = 1083965739;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE5F830;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3F19999A3E99999ALL;
  *(a1 + 1296) = 0x41D2000041C80000;
  *(a1 + 1304) = 1099951718;
  *(a1 + 1312) = xmmword_1BCE3C7C0;
  *(a1 + 1328) = xmmword_1BCE3FB70;
  *(a1 + 1344) = 0x4170000041200000;
  *(a1 + 1352) = 1082130432;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 5;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1637) = 0;
  *(a1 + 1631) = 0;
  *(v2 + 209) = 0x300000101000101;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 12;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107820544;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE403A0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x407333333FB33333;
  *(a1 + 2008) = 0x408000004019999ALL;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3F4CCCCD3F19999ALL;
  *(a1 + 2128) = 0x402666663FC00000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1049736497;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

double sub_1BCCC0568(__n128 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858, &qword_1BCE6CF50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BCE3EBD0;
  *(v1 + 48) = xmmword_1BCE3F510;
  *(v1 + 64) = 0x41A0000043480000;
  *(v1 + 80) = xmmword_1BCE43220;
  *(v1 + 96) = xmmword_1BCE3E150;
  *(v1 + 112) = xmmword_1BCE43230;
  *(v1 + 128) = xmmword_1BCE43240;
  *(v1 + 1056) = a1;
  *(v1 + 2272) = a1;
  *(v1 + 4912) = xmmword_1BCE3FD40;
  *(v1 + 6128) = xmmword_1BCE3FD40;
  *(v1 + 4928) = 1145405440;
  *(v1 + 6144) = 1145405440;
  *(v1 + 4944) = xmmword_1BCE434C0;
  *(v1 + 6160) = xmmword_1BCE434C0;
  *(v1 + 5008) = xmmword_1BCE3EEF0;
  *(v1 + 6224) = xmmword_1BCE3EEF0;
  *(v1 + 5024) = xmmword_1BCE3EF00;
  *(v1 + 6240) = xmmword_1BCE3EF00;
  *(v1 + 5088) = xmmword_1BCE3DA70;
  *(v1 + 6304) = xmmword_1BCE3DA70;
  *(v1 + 5104) = xmmword_1BCE434D0;
  *(v1 + 6320) = xmmword_1BCE434D0;
  *(v1 + 5136) = xmmword_1BCE434E0;
  *(v1 + 6352) = xmmword_1BCE434E0;
  *(v1 + 5152) = xmmword_1BCE3CE90;
  *(v1 + 6368) = xmmword_1BCE3CE90;
  *(v1 + 5168) = xmmword_1BCE434F0;
  *(v1 + 6384) = xmmword_1BCE434F0;
  *(v1 + 5216) = xmmword_1BCE43500;
  *(v1 + 6432) = xmmword_1BCE43500;
  *(v1 + 5232) = xmmword_1BCE43510;
  *(v1 + 6448) = xmmword_1BCE43510;
  *(v1 + 5264) = xmmword_1BCE3E9D0;
  *(v1 + 6480) = xmmword_1BCE3E9D0;
  *(v1 + 5600) = xmmword_1BCE43520;
  *(v1 + 6816) = xmmword_1BCE43520;
  *(v1 + 5888) = xmmword_1BCE3E350;
  *(v1 + 7104) = xmmword_1BCE3E350;
  *(v1 + 3696) = xmmword_1BCE3EE30;
  *(v1 + 7344) = xmmword_1BCE3EE30;
  *(v1 + 3712) = 1143930880;
  *(v1 + 7360) = 1143930880;
  *(v1 + 3728) = xmmword_1BCE43410;
  *(v1 + 7376) = xmmword_1BCE43410;
  *(v1 + 3760) = xmmword_1BCE43420;
  *(v1 + 4976) = xmmword_1BCE43420;
  *(v1 + 6192) = xmmword_1BCE43420;
  *(v1 + 7408) = xmmword_1BCE43420;
  *(v1 + 3776) = xmmword_1BCE43430;
  *(v1 + 4992) = xmmword_1BCE43430;
  *(v1 + 6208) = xmmword_1BCE43430;
  *(v1 + 7424) = xmmword_1BCE43430;
  *(v1 + 3920) = xmmword_1BCE43440;
  *(v1 + 7568) = xmmword_1BCE43440;
  *(v1 + 3936) = xmmword_1BCE43450;
  *(v1 + 7584) = xmmword_1BCE43450;
  *(v1 + 3952) = xmmword_1BCE43460;
  *(v1 + 7600) = xmmword_1BCE43460;
  *(v1 + 3968) = xmmword_1BCE3E220;
  *(v1 + 5184) = xmmword_1BCE3E220;
  *(v1 + 6400) = xmmword_1BCE3E220;
  *(v1 + 7616) = xmmword_1BCE3E220;
  *(v1 + 4000) = xmmword_1BCE43470;
  *(v1 + 7648) = xmmword_1BCE43470;
  *(v1 + 4016) = xmmword_1BCE43480;
  *(v1 + 7664) = xmmword_1BCE43480;
  *(v1 + 4032) = 1063675494;
  *(v1 + 5248) = 1063675494;
  *(v1 + 6464) = 1063675494;
  *(v1 + 7680) = 1063675494;
  *(v1 + 4048) = xmmword_1BCE3E2F0;
  *(v1 + 7696) = xmmword_1BCE3E2F0;
  *(v1 + 4160) = xmmword_1BCE43490;
  *(v1 + 7808) = xmmword_1BCE43490;
  *(v1 + 4192) = xmmword_1BCE434A0;
  *(v1 + 7840) = xmmword_1BCE434A0;
  *(v1 + 4320) = xmmword_1BCE3E320;
  *(v1 + 7968) = xmmword_1BCE3E320;
  *(v1 + 4288) = xmmword_1BCE3CCC0;
  *(v1 + 4384) = xmmword_1BCE3CCC0;
  *(v1 + 7936) = xmmword_1BCE3CCC0;
  *(v1 + 8032) = xmmword_1BCE3CCC0;
  *(v1 + 4512) = xmmword_1BCE434B0;
  *(v1 + 5728) = xmmword_1BCE434B0;
  *(v1 + 6944) = xmmword_1BCE434B0;
  *(v1 + 8160) = xmmword_1BCE434B0;
  *(v1 + 4672) = xmmword_1BCE3EE20;
  *(v1 + 5376) = xmmword_1BCE3EE20;
  *(v1 + 6592) = xmmword_1BCE3EE20;
  *(v1 + 8320) = xmmword_1BCE3EE20;
  *(v1 + 2480) = xmmword_1BCE3F7B0;
  *(v1 + 8560) = xmmword_1BCE3F7B0;
  *(v1 + 2496) = 1132068864;
  *(v1 + 8576) = 1132068864;
  *(v1 + 2512) = xmmword_1BCE43330;
  *(v1 + 8592) = xmmword_1BCE43330;
  *(v1 + 2528) = xmmword_1BCE43340;
  *(v1 + 8608) = xmmword_1BCE43340;
  *(v1 + 2544) = xmmword_1BCE43350;
  *(v1 + 8624) = xmmword_1BCE43350;
  *(v1 + 2560) = xmmword_1BCE43360;
  *(v1 + 8640) = xmmword_1BCE43360;
  *(v1 + 2576) = xmmword_1BCE43370;
  *(v1 + 8656) = xmmword_1BCE43370;
  *(v1 + 2592) = xmmword_1BCE3CB90;
  *(v1 + 8672) = xmmword_1BCE3CB90;
  *(v1 + 2656) = xmmword_1BCE3DCB0;
  *(v1 + 8736) = xmmword_1BCE3DCB0;
  *(v1 + 2704) = xmmword_1BCE43380;
  *(v1 + 8784) = xmmword_1BCE43380;
  *(v1 + 2720) = xmmword_1BCE43390;
  *(v1 + 8800) = xmmword_1BCE43390;
  *(v1 + 2736) = xmmword_1BCE433A0;
  *(v1 + 8816) = xmmword_1BCE433A0;
  *(v1 + 2768) = xmmword_1BCE433B0;
  *(v1 + 3984) = xmmword_1BCE433B0;
  *(v1 + 5200) = xmmword_1BCE433B0;
  *(v1 + 6416) = xmmword_1BCE433B0;
  *(v1 + 7632) = xmmword_1BCE433B0;
  *(v1 + 8848) = xmmword_1BCE433B0;
  *(v1 + 2784) = xmmword_1BCE433C0;
  *(v1 + 8864) = xmmword_1BCE433C0;
  *(v1 + 2800) = xmmword_1BCE433D0;
  *(v1 + 8880) = xmmword_1BCE433D0;
  *(v1 + 2944) = xmmword_1BCE433E0;
  *(v1 + 9024) = xmmword_1BCE433E0;
  *(v1 + 3072) = xmmword_1BCE433F0;
  *(v1 + 9152) = xmmword_1BCE433F0;
  *(v1 + 3136) = xmmword_1BCE43400;
  *(v1 + 9216) = xmmword_1BCE43400;
  *(v1 + 1280) = 0x4120000043480000;
  *(v1 + 9792) = 0x4120000043480000;
  *(v1 + 1328) = xmmword_1BCE432D0;
  *(v1 + 9840) = xmmword_1BCE432D0;
  *(v1 + 1344) = xmmword_1BCE40770;
  *(v1 + 9856) = xmmword_1BCE40770;
  *(v1 + 1360) = xmmword_1BCE432E0;
  *(v1 + 9872) = xmmword_1BCE432E0;
  *(v1 + 1376) = xmmword_1BCE432F0;
  *(v1 + 9888) = xmmword_1BCE432F0;
  *(v1 + 1488) = xmmword_1BCE43300;
  *(v1 + 10000) = xmmword_1BCE43300;
  *(v1 + 1520) = xmmword_1BCE43310;
  *(v1 + 10032) = xmmword_1BCE43310;
  *(v1 + 1568) = xmmword_1BCE3EF30;
  *(v1 + 5120) = xmmword_1BCE3EF30;
  *(v1 + 6336) = xmmword_1BCE3EF30;
  *(v1 + 10080) = xmmword_1BCE3EF30;
  *(v1 + 1584) = xmmword_1BCE43320;
  *(v1 + 10096) = xmmword_1BCE43320;
  *(v1 + 144) = xmmword_1BCE43250;
  *(v1 + 160) = xmmword_1BCE43260;
  *(v1 + 1264) = xmmword_1BCE3F510;
  *(v1 + 9776) = xmmword_1BCE3F510;
  *(v1 + 10992) = xmmword_1BCE3F510;
  __asm { FMOV            V4.2D, #1.0 }

  *(v1 + 11008) = 0x41A0000043480000;
  __asm { FMOV            V6.2D, #0.5 }

  *(v1 + 1296) = xmmword_1BCE43220;
  *(v1 + 9808) = xmmword_1BCE43220;
  *(v1 + 11024) = xmmword_1BCE43220;
  *(v1 + 208) = _Q6;
  *(v1 + 224) = xmmword_1BCE3D910;
  *(v1 + 1312) = xmmword_1BCE3E150;
  *(v1 + 9824) = xmmword_1BCE3E150;
  *(v1 + 11040) = xmmword_1BCE3E150;
  *(v1 + 11056) = xmmword_1BCE43230;
  *(v1 + 240) = xmmword_1BCE43270;
  *(v1 + 256) = xmmword_1BCE43280;
  *(v1 + 11072) = xmmword_1BCE43240;
  *(v1 + 11088) = xmmword_1BCE43250;
  *(v1 + 272) = xmmword_1BCE43290;
  *(v1 + 288) = xmmword_1BCE40100;
  *(v1 + 11104) = xmmword_1BCE43260;
  *(v1 + 1424) = _Q6;
  *(v1 + 2640) = _Q6;
  *(v1 + 8720) = _Q6;
  *(v1 + 9936) = _Q6;
  *(v1 + 11152) = _Q6;
  *(v1 + 304) = xmmword_1BCE432A0;
  *(v1 + 320) = xmmword_1BCE3E1D0;
  *(v1 + 1440) = xmmword_1BCE3D910;
  *(v1 + 9952) = xmmword_1BCE3D910;
  *(v1 + 11168) = xmmword_1BCE3D910;
  *(v1 + 1456) = xmmword_1BCE43270;
  *(v1 + 9968) = xmmword_1BCE43270;
  *(v1 + 11184) = xmmword_1BCE43270;
  *(v1 + 336) = xmmword_1BCE432B0;
  *(v1 + 352) = xmmword_1BCE3D430;
  *(v1 + 1472) = xmmword_1BCE43280;
  *(v1 + 9984) = xmmword_1BCE43280;
  *(v1 + 11200) = xmmword_1BCE43280;
  v8 = vdupq_n_s32(0x3F4CCCCDu);
  *(v1 + 368) = v8;
  *(v1 + 11216) = xmmword_1BCE43290;
  *(v1 + 384) = 0x3F8000003F4CCCCDLL;
  *(v1 + 1504) = xmmword_1BCE40100;
  *(v1 + 10016) = xmmword_1BCE40100;
  *(v1 + 11232) = xmmword_1BCE40100;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 11248) = xmmword_1BCE432A0;
  result = 1.0;
  *(v1 + 1552) = xmmword_1BCE432B0;
  *(v1 + 10064) = xmmword_1BCE432B0;
  *(v1 + 11280) = xmmword_1BCE432B0;
  *(v1 + 512) = xmmword_1BCE3A880;
  *(v1 + 544) = xmmword_1BCE3D430;
  *(v1 + 576) = xmmword_1BCE3A880;
  *(v1 + 2816) = v8.i64[0];
  *(v1 + 8896) = v8.i64[0];
  *(v1 + 11312) = v8;
  *(v1 + 640) = xmmword_1BCE3A880;
  *(v1 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v1 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v1 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v1 + 704) = xmmword_1BCE3A880;
  *(v1 + 736) = xmmword_1BCE3E1D0;
  *(v1 + 1664) = 0u;
  *(v1 + 1648) = 0u;
  *(v1 + 2880) = 0u;
  *(v1 + 2864) = 0u;
  *(v1 + 4096) = 0u;
  *(v1 + 4080) = 0u;
  *(v1 + 5312) = 0u;
  *(v1 + 5296) = 0u;
  *(v1 + 6528) = 0u;
  *(v1 + 6512) = 0u;
  *(v1 + 7744) = 0u;
  *(v1 + 7728) = 0u;
  *(v1 + 8960) = 0u;
  *(v1 + 8944) = 0u;
  *(v1 + 10176) = 0u;
  *(v1 + 10160) = 0u;
  *(v1 + 11392) = 0u;
  *(v1 + 11376) = 0u;
  *(v1 + 800) = xmmword_1BCE3DD90;
  *(v1 + 1760) = xmmword_1BCE3D430;
  *(v1 + 2976) = xmmword_1BCE3D430;
  *(v1 + 5408) = xmmword_1BCE3D430;
  *(v1 + 6624) = xmmword_1BCE3D430;
  *(v1 + 9056) = xmmword_1BCE3D430;
  *(v1 + 10272) = xmmword_1BCE3D430;
  *(v1 + 11296) = xmmword_1BCE3D430;
  *(v1 + 11488) = xmmword_1BCE3D430;
  *(v1 + 1536) = xmmword_1BCE3E1D0;
  *(v1 + 1952) = xmmword_1BCE3E1D0;
  *(v1 + 2752) = xmmword_1BCE3E1D0;
  *(v1 + 3168) = xmmword_1BCE3E1D0;
  *(v1 + 8000) = xmmword_1BCE3E230;
  *(v1 + 8352) = xmmword_1BCE3CBC0;
  *(v1 + 8368) = _Q4;
  *(v1 + 8016) = _Q4;
  *(v1 + 8256) = xmmword_1BCE3C8C0;
  *(v1 + 8272) = _Q4;
  *(v1 + 8288) = xmmword_1BCE3DAE0;
  *(v1 + 8304) = _Q4;
  *(v1 + 8336) = _Q4;
  *(v1 + 8048) = _Q4;
  *(v1 + 8176) = _Q4;
  *(v1 + 0x2000) = _Q4;
  *(v1 + 8208) = _Q4;
  *(v1 + 8224) = _Q4;
  *(v1 + 8240) = _Q4;
  *(v1 + 8064) = _Q4;
  *(v1 + 8080) = _Q4;
  *(v1 + 8096) = xmmword_1BCE3DD90;
  *(v1 + 8112) = _Q4;
  *(v1 + 8128) = xmmword_1BCE3A880;
  *(v1 + 8144) = _Q4;
  *(v1 + 8832) = xmmword_1BCE3E1D0;
  *(v1 + 9248) = xmmword_1BCE3E1D0;
  *(v1 + 10048) = xmmword_1BCE3E1D0;
  *(v1 + 10464) = xmmword_1BCE3E1D0;
  *(v1 + 11264) = xmmword_1BCE3E1D0;
  *(v1 + 11680) = xmmword_1BCE3E1D0;
  *(v1 + 7904) = xmmword_1BCE3C8C0;
  *(v1 + 7920) = _Q4;
  *(v1 + 7952) = _Q4;
  *(v1 + 7984) = _Q4;
  *(v1 + 816) = xmmword_1BCE3ECA0;
  *(v1 + 832) = xmmword_1BCE3A880;
  *(v1 + 7824) = _Q4;
  *(v1 + 7856) = _Q4;
  *(v1 + 7872) = xmmword_1BCE3A880;
  *(v1 + 7888) = _Q4;
  *(v1 + 2016) = xmmword_1BCE3DD90;
  *(v1 + 3232) = xmmword_1BCE3DD90;
  *(v1 + 7760) = _Q4;
  *(v1 + 7776) = xmmword_1BCE3DAE0;
  *(v1 + 7792) = _Q4;
  *(v1 + 4448) = xmmword_1BCE3DD90;
  *(v1 + 5664) = xmmword_1BCE3DD90;
  *(v1 + 6880) = xmmword_1BCE3DD90;
  *(v1 + 7688) = 0x3FEF0AE2E0000000;
  *(v1 + 7712) = 0x3FF0000000000000;
  *(v1 + 7720) = 0;
  *(v1 + 9312) = xmmword_1BCE3DD90;
  *(v1 + 10528) = xmmword_1BCE3DD90;
  *(v1 + 11744) = xmmword_1BCE3DD90;
  *(v1 + 1840) = xmmword_1BCE3ECA0;
  *(v1 + 2032) = xmmword_1BCE3ECA0;
  *(v1 + 7504) = _Q4;
  *(v1 + 7520) = xmmword_1BCE3DAE0;
  *(v1 + 7536) = _Q4;
  *(v1 + 7552) = _Q4;
  *(v1 + 3248) = xmmword_1BCE3ECA0;
  *(v1 + 7456) = _Q4;
  *(v1 + 7472) = _Q4;
  *(v1 + 7488) = _Q4;
  *(v1 + 7337) = *v16;
  *(v1 + 7392) = _Q4;
  *(v1 + 7440) = _Q4;
  *(v1 + 9328) = xmmword_1BCE3ECA0;
  *(v1 + 10352) = xmmword_1BCE3ECA0;
  *(v1 + 10544) = xmmword_1BCE3ECA0;
  *(v1 + 11760) = xmmword_1BCE3ECA0;
  *(v1 + 1728) = xmmword_1BCE3A880;
  *(v1 + 7328) = 0xC028000000000015;
  *(v1 + 7336) = 1;
  *(v1 + 7340) = *&v16[3];
  *(v1 + 7368) = 1060320051;
  *(v1 + 1792) = xmmword_1BCE3A880;
  *(v1 + 7256) = 0x3FF0000000000000;
  *(v1 + 7264) = _Q4;
  *(v1 + 7280) = _Q4;
  *(v1 + 7296) = _Q4;
  *(v1 + 7312) = 0x3FF0000000000000;
  *(v1 + 7168) = xmmword_1BCE3C8C0;
  *(v1 + 7184) = _Q4;
  *(v1 + 7200) = xmmword_1BCE3DAE0;
  *(v1 + 7216) = _Q4;
  *(v1 + 7232) = _Q4;
  *(v1 + 7248) = 0x4170000042480000;
  *(v1 + 1856) = xmmword_1BCE3A880;
  *(v1 + 7072) = xmmword_1BCE3DAE0;
  *(v1 + 7088) = _Q4;
  *(v1 + 7120) = _Q4;
  *(v1 + 7136) = xmmword_1BCE3CBC0;
  *(v1 + 7152) = _Q4;
  *(v1 + 6976) = _Q4;
  *(v1 + 6992) = _Q4;
  *(v1 + 7008) = _Q4;
  *(v1 + 7024) = _Q4;
  *(v1 + 7040) = xmmword_1BCE3C8C0;
  *(v1 + 7056) = _Q4;
  *(v1 + 1920) = xmmword_1BCE3A880;
  *(v1 + 2048) = xmmword_1BCE3A880;
  *(v1 + 6896) = _Q4;
  *(v1 + 6912) = xmmword_1BCE3A880;
  *(v1 + 6928) = _Q4;
  *(v1 + 6960) = _Q4;
  *(v1 + 3008) = xmmword_1BCE3A880;
  *(v1 + 6784) = xmmword_1BCE3A880;
  *(v1 + 6800) = _Q4;
  *(v1 + 6832) = _Q4;
  *(v1 + 6848) = _Q4;
  *(v1 + 6864) = _Q4;
  *(v1 + 6688) = xmmword_1BCE3C8C0;
  *(v1 + 6704) = _Q4;
  *(v1 + 6720) = _Q4;
  *(v1 + 6736) = _Q4;
  *(v1 + 6752) = _Q4;
  *(v1 + 6768) = _Q4;
  *(v1 + 3264) = xmmword_1BCE3A880;
  *(v1 + 4224) = xmmword_1BCE3A880;
  *(v1 + 6608) = _Q4;
  *(v1 + 6640) = _Q4;
  *(v1 + 6656) = xmmword_1BCE3A880;
  *(v1 + 6672) = _Q4;
  *(v1 + 4480) = xmmword_1BCE3A880;
  *(v1 + 5440) = xmmword_1BCE3A880;
  *(v1 + 6504) = 0;
  *(v1 + 6544) = _Q4;
  *(v1 + 6560) = xmmword_1BCE3DAE0;
  *(v1 + 6576) = _Q4;
  *(v1 + 5568) = xmmword_1BCE3A880;
  *(v1 + 5696) = xmmword_1BCE3A880;
  *(v1 + 6272) = _Q4;
  *(v1 + 6288) = _Q4;
  *(v1 + 6472) = 0x3FF0000000000000;
  *(v1 + 6496) = 0x3FF0000000000000;
  *(v1 + 9088) = xmmword_1BCE3A880;
  *(v1 + 9344) = xmmword_1BCE3A880;
  *(v1 + 10240) = xmmword_1BCE3A880;
  *(v1 + 10304) = xmmword_1BCE3A880;
  *(v1 + 10368) = xmmword_1BCE3A880;
  *(v1 + 10432) = xmmword_1BCE3A880;
  *(v1 + 10560) = xmmword_1BCE3A880;
  *(v1 + 11456) = xmmword_1BCE3A880;
  *(v1 + 11520) = xmmword_1BCE3A880;
  *(v1 + 11584) = xmmword_1BCE3A880;
  *(v1 + 11648) = xmmword_1BCE3A880;
  *(v1 + 11776) = xmmword_1BCE3A880;
  *(v1 + 2064) = xmmword_1BCE3ECC0;
  *(v1 + 3280) = xmmword_1BCE3ECC0;
  *(v1 + 6256) = _Q4;
  *(v1 + 9360) = xmmword_1BCE3ECC0;
  *(v1 + 10576) = xmmword_1BCE3ECC0;
  *(v1 + 11792) = xmmword_1BCE3ECC0;
  *(v1 + 848) = xmmword_1BCE3ECC0;
  *(v1 + 864) = xmmword_1BCE432C0;
  *(v1 + 6176) = _Q4;
  *(v1 + 6121) = *v15;
  *(v1 + 6124) = *&v15[3];
  *(v1 + 6152) = 1061997773;
  *(v1 + 6048) = _Q4;
  *(v1 + 6064) = _Q4;
  *(v1 + 6080) = _Q4;
  *(v1 + 6096) = 0x3FF0000000000000;
  *(v1 + 6112) = 0x403DFFFFFFFFFFFELL;
  *(v1 + 6120) = 1;
  *(v1 + 5968) = _Q4;
  *(v1 + 5984) = xmmword_1BCE3DAE0;
  *(v1 + 6000) = _Q4;
  *(v1 + 6016) = _Q4;
  *(v1 + 6032) = 0x4170000042480000;
  *(v1 + 6040) = 0x3FF0000000000000;
  *(v1 + 2080) = xmmword_1BCE432C0;
  *(v1 + 5872) = _Q4;
  *(v1 + 5904) = _Q4;
  *(v1 + 5920) = xmmword_1BCE3CBC0;
  *(v1 + 5936) = _Q4;
  *(v1 + 5952) = xmmword_1BCE3C8C0;
  *(v1 + 5776) = _Q4;
  *(v1 + 5792) = _Q4;
  *(v1 + 5808) = _Q4;
  *(v1 + 5824) = xmmword_1BCE3C8C0;
  *(v1 + 5840) = _Q4;
  *(v1 + 5856) = xmmword_1BCE3DAE0;
  *(v1 + 3296) = xmmword_1BCE432C0;
  *(v1 + 5680) = _Q4;
  *(v1 + 5712) = _Q4;
  *(v1 + 5744) = _Q4;
  *(v1 + 5760) = _Q4;
  *(v1 + 9376) = xmmword_1BCE432C0;
  *(v1 + 10592) = xmmword_1BCE432C0;
  *(v1 + 11808) = xmmword_1BCE432C0;
  *(v1 + 5584) = _Q4;
  *(v1 + 5616) = _Q4;
  *(v1 + 5632) = _Q4;
  *(v1 + 5648) = _Q4;
  *(v1 + 1024) = xmmword_1BCE3E230;
  *(v1 + 5488) = _Q4;
  *(v1 + 5504) = _Q4;
  *(v1 + 5520) = _Q4;
  *(v1 + 5536) = _Q4;
  *(v1 + 5552) = _Q4;
  *(v1 + 2240) = xmmword_1BCE3E230;
  *(v1 + 3456) = xmmword_1BCE3E230;
  *(v1 + 5392) = _Q4;
  *(v1 + 5424) = _Q4;
  *(v1 + 5456) = _Q4;
  *(v1 + 5472) = xmmword_1BCE3C8C0;
  *(v1 + 4352) = xmmword_1BCE3E230;
  *(v1 + 5328) = _Q4;
  *(v1 + 5344) = xmmword_1BCE3DAE0;
  *(v1 + 5360) = _Q4;
  *(v1 + 9536) = xmmword_1BCE3E230;
  *(v1 + 10752) = xmmword_1BCE3E230;
  *(v1 + 11968) = xmmword_1BCE3E230;
  *(v1 + 672) = xmmword_1BCE3CBC0;
  *(v1 + 1888) = xmmword_1BCE3CBC0;
  *(v1 + 5256) = 0x3FF0000000000000;
  *(v1 + 5280) = 0x3FF0000000000000;
  *(v1 + 5288) = 0;
  *(v1 + 3104) = xmmword_1BCE3CBC0;
  *(v1 + 3488) = xmmword_1BCE3CBC0;
  *(v1 + 4704) = xmmword_1BCE3CBC0;
  *(v1 + 9184) = xmmword_1BCE3CBC0;
  *(v1 + 9568) = xmmword_1BCE3CBC0;
  *(v1 + 10400) = xmmword_1BCE3CBC0;
  *(v1 + 10784) = xmmword_1BCE3CBC0;
  *(v1 + 11616) = xmmword_1BCE3CBC0;
  *(v1 + 12000) = xmmword_1BCE3CBC0;
  *(v1 + 5040) = _Q4;
  *(v1 + 5056) = _Q4;
  *(v1 + 5072) = _Q4;
  *(v1 + 608) = xmmword_1BCE3C8C0;
  *(v1 + 960) = xmmword_1BCE3C8C0;
  *(v1 + 1088) = xmmword_1BCE3C8C0;
  *(v1 + 1824) = xmmword_1BCE3C8C0;
  *(v1 + 2176) = xmmword_1BCE3C8C0;
  *(v1 + 2304) = xmmword_1BCE3C8C0;
  *(v1 + 4905) = *v14;
  *(v1 + 4936) = 1061997773;
  *(v1 + 4960) = _Q4;
  *(v1 + 3040) = xmmword_1BCE3C8C0;
  *(v1 + 4880) = 0x3FF0000000000000;
  *(v1 + 4896) = 0x403DFFFFFFFFFFFELL;
  *(v1 + 4904) = 0;
  *(v1 + 4908) = *&v14[3];
  *(v1 + 4800) = _Q4;
  *(v1 + 4816) = 0x4170000042480000;
  *(v1 + 4824) = 0x3FF0000000000000;
  *(v1 + 4832) = _Q4;
  *(v1 + 4848) = _Q4;
  *(v1 + 4864) = _Q4;
  *(v1 + 3392) = xmmword_1BCE3C8C0;
  *(v1 + 4720) = _Q4;
  *(v1 + 4736) = xmmword_1BCE3C8C0;
  *(v1 + 4752) = _Q4;
  *(v1 + 4768) = xmmword_1BCE3DAE0;
  *(v1 + 4784) = _Q4;
  *(v1 + 3520) = xmmword_1BCE3C8C0;
  *(v1 + 4608) = xmmword_1BCE3C8C0;
  *(v1 + 4624) = _Q4;
  *(v1 + 4640) = xmmword_1BCE3DAE0;
  *(v1 + 4656) = _Q4;
  *(v1 + 4688) = _Q4;
  *(v1 + 4240) = _Q4;
  *(v1 + 4528) = _Q4;
  *(v1 + 4544) = _Q4;
  *(v1 + 4560) = _Q4;
  *(v1 + 4576) = _Q4;
  *(v1 + 4592) = _Q4;
  *(v1 + 4256) = xmmword_1BCE3C8C0;
  *(v1 + 4272) = _Q4;
  *(v1 + 4416) = _Q4;
  *(v1 + 4432) = _Q4;
  *(v1 + 4464) = _Q4;
  *(v1 + 4496) = _Q4;
  *(v1 + 4304) = _Q4;
  *(v1 + 4336) = _Q4;
  *(v1 + 4368) = _Q4;
  *(v1 + 4400) = _Q4;
  *(v1 + 8384) = xmmword_1BCE3C8C0;
  *(v1 + 9120) = xmmword_1BCE3C8C0;
  *(v1 + 9472) = xmmword_1BCE3C8C0;
  *(v1 + 9600) = xmmword_1BCE3C8C0;
  *(v1 + 10336) = xmmword_1BCE3C8C0;
  *(v1 + 10688) = xmmword_1BCE3C8C0;
  *(v1 + 10816) = xmmword_1BCE3C8C0;
  *(v1 + 11552) = xmmword_1BCE3C8C0;
  *(v1 + 11904) = xmmword_1BCE3C8C0;
  *(v1 + 12032) = xmmword_1BCE3C8C0;
  *(v1 + 4128) = xmmword_1BCE3DAE0;
  *(v1 + 4144) = _Q4;
  *(v1 + 4176) = _Q4;
  *(v1 + 4208) = _Q4;
  *(v1 + 480) = xmmword_1BCE3DAE0;
  *(v1 + 992) = xmmword_1BCE3DAE0;
  *(v1 + 1120) = xmmword_1BCE3DAE0;
  *(v1 + 4064) = 0x3FF0000000000000;
  *(v1 + 4072) = 0;
  *(v1 + 4112) = _Q4;
  *(v1 + 1696) = xmmword_1BCE3DAE0;
  *(v1 + 2208) = xmmword_1BCE3DAE0;
  *(v1 + 2336) = xmmword_1BCE3DAE0;
  *(v1 + 2912) = xmmword_1BCE3DAE0;
  *(v1 + 3424) = xmmword_1BCE3DAE0;
  *(v1 + 4040) = 0x3FEF0AE2E0000000;
  *(v1 + 3536) = _Q4;
  *(v1 + 3552) = xmmword_1BCE3DAE0;
  *(v1 + 3568) = _Q4;
  *(v1 + 3872) = xmmword_1BCE3DAE0;
  *(v1 + 3888) = _Q4;
  *(v1 + 3904) = _Q4;
  *(v1 + 3584) = _Q4;
  *(v1 + 3792) = _Q4;
  *(v1 + 3808) = _Q4;
  *(v1 + 3824) = _Q4;
  *(v1 + 3840) = _Q4;
  *(v1 + 3856) = _Q4;
  *(v1 + 3600) = 0x4170000042480000;
  *(v1 + 3608) = 0x3FF0000000000000;
  *(v1 + 3616) = _Q4;
  *(v1 + 3632) = _Q4;
  *(v1 + 3648) = _Q4;
  *(v1 + 3744) = _Q4;
  *(v1 + 3689) = *v13;
  *(v1 + 3692) = *&v13[3];
  *(v1 + 3720) = 1060320051;
  *(v1 + 3664) = 0x3FF0000000000000;
  *(v1 + 3680) = 0xC028000000000000;
  *(v1 + 3688) = 0;
  *(v1 + 8416) = xmmword_1BCE3DAE0;
  *(v1 + 8992) = xmmword_1BCE3DAE0;
  *(v1 + 9504) = xmmword_1BCE3DAE0;
  *(v1 + 9632) = xmmword_1BCE3DAE0;
  *(v1 + 10208) = xmmword_1BCE3DAE0;
  *(v1 + 10720) = xmmword_1BCE3DAE0;
  *(v1 + 10848) = xmmword_1BCE3DAE0;
  *(v1 + 11424) = xmmword_1BCE3DAE0;
  *(v1 + 11936) = xmmword_1BCE3DAE0;
  *(v1 + 12064) = xmmword_1BCE3DAE0;
  *(v1 + 1168) = 0x4170000042480000;
  *(v1 + 3440) = _Q4;
  *(v1 + 3472) = _Q4;
  *(v1 + 3504) = _Q4;
  *(v1 + 2384) = 0x4170000042480000;
  *(v1 + 3344) = _Q4;
  *(v1 + 3360) = _Q4;
  *(v1 + 3376) = _Q4;
  *(v1 + 3408) = _Q4;
  *(v1 + 8464) = 0x4170000042480000;
  *(v1 + 9680) = 0x4170000042480000;
  *(v1 + 10896) = 0x4170000042480000;
  *(v1 + 12112) = 0x4170000042480000;
  *(v1 + 464) = _Q4;
  *(v1 + 3312) = _Q4;
  *(v1 + 3328) = _Q4;
  *(v1 + 496) = _Q4;
  *(v1 + 528) = _Q4;
  *(v1 + 3152) = _Q4;
  *(v1 + 3184) = _Q4;
  *(v1 + 3200) = _Q4;
  *(v1 + 3216) = _Q4;
  *(v1 + 560) = _Q4;
  *(v1 + 592) = _Q4;
  *(v1 + 624) = _Q4;
  *(v1 + 3056) = _Q4;
  *(v1 + 3088) = _Q4;
  *(v1 + 3120) = _Q4;
  *(v1 + 656) = _Q4;
  *(v1 + 688) = _Q4;
  *(v1 + 720) = _Q4;
  *(v1 + 2960) = _Q4;
  *(v1 + 2992) = _Q4;
  *(v1 + 3024) = _Q4;
  *(v1 + 768) = _Q4;
  *(v1 + 784) = _Q4;
  *(v1 + 928) = _Q4;
  *(v1 + 944) = _Q4;
  *(v1 + 976) = _Q4;
  *(v1 + 1008) = _Q4;
  *(v1 + 2896) = _Q4;
  *(v1 + 2928) = _Q4;
  *(v1 + 2824) = 0x3FF0000000000000;
  *(v1 + 2832) = _Q4;
  *(v1 + 2848) = 0x3FF0000000000000;
  *(v1 + 2856) = 0;
  *(v1 + 176) = _Q4;
  *(v1 + 192) = _Q4;
  *(v1 + 400) = _Q4;
  *(v1 + 752) = _Q4;
  *(v1 + 880) = _Q4;
  *(v1 + 896) = _Q4;
  *(v1 + 912) = _Q4;
  *(v1 + 2608) = _Q4;
  *(v1 + 2624) = _Q4;
  *(v1 + 2672) = _Q4;
  *(v1 + 2688) = _Q4;
  *(v1 + 1040) = _Q4;
  *(v1 + 1072) = _Q4;
  *(v1 + 1104) = _Q4;
  *(v1 + 1136) = _Q4;
  *(v1 + 1152) = _Q4;
  *(v1 + 1176) = 0x3FF0000000000000;
  *(v1 + 1184) = _Q4;
  *(v1 + 1200) = _Q4;
  *(v1 + 2464) = 0xC031FFFFFFFFFFFFLL;
  *(v1 + 2472) = 0;
  *(v1 + 2473) = *v12;
  *(v1 + 2476) = *&v12[3];
  *(v1 + 2504) = 1050253722;
  *(v1 + 1216) = _Q4;
  *(v1 + 2392) = 0x3FF0000000000000;
  *(v1 + 2400) = _Q4;
  *(v1 + 2416) = _Q4;
  *(v1 + 2432) = _Q4;
  *(v1 + 2448) = 0x3FF0000000000000;
  *(v1 + 1232) = 0x3FF0000000000000;
  *(v1 + 1248) = 0xC04E000000000000;
  *(v1 + 1256) = 0;
  *(v1 + 2352) = _Q4;
  *(v1 + 2368) = _Q4;
  *(v1 + 1257) = *v11;
  *(v1 + 2288) = _Q4;
  *(v1 + 2320) = _Q4;
  *(v1 + 1260) = *&v11[3];
  *(v1 + 1288) = 1036831949;
  *(v1 + 1392) = _Q4;
  *(v1 + 2192) = _Q4;
  *(v1 + 2224) = _Q4;
  *(v1 + 2256) = _Q4;
  *(v1 + 1408) = _Q4;
  *(v1 + 2096) = _Q4;
  *(v1 + 2112) = _Q4;
  *(v1 + 2128) = _Q4;
  *(v1 + 2144) = _Q4;
  *(v1 + 2160) = _Q4;
  *(v1 + 1608) = 0x3FF0000000000000;
  *(v1 + 1616) = _Q4;
  *(v1 + 1632) = 0x3FF0000000000000;
  *(v1 + 1640) = 0;
  *(v1 + 1680) = _Q4;
  *(v1 + 2000) = _Q4;
  *(v1 + 1712) = _Q4;
  *(v1 + 1744) = _Q4;
  *(v1 + 1904) = _Q4;
  *(v1 + 1936) = _Q4;
  *(v1 + 1968) = _Q4;
  *(v1 + 1984) = _Q4;
  *(v1 + 1776) = _Q4;
  *(v1 + 1808) = _Q4;
  *(v1 + 1872) = _Q4;
  *(v1 + 8400) = _Q4;
  *(v1 + 8432) = _Q4;
  *(v1 + 8448) = _Q4;
  *(v1 + 8480) = _Q4;
  *(v1 + 8496) = _Q4;
  *(v1 + 8512) = _Q4;
  *(v1 + 8688) = _Q4;
  *(v1 + 8704) = _Q4;
  *(v1 + 8752) = _Q4;
  *(v1 + 8768) = _Q4;
  *(v1 + 8912) = _Q4;
  *(v1 + 8976) = _Q4;
  *(v1 + 9008) = _Q4;
  *(v1 + 9040) = _Q4;
  *(v1 + 9072) = _Q4;
  *(v1 + 9104) = _Q4;
  *(v1 + 9136) = _Q4;
  *(v1 + 9168) = _Q4;
  *(v1 + 9200) = _Q4;
  *(v1 + 9232) = _Q4;
  *(v1 + 9264) = _Q4;
  *(v1 + 9280) = _Q4;
  *(v1 + 9296) = _Q4;
  *(v1 + 9392) = _Q4;
  *(v1 + 9408) = _Q4;
  *(v1 + 9424) = _Q4;
  *(v1 + 9440) = _Q4;
  *(v1 + 9456) = _Q4;
  *(v1 + 9488) = _Q4;
  *(v1 + 9520) = _Q4;
  *(v1 + 9552) = _Q4;
  *(v1 + 9584) = _Q4;
  *(v1 + 9616) = _Q4;
  *(v1 + 9648) = _Q4;
  *(v1 + 9664) = _Q4;
  *(v1 + 9696) = _Q4;
  *(v1 + 9712) = _Q4;
  *(v1 + 9728) = _Q4;
  *(v1 + 9904) = _Q4;
  *(v1 + 9920) = _Q4;
  *(v1 + 10128) = _Q4;
  *(v1 + 10192) = _Q4;
  *(v1 + 10224) = _Q4;
  *(v1 + 10256) = _Q4;
  *(v1 + 10288) = _Q4;
  *(v1 + 10320) = _Q4;
  *(v1 + 10384) = _Q4;
  *(v1 + 10416) = _Q4;
  *(v1 + 10448) = _Q4;
  *(v1 + 10480) = _Q4;
  *(v1 + 10496) = _Q4;
  *(v1 + 10512) = _Q4;
  *(v1 + 10608) = _Q4;
  *(v1 + 10624) = _Q4;
  *(v1 + 10640) = _Q4;
  *(v1 + 10656) = _Q4;
  *(v1 + 10672) = _Q4;
  *(v1 + 10704) = _Q4;
  *(v1 + 10736) = _Q4;
  *(v1 + 10768) = _Q4;
  *(v1 + 10800) = _Q4;
  *(v1 + 10832) = _Q4;
  *(v1 + 10864) = _Q4;
  *(v1 + 10880) = _Q4;
  *(v1 + 10912) = _Q4;
  *(v1 + 10928) = _Q4;
  *(v1 + 10944) = _Q4;
  *(v1 + 11120) = _Q4;
  *(v1 + 11136) = _Q4;
  *(v1 + 11344) = _Q4;
  *(v1 + 11408) = _Q4;
  *(v1 + 11440) = _Q4;
  *(v1 + 11472) = _Q4;
  *(v1 + 11504) = _Q4;
  *(v1 + 11536) = _Q4;
  *(v1 + 11568) = _Q4;
  *(v1 + 11600) = _Q4;
  *(v1 + 11632) = _Q4;
  *(v1 + 11664) = _Q4;
  *(v1 + 11696) = _Q4;
  *(v1 + 11712) = _Q4;
  *(v1 + 11728) = _Q4;
  *(v1 + 11824) = _Q4;
  *(v1 + 11840) = _Q4;
  *(v1 + 11856) = _Q4;
  *(v1 + 11872) = _Q4;
  *(v1 + 11888) = _Q4;
  *(v1 + 11920) = _Q4;
  *(v1 + 11952) = _Q4;
  *(v1 + 11984) = _Q4;
  *(v1 + 12016) = _Q4;
  *(v1 + 12048) = _Q4;
  *(v1 + 12080) = _Q4;
  *(v1 + 12096) = _Q4;
  *(v1 + 12128) = _Q4;
  *(v1 + 12144) = _Q4;
  *(v1 + 12160) = _Q4;
  *(v1 + 416) = 0x3FF0000000000000;
  *(v1 + 424) = 0;
  *(v1 + 32) = 0xC056800000000000;
  *(v1 + 392) = 0x3FF0000000000000;
  *(v1 + 40) = 0;
  *(v1 + 72) = 1036831949;
  *(v1 + 8472) = 0x3FF0000000000000;
  *(v1 + 8553) = *v17;
  *(v1 + 8528) = 0x3FF0000000000000;
  *(v1 + 8544) = 0xC032000000000004;
  *(v1 + 8552) = 1;
  *(v1 + 8556) = *&v17[3];
  *(v1 + 8584) = 1050253722;
  *(v1 + 8904) = 0x3FF0000000000000;
  *(v1 + 8928) = 0x3FF0000000000000;
  *(v1 + 8936) = 0;
  *(v1 + 9688) = 0x3FF0000000000000;
  *(v1 + 9744) = 0x3FF0000000000000;
  *(v1 + 9760) = 0xC04E000000000002;
  *(v1 + 9769) = *v18;
  *(v1 + 9768) = 1;
  *(v1 + 9772) = *&v18[3];
  *(v1 + 9800) = 1036831949;
  *(v1 + 10120) = 0x3FF0000000000000;
  *(v1 + 10144) = 0x3FF0000000000000;
  *(v1 + 10152) = 0;
  *(v1 + 10904) = 0x3FF0000000000000;
  *(v1 + 10960) = 0x3FF0000000000000;
  *(v1 + 10976) = 0xC056800000000000;
  *(v1 + 10984) = 1;
  *(v1 + 10985) = *v19;
  *(v1 + 10988) = *&v19[3];
  *(v1 + 11016) = 1036831949;
  *(v1 + 11336) = 0x3FF0000000000000;
  *(v1 + 11360) = 0x3FF0000000000000;
  *(v1 + 11368) = 0;
  *(v1 + 12120) = 0x3FF0000000000000;
  *(v1 + 12176) = 0x3FF0000000000000;
  return result;
}