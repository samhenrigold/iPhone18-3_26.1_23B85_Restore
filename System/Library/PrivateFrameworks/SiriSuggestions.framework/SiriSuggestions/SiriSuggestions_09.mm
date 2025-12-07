uint64_t type metadata accessor for ThirdPartyParameterResolver(uint64_t a1)
{
  result = qword_280F7F150;
  if (!qword_280F7F150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231291FE0(uint64_t a1)
{
  result = sub_231368570();
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

uint64_t sub_23129209C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311EC8F4;

  return sub_231290E64();
}

uint64_t sub_2312921C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_5_15()
{
}

void *sub_231292278(uint64_t *a1, uint64_t a2)
{
  v54 = a2;
  v3 = sub_231367D80();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v51 - v7;
  MEMORY[0x28223BE20](v8);
  v64 = &v51 - v9;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C48, &unk_231370DE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23136FAB0;
  sub_2313690A0();
  HasNoEngagementPolicy = type metadata accessor for HasNoEngagementPolicy();
  swift_allocObject();
  v17 = sub_2312E8D30(&v67, 0, 1);
  *(v15 + 56) = HasNoEngagementPolicy;
  *(v15 + 64) = &off_2845F6340;
  *(v15 + 32) = v17;
  v18 = type metadata accessor for NotExposedTooManyTimesPolicy();
  v19 = swift_allocObject();
  *(v19 + 16) = v10;
  *(v15 + 96) = v18;
  *(v15 + 104) = &off_2845F6320;
  v53 = v15;
  *(v15 + 72) = v19;
  *&v67 = v10;
  *(&v67 + 1) = v11;
  v68 = v12;
  v69 = v13;
  v70 = v14;
  sub_2312927D0(v19, v20, v21);
  sub_231367A10();
  v23 = v22;
  result = sub_231367D60();
  v25 = result;
  v26 = 0;
  v65 = result[2];
  v63 = v4 + 16;
  v61 = v4 + 88;
  v60 = *MEMORY[0x277D60BA0];
  v59 = (v4 + 8);
  v52 = (v4 + 96);
  v62 = v4;
  v55 = (v4 + 32);
  v58 = MEMORY[0x277D84F90];
  v27 = v64;
LABEL_2:
  v28 = v57;
  while (1)
  {
    if (v65 == v26)
    {

      v43 = v54;
      sub_2311CF324(v54, v66);
      v44 = type metadata accessor for NotShownPreviousSuggestionTooSoonPolicy();
      swift_allocObject();
      v45 = sub_2312EA284(v66, v58, v23);
      v46 = v53;
      v53[17] = v44;
      v46[18] = &off_2845F6310;
      v46[14] = v45;
      v47 = type metadata accessor for NotSpokenSuggestionBeforePolicy();
      v48 = swift_allocObject();
      v46[22] = v47;
      v46[23] = &off_2845F6300;
      v46[19] = v48;
      sub_2311CF324(v43, &v67);
      v49 = type metadata accessor for NotSpokenAgainTooSoonPolicy();
      v50 = swift_allocObject();
      *(v50 + 16) = 0xD000000000000012;
      *(v50 + 24) = 0x800000023137F1A0;
      sub_2311D38A8(&v67, v50 + 32);
      v46[27] = v49;
      v46[28] = &off_2845F62E0;
      v46[24] = v50;
      return v46;
    }

    if (v26 >= *(v25 + 16))
    {
      break;
    }

    v29 = v3;
    v30 = v62;
    v31 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v32 = *(v62 + 72);
    v33 = *(v62 + 16);
    v33(v27, v25 + v31 + v32 * v26, v29);
    v33(v28, v27, v29);
    v34 = *(v30 + 88);
    v3 = v29;
    v35 = v34(v28, v29);
    if (v35 == v60)
    {
      (*v52)(v28, v29);
      v37 = sub_231367020();
      (*(*(v37 - 8) + 8))(v28, v37);
      v38 = *v55;
      (*v55)(v56, v27, v3);
      v39 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v66[0] = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F5784(0, *(v39 + 16) + 1, 1);
        v39 = *&v66[0];
      }

      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_2311F5784(v41 > 1, v42 + 1, 1);
        v39 = *&v66[0];
      }

      ++v26;
      *(v39 + 16) = v42 + 1;
      v58 = v39;
      result = v38((v39 + v31 + v42 * v32), v56, v3);
      goto LABEL_2;
    }

    v36 = *v59;
    (*v59)(v28, v29);
    result = v36(v27, v29);
    ++v26;
  }

  __break(1u);
  return result;
}

unint64_t sub_2312927D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85378;
  if (!qword_280F85378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85378);
  }

  return result;
}

uint64_t sub_231292824(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_231369050();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312928E4, 0, 0);
}

uint64_t sub_2312928E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_23128DC20(v18[7], (v18 + 2));
  v19 = v18[5];
  if (v19)
  {
    v20 = v18[6];
    __swift_project_boxed_opaque_existential_1(v18 + 2, v18[5]);
    v26 = swift_task_alloc();
    v18[11] = v26;
    *v26 = v18;
    v26[1] = sub_2312929FC;
    v27 = v18[10];

    return MEMORY[0x2821C6E60](v27, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    sub_23128DC90((v18 + 2));

    v28 = v18[1];

    return v28(0xF000000000000007);
  }
}

uint64_t sub_2312929FC()
{

  return MEMORY[0x2822009F8](sub_231292AF8, 0, 0);
}

uint64_t sub_231292AF8(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  v5 = sub_231369040();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;

  v9 = v1[1];

  return v9(v8 | 0x4000000000000000);
}

uint64_t sub_231292BE0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23120B320;

  return sub_231292824(a1);
}

uint64_t sub_231292C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  return MEMORY[0x2822009F8](sub_231292C98, 0, 0);
}

uint64_t sub_231292C98()
{
  sub_2312108A0(*(v0 + 200) + 16, v0 + 56);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 200);
    sub_2311E6A28((v0 + 56), v0 + 16);
    sub_2312108A0(v1 + 56, v0 + 136);
    if (*(v0 + 160))
    {
      sub_2311E6A28((v0 + 136), v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      OUTLINED_FUNCTION_1_6();
      v2 = swift_task_alloc();
      *(v0 + 208) = v2;
      *v2 = v0;
      v3 = OUTLINED_FUNCTION_0_24(v2);

      return v4(v3);
    }

    sub_231210910(v0 + 136);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    sub_231210910(v0 + 56);
  }

  v6 = *(v0 + 8);

  return v6(0xF000000000000007);
}

uint64_t sub_231292E34()
{
  OUTLINED_FUNCTION_8();
  *(*v0 + 216) = v1;

  return MEMORY[0x2822009F8](sub_231292F30, 0, 0);
}

uint64_t sub_231292F30()
{
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  OUTLINED_FUNCTION_1_6();
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_0_24(v1);

  return v3(v2);
}

uint64_t sub_231293030()
{
  OUTLINED_FUNCTION_8();
  *(*v0 + 232) = v1;

  return MEMORY[0x2822009F8](sub_23129312C, 0, 0);
}

uint64_t sub_23129312C()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[27];
  v2 = v0[29];
  if ((~v1 & 0xF000000000000007) == 0)
  {
    goto LABEL_4;
  }

  if ((~v2 & 0xF000000000000007) == 0)
  {
    v2 = v0[27];
LABEL_4:
    sub_2312932F4(v2);
    v3 = 0xF000000000000007;
    goto LABEL_6;
  }

  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v3 = v4 | 0xC000000000000000;
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_2312931E0()
{
  sub_231210910(v0 + 16);
  sub_231210910(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_231293244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2311F4480;

  return sub_231292C74(a1, a2, a3);
}

uint64_t sub_2312932F4(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_23129330C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v94 = a3;
  v86 = a4;
  v91 = a2;
  v95 = a5;
  sub_231367BD0();
  OUTLINED_FUNCTION_0_0();
  v84 = v7;
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_23();
  v83 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443F0, &unk_231373A20);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = &v80 - v10;
  v87 = sub_231367DB0();
  OUTLINED_FUNCTION_0_0();
  v82 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_23();
  v81 = v13;
  v92 = sub_231367070();
  OUTLINED_FUNCTION_0_0();
  v90 = v14;
  MEMORY[0x28223BE20](v15);
  v89 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v80 - v18;
  v20 = sub_231367C70();
  OUTLINED_FUNCTION_0_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_23();
  v25 = v24;
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v28 = MEMORY[0x231929610](v26, v27);
  v30 = v29;
  sub_2313691C0();
  v31 = MEMORY[0x231927690]();
  v33 = v32;

  if (v28 == v31 && v30 == v33)
  {

    goto LABEL_10;
  }

  v35 = sub_23136A900();

  if (v35)
  {
LABEL_10:
    v41 = *MEMORY[0x277D60B98];
    sub_231367D80();
    OUTLINED_FUNCTION_11();
    v43 = *(v42 + 104);
    v45 = v44;
    v46 = v95;

    return v43(v46, v41, v45);
  }

  (*(v22 + 16))(v25, v94, v20);
  v36 = (*(v22 + 88))(v25, v20);
  if (v36 == *MEMORY[0x277D60AC0])
  {
    (*(v22 + 96))(v25, v20);
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
    sub_231368210();
    OUTLINED_FUNCTION_11();
    (*(v38 + 8))(v25 + v37);
    __swift_project_boxed_opaque_existential_1((v93 + 16), *(v93 + 40));
    if (sub_231368410())
    {
      v39 = *MEMORY[0x277D60B78];
      sub_231367D80();
      OUTLINED_FUNCTION_7_0();
      (*(v40 + 104))(v95, v39);
    }

    else
    {
      v51 = v91[4];
      __swift_project_boxed_opaque_existential_1(v91, v91[3]);
      v94 = v51;
      sub_231368390();
      v52 = *MEMORY[0x277D60820];
      v54 = v89;
      v53 = v90;
      v55 = v92;
      v93 = *(v90 + 104);
      (v93)(v89, v52, v92);
      v56 = sub_23131210C(v19, v54);
      v57 = *(v53 + 8);
      v57(v54, v55);
      v57(v19, v55);
      if (v56 & 1) != 0 || (sub_231368390(), (v93)(v54, *MEMORY[0x277D60838], v55), v58 = sub_23131210C(v19, v54), v57(v54, v55), v57(v19, v55), (v58))
      {
        v59 = MEMORY[0x277D607E0];
      }

      else
      {
        v59 = MEMORY[0x277D607E8];
      }

      v71 = *v59;
      sub_231367020();
      OUTLINED_FUNCTION_7_0();
      v73 = v95;
      (*(v72 + 104))(v95, v71);
      v74 = *MEMORY[0x277D60BA0];
      sub_231367D80();
      OUTLINED_FUNCTION_7_0();
      (*(v75 + 104))(v73, v74);
    }

    sub_2313681A0();
    OUTLINED_FUNCTION_11();
    return (*(v76 + 8))(v25);
  }

  else
  {
    if (v36 == *MEMORY[0x277D60AE0])
    {
      v48 = MEMORY[0x277D60B98];
    }

    else
    {
      if (v36 != *MEMORY[0x277D60AD0])
      {
        v69 = *MEMORY[0x277D60B88];
        sub_231367D80();
        OUTLINED_FUNCTION_7_0();
        (*(v70 + 104))(v95, v69);
        return (*(v22 + 8))(v25, v20);
      }

      if (v86)
      {
        v60 = v83;
        sub_2313691E0();
        sub_231367BC0();
        (*(v84 + 8))(v60, v85);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443F8, &unk_231373A30);
        v62 = v87;
        v61 = v88;
        v63 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v61, v63 ^ 1u, 1, v62);
        if (__swift_getEnumTagSinglePayload(v61, 1, v62) != 1)
        {
          v64 = *(v82 + 32);
          v65 = v81;
          v64(v81, v61, v62);
          v66 = v95;
          v64(v95, v65, v62);
          v67 = *MEMORY[0x277D60B90];
          sub_231367D80();
          OUTLINED_FUNCTION_7_0();
          return (*(v68 + 104))(v66, v67);
        }
      }

      else
      {
        v61 = v88;
        __swift_storeEnumTagSinglePayload(v88, 1, 1, v87);
      }

      sub_231293C20(v61);
      sub_2311CF324(a1, v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
      sub_2313694A0();
      if (swift_dynamicCast())
      {
        sub_231369490();
        v77 = v95;
        sub_231367DA0();

        v78 = *MEMORY[0x277D60B90];
        sub_231367D80();
        OUTLINED_FUNCTION_7_0();
        return (*(v79 + 104))(v77, v78);
      }

      v48 = MEMORY[0x277D60B88];
    }

    v49 = *v48;
    sub_231367D80();
    OUTLINED_FUNCTION_7_0();
    return (*(v50 + 104))(v95, v49);
  }
}

uint64_t sub_231293C20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443F0, &unk_231373A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void SpecificDefinitionSuggestionServiceFactory.__allocating_init(ownerDefinitionFactories:generatorFactories:resolverFactories:finalizerFactories:configDirectory:overrideCatTemplateDirectory:featureEnabledProvider:clock:dataServiceFactory:appUtils:selfLogger:suggestionsLoggerFactory:featureServiceFactory:bookkeepingXPCClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, void *a25, void *a26)
{
  OUTLINED_FUNCTION_11_0();
  v76 = v26;
  v77 = v27;
  v85 = v29;
  v86 = v28;
  v87 = v31;
  v88 = v30;
  v79 = v32;
  v80 = v33;
  v78 = v34;
  v75 = a26;
  v74 = a25;
  v73 = a24;
  v72 = a23;
  v83 = a22;
  v84 = a21;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  v36 = OUTLINED_FUNCTION_40_0(v35);
  MEMORY[0x28223BE20](v36);
  v82 = &v68 - v37;
  v81 = sub_231366690();
  OUTLINED_FUNCTION_21();
  v71 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v70 = &v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DefaultRuntimeConfigProvider();
  v43 = OUTLINED_FUNCTION_16_18(v42);
  *(v43 + 16) = sub_2311F0E84;
  *(v43 + 24) = 0;
  v44 = type metadata accessor for DefaultOwnerConfigProviderFactory();
  v69 = OUTLINED_FUNCTION_15_16(v44);
  v45 = type metadata accessor for DefaultEngagementEstimatorModelProvider();
  swift_allocObject();
  DefaultEngagementEstimatorModelProvider.init()();
  v47 = v46;
  v48 = type metadata accessor for DefaultNormalizerProvider();
  v49 = OUTLINED_FUNCTION_16_18(v48);
  *(v49 + 16) = 0xD000000000000028;
  *(v49 + 24) = 0x800000023137F290;
  v50 = type metadata accessor for DefaultDenyListsProvider();
  v51 = OUTLINED_FUNCTION_15_16(v50);
  v99 = v50;
  v100 = &protocol witness table for DefaultDenyListsProvider;
  *&v98 = v51;
  type metadata accessor for ConfigRetrievalWrapper();
  v52 = swift_allocObject();
  v52[5] = v42;
  v52[6] = &protocol witness table for DefaultRuntimeConfigProvider;
  v52[2] = v43;
  v52[10] = v44;
  v52[11] = &off_2845F3210;
  v52[7] = v69;
  v52[15] = v45;
  v52[16] = &protocol witness table for DefaultEngagementEstimatorModelProvider;
  v52[12] = v47;
  v52[20] = v48;
  v52[21] = &off_2845F5D90;
  v52[17] = v49;
  sub_2311D38A8(&v98, (v52 + 22));
  v53 = v70;
  v54 = v71;
  v55 = v81;
  (*(v71 + 16))(v70, v88, v81);
  v56 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v69 = swift_allocObject();
  (*(v54 + 32))(v69 + v56, v53, v55);
  sub_2311E66F0(v87, v82, &qword_27DD44108, &unk_231373A40);
  sub_2311CF324(v86, &v98);
  sub_2311CF324(v85, v97);
  sub_2311CF324(v84, v94);
  sub_2311E66F0(v83, v93, &qword_27DD43818, &unk_23136E030);
  v57 = v72;
  sub_2311CF324(v72, v92);
  v58 = v73;
  sub_2311E66F0(v73, v91, &qword_27DD44400, &qword_231373A50);
  v59 = v74;
  sub_2311CF324(v74, v90);
  v60 = v75;
  sub_2311CF324(v75, v89);
  v61 = v95;
  v62 = v96;
  __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_1_4();
  v66 = v65 - v64;
  (*(v67 + 16))(v65 - v64);
  sub_23129687C(v77, v78, v79, v80, v52, sub_231295BE4, v69, v82, &v98, v97, v66, v93, v92, v91, v90, v89, v76, v61, v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v94);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  sub_2311D1F18(v58, &qword_27DD44400, &qword_231373A50);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  sub_2311D1F18(v83, &qword_27DD43818, &unk_23136E030);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  __swift_destroy_boxed_opaque_existential_1Tm(v85);
  __swift_destroy_boxed_opaque_existential_1Tm(v86);
  sub_2311D1F18(v87, &qword_27DD44108, &unk_231373A40);
  (*(v54 + 8))(v88, v81);
  OUTLINED_FUNCTION_9_0();
}

void SpecificDefinitionSuggestionServiceFactory.__allocating_init(ownerDefinitionFactories:generatorFactories:resolverFactories:finalizerFactories:configRetrievalWrapper:configOverride:overrideCatTemplateDirectory:featureEnabledProvider:clock:dataServiceFactory:appUtils:selfLogger:suggestionsLoggerFactory:featureServiceFactory:bookkeepingXPCClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, void *a25, uint64_t a26, void *a27, void *a28)
{
  OUTLINED_FUNCTION_11_0();
  v50 = v29;
  v51 = v30;
  v48 = v31;
  v49 = v32;
  v46 = v33;
  v47 = v34;
  v36 = v35;
  v38 = v37;
  v39 = a23[3];
  v40 = a23[4];
  __swift_mutable_project_boxed_opaque_existential_1(a23, v39);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_4();
  v44 = v43 - v42;
  (*(v45 + 16))(v43 - v42);
  sub_23129687C(v38, v36, v46, v47, v48, v49, v50, v51, a21, a22, v44, a24, a25, a26, a27, a28, v28, v39, v40);
  __swift_destroy_boxed_opaque_existential_1Tm(a23);
  OUTLINED_FUNCTION_9_0();
}

void sub_231294390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void (*a29)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_11_0();
  v51 = v30;
  v52 = v31;
  v49 = v32;
  v50 = v33;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = *(v38 + 24);
  v42 = *(v38 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v38, v43);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_4();
  v47 = v46 - v45;
  (*(v48 + 16))(v46 - v45);
  a29(v41, v47, v37, v35, v49, v50, v51, v52, a21, a22, a23, a24, a25, a26, a27, a28, v29, v43, v42);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  OUTLINED_FUNCTION_9_0();
}

void static SpecificDefinitionSuggestionServiceFactory.create(ownerDefinitionFactories:generatorFactories:resolverFactories:finalizerFactories:runtimeConfig:configOverride:featureEnabledProvider:clock:store:featureServiceFactory:bookkeepingXPCClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_11_0();
  v79 = v24;
  v80 = v25;
  v73 = v26;
  v74 = v27;
  v29 = v28;
  v81 = v30;
  v78 = v31;
  v77 = a24;
  v76 = a23;
  sub_231368DB0();
  OUTLINED_FUNCTION_21();
  v71 = v33;
  v72 = v32;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_4();
  v70 = v35 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  v37 = OUTLINED_FUNCTION_40_0(v36);
  MEMORY[0x28223BE20](v37);
  v75 = &v70 - v38;
  memcpy(v112, v29, 0x1A8uLL);
  v111 = 0;
  memset(v110, 0, sizeof(v110));
  sub_2313690A0();
  v39 = sub_231366EF0();
  v40 = sub_231366EE0();
  v108[4] = MEMORY[0x277D60670];
  v108[3] = v39;
  v108[0] = v40;
  v41 = swift_allocObject();
  memcpy((v41 + 16), v112, 0x1A8uLL);
  v42 = type metadata accessor for DefaultRuntimeConfigProvider();
  v43 = OUTLINED_FUNCTION_16_18(v42);
  *(v43 + 16) = sub_231297034;
  *(v43 + 24) = v41;
  v44 = type metadata accessor for DefaultOwnerConfigProviderFactory();
  v45 = OUTLINED_FUNCTION_15_16(v44);
  v46 = type metadata accessor for DefaultEngagementEstimatorModelProvider();
  swift_allocObject();
  DefaultEngagementEstimatorModelProvider.init()();
  v48 = v47;
  v49 = type metadata accessor for DefaultNormalizerProvider();
  v50 = OUTLINED_FUNCTION_16_18(v49);
  *(v50 + 16) = 0xD000000000000028;
  *(v50 + 24) = 0x800000023137F290;
  v51 = type metadata accessor for DefaultDenyListsProvider();
  v52 = OUTLINED_FUNCTION_15_16(v51);
  *(&v83 + 1) = v51;
  v84 = &protocol witness table for DefaultDenyListsProvider;
  *&v82 = v52;
  type metadata accessor for ConfigRetrievalWrapper();
  v53 = swift_allocObject();
  v53[5] = v42;
  v53[6] = &protocol witness table for DefaultRuntimeConfigProvider;
  v53[2] = v43;
  v53[10] = v44;
  v53[11] = &off_2845F3210;
  v53[7] = v45;
  v54 = v73;
  v53[15] = v46;
  v53[16] = &protocol witness table for DefaultEngagementEstimatorModelProvider;
  v53[12] = v48;
  v53[20] = v49;
  v53[21] = &off_2845F5D90;
  v53[17] = v50;
  sub_2311D38A8(&v82, (v53 + 22));
  sub_2311CF324(v74, v107);
  sub_2311CF324(&v109, v106);
  v105 = 0;
  memset(v104, 0, sizeof(v104));
  sub_2311CF324(v108, v103);
  sub_2311E66F0(v110, v102, &qword_27DD44400, &qword_231373A50);
  sub_2311CF324(v76, v101);
  sub_2311CF324(v77, v100);
  v99[3] = &type metadata for DefaultDataServiceFactory;
  v99[4] = &off_2845F6C20;
  v55 = type metadata accessor for DefaultGeneratorProvider();
  v56 = swift_allocObject();
  v56[3] = 0xD000000000000018;
  v56[4] = 0x800000023137CCA0;
  v56[2] = v81;
  v57 = sub_231366690();
  v58 = v75;
  __swift_storeEnumTagSinglePayload(v75, 1, 1, v57);
  sub_2311CF324(v107, v98);
  sub_2311CF324(v106, v97);
  sub_2311CF324(v99, v96);
  sub_2311E66F0(v104, v95, &qword_27DD43818, &unk_23136E030);
  sub_2311CF324(v103, v94);
  v59 = v58;
  v60 = v78;
  sub_2311E66F0(v102, v93, &qword_27DD44400, &qword_231373A50);
  sub_2311CF324(v101, v92);
  sub_2311CF324(v100, v91);
  v61 = OUTLINED_FUNCTION_52_6(v79);
  v90[3] = v55;
  v90[4] = sub_23129707C(&qword_27DD44408, type metadata accessor for DefaultGeneratorProvider, &protocol conformance descriptor for DefaultGeneratorProvider);
  v90[0] = v56;
  v61[2] = v60;
  sub_2311CF324(v90, (v61 + 3));
  v62 = MEMORY[0x277D84F90];
  v61[8] = MEMORY[0x277D84F90];
  v61[9] = v62;
  v63 = v80;
  v61[10] = v53;
  v61[11] = v63;
  v61[12] = v54;
  sub_2311E66F0(v59, v61 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_overrideCatTemplateDirectory, &qword_27DD44108, &unk_231373A40);
  sub_2311CF324(v98, v61 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureEnabledProvider);
  sub_2311CF324(v97, v61 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_clock);
  sub_2311CF324(v96, v61 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_dataServiceFactory);
  sub_2311E66F0(v95, &v85, &qword_27DD43818, &unk_23136E030);
  if (v86)
  {
    sub_2311D38A8(&v85, &v87);
    sub_231286BB0(v112, &v82);
    sub_231369EE0();
    sub_231369EE0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44430, &qword_231373A58);
    sub_231286BB0(v112, &v82);
    sub_231369EE0();
    sub_231369EE0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44438, &qword_231373A60);
    sub_231369EC0();
    v64 = sub_231368F10();
    v65 = v70;
    sub_231368DA0();
    v66 = type metadata accessor for AppUtilsService(0);
    v67 = OUTLINED_FUNCTION_52_6(v66);
    *(v67 + 16) = v64;
    (*(v71 + 32))(v67 + OBJC_IVAR____TtC15SiriSuggestions15AppUtilsService_homescreenAppPicker, v65, v72);
    v88 = v66;
    v89 = sub_23129707C(&qword_27DD44440, type metadata accessor for AppUtilsService, &protocol conformance descriptor for AppUtilsService);
    *&v87 = v67;
    if (v86)
    {
      sub_2311D1F18(&v85, &qword_27DD43818, &unk_23136E030);
    }
  }

  sub_2311D38A8(&v87, v61 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_appUtils);
  sub_2311CF324(v94, v61 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_selfLogger);
  sub_2311E66F0(v93, &v87, &qword_27DD44400, &qword_231373A50);
  if (v88)
  {
    OUTLINED_FUNCTION_7_14(v93);
    __swift_destroy_boxed_opaque_existential_1Tm(v94);
    OUTLINED_FUNCTION_14_18(v95);
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    sub_2311D1F18(v59, &qword_27DD44108, &unk_231373A40);
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    OUTLINED_FUNCTION_7_14(v102);
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    OUTLINED_FUNCTION_14_18(v104);
    OUTLINED_FUNCTION_6_15();
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    sub_2311D38A8(&v87, &v82);
  }

  else
  {
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    sub_2311CF324(v97, &v85);
    v68 = sub_231366DE0();
    OUTLINED_FUNCTION_52_6(v68);
    v69 = sub_231366DD0();
    *(&v83 + 1) = v68;
    v84 = &protocol witness table for SiriRemembersLogger;
    *&v82 = v69;
    OUTLINED_FUNCTION_7_14(v93);
    __swift_destroy_boxed_opaque_existential_1Tm(v94);
    OUTLINED_FUNCTION_14_18(v95);
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    sub_2311D1F18(v59, &qword_27DD44108, &unk_231373A40);
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    OUTLINED_FUNCTION_7_14(v102);
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    OUTLINED_FUNCTION_14_18(v104);
    OUTLINED_FUNCTION_6_15();
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    if (v88)
    {
      sub_2311D1F18(&v87, &qword_27DD44400, &qword_231373A50);
    }
  }

  sub_2311D38A8(&v82, v61 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_suggestionsLoggerFactory);
  sub_2311D38A8(v92, v61 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureServiceFactory);
  sub_2311D38A8(v91, v61 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_bookkeepingXPCClient);
  __swift_destroy_boxed_opaque_existential_1Tm(v108);
  OUTLINED_FUNCTION_9_0();
}

void *static SpecificDefinitionSuggestionServiceFactory.create(ownerDefinitionFactories:generatorFactories:resolverFactories:finalizerFactories:runtimeConfig:configOverride:featureEnabledProvider:clock:selfLogger:suggestionsLoggerFactory:dataServiceFactory:featureServiceFactory:bookkeepingXPCClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14)
{
  v20 = a12[3];
  v19 = a12[4];
  v21 = __swift_project_boxed_opaque_existential_1(a12, v20);
  return sub_2312963EC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, v21, a13, a14, v14, v20, v19);
}

uint64_t sub_231294E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for DefaultOwnerDefinitionProvider();
  v8 = *(v3 + 16);
  ObjectType = swift_getObjectType();
  sub_2311CF324(v3 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureEnabledProvider, v13);
  v10 = sub_23123B154(v8, a1, a2, a1, v13, 0, v7, ObjectType, *(a2 + 8));
  a3[3] = &type metadata for BundleSpoofingOwnerDefinitionProvider;
  a3[4] = &off_2845F5BE8;
  v11 = swift_allocObject();
  *a3 = v11;
  v11[5] = v7;
  v11[6] = &off_2845F43B8;
  v11[2] = v10;
  v11[7] = a1;
  v11[8] = a2;
  swift_unknownObjectRetain_n();
  return sub_231369EE0();
}

uint64_t SpecificDefinitionSuggestionServiceFactory.create(refreshableService:)()
{
  OUTLINED_FUNCTION_8();
  v1[65] = v0;
  v1[63] = v2;
  v1[64] = v3;
  v1[62] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  OUTLINED_FUNCTION_40_0(v5);
  v1[66] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231294FE8()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  sub_231294E58(*(v0 + 504), *(v0 + 512), (v0 + 16));
  type metadata accessor for SuggestionPipelineFactories();
  v3 = *(v2 + 64);
  v4 = type metadata accessor for DefaultResolverProvider();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v0 + 120) = v4;
  *(v0 + 128) = &off_2845F3980;
  *(v0 + 96) = v5;
  v6 = *(v2 + 72);
  v7 = type metadata accessor for DefaultFinalizerProvider();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v0 + 160) = v7;
  *(v0 + 168) = &off_2845F6280;
  *(v0 + 136) = v8;
  sub_231369EE0();
  sub_231369EE0();
  sub_2312BD618(v0 + 16, v2 + 24, v0 + 96, v0 + 136, (v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v9 = *(v2 + 96);
  v18 = *(v2 + 80);
  sub_2311E66F0(v2 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_overrideCatTemplateDirectory, v1, &qword_27DD44108, &unk_231373A40);
  sub_2311CF324(v0 + 56, v0 + 176);
  sub_2311CF324(v2 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureEnabledProvider, v0 + 216);
  sub_2311CF324(v2 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_clock, v0 + 256);
  sub_2311CF324(v2 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_dataServiceFactory, v0 + 296);
  sub_2311CF324(v2 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_appUtils, v0 + 336);
  v10 = sub_231366EF0();

  v11 = sub_231366EE0();
  sub_2311CF324(v2 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_suggestionsLoggerFactory, v0 + 376);
  sub_2311CF324(v2 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureServiceFactory, v0 + 416);
  sub_2311CF324(v2 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_bookkeepingXPCClient, v0 + 456);
  v12 = type metadata accessor for DefaultSuggestionServiceFactory(0);
  v13 = OUTLINED_FUNCTION_52_6(v12);
  *(v0 + 536) = v13;
  v14 = (v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_selfLogger);
  v15 = MEMORY[0x277D60670];
  v14[3] = v10;
  v14[4] = v15;
  *v14 = v11;
  *(v13 + 16) = 1;
  *(v13 + 24) = v18;
  *(v13 + 40) = v9;
  sub_2312970C4(v1, v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_overrideCatTemplateDirectory);
  sub_2311D38A8((v0 + 176), v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_pipelineFactory);
  sub_2311D38A8((v0 + 216), v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_featureEnabledProvider);
  sub_2311D38A8((v0 + 256), v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_clock);
  sub_2311D38A8((v0 + 296), v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_dataServiceFactory);
  sub_2311D38A8((v0 + 336), v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_appUtils);
  sub_2311D38A8((v0 + 376), v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_suggestionsLoggerFactory);
  sub_2311D38A8((v0 + 416), v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_featureServiceFactory);
  sub_2311D38A8((v0 + 456), v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_bookkeepingXPCClient);
  v16 = swift_task_alloc();
  *(v0 + 544) = v16;
  *v16 = v0;
  v16[1] = sub_23129534C;

  return DefaultSuggestionServiceFactory.create(refreshableService:)();
}

uint64_t sub_23129534C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231295430()
{
  OUTLINED_FUNCTION_8();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

void *SpecificDefinitionSuggestionServiceFactory.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  sub_2311D1F18(v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_overrideCatTemplateDirectory, &qword_27DD44108, &unk_231373A40);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureEnabledProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_clock));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_dataServiceFactory));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_appUtils));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_selfLogger));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_suggestionsLoggerFactory));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureServiceFactory));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_bookkeepingXPCClient));
  return v0;
}

uint64_t SpecificDefinitionSuggestionServiceFactory.__deallocating_deinit()
{
  SpecificDefinitionSuggestionServiceFactory.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2312955E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311D44D4;

  return SpecificDefinitionSuggestionServiceFactory.create(refreshableService:)();
}

uint64_t sub_23129569C()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2312956C4()
{
  v1 = *(*(v0 + 16) + 48);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  v4 = *(v1 + 8);
  *v3 = v0;
  v3[1] = sub_231295778;

  return MEMORY[0x2821C72C8](ObjectType, v4);
}

uint64_t sub_231295778()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23129585C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_231295980;

  return v6(v2, v3);
}

uint64_t sub_231295980()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_231295A6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231295AF8;

  return sub_23129569C();
}

uint64_t sub_231295AF8()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_231295BE4()
{
  v1 = sub_231366690();
  OUTLINED_FUNCTION_40_0(v1);
  return sub_231294190(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
}

void *sub_231295C64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 *a12, __int128 *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v31 = a7;
  v32 = a8;
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v26 = a10;
  v27 = a9;
  v25 = a11;
  v19 = *(a15 - 8);
  MEMORY[0x28223BE20](a14);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  (*(v19 + 16))(v21, a2, a15);
  v23 = sub_231295DE0(a1, v21, a3, v28, v29, v30, v31, v32, v27, *(&v27 + 1), v26, *(&v26 + 1), v25, *(&v25 + 1), a12, a13, v22, a15, a16);
  (*(v19 + 8))(a2, a15);
  return v23;
}

void *sub_231295DE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, __int128 *a15, __int128 *a16, void *a17, uint64_t a18, uint64_t a19)
{
  v41 = a7;
  v44 = a6;
  v43 = a4;
  v42 = a3;
  v40 = a1;
  v48 = a16;
  v47 = a15;
  v45 = a14;
  v46 = a13;
  v39 = sub_231368DB0();
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[3] = a18;
  v55[4] = a19;
  v23 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  (*(*(a18 - 8) + 32))(boxed_opaque_existential_1, a2, a18);
  a17[2] = v40;
  v25 = v41;
  sub_2311CF324(v55, (a17 + 3));
  v26 = v43;
  a17[8] = v42;
  a17[9] = v26;
  v27 = v44;
  a17[10] = v23;
  a17[11] = v27;
  a17[12] = v25;
  v44 = a8;
  sub_2311E66F0(a8, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_overrideCatTemplateDirectory, &qword_27DD44108, &unk_231373A40);
  v43 = a9;
  sub_2311CF324(a9, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureEnabledProvider);
  sub_2311CF324(a10, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_clock);
  sub_2311CF324(a11, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_dataServiceFactory);
  sub_2311E66F0(a12, &v50, &qword_27DD43818, &unk_23136E030);
  if (v51)
  {
    sub_2311D38A8(&v50, &v52);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44430, &qword_231373A58);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44438, &qword_231373A60);
    sub_231369EC0();
    v28 = sub_231368F10();
    v29 = v37;
    sub_231368DA0();
    v30 = type metadata accessor for AppUtilsService(0);
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    (*(v38 + 32))(v31 + OBJC_IVAR____TtC15SiriSuggestions15AppUtilsService_homescreenAppPicker, v29, v39);
    *(&v53 + 1) = v30;
    v54 = sub_23129707C(&qword_27DD44440, type metadata accessor for AppUtilsService, &protocol conformance descriptor for AppUtilsService);
    *&v52 = v31;
    if (v51)
    {
      sub_2311D1F18(&v50, &qword_27DD43818, &unk_23136E030);
    }
  }

  sub_2311D38A8(&v52, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_appUtils);
  v32 = v46;
  sub_2311CF324(v46, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_selfLogger);
  v33 = v45;
  sub_2311E66F0(v45, &v50, &qword_27DD44400, &qword_231373A50);
  if (v51)
  {

    sub_2311D1F18(v33, &qword_27DD44400, &qword_231373A50);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    sub_2311D1F18(a12, &qword_27DD43818, &unk_23136E030);
    __swift_destroy_boxed_opaque_existential_1Tm(a11);
    __swift_destroy_boxed_opaque_existential_1Tm(a10);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    sub_2311D1F18(v44, &qword_27DD44108, &unk_231373A40);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    sub_2311D38A8(&v50, &v52);
  }

  else
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    sub_2311CF324(a10, v49);
    v34 = sub_231366DE0();
    swift_allocObject();
    v35 = sub_231366DD0();
    *(&v53 + 1) = v34;
    v54 = &protocol witness table for SiriRemembersLogger;

    *&v52 = v35;
    sub_2311D1F18(v33, &qword_27DD44400, &qword_231373A50);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    sub_2311D1F18(a12, &qword_27DD43818, &unk_23136E030);
    __swift_destroy_boxed_opaque_existential_1Tm(a11);
    __swift_destroy_boxed_opaque_existential_1Tm(a10);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    sub_2311D1F18(v44, &qword_27DD44108, &unk_231373A40);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    if (v51)
    {
      sub_2311D1F18(&v50, &qword_27DD44400, &qword_231373A50);
    }
  }

  sub_2311D38A8(&v52, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_suggestionsLoggerFactory);
  sub_2311D38A8(v47, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureServiceFactory);
  sub_2311D38A8(v48, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_bookkeepingXPCClient);
  return a17;
}

void *sub_2312963EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v56 = a8;
  v67 = a7;
  v68 = a6;
  v66 = a4;
  v63 = a2;
  v64 = a3;
  v61 = a1;
  v65 = a17;
  v59 = a14;
  v58 = a13;
  v55 = a10;
  v54 = a9;
  v57 = a11;
  v62 = a15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  MEMORY[0x28223BE20](v18 - 8);
  v69 = &v49 - v19;
  v50 = a16;
  v60 = *(a16 - 8);
  v20 = v60;
  MEMORY[0x28223BE20](v21);
  v53 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v51 = *(v20 + 16);
  v52 = &v49 - v25;
  v51(v24);
  memcpy(v81, a5, 0x1A8uLL);
  v26 = swift_allocObject();
  memcpy((v26 + 16), a5, 0x1A8uLL);
  v27 = type metadata accessor for DefaultRuntimeConfigProvider();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_231297414;
  *(v28 + 24) = v26;
  v29 = type metadata accessor for DefaultOwnerConfigProviderFactory();
  v49 = swift_allocObject();
  v30 = type metadata accessor for DefaultEngagementEstimatorModelProvider();
  swift_allocObject();
  DefaultEngagementEstimatorModelProvider.init()();
  v32 = v31;
  v33 = type metadata accessor for DefaultNormalizerProvider();
  v34 = swift_allocObject();
  *(v34 + 16) = 0xD000000000000028;
  *(v34 + 24) = 0x800000023137F290;
  v35 = type metadata accessor for DefaultDenyListsProvider();
  v36 = swift_allocObject();
  v71 = v35;
  v72 = &protocol witness table for DefaultDenyListsProvider;
  *&v70 = v36;
  type metadata accessor for ConfigRetrievalWrapper();
  v37 = swift_allocObject();
  v37[5] = v27;
  v37[6] = &protocol witness table for DefaultRuntimeConfigProvider;
  v37[2] = v28;
  v37[10] = v29;
  v37[11] = &off_2845F3210;
  v37[7] = v49;
  v37[15] = v30;
  v37[16] = &protocol witness table for DefaultEngagementEstimatorModelProvider;
  v37[12] = v32;
  v37[20] = v33;
  v37[21] = &off_2845F5D90;
  v37[17] = v34;
  sub_2311D38A8(&v70, (v37 + 22));
  v38 = sub_231366690();
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v38);
  sub_2311CF324(v56, v80);
  sub_2311CF324(v54, v79);
  v78 = 0;
  memset(v77, 0, sizeof(v77));
  sub_2311CF324(v55, v76);
  sub_2311E66F0(v57, v75, &qword_27DD44400, &qword_231373A50);
  sub_2311CF324(v58, v74);
  sub_2311CF324(v59, v73);
  v40 = v52;
  v39 = v53;
  v41 = v50;
  (v51)(v53, v52, v50);
  sub_231286BB0(v81, &v70);
  v42 = v61;
  sub_231369EE0();
  v43 = v63;
  sub_231369EE0();
  v44 = v64;
  sub_231369EE0();
  v45 = v66;
  sub_231369EE0();
  v46 = v67;

  v47 = sub_23129687C(v42, v43, v44, v45, v37, v68, v46, v69, v80, v79, v39, v77, v76, v75, v74, v73, v62, v41, v65);
  (*(v60 + 8))(v40, v41);
  return v47;
}

void *sub_23129687C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v55 = a2;
  v56 = a8;
  v51 = a6;
  v52 = a7;
  v49 = a1;
  v50 = a5;
  v48 = a16;
  v57 = a15;
  v47 = a14;
  v46 = a12;
  v19 = sub_231368DB0();
  v44 = *(v19 - 8);
  v45 = v19;
  MEMORY[0x28223BE20](v19);
  v43 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v42 - v22;

  v73[3] = a18;
  v73[4] = a19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  (*(*(a18 - 8) + 32))(boxed_opaque_existential_1, a11, a18);
  v25 = type metadata accessor for DefaultGeneratorProvider();
  v26 = swift_allocObject();
  v26[3] = 0xD000000000000018;
  v26[4] = 0x800000023137CCA0;
  v26[2] = v55;
  v27 = sub_231366690();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v27);
  v53 = a9;
  sub_2311CF324(a9, v72);
  v55 = a10;
  v28 = v46;
  sub_2311CF324(a10, v71);
  sub_2311CF324(v73, v70);
  sub_2311E66F0(v28, v69, &qword_27DD43818, &unk_23136E030);
  v54 = a13;
  v29 = v47;
  sub_2311CF324(a13, v68);
  sub_2311E66F0(v29, v67, &qword_27DD44400, &qword_231373A50);
  sub_2311CF324(v57, v66);
  v30 = v48;
  sub_2311CF324(v48, v65);
  v31 = swift_allocObject();
  v64[3] = v25;
  v64[4] = sub_23129707C(&qword_27DD44408, type metadata accessor for DefaultGeneratorProvider, &protocol conformance descriptor for DefaultGeneratorProvider);
  v64[0] = v26;
  v31[2] = v49;
  sub_2311CF324(v64, (v31 + 3));
  v32 = MEMORY[0x277D84F90];
  v31[8] = MEMORY[0x277D84F90];
  v31[9] = v32;
  v33 = v51;
  v31[10] = v50;
  v31[11] = v33;
  v31[12] = v52;
  sub_2311E66F0(v23, v31 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_overrideCatTemplateDirectory, &qword_27DD44108, &unk_231373A40);
  sub_2311CF324(v72, v31 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureEnabledProvider);
  sub_2311CF324(v71, v31 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_clock);
  sub_2311CF324(v70, v31 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_dataServiceFactory);
  sub_2311E66F0(v69, &v59, &qword_27DD43818, &unk_23136E030);
  if (v60)
  {
    sub_2311D38A8(&v59, &v61);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44430, &qword_231373A58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44438, &qword_231373A60);
    sub_231369EC0();
    v34 = sub_231368F10();
    v35 = v43;
    sub_231368DA0();
    v36 = type metadata accessor for AppUtilsService(0);
    v37 = v29;
    v38 = swift_allocObject();
    *(v38 + 16) = v34;
    (*(v44 + 32))(v38 + OBJC_IVAR____TtC15SiriSuggestions15AppUtilsService_homescreenAppPicker, v35, v45);
    *(&v62 + 1) = v36;
    v63 = sub_23129707C(&qword_27DD44440, type metadata accessor for AppUtilsService, &protocol conformance descriptor for AppUtilsService);
    *&v61 = v38;
    v29 = v37;
    if (v60)
    {
      sub_2311D1F18(&v59, &qword_27DD43818, &unk_23136E030);
    }
  }

  sub_2311D38A8(&v61, v31 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_appUtils);
  sub_2311CF324(v68, v31 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_selfLogger);
  sub_2311E66F0(v67, &v59, &qword_27DD44400, &qword_231373A50);
  if (v60)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    sub_2311D1F18(v29, &qword_27DD44400, &qword_231373A50);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    sub_2311D1F18(v28, &qword_27DD43818, &unk_23136E030);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    sub_2311D1F18(v56, &qword_27DD44108, &unk_231373A40);
    sub_2311D1F18(v67, &qword_27DD44400, &qword_231373A50);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    sub_2311D1F18(v69, &qword_27DD43818, &unk_23136E030);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    sub_2311D1F18(v23, &qword_27DD44108, &unk_231373A40);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    sub_2311D38A8(&v59, &v61);
  }

  else
  {
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    sub_2311CF324(v71, &v58);
    v39 = sub_231366DE0();
    swift_allocObject();
    v40 = sub_231366DD0();
    *(&v62 + 1) = v39;
    v63 = &protocol witness table for SiriRemembersLogger;
    *&v61 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    sub_2311D1F18(v29, &qword_27DD44400, &qword_231373A50);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    sub_2311D1F18(v28, &qword_27DD43818, &unk_23136E030);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    sub_2311D1F18(v56, &qword_27DD44108, &unk_231373A40);
    sub_2311D1F18(v67, &qword_27DD44400, &qword_231373A50);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    sub_2311D1F18(v69, &qword_27DD43818, &unk_23136E030);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    sub_2311D1F18(v23, &qword_27DD44108, &unk_231373A40);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    if (v60)
    {
      sub_2311D1F18(&v59, &qword_27DD44400, &qword_231373A50);
    }
  }

  sub_2311D38A8(&v61, v31 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_suggestionsLoggerFactory);
  sub_2311D38A8(v66, v31 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureServiceFactory);
  sub_2311D38A8(v65, v31 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_bookkeepingXPCClient);
  return v31;
}

uint64_t sub_23129707C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2312970C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SpecificDefinitionSuggestionServiceFactory(uint64_t a1)
{
  result = qword_27DD44470;
  if (!qword_27DD44470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_231297188(uint64_t a1)
{
  sub_2312972B0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2312972B0(uint64_t a1)
{
  if (!qword_280F85960)
  {
    sub_231366690();
    v1 = sub_23136A4D0();
    if (!v2)
    {
      atomic_store(v1, &qword_280F85960);
    }
  }
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 440, 7);
}

uint64_t sub_231297378(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2312973B8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_7_14(uint64_t a1)
{

  return sub_2311D1F18(a1, v1, v2);
}

uint64_t sub_231297444(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3(a2);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_231297550;

  return v8(a1, a2);
}

uint64_t sub_231297550(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5(a1);
}

uint64_t sub_231297640(__int128 *a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 1;
  *(v1 + 120) = MEMORY[0x277D84F90];
  sub_2311D38A8(a1, v1 + 128);
  return v1;
}

uint64_t sub_2312976AC()
{
  v1 = *(v0 + 16);
  if (*(v1 + 112) == 1)
  {
    v2 = *(v1 + 152);
    v3 = *(v1 + 160);
    __swift_project_boxed_opaque_existential_1((v1 + 128), v2);
    OUTLINED_FUNCTION_3(v3);
    v9 = (v4 + *v4);
    v5 = swift_task_alloc();
    *(v0 + 24) = v5;
    *v5 = v0;
    v5[1] = sub_231297814;

    return v9(v2, v3);
  }

  else
  {
    OUTLINED_FUNCTION_14();
    v10 = v7;
    v8 = sub_231369EE0();

    return v10(v8);
  }
}

uint64_t sub_231297814()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *(v5 + 32) = v4;

  return MEMORY[0x2822009F8](sub_231297924, v1, 0);
}

uint64_t sub_231297924()
{
  v1 = *(v0 + 16);
  *(v1 + 120) = *(v0 + 32);

  *(v1 + 112) = 0;
  OUTLINED_FUNCTION_14();
  v5 = v2;
  v3 = sub_231369EE0();

  return v5(v3);
}

uint64_t sub_2312979C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231297550;

  return sub_23129768C();
}

void *BundleOwnerDefinitionProvider.__allocating_init(directoryURLs:refreshableService:globalLifecycleContainer:featureFlagProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_16();
  ObjectType = swift_getObjectType();

  return sub_23129A5B0(v11, v10, v9, v8, a6, v6, ObjectType, v7);
}

uint64_t sub_231297AEC()
{
  v1 = v0[7];
  v0[8] = sub_23129826C(&qword_27DD43BC8, &unk_23136F8B8, sub_231298C08);
  v0[9] = *(v1 + 32);
  v2 = *(v1 + 40);
  v0[10] = v2;
  ObjectType = swift_getObjectType();
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = *(v2 + 8);
  *v4 = v0;
  v4[1] = sub_231297BDC;

  return MEMORY[0x2821C72C8](ObjectType, v5);
}

uint64_t sub_231297BDC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_231297CD0, 0, 0);
}

uint64_t sub_231297CD0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  sub_2311CF324(v3 + 64, v0 + 16);
  type metadata accessor for DefaultOwnerDefinitionProvider();
  v7 = swift_allocObject();
  ObjectType = swift_getObjectType();
  *(v0 + 96) = sub_23123B1CC(v4, v1, v2, v5, (v0 + 16), 1, v7, ObjectType, v6);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_231297DF0;

  return sub_2312390B8();
}

uint64_t sub_231297DF0(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

void *BundleOwnerDefinitionProvider.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  return v0;
}

uint64_t BundleOwnerDefinitionProvider.__deallocating_deinit()
{
  BundleOwnerDefinitionProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_231297F74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231298004;

  return BundleOwnerDefinitionProvider.ownerDefinitionsAvailable()();
}

uint64_t sub_231298004(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_2312980F8()
{

  return sub_23129826C(&qword_27DD43770, &unk_231373CE0, sub_231299260);
}

uint64_t sub_231298174()
{

  return sub_23129826C(&qword_27DD44488, &qword_231373CF8, sub_2312998B8);
}

uint64_t sub_2312981F0()
{

  return sub_23129826C(&qword_27DD44498, &qword_231373D08, sub_231299F10);
}

uint64_t sub_23129826C(uint64_t *a1, uint64_t *a2, void (*a3)(char *, uint64_t *, char *))
{
  v105 = a3;
  v85 = a2;
  v84 = a1;
  v111[3] = *MEMORY[0x277D85DE8];
  v4 = sub_231366690();
  OUTLINED_FUNCTION_0_0();
  v100 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v84 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v84 - v13;
  v102 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v87 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v94 = &v84 - v20;
  MEMORY[0x28223BE20](v21);
  v86 = &v84 - v22;
  v110[0] = MEMORY[0x277D84F90];
  v101 = *(v3 + 16);
  v99 = *(v101 + 16);
  if (v99)
  {
    v98 = objc_opt_self();
    v23 = 0;
    v90 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v97 = v101 + v90;
    v96 = v87 + 8;
    v108 = (v100 + 8);
    *&v24 = 136315394;
    v88 = v24;
    *&v24 = 136315138;
    v89 = v24;
    v106 = v4;
    v92 = v11;
    v107 = v100 + 16;
    v103 = v14;
    v91 = v18;
    do
    {
      if (v23 >= *(v101 + 16))
      {
        goto LABEL_30;
      }

      v25 = *(v100 + 72);
      v104 = v23;
      v26 = *(v100 + 16);
      v26(v14, v97 + v25 * v23, v4);
      v27 = [v98 defaultManager];
      v28 = sub_2313665F0();
      v111[0] = 0;
      v29 = [v27 contentsOfDirectoryAtURL:v28 includingPropertiesForKeys:0 options:1 error:v111];

      v30 = v111[0];
      if (v29)
      {
        v31 = sub_23136A1A0();
        v32 = v30;

        v33 = v94;
        sub_2313690F0();
        sub_231369EE0();
        v34 = sub_2313698A0();
        v35 = sub_23136A390();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v93 = v35;
          v37 = v36;
          v95 = swift_slowAlloc();
          v111[0] = v95;
          *v37 = v89;
          v38 = sub_231367BB0();
          v40 = sub_2311CFD58(v38, v39, v111);

          *(v37 + 4) = v40;
          v4 = v106;
          _os_log_impl(&dword_2311CB000, v34, v93, "reading candidateBundleURLs:\n%s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v95);
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_29();
        }

        OUTLINED_FUNCTION_1_26();
        v41(v33, v102);
        v14 = v103;
        v42 = *(v31 + 16);
        if (v42)
        {
          v43 = v26;
          v95 = (v108 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v44 = 0;
          v45 = v31 + v90;
          while (1)
          {
            if (v44 >= *(v31 + 16))
            {
              __break(1u);
LABEL_30:
              __break(1u);
            }

            v43(v8, v45, v4);
            if (sub_231366590() == 0x656C646E7562 && v46 == 0xE600000000000000)
            {
            }

            else
            {
              v48 = sub_23136A900();

              if ((v48 & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            v50 = MEMORY[0x23192B1C0](v49);
            v105(v8, v110, v109);
            objc_autoreleasePoolPop(v50);
LABEL_18:
            ++v44;
            v51 = *v108;
            v4 = v106;
            (*v108)(v8, v106);
            v45 += v25;
            v43 = v26;
            if (v42 == v44)
            {
              v14 = v103;
              goto LABEL_23;
            }
          }
        }

        v51 = *v108;
LABEL_23:
        v51(v14, v4);
      }

      else
      {
        v52 = v111[0];
        v53 = v14;
        v54 = sub_231366570();

        swift_willThrow();
        v55 = v91;
        sub_2313690F0();
        v56 = v92;
        v26(v92, v53, v4);
        v57 = v54;
        v58 = sub_2313698A0();
        v59 = sub_23136A3B0();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v111[0] = swift_slowAlloc();
          *v60 = v88;
          sub_23129A68C();
          LODWORD(v95) = v59;
          v61 = sub_23136A8B0();
          v63 = v62;
          v64 = *v108;
          (*v108)(v92, v106);
          v65 = sub_2311CFD58(v61, v63, v111);

          *(v60 + 4) = v65;
          *(v60 + 12) = 2080;
          v110[1] = v54;
          v66 = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
          v67 = sub_23136A010();
          v69 = sub_2311CFD58(v67, v68, v111);

          *(v60 + 14) = v69;
          v4 = v106;
          _os_log_impl(&dword_2311CB000, v58, v95, "Unable to load bundle at: %s. %s", v60, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_29();
          v70 = v91;
          OUTLINED_FUNCTION_29();

          OUTLINED_FUNCTION_1_26();
          v71(v70, v102);
          v14 = v103;
          v64(v103, v4);
        }

        else
        {

          v72 = *v108;
          (*v108)(v56, v4);
          OUTLINED_FUNCTION_1_26();
          v73(v55, v102);
          v14 = v103;
          v72(v103, v4);
        }
      }

      v23 = v104 + 1;
    }

    while (v104 + 1 != v99);
  }

  v74 = v86;
  sub_2313690F0();
  v75 = sub_2313698A0();
  v76 = sub_23136A390();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v111[0] = v78;
    *v77 = 136315138;
    swift_beginAccess();
    sub_231369EE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v84, v85);
    v79 = sub_231367BB0();
    v81 = v80;

    v82 = sub_2311CFD58(v79, v81, v111);

    *(v77 + 4) = v82;
    _os_log_impl(&dword_2311CB000, v75, v76, "Loaded classes from bundles:\n%s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  (*(v87 + 8))(v74, v102);
  swift_beginAccess();
  return v110[0];
}

void sub_231298C08(void (*a1)(char *, uint64_t), uint64_t *a2)
{
  v3 = v2;
  v71 = a2;
  v5 = sub_231366690();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2313698C0();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x28223BE20](v9);
  v70 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v68 - v15;
  sub_2313690F0();
  v17 = *(v6 + 16);
  v74 = a1;
  v17(v8, a1, v5);
  v18 = sub_2313698A0();
  v19 = sub_23136A390();
  v20 = os_log_type_enabled(v18, v19);
  v72 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v73 = v2;
    v22 = v21;
    v69 = swift_slowAlloc();
    v78 = v69;
    *v22 = 136315138;
    sub_23129A68C();
    v23 = sub_23136A8B0();
    v25 = v24;
    (*(v6 + 8))(v8, v5);
    v26 = sub_2311CFD58(v23, v25, &v78);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_2311CB000, v18, v19, "checking candidateBundleURL: %s", v22, 0xCu);
    v27 = v69;
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x23192B930](v27, -1, -1);
    v28 = v22;
    v3 = v73;
    MEMORY[0x23192B930](v28, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v29 = v76;
  v30 = *(v75 + 8);
  v30(v16, v76);
  v31 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v32 = sub_2313665F0();
  v33 = [v31 initWithURL_];

  if (v33)
  {
    if ([v33 principalClass])
    {
      v73 = v3;
      ObjCClassMetadata = swift_getObjCClassMetadata();
      v35 = v72;
      sub_2313690F0();
      v36 = sub_2313698A0();
      v37 = sub_23136A390();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v74 = v33;
        v39 = v38;
        v40 = swift_slowAlloc();
        v78 = v40;
        *v39 = 136315138;
        v41 = sub_23136AA70();
        v69 = ObjCClassMetadata;
        v43 = sub_2311CFD58(v41, v42, &v78);
        ObjCClassMetadata = v69;

        *(v39 + 4) = v43;
        _os_log_impl(&dword_2311CB000, v36, v37, "checking principal class: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        v44 = v40;
        v29 = v76;
        MEMORY[0x23192B930](v44, -1, -1);
        v45 = v39;
        v33 = v74;
        MEMORY[0x23192B930](v45, -1, -1);
      }

      v30(v35, v29);
      v46 = dynamic_cast_existential_1_conditional(ObjCClassMetadata, ObjCClassMetadata, MEMORY[0x277D61028]);
      if (v46)
      {
        v48 = v46;
        v49 = v47;
        v50 = v71;
        sub_2311E9C04();
        v51 = *(*v50 + 16);
        sub_231259268(v51);

        v52 = *v50;
        *(v52 + 16) = v51 + 1;
        v53 = v52 + 16 * v51;
        *(v53 + 32) = v48;
        *(v53 + 40) = v49;
      }

      else
      {
        v74 = v30;
        v54 = v70;
        sub_2313690F0();
        v55 = sub_2313698A0();
        v56 = sub_23136A3B0();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v78 = v58;
          *v57 = 136315394;
          v59 = sub_23136AA70();
          v61 = v29;
          v62 = sub_2311CFD58(v59, v60, &v78);

          *(v57 + 4) = v62;
          *(v57 + 12) = 2080;
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43BC8, &unk_23136F8B8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444A8, &qword_231373D20);
          v63 = sub_23136A010();
          v65 = sub_2311CFD58(v63, v64, &v78);

          *(v57 + 14) = v65;
          _os_log_impl(&dword_2311CB000, v55, v56, "principal class %s does not conform to %s", v57, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23192B930](v58, -1, -1);
          MEMORY[0x23192B930](v57, -1, -1);

          v66 = v54;
          v67 = v61;
        }

        else
        {

          v66 = v54;
          v67 = v29;
        }

        v74(v66, v67);
      }
    }

    else
    {
    }
  }
}

void sub_231299260(void (*a1)(char *, uint64_t), uint64_t *a2)
{
  v3 = v2;
  v71 = a2;
  v5 = sub_231366690();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2313698C0();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x28223BE20](v9);
  v70 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v68 - v15;
  sub_2313690F0();
  v17 = *(v6 + 16);
  v74 = a1;
  v17(v8, a1, v5);
  v18 = sub_2313698A0();
  v19 = sub_23136A390();
  v20 = os_log_type_enabled(v18, v19);
  v72 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v73 = v2;
    v22 = v21;
    v69 = swift_slowAlloc();
    v78 = v69;
    *v22 = 136315138;
    sub_23129A68C();
    v23 = sub_23136A8B0();
    v25 = v24;
    (*(v6 + 8))(v8, v5);
    v26 = sub_2311CFD58(v23, v25, &v78);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_2311CB000, v18, v19, "checking candidateBundleURL: %s", v22, 0xCu);
    v27 = v69;
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x23192B930](v27, -1, -1);
    v28 = v22;
    v3 = v73;
    MEMORY[0x23192B930](v28, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v29 = v76;
  v30 = *(v75 + 8);
  v30(v16, v76);
  v31 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v32 = sub_2313665F0();
  v33 = [v31 initWithURL_];

  if (v33)
  {
    if ([v33 principalClass])
    {
      v73 = v3;
      ObjCClassMetadata = swift_getObjCClassMetadata();
      v35 = v72;
      sub_2313690F0();
      v36 = sub_2313698A0();
      v37 = sub_23136A390();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v74 = v33;
        v39 = v38;
        v40 = swift_slowAlloc();
        v78 = v40;
        *v39 = 136315138;
        v41 = sub_23136AA70();
        v69 = ObjCClassMetadata;
        v43 = sub_2311CFD58(v41, v42, &v78);
        ObjCClassMetadata = v69;

        *(v39 + 4) = v43;
        _os_log_impl(&dword_2311CB000, v36, v37, "checking principal class: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        v44 = v40;
        v29 = v76;
        MEMORY[0x23192B930](v44, -1, -1);
        v45 = v39;
        v33 = v74;
        MEMORY[0x23192B930](v45, -1, -1);
      }

      v30(v35, v29);
      v46 = dynamic_cast_existential_1_conditional(ObjCClassMetadata, ObjCClassMetadata, MEMORY[0x277D610F0]);
      if (v46)
      {
        v48 = v46;
        v49 = v47;
        v50 = v71;
        sub_2311E9C1C();
        v51 = *(*v50 + 16);
        sub_231259298(v51);

        v52 = *v50;
        *(v52 + 16) = v51 + 1;
        v53 = v52 + 16 * v51;
        *(v53 + 32) = v48;
        *(v53 + 40) = v49;
      }

      else
      {
        v74 = v30;
        v54 = v70;
        sub_2313690F0();
        v55 = sub_2313698A0();
        v56 = sub_23136A3B0();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v78 = v58;
          *v57 = 136315394;
          v59 = sub_23136AA70();
          v61 = v29;
          v62 = sub_2311CFD58(v59, v60, &v78);

          *(v57 + 4) = v62;
          *(v57 + 12) = 2080;
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43770, &unk_231373CE0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44480, &qword_231373CF0);
          v63 = sub_23136A010();
          v65 = sub_2311CFD58(v63, v64, &v78);

          *(v57 + 14) = v65;
          _os_log_impl(&dword_2311CB000, v55, v56, "principal class %s does not conform to %s", v57, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23192B930](v58, -1, -1);
          MEMORY[0x23192B930](v57, -1, -1);

          v66 = v54;
          v67 = v61;
        }

        else
        {

          v66 = v54;
          v67 = v29;
        }

        v74(v66, v67);
      }
    }

    else
    {
    }
  }
}

void sub_2312998B8(void (*a1)(char *, uint64_t), uint64_t *a2)
{
  v3 = v2;
  v71 = a2;
  v5 = sub_231366690();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2313698C0();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x28223BE20](v9);
  v70 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v68 - v15;
  sub_2313690F0();
  v17 = *(v6 + 16);
  v74 = a1;
  v17(v8, a1, v5);
  v18 = sub_2313698A0();
  v19 = sub_23136A390();
  v20 = os_log_type_enabled(v18, v19);
  v72 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v73 = v2;
    v22 = v21;
    v69 = swift_slowAlloc();
    v78 = v69;
    *v22 = 136315138;
    sub_23129A68C();
    v23 = sub_23136A8B0();
    v25 = v24;
    (*(v6 + 8))(v8, v5);
    v26 = sub_2311CFD58(v23, v25, &v78);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_2311CB000, v18, v19, "checking candidateBundleURL: %s", v22, 0xCu);
    v27 = v69;
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x23192B930](v27, -1, -1);
    v28 = v22;
    v3 = v73;
    MEMORY[0x23192B930](v28, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v29 = v76;
  v30 = *(v75 + 8);
  v30(v16, v76);
  v31 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v32 = sub_2313665F0();
  v33 = [v31 initWithURL_];

  if (v33)
  {
    if ([v33 principalClass])
    {
      v73 = v3;
      ObjCClassMetadata = swift_getObjCClassMetadata();
      v35 = v72;
      sub_2313690F0();
      v36 = sub_2313698A0();
      v37 = sub_23136A390();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v74 = v33;
        v39 = v38;
        v40 = swift_slowAlloc();
        v78 = v40;
        *v39 = 136315138;
        v41 = sub_23136AA70();
        v69 = ObjCClassMetadata;
        v43 = sub_2311CFD58(v41, v42, &v78);
        ObjCClassMetadata = v69;

        *(v39 + 4) = v43;
        _os_log_impl(&dword_2311CB000, v36, v37, "checking principal class: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        v44 = v40;
        v29 = v76;
        MEMORY[0x23192B930](v44, -1, -1);
        v45 = v39;
        v33 = v74;
        MEMORY[0x23192B930](v45, -1, -1);
      }

      v30(v35, v29);
      v46 = dynamic_cast_existential_1_conditional(ObjCClassMetadata, ObjCClassMetadata, MEMORY[0x277D61048]);
      if (v46)
      {
        v48 = v46;
        v49 = v47;
        v50 = v71;
        sub_2311E9C34();
        v51 = *(*v50 + 16);
        sub_2312592B0(v51);

        v52 = *v50;
        *(v52 + 16) = v51 + 1;
        v53 = v52 + 16 * v51;
        *(v53 + 32) = v48;
        *(v53 + 40) = v49;
      }

      else
      {
        v74 = v30;
        v54 = v70;
        sub_2313690F0();
        v55 = sub_2313698A0();
        v56 = sub_23136A3B0();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v78 = v58;
          *v57 = 136315394;
          v59 = sub_23136AA70();
          v61 = v29;
          v62 = sub_2311CFD58(v59, v60, &v78);

          *(v57 + 4) = v62;
          *(v57 + 12) = 2080;
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44488, &qword_231373CF8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44490, &qword_231373D00);
          v63 = sub_23136A010();
          v65 = sub_2311CFD58(v63, v64, &v78);

          *(v57 + 14) = v65;
          _os_log_impl(&dword_2311CB000, v55, v56, "principal class %s does not conform to %s", v57, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23192B930](v58, -1, -1);
          MEMORY[0x23192B930](v57, -1, -1);

          v66 = v54;
          v67 = v61;
        }

        else
        {

          v66 = v54;
          v67 = v29;
        }

        v74(v66, v67);
      }
    }

    else
    {
    }
  }
}

void sub_231299F10(void *a1, uint64_t *a2)
{
  v69 = a2;
  v4 = sub_231366690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v74 = &v64[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v64[-v8];
  v10 = sub_2313698C0();
  v73 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v68 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v70 = &v64[-v13];
  MEMORY[0x28223BE20](v14);
  v16 = &v64[-v15];
  sub_2313690F0();
  v17 = *(v5 + 16);
  v75 = a1;
  v76 = v4;
  v72 = v17;
  v17(v9, a1, v4);
  v18 = sub_2313698A0();
  v19 = sub_23136A390();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v67 = v2;
    v21 = v20;
    v66 = swift_slowAlloc();
    v78 = v66;
    *v21 = 136315138;
    sub_23129A68C();
    v65 = v19;
    v22 = v76;
    v23 = sub_23136A8B0();
    v71 = v10;
    v25 = v24;
    (*(v5 + 8))(v9, v22);
    v26 = sub_2311CFD58(v23, v25, &v78);
    v10 = v71;

    *(v21 + 4) = v26;
    _os_log_impl(&dword_2311CB000, v18, v65, "checking candidateBundleURL: %s", v21, 0xCu);
    v27 = v66;
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x23192B930](v27, -1, -1);
    MEMORY[0x23192B930](v21, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v9, v76);
  }

  v28 = *(v73 + 8);
  v28(v16, v10);
  sub_23127D34C();
  v29 = v74;
  v72(v74, v75, v76);
  v30 = sub_231278AC0(v29);
  if (v30)
  {
    v31 = v30;
    if ([v30 principalClass])
    {
      v71 = v10;
      ObjCClassMetadata = swift_getObjCClassMetadata();
      v33 = v70;
      sub_2313690F0();
      v34 = sub_2313698A0();
      v35 = sub_23136A390();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v76 = v28;
        v38 = v37;
        v78 = v37;
        *v36 = 136315138;
        v39 = sub_23136AA70();
        v75 = v31;
        v41 = sub_2311CFD58(v39, v40, &v78);
        v31 = v75;

        *(v36 + 4) = v41;
        _os_log_impl(&dword_2311CB000, v34, v35, "checking principal class: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        v42 = v38;
        v28 = v76;
        MEMORY[0x23192B930](v42, -1, -1);
        MEMORY[0x23192B930](v36, -1, -1);

        v43 = v70;
      }

      else
      {

        v43 = v33;
      }

      v28(v43, v71);
      v44 = dynamic_cast_existential_1_conditional(ObjCClassMetadata, ObjCClassMetadata, MEMORY[0x277D610E8]);
      if (v44)
      {
        v46 = v44;
        v47 = v45;
        v48 = v69;
        sub_2311E9C4C();
        v49 = *(*v48 + 16);
        sub_2312592F4(v49);

        v50 = *v48;
        *(v50 + 16) = v49 + 1;
        v51 = v50 + 16 * v49;
        *(v51 + 32) = v46;
        *(v51 + 40) = v47;
      }

      else
      {
        v52 = v68;
        sub_2313690F0();
        v53 = sub_2313698A0();
        v54 = sub_23136A3B0();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v76 = v28;
          v56 = v55;
          v57 = swift_slowAlloc();
          v78 = v57;
          *v56 = 136315394;
          v58 = sub_23136AA70();
          v60 = sub_2311CFD58(v58, v59, &v78);

          *(v56 + 4) = v60;
          *(v56 + 12) = 2080;
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44498, &qword_231373D08);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444A0, &unk_231373D10);
          v61 = sub_23136A010();
          v63 = sub_2311CFD58(v61, v62, &v78);

          *(v56 + 14) = v63;
          _os_log_impl(&dword_2311CB000, v53, v54, "principal class %s does not conform to %s", v56, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23192B930](v57, -1, -1);
          MEMORY[0x23192B930](v56, -1, -1);

          v76(v68, v71);
        }

        else
        {

          v28(v52, v71);
        }
      }
    }

    else
    {
    }
  }
}

void *sub_23129A5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444B0, &qword_231373D28);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[6] = v9;
  v15[7] = a8;
  sub_2311D38A8(v8, (v15 + 8));
  sub_231369EE0();
  return v15;
}

unint64_t sub_23129A68C()
{
  result = qword_280F85968[0];
  if (!qword_280F85968[0])
  {
    sub_231366690();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F85968);
  }

  return result;
}

uint64_t sub_23129A6E4(uint64_t a1)
{
  v2 = sub_2313698C0();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = &v40[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_231367D20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444C8, &unk_2313744B0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v40[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444D0, &unk_231373E70);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v40[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v40[-v19];
  v46 = a1;
  sub_231369240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F70, &qword_2313744C0);
  v21 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v20, v21 ^ 1u, 1, v4);
  (*(v5 + 104))(v17, *MEMORY[0x277D60B50], v4);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v4);
  v22 = *(v9 + 56);
  sub_23129C608(v20, v11);
  sub_23129C608(v17, &v11[v22]);
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) != 1)
  {
    sub_23129C608(v11, v14);
    if (__swift_getEnumTagSinglePayload(&v11[v22], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v11[v22], v4);
      sub_23129C678(&qword_27DD444D8, 255, MEMORY[0x277D60B68], MEMORY[0x277D60B70]);
      v41 = sub_231369F60();
      v24 = *(v5 + 8);
      v24(v7, v4);
      sub_231228E9C(v17, &qword_27DD444D0, &unk_231373E70);
      v24(v14, v4);
      sub_231228E9C(v11, &qword_27DD444D0, &unk_231373E70);
      sub_231228E9C(v20, &qword_27DD444D0, &unk_231373E70);
      if (v41)
      {
        goto LABEL_9;
      }

      return 0;
    }

    sub_231228E9C(v17, &qword_27DD444D0, &unk_231373E70);
    (*(v5 + 8))(v14, v4);
LABEL_6:
    sub_231228E9C(v11, &qword_27DD444C8, &unk_2313744B0);
    sub_231228E9C(v20, &qword_27DD444D0, &unk_231373E70);
    return 0;
  }

  sub_231228E9C(v17, &qword_27DD444D0, &unk_231373E70);
  if (__swift_getEnumTagSinglePayload(&v11[v22], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_231228E9C(v11, &qword_27DD444D0, &unk_231373E70);
  sub_231228E9C(v20, &qword_27DD444D0, &unk_231373E70);
LABEL_9:
  v23 = v46;
  v25 = sub_231369250();
  v27 = v26;
  v28 = v42;
  sub_231369130();
  sub_231369EE0();
  v29 = sub_2313698A0();
  v30 = sub_23136A390();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v47[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_2311CFD58(v25, v27, v47);
    _os_log_impl(&dword_2311CB000, v29, v30, "Getting app specific AppIntent suggestions for %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x23192B930](v32, -1, -1);
    MEMORY[0x23192B930](v31, -1, -1);
  }

  (*(v43 + 8))(v28, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433F8, &qword_231373E80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_23136B670;
  v34 = *(v45 + 16);
  v35 = *(v45 + 24);
  v36 = type metadata accessor for AppIntentCandidateSuggestionConfigurator();
  v37 = swift_allocObject();
  v37[2] = v25;
  v37[3] = v27;
  v37[4] = v34;
  v37[5] = v35;
  *(v33 + 56) = v36;
  *(v33 + 64) = sub_23129C678(&qword_27DD444E0, v38, type metadata accessor for AppIntentCandidateSuggestionConfigurator, &unk_231373DF0);
  *(v33 + 32) = v37;

  sub_231369EE0();
  return v23;
}

uint64_t sub_23129AD50(uint64_t a1)
{
  v2 = sub_231367D20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444C8, &unk_2313744B0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v23[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444D0, &unk_231373E70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v23[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v23[-v17];
  v25 = a1;
  sub_231369240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F70, &qword_2313744C0);
  v19 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v18, v19 ^ 1u, 1, v2);
  (*(v3 + 104))(v15, *MEMORY[0x277D60B50], v2);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v2);
  v20 = *(v7 + 56);
  sub_23129C608(v18, v9);
  sub_23129C608(v15, &v9[v20]);
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) != 1)
  {
    sub_23129C608(v9, v12);
    if (__swift_getEnumTagSinglePayload(&v9[v20], 1, v2) != 1)
    {
      (*(v3 + 32))(v5, &v9[v20], v2);
      sub_23129C678(&qword_27DD444D8, 255, MEMORY[0x277D60B68], MEMORY[0x277D60B70]);
      v24 = sub_231369F60();
      v22 = *(v3 + 8);
      v22(v5, v2);
      sub_231228E9C(v15, &qword_27DD444D0, &unk_231373E70);
      v22(v12, v2);
      sub_231228E9C(v9, &qword_27DD444D0, &unk_231373E70);
      sub_231228E9C(v18, &qword_27DD444D0, &unk_231373E70);
      if (v24)
      {
        return sub_23129A6E4(v25);
      }

      return 0;
    }

    sub_231228E9C(v15, &qword_27DD444D0, &unk_231373E70);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_231228E9C(v9, &qword_27DD444C8, &unk_2313744B0);
    sub_231228E9C(v18, &qword_27DD444D0, &unk_231373E70);
    return 0;
  }

  sub_231228E9C(v15, &qword_27DD444D0, &unk_231373E70);
  if (__swift_getEnumTagSinglePayload(&v9[v20], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_231228E9C(v9, &qword_27DD444D0, &unk_231373E70);
  sub_231228E9C(v18, &qword_27DD444D0, &unk_231373E70);
  return sub_23129A6E4(v25);
}

void sub_23129B1A4(uint64_t a1)
{
  v2 = sub_2313698C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v42 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41[1] = v41 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = v41 - v8;
  sub_231369130();
  sub_231369EE0();
  v10 = sub_2313698A0();
  v11 = sub_23136A3A0();

  v12 = os_log_type_enabled(v10, v11);
  v45 = v2;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v47[0] = v14;
    *v13 = 136315138;
    v15 = sub_2313692F0();
    v16 = MEMORY[0x23192A860](a1, v15);
    v18 = sub_2311CFD58(v16, v17, v47);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2311CB000, v10, v11, "Determining valid app intents for signals: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  v43 = *(v3 + 8);
  v43(v9, v2);
  v19 = sub_23125D7A0();
  v20 = 0;
  v46 = MEMORY[0x277D84F90];
  v44 = v3;
  while (v19 != v20)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x23192AD10](v20, a1);
    }

    else
    {
      if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v21 = *(a1 + 8 * v20 + 32);
    }

    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v23 = sub_23129AD50(v21);
    v25 = v24;

    ++v20;
    if (v23)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23126DE48();
        v46 = v29;
      }

      v26 = *(v46 + 16);
      if (v26 >= *(v46 + 24) >> 1)
      {
        sub_23126DE48();
        v46 = v30;
      }

      v27 = v46;
      *(v46 + 16) = v26 + 1;
      v28 = v27 + 16 * v26;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v20 = v22;
    }
  }

  sub_23127DEFC(v46);
  v31 = v42;
  sub_231369130();
  sub_231369EE0();
  v32 = sub_2313698A0();
  v33 = sub_23136A3A0();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v47[0] = v35;
    *v34 = 136315138;
    sub_2313692F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444C0, &qword_231373E68);
    OUTLINED_FUNCTION_0_25();
    sub_23129C678(v36, 255, v37, MEMORY[0x277D612D8]);
    v38 = sub_231369E90();
    v40 = sub_2311CFD58(v38, v39, v47);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_2311CB000, v32, v33, "Found app intent suggestions for signals: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  v43(v31, v45);
}

uint64_t sub_23129B7D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2313667A0();
  OUTLINED_FUNCTION_40_0(v3);
  v2[4] = OUTLINED_FUNCTION_43();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  OUTLINED_FUNCTION_40_0(v4);
  v2[5] = OUTLINED_FUNCTION_43();
  v5 = sub_231368FB0();
  v2[6] = v5;
  OUTLINED_FUNCTION_0(v5);
  v2[7] = v6;
  v2[8] = OUTLINED_FUNCTION_43();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  OUTLINED_FUNCTION_40_0(v7);
  v2[9] = OUTLINED_FUNCTION_43();
  v8 = sub_2313673A0();
  OUTLINED_FUNCTION_40_0(v8);
  v2[10] = OUTLINED_FUNCTION_43();
  v9 = sub_231367490();
  v2[11] = v9;
  OUTLINED_FUNCTION_0(v9);
  v2[12] = v10;
  v2[13] = OUTLINED_FUNCTION_43();
  v11 = sub_2313698C0();
  v2[14] = v11;
  OUTLINED_FUNCTION_0(v11);
  v2[15] = v12;
  v2[16] = OUTLINED_FUNCTION_43();

  return MEMORY[0x2822009F8](sub_23129B9B8, 0, 0);
}

uint64_t sub_23129B9B8(uint64_t a1)
{
  sub_231369130();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2311CB000, v2, v3, "Updating app intent context", v4, 2u);
    OUTLINED_FUNCTION_29();
  }

  v6 = v1[15];
  v5 = v1[16];
  v7 = v1[14];
  v20 = v1[9];
  v8 = v1[7];
  v9 = v1[8];
  v19 = v1[6];
  v21 = v1[5];
  v10 = v1[3];
  v11 = v1[2];

  (*(v6 + 8))(v5, v7);
  v1[17] = *v11;
  v12 = v11[1];
  v1[18] = v12;
  ObjectType = swift_getObjectType();
  v1[19] = ObjectType;
  sub_231367360();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444E8, qword_231373EA0);
  sub_231369EC0();
  v1[20] = *(v10 + 16);
  v1[21] = *(v10 + 24);
  (*(v8 + 104))(v9, *MEMORY[0x277D61260], v19);
  sub_231367950();
  v13 = *(v8 + 8);
  v1[22] = v13;
  v1[23] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v9, v19);
  v14 = sub_231367960();
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v14);
  v15 = sub_231367550();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v15);
  sub_231366790();
  sub_231367420();
  v16 = swift_task_alloc();
  v1[24] = v16;
  *v16 = v1;
  v16[1] = sub_23129BC68;
  v17 = v1[13];

  return MEMORY[0x2821C7788](v17, ObjectType, v12);
}

uint64_t sub_23129BC68()
{
  OUTLINED_FUNCTION_12();
  v2 = v1[13];
  v3 = v1[12];
  v4 = v1[11];
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_23129BDB4, 0, 0);
}

uint64_t sub_23129BDB4()
{
  sub_23129BF38(*(v0 + 64));
  v2 = sub_23136A260();

  return MEMORY[0x2822009F8](sub_23129BE4C, v2, v1);
}

uint64_t sub_23129BE4C()
{
  v1 = v0[22];
  v2 = v0[8];
  v3 = v0[6];
  sub_231369440();
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23129BF38@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D61260];
  v3 = sub_231368FB0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_23129BFAC()
{

  return v0;
}

uint64_t sub_23129BFD4()
{
  sub_23129BFAC();

  return swift_deallocClassInstance();
}

uint64_t sub_23129C02C()
{
  v1 = *(*v0 + 32);
  sub_231369EE0();
  return v1;
}

uint64_t sub_23129C064(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23129C0FC;

  return sub_23129B7D8(a1);
}

uint64_t sub_23129C0FC()
{
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_23129C1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23129C294;

  return MEMORY[0x2821C74C8](a1, a2, a3);
}

uint64_t sub_23129C294(uint64_t a1)
{
  OUTLINED_FUNCTION_12();
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_23129C384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23129C434;

  return MEMORY[0x2821C74B8](a1, a2, a3);
}

uint64_t sub_23129C434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12();
  v7 = *v3;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(a1, a2, a3);
}

uint64_t sub_23129C53C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23129C678(&qword_27DD444E0, a2, type metadata accessor for AppIntentCandidateSuggestionConfigurator, &unk_231373DF0);

  return MEMORY[0x2821C74C0](a1, a2, v4);
}

uint64_t sub_23129C608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444D0, &unk_231373E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23129C678(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_23129C6C0()
{
  v0 = sub_2313698C0();
  __swift_allocate_value_buffer(v0, qword_280F8E510);
  __swift_project_value_buffer(v0, qword_280F8E510);
  sub_2313691B0();
  return sub_2313698B0();
}

uint64_t sub_23129C724()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_231366750();
  v1[4] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23129C7C8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_28();
  sub_23129C844();
  v0 = OUTLINED_FUNCTION_5_16();
  v1(v0);

  v2 = OUTLINED_FUNCTION_13_15();

  return v3(v2);
}

void sub_23129C844()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v42 = sub_231369D00();
  OUTLINED_FUNCTION_0_0();
  v39 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  v36 = v5;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_0();
  v38 = v7;
  OUTLINED_FUNCTION_18();
  v8 = sub_231366880();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v14 = v13 - v12;
  v41 = sub_2313668A0();
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_4();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v22 = OUTLINED_FUNCTION_40_0(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_1();
  v40 = v23;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_23_11();
  sub_23129CC40(v2, v0);
  sub_231366870();
  v25 = *(v10 + 104);
  v25(v14, *MEMORY[0x277CC9980], v8);
  v37 = sub_231366890();
  v26 = *(v10 + 8);
  v27 = OUTLINED_FUNCTION_80();
  v26(v27);
  v28 = *(v16 + 8);
  v28(v20, v41);
  sub_231366870();
  v25(v14, *MEMORY[0x277CC99B8], v8);
  v29 = sub_231366890();
  v30 = OUTLINED_FUNCTION_80();
  v26(v30);
  v31 = v40;
  v28(v20, v41);
  sub_2311E66F0(v0, v40, &qword_27DD43358, &qword_23136FA90);
  v32 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_19_13(v32, v33, v42);
  if (v34)
  {
    sub_2311D1F18(v0, &qword_27DD43358, &qword_23136FA90);
  }

  else
  {
    (*(v39 + 32))(v38, v40, v42);
    if ((v37 - 5) <= 4 && (v29 - 7) >= 0xFFFFFFFFFFFFFFFBLL)
    {
      sub_231369CB0();
      sub_231369CF0();
      v35 = *(v39 + 8);
      v35(v36, v42);
      v35(v38, v42);
      sub_2311D1F18(v0, &qword_27DD43358, &qword_23136FA90);
      goto LABEL_8;
    }

    (*(v39 + 8))(v38, v42);
    v31 = v0;
  }

  sub_2311D1F18(v31, &qword_27DD43358, &qword_23136FA90);
LABEL_8:
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_23129CC40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_231369630();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  MEMORY[0x28223BE20](v10 - 8);
  v43 = &v42 - v11;
  v12 = sub_2313696B0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v18 = a1[3];
  v19 = a1;
  v20 = v9;
  __swift_project_boxed_opaque_existential_1(v19, v18);
  sub_2313683A0();
  v21 = sub_23136A200();

  v23 = 0;
  v58 = *(v21 + 16);
  v53 = v13 + 16;
  v52 = *MEMORY[0x277D1EAB0];
  v50 = (v4 + 8);
  v51 = (v4 + 104);
  v49 = (v13 + 8);
  v55 = v13;
  v46 = (v13 + 32);
  v48 = MEMORY[0x277D84F90];
  v54 = v21;
  while (v58 != v23)
  {
    if (v23 >= *(v21 + 16))
    {
      __break(1u);
      return result;
    }

    v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v24 = *(v55 + 72);
    v59 = v23;
    v56 = v24;
    (*(v55 + 16))(v17, v21 + v57 + v24 * v23, v12);
    sub_231369680();
    (*v51)(v6, v52, v3);
    sub_2312A0900(&qword_27DD43C18, MEMORY[0x277D1EB58], MEMORY[0x277D1EB78]);
    sub_23136A140();
    sub_23136A140();
    if (v62 == v60 && v63 == v61)
    {
      v30 = *v50;
      (*v50)(v6, v3);
      v30(v20, v3);

LABEL_11:
      v31 = *v46;
      (*v46)(v47, v17, v12);
      v32 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v32;
      v64 = v32;
      v45 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F5958(0, *(v32 + 16) + 1, 1);
        v34 = v64;
      }

      v35 = v59;
      v37 = v56;
      v36 = v57;
      v39 = *(v34 + 16);
      v38 = *(v34 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_2311F5958(v38 > 1, v39 + 1, 1);
        v35 = v59;
        v34 = v64;
      }

      v23 = v35 + 1;
      *(v34 + 16) = v39 + 1;
      v48 = v34;
      result = (v45)(v34 + v36 + v39 * v37, v47, v12);
      v21 = v54;
    }

    else
    {
      v26 = sub_23136A900();
      v27 = v12;
      v28 = v6;
      v29 = *v50;
      (*v50)(v28, v3);
      v29(v20, v3);
      v6 = v28;
      v12 = v27;

      if (v26)
      {
        goto LABEL_11;
      }

      result = (*v49)(v17, v27);
      v23 = v59 + 1;
      v21 = v54;
    }
  }

  v40 = v43;
  sub_231217DAC(v48, v43);

  if (__swift_getEnumTagSinglePayload(v40, 1, v12) == 1)
  {
    sub_2311D1F18(v40, &qword_27DD43C68, &qword_231378D20);
    v41 = sub_231369D00();
    return __swift_storeEnumTagSinglePayload(v44, 1, 1, v41);
  }

  else
  {
    sub_231369670();
    return (*v49)(v40, v12);
  }
}

uint64_t sub_23129D1F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311F93E8;

  return sub_23129C724();
}

uint64_t sub_23129D290()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_231366750();
  v1[4] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23129D334()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_28();
  sub_23129D3B0();
  v0 = OUTLINED_FUNCTION_5_16();
  v1(v0);

  v2 = OUTLINED_FUNCTION_13_15();

  return v3(v2);
}

void sub_23129D3B0()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v44 = sub_231369D00();
  OUTLINED_FUNCTION_0_0();
  v42 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  v41 = v6;
  OUTLINED_FUNCTION_18();
  v7 = sub_231366880();
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = v12 - v11;
  v14 = sub_2313668A0();
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_4();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v22 = OUTLINED_FUNCTION_40_0(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_1();
  v43 = v23;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_23_11();
  sub_23129CC40(v2, v0);
  sub_231366870();
  v25 = *(v9 + 104);
  v25(v13, *MEMORY[0x277CC9980], v7);
  v40 = sub_231366890();
  v26 = *(v9 + 8);
  v27 = OUTLINED_FUNCTION_53_3();
  v26(v27);
  v28 = *(v16 + 8);
  v28(v20, v14);
  sub_231366870();
  v25(v13, *MEMORY[0x277CC99B8], v7);
  v29 = sub_231366890();
  v30 = OUTLINED_FUNCTION_53_3();
  v26(v30);
  v28(v20, v14);
  v31 = v43;
  sub_2311E66F0(v0, v43, &qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_12_14(v43);
  if (v32)
  {
    sub_2311D1F18(v0, &qword_27DD43358, &qword_23136FA90);
    v0 = v43;
LABEL_14:
    sub_2311D1F18(v0, &qword_27DD43358, &qword_23136FA90);
    goto LABEL_15;
  }

  (*(v42 + 32))(v41, v43, v44);
  if ((v29 - 7) < 0xFFFFFFFFFFFFFFFBLL)
  {
    v33 = OUTLINED_FUNCTION_32_10();
    v34(v33);
    goto LABEL_14;
  }

  if ((v40 - 5) > 6)
  {
    if ((v40 - 15) < 4)
    {
      sub_231369CB0();
      OUTLINED_FUNCTION_54_0();
      sub_231369CF0();
      v37 = OUTLINED_FUNCTION_33_10();
      v43(v37);
      v38 = OUTLINED_FUNCTION_32_10();
      v43(v38);
      sub_2311D1F18(v0, &qword_27DD43358, &qword_23136FA90);
      goto LABEL_15;
    }

    v31 = *(v42 + 8);
    goto LABEL_13;
  }

  sub_231369CB0();
  OUTLINED_FUNCTION_54_0();
  sub_231369CF0();
  v35 = OUTLINED_FUNCTION_33_10();
  v43(v35);
  if ((v20 & 1) == 0)
  {
LABEL_13:
    v39 = OUTLINED_FUNCTION_32_10();
    v31(v39);
    goto LABEL_14;
  }

  v36 = OUTLINED_FUNCTION_32_10();
  v43(v36);
  sub_2311D1F18(v0, &qword_27DD43358, &qword_23136FA90);
LABEL_15:
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_23129D830()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311F93E8;

  return sub_23129D290();
}

uint64_t sub_23129D8C8()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_231366750();
  v1[4] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23129D96C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_28();
  sub_23129D9E8();
  v0 = OUTLINED_FUNCTION_5_16();
  v1(v0);

  v2 = OUTLINED_FUNCTION_13_15();

  return v3(v2);
}

void sub_23129D9E8()
{
  OUTLINED_FUNCTION_11_0();
  v34 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v1);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - v3;
  v5 = sub_231369D00();
  OUTLINED_FUNCTION_0_0();
  v33 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  v32 = v8;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = sub_231366880();
  OUTLINED_FUNCTION_0_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  v18 = v17 - v16;
  v19 = sub_2313668A0();
  OUTLINED_FUNCTION_0_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_4();
  v25 = v24 - v23;
  sub_231366870();
  (*(v14 + 104))(v18, *MEMORY[0x277CC9980], v12);
  v26 = sub_231366890();
  (*(v14 + 8))(v18, v12);
  (*(v21 + 8))(v25, v19);
  if ((v26 - 12) <= 7)
  {
    sub_23129CC40(v34, v4);
    OUTLINED_FUNCTION_19_13(v4, 1, v5);
    if (v27)
    {
      sub_2311D1F18(v4, &qword_27DD43358, &qword_23136FA90);
    }

    else
    {
      v28 = v33;
      (*(v33 + 32))(v11, v4, v5);
      v29 = v32;
      sub_231369CB0();
      sub_231369CF0();
      v30 = *(v28 + 8);
      v30(v29, v5);
      v30(v11, v5);
    }
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_23129DD20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311F93E8;

  return sub_23129D8C8();
}

uint64_t sub_23129DDB8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_23129DDCC()
{
  OUTLINED_FUNCTION_8();
  sub_23129DE30();
  v1 = *(v0 + 8);
  v3 = v2 & 1;

  return v1(v3);
}

void sub_23129DE30()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v69 = v3;
  v68 = v4;
  v71 = sub_231369BE0();
  OUTLINED_FUNCTION_0_0();
  v70 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_3(v8 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  OUTLINED_FUNCTION_40_0(v9);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_6_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v12);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_4_3(v14);
  v77 = sub_231369D00();
  OUTLINED_FUNCTION_0_0();
  v74 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_4_3(v18);
  v83 = sub_231369630();
  OUTLINED_FUNCTION_0_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_1();
  v87 = v22;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17_0();
  v86 = v24;
  OUTLINED_FUNCTION_18();
  v25 = sub_2313696B0();
  OUTLINED_FUNCTION_0_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_7();
  v90 = v30;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_0();
  v91 = v33;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2313683A0();
  v34 = sub_23136A200();

  v35 = 0;
  v85 = *(v34 + 16);
  v82 = *MEMORY[0x277D1EB18];
  v80 = (v20 + 8);
  v81 = (v20 + 104);
  v89 = (v27 + 8);
  v88 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v85 == v35)
    {

      v48 = 0;
      v0 = 0;
      v49 = v88;
      v50 = *(v88 + 16);
      v51 = MEMORY[0x277D84F90];
      while (v50 != v48)
      {
        if (v48 >= *(v49 + 16))
        {
          goto LABEL_42;
        }

        (*(v27 + 16))(v90, v49 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v48, v25);
        if (sub_23129E848())
        {
          OUTLINED_FUNCTION_29_9();
          v53 = *v52;
          (*v52)(v78, v90, v25);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2311F5958(0, *(v51 + 16) + 1, 1);
          }

          v55 = *(v51 + 16);
          v54 = *(v51 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_2311F5958(v54 > 1, v55 + 1, 1);
          }

          ++v48;
          *(v51 + 16) = v55 + 1;
          OUTLINED_FUNCTION_29_9();
          v53();
          v49 = v88;
        }

        else
        {
          (*v89)(v90, v25);
          ++v48;
          v49 = v88;
        }
      }

      sub_231217DAC(v51, v75);

      OUTLINED_FUNCTION_19_13(v75, 1, v25);
      if (v39)
      {
        sub_2311D1F18(v75, &qword_27DD43C68, &qword_231378D20);
        v58 = v76;
        v56 = OUTLINED_FUNCTION_28_1();
        __swift_storeEnumTagSinglePayload(v56, v57, 1, v77);
      }

      else
      {
        v58 = v76;
        sub_231369670();
        (*v89)(v75, v25);
        v59 = OUTLINED_FUNCTION_28_1();
        OUTLINED_FUNCTION_19_13(v59, v60, v77);
        if (!v61)
        {
          (*(v74 + 32))(v73, v76, v77);
          (*(v74 + 16))(v72, v73, v77);
          v62 = (*(v74 + 88))(v72, v77);
          if (v62 == *MEMORY[0x277D729F8])
          {
            (*(v74 + 96))(v72, v77);
            v63 = swift_projectBox();
            (*(v70 + 16))(v67, v63, v71);

            if (sub_231369BA0() != v68 || v64 != v69)
            {
              sub_23136A900();
            }

            (*(v70 + 8))(v67, v71);
            (*(v74 + 8))(v73, v77);
          }

          else
          {
            v66 = *(v74 + 8);
            v66(v73, v77);
            v66(v72, v77);
          }

          goto LABEL_32;
        }
      }

      sub_2311D1F18(v58, &qword_27DD43358, &qword_23136FA90);
LABEL_32:
      OUTLINED_FUNCTION_9_0();
      return;
    }

    if (v35 >= *(v34 + 16))
    {
      break;
    }

    v0 = v34;
    v84 = *(v27 + 72);
    v36 = v34 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + v84 * v35;
    v37 = v25;
    (*(v27 + 16))(v91, v36, v25);
    sub_231369680();
    (*v81)(v87, v82, v83);
    OUTLINED_FUNCTION_7_15();
    sub_2312A0900(&qword_27DD43C18, v38, MEMORY[0x277D1EB78]);
    OUTLINED_FUNCTION_54_0();
    sub_23136A140();
    OUTLINED_FUNCTION_54_0();
    sub_23136A140();
    v39 = v94 == v92 && v95 == v93;
    if (v39)
    {
      v42 = *v80;
      (*v80)(v87, v83);
      v42(v86, v83);

LABEL_11:
      OUTLINED_FUNCTION_29_9();
      v44 = *v43;
      v25 = v37;
      (*v43)(v79, v91, v37);
      v45 = v88;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2311F5958(0, *(v88 + 16) + 1, 1);
        v45 = v88;
      }

      v34 = v0;
      v0 = v84;
      v47 = *(v45 + 16);
      v46 = *(v45 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_2311F5958(v46 > 1, v47 + 1, 1);
        v45 = v88;
      }

      ++v35;
      *(v45 + 16) = v47 + 1;
      v88 = v45;
      OUTLINED_FUNCTION_29_9();
      v44();
    }

    else
    {
      v40 = sub_23136A900();
      v41 = *v80;
      (*v80)(v87, v83);
      v41(v86, v83);

      if (v40)
      {
        goto LABEL_11;
      }

      v25 = v37;
      (*v89)(v91, v37);
      ++v35;
      v34 = v0;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);

  (*v89)(v90, v25);

  __break(1u);
}

uint64_t sub_23129E848()
{
  v0 = sub_231369D50();
  v36 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v33 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B0, &unk_23136DFC0);
  MEMORY[0x28223BE20](v35);
  v37 = &v32 - v2;
  v3 = sub_231368290();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60);
  MEMORY[0x28223BE20](v10 - 8);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v32 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  sub_231369670();
  v18 = sub_231369D00();
  if (__swift_getEnumTagSinglePayload(v9, 1, v18) == 1)
  {
    sub_2311D1F18(v9, &qword_27DD43358, &qword_23136FA90);
    v19 = 1;
  }

  else
  {
    sub_231369CC0();
    (*(*(v18 - 8) + 8))(v9, v18);
    v19 = 0;
  }

  __swift_storeEnumTagSinglePayload(v17, v19, 1, v0);
  v20 = swift_allocObject();
  (*(v4 + 104))(v6, *MEMORY[0x277D60F08], v3);
  v21 = sub_231368280();
  v23 = v22;
  (*(v4 + 8))(v6, v3);
  v20[2] = v21;
  v20[3] = v23;
  v20[4] = 0xD000000000000017;
  v20[5] = 0x800000023137F730;
  *v14 = v20;
  v24 = v36;
  (*(v36 + 104))(v14, *MEMORY[0x277D72D28], v0);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v0);
  v25 = *(v35 + 48);
  v26 = v37;
  sub_2311E66F0(v17, v37, &qword_27DD437B8, &qword_23136FA60);
  sub_2311E66F0(v14, v26 + v25, &qword_27DD437B8, &qword_23136FA60);
  if (__swift_getEnumTagSinglePayload(v26, 1, v0) != 1)
  {
    v28 = v34;
    sub_2311E66F0(v26, v34, &qword_27DD437B8, &qword_23136FA60);
    if (__swift_getEnumTagSinglePayload(v26 + v25, 1, v0) != 1)
    {
      v29 = v33;
      (*(v24 + 32))(v33, v26 + v25, v0);
      sub_2312A0900(&qword_27DD43360, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
      v27 = sub_231369F60();
      v30 = *(v24 + 8);
      v30(v29, v0);
      sub_2311D1F18(v14, &qword_27DD437B8, &qword_23136FA60);
      sub_2311D1F18(v17, &qword_27DD437B8, &qword_23136FA60);
      v30(v34, v0);
      sub_2311D1F18(v26, &qword_27DD437B8, &qword_23136FA60);
      return v27 & 1;
    }

    sub_2311D1F18(v14, &qword_27DD437B8, &qword_23136FA60);
    sub_2311D1F18(v17, &qword_27DD437B8, &qword_23136FA60);
    (*(v24 + 8))(v28, v0);
    goto LABEL_9;
  }

  sub_2311D1F18(v14, &qword_27DD437B8, &qword_23136FA60);
  sub_2311D1F18(v17, &qword_27DD437B8, &qword_23136FA60);
  if (__swift_getEnumTagSinglePayload(v26 + v25, 1, v0) != 1)
  {
LABEL_9:
    sub_2311D1F18(v26, &qword_27DD437B0, &unk_23136DFC0);
    v27 = 0;
    return v27 & 1;
  }

  sub_2311D1F18(v26, &qword_27DD437B8, &qword_23136FA60);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_23129EE7C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2311F93E8;

  return sub_23129DDB8(v4, a2);
}

uint64_t sub_23129EF14(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v31 = v1;
    v32 = MEMORY[0x277D84F90];
    sub_2311F4E34(0);
    v5 = 32;
    v6 = v32;
    v7 = "GEOPOICategoryStore";
    v8 = "GEOPOICategoryPark";
    v9 = 0xD000000000000013;
    v10 = "GEOPOICategoryFitnessCenter";
    v11 = 0xD000000000000012;
    v12 = "GEOPOICategoryAirport";
    v13 = "GEOPOICategoryNightlife";
    v14 = 0xD000000000000015;
    v15 = "LocationConditionEntity";
    do
    {
      v16 = "GEOPOICategoryFoodMarket";
      v17 = 0xD000000000000018;
      switch(*(a1 + v5))
      {
        case 1:
          v16 = v7;
          break;
        case 2:
          v17 = v9;
          v16 = v8;
          break;
        case 3:
          v17 = v11;
          v16 = v10;
          break;
        case 4:
          v17 = 0xD00000000000001BLL;
          v16 = v12;
          break;
        case 5:
          v17 = v14;
          v16 = v13;
          break;
        case 6:
          v17 = 0xD000000000000017;
          v16 = v15;
          break;
        default:
          break;
      }

      v19 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v19 >= v18 >> 1)
      {
        v24 = v13;
        v25 = v12;
        v22 = v15;
        v23 = v14;
        v29 = v8;
        v30 = v7;
        v27 = v10;
        v28 = v9;
        v26 = v11;
        sub_2311F4E34(v18 > 1);
        v15 = v22;
        v14 = v23;
        v13 = v24;
        v12 = v25;
        v11 = v26;
        v10 = v27;
        v9 = v28;
        v8 = v29;
        v7 = v30;
      }

      *(v32 + 16) = v19 + 1;
      v20 = v32 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16 | 0x8000000000000000;
      ++v5;
      --v4;
    }

    while (v4);

    v2 = v31;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *(v2 + 16) = v6;
  return v2;
}

uint64_t sub_23129F11C(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_23129F134()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[17];
  v2 = v1[3];
  v0[20] = v2;
  v0[21] = v1[4];
  v0[22] = __swift_project_boxed_opaque_existential_1(v1, v2);
  v3 = sub_231368300();
  v5 = v4;
  v0[23] = v3;
  ObjectType = swift_getObjectType();
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_23129F21C;

  return MEMORY[0x2821C7770](v0 + 2, ObjectType, v5);
}

uint64_t sub_23129F21C()
{
  OUTLINED_FUNCTION_8();

  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_23129F328()
{
  v0[25] = sub_231368300();
  v0[26] = v1;
  v0[27] = swift_getObjectType();
  v2 = v0[5];
  v3 = v0[6];
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[10] = v2;
  v0[11] = *(v3 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
  v7 = sub_23136A260();

  return MEMORY[0x2822009F8](sub_23129F42C, v7, v6);
}

uint64_t sub_23129F42C()
{
  OUTLINED_FUNCTION_8();
  sub_231369430();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_23129F4C0()
{
  OUTLINED_FUNCTION_8();
  if (v0[15])
  {
    sub_2313692F0();
    swift_dynamicCast();
  }

  else
  {
    sub_2311D1F18((v0 + 12), &qword_27DD443C0, &unk_23136E000);
  }

  sub_23129F594();
  v2 = v1;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[1];

  return v3(v2 & 1);
}

void sub_23129F594()
{
  OUTLINED_FUNCTION_11_0();
  v176 = v2;
  v4 = v3;
  v5 = sub_231369CA0();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_4_3(v10 - v9);
  v159 = sub_231369C90();
  OUTLINED_FUNCTION_0_0();
  v158 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_4_3(v14 - v13);
  v184 = sub_231369630();
  OUTLINED_FUNCTION_0_0();
  v175 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_1();
  v183 = v17;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17_0();
  v179 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  OUTLINED_FUNCTION_40_0(v20);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_6_3(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v23);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_4_3(v25);
  v169 = sub_231369D00();
  OUTLINED_FUNCTION_0_0();
  v165 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_4_3(v29);
  v30 = sub_2313696B0();
  OUTLINED_FUNCTION_0_0();
  v185 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17_0();
  v186 = v34;
  OUTLINED_FUNCTION_18();
  v35 = sub_231367D20();
  OUTLINED_FUNCTION_0_0();
  v182 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_3(v39 - v38);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444C8, &unk_2313744B0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_1();
  v180 = v41;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_23_11();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444D0, &unk_231373E70);
  v44 = OUTLINED_FUNCTION_40_0(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_8_7();
  v178 = v46;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8_7();
  v49 = v48;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v50);
  v52 = &v155 - v51;
  MEMORY[0x28223BE20](v53);
  v55 = &v155 - v54;
  v156 = v0;
  v162 = v5;
  v161 = v7;
  v170 = v30;
  if (v4)
  {
    sub_231369240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F70, &qword_2313744C0);
    v56 = swift_dynamicCast() ^ 1;
    v57 = v55;
  }

  else
  {
    v57 = &v155 - v54;
    v56 = 1;
  }

  __swift_storeEnumTagSinglePayload(v57, v56, 1, v35);
  v58 = *MEMORY[0x277D60B30];
  v177 = *(v182 + 104);
  v177(v52, v58, v35);
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v35);
  v59 = v181;
  v60 = *(v181 + 48);
  OUTLINED_FUNCTION_37_11();
  sub_2311E66F0(v61, v62, v63, v64);
  OUTLINED_FUNCTION_37_11();
  v65 = v35;
  sub_2311E66F0(v66, v67, v68, v69);
  OUTLINED_FUNCTION_12_14(v1);
  if (v71)
  {
    sub_2311D1F18(v52, &qword_27DD444D0, &unk_231373E70);
    OUTLINED_FUNCTION_19_13(v1 + v60, 1, v35);
    if (v71)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v70 = v49;
  sub_2311E66F0(v1, v49, &qword_27DD444D0, &unk_231373E70);
  OUTLINED_FUNCTION_19_13(v1 + v60, 1, v35);
  if (v71)
  {
    sub_2311D1F18(v52, &qword_27DD444D0, &unk_231373E70);
    (*(v182 + 8))(v49, v35);
LABEL_12:
    sub_2311D1F18(v1, &qword_27DD444C8, &unk_2313744B0);
LABEL_13:
    v72 = v178;
    v177(v178, *MEMORY[0x277D60B40], v65);
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v65);
    v73 = *(v59 + 48);
    v74 = v180;
    OUTLINED_FUNCTION_37_11();
    sub_2311E66F0(v75, v76, v77, v78);
    OUTLINED_FUNCTION_37_11();
    sub_2311E66F0(v79, v80, v81, v82);
    OUTLINED_FUNCTION_12_14(v74);
    if (!v71)
    {
      sub_2311E66F0(v74, v173, &qword_27DD444D0, &unk_231373E70);
      OUTLINED_FUNCTION_12_14(v74 + v73);
      if (!v83)
      {
        v93 = v182;
        v94 = v174;
        (*(v182 + 32))(v174, v74 + v73, v35);
        OUTLINED_FUNCTION_8_16();
        sub_2312A0900(v95, v96, MEMORY[0x277D60B70]);
        v97 = sub_231369F60();
        v98 = *(v93 + 8);
        (v98)(v94, v35);
        sub_2311D1F18(v72, &qword_27DD444D0, &unk_231373E70);
        v99 = OUTLINED_FUNCTION_80();
        v98(v99);
        sub_2311D1F18(v74, &qword_27DD444D0, &unk_231373E70);
        if (v97)
        {
          goto LABEL_27;
        }

LABEL_49:
        sub_2311D1F18(v55, &qword_27DD444D0, &unk_231373E70);
        OUTLINED_FUNCTION_9_0();
        return;
      }

      sub_2311D1F18(v72, &qword_27DD444D0, &unk_231373E70);
      v84 = OUTLINED_FUNCTION_80();
      v85(v84);
LABEL_22:
      sub_2311D1F18(v74, &qword_27DD444C8, &unk_2313744B0);
      goto LABEL_49;
    }

    sub_2311D1F18(v72, &qword_27DD444D0, &unk_231373E70);
    OUTLINED_FUNCTION_12_14(v74 + v73);
    if (!v71)
    {
      goto LABEL_22;
    }

    v1 = v74;
LABEL_18:
    sub_2311D1F18(v1, &qword_27DD444D0, &unk_231373E70);
    goto LABEL_27;
  }

  v86 = v182;
  v87 = v174;
  (*(v182 + 32))(v174, v1 + v60, v35);
  OUTLINED_FUNCTION_8_16();
  sub_2312A0900(v88, v89, MEMORY[0x277D60B70]);
  v171 = v70;
  v90 = sub_231369F60();
  v91 = *(v86 + 8);
  v92 = v87;
  v59 = v181;
  v91(v92, v35);
  sub_2311D1F18(v52, &qword_27DD444D0, &unk_231373E70);
  v91(v171, v35);
  v65 = v35;
  sub_2311D1F18(v1, &qword_27DD444D0, &unk_231373E70);
  if ((v90 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_27:
  v166 = v55;
  __swift_project_boxed_opaque_existential_1(v176, v176[3]);
  sub_2313683A0();
  v100 = sub_23136A200();

  v101 = 0;
  v182 = *(v100 + 16);
  v178 = v185 + 16;
  LODWORD(v177) = *MEMORY[0x277D1EA90];
  v102 = v175++;
  v176 = v102 + 13;
  v174 = (v185 + 8);
  v171 = (v185 + 32);
  v173 = MEMORY[0x277D84F90];
  v103 = v183;
  v104 = v170;
LABEL_28:
  v105 = v184;
  while (1)
  {
    if (v182 == v101)
    {

      v124 = v167;
      sub_231217DAC(v173, v167);

      OUTLINED_FUNCTION_19_13(v124, 1, v104);
      if (v71)
      {
        sub_2311D1F18(v124, &qword_27DD43C68, &qword_231378D20);
        v127 = v168;
        v125 = OUTLINED_FUNCTION_28_1();
        __swift_storeEnumTagSinglePayload(v125, v126, 1, v169);
        v55 = v166;
      }

      else
      {
        v127 = v168;
        sub_231369670();
        (*v174)(v124, v104);
        v128 = OUTLINED_FUNCTION_28_1();
        v129 = v169;
        OUTLINED_FUNCTION_19_13(v128, v130, v169);
        v55 = v166;
        if (!v131)
        {
          v132 = v165;
          v133 = v164;
          (*(v165 + 32))(v164, v127, v129);
          v134 = v163;
          (*(v132 + 16))(v163, v133, v129);
          v135 = (*(v132 + 88))(v134, v129);
          if (v135 == *MEMORY[0x277D72A58])
          {
            (*(v132 + 96))(v134, v129);
            v136 = swift_projectBox();
            v137 = v161;
            v138 = v160;
            v139 = v162;
            (*(v161 + 16))(v160, v136, v162);
            if ((*(v137 + 88))(v138, v139) == *MEMORY[0x277D729D0])
            {
              (*(v137 + 96))(v138, v139);
              v140 = v158;
              v141 = v157;
              v142 = v159;
              (*(v158 + 32))(v157, v138, v159);

              v143 = sub_231369C80();
              v144 = sub_2312A0890(v143);
              if (v145)
              {
                v190 = v144;
                v191 = v145;
                MEMORY[0x28223BE20](v144);
                *(&v155 - 2) = &v190;
                sub_231217FE8(sub_23128D8E8, (&v155 - 4), v146);
                (*(v140 + 8))(v141, v142);
                v147 = OUTLINED_FUNCTION_21_15();
                v148(v147);
              }

              else
              {
                (*(v140 + 8))(v141, v142);
                v153 = OUTLINED_FUNCTION_21_15();
                v154(v153);
              }

              v55 = v166;
            }

            else
            {
              v151 = OUTLINED_FUNCTION_21_15();
              v152(v151);
              (*(v137 + 8))(v138, v139);
            }
          }

          else
          {
            v149 = *(v132 + 8);
            v150 = OUTLINED_FUNCTION_21_15();
            v149(v150);
            (v149)(v134, v129);
          }

          goto LABEL_49;
        }
      }

      sub_2311D1F18(v127, &qword_27DD43358, &qword_23136FA90);
      goto LABEL_49;
    }

    if (v101 >= *(v100 + 16))
    {
      break;
    }

    v106 = v100;
    v181 = (*(v185 + 80) + 32) & ~*(v185 + 80);
    v180 = *(v185 + 72);
    v107 = v100 + v181 + v180 * v101;
    v108 = v104;
    (*(v185 + 16))(v186, v107, v104);
    sub_231369680();
    (*v176)(v103, v177, v105);
    OUTLINED_FUNCTION_7_15();
    sub_2312A0900(&qword_27DD43C18, v109, MEMORY[0x277D1EB78]);
    OUTLINED_FUNCTION_53_3();
    sub_23136A140();
    OUTLINED_FUNCTION_53_3();
    sub_23136A140();
    if (v190 == v187 && v191 == v188)
    {
      v116 = *v175;
      (*v175)(v103, v105);
      v117 = OUTLINED_FUNCTION_21_15();
      (v116)(v117);

LABEL_38:
      v118 = *v171;
      v104 = v108;
      (*v171)(v172, v186, v108);
      v119 = v173;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v189 = v119;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F5958(0, *(v119 + 16) + 1, 1);
        v119 = v189;
      }

      v103 = v183;
      v100 = v106;
      v121 = v181;
      v123 = *(v119 + 16);
      v122 = *(v119 + 24);
      if (v123 >= v122 >> 1)
      {
        sub_2311F5958(v122 > 1, v123 + 1, 1);
        v119 = v189;
      }

      ++v101;
      *(v119 + 16) = v123 + 1;
      v173 = v119;
      v118(v119 + v121 + v123 * v180, v172, v104);
      goto LABEL_28;
    }

    v111 = sub_23136A900();
    v112 = v103;
    v113 = v111;
    v114 = *v175;
    (*v175)(v112, v105);
    v115 = OUTLINED_FUNCTION_21_15();
    (v114)(v115);

    if (v113)
    {
      goto LABEL_38;
    }

    v104 = v108;
    (*v174)(v186, v108);
    ++v101;
    v103 = v183;
    v105 = v184;
    v100 = v106;
  }

  __break(1u);
}

uint64_t sub_2312A0608(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2311F4480;

  return sub_23129F11C(a1, a2);
}

uint64_t sub_2312A06B0()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v0;
  v2 = sub_231366BF0();
  v1[3] = v2;
  OUTLINED_FUNCTION_0(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312A0754()
{
  OUTLINED_FUNCTION_26();
  sub_231366BE0();
  v0 = OUTLINED_FUNCTION_28();
  sub_2312A0948(v0);
  v1 = OUTLINED_FUNCTION_5_16();
  v2(v1);

  v3 = OUTLINED_FUNCTION_13_15();

  return v4(v3);
}

uint64_t sub_2312A0800()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311F93E8;

  return sub_2312A06B0();
}

uint64_t sub_2312A0890(void *a1)
{
  v2 = [a1 category];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231369FD0();

  return v3;
}

uint64_t sub_2312A0900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2312A0948(uint64_t a1)
{
  v46 = a1;
  v1 = sub_2313698C0();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1);
  v42 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = &v41 - v4;
  v5 = sub_231366C00();
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231366C20();
  v8 = *(v7 - 8);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_231366BD0();
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_231366BF0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v46, v15, v17);
  sub_231366C10();
  (*(v16 + 8))(v19, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444F0, &qword_2313740D8);
  v20 = *(v8 + 72);
  v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_23136C1C0;
  v23 = v22 + v21;
  v24 = *(v9 + 104);
  v24(v23, *MEMORY[0x277D55780], v7);
  v24(v23 + v20, *MEMORY[0x277D55778], v7);
  sub_231366BC0();
  v52 = v11;
  LOBYTE(v16) = sub_2312180C8(sub_2312A0FEC, v51, v22);
  swift_setDeallocating();
  sub_231322AA0();
  (*(v9 + 8))(v11, v7);
  if ((v16 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444F8, &qword_2313740E0);
    v25 = v44;
    v26 = *(v44 + 72);
    v27 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_23136D290;
    v29 = v28 + v27;
    v30 = *(v25 + 104);
    v30(v29, *MEMORY[0x277D556F8], v5);
    v30(v29 + v26, *MEMORY[0x277D55708], v5);
    v30(v29 + 2 * v26, *MEMORY[0x277D556F0], v5);
    v30(v29 + 3 * v26, *MEMORY[0x277D55700], v5);
    v31 = v43;
    v32 = sub_231366BB0();
    MEMORY[0x28223BE20](v32);
    *(&v41 - 2) = v31;
    v33 = sub_231218098(sub_2312A100C, (&v41 - 4), v28);
    swift_setDeallocating();
    sub_231322AB8();
    (*(v25 + 8))(v31, v5);
    if (!v33)
    {
      v34 = v42;
      sub_2313690F0();
      v35 = sub_2313698A0();
      v39 = sub_23136A390();
      if (!os_log_type_enabled(v35, v39))
      {
        v38 = 1;
        goto LABEL_9;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2311CB000, v35, v39, "MusicSubscriptionFilter:: user has music subscription - returns true", v37, 2u);
      v38 = 1;
      goto LABEL_8;
    }
  }

  v34 = v45;
  sub_2313690F0();
  v35 = sub_2313698A0();
  v36 = sub_23136A390();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2311CB000, v35, v36, "MusicSubscriptionFilter:: no valid music subscription - returns false", v37, 2u);
    v38 = 0;
LABEL_8:
    MEMORY[0x23192B930](v37, -1, -1);
    goto LABEL_9;
  }

  v38 = 0;
LABEL_9:

  (*(v49 + 8))(v34, v50);
  (*(v47 + 8))(v14, v48);
  return v38;
}

uint64_t sub_2312A1078(uint64_t a1)
{
  v2[7] = v1;
  v3 = sub_2313698C0();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44508, qword_231374120);
  v5 = swift_task_alloc();
  v2[12] = v5;
  *v5 = v2;
  v5[1] = sub_2312A11BC;

  return MEMORY[0x2821C72A8](v4);
}

uint64_t sub_2312A11BC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *(v4 + 104) = v3;

  v5 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312A12BC()
{
  v34 = v0;
  result = v0[13];
  if (!result)
  {
    sub_2313690F0();
    v19 = sub_2313698A0();
    v20 = sub_23136A390();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2311CB000, v19, v20, "No instances configured in lifecycle", v21, 2u);
      OUTLINED_FUNCTION_29();
    }

    v22 = OUTLINED_FUNCTION_28_0();
    v23(v22);
    goto LABEL_18;
  }

  v32 = *(result + 16);
  if (!v32)
  {
LABEL_14:

LABEL_18:

    v24 = v0[1];
    v25 = v0[7];

    return v24(v25);
  }

  v2 = 0;
  v26 = v0[7];
  v29 = (v0[9] + 8);
  v30 = result + 32;
  v31 = v0[13];
  while (v2 < *(result + 16))
  {
    v3 = *(v30 + 16 * v2 + 8);

    sub_231369EE0();
    sub_2313690F0();

    sub_231369EE0();
    v4 = sub_2313698A0();
    v5 = sub_23136A3A0();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[10];
    if (v6)
    {
      v28 = v0[8];
      v8 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v8 = 136315394;
      sub_23120EB78();
      v27 = v7;
      v10 = v9;
      v12 = v11;

      v13 = sub_2311CFD58(v10, v12, &v33);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_2311CFD58(*(v26 + 128), *(v26 + 136), &v33);
      _os_log_impl(&dword_2311CB000, v4, v5, "adding lifecycle instance against key: %s to builder of type: %s", v8, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*v29)(v27, v28);
    }

    else
    {

      v14 = OUTLINED_FUNCTION_28_0();
      v16(v14, v15);
    }

    v17 = *(v3 + 16);
    if (v17)
    {
      v18 = v3 + 32;
      sub_231369EE0();
      do
      {
        sub_2311CF324(v18, (v0 + 2));
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        sub_23120FA10();
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
        v18 += 40;
        --v17;
      }

      while (v17);
      swift_bridgeObjectRelease_n();
    }

    else
    {
    }

    ++v2;
    result = v31;
    if (v2 == v32)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2312A165C()
{
  OUTLINED_FUNCTION_8();
  v0[255] = v1;
  v0[254] = v2;
  v0[253] = v3;
  v0[252] = v4;
  memcpy(v0 + 2, v5, 0x1A8uLL);
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312A16D0()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 2016);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44500, &qword_2313740F0);
  swift_allocObject();
  v2 = sub_2311E96AC();
  *(v0 + 2048) = v2;
  *(v0 + 2008) = v2;
  if (v1)
  {
    v3 = *(v0 + 2024);
    v4 = *(v0 + 2016);
    swift_unknownObjectRetain();
    v5 = swift_task_alloc();
    *(v0 + 2056) = v5;
    *v5 = v0;
    v5[1] = sub_2312A1878;

    return (sub_2312A1078)(v4, v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C48, &unk_231370DE0);
    *(swift_allocObject() + 16) = xmmword_23136B670;
    type metadata accessor for DonotShowPolicy();
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_18_14(v7, &off_2845F62F0);
    swift_setDeallocating();
    sub_231322A34();
    sub_2311D38A8((v0 + 1928), v0 + 1968);
    v8 = OUTLINED_FUNCTION_2_17();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_2312A1878()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312A1968()
{
  OUTLINED_FUNCTION_26();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C48, &unk_231370DE0);
  *(swift_allocObject() + 16) = xmmword_23136B670;
  type metadata accessor for DonotShowPolicy();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_18_14(v1, &off_2845F62F0);
  swift_setDeallocating();
  sub_231322A34();
  sub_2311D38A8((v0 + 1928), v0 + 1968);
  v2 = OUTLINED_FUNCTION_2_17();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2312A1A3C()
{
  OUTLINED_FUNCTION_26();
  __swift_project_boxed_opaque_existential_1((v0 + 1968), *(v0 + 1992));
  sub_23120FA10();
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2312A1AC4()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 246);
  memcpy(v0 + 55, v0 + 2, 0x1A8uLL);
  v1 = swift_task_alloc();
  v0[258] = v1;
  *v1 = v0;
  v1[1] = sub_2312A1B78;
  v2 = v0[255];
  v3 = v0[254];

  return sub_2312A2194((v0 + 251), (v0 + 55), v3, v2);
}

uint64_t sub_2312A1B78()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312A1C5C()
{
  OUTLINED_FUNCTION_8();
  memcpy(v0 + 223, v0 + 27, 0x48uLL);
  sub_2311E6694((v0 + 27), (v0 + 232));
  v1 = swift_task_alloc();
  v0[259] = v1;
  *v1 = v0;
  v1[1] = sub_2312A1D10;
  v2 = v0[254];

  return sub_2312A26D0((v0 + 251), v0 + 223, v2);
}

uint64_t sub_2312A1D10()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  memcpy(v2 + 214, v2 + 223, 0x48uLL);
  sub_231286838((v2 + 214));
  memcpy(v2 + 108, v2 + 2, 0x1A8uLL);
  v5 = swift_task_alloc();
  v2[260] = v5;
  *v5 = v4;
  v5[1] = sub_2312A1E78;
  v6 = v1[254];

  return sub_2312A2A44((v2 + 251), (v2 + 108), v6);
}

uint64_t sub_2312A1E78()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  memcpy(v2 + 161, v2 + 2, 0x1A8uLL);
  v5 = swift_task_alloc();
  v2[261] = v5;
  *v5 = v4;
  v5[1] = sub_2312A1FDC;
  v6 = v1[255];
  v7 = v1[254];

  return sub_2312A3260((v2 + 251), (v2 + 161), v6, v7);
}

uint64_t sub_2312A1FDC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312A20D4()
{
  OUTLINED_FUNCTION_8();
  *(v0 + 2096) = sub_2311E99C4(v1, v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312A2134()
{
  OUTLINED_FUNCTION_8();

  v1 = *(v0 + 8);
  v2 = *(v0 + 2096);

  return v1(v2);
}

uint64_t sub_2312A2194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = a4;
  *(v4 + 96) = a1;
  v6 = sub_231367D80();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  v7 = sub_231367020();
  *(v4 + 144) = v7;
  *(v4 + 152) = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *(a2 + 272);
  *(v4 + 160) = v8;
  *(v4 + 168) = v9;
  *(v4 + 176) = *(a2 + 280);
  *(v4 + 184) = *(a2 + 288);
  *(v4 + 200) = *(a2 + 304);

  return MEMORY[0x2822009F8](sub_2312A22D4, 0, 0);
}

uint64_t sub_2312A22D4()
{
  OUTLINED_FUNCTION_70_1();
  v6 = sub_231367010();
  *(v3 + 208) = v6;
  v9 = *(v6 + 16);
  *(v3 + 216) = v9;
  if (!v9)
  {
LABEL_10:

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_14_19();

    __asm { BRAA            X1, X16 }
  }

  v10 = 0;
  *(v3 + 280) = *(*(v3 + 152) + 80);
  *(v3 + 284) = *MEMORY[0x277D60BA0];
  while (1)
  {
    *(v3 + 224) = v10;
    if (v10 >= *(v6 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v6, v7, v8);
    }

    OUTLINED_FUNCTION_22_13();
    v11 = *(v3 + 168);
    OUTLINED_FUNCTION_21_16();
    v15 = *(v14 + 16);
    v14 += 16;
    v17 = v12 + v13 + *(v14 + 56) * v16;
    *(v3 + 232) = v15;
    *(v3 + 240) = v14 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v18, v17);
    v19 = OUTLINED_FUNCTION_15_17();
    *(v3 + 248) = v19;
    v20 = v19[2];
    *(v3 + 256) = v20;
    if (v20)
    {
      break;
    }

    v21 = OUTLINED_FUNCTION_17_10();
    v22(v21);
    if (v0 == v1)
    {
      goto LABEL_10;
    }

    v10 = *(v3 + 224) + 1;
    v6 = *(v3 + 208);
  }

  *(v3 + 264) = **(v3 + 96);
  *(v3 + 272) = 0;
  OUTLINED_FUNCTION_27_11();
  sub_2311CF324(v23 + 32, v3 + 56);
  v5(v11, v2, v4);
  v24 = OUTLINED_FUNCTION_24_15();
  v25(v24);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_14_19();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312A248C()
{
  OUTLINED_FUNCTION_26();
  sub_2311E3ED8(*(v0 + 136), v0 + 56);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = OUTLINED_FUNCTION_28_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312A2520()
{
  OUTLINED_FUNCTION_70_1();
  v7 = *(v3 + 272) + 1;
  if (v7 == *(v3 + 256))
  {
    while (1)
    {

      v8 = OUTLINED_FUNCTION_17_10();
      v10 = v9(v8);
      if (v0 == v1)
      {

        OUTLINED_FUNCTION_56_0();
        OUTLINED_FUNCTION_14_19();

        __asm { BRAA            X1, X16 }
      }

      v13 = *(v3 + 224) + 1;
      *(v3 + 224) = v13;
      if (v13 >= *(*(v3 + 208) + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_22_13();
      v5 = *(v3 + 168);
      OUTLINED_FUNCTION_21_16();
      v15 = *(v14 + 16);
      *(v3 + 232) = v15;
      *(v3 + 240) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v15();
      v16 = OUTLINED_FUNCTION_15_17();
      *(v3 + 248) = v16;
      v17 = v16[2];
      *(v3 + 256) = v17;
      if (v17)
      {
        v7 = 0;
        *(v3 + 264) = **(v3 + 96);
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    *(v3 + 272) = v7;
    OUTLINED_FUNCTION_27_11();
    sub_2311CF324(v18 + 40 * v19 + 32, v3 + 56);
    v6(v5, v2, v4);
    v20 = OUTLINED_FUNCTION_24_15();
    v21(v20);
    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_14_19();
  }

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312A26D0(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[16] = a1;
  v3[17] = a3;
  v5 = sub_231367C70();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  memcpy(v3 + 2, a2, 0x48uLL);

  return MEMORY[0x2822009F8](sub_2312A27A4, 0, 0);
}

uint64_t sub_2312A27A4()
{
  OUTLINED_FUNCTION_16();
  v1 = sub_231364F30(v0 + 16, *(v0 + 136));
  *(v0 + 168) = v1;
  v2 = *(v1 + 16);
  *(v0 + 176) = v2;
  if (!v2)
  {

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_86();

    __asm { BRAA            X1, X16 }
  }

  v3 = **(v0 + 128);
  v4 = *MEMORY[0x277D60AE0];
  *(v0 + 200) = v4;
  *(v0 + 184) = v3;
  *(v0 + 192) = 0;
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  sub_2311CF324(v1 + 32, v0 + 88);
  (*(v6 + 104))(v5, v4, v7);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312A28A8()
{
  OUTLINED_FUNCTION_16();
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
  OUTLINED_FUNCTION_19_14(v1);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  v2 = OUTLINED_FUNCTION_28_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312A294C()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 192) + 1;
  if (v1 == *(v0 + 176))
  {

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_86();

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 192) = v1;
  v4 = *(v0 + 200);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  sub_2311CF324(*(v0 + 168) + 40 * v1 + 32, v0 + 88);
  (*(v7 + 104))(v5, v4, v6);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312A2A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  v5 = sub_231367C70();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = *(a2 + 392);
  *(v3 + 112) = *(a2 + 408);
  sub_231369EE0();

  return MEMORY[0x2822009F8](sub_2312A2B24, 0, 0);
}

uint64_t sub_2312A2B24()
{
  OUTLINED_FUNCTION_70_1();
  v31 = v1;
  v3 = *(v1 + 112);
  v4 = *(v1 + 64);
  v29 = *(v1 + 96);
  v30 = v3;
  v5 = sub_23123EAD8(&v29, v4);
  *(v1 + 120) = v5;

  v6 = v5[2];
  *(v1 + 128) = v6;
  if (v6)
  {
    v7 = **(v1 + 56);
    v8 = *MEMORY[0x277D60E68];
    v9 = *MEMORY[0x277D60DC0];
    *(v1 + 168) = v8;
    *(v1 + 172) = v9;
    v10 = *MEMORY[0x277D60E18];
    v11 = *MEMORY[0x277D60AC0];
    *(v1 + 176) = v10;
    *(v1 + 180) = v11;
    *(v1 + 136) = v7;
    *(v1 + 144) = 0;
    v13 = *(v1 + 80);
    v12 = *(v1 + 88);
    v14 = *(v1 + 72);
    sub_2311CF324(*(v1 + 120) + 32, v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8);
    OUTLINED_FUNCTION_30_11();
    OUTLINED_FUNCTION_7_0();
    (*(v15 + 104))(v12, v8);
    sub_2313681A0();
    OUTLINED_FUNCTION_7_0();
    (*(v16 + 104))(v12, v9);
    sub_231368210();
    OUTLINED_FUNCTION_7_0();
    (*(v17 + 104))(&v2[v12], v10);
    (*(v13 + 104))(v12, v11, v14);
    v18 = sub_2312A2E08;
  }

  else
  {

    v19 = *MEMORY[0x277D60E68];
    v20 = *MEMORY[0x277D60DC0];
    v21 = *MEMORY[0x277D60E18];
    v22 = OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_29_10(v22);
    *(v1 + 152) = sub_2312E9250(1);
    v7 = *v2;
    *(v1 + 160) = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8);
    OUTLINED_FUNCTION_30_11();
    OUTLINED_FUNCTION_7_0();
    (*(v23 + 104))(v0, v19);
    sub_2313681A0();
    OUTLINED_FUNCTION_7_0();
    (*(v24 + 104))(v0, v20);
    sub_231368210();
    OUTLINED_FUNCTION_7_0();
    (*(v25 + 104))(&v2[v0], v21);
    v26 = OUTLINED_FUNCTION_8_17();
    v27(v26);
    v18 = sub_2312A3114;
  }

  return MEMORY[0x2822009F8](v18, v7, 0);
}

uint64_t sub_2312A2E08()
{
  OUTLINED_FUNCTION_16();
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_19_14(v1);

  v2 = OUTLINED_FUNCTION_28_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312A2EA4()
{
  v3 = *(v1 + 128);
  v4 = *(v1 + 144) + 1;
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  if (v4 == v3)
  {

    v5 = *(v1 + 176);
    v7 = *(v1 + 168);
    v6 = *(v1 + 172);
    v8 = OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_29_10(v8);
    *(v1 + 152) = sub_2312E9250(1);
    v9 = *v2;
    *(v1 + 160) = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8);
    OUTLINED_FUNCTION_30_11();
    OUTLINED_FUNCTION_7_0();
    (*(v10 + 104))(v0, v7);
    sub_2313681A0();
    OUTLINED_FUNCTION_7_0();
    (*(v11 + 104))(v0, v6);
    sub_231368210();
    OUTLINED_FUNCTION_7_0();
    (*(v12 + 104))(&v2[v0], v5);
    v13 = OUTLINED_FUNCTION_8_17();
    v14(v13);
    v15 = sub_2312A3114;
  }

  else
  {
    v9 = *(v1 + 136);
    v16 = *(v1 + 144);
    *(v1 + 144) = v16 + 1;
    v17 = *(v1 + 176);
    v19 = *(v1 + 168);
    v18 = *(v1 + 172);
    v20 = *(v1 + 88);
    sub_2311CF324(*(v1 + 120) + 40 * v16 + 72, v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8);
    OUTLINED_FUNCTION_30_11();
    OUTLINED_FUNCTION_7_0();
    (*(v21 + 104))(v20, v19);
    sub_2313681A0();
    OUTLINED_FUNCTION_7_0();
    (*(v22 + 104))(v20, v18);
    sub_231368210();
    OUTLINED_FUNCTION_7_0();
    (*(v23 + 104))(&v2[v20], v17);
    v24 = OUTLINED_FUNCTION_8_17();
    v25(v24);
    v15 = sub_2312A2E08;
  }

  return MEMORY[0x2822009F8](v15, v9, 0);
}

uint64_t sub_2312A3114()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43010, qword_231374B70);
  v6 = swift_allocBox();
  (*(v4 + 16))(v7, v3, v5);
  OUTLINED_FUNCTION_6_16();
  sub_2312A3B88(v1, v6, v2, v8, v9);

  (*(v4 + 8))(v3, v5);
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312A31FC()
{
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_56_0();

  return v0();
}

uint64_t sub_2312A3260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a1;
  v4[27] = a4;
  v6 = sub_231367D80();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *(a2 + 344);
  v4[30] = v7;
  v4[31] = v8;

  return MEMORY[0x2822009F8](sub_2312A3328, 0, 0);
}

uint64_t sub_2312A3328()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C48, &unk_231370DE0);
  inited = swift_initStackObject();
  *(v0 + 256) = inited;
  *(inited + 16) = xmmword_23136C1C0;
  v7 = type metadata accessor for NotExposedTooManySuggestionsPolicy();
  *(v0 + 264) = v7;
  OUTLINED_FUNCTION_29_10(v7);
  *(inited + 32) = sub_2312E9240(2, 1);
  inited += 32;
  *(inited + 24) = v7;
  *(inited + 32) = &off_2845F6330;
  sub_2311CF324(v4, v0 + 128);
  HasNoEngagementPolicy = type metadata accessor for HasNoEngagementPolicy();
  *(v0 + 272) = HasNoEngagementPolicy;
  swift_allocObject();
  v9 = sub_2312E8D30((v0 + 128), v2, 0);
  *(inited + 64) = HasNoEngagementPolicy;
  *(inited + 72) = &off_2845F6340;
  *(inited + 40) = v9;
  *(v0 + 280) = *v5;
  sub_2311CF324(inited, v0 + 168);
  *(v0 + 376) = *MEMORY[0x277D60B78];
  v10 = *(v3 + 104);
  *(v0 + 288) = v10;
  *(v0 + 296) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v1);
  v11 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312A34A4()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[29];
  sub_2311E3ED8(v0[30], (v0 + 21));

  v0[38] = *(v1 + 8);
  v0[39] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2 = OUTLINED_FUNCTION_28_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312A353C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 376);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  sub_2311CF324(v3 + 72, v0 + 168);
  v1(v4, v2, v5);
  v6 = OUTLINED_FUNCTION_2_17();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312A35E8()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 304);
  sub_2311E3ED8(*(v0 + 240), v0 + 168);

  v2 = OUTLINED_FUNCTION_28_0();
  v1(v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312A3670()
{
  OUTLINED_FUNCTION_70_1();
  v11 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 376);
  v3 = *(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  swift_setDeallocating();
  sub_231322A34();
  OUTLINED_FUNCTION_36_2();
  v4 = swift_allocObject();
  *(v0 + 320) = v4;
  OUTLINED_FUNCTION_10_18(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43008, &unk_23136B8E0);
  *(v0 + 328) = swift_allocBox();
  v1(v5, v2, v3);
  sub_2313690A0();
  swift_allocObject();
  *(v0 + 336) = sub_2312E8D30(&v10, 0, 1);
  v6 = OUTLINED_FUNCTION_2_17();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312A3778()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  v4 = v0[35];
  OUTLINED_FUNCTION_36_2();
  v5 = swift_allocObject();
  *(v5 + 16) = v3 | 0x2000000000000000;
  *(v5 + 24) = v1 | 0x8000000000000000;

  OUTLINED_FUNCTION_5_17();
  sub_2312A3B88(v2, v5 | 0xC000000000000000, v4, v6, v7);

  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312A3860()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[33];
  OUTLINED_FUNCTION_36_2();
  v2 = swift_allocObject();
  v0[43] = v2;
  OUTLINED_FUNCTION_10_18(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43010, qword_231374B70);
  v3 = swift_allocBox();
  v5 = v4;
  v0[44] = v3;
  v6 = *MEMORY[0x277D60AC8];
  sub_231367C70();
  OUTLINED_FUNCTION_7_0();
  (*(v7 + 104))(v5, v6);
  OUTLINED_FUNCTION_29_10(v1);
  v0[45] = sub_2312E9250(1);
  v8 = OUTLINED_FUNCTION_2_17();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312A3950()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[35];
  OUTLINED_FUNCTION_36_2();
  v5 = swift_allocObject();
  *(v5 + 16) = v3 | 0x2000000000000000;
  *(v5 + 24) = v1;

  OUTLINED_FUNCTION_6_16();
  sub_2312A3B88(v2, v5 | 0xC000000000000000, v4, v6, v7);

  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312A3A28(uint64_t a1)
{
  v7 = v1;
  sub_2313690A0();
  swift_allocObject();
  *(v1 + 368) = sub_2312E8D30(v6, 0, 1);
  v2 = OUTLINED_FUNCTION_2_17();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_2312A3ABC()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 368);
  v2 = *(v0 + 280);
  OUTLINED_FUNCTION_36_2();
  v3 = swift_allocObject();
  *(v3 + 16) = 0xD000000000000010;
  *(v3 + 24) = 0x800000023137F830;
  OUTLINED_FUNCTION_5_17();
  sub_2312A3B88(v1, v4 | 0x2000000000000000, v2, v5, v6);

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_86();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2312A3B88(uint64_t a1, unint64_t a2, void *a3, uint64_t (*a4)(void, __n128), _UNKNOWN **a5)
{
  v10 = sub_2313698C0();
  v11 = MEMORY[0x28223BE20](v10);
  v40 = a5;
  v50 = a4(0, v11);
  v51 = a5;
  v39 = v50;
  v49[0] = a1;

  sub_2313690F0();
  sub_2311CF324(v49, &v46);

  v12 = sub_2313698A0();
  v13 = sub_23136A3A0();

  if (os_log_type_enabled(v12, v13))
  {
    v38 = v10;
    v14 = swift_slowAlloc();
    *&v41 = swift_slowAlloc();
    *v14 = 136315650;
    sub_2311CF324(&v46, &v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43020, &qword_23136BD80);
    v15 = sub_23136A010();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1Tm(&v46);
    v18 = sub_2311CFD58(v15, v17, &v41);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    sub_23120EB78();
    v21 = sub_2311CFD58(v19, v20, &v41);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_2311CFD58(a3[16], a3[17], &v41);
    _os_log_impl(&dword_2311CB000, v12, v13, "adding %s against %s for provider of type %s", v14, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v22 = OUTLINED_FUNCTION_23_12();
    v24 = v38;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v46);
    v22 = OUTLINED_FUNCTION_23_12();
    v24 = v10;
  }

  v23(v22, v24);
  swift_beginAccess();
  v25 = a3[14];
  sub_231369EE0();
  v26 = sub_2312177D0(a2, v25);

  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23126DD64(0);
    v27 = v36;
  }

  v29 = *(v27 + 16);
  v28 = *(v27 + 24);
  if (v29 >= v28 >> 1)
  {
    sub_23126DD64(v28 > 1);
    v27 = v37;
  }

  *(&v47 + 1) = v39;
  v48 = v40;
  *&v46 = a1;
  *(v27 + 16) = v29 + 1;
  sub_2311D38A8(&v46, v27 + 40 * v29 + 32);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v43 = a3[14];
  sub_231259AFC(v27, a2, isUniquelyReferenced_nonNull_native);
  a3[14] = v43;
  swift_endAccess();
  sub_231210ACC();
  if (a2 >> 61 == 6)
  {
    sub_231210ACC();
    v31 = type metadata accessor for JointProviderKeyExtractor();
    v32 = swift_allocObject();
    v33 = v47;
    *(v32 + 16) = v46;
    *(v32 + 32) = v33;
    v34 = v44;
    *(v32 + 56) = v43;
    *(v32 + 48) = v48;
    *(v32 + 72) = v34;
    *(v32 + 88) = v45;
    *(&v47 + 1) = v31;
    v48 = &off_2845F5A70;
    *&v46 = v32;
  }

  sub_2312108A0(&v46, &v41);
  if (v42)
  {
    sub_2311D38A8(&v41, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
    sub_23120E294();
    sub_231210910(&v46);
    __swift_destroy_boxed_opaque_existential_1Tm(&v43);
  }

  else
  {
    sub_231210910(&v46);
    sub_231210910(&v41);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v49);
}

uint64_t OUTLINED_FUNCTION_18_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[7] = v3;
  v2[8] = a2;
  v2[4] = a1;

  return sub_2311CF324((v2 + 4), v4 + 1928);
}

uint64_t OUTLINED_FUNCTION_28_12()
{

  return type metadata accessor for NotExposedTooManySuggestionsPolicy();
}

uint64_t sub_2312A4110(uint64_t a1, void *a2)
{
  v4 = sub_231368180();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_231367AD0();
  sub_231367710();
  swift_allocObject();
  return sub_2313676E0();
}

uint64_t sub_2312A425C(__int128 *a1)
{
  swift_defaultActor_initialize();
  *(v1 + 216) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 152) = 0u;
  sub_2311D38A8(a1, v1 + 112);
  return v1;
}

uint64_t sub_2312A42AC()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313698C0();
  OUTLINED_FUNCTION_4_17(v3);
  v1[5] = v4;
  v5 = OUTLINED_FUNCTION_62_0();
  v1[7] = OUTLINED_FUNCTION_23_13(v5);
  v6 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312A4350(uint64_t a1)
{
  v21 = v1;
  sub_2313690F0();
  sub_231369EE0();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[5];
  if (v4)
  {
    v6 = v1[2];
    v7 = OUTLINED_FUNCTION_60();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x23192A860](v6, MEMORY[0x277D837D0]);
    v11 = sub_2311CFD58(v9, v10, &v20);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_19_1(&dword_2311CB000, v12, v13, "AppInstallAutoCompleteIndexUpdater got called with appInstalled - %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  v14 = *(v5 + 8);
  v15 = OUTLINED_FUNCTION_28_0();
  v14(v15);
  v1[8] = v14;
  OUTLINED_FUNCTION_3_2((v1[3] + 112));
  OUTLINED_FUNCTION_3_3();
  v16 = swift_task_alloc();
  v1[9] = v16;
  *v16 = v1;
  v17 = OUTLINED_FUNCTION_10_19(v16);

  return v18(v17);
}

uint64_t sub_2312A455C()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9();
  *v5 = v4;
  *(v2 + 80) = v0;

  if (v0)
  {
    v6 = *(v2 + 24);

    return MEMORY[0x2822009F8](sub_2312A4690, v6, 0);
  }

  else
  {

    OUTLINED_FUNCTION_56_0();

    return v7();
  }
}

uint64_t sub_2312A4690()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_18_15();
  sub_2313690F0();
  v1 = sub_2313698A0();
  v2 = sub_23136A3B0();
  if (OUTLINED_FUNCTION_40_1(v2))
  {
    v3 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v3);
    OUTLINED_FUNCTION_0_26();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_20_17();

  v9 = OUTLINED_FUNCTION_28_0();
  v0(v9);

  OUTLINED_FUNCTION_56_0();

  return v10();
}

uint64_t sub_2312A4760()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313698C0();
  OUTLINED_FUNCTION_4_17(v3);
  v1[5] = v4;
  v5 = OUTLINED_FUNCTION_62_0();
  v1[7] = OUTLINED_FUNCTION_23_13(v5);
  v6 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312A4804(uint64_t a1)
{
  v21 = v1;
  sub_2313690F0();
  sub_231369EE0();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[5];
  if (v4)
  {
    v6 = v1[2];
    v7 = OUTLINED_FUNCTION_60();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x23192A860](v6, MEMORY[0x277D837D0]);
    v11 = sub_2311CFD58(v9, v10, &v20);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_19_1(&dword_2311CB000, v12, v13, "AppInstallAutoCompleteIndexUpdater got called with appUnInstalled - %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  v14 = *(v5 + 8);
  v15 = OUTLINED_FUNCTION_28_0();
  v14(v15);
  v1[8] = v14;
  OUTLINED_FUNCTION_3_2((v1[3] + 112));
  OUTLINED_FUNCTION_3_3();
  v16 = swift_task_alloc();
  v1[9] = v16;
  *v16 = v1;
  v17 = OUTLINED_FUNCTION_10_19(v16);

  return v18(v17);
}

uint64_t sub_2312A4A10()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9();
  *v5 = v4;
  *(v2 + 80) = v0;

  if (v0)
  {
    v6 = *(v2 + 24);

    return MEMORY[0x2822009F8](sub_2312A4B44, v6, 0);
  }

  else
  {

    OUTLINED_FUNCTION_56_0();

    return v7();
  }
}

uint64_t sub_2312A4B44()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_18_15();
  sub_2313690F0();
  v1 = sub_2313698A0();
  v2 = sub_23136A3B0();
  if (OUTLINED_FUNCTION_40_1(v2))
  {
    v3 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v3);
    OUTLINED_FUNCTION_0_26();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_20_17();

  v9 = OUTLINED_FUNCTION_28_0();
  v0(v9);

  OUTLINED_FUNCTION_56_0();

  return v10();
}

uint64_t sub_2312A4C14()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313698C0();
  OUTLINED_FUNCTION_4_17(v3);
  v1[5] = v4;
  v5 = OUTLINED_FUNCTION_62_0();
  v1[7] = OUTLINED_FUNCTION_23_13(v5);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312A4CD0()
{
  OUTLINED_FUNCTION_60_0();
  if (v0[2] == 1)
  {
    sub_231369100();
    v1 = sub_2313698A0();
    v2 = sub_23136A3A0();
    if (OUTLINED_FUNCTION_40_1(v2))
    {
      v3 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_68(v3);
      OUTLINED_FUNCTION_0_26();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
      OUTLINED_FUNCTION_9_10();
    }

    v9 = v0[5];
    v10 = v0[3];

    v0[10] = *(v9 + 8);
    v11 = OUTLINED_FUNCTION_28_0();
    v12(v11);
    v13 = v10[17];
    v14 = v10[18];
    OUTLINED_FUNCTION_3_2(v10 + 14);
    OUTLINED_FUNCTION_3_3();
    v29 = (v15 + *v15);
    v16 = swift_task_alloc();
    v0[11] = v16;
    *v16 = v0;
    v16[1] = sub_2312A4F30;

    return v29(1, v13, v14);
  }

  else
  {
    sub_231369100();
    v18 = sub_2313698A0();
    v19 = sub_23136A3A0();
    v20 = OUTLINED_FUNCTION_40_1(v19);
    v21 = v0[5];
    if (v20)
    {
      v22 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_68(v22);
      OUTLINED_FUNCTION_0_26();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_9_10();
    }

    (*(v21 + 8))(v0[7], v0[4]);

    OUTLINED_FUNCTION_56_0();

    return v28();
  }
}

uint64_t sub_2312A4F30()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  *(v8 + 96) = v7;
  *(v8 + 104) = v0;

  v9 = *(v2 + 24);
  if (v0)
  {
    v10 = sub_2312A5164;
  }

  else
  {
    v10 = sub_2312A505C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_2312A505C()
{
  OUTLINED_FUNCTION_16();
  sub_231369100();
  v1 = sub_2313698A0();
  v2 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v2))
  {
    v3 = *(v0 + 96);
    v4 = OUTLINED_FUNCTION_60();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    OUTLINED_FUNCTION_0_26();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    OUTLINED_FUNCTION_9_10();
  }

  (*(v0 + 80))(*(v0 + 64), *(v0 + 32));

  OUTLINED_FUNCTION_56_0();

  return v10();
}

uint64_t sub_2312A5164()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_18_15();
  sub_2313690F0();
  v1 = sub_2313698A0();
  v2 = sub_23136A3B0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 104);
  if (v3)
  {
    *OUTLINED_FUNCTION_63() = 0;
    OUTLINED_FUNCTION_19_0(&dword_2311CB000, v5, v6, "Error BuildAutoCompleteIndex on GM status change");
    OUTLINED_FUNCTION_29();
  }

  (*(v0 + 80))(*(v0 + 48), *(v0 + 32));

  OUTLINED_FUNCTION_56_0();

  return v7();
}

uint64_t sub_2312A526C()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v0;
  v1[3] = sub_2313698C0();
  OUTLINED_FUNCTION_3_3();
  v1[4] = v2;
  v1[5] = OUTLINED_FUNCTION_62_0();
  v3 = swift_task_alloc();
  v1[7] = OUTLINED_FUNCTION_23_13(v3);
  v4 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312A5324()
{
  OUTLINED_FUNCTION_60_0();
  sub_231369100();
  v1 = sub_2313698A0();
  v2 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v2))
  {
    v3 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v3);
    OUTLINED_FUNCTION_0_26();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_9_10();
  }

  v9 = v0[4];
  v10 = v0[2];

  v0[8] = *(v9 + 8);
  v11 = OUTLINED_FUNCTION_28_0();
  v12(v11);
  v13 = v10[17];
  v14 = v10[18];
  OUTLINED_FUNCTION_3_2(v10 + 14);
  OUTLINED_FUNCTION_3_3();
  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_2312A54B4;

  return (v18)(0, v13, v14);
}

uint64_t sub_2312A54B4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  *(v8 + 80) = v7;
  *(v8 + 88) = v0;

  v9 = *(v2 + 16);
  if (v0)
  {
    v10 = sub_2312A56E0;
  }

  else
  {
    v10 = sub_2312A55E0;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_2312A55E0()
{
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_18_15();
  sub_231369100();
  v1 = sub_2313698A0();
  v2 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v2))
  {
    v3 = v0[10];
    v4 = OUTLINED_FUNCTION_60();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    OUTLINED_FUNCTION_0_26();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    OUTLINED_FUNCTION_9_10();
  }

  v10 = v0[8];
  v11 = v0[6];
  v12 = v0[3];

  v10(v11, v12);

  OUTLINED_FUNCTION_56_0();

  return v13();
}

uint64_t sub_2312A56E0()
{
  OUTLINED_FUNCTION_60_0();
  sub_2313690F0();
  v1 = sub_2313698A0();
  v2 = sub_23136A3B0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[11];
  if (v3)
  {
    *OUTLINED_FUNCTION_63() = 0;
    OUTLINED_FUNCTION_19_0(&dword_2311CB000, v5, v6, "Error BuildAutoCompleteIndex OnSiriLocaleChange");
    OUTLINED_FUNCTION_29();
  }

  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[3];

  v7(v8, v9);

  OUTLINED_FUNCTION_56_0();

  return v10();
}

uint64_t sub_2312A57E8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_8_5(sub_2312A5808, v2);
}

uint64_t sub_2312A5808()
{
  OUTLINED_FUNCTION_60_0();
  v1 = v0[12];
  v2 = sub_231368E60();
  swift_allocObject();
  swift_unknownObjectRetain();
  v3 = sub_231368E50();
  sub_231366F90();
  v4 = MEMORY[0x277D611E8];
  v0[5] = v2;
  v0[6] = v4;
  v0[2] = v3;
  swift_beginAccess();

  sub_2312A5F70((v0 + 2), v1 + 152);
  swift_endAccess();
  v5 = sub_231366FB0();
  swift_allocObject();
  swift_unknownObjectRetain();
  v6 = sub_231366FA0();
  sub_231366F90();
  v7 = MEMORY[0x277D607C8];
  v0[5] = v5;
  v0[6] = v7;

  v0[2] = v6;
  swift_beginAccess();
  sub_2312A5F70((v0 + 2), v1 + 192);
  swift_endAccess();
  OUTLINED_FUNCTION_56_0();

  return v8();
}

uint64_t sub_2312A5984()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  if (*(v1 + 176))
  {
    sub_2311CF324(v1 + 152, v0 + 16);
    OUTLINED_FUNCTION_3_2((v0 + 16));
    OUTLINED_FUNCTION_28_0();
    sub_231368C30();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v2 = *(v0 + 104);
  swift_beginAccess();
  if (*(v2 + 216))
  {
    sub_2311CF324(v2 + 192, v0 + 16);
    OUTLINED_FUNCTION_3_2((v0 + 16));
    OUTLINED_FUNCTION_28_0();
    sub_231368C30();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_2312A5A70()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  sub_2312A5FE0(v0 + 152);
  sub_2312A5FE0(v0 + 192);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2312A5AA8()
{
  sub_2312A5A70();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2312A5AF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2312A6048;

  return sub_2312A42AC();
}

uint64_t sub_2312A5B90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2312A6048;

  return sub_2312A4760();
}

uint64_t sub_2312A5C28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2312A6048;

  return sub_2312A4C14();
}

uint64_t sub_2312A5CC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2312A5D50;

  return sub_2312A526C();
}

uint64_t sub_2312A5D50()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  OUTLINED_FUNCTION_9();
  *v2 = v1;

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_2312A5E38(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2312A6048;

  return sub_2312A57E8(a1, a2);
}

uint64_t sub_2312A5EE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2312A6048;

  return sub_2312A5968();
}

uint64_t sub_2312A5F70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44510, &qword_231374330);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312A5FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44510, &qword_231374330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_23_13(uint64_t a1)
{
  *(v1 + 48) = a1;

  return swift_task_alloc();
}

uint64_t sub_2312A6070(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E6604(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_2312ADA24(v9);
  *a1 = v2;
  return result;
}

void sub_2312A60DC(uint64_t *a1)
{
  v2 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  OUTLINED_FUNCTION_40_0(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E667C(v5, v6, v7, v8);
    v5 = v9;
  }

  v10 = *(v5 + 16);
  v11[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11[1] = v10;
  sub_2312ADB28(v11);
  *a1 = v5;
}

uint64_t sub_2312A6180(void *a1, void *a2, uint64_t *a3, uint64_t *a4, __int128 *a5)
{
  v6 = v5;
  v11 = sub_2313698C0();
  OUTLINED_FUNCTION_21();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  v17 = v16 - v15;
  v18 = *a3;
  v24 = *a4;
  sub_2311CF324(a2, v6 + 56);
  sub_2311CF324(a1, v6 + 16);
  sub_231369100();
  v19 = sub_2313698A0();
  v20 = sub_23136A3A0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2311CB000, v19, v20, "Warming up signal configurators by getting configurators for HomeScreenTier1 signal.", v21, 2u);
    OUTLINED_FUNCTION_29();
  }

  (*(v13 + 8))(v17, v11);
  sub_2311CF324(v6 + 16, v26);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2313707C0;
  sub_2313692F0();
  *(v22 + 32) = sub_231369270();
  sub_2313685B0();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  *(v6 + 96) = v18;
  *(v6 + 104) = v24;
  sub_2311D38A8(a5, v6 + 112);
  return v6;
}

uint64_t sub_2312A639C()
{
  OUTLINED_FUNCTION_8();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = sub_231367C70();
  v1[16] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[17] = v6;
  v1[18] = OUTLINED_FUNCTION_43();
  v7 = sub_2313698C0();
  v1[19] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[20] = v8;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2312A64A4()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[15];
  v2 = v1[10];
  v3 = v1[11];
  OUTLINED_FUNCTION_3_2(v1 + 7);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[23] = v4;
  *v4 = v5;
  v4[1] = sub_2312A6558;
  v6 = v0[12];
  v7 = v0[13];

  return MEMORY[0x2821C74E8](v0 + 2, v6, v7, v2, v3);
}

uint64_t sub_2312A6558()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312A663C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  if (v20[5])
  {
    OUTLINED_FUNCTION_3_2(v20 + 2);
    v23 = swift_task_alloc();
    v20[24] = v23;
    *v23 = v20;
    v23[1] = sub_2312A68CC;
    OUTLINED_FUNCTION_40();

    return MEMORY[0x2821C6B98](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }

  else
  {
    sub_2311D1F18((v20 + 2), &qword_27DD43220, &qword_23136BCC0);
    v20[26] = MEMORY[0x277D84F90];
    sub_231369150();
    sub_231369EE0();
    v32 = sub_2313698A0();
    v33 = sub_23136A390();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v20[20];
    if (v34)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      a9 = v37;
      *v36 = 136315138;
      v38 = sub_2313692F0();
      v39 = MEMORY[0x23192A860](MEMORY[0x277D84F90], v38);
      v41 = sub_2311CFD58(v39, v40, &a9);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_2311CB000, v32, v33, "SignalGenerator: got signals: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    v42 = *(v35 + 8);
    v43 = OUTLINED_FUNCTION_28_0();
    v42(v43);
    OUTLINED_FUNCTION_51_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436C0, &qword_23136D378);
    OUTLINED_FUNCTION_1_27();
    sub_2312AFBEC(v44, 255, v45, MEMORY[0x277D60CC8]);
    OUTLINED_FUNCTION_28_0();
    v46 = sub_231369EC0();
    OUTLINED_FUNCTION_31_14(v46);
    OUTLINED_FUNCTION_39_9();
    v47 = swift_task_alloc();
    v20[29] = v47;
    *v47 = v20;
    OUTLINED_FUNCTION_11_18(v47);
    OUTLINED_FUNCTION_40();

    return sub_2312A703C();
  }
}

uint64_t sub_2312A68CC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312A69B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v33 = v12;
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 2);
  v13 = v12[25];
  v12[26] = v13;
  sub_231369150();
  sub_231369EE0();
  v14 = sub_2313698A0();
  v15 = sub_23136A390();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v12[22];
  v19 = v12[19];
  v18 = v12[20];
  if (v16)
  {
    v31 = v12[22];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v21;
    *v20 = 136315138;
    v22 = sub_2313692F0();
    v23 = MEMORY[0x23192A860](v13, v22);
    v25 = sub_2311CFD58(v23, v24, &v32);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_2311CB000, v14, v15, "SignalGenerator: got signals: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v18 + 8))(v31, v19);
  }

  else
  {

    (*(v18 + 8))(v17, v19);
  }

  OUTLINED_FUNCTION_51_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436C0, &qword_23136D378);
  OUTLINED_FUNCTION_1_27();
  sub_2312AFBEC(v26, 255, v27, MEMORY[0x277D60CC8]);
  v28 = sub_231369EC0();
  OUTLINED_FUNCTION_31_14(v28);
  OUTLINED_FUNCTION_39_9();
  v29 = swift_task_alloc();
  v12[29] = v29;
  *v29 = v12;
  OUTLINED_FUNCTION_11_18(v29);

  return sub_2312A703C();
}

uint64_t sub_2312A6BCC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = v4[18];
  v6 = v4[17];
  v7 = v4[16];
  v8 = *v0;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  *(v2 + 240) = v10;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  (*(v6 + 8))(v5, v7);
  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_2312A6D54()
{
  v24 = v0;
  v1 = *(v0 + 240);
  OUTLINED_FUNCTION_30_12();
  v4 = v3 & v2;
  v6 = (63 - v5) >> 6;
  sub_231369EE0();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (!v4)
      {
        while (1)
        {
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v9 >= v6)
          {
            goto LABEL_18;
          }

          v4 = *(v1 + 64 + 8 * v9);
          ++v7;
          if (v4)
          {
            v7 = v9;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

LABEL_7:
      v10 = *(*(v1 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
      v11 = *(v10 + 16);
      v12 = *(v8 + 16);
      if (__OFADD__(v12, v11))
      {
        goto LABEL_22;
      }

      sub_231369EE0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v12 + v11 > *(v8 + 24) >> 1)
      {
        OUTLINED_FUNCTION_44_8();
        sub_23126DF64(v13);
        v8 = v14;
      }

      v4 &= v4 - 1;
      if (!*(v10 + 16))
      {
        break;
      }

      if ((*(v8 + 24) >> 1) - *(v8 + 16) < v11)
      {
        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
      swift_arrayInitWithCopy();

      if (v11)
      {
        v15 = *(v8 + 16);
        v16 = __OFADD__(v15, v11);
        v17 = v15 + v11;
        if (v16)
        {
          goto LABEL_24;
        }

        *(v8 + 16) = v17;
      }
    }
  }

  while (!v11);
  __break(1u);
LABEL_18:

  v23 = v8;
  sub_231369EE0();
  sub_2312A6070(&v23);
  v18 = *(v22 + 216);

  v19 = v23;
  sub_231369170();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
  sub_231369890();
  v20 = OUTLINED_FUNCTION_26_1();
  v18(v20);

  OUTLINED_FUNCTION_14();

  v21(v19);
}

uint64_t sub_2312A703C()
{
  OUTLINED_FUNCTION_8();
  v1[37] = v2;
  v1[38] = v0;
  v1[35] = v3;
  v1[36] = v4;
  v1[33] = v5;
  v1[34] = v6;
  v1[31] = v7;
  v1[32] = v8;
  v1[30] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44518, &qword_231374430);
  v1[39] = v10;
  OUTLINED_FUNCTION_40_0(v10);
  v1[40] = OUTLINED_FUNCTION_43();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44520, &qword_231374438);
  OUTLINED_FUNCTION_40_0(v11);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44528, &qword_231374440);
  OUTLINED_FUNCTION_40_0(v12);
  v1[43] = OUTLINED_FUNCTION_43();
  v13 = sub_231367E50();
  v1[44] = v13;
  OUTLINED_FUNCTION_0(v13);
  v1[45] = v14;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v15 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  v1[48] = v15;
  OUTLINED_FUNCTION_0(v15);
  v1[49] = v16;
  v1[50] = OUTLINED_FUNCTION_43();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44530, &qword_231374448);
  OUTLINED_FUNCTION_40_0(v17);
  v1[51] = OUTLINED_FUNCTION_43();
  v18 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_2312A7218()
{
  v1 = *(v0 + 248);
  if (v1 >> 62)
  {
    goto LABEL_42;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_43:
    sub_231369EE0();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_35();

    __asm { BRAA            X2, X16 }
  }

LABEL_3:
  v2 = *(v0 + 304);
  v3 = sub_231369EE0();
  v4 = sub_23125566C(v3);
  v5 = sub_2312594B8(v4);

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v64 = v5;
  OUTLINED_FUNCTION_37_12();
  v0 = sub_2313685B0() + 64;
  OUTLINED_FUNCTION_30_12();
  v8 = v7 & v6;
  v10 = (63 - v9) >> 6;
  v67 = v11;
  sub_231369EE0();
  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v65 = v10;
  v66 = v0;
  if (v8)
  {
LABEL_4:
    v70 = v12;
    v15 = v68;
    goto LABEL_10;
  }

LABEL_5:
  v15 = v68;
  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      if (!sub_23136A5A0())
      {
        goto LABEL_43;
      }

      goto LABEL_3;
    }

    if (v16 >= v10)
    {
      break;
    }

    v8 = *(v0 + 8 * v16);
    ++v13;
    if (v8)
    {
      v70 = v12;
      v13 = v16;
LABEL_10:
      v17 = v15[37];
      v18 = v15[38];
      v69 = v15[36];
      v19 = v15[32];
      v20 = v15[30];
      v21 = (v13 << 9) | (8 * __clz(__rbit64(v8)));
      v22 = *(*(v67 + 48) + v21);
      v23 = *(*(v67 + 56) + v21);
      v24 = swift_task_alloc();
      v24[2] = v18;
      v24[3] = v22;
      v24[4] = v20;
      v24[5] = v17;
      v24[6] = v19;
      v24[7] = v69;

      sub_231369EE0();
      v12 = v70;
      v25 = sub_2312E3730(sub_2312AF8B4, v24, v23);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = OUTLINED_FUNCTION_4_18();
        sub_23126E2DC(v27);
        v14 = v28;
      }

      v26 = *(v14 + 16);
      v10 = v65;
      v0 = v66;
      if (v26 >= *(v14 + 24) >> 1)
      {
        OUTLINED_FUNCTION_44_8();
        sub_23126E2DC(v29);
        v14 = v30;
      }

      v8 &= v8 - 1;
      *(v14 + 16) = v26 + 1;
      *(v14 + 8 * v26 + 32) = v25;
      if (v8)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  v0 = v67;

  v31 = 0;
  v32 = *(v14 + 16);
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v68 + 416) = v33;
    if (v32 == v31)
    {
      break;
    }

    if (v31 >= *(v14 + 16))
    {
      goto LABEL_37;
    }

    v34 = *(v14 + 8 * v31 + 32);
    v35 = *(v34 + 16);
    v36 = *(v33 + 16);
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      goto LABEL_38;
    }

    sub_231369EE0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v37 > *(v33 + 24) >> 1)
    {
      if (v36 <= v37)
      {
        v39 = v36 + v35;
      }

      else
      {
        v39 = v36;
      }

      sub_23126E29C(isUniquelyReferenced_nonNull_native, v39, 1, v33);
      v33 = v40;
    }

    if (*(v34 + 16))
    {
      v0 = (*(v33 + 24) >> 1) - *(v33 + 16);
      type metadata accessor for SignalGenerator.NewSuggestionRequest(0);
      if (v0 < v35)
      {
        goto LABEL_40;
      }

      swift_arrayInitWithCopy();

      if (v35)
      {
        v41 = *(v33 + 16);
        v42 = __OFADD__(v41, v35);
        v43 = v41 + v35;
        if (v42)
        {
          goto LABEL_41;
        }

        *(v33 + 16) = v43;
      }
    }

    else
    {

      if (v35)
      {
        goto LABEL_39;
      }
    }

    ++v31;
  }

  v44 = *(v68 + 408);
  v45 = *(v68 + 304);
  v46 = *(v68 + 272);
  v47 = *(v68 + 280);
  v48 = *(v68 + 264);

  v49 = sub_2312A8A38(v64);

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44538, &qword_231374450);
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v50);
  sub_2311CF324(v48, v68 + 72);
  v51 = swift_allocObject();
  *(v68 + 424) = v51;
  *(v51 + 16) = v45;
  *(v51 + 24) = v46;
  sub_2311D38A8((v68 + 72), v51 + 32);
  *(v51 + 72) = v47;
  *(v51 + 80) = v49 & 1;
  sub_231369EE0();

  v52 = swift_task_alloc();
  *(v68 + 432) = v52;
  type metadata accessor for SignalGenerator.NewSuggestionRequest(0);
  *v52 = v68;
  v52[1] = sub_2312A7774;
  OUTLINED_FUNCTION_35();

  return MEMORY[0x2821C6B08](v53, v54, v55, v56, v57, v58, v59, v60);
}

void sub_2312A7774()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 440) = v5;

  if (v0)
  {
  }

  else
  {
    sub_2311D1F18(*(v3 + 408), &qword_27DD44530, &qword_231374448);

    v6 = OUTLINED_FUNCTION_1();

    MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_2312A78BC()
{
  v69 = v0;
  v1 = v0[55];
  sub_2312ACCD8(v1, v0[31], v0[34]);
  v60 = v1;
  v57 = *(v1 + 16);
  if (!v57)
  {
    sub_231369EE0();

    v41 = v0[35];
    v2 = v41;
LABEL_39:
    if (*(v41 + 16) < *(v0[38] + 96))
    {
      v43 = sub_231369EE0();
      v44 = sub_23125566C(v43);
      v0[56] = sub_2312594B8(v44);

      result = sub_23125D7A0();
      v0[57] = result;
      if (result)
      {
        v45 = v0[34];
        v0[58] = v45 + 1;
        if (!__OFADD__(v45, 1))
        {
          v0[59] = v2;
          v46 = v0[56];
          v47 = v46 & 0xC000000000000001;
          sub_23120DE34(0, (v46 & 0xC000000000000001) == 0, v46);
          v48 = v0[56];
          if (v47)
          {
            v49 = MEMORY[0x23192AD10](0, v48);
          }

          else
          {
            v49 = *(v48 + 32);
          }

          v0[60] = v49;
          v0[61] = 1;
          if (v0[30])
          {
            v52 = v0[30];
          }

          else
          {

            v52 = v49;
          }

          v0[62] = v52;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2313707C0;
          *(inited + 32) = v49;

          v0[63] = sub_2312A8FE0(inited);
          swift_setDeallocating();
          sub_231322A48();
          v54 = swift_task_alloc();
          v0[64] = v54;
          *v54 = v0;
          OUTLINED_FUNCTION_12_15(v54);
          OUTLINED_FUNCTION_33_0();

          return sub_2312A703C();
        }

LABEL_57:
        __break(1u);
        return result;
      }
    }

    OUTLINED_FUNCTION_50_6();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_33_0();

    __asm { BRAA            X2, X16 }
  }

  v56 = v0[48];
  v2 = v0[35];
  v59 = v0[49];
  v58 = v0[55] + ((*(v59 + 80) + 32) & ~*(v59 + 80));
  v62 = (v0[45] + 16);
  result = sub_231369EE0();
  v4 = 0;
  while (1)
  {
    if (v4 >= *(v60 + 16))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v5 = v0[50];
    v61 = v4;
    sub_2312AFA7C(v58 + *(v59 + 72) * v4, v5);
    v66 = *(*v5 + 16);
    if (v66)
    {
      break;
    }

LABEL_33:
    v4 = v61 + 1;
    result = sub_2312AFAD8(v0[50], type metadata accessor for SignalGenerator.NewSuggestionResult);
    if (v61 + 1 == v57)
    {

      v41 = v0[35];
      goto LABEL_39;
    }
  }

  v6 = 0;
  v63 = *v5 + 32;
  v64 = *(v56 + 20);
  v65 = v0[50];
  while (1)
  {
    sub_2311CF324(v63 + 40 * v6, (v0 + 14));
    if (*(v2 + 16) && (v7 = sub_2312163D4(), (v8 & 1) != 0))
    {
      v9 = *(*(v2 + 56) + 8 * v7);
      sub_231369EE0();
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    ++v6;
    v10 = *(v9 + 16);
    v11 = v9 + 32;
    sub_231369EE0();
    v12 = v10 + 1;
    while (--v12)
    {
      v13 = OUTLINED_FUNCTION_40_10();
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v15 = sub_231368320();
      v17 = v16;
      __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
      if (v15 == sub_231368320() && v17 == v18)
      {

LABEL_24:

        goto LABEL_25;
      }

      v11 += 40;
      v20 = sub_23136A900();

      if (v20)
      {
        goto LABEL_24;
      }
    }

    sub_2311CF324((v0 + 14), (v0 + 24));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = OUTLINED_FUNCTION_23();
      sub_23126DF64(v38);
      v9 = v39;
      v67 = v39;
    }

    v23 = *(v9 + 16);
    v22 = *(v9 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_23126DF64(v22 > 1);
      v9 = v40;
      v67 = v40;
    }

    v24 = v0[27];
    v25 = v0[28];
    v26 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 24), v24);
    OUTLINED_FUNCTION_21();
    v28 = v27;
    v29 = OUTLINED_FUNCTION_43();
    (*(v28 + 16))(v29, v26, v24);
    sub_2312E6494(v23, v29, &v67, v24, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

LABEL_25:
    swift_isUniquelyReferenced_nonNull_native();
    v68 = v2;
    result = sub_2312163D4();
    if (__OFADD__(*(v2 + 16), (v30 & 1) == 0))
    {
      __break(1u);
      goto LABEL_56;
    }

    v31 = result;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44540, &qword_231374468);
    v33 = sub_23136A700();
    v2 = v68;
    if (v33)
    {
      break;
    }

LABEL_29:
    if (v32)
    {
      *(*(v2 + 56) + 8 * v31) = v9;
    }

    else
    {
      (*v62)(v0[47], v65 + v64, v0[44]);
      v36 = OUTLINED_FUNCTION_40_10();
      sub_23125A8A4(v36, v37, v9, v2);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
    if (v6 == v66)
    {
      goto LABEL_33;
    }
  }

  v34 = sub_2312163D4();
  if ((v32 & 1) == (v35 & 1))
  {
    v31 = v34;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_33_0();

  return sub_23136A970();
}

uint64_t sub_2312A7F48()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 520) = v5;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312A8064()
{
  v1 = v0[59];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[29] = v1;
  sub_2312B7234();
  v67 = v0[2];
  v65 = v0[3];
  v3 = v0[5];
  v66 = v0[7];
  v4 = v0[6];
  v64 = (v0[4] + 64) >> 6;
  v5 = v0[59];
  result = sub_231369EE0();
  while (1)
  {
    v7 = v4;
    v8 = v3;
    v69 = isUniquelyReferenced_nonNull_native;
    if (!v4)
    {
      v9 = v3;
      while (1)
      {
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v8 >= v64)
        {
          __swift_storeEnumTagSinglePayload(v0[42], 1, 1, v0[39]);
          v68 = 0;
          goto LABEL_8;
        }

        v7 = *(v65 + 8 * v8);
        ++v9;
        if (v7)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return result;
    }

LABEL_7:
    v10 = v0[47];
    v12 = v0[44];
    v11 = v0[45];
    v13 = v0[42];
    v14 = v0[39];
    v68 = (v7 - 1) & v7;
    v15 = __clz(__rbit64(v7)) | (v8 << 6);
    (*(v11 + 16))(v10, *(v67 + 48) + *(v11 + 72) * v15, v12);
    v16 = *(*(v67 + 56) + 8 * v15);
    v17 = v5;
    v18 = *(v14 + 48);
    (*(v11 + 32))(v13, v10, v12);
    *(v13 + v18) = v16;
    v5 = v17;
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
    sub_231369EE0();
    v9 = v8;
LABEL_8:
    v19 = v0[41];
    v20 = v0[39];
    sub_2312AFC34(v0[42], v19, &qword_27DD44520, &qword_231374438);
    v21 = 1;
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
    {
      v22 = v0[40];
      sub_2312AFC34(v0[41], v22, &qword_27DD44518, &qword_231374430);
      v66(v22);
      OUTLINED_FUNCTION_37_12();
      sub_2311D1F18(v23, v24, v25);
      v21 = 0;
    }

    v26 = v0[43];
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44548, &qword_231374470);
    __swift_storeEnumTagSinglePayload(v26, v21, 1, v27);
    v28 = OUTLINED_FUNCTION_26_1();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    if (__swift_getEnumTagSinglePayload(v26, 1, v30) == 1)
    {
      break;
    }

    v31 = v0[43];
    v32 = *(v0[45] + 32);
    v33 = *(v30 + 48);
    v34 = OUTLINED_FUNCTION_26_1();
    v32(v34);
    v35 = *(v31 + v33);
    v37 = sub_2312163D4();
    v38 = v5[2];
    v39 = (v36 & 1) == 0;
    result = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_41;
    }

    v40 = v36;
    if (v5[3] >= result)
    {
      if ((v69 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44540, &qword_231374468);
        sub_23136A710();
      }
    }

    else
    {
      sub_2312B4AF8();
      v41 = sub_2312163D4();
      if ((v40 & 1) != (v42 & 1))
      {
        OUTLINED_FUNCTION_47();

        return sub_23136A970();
      }

      v37 = v41;
    }

    v5 = v0[29];
    v44 = v0[45];
    v43 = v0[46];
    v45 = v0[44];
    if (v40)
    {
      (*(v44 + 8))(v0[46], v0[44]);
      *(v5[7] + 8 * v37) = v35;
    }

    else
    {
      v5[(v37 >> 6) + 8] |= 1 << v37;
      result = (v32)(v5[6] + *(v44 + 72) * v37, v43, v45);
      *(v5[7] + 8 * v37) = v35;
      v46 = v5[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_42;
      }

      v5[2] = v48;
    }

    isUniquelyReferenced_nonNull_native = 1;
    v3 = v9;
    v4 = v68;
  }

  v49 = v5;
  v50 = v0[61];
  v51 = v0[57];
  sub_2311D3BBC(v67);

  if (v50 == v51)
  {

    OUTLINED_FUNCTION_50_6();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_47();

    __asm { BRAA            X2, X16 }
  }

  v54 = v0[61];
  v0[59] = v49;
  v55 = v0[56];
  v56 = v55 & 0xC000000000000001;
  sub_23120DE34(v54, (v55 & 0xC000000000000001) == 0, v55);
  v57 = v0[56];
  if (v56)
  {
    result = MEMORY[0x23192AD10](v54, v57);
    v58 = result;
  }

  else
  {
    v58 = *(v57 + 8 * v54 + 32);
  }

  v0[60] = v58;
  v0[61] = v54 + 1;
  if (__OFADD__(v54, 1))
  {
    goto LABEL_43;
  }

  if (v0[30])
  {
    v60 = v0[30];
  }

  else
  {

    v60 = v58;
  }

  v0[62] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2313707C0;
  *(inited + 32) = v58;

  v0[63] = sub_2312A8FE0(inited);
  swift_setDeallocating();
  sub_231322A48();
  v62 = swift_task_alloc();
  v0[64] = v62;
  *v62 = v0;
  OUTLINED_FUNCTION_12_15(v62);
  OUTLINED_FUNCTION_47();

  return sub_2312A703C();
}

uint64_t sub_2312A8654(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_231368320();
  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (v3 == sub_231368320() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_23136A900();
  }

  return v8 & 1;
}

uint64_t sub_2312A8720(void *a1)
{
  v2 = sub_231367F40();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23136D280;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_231368320();
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313682B0();
  v15 = sub_2313676B0();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1)
  {
    sub_2311D1F18(v11, &qword_27DD432D8, &unk_23136BED0);
LABEL_4:
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    goto LABEL_6;
  }

  v16 = sub_2313676A0();
  v18 = v17;
  (*(*(v15 - 8) + 8))(v11, v15);
  if (v18)
  {
    goto LABEL_4;
  }

  *(v12 + 88) = MEMORY[0x277D839F8];
  *(v12 + 64) = v16;
LABEL_6:
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313682B0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v15) == 1)
  {
    sub_2311D1F18(v8, &qword_27DD432D8, &unk_23136BED0);
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
  }

  else
  {
    sub_231367680();
    (*(*(v15 - 8) + 8))(v8, v15);
    *(v12 + 120) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 96));
    (*(v3 + 32))(boxed_opaque_existential_1, v5, v2);
  }

  return v12;
}

uint64_t sub_2312A8A38(uint64_t a1)
{
  v2 = sub_231367D20();
  OUTLINED_FUNCTION_21();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v34 = (v7 - v6);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444C8, &unk_2313744B0);
  v8 = OUTLINED_FUNCTION_40_0(v39);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444D0, &unk_231373E70);
  v12 = OUTLINED_FUNCTION_40_0(v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  result = sub_23125D7A0();
  v22 = 0;
  v41 = a1;
  v42 = a1 & 0xC000000000000001;
  v40 = a1 & 0xFFFFFFFFFFFFFF8;
  v23 = result;
  v38 = *MEMORY[0x277D60B48];
  v32 = (v4 + 32);
  v33 = result;
  v36 = (v4 + 8);
  v37 = (v4 + 104);
  while (1)
  {
    if (v23 == v22)
    {
      return v23 != v22;
    }

    if (v42)
    {
      result = MEMORY[0x23192AD10](v22, v41);
    }

    else
    {
      if (v22 >= *(v40 + 16))
      {
        goto LABEL_21;
      }
    }

    if (__OFADD__(v22, 1))
    {
      break;
    }

    sub_231369240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F70, &qword_2313744C0);
    v24 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v20, v24 ^ 1u, 1, v2);
    (*v37)(v17, v38, v2);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v2);
    v25 = *(v39 + 48);
    sub_23129C608(v20, v10);
    sub_23129C608(v17, &v10[v25]);
    OUTLINED_FUNCTION_53(v10);
    if (v26)
    {

      sub_2311D1F18(v17, &qword_27DD444D0, &unk_231373E70);
      OUTLINED_FUNCTION_53(&v10[v25]);
      if (v26)
      {
        v30 = OUTLINED_FUNCTION_40_10();
        sub_2311D1F18(v30, v31, &unk_231373E70);
        sub_2311D1F18(v20, &qword_27DD444D0, &unk_231373E70);
        return v23 != v22;
      }

      goto LABEL_15;
    }

    sub_23129C608(v10, v14);
    OUTLINED_FUNCTION_53(&v10[v25]);
    if (v26)
    {

      sub_2311D1F18(v17, &qword_27DD444D0, &unk_231373E70);
      (*v36)(v14, v2);
LABEL_15:
      sub_2311D1F18(v10, &qword_27DD444C8, &unk_2313744B0);
      result = sub_2311D1F18(v20, &qword_27DD444D0, &unk_231373E70);
      goto LABEL_17;
    }

    v27 = v14;
    v28 = v34;
    (*v32)(v34, &v10[v25], v2);
    sub_2312AFBEC(&qword_27DD444D8, 255, MEMORY[0x277D60B68], MEMORY[0x277D60B70]);
    v35 = sub_231369F60();

    v29 = *v36;
    (*v36)(v28, v2);
    sub_2311D1F18(v17, &qword_27DD444D0, &unk_231373E70);
    v29(v27, v2);
    sub_2311D1F18(v10, &qword_27DD444D0, &unk_231373E70);
    v14 = v27;
    v23 = v33;
    result = sub_2311D1F18(v20, &qword_27DD444D0, &unk_231373E70);
    if (v35)
    {
      return v23 != v22;
    }

LABEL_17:
    ++v22;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2312A8F0C(uint64_t a1)
{
  sub_231367F40();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  (*(v4 + 104))(v3 - v2, *MEMORY[0x277D60D30]);
  return sub_231367690();
}

uint64_t sub_2312A8FE0(uint64_t a1)
{
  result = sub_23125D7A0();
  v3 = result;
  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F90];
  v27 = result;
  while (1)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v5)
    {
      result = MEMORY[0x23192AD10](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }
    }

    v7 = __OFADD__(v4++, 1);
    if (v7)
    {
      break;
    }

    v8 = sub_231369280();

    if (v8 >> 62)
    {
      v9 = sub_23136A5A0();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v6 >> 62;
    if (v6 >> 62)
    {
      result = sub_23136A5A0();
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = result + v9;
    if (__OFADD__(result, v9))
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v10)
      {
LABEL_17:
        sub_23136A5A0();
      }

LABEL_18:
      result = sub_23136A670();
      v6 = result;
      v12 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_19;
    }

    if (v10)
    {
      goto LABEL_17;
    }

    v12 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v11 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

LABEL_19:
    v29 = v12;
    v30 = v6;
    v13 = *(v12 + 16);
    v14 = (*(v12 + 24) >> 1) - v13;
    v15 = v12 + 8 * v13;
    if (v8 >> 62)
    {
      v18 = sub_23136A5A0();
      if (v18)
      {
        v19 = v18;
        result = sub_23136A5A0();
        if (v14 < result)
        {
          goto LABEL_45;
        }

        if (v19 < 1)
        {
          goto LABEL_46;
        }

        v28 = result;
        v20 = v15 + 32;
        sub_2312AF9B4();
        for (i = 0; i != v19; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44550, &unk_231374478);
          v22 = sub_23120DD0C(v31, i, v8);
          v24 = *v23;

          (v22)(v31, 0);
          *(v20 + 8 * i) = v24;
        }

        v5 = a1 & 0xC000000000000001;
        v3 = v27;
        v17 = v28;
        goto LABEL_29;
      }

LABEL_33:

      if (v9 > 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_33;
      }

      if (v14 < v16)
      {
        goto LABEL_44;
      }

      v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2313692F0();
      swift_arrayInitWithCopy();
LABEL_29:

      v6 = v30;
      if (v17 < v9)
      {
        goto LABEL_42;
      }

      if (v17 > 0)
      {
        v25 = *(v29 + 16);
        v7 = __OFADD__(v25, v17);
        v26 = v25 + v17;
        if (v7)
        {
          goto LABEL_43;
        }

        *(v29 + 16) = v26;
      }
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_2312A92F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = *v6;
  *(v7 + 324) = a6;
  *(v7 + 88) = a5;
  *(v7 + 96) = v8;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  *(v7 + 104) = type metadata accessor for SignalGenerator.NewSuggestionRequest(0);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  v9 = sub_2313698C0();
  *(v7 + 128) = v9;
  *(v7 + 136) = *(v9 - 8);
  *(v7 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  *(v7 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  v10 = sub_2313694E0();
  *(v7 + 176) = v10;
  *(v7 + 184) = *(v10 - 8);
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  v11 = sub_2313676B0();
  *(v7 + 208) = v11;
  *(v7 + 216) = *(v11 - 8);
  *(v7 + 224) = swift_task_alloc();
  v12 = sub_231367E50();
  *(v7 + 232) = v12;
  *(v7 + 240) = *(v12 - 8);
  *(v7 + 248) = swift_task_alloc();
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312A95D0, 0, 0);
}

uint64_t sub_2312A95D0()
{
  OUTLINED_FUNCTION_26();
  *(v0 + 320) = *(*(v0 + 104) + 20);
  v1 = OUTLINED_FUNCTION_28_0();
  __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_26_1();
  sub_231368DE0();
  v3 = OUTLINED_FUNCTION_28_0();
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 272) = v5;
  *v5 = v0;
  v5[1] = sub_2312A96B4;
  OUTLINED_FUNCTION_37_12();

  return MEMORY[0x2821C74A8](v6);
}

uint64_t sub_2312A96B4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 24) = v5;
  *(v1 + 16) = v0;
  *v2 = *v0;
  *(v1 + 325) = v5;
  *(v1 + 280) = v4;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_2312A97AC()
{
  v2 = *(v1 + 280);
  v3 = *(v1 + 232);
  v4 = *(v1 + 240);
  if (*(v1 + 325) != 1)
  {
    v19 = *(v1 + 32);
    v20 = *(v1 + 264);
    v21 = *(v1 + 56);
    OUTLINED_FUNCTION_53_8();
    (*(v4 + 32))(&v21[v22], v20, v3);
    goto LABEL_18;
  }

  v0 = *(v1 + 256);
  v5 = *(v1 + 88);
  v6 = *(v1 + 72);

  sub_2312A8F0C(v6);
  v7 = OUTLINED_FUNCTION_67_0();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_231368DE0();
  v9 = sub_231210C48(v0, v5);
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_28_0();
  v10(v11);
  if (v9)
  {
    if (*(v9 + 16))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v23 = *(v1 + 168);
    __swift_project_boxed_opaque_existential_1(*(v1 + 80), *(*(v1 + 80) + 24));
    sub_231369EC0();
    sub_2313687D0();
    v24 = sub_231367D80();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v24);
    v26 = *(v1 + 200);
    v88 = v10;
    if (EnumTagSinglePayload == 1)
    {
      v28 = *(v1 + 176);
      v27 = *(v1 + 184);
      sub_2311D1F18(*(v1 + 168), &qword_27DD42F18, &unk_23136B810);
      (*(v27 + 104))(v26, *MEMORY[0x277D61380], v28);
    }

    else
    {
      v29 = *(v1 + 184);
      v30 = *(v1 + 192);
      v31 = *(v1 + 168);
      v32 = *(v1 + 176);
      sub_231367D50();
      (*(*(v24 - 8) + 8))(v31, v24);
      (*(v29 + 32))(v26, v30, v32);
    }

    v33 = *(v1 + 216);
    v34 = *(v1 + 224);
    v36 = *(v1 + 200);
    v35 = *(v1 + 208);
    v37 = *(v1 + 184);
    v80 = *(v1 + 176);
    v0 = *(v1 + 152);
    v38 = *(v1 + 160);
    sub_2313687D0();
    (*(v33 + 16))(v0, v34, v35);
    __swift_storeEnumTagSinglePayload(v0, 0, 1, v35);
    v9 = sub_231368BD0();

    sub_2311D1F18(v0, &qword_27DD432D8, &unk_23136BED0);
    sub_2311D1F18(v38, &qword_27DD42F18, &unk_23136B810);
    (*(v37 + 8))(v36, v80);
    if (!v9)
    {
      v45 = *(v1 + 112);
      v44 = *(v1 + 120);
      v46 = *(v1 + 64);
      sub_231369150();
      sub_2312AFA7C(v46, v44);
      sub_2312AFA7C(v46, v45);
      v0 = sub_2313698A0();
      v47 = sub_23136A3B0();
      if (os_log_type_enabled(v0, v47))
      {
        v82 = *(v1 + 136);
        v48 = *(v1 + 120);
        v84 = *(v1 + 128);
        v86 = *(v1 + 144);
        v49 = *(v1 + 104);
        v81 = *(v1 + 112);
        v50 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *v50 = 136315394;
        __swift_project_boxed_opaque_existential_1((v48 + *(v49 + 20)), *(v48 + *(v49 + 20) + 24));
        sub_231368DE0();
        OUTLINED_FUNCTION_1_27();
        sub_2312AFBEC(v51, 255, v52, MEMORY[0x277D60CD8]);
        v53 = sub_23136A8B0();
        v55 = v54;
        v56 = OUTLINED_FUNCTION_26_1();
        v88(v56);
        sub_2312AFAD8(v48, type metadata accessor for SignalGenerator.NewSuggestionRequest);
        v57 = sub_2311CFD58(v53, v55, &v89);

        *(v50 + 4) = v57;
        *(v50 + 12) = 2080;
        *(v1 + 48) = sub_2313687A0();
        sub_2313692F0();
        sub_2312AFBEC(&qword_280F7C900, 255, MEMORY[0x277D612D0], MEMORY[0x277D612E8]);
        v58 = sub_23136A8B0();
        v60 = v59;

        sub_2312AFAD8(v81, type metadata accessor for SignalGenerator.NewSuggestionRequest);
        v61 = sub_2311CFD58(v58, v60, &v89);

        *(v50 + 14) = v61;
        _os_log_impl(&dword_2311CB000, v0, v47, "SignalGenerator - Unable to find suggestion in repository of id %s return from subscription to signal %s", v50, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();

        (*(v82 + 8))(v86, v84);
      }

      else
      {
        v63 = *(v1 + 136);
        v62 = *(v1 + 144);
        v65 = *(v1 + 120);
        v64 = *(v1 + 128);
        v66 = *(v1 + 112);

        v0 = type metadata accessor for SignalGenerator.NewSuggestionRequest;
        sub_2312AFAD8(v66, type metadata accessor for SignalGenerator.NewSuggestionRequest);
        (*(v63 + 8))(v62, v64);
        sub_2312AFAD8(v65, type metadata accessor for SignalGenerator.NewSuggestionRequest);
      }

      v67 = *(v1 + 264);
      v68 = *(v1 + 240);
      v69 = *(v1 + 248);
      v70 = *(v1 + 232);
      v87 = *(v1 + 224);
      v71 = *(v1 + 216);
      v83 = v67;
      v85 = *(v1 + 208);
      v21 = *(v1 + 56);
      v72 = (*(v1 + 64) + *(v1 + 320));
      OUTLINED_FUNCTION_53_8();
      (*(v68 + 16))(&v21[v73], v67, v70);
      v89 = 0;
      v90 = 0xE000000000000000;
      sub_23136A650();

      v89 = 0xD000000000000014;
      v90 = 0x800000023137FA00;
      __swift_project_boxed_opaque_existential_1(v72, v72[3]);
      sub_231368DE0();
      OUTLINED_FUNCTION_1_27();
      sub_2312AFBEC(v74, 255, v75, MEMORY[0x277D60CD8]);
      v76 = sub_23136A8B0();
      MEMORY[0x23192A730](v76);

      (v88)(v69, v70);
      MEMORY[0x23192A730](0x20656874206E6920, 0xED00002E6F706572);
      v19 = v89;
      v2 = v90;
      (*(v71 + 8))(v87, v85);
      (v88)(v83, v70);
LABEL_18:
      *v21 = MEMORY[0x277D84F90];
      v77 = &v21[*(v0 + 24)];
      *v77 = v19;
      v77[1] = v2;
      OUTLINED_FUNCTION_29_11();

      OUTLINED_FUNCTION_35();

      __asm { BRAA            X1, X16 }
    }

    v10 = v88;
    if (*(v9 + 16))
    {
LABEL_4:
      *(v1 + 288) = v9;
      v12 = *(v1 + 324);
      v13 = *(v1 + 88);
      v14 = *(v1 + 64);
      v15 = swift_task_alloc();
      *(v1 + 296) = v15;
      *(v15 + 16) = v13;
      *(v15 + 24) = v14;
      *(v15 + 32) = v12;
      v16 = swift_task_alloc();
      *(v1 + 304) = v16;
      *v16 = v1;
      v16[1] = sub_2312AA0CC;
      OUTLINED_FUNCTION_35();

      __asm { BR              X3 }
    }
  }

  v40 = *(v1 + 216);
  v39 = *(v1 + 224);
  v41 = *(v1 + 208);
  v21 = *(v1 + 56);

  OUTLINED_FUNCTION_53_8();
  OUTLINED_FUNCTION_37_12();
  v42();
  v2 = 0x800000023137FA20;
  (*(v40 + 8))(v39, v41);
  v43 = OUTLINED_FUNCTION_26_1();
  v10(v43);
  v19 = 0xD000000000000040;
  goto LABEL_18;
}

void sub_2312AA0CC()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {

    *(v5 + 312) = v3;

    OUTLINED_FUNCTION_13();

    MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_2312AA1FC()
{
  v1 = v0[39];
  v2 = v0[33];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[7];
  (*(v0[27] + 8))(v0[28], v0[26]);
  v6 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  (*(v4 + 32))(&v5[*(v6 + 20)], v2, v3);
  *v5 = v1;
  v7 = &v5[*(v6 + 24)];
  *v7 = 0;
  *(v7 + 1) = 0;
  OUTLINED_FUNCTION_29_11();

  v8 = v0[1];

  return v8();
}

uint64_t sub_2312AA33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 164) = a5;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = sub_231367E50();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312AA404, 0, 0);
}

uint64_t sub_2312AA404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39();
  v14 = *(v12 + 72);
  v13 = *(v12 + 80);
  v15 = *(v12 + 56);
  v33 = *(v12 + 64);
  v16 = *(v12 + 48);
  OUTLINED_FUNCTION_3_2(*(v12 + 40));
  OUTLINED_FUNCTION_28_0();
  v17 = sub_231368300();
  *(v12 + 16) = v17;
  *(v12 + 88) = v17;
  *(v12 + 96) = v18;
  *(v12 + 24) = v18;
  v19 = *(type metadata accessor for SignalGenerator.NewSuggestionRequest(0) + 20);
  *(v12 + 160) = v19;
  __swift_project_boxed_opaque_existential_1((v15 + v19), *(v15 + v19 + 24));
  sub_231368DE0();
  v20 = sub_231210C48(v13, v16);
  (*(v14 + 8))(v13, v33);
  if (v20)
  {

    OUTLINED_FUNCTION_3_2((*(v12 + 56) + *(v12 + 160)));
    v21 = swift_task_alloc();
    *(v12 + 152) = v21;
    *v21 = v12;
    v21[1] = sub_2312AAAB8;
    OUTLINED_FUNCTION_40();

    return MEMORY[0x2821C7498](v22, v23, v24, v25, v26, v27, v28, v29, v33, a10, a11, a12);
  }

  else
  {
    *(v12 + 104) = swift_getObjectType();
    *(v12 + 112) = sub_2313687A0();
    v30 = swift_task_alloc();
    *(v12 + 120) = v30;
    *v30 = v12;
    v30[1] = sub_2312AA5F4;
    OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_40();

    return sub_23132CC50();
  }
}

uint64_t sub_2312AA5F4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312AA6F4()
{
  OUTLINED_FUNCTION_8();
  *(v0 + 128) = sub_2313687B0();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_2312AA798;

  return sub_23132CEE8();
}

uint64_t sub_2312AA798()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 144) = v4;
  *v4 = v3;
  v4[1] = sub_2312AA91C;

  return Context.setConversationalContinuer(value:)();
}

uint64_t sub_2312AA91C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312AAA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_26();
  v13 = (*(v12 + 56) + *(v12 + 160));
  v14 = v13[3];
  v15 = v13[4];
  OUTLINED_FUNCTION_3_2(v13);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v12 + 152) = v20;
  *v20 = v21;
  v20[1] = sub_2312AAAB8;
  v22 = *(v12 + 56);

  return MEMORY[0x2821C7498](v12 + 16, v22, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_2312AAAB8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312AAB9C()
{
  OUTLINED_FUNCTION_26();
  swift_unknownObjectRelease();
  v1 = OUTLINED_FUNCTION_28_0();
  sub_2311CF324(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2312AAC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312AAC48()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0[7] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[9] = 0;
  v0[10] = v2;
  v0[8] = v1;
  if (v1)
  {
    v3 = sub_231367490();
    OUTLINED_FUNCTION_40_0(v3);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[11] = v4;
    *v4 = v5;
    OUTLINED_FUNCTION_20_18(v4);
    OUTLINED_FUNCTION_41_11();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_14();
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_2312AADB0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312AAEB0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0[10];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_23();
    sub_23126E060();
    v5 = v21;
  }

  v6 = *(v5 + 16);
  if (v6 >= *(v5 + 24) >> 1)
  {
    sub_23126E060();
    v5 = v22;
  }

  *(v5 + 16) = v6 + 1;
  v7 = (v5 + 24 * v6);
  v7[4] = v1;
  v7[5] = v2;
  v7[6] = v3;
  v8 = v0[8];
  v9 = v0[9] + 1;
  v0[9] = v9;
  v0[10] = v5;
  if (v9 == v8)
  {
    OUTLINED_FUNCTION_14();

    return v10(v11);
  }

  else
  {
    v13 = v0[7];
    v14 = v0[5];
    v15 = sub_231367490();
    OUTLINED_FUNCTION_0(v15);
    v18 = v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v17 + 72) * v9;
    v23 = (v14 + *v14);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[11] = v19;
    *v19 = v20;
    OUTLINED_FUNCTION_20_18(v19);

    return (v23)(v0 + 2, v18);
  }
}

uint64_t sub_2312AB0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312AB0FC()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0[10] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[12] = 0;
  v0[13] = v2;
  v0[11] = v1;
  if (v1)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[14] = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_8_18(v3);
  }

  else
  {
    OUTLINED_FUNCTION_14();
    v5 = MEMORY[0x277D84F90];
  }

  return v6(v5);
}

uint64_t sub_2312AB234()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312AB334()
{
  OUTLINED_FUNCTION_26();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 104);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_23();
    sub_23126E580();
    v2 = v15;
  }

  v3 = *(v2 + 16);
  if (v3 >= *(v2 + 24) >> 1)
  {
    sub_23126E580();
    v2 = v16;
  }

  *(v2 + 16) = v3 + 1;
  v4 = (v2 + 48 * v3);
  v5 = *(v0 + 16);
  v6 = *(v0 + 48);
  v4[3] = *(v0 + 32);
  v4[4] = v6;
  v4[2] = v5;
  v7 = *(v0 + 88);
  v8 = *(v0 + 96) + 1;
  *(v0 + 96) = v8;
  *(v0 + 104) = v2;
  if (v8 == v7)
  {
    OUTLINED_FUNCTION_14();
    v11 = v10;
  }

  else
  {
    OUTLINED_FUNCTION_0_27();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v0 + 112) = v12;
    *v12 = v13;
    v11 = OUTLINED_FUNCTION_8_18(v12);
  }

  return v9(v11);
}

uint64_t sub_2312AB4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_2312AB4D4, 0, 0);
}

uint64_t sub_2312AB4D4()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0[10] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[12] = 0;
  v0[13] = v2;
  v0[11] = v1;
  if (v1)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[14] = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_8_18(v3);
  }

  else
  {
    OUTLINED_FUNCTION_14();
    v5 = MEMORY[0x277D84F90];
  }

  return v6(v5);
}

uint64_t sub_2312AB60C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312AB70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39();
  v13 = v12[13];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[7] = v13;
  v15 = v12 + 7;
  v16 = v12[13];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v39 = OUTLINED_FUNCTION_23();
    sub_23126DF64(v39);
    v16 = v40;
    *v15 = v40;
  }

  v18 = *(v16 + 16);
  v17 = *(v16 + 24);
  if (v18 >= v17 >> 1)
  {
    sub_23126DF64(v17 > 1);
    v16 = v41;
    *v15 = v41;
  }

  v19 = v12[5];
  v20 = v12[6];
  v21 = __swift_mutable_project_boxed_opaque_existential_1((v12 + 2), v19);
  OUTLINED_FUNCTION_21();
  v23 = v22;
  v24 = OUTLINED_FUNCTION_43();
  (*(v23 + 16))(v24, v21, v19);
  sub_2312E6494(v18, v24, v12 + 7, v19, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 2);

  v25 = v12[11];
  v26 = v12[12] + 1;
  v12[12] = v26;
  v12[13] = v16;
  if (v26 == v25)
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_40();
  }

  else
  {
    OUTLINED_FUNCTION_0_27();
    a9 = v35;
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v12[14] = v36;
    *v36 = v37;
    v36[1] = sub_2312AB60C;
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_40();
  }

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_2312AB934()
{
  OUTLINED_FUNCTION_8();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DA8, &qword_231370E90);
  OUTLINED_FUNCTION_0(v4);
  v0[5] = v5;
  v0[6] = OUTLINED_FUNCTION_43();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312AB9E4()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0[4] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[8] = 0;
  v0[9] = v2;
  v0[7] = v1;
  if (v1)
  {
    v3 = type metadata accessor for SuggestionViewDetails(0);
    OUTLINED_FUNCTION_40_0(v3);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[10] = v4;
    *v4 = v5;
    OUTLINED_FUNCTION_16_19(v4);
    OUTLINED_FUNCTION_41_11();

    return v6();
  }

  else
  {

    OUTLINED_FUNCTION_14();
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_2312ABB50()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312ABC50()
{
  OUTLINED_FUNCTION_26();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = v0[9];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_4_18();
    sub_23126F32C(v19, v20, v21, v22);
    v2 = v23;
  }

  v3 = *(v2 + 16);
  if (v3 >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_44_8();
    sub_23126F32C(v24, v25, v26, v27);
    v2 = v28;
  }

  v5 = v0[5];
  v4 = v0[6];
  *(v2 + 16) = v3 + 1;
  sub_2312AFC34(v4, v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3, &qword_27DD43DA8, &qword_231370E90);
  v6 = v0[7];
  v7 = v0[8] + 1;
  v0[8] = v7;
  v0[9] = v2;
  if (v7 == v6)
  {

    OUTLINED_FUNCTION_14();

    return v8(v2);
  }

  else
  {
    v10 = v0[4];
    v11 = v0[2];
    v12 = type metadata accessor for SuggestionViewDetails(0);
    OUTLINED_FUNCTION_0(v12);
    v15 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v14 + 72) * v7;
    v29 = (v11 + *v11);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[10] = v16;
    *v16 = v17;
    v18 = OUTLINED_FUNCTION_16_19(v16);

    return v29(v18, v15);
  }
}

uint64_t sub_2312ABE54()
{
  OUTLINED_FUNCTION_8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2312ABEB4()
{
  OUTLINED_FUNCTION_8();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DC0, &unk_231370710);
  OUTLINED_FUNCTION_0(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_43();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312ABF64()
{
  OUTLINED_FUNCTION_26();
  result = sub_23125D7A0();
  v2 = MEMORY[0x277D84F90];
  v0[8] = result;
  v0[9] = v2;
  if (result)
  {
    v3 = v0[5];
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x23192AD10](0);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }
    }

    v0[10] = v4;
    v0[11] = 1;
    v0[2] = v4;
    OUTLINED_FUNCTION_0_27();
    v11 = v5;
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[12] = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_17_11(v6);

    return v11(v8, v0 + 2);
  }

  else
  {

    OUTLINED_FUNCTION_14();
    v10 = MEMORY[0x277D84F90];

    return v9(v10);
  }
}

uint64_t sub_2312AC0A8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312AC1A8()
{
  OUTLINED_FUNCTION_16();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = v0[9];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_4_18();
    sub_23126F354(v13, v14, v15, v16);
    v2 = v17;
  }

  v3 = *(v2 + 16);
  if (v3 >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_44_8();
    sub_23126F354(v18, v19, v20, v21);
    v2 = v22;
  }

  v5 = v0[6];
  v4 = v0[7];

  *(v2 + 16) = v3 + 1;
  result = sub_2312AFC34(v4, v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3, &qword_27DD43DC0, &unk_231370710);
  v7 = v0[11];
  v0[9] = v2;
  if (v7 == v0[8])
  {

    OUTLINED_FUNCTION_14();

    return v8(v2);
  }

  v9 = v0[5];
  if ((v9 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x23192AD10](v7);
  }

  else
  {
    if (v7 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      __break(1u);
      return result;
    }
  }

  v0[10] = result;
  v0[11] = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v0[2] = result;
  OUTLINED_FUNCTION_0_27();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[12] = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_17_11(v10);
  OUTLINED_FUNCTION_41_11();

  return v12();
}

uint64_t sub_2312AC388()
{
  OUTLINED_FUNCTION_8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2312AC3F4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v76 = a8;
  v71 = a4;
  v72 = a6;
  v78 = a1;
  v12 = sub_231367E50();
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x28223BE20](v12);
  v66 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2313698C0();
  v74 = *(v14 - 8);
  v75 = v14;
  MEMORY[0x28223BE20](v14);
  v73 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v65 - v17;
  v19 = sub_231367D80();
  v69 = *(v19 - 8);
  v70 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2[13];
  v77 = a3;
  v23 = sub_2313692D0();
  if (!*(v22 + 16))
  {
    goto LABEL_8;
  }

  v25 = sub_231215F6C(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    goto LABEL_9;
  }

  v28 = *(*(v22 + 56) + 8 * v25);
  __swift_project_boxed_opaque_existential_1(v78, v78[3]);
  sub_231369EE0();
  v29 = sub_231368DC0();
  if (!*(v28 + 16))
  {

LABEL_8:

    goto LABEL_9;
  }

  v31 = sub_231215F6C(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
    goto LABEL_8;
  }

  v34 = *(*(v28 + 56) + 16 * v31 + 8);

  if (v34)
  {

LABEL_10:
    v36 = v73;
    sub_231369150();
    sub_2311CF324(v78, v79);

    v37 = sub_2313698A0();
    v38 = sub_23136A390();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v80 = v78;
      *v39 = 136315394;
      __swift_project_boxed_opaque_existential_1(v79, v79[3]);
      v40 = v66;
      sub_231368DE0();
      sub_2312AFBEC(&qword_280F7CA08, 255, MEMORY[0x277D60CC0], MEMORY[0x277D60CD8]);
      v41 = v68;
      v42 = sub_23136A8B0();
      v44 = v43;
      (*(v67 + 8))(v40, v41);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      v45 = sub_2311CFD58(v42, v44, &v80);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2080;
      v46 = sub_2313692D0();
      v48 = sub_2311CFD58(v46, v47, &v80);

      *(v39 + 14) = v48;
      _os_log_impl(&dword_2311CB000, v37, v38, "Excluding suggestion %s for signal: %s as there is a override exclusion configured", v39, 0x16u);
      v49 = v78;
      swift_arrayDestroy();
      MEMORY[0x23192B930](v49, -1, -1);
      MEMORY[0x23192B930](v39, -1, -1);

      (*(v74 + 8))(v36, v75);
    }

    else
    {

      (*(v74 + 8))(v36, v75);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
    }

    v63 = type metadata accessor for SignalGenerator.NewSuggestionRequest(0);
    v61 = v76;
    v62 = 1;
    return __swift_storeEnumTagSinglePayload(v61, v62, 1, v63);
  }

LABEL_9:
  v35 = sub_23136A900();

  if (v35)
  {
    goto LABEL_10;
  }

  v75 = v18;
  v50 = a7;
  v51 = v71;
  if (!v71)
  {
    v51 = v77;
  }

  v52 = a2[17];
  v53 = a2[18];
  __swift_project_boxed_opaque_existential_1(a2 + 14, v52);
  v54 = *(v53 + 8);

  v55 = v72;
  v54(a5, v72, v50, v51, v77, v52, v53);

  sub_2311CF324(v55, v79);
  v57 = v69;
  v56 = v70;
  v58 = v75;
  (*(v69 + 16))(v75, v21, v70);
  __swift_storeEnumTagSinglePayload(v58, 0, 1, v56);

  v59 = v76;
  sub_2313687C0();
  (*(v57 + 8))(v21, v56);
  v60 = type metadata accessor for SignalGenerator.NewSuggestionRequest(0);
  sub_2311CF324(v78, v59 + *(v60 + 20));
  v61 = v59;
  v62 = 0;
  v63 = v60;
  return __swift_storeEnumTagSinglePayload(v61, v62, 1, v63);
}