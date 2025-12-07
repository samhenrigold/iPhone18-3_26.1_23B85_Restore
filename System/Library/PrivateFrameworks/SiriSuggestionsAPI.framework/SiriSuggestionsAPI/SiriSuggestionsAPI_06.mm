unint64_t sub_1BFA87C50()
{
  result = qword_1EBDFC038;
  if (!qword_1EBDFC038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC038);
  }

  return result;
}

unint64_t sub_1BFA87CA8()
{
  result = qword_1EDCC7310;
  if (!qword_1EDCC7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7310);
  }

  return result;
}

unint64_t sub_1BFA87D00()
{
  result = qword_1EDCC7318;
  if (!qword_1EDCC7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7318);
  }

  return result;
}

unint64_t sub_1BFA87D58()
{
  result = qword_1EBDFC040;
  if (!qword_1EBDFC040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC040);
  }

  return result;
}

unint64_t sub_1BFA87DB0()
{
  result = qword_1EBDFC048;
  if (!qword_1EBDFC048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC048);
  }

  return result;
}

unint64_t sub_1BFA87E04()
{
  result = qword_1EDCC6C88;
  if (!qword_1EDCC6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6C88);
  }

  return result;
}

uint64_t sub_1BFA87E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA30, &unk_1BFAB5450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFA87ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA30, &unk_1BFAB5450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BFA87F40()
{
  result = qword_1EBDFC058;
  if (!qword_1EBDFC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC058);
  }

  return result;
}

unint64_t sub_1BFA87F94()
{
  result = qword_1EBDFC060;
  if (!qword_1EBDFC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC060);
  }

  return result;
}

void OUTLINED_FUNCTION_4_12()
{
  *(v0 + 188) = 0;
  *(v0 + 192) = 0;
  *(v0 + 204) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
}

uint64_t OUTLINED_FUNCTION_17_5()
{
}

_OWORD *OUTLINED_FUNCTION_53_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{

  return sub_1BFA27FE0(&a21, (v21 - 128));
}

_OWORD *OUTLINED_FUNCTION_56_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23)
{

  return sub_1BFA27FE0((v23 - 128), &a23);
}

uint64_t OUTLINED_FUNCTION_91_2()
{
}

char *sub_1BFA88244(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34[1] = a5;
  v34[2] = a4;
  v35 = a3;
  v40 = sub_1BFAAF688();
  OUTLINED_FUNCTION_2_3();
  v39 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BFAAF748();
  OUTLINED_FUNCTION_2_3();
  v36 = v12;
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC068, &unk_1BFAB6B80);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v34 - v19;
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  (*(v21 + 8))(a2, v22, v21);
  sub_1BFA885E8(v20, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BFA88658(v18);
    sub_1BFAAF228();
    v23 = sub_1BFAAF668();
    v24 = sub_1BFAAFB88();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BF9F6000, v23, v24, "RRSalientEntitiesService:: Entity callback from RRaSS failed", v25, 2u);
      MEMORY[0x1BFB618C0](v25, -1, -1);
    }

    (*(v39 + 8))(v10, v40);
    sub_1BFA886C0();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v36 + 32))(v14, v18, v37);
    v26 = sub_1BFA88714(v14);
    MEMORY[0x1EEE9AC00](v26);
    v34[-2] = v35;
    v27 = v38;
    v28 = sub_1BFA351E4(sub_1BFA890F8, &v34[-4], v26);
    if (!v27)
    {
      v10 = v28;

      v32 = OUTLINED_FUNCTION_0_13();
      v33(v32);
      sub_1BFA88658(v20);
      return v10;
    }

    v29 = OUTLINED_FUNCTION_0_13();
    v30(v29);
  }

  sub_1BFA88658(v20);
  return v10;
}

uint64_t sub_1BFA885E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC068, &unk_1BFAB6B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFA88658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC068, &unk_1BFAB6B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BFA886C0()
{
  result = qword_1EBDFC070;
  if (!qword_1EBDFC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC070);
  }

  return result;
}

uint64_t sub_1BFA88714(uint64_t a1)
{
  v2 = sub_1BFAAF738();
  v86 = *(v2 - 8);
  v87 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v85 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BFAAF688();
  v93 = *(v4 - 8);
  v94 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v88 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v84 = &v78 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v78 - v9;
  v10 = sub_1BFAAF6C8();
  v92 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v90 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v89 = &v78 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v78 - v15;
  v17 = sub_1BFAAF748();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v78 - v22);
  v24 = *(v18 + 16);
  v24(&v78 - v22, a1, v17);
  v25 = (*(v18 + 88))(v23, v17);
  if (v25 == *MEMORY[0x1E69D2968])
  {
    (*(v18 + 96))(v23, v17);
    v26 = v92;
    v27 = v92 + 32;
    v88 = *(v92 + 32);
    (v88)(v16, v23, v10);
    sub_1BFAAF228();
    v28 = *(v26 + 16);
    v29 = v89;
    v28(v89, v16, v10);
    v30 = v90;
    v28(v90, v16, v10);
    v31 = sub_1BFAAF668();
    v32 = sub_1BFAAFB78();
    v33 = v10;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v78 = v34;
      v81 = swift_slowAlloc();
      v95 = v81;
      *v34 = 136315394;
      v35 = v85;
      v80 = v32;
      sub_1BFAAF6B8();
      v36 = sub_1BFAAF708();
      v83 = v16;
      v84 = v33;
      v38 = v37;
      v79 = v31;
      v82 = v27;
      v39 = v87;
      v40 = *(v86 + 8);
      v40(v35, v87);
      v41 = *(v92 + 8);
      v41(v29, v84);
      v42 = sub_1BF9F88A8(v36, v38, &v95);

      v43 = v78;
      *(v78 + 1) = v42;
      *(v43 + 6) = 2080;
      sub_1BFAAF6B8();
      v44 = sub_1BFAAF718();
      v40(v35, v39);
      v33 = v84;
      v45 = sub_1BFAAF698();
      v46 = MEMORY[0x1BFB60C30](v44, v45);
      v48 = v47;

      v41(v30, v33);
      v26 = v92;
      v49 = sub_1BF9F88A8(v46, v48, &v95);

      *(v43 + 14) = v49;
      v50 = v79;
      _os_log_impl(&dword_1BF9F6000, v79, v80, "RRSalientEntitiesService:: Found one match: %s %s", v43, 0x16u);
      v51 = v81;
      swift_arrayDestroy();
      MEMORY[0x1BFB618C0](v51, -1, -1);
      v52 = v43;
      v16 = v83;
      MEMORY[0x1BFB618C0](v52, -1, -1);
    }

    else
    {

      v64 = *(v26 + 8);
      v64(v30, v10);
      v64(v29, v10);
    }

    (*(v93 + 8))(v91, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC078, &unk_1BFAB6B90);
    v65 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1BFAB08E0;
    (v88)(v55 + v65, v16, v33);
  }

  else if (v25 == *MEMORY[0x1E69D2978] || v25 == *MEMORY[0x1E69D2970])
  {
    v54 = v10;
    (*(v18 + 96))(v23, v17);
    v55 = *v23;
    v56 = v84;
    sub_1BFAAF228();

    v57 = sub_1BFAAF668();
    v58 = sub_1BFAAFB78();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v95 = v60;
      *v59 = 136315138;
      v61 = MEMORY[0x1BFB60C30](v55, v54);
      v63 = sub_1BF9F88A8(v61, v62, &v95);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_1BF9F6000, v57, v58, "RRSalientEntitiesService:: got multiple candidates: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v60);
      MEMORY[0x1BFB618C0](v60, -1, -1);
      MEMORY[0x1BFB618C0](v59, -1, -1);
    }

    (*(v93 + 8))(v56, v94);
  }

  else
  {
    v66 = v88;
    sub_1BFAAF228();
    v24(v21, a1, v17);
    v67 = sub_1BFAAF668();
    v68 = sub_1BFAAFB78();
    if (os_log_type_enabled(v67, v68))
    {
      v70 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v95 = v92;
      *v70 = 136315394;
      *(v70 + 4) = sub_1BF9F88A8(0x746C757365525252, 0xE800000000000000, &v95);
      *(v70 + 12) = 2080;
      sub_1BFA89150();
      LODWORD(v91) = v68;
      v71 = sub_1BFAAFEE8();
      v73 = v72;
      v74 = *(v18 + 8);
      v74(v21, v17);
      v75 = sub_1BF9F88A8(v71, v73, &v95);

      *(v70 + 14) = v75;
      _os_log_impl(&dword_1BF9F6000, v67, v91, "RRSalientEntitiesService:: No salient app entities found. result = %s ## %s", v70, 0x16u);
      v76 = v92;
      swift_arrayDestroy();
      MEMORY[0x1BFB618C0](v76, -1, -1);
      MEMORY[0x1BFB618C0](v70, -1, -1);

      (*(v93 + 8))(v88, v94);
    }

    else
    {

      v74 = *(v18 + 8);
      v74(v21, v17);
      (*(v93 + 8))(v66, v94);
    }

    v74(v23, v17);
    return MEMORY[0x1E69E7CC0];
  }

  return v55;
}

uint64_t sub_1BFA89080(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCE8, &qword_1BFAB4928);
  v2 = sub_1BFAAE818();
  v2(a1);
}

uint64_t sub_1BFA89114(uint64_t (*a1)(void))
{
  a1();

  return sub_1BFAB0048();
}

unint64_t sub_1BFA89150()
{
  result = qword_1EDCC6488;
  if (!qword_1EDCC6488)
  {
    sub_1BFAAF748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6488);
  }

  return result;
}

uint64_t SiriSuggestionsSupportingDataClient.description.getter()
{
  sub_1BFAAFC48();

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = sub_1BFAAFEE8();
  MEMORY[0x1BFB60B80](v1);

  MEMORY[0x1BFB60B80](125, 0xE100000000000000);
  return 0x6974726F70707553;
}

uint64_t SiriSuggestionsSupportingDataClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)()
{
  OUTLINED_FUNCTION_43();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v1[18] = v5;
  v1[19] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  v1[24] = swift_task_alloc();
  v7 = sub_1BFAAE3F8();
  v1[25] = v7;
  v1[26] = *(v7 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[30] = v8;
  *v8 = v1;
  v8[1] = sub_1BFA893D0;
  v9 = OUTLINED_FUNCTION_17();

  return sub_1BFA8A364(v9, v10);
}

uint64_t sub_1BFA893D0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 256) = v10;
    *v10 = v5;
    v11 = OUTLINED_FUNCTION_12_11(v10);

    return sub_1BFA8A5C4(v11, v12);
  }
}

uint64_t sub_1BFA89518()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 264) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 272) = v10;
    *v10 = v5;
    v11 = OUTLINED_FUNCTION_12_11(v10);

    return sub_1BFA8ABCC(v11, v12);
  }
}

uint64_t sub_1BFA89660()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 288) = v10;
    *v10 = v5;
    v11 = OUTLINED_FUNCTION_12_11(v10);

    return sub_1BFA8AEC0(v11, v12);
  }
}

uint64_t sub_1BFA897A8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA898A0()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[23];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(*(v3 + 24) + 16);
  OUTLINED_FUNCTION_30();
  v13 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[38] = v6;
  *v6 = v0;
  v6[1] = sub_1BFA899D4;
  v7 = v0[21];
  v8 = v0[22];
  v9 = v0[19];
  v10 = v0[20];
  v11 = v0[18];

  return v13(v11, v9, v10, v7, v8, v2, v4);
}

uint64_t sub_1BFA899D4()
{
  OUTLINED_FUNCTION_43();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1BFA8A364(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA8A37C()
{
  OUTLINED_FUNCTION_43();
  v1 = *(v0 + 80);
  v2 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  (*(v1 + 56))();
  v3 = *(v0 + 32);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 56) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1BFA8A460;
  v5 = OUTLINED_FUNCTION_53(*(v0 + 64));

  return sub_1BFA18E3C(v5, v6, v0 + 40, v2, v7);
}

uint64_t sub_1BFA8A460()
{
  OUTLINED_FUNCTION_43();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;
  *(v2 + 96) = v0;

  sub_1BFA8B850(*(v2 + 40));
  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_1BFA8A5C4(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA8A5DC()
{
  OUTLINED_FUNCTION_51();
  sub_1BFA8B7E0(*(v0 + 112) + 88, v0 + 56);
  if (*(v0 + 80))
  {
    sub_1BF9FA474((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    OUTLINED_FUNCTION_30();
    v11 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_1BFA8A808;

    return v11(v1, v2);
  }

  else
  {
    sub_1BFA20F44(v0 + 56, &qword_1EBDFB638, &qword_1BFAB6BE0);
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
    }

    v6 = sub_1BFAAF688();
    __swift_project_value_buffer(v6, qword_1EDCC8B70);
    v7 = sub_1BFAAF668();
    v8 = sub_1BFAAFB78();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BF9F6000, v7, v8, "Unable to find a set salient entity service. This functionality is disabled", v9, 2u);
      MEMORY[0x1BFB618C0](v9, -1, -1);
    }

    OUTLINED_FUNCTION_85();

    return v10();
  }
}

uint64_t sub_1BFA8A808()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA8A908()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[14];
  v2 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1BFA8A9C8;
  v4 = OUTLINED_FUNCTION_53(v0[12]);

  return sub_1BFA18B0C(v4, v5, v6, v2, v7);
}

uint64_t sub_1BFA8A9C8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA8AAC0()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_33_2();

  return v0();
}

uint64_t sub_1BFA8AB1C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_33_2();

  return v0();
}

uint64_t sub_1BFA8AB70()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_33_2();

  return v0();
}

uint64_t sub_1BFA8ABCC(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA8ABE4()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[14];
  sub_1BF9F94C4(v1 + 16, (v0 + 2));
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v1 + 72))();
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1BFA8AD08;
  v4 = OUTLINED_FUNCTION_53(v0[12]);

  return sub_1BFA192DC(v4, v5, v6, v2, v7);
}

uint64_t sub_1BFA8AD08()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 128) = v0;

  sub_1BFA20F44(v3 + 56, &qword_1EBDFB6B0, &qword_1BFAB13D0);
  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA8AE18()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_33_2();

  return v0();
}

uint64_t sub_1BFA8AE6C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_33_2();

  return v0();
}

uint64_t sub_1BFA8AEC0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA8AED8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 88) = v0;

  sub_1BFA20F44(v3 + 16, &qword_1EBDFB6A8, &qword_1BFAB13C0);
  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_85();

    return v10();
  }
}

uint64_t SiriSuggestionsSupportingDataClient.submitEngagement(for:with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA8B040()
{
  OUTLINED_FUNCTION_43();
  sub_1BFAAE398();
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1BFA8B0E8;
  v3 = OUTLINED_FUNCTION_17();

  return sub_1BFA8AEC0(v3, v4);
}

uint64_t sub_1BFA8B0E8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA8B1E8()
{
  OUTLINED_FUNCTION_51();
  __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
  OUTLINED_FUNCTION_30();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1BFA5071C;
  v3 = OUTLINED_FUNCTION_53(v0[2]);

  return v5(v3);
}

uint64_t sub_1BFA8B310()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

void *SiriSuggestionsSupportingDataClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));

  sub_1BFA20F44(v0 + 88, &qword_1EBDFB638, &qword_1BFAB6BE0);

  return v0;
}

uint64_t SiriSuggestionsSupportingDataClient.__deallocating_deinit()
{
  SiriSuggestionsSupportingDataClient.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BFA8B414()
{
  OUTLINED_FUNCTION_43();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;
  v2 = OUTLINED_FUNCTION_17();

  return SiriSuggestionsSupportingDataClient.submitEngagement(for:with:)(v2, v3);
}

uint64_t sub_1BFA8B4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF9FDE28;

  return sub_1BFAADB48(a1, a2, a3, a4, a5);
}

uint64_t sub_1BFA8B5B8()
{
  OUTLINED_FUNCTION_51();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDE28;

  return SiriSuggestionsSupportingDataClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)();
}

uint64_t sub_1BFA8B680(uint64_t a1, uint64_t a2)
{
  result = sub_1BFA8B780(&qword_1EDCC7F40, a2, type metadata accessor for SiriSuggestionsSupportingDataClient, &protocol conformance descriptor for SiriSuggestionsSupportingDataClient);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BFA8B6FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1BFA8B780(qword_1EDCC7F50, a2, type metadata accessor for SiriSuggestionsSupportingDataClient, &protocol conformance descriptor for SiriSuggestionsSupportingDataClient);
  result = sub_1BFA8B780(&qword_1EDCC7F48, v3, type metadata accessor for SiriSuggestionsSupportingDataClient, &protocol conformance descriptor for SiriSuggestionsSupportingDataClient);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BFA8B780(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1BFA8B7E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB638, &qword_1BFAB6BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFA8B850(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_9()
{
  *(v2 + *(v0 + 28)) = 0xBFF0000000000000;
  v4 = v2 + *(v0 + 32);

  return sub_1BFA1B678(v1, v4);
}

id OUTLINED_FUNCTION_27_8(float a1)
{
  *v3 = a1;
  *(v2 + 136) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_44_5(uint64_t a1)
{

  return sub_1BFAAF8B8();
}

uint64_t DispatchSELFLogger.logUIActivity(generationId:suggestionIds:uiActivity:deliveryVehicle:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 57) = *a3;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA8B93C()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 40);
  v3 = v2[6];
  v4 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v3);
  *(v0 + 56) = v1;
  OUTLINED_FUNCTION_30();
  v11 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1BFA4C9C8;
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  return v11(v9, v7, v0 + 56, v8, v3, v4);
}

uint64_t sub_1BFA8BA80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC088, &qword_1BFAB6E28);
  v0 = sub_1BFAAEEA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BFAB1400;
  v4 = v19 + v3;
  v5 = *(v1 + 104);
  v5(v4, *MEMORY[0x1E69D2FD8], v0);
  v5(v4 + v2, *MEMORY[0x1E69D2FC0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC090, qword_1BFAB6E30);
  v6 = sub_1BFAAEFD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BFAB1C20;
  v11 = v10 + v9;
  v12 = *MEMORY[0x1E69D3150];
  v13 = sub_1BFAAF008();
  v14 = *(*(v13 - 8) + 104);
  v14(v11, v12, v13);
  v15 = *MEMORY[0x1E69D3118];
  v16 = *(v7 + 104);
  v16(v11, v15, v6);
  v14(v11 + v8, *MEMORY[0x1E69D3148], v13);
  v16(v11 + v8, v15, v6);
  v16(v11 + 2 * v8, *MEMORY[0x1E69D3110], v6);
  v17 = sub_1BFAAEE88();

  result = sub_1BFA48074(v17);
  qword_1EDCCBD98 = v19;
  return result;
}

uint64_t DispatchSELFLogger.__allocating_init(selfLogger:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1Tm(a1, v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_1BFA8CD98(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return v9;
}

uint64_t DispatchSELFLogger.__allocating_init(selfLogger:validRequestLinkInvocationTypes:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_10();
  v3 = swift_allocObject();
  sub_1BF9F97E4();
  *(v3 + 16) = a2;
  return v3;
}

uint64_t DispatchSELFLogger.init(selfLogger:validRequestLinkInvocationTypes:)(uint64_t a1, uint64_t a2)
{
  sub_1BF9F97E4();
  *(v2 + 16) = a2;
  return v2;
}

uint64_t DispatchSELFLogger.dispatch(suggestions:presentationContext:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA8BEBC()
{
  if (*(**(v0 + 16) + 16))
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_1BFA8C03C;

    return DispatchSELFLogger.logSuggestionsGenerated(suggestionList:presentationContext:)();
  }

  else
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v3 = sub_1BFAAF688();
    __swift_project_value_buffer(v3, qword_1EDCC7478);
    v4 = sub_1BFAAF668();
    v5 = sub_1BFAAFB68();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BF9F6000, v4, v5, "Skipping SELF logging as there are no suggestions generated", v6, 2u);
      OUTLINED_FUNCTION_94();
    }

    OUTLINED_FUNCTION_85();

    return v7();
  }
}

uint64_t sub_1BFA8C03C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t DispatchSELFLogger.logSuggestionsGenerated(suggestionList:presentationContext:)()
{
  OUTLINED_FUNCTION_40();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = type metadata accessor for PresentationContext(0);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = sub_1BFAAE3F8();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA8C25C()
{
  v31 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 40);
  sub_1BFA77EC0(*(v0 + 24) + *(v3 + 24), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1BFA5CDF4(*(v0 + 80));
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v4 = *(v0 + 48);
    v5 = *(v0 + 24);
    v6 = sub_1BFAAF688();
    __swift_project_value_buffer(v6, qword_1EDCC7478);
    sub_1BFA790C0(v5, v4);
    v7 = sub_1BFAAF668();
    v8 = sub_1BFAAFB88();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 72);
      v10 = *(v0 + 48);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136315138;
      sub_1BFA77EC0(v10 + *(v3 + 24), v9);
      v13 = sub_1BFAAF8B8();
      v15 = v14;
      sub_1BFA7825C(v10);
      v16 = sub_1BF9F88A8(v13, v15, &v30);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1BF9F6000, v7, v8, "Unable to send a SELF event as uuid's could not be calculated from: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v12);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_94();
    }

    else
    {
      v27 = *(v0 + 48);

      sub_1BFA7825C(v27);
    }

    OUTLINED_FUNCTION_8_9();

    OUTLINED_FUNCTION_85();

    return v28();
  }

  else
  {
    v17 = *(v0 + 32);
    v18 = *(v0 + 16);
    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 80), *(v0 + 88));
    v19 = v17[6];
    v20 = v17[7];
    __swift_project_boxed_opaque_existential_1(v17 + 3, v19);
    v21 = *(type metadata accessor for SiriSuggestions.SuggestionList(0) + 24);
    *(v0 + 128) = v21;
    OUTLINED_FUNCTION_30();
    v29 = (v22 + *v22);
    v23 = swift_task_alloc();
    *(v0 + 112) = v23;
    *v23 = v0;
    v23[1] = sub_1BFA8C5B0;
    v24 = *(v0 + 16);
    v25 = *(v0 + 24);

    return v29(v18 + v21, v24, v25, v19, v20);
  }
}

uint64_t sub_1BFA8C5B0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA8C694()
{
  v29 = v0;
  v1 = *(*(v0 + 32) + 16);
  v2 = *(v0 + 24) + *(*(v0 + 40) + 20);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  LOBYTE(v1) = sub_1BFA14244(sub_1BFA8CE88, v3, v1);

  if (v1)
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v4 = *(v0 + 56);
    v5 = *(v0 + 24);
    v6 = sub_1BFAAF688();
    __swift_project_value_buffer(v6, qword_1EDCC7478);
    sub_1BFA790C0(v5, v4);
    v7 = sub_1BFAAF668();
    v8 = sub_1BFAAFB68();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 56);
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136315138;
      sub_1BFAAEEA8();
      sub_1BFA8CF18(&qword_1EBDFB9D0, MEMORY[0x1E69D2FE0], MEMORY[0x1E69D3000]);
      v13 = sub_1BFAAFEE8();
      v15 = v14;
      sub_1BFA7825C(v10);
      v16 = sub_1BF9F88A8(v13, v15, &v28);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1BF9F6000, v7, v8, "Emitting request link for invocationType: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v12);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_94();
    }

    else
    {

      sub_1BFA7825C(v10);
    }

    v19 = *(v0 + 128);
    v20 = *(v0 + 32);
    v21 = *(v0 + 16);
    v22 = v20[6];
    v23 = v20[7];
    __swift_project_boxed_opaque_existential_1(v20 + 3, v22);
    OUTLINED_FUNCTION_30();
    v27 = (v24 + *v24);
    v25 = swift_task_alloc();
    *(v0 + 120) = v25;
    *v25 = v0;
    v25[1] = sub_1BFA8CA1C;
    v26 = *(v0 + 104);

    return v27(v26, v21 + v19, v22, v23);
  }

  else
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    OUTLINED_FUNCTION_8_9();

    OUTLINED_FUNCTION_85();

    return v17();
  }
}

uint64_t sub_1BFA8CA1C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA8CB00()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  OUTLINED_FUNCTION_8_9();

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t DispatchSELFLogger.deinit()
{

  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 24));
  return v0;
}

uint64_t sub_1BFA8CBC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF9FDE28;

  return DispatchSELFLogger.dispatch(suggestions:presentationContext:)(a1, a2);
}

uint64_t sub_1BFA8CC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1BFAAFF08() & 1;
  }
}

uint64_t sub_1BFA8CD0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1BFA8CF18(a4, a5, a6);
  return sub_1BFAAF848() & 1;
}

uint64_t sub_1BFA8CD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v11);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  sub_1BF9F94C4(v11, &v10);
  if (qword_1EDCC89D0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDCCBD98;

  __swift_destroy_boxed_opaque_existential_2Tm(v11);
  v8 = swift_allocObject();
  sub_1BF9F97E4();
  *(v8 + 16) = v7;
  return v8;
}

uint64_t sub_1BFA8CF18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BFA8CF60(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BFA8D078;

  return v7(a1, a2);
}

uint64_t sub_1BFA8D078(uint64_t a1)
{
  OUTLINED_FUNCTION_42();
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_24_0();

  return v5(a1);
}

uint64_t sub_1BFA8D17C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0x737567616DLL;
  if (a1)
  {
    v6 = 0x6169646E496E6170;
  }

  v7 = 0x6B6361426F67;
  if (a1 < 0)
  {
    v7 = v6;
  }

  v9 = v7;

  OUTLINED_FUNCTION_18_11();

  MEMORY[0x1BFB60B80](a3, a4);

  return v9;
}

uint64_t sub_1BFA8D25C()
{
  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDCC77C0);
  }

  v1 = sub_1BFAAF688();
  __swift_project_value_buffer(v1, qword_1EDCC77C8);
  v2 = sub_1BFAAF668();
  v3 = sub_1BFAAFB68();
  if (OUTLINED_FUNCTION_48(v3))
  {
    v4 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_66_0(v4);
    OUTLINED_FUNCTION_7_10(&dword_1BF9F6000, v5, v3, "[FeatureAnnouncementCATsSimple] Executing catIDs");
    OUTLINED_FUNCTION_20_1();
  }

  v6 = *(v0 + 184);

  v7 = sub_1BFAAF7D8();
  if (*(v6 + 24) && (v8 = sub_1BFA8DFEC(), *(v0 + 192) = v8, (*(v0 + 200) = v9) != 0))
  {
    v10 = v8;
    v11 = v9;
    *(v0 + 208) = *(*(v0 + 184) + 16);
    *(v0 + 216) = v7;
    *(v0 + 264) = 0;
    v12 = byte_1F3F07BF0;
    *(v0 + 265) = byte_1F3F07BF0;
    v13 = v12 == 0;
    v14 = 0x737567616DLL;
    if (v13)
    {
      v15 = 0xE500000000000000;
    }

    else
    {
      v14 = 0x6169646E496E6170;
      v15 = 0xE800000000000000;
    }

    *(v0 + 128) = v14;
    *(v0 + 136) = v15;
    if (v13)
    {
      v16 = 0xD000000000000019;
    }

    else
    {
      v16 = 0xD00000000000001CLL;
    }

    if (v13)
    {
      v17 = "announcementSpokenDialogText";
    }

    else
    {
      v17 = "validRequestLinkInvocationTypes";
    }

    OUTLINED_FUNCTION_18_11();

    v18 = *(v0 + 136);
    *(v0 + 144) = *(v0 + 128);
    *(v0 + 152) = v18;

    MEMORY[0x1BFB60B80](v10, v11);

    v19 = *(v0 + 152);
    *(v0 + 224) = *(v0 + 144);
    *(v0 + 232) = v19;
    OUTLINED_FUNCTION_12_2(MEMORY[0x1E69CE3E8]);
    v29 = v20;
    v21 = swift_task_alloc();
    *(v0 + 240) = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_2_13(v21);
    v22 = MEMORY[0x1E69E7CC0];

    return v29(v16, v17 | 0x8000000000000000, v22);
  }

  else
  {
    v24 = sub_1BFAAF668();
    v25 = sub_1BFAAFB78();
    if (OUTLINED_FUNCTION_48(v25))
    {
      v26 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_66_0(v26);
      OUTLINED_FUNCTION_7_10(&dword_1BF9F6000, v27, v25, "[FeatureAnnouncementCATsSimple] not able to get current locale. Return empty executed CAT results");
      OUTLINED_FUNCTION_20_1();
    }

    OUTLINED_FUNCTION_24_0();

    return v28(v7);
  }
}

uint64_t sub_1BFA8D52C()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_37();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 248) = v5;
  *(v3 + 256) = v0;

  if (v0)
  {

    v6 = sub_1BFA8DFD4;
  }

  else
  {
    v6 = sub_1BFA8D6B8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1BFA8D6B8()
{
  v1 = [*(v0 + 248) dialog];
  sub_1BFA8E874();
  v2 = sub_1BFAAF9E8();

  if (v2 >> 62)
  {
    v3 = sub_1BFAAFD18();
    if (v3)
    {
LABEL_3:
      if (v3 >= 1)
      {
        OUTLINED_FUNCTION_5_11();
        v4 = 0;
        v139 = v2 & 0xC000000000000001;
        OUTLINED_FUNCTION_1_9();
        if (v40)
        {
          v6 = 17;
        }

        v136 = v5 | 0x8000000000000000;
        v137 = v6;
        OUTLINED_FUNCTION_1_9();
        if (v40)
        {
          v9 = 16;
        }

        else
        {
          v9 = v8;
        }

        v10 = v7 | 0x8000000000000000;
        OUTLINED_FUNCTION_1_9();
        if (v40)
        {
          v12 = 28;
        }

        v123 = v11 | 0x8000000000000000;
        v124 = v12;
        OUTLINED_FUNCTION_1_9();
        if (v40)
        {
          v14 = 23;
        }

        v116 = v13 | 0x8000000000000000;
        v117 = v14;
        OUTLINED_FUNCTION_1_9();
        if (v40)
        {
          v16 = v17;
        }

        v114 = v16;
        v115 = v15 | 0x8000000000000000;
        OUTLINED_FUNCTION_1_9();
        if (v40)
        {
          v19 = 25;
        }

        v112 = v19;
        v113 = v18 | 0x8000000000000000;
        v128 = 0xE000000000000000;
        v129 = 0xE000000000000000;
        v132 = v9;
        v133 = 0xE000000000000000;
        v138 = 0xE000000000000000;
        v131 = v2;
        v135 = v0;
        while (1)
        {
          if (v139)
          {
            v20 = MEMORY[0x1BFB60E90](v4, v2);
          }

          else
          {
            v20 = *(v2 + 8 * v4 + 32);
          }

          v21 = v20;
          v22 = [v20 id];
          v23 = sub_1BFAAF868();
          v25 = v24;

          *(v0 + 160) = v23;
          *(v0 + 168) = v25;
          v26 = sub_1BF9F86D0();
          v27 = MEMORY[0x1BFB60E20](35, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v26);

          v28 = *(v27 + 16);
          if (v28)
          {
            v29 = v3;
            v30 = v2;
            v31 = (v27 + 32 * v28);
            v33 = *v31;
            v32 = v31[1];
            v35 = v31[2];
            v34 = v31[3];

            v36 = v33 >> 16;
            v37 = v32 >> 16;
            OUTLINED_FUNCTION_9_8();
            v40 = v35 == v39 - 6 && v136 == v34;
            v42 = v40 && v36 == 0 && v137 == v37;
            if (v42 || (LOBYTE(v111) = 0, (OUTLINED_FUNCTION_0_14(v39 - 6, v136, v38, v137) & 1) != 0))
            {

              v43 = [v21 fullPrint];
              v134 = sub_1BFAAF868();
              v138 = v44;

              v2 = v30;
              v3 = v29;
LABEL_60:
              v0 = v135;
              goto LABEL_61;
            }

            OUTLINED_FUNCTION_9_8();
            v48 = v35 == v45 - 7 && v10 == v34 && v36 == 0 && v132 == v37;
            if (v48 || (LOBYTE(v111) = 0, (sub_1BFAAFED8() & 1) != 0))
            {

              v49 = [v21 fullPrint];
              v130 = sub_1BFAAF868();
              v133 = v50;

              v3 = v29;
LABEL_59:
              v2 = v131;
              goto LABEL_60;
            }

            OUTLINED_FUNCTION_9_8();
            v55 = v35 == v52 + 5 && v123 == v34 && v36 == 0 && v124 == v37;
            v3 = v29;
            if (v55 || (LOBYTE(v111) = 0, (OUTLINED_FUNCTION_0_14(v52 + 5, v123, v51, v124) & 1) != 0))
            {

              v56 = [v21 fullPrint];
              v127 = sub_1BFAAF868();
              v128 = v57;

              v58 = [v21 fullSpeak];
              v126 = sub_1BFAAF868();
              v129 = v59;

              goto LABEL_59;
            }

            OUTLINED_FUNCTION_9_8();
            v64 = v35 == v61 && v116 == v34 && v36 == 0 && v117 == v37;
            v0 = v135;
            if (v64 || (LOBYTE(v111) = 0, (OUTLINED_FUNCTION_0_14(0xD000000000000017, v116, v60, v117) & 1) != 0))
            {

              v65 = [v21 fullPrint];
              v122 = sub_1BFAAF868();
              v125 = v66;
            }

            else
            {
              OUTLINED_FUNCTION_9_8();
              v69 = v35 == v68 && v115 == v34;
              if (!v69 || v36 || v114 != v37)
              {
                LOBYTE(v111) = 0;
                if ((OUTLINED_FUNCTION_0_14(0xD000000000000017, v115, v67, v114) & 1) == 0)
                {
                  OUTLINED_FUNCTION_9_8();
                  v72 = v35 == v71 + 2 && v113 == v34;
                  if (v72 && !v36 && v112 == v37)
                  {

                    v2 = v131;
LABEL_93:

                    v75 = [v21 fullPrint];
                    v118 = sub_1BFAAF868();
                    v119 = v76;
                  }

                  else
                  {
                    LOBYTE(v111) = 0;
                    v73 = OUTLINED_FUNCTION_0_14(v71 + 2, v113, v70, v112);

                    v2 = v131;
                    if (v73)
                    {
                      goto LABEL_93;
                    }
                  }

                  goto LABEL_61;
                }
              }

              v65 = [v21 fullPrint];
              v120 = sub_1BFAAF868();
              v121 = v74;
            }

            v2 = v131;
          }

          else
          {
          }

LABEL_61:
          if (v3 == ++v4)
          {
            goto LABEL_97;
          }
        }
      }

      goto LABEL_119;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_5_11();
  v128 = 0xE000000000000000;
  v129 = 0xE000000000000000;
  v133 = 0xE000000000000000;
  v138 = 0xE000000000000000;
LABEL_97:
  v77 = *(v0 + 224);
  v78 = *(v0 + 232);
  v79 = *(v0 + 216);

  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 176) = v79;
  v80 = sub_1BFA01764(v77, v78);
  if (__OFADD__(*(v79 + 16), (v81 & 1) == 0))
  {
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v82 = v80;
  v83 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC098, &unk_1BFAB6EE0);
  if ((sub_1BFAAFCD8() & 1) == 0)
  {
LABEL_104:
    if (v83)
    {
      v87 = *(v0 + 248);
      v88 = *(v0 + 176);
      v89 = (*(v88 + 56) + 112 * v82);
      memcpy((v0 + 16), v89, 0x70uLL);
      *v89 = v134;
      v89[1] = v138;
      v89[2] = v130;
      v89[3] = v133;
      v89[4] = v127;
      v89[5] = v128;
      v89[6] = v126;
      v89[7] = v129;
      v89[8] = v122;
      v89[9] = v125;
      v89[10] = v120;
      v89[11] = v121;
      v89[12] = v118;
      v89[13] = v119;
      sub_1BFA8E8B8(v0 + 16);
    }

    else
    {
      v88 = *(v0 + 176);
      OUTLINED_FUNCTION_12_12();
      v91 = (v90 + 16 * v82);
      *v91 = v93;
      v91[1] = v92;
      v94 = (*(v88 + 56) + 112 * v82);
      *v94 = v134;
      v94[1] = v138;
      v94[2] = v130;
      v94[3] = v133;
      v94[4] = v127;
      v94[5] = v128;
      v94[6] = v126;
      v94[7] = v129;
      v94[8] = v122;
      v94[9] = v125;
      v94[10] = v120;
      v94[11] = v121;
      v94[12] = v118;
      v94[13] = v119;
      v95 = *(v88 + 16);
      v96 = __OFADD__(v95, 1);
      v97 = v95 + 1;
      if (v96)
      {
LABEL_120:
        __break(1u);
        return;
      }

      v98 = *(v0 + 248);
      *(v88 + 16) = v97;
    }

    if (*(v0 + 264))
    {

      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_15_6();

      __asm { BRAA            X2, X16 }
    }

    *(v0 + 216) = v88;
    *(v0 + 264) = 1;
    v102 = *(v0 + 192);
    v101 = *(v0 + 200);
    v103 = byte_1F3F07BF1;
    *(v0 + 265) = byte_1F3F07BF1;
    v40 = v103 == 0;
    v104 = 0x737567616DLL;
    if (v40)
    {
      v105 = 0xE500000000000000;
    }

    else
    {
      v104 = 0x6169646E496E6170;
      v105 = 0xE800000000000000;
    }

    *(v0 + 128) = v104;
    *(v0 + 136) = v105;

    OUTLINED_FUNCTION_18_11();

    v106 = *(v0 + 136);
    *(v0 + 144) = *(v0 + 128);
    *(v0 + 152) = v106;

    MEMORY[0x1BFB60B80](v102, v101);

    v107 = *(v0 + 152);
    *(v0 + 224) = *(v0 + 144);
    *(v0 + 232) = v107;
    OUTLINED_FUNCTION_12_2(MEMORY[0x1E69CE3E8]);
    v108 = swift_task_alloc();
    *(v0 + 240) = v108;
    *v108 = v0;
    OUTLINED_FUNCTION_2_13(v108);
    OUTLINED_FUNCTION_15_6();

    __asm { BR              X3 }
  }

  v84 = sub_1BFA01764(*(v0 + 224), *(v0 + 232));
  if ((v83 & 1) == (v85 & 1))
  {
    v82 = v84;
    goto LABEL_104;
  }

  OUTLINED_FUNCTION_15_6();

  sub_1BFAAFF38();
}

uint64_t sub_1BFA8DFEC()
{
  v0 = sub_1BFAAE968();
  sub_1BFA2351C(0x656C61636F6CLL, 0xE600000000000000, v0, &v3);

  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1BFA8E90C(&v3);
    return 0;
  }
}

uint64_t sub_1BFA8E08C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BFA8E9CC;

  return sub_1BFA8D248();
}

uint64_t sub_1BFA8E130()
{
  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDCC77C0);
  }

  v1 = sub_1BFAAF688();
  __swift_project_value_buffer(v1, qword_1EDCC77C8);
  v2 = sub_1BFAAF668();
  v3 = sub_1BFAAFB68();
  if (OUTLINED_FUNCTION_48(v3))
  {
    v4 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_66_0(v4);
    OUTLINED_FUNCTION_7_10(&dword_1BF9F6000, v5, v3, "[CrossDomainHintCATsSimple] Executing catIds");
    OUTLINED_FUNCTION_20_1();
  }

  v6 = v0[2];

  v7 = sub_1BFAAF7D8();
  v0[3] = v7;
  if (*(v6 + 24) && (v8 = sub_1BFA8DFEC(), (v0[4] = v9) != 0))
  {
    v10 = v8;
    v11 = v9;

    OUTLINED_FUNCTION_18_11();

    MEMORY[0x1BFB60B80](v10, v11);

    v0[5] = 0x6B6361426F67;
    v0[6] = 0xE600000000000000;
    OUTLINED_FUNCTION_12_2(MEMORY[0x1E69CE3E0]);
    v22 = v12;
    v13 = swift_task_alloc();
    v0[7] = v13;
    v14 = sub_1BFA8E974();
    *v13 = v0;
    v13[1] = sub_1BFA8E3D8;
    v15 = MEMORY[0x1E69E7CC0];

    return v22(0xD000000000000016, 0x80000001BFAB93A0, v15, &type metadata for CrossDomainHintCATsSimple.GoBackDialogIds, v14);
  }

  else
  {
    v17 = sub_1BFAAF668();
    v18 = sub_1BFAAFB78();
    if (OUTLINED_FUNCTION_48(v18))
    {
      v19 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_66_0(v19);
      OUTLINED_FUNCTION_7_10(&dword_1BF9F6000, v20, v18, "[CrossDomainHintCATsSimple] not able to get current locale. Return empty executed CAT results");
      OUTLINED_FUNCTION_20_1();
    }

    OUTLINED_FUNCTION_24_0();

    return v21(v7);
  }
}

uint64_t sub_1BFA8E3D8()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_37();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 64) = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    v6 = sub_1BFA8E6D8;
  }

  else
  {
    v6 = sub_1BFA8E508;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1BFA8E508()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = sub_1BFAAE9D8();
  v6 = v5;
  swift_isUniquelyReferenced_nonNull_native();
  v7 = sub_1BFA01764(v2, v1);
  if (__OFADD__(*(v3 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0A0, &qword_1BFAB6EF8);
  if (sub_1BFAAFCD8())
  {
    v11 = sub_1BFA01764(v0[5], v0[6]);
    if ((v10 & 1) != (v12 & 1))
    {

      sub_1BFAAFF38();
      return;
    }

    v9 = v11;
  }

  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_12();
    v15 = (v14 + 16 * v9);
    *v15 = v17;
    v15[1] = v16;
    v18 = (*(v3 + 56) + 16 * v9);
    *v18 = v4;
    v18[1] = v6;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      *(v3 + 16) = v21;

      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    return;
  }

  v13 = (*(v3 + 56) + 16 * v9);
  *v13 = v4;
  v13[1] = v6;

LABEL_12:

  OUTLINED_FUNCTION_24_0();

  v22(v3);
}

uint64_t sub_1BFA8E6F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BFA8E780;

  return sub_1BFA8E11C();
}

uint64_t sub_1BFA8E780(uint64_t a1)
{
  OUTLINED_FUNCTION_42();
  v4 = *v2;
  OUTLINED_FUNCTION_37();
  *v5 = v4;

  OUTLINED_FUNCTION_24_0();
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

unint64_t sub_1BFA8E874()
{
  result = qword_1EDCC6408;
  if (!qword_1EDCC6408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCC6408);
  }

  return result;
}

uint64_t sub_1BFA8E90C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA30, &unk_1BFAB5450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BFA8E974()
{
  result = qword_1EDCC68B0;
  if (!qword_1EDCC68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC68B0);
  }

  return result;
}

void OUTLINED_FUNCTION_7_10(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)()
{
  OUTLINED_FUNCTION_40();
  v7 = OUTLINED_FUNCTION_4_13(v1, v2, v3, v4, v5, v6);
  v0[8] = v7;
  OUTLINED_FUNCTION_15(v7);
  v0[9] = v8;
  v0[10] = OUTLINED_FUNCTION_100();
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA8EA88()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  **(v0 + 80) = v2;
  (*(v1 + 104))();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_1_10(v4);

  return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BFA8EB44()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 96) = v0;

  v7 = OUTLINED_FUNCTION_24();
  v8(v7);
  if (!v0)
  {

    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_112();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA8ECBC()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

uint64_t SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:tool:executedParameters:submitEngagement:)()
{
  OUTLINED_FUNCTION_40();
  v7 = OUTLINED_FUNCTION_4_13(v1, v2, v3, v4, v5, v6);
  v0[8] = v7;
  OUTLINED_FUNCTION_15(v7);
  v0[9] = v8;
  v0[10] = OUTLINED_FUNCTION_100();
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA8EDB4()
{
  OUTLINED_FUNCTION_12_13();
  sub_1BFAAF758();
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(v1, v2);
  v6 = *MEMORY[0x1E69D2E10];
  sub_1BFAAEBA8();
  OUTLINED_FUNCTION_14();
  (*(v7 + 104))(v1, v6);
  (*(v4 + 104))(v1, *MEMORY[0x1E69D2DD8], v0);
  v8 = swift_task_alloc();
  *(v3 + 88) = v8;
  *v8 = v3;
  v9 = OUTLINED_FUNCTION_1_10(v8);

  return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)(v9, v10, v11, v12, v13, v14);
}

uint64_t SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:action:for:executedParameters:submitEngagement:)()
{
  OUTLINED_FUNCTION_40();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 120) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = sub_1BFAAEB98();
  *(v1 + 80) = v10;
  OUTLINED_FUNCTION_15(v10);
  *(v1 + 88) = v11;
  *(v1 + 96) = OUTLINED_FUNCTION_100();
  v12 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BFA8EF8C()
{
  OUTLINED_FUNCTION_51();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  *v1 = v6;
  v1[1] = v4;
  v1[2] = v5;
  v7 = *MEMORY[0x1E69D2E08];
  sub_1BFAAEBA8();
  OUTLINED_FUNCTION_14();
  (*(v8 + 104))(v1, v7);
  (*(v2 + 104))(v1, *MEMORY[0x1E69D2DD8], v3);
  v9 = v6;

  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *v10 = v0;
  v10[1] = sub_1BFA8F0C8;
  v11 = *(v0 + 96);
  v12 = *(v0 + 64);
  v13 = *(v0 + 120);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);
  v16 = *(v0 + 16);

  return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)(v16, v11, v14, v13, v15, v12);
}

uint64_t sub_1BFA8F0C8()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 112) = v0;

  v7 = OUTLINED_FUNCTION_24();
  v8(v7);
  if (!v0)
  {

    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_112();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA8F240()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

uint64_t SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:action:executedParameters:submitEngagement:)()
{
  OUTLINED_FUNCTION_40();
  v7 = OUTLINED_FUNCTION_4_13(v1, v2, v3, v4, v5, v6);
  v0[8] = v7;
  OUTLINED_FUNCTION_15(v7);
  v0[9] = v8;
  v0[10] = OUTLINED_FUNCTION_100();
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA8F338()
{
  OUTLINED_FUNCTION_12_13();
  sub_1BFAAE958();
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(v1, v2);
  v6 = *MEMORY[0x1E69D2E00];
  sub_1BFAAEBA8();
  OUTLINED_FUNCTION_14();
  (*(v7 + 104))(v1, v6);
  (*(v4 + 104))(v1, *MEMORY[0x1E69D2DD8], v0);
  v8 = swift_task_alloc();
  *(v3 + 88) = v8;
  *v8 = v3;
  v9 = OUTLINED_FUNCTION_1_10(v8);

  return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)(v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1BFA8F45C()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 96) = v0;

  v7 = OUTLINED_FUNCTION_24();
  v8(v7);
  if (!v0)
  {

    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_112();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t OUTLINED_FUNCTION_4_13(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 104) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  return sub_1BFAAEB98();
}

uint64_t sub_1BFA8F5FC@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_1BFAAF688();
  OUTLINED_FUNCTION_2_3();
  v43 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCF0, &unk_1BFAB4938);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_1BFAAEC18();
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v38 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v38 - v19;
  sub_1BFAAF728();
  v21 = sub_1BFAAE5C8();

  v22 = sub_1BFA2363C(0x73656D616ELL, 0xE500000000000000, v21);

  if (!v22)
  {
    goto LABEL_9;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1BFB60E90](0, v22);
LABEL_5:

    v24 = sub_1BFAAE5B8();

    if (*(v24 + 16))
    {
      v25 = sub_1BFA901C0();

      sub_1BFA6100C(v25, v8);

      if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
      {
        v41 = *(v11 + 32);
        v42 = v11 + 32;
        v41(v20, v8, v9);
        sub_1BFAAF228();
        v28 = *(v11 + 16);
        v28(v18, v20, v9);
        v29 = sub_1BFAAF668();
        v39 = sub_1BFAAFB78();
        v40 = v29;
        if (os_log_type_enabled(v29, v39))
        {
          v30 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v45 = v38;
          *v30 = 136315138;
          v28(v15, v18, v9);
          v31 = sub_1BFAAF8B8();
          v33 = v32;
          (*(v11 + 8))(v18, v9);
          v34 = sub_1BF9F88A8(v31, v33, &v45);

          v35 = v30;
          *(v30 + 4) = v34;
          v36 = v40;
          _os_log_impl(&dword_1BF9F6000, v40, v39, "Built HomeEntity from referenced entity's identifiers: %s", v35, 0xCu);
          v37 = v38;
          __swift_destroy_boxed_opaque_existential_2Tm(v38);
          MEMORY[0x1BFB618C0](v37, -1, -1);
          MEMORY[0x1BFB618C0](v35, -1, -1);
        }

        else
        {

          (*(v11 + 8))(v18, v9);
        }

        (*(v43 + 8))(v5, v1);
        v27 = v44;
        v41(v44, v20, v9);
        v26 = 0;
        return __swift_storeEnumTagSinglePayload(v27, v26, 1, v9);
      }

      sub_1BFA20F44(v8, &qword_1EBDFBCF0, &unk_1BFAB4938);
    }

    else
    {
    }

LABEL_9:
    v26 = 1;
    v27 = v44;
    return __swift_storeEnumTagSinglePayload(v27, v26, 1, v9);
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BFA8FA90()
{
  v0 = sub_1BFAAE588();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v101 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v100 = &v93 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v98 = &v93 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v96 = &v93 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v95 = &v93 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v94 = &v93 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v93 = &v93 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v93 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0D8, &qword_1BFAB6F50);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0E0, &qword_1BFAB6F58);
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v104 = *(v19 + 72);
  v97 = 8 * v104;
  v22 = swift_allocObject();
  v99 = v22;
  *(v22 + 16) = xmmword_1BFAB6F20;
  v23 = (v22 + v21);
  v24 = *(v20 + 56);
  v25 = v20;
  v105 = v20;
  v26 = *MEMORY[0x1E69D17A8];
  v27 = *(v1 + 104);
  v107 = v1 + 104;
  v108 = v27;
  v27(v17, v26, v0);
  v28 = sub_1BFAAE578();
  v30 = v29;
  v31 = *(v1 + 8);
  v106 = v1 + 8;
  v111 = v31;
  v31(v17, v0);
  *v23 = v28;
  v23[1] = v30;
  v102 = v23;
  v32 = *MEMORY[0x1E69D2E98];
  v109 = sub_1BFAAEBF8();
  v33 = *(v109 - 8);
  v34 = *(v33 + 104);
  v110 = v33 + 104;
  v34(v23 + v24, v32, v109);
  v103 = v34;
  v35 = v104;
  v36 = (v23 + v104);
  v37 = *(v25 + 56);
  v38 = v93;
  v39 = v108;
  v108(v93, *MEMORY[0x1E69D17B8], v0);
  v40 = sub_1BFAAE578();
  v42 = v41;
  v111(v38, v0);
  *v36 = v40;
  v36[1] = v42;
  v43 = v36 + v37;
  v44 = v109;
  v34(v43, *MEMORY[0x1E69D2EA8], v109);
  v45 = v102;
  v46 = (v102 + 2 * v35);
  v47 = *(v105 + 56);
  v48 = v94;
  v39(v94, *MEMORY[0x1E69D17B0], v0);
  v49 = v48;
  v50 = sub_1BFAAE578();
  v52 = v51;
  v53 = v49;
  v54 = v111;
  v111(v53, v0);
  *v46 = v50;
  v46[1] = v52;
  v55 = v46 + v47;
  v56 = v103;
  v103(v55, *MEMORY[0x1E69D2EA0], v44);
  v57 = v104;
  v58 = (v45 + 3 * v104);
  v94 = *(v105 + 56);
  v59 = v95;
  v108(v95, *MEMORY[0x1E69D17D8], v0);
  v60 = sub_1BFAAE578();
  v62 = v61;
  v54(v59, v0);
  *v58 = v60;
  v58[1] = v62;
  v56(&v94[v58], *MEMORY[0x1E69D2EB0], v109);
  v63 = v102;
  v64 = (v102 + 4 * v57);
  v65 = v105;
  v95 = *(v105 + 56);
  v66 = v96;
  v108(v96, *MEMORY[0x1E69D17C8], v0);
  v67 = sub_1BFAAE578();
  v69 = v68;
  v70 = v111;
  v111(v66, v0);
  *v64 = v67;
  v64[1] = v69;
  v71 = v103;
  v103(&v95[v64], *MEMORY[0x1E69D2EC8], v109);
  v72 = (v63 + 5 * v57);
  v96 = *(v65 + 56);
  v73 = v98;
  v74 = v108;
  v108(v98, *MEMORY[0x1E69D17C0], v0);
  v75 = sub_1BFAAE578();
  v77 = v76;
  v70(v73, v0);
  *v72 = v75;
  v72[1] = v77;
  v71(&v96[v72], *MEMORY[0x1E69D2EB8], v109);
  v78 = v102;
  v79 = (v102 + 6 * v57);
  v80 = v105;
  v98 = *(v105 + 56);
  v81 = v100;
  v74(v100, *MEMORY[0x1E69D17E0], v0);
  v82 = sub_1BFAAE578();
  v84 = v83;
  v111(v81, v0);
  *v79 = v82;
  v79[1] = v84;
  LODWORD(v100) = *MEMORY[0x1E69D2EC0];
  v85 = v103;
  (v103)(&v98[v79]);
  v86 = (v78 + v97 - v104);
  v87 = *(v80 + 56);
  v88 = v101;
  v108(v101, *MEMORY[0x1E69D17D0], v0);
  v89 = sub_1BFAAE578();
  v91 = v90;
  v111(v88, v0);
  *v86 = v89;
  v86[1] = v91;
  v85(v86 + v87, v100, v109);
  result = sub_1BFAAF7D8();
  qword_1EBDFC0A8 = result;
  return result;
}

uint64_t sub_1BFA901C0()
{
  v197 = sub_1BFAAF688();
  v238 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v1 = &v160 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0B0, &qword_1BFAB6F30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v172 = &v160 - v3;
  v171 = sub_1BFAAEBF8();
  v236 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v170 = &v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1BFAAEC18();
  v188 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v175 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v183 = &v160 - v7;
  v184 = sub_1BFAAE3F8();
  v235 = *(v184 - 8);
  v8 = MEMORY[0x1EEE9AC00](v184);
  v168 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v176 = &v160 - v10;
  v11 = sub_1BFAAE598();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v217 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0B8, &qword_1BFAB6F38);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v179 = &v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v211 = &v160 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v219 = &v160 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v160 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0C0, &qword_1BFAB6F40);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v195 = &v160 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v181 = &v160 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v180 = &v160 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v200 = &v160 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v209 = &v160 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v215 = &v160 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v214 = &v160 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v222 = &v160 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v190 = &v160 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v203 = &v160 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v160 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v160 - v47;
  v239 = sub_1BFAAE568();
  v49 = *(v239 - 8);
  v50 = MEMORY[0x1EEE9AC00](v239);
  v174 = &v160 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v161 = &v160 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v213 = &v160 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v182 = &v160 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v224 = &v160 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v185 = &v160 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v237 = &v160 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v189 = &v160 - v64;

  result = sub_1BFA91EEC(v65);
  v68 = v48;
  v69 = 0;
  v71 = result + 64;
  v70 = *(result + 64);
  v202 = result;
  v72 = 1 << *(result + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & v70;
  v75 = (v72 + 63) >> 6;
  v233 = v49 + 16;
  v225 = *MEMORY[0x1E69D1B10];
  v232 = (v12 + 104);
  v216 = (v12 + 32);
  v223 = (v12 + 8);
  v234 = (v49 + 8);
  v226 = v49;
  v193 = (v49 + 32);
  v218 = *MEMORY[0x1E69D1B18];
  v210 = *MEMORY[0x1E69D1B30];
  v196 = (v238 + 8);
  v173 = (v235 + 32);
  v177 = *MEMORY[0x1E69D1B20];
  v167 = (v235 + 16);
  v164 = (v236 + 32);
  v163 = *MEMORY[0x1E69D2ED0];
  v162 = (v236 + 104);
  v166 = (v235 + 8);
  v187 = MEMORY[0x1E69E7CC0];
  v165 = v188 + 32;
  *&v67 = 136315394;
  v194 = v67;
  v227 = v14;
  v201 = v22;
  v220 = v46;
  v238 = v48;
  v198 = v75;
  v206 = v1;
  v199 = result + 64;
LABEL_4:
  v76 = v69;
  v77 = v203;
  if (!v74)
  {
    goto LABEL_6;
  }

  do
  {
    v78 = v76;
LABEL_9:
    v207 = (v74 - 1) & v74;
    v208 = v78;
    v79 = (v78 << 9) | (8 * __clz(__rbit64(v74)));
    v80 = *(v202 + 56);
    v81 = *(v202 + 48) + v79;
    v205 = *v81;
    v204 = *(v81 + 4);
    v82 = *(v80 + v79);
    v235 = *(v82 + 16);
    v236 = v82;
    if (!v235)
    {

      goto LABEL_47;
    }

    v192 = (*(v226 + 80) + 32) & ~*(v226 + 80);
    v231 = v82 + v192;

    v83 = 0;
    while (1)
    {
      if (v83 >= *(v236 + 16))
      {
        __break(1u);
        goto LABEL_80;
      }

      v228 = *(v226 + 72);
      v230 = *(v226 + 16);
      v230(v237, v231 + v228 * v83, v239);
      sub_1BFAAE548();
      v229 = *v232;
      v229(v46, v225, v11);
      __swift_storeEnumTagSinglePayload(v46, 0, 1, v11);
      v84 = *(v14 + 48);
      sub_1BFA92268(v68, v22);
      sub_1BFA92268(v46, &v22[v84]);
      if (__swift_getEnumTagSinglePayload(v22, 1, v11) == 1)
      {
        break;
      }

      sub_1BFA92268(v22, v77);
      if (__swift_getEnumTagSinglePayload(&v22[v84], 1, v11) == 1)
      {
        sub_1BFA20F44(v46, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        sub_1BFA20F44(v68, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        (*v223)(v77, v11);
        goto LABEL_17;
      }

      v85 = v217;
      (*v216)(v217, &v22[v84], v11);
      sub_1BFA922D8();
      v86 = sub_1BFAAF848();
      v87 = *v223;
      (*v223)(v85, v11);
      sub_1BFA20F44(v220, &qword_1EBDFC0C0, &qword_1BFAB6F40);
      sub_1BFA20F44(v238, &qword_1EBDFC0C0, &qword_1BFAB6F40);
      v87(v77, v11);
      v46 = v220;
      v14 = v227;
      v68 = v238;
      sub_1BFA20F44(v22, &qword_1EBDFC0C0, &qword_1BFAB6F40);
      if (v86)
      {
        goto LABEL_22;
      }

LABEL_19:
      ++v83;
      result = (*v234)(v237, v239);
      if (v235 == v83)
      {
        goto LABEL_47;
      }
    }

    sub_1BFA20F44(v46, &qword_1EBDFC0C0, &qword_1BFAB6F40);
    v68 = v238;
    sub_1BFA20F44(v238, &qword_1EBDFC0C0, &qword_1BFAB6F40);
    if (__swift_getEnumTagSinglePayload(&v22[v84], 1, v11) != 1)
    {
LABEL_17:
      sub_1BFA20F44(v22, &qword_1EBDFC0B8, &qword_1BFAB6F38);
      goto LABEL_19;
    }

    sub_1BFA20F44(v22, &qword_1EBDFC0C0, &qword_1BFAB6F40);
LABEL_22:
    v88 = v189;
    v89 = v239;
    v186 = *v193;
    v186(v189, v237, v239);
    v178 = sub_1BFAAE558();
    v191 = v90;
    v221 = *v234;
    result = v221(v88, v89);
    v91 = 0;
    v92 = v231;
    v93 = v190;
    while (2)
    {
      if (v91 >= *(v236 + 16))
      {
        goto LABEL_81;
      }

      v230(v224, v92, v239);
      sub_1BFAAE548();
      v94 = v93;
      v95 = v222;
      v229(v222, v218, v11);
      __swift_storeEnumTagSinglePayload(v95, 0, 1, v11);
      v96 = *(v227 + 48);
      v97 = v219;
      sub_1BFA92268(v94, v219);
      sub_1BFA92268(v95, v97 + v96);
      if (__swift_getEnumTagSinglePayload(v97, 1, v11) != 1)
      {
        v93 = v94;
        v100 = v214;
        sub_1BFA92268(v97, v214);
        if (__swift_getEnumTagSinglePayload(v97 + v96, 1, v11) == 1)
        {
          sub_1BFA20F44(v222, &qword_1EBDFC0C0, &qword_1BFAB6F40);
          sub_1BFA20F44(v93, &qword_1EBDFC0C0, &qword_1BFAB6F40);
          (*v223)(v100, v11);
          v99 = v97;
          goto LABEL_30;
        }

        v101 = v217;
        (*v216)(v217, (v97 + v96), v11);
        sub_1BFA922D8();
        LODWORD(v212) = sub_1BFAAF848();
        v102 = *v223;
        (*v223)(v101, v11);
        sub_1BFA20F44(v222, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        sub_1BFA20F44(v93, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        v102(v100, v11);
        sub_1BFA20F44(v97, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        v68 = v238;
        if (v212)
        {
          goto LABEL_34;
        }

LABEL_32:
        ++v91;
        result = v221(v224, v239);
        v92 += v228;
        if (v235 == v91)
        {

          v14 = v227;
          goto LABEL_46;
        }

        continue;
      }

      break;
    }

    sub_1BFA20F44(v95, &qword_1EBDFC0C0, &qword_1BFAB6F40);
    sub_1BFA20F44(v94, &qword_1EBDFC0C0, &qword_1BFAB6F40);
    v98 = __swift_getEnumTagSinglePayload(v97 + v96, 1, v11) == 1;
    v99 = v97;
    v93 = v94;
    if (!v98)
    {
LABEL_30:
      sub_1BFA20F44(v99, &qword_1EBDFC0B8, &qword_1BFAB6F38);
      v68 = v238;
      goto LABEL_32;
    }

    sub_1BFA20F44(v97, &qword_1EBDFC0C0, &qword_1BFAB6F40);
    v68 = v238;
LABEL_34:
    v103 = v185;
    v104 = v239;
    v186(v185, v224, v239);
    v160 = sub_1BFAAE558();
    v212 = v105;
    result = v221(v103, v104);
    v106 = 0;
    v107 = v213;
    while (2)
    {
      v108 = v215;
      if (v106 >= *(v236 + 16))
      {
        goto LABEL_82;
      }

      v230(v107, v231, v239);
      sub_1BFAAE548();
      v109 = v209;
      v229(v209, v210, v11);
      __swift_storeEnumTagSinglePayload(v109, 0, 1, v11);
      v110 = *(v227 + 48);
      v111 = v211;
      sub_1BFA92268(v108, v211);
      sub_1BFA92268(v109, v111 + v110);
      if (__swift_getEnumTagSinglePayload(v111, 1, v11) == 1)
      {
        sub_1BFA20F44(v109, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        v68 = v238;
        sub_1BFA20F44(v108, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        v98 = __swift_getEnumTagSinglePayload(v111 + v110, 1, v11) == 1;
        v112 = v111;
        if (!v98)
        {
LABEL_42:
          sub_1BFA20F44(v112, &qword_1EBDFC0B8, &qword_1BFAB6F38);
          v14 = v227;
          goto LABEL_44;
        }

        sub_1BFA20F44(v111, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        v131 = v195;
LABEL_52:
        v132 = v182;
        v133 = v239;
        v186(v182, v213, v239);
        sub_1BFAAE558();
        v221(v132, v133);
        v134 = v183;
        sub_1BFAAE388();

        if (__swift_getEnumTagSinglePayload(v134, 1, v184) == 1)
        {

          sub_1BFA20F44(v134, &qword_1EBDFB570, &qword_1BFAB1F50);
          v46 = v220;
          v14 = v227;
          goto LABEL_47;
        }

        result = (*v173)(v176, v134, v184);
        v135 = 0;
        v136 = v236;
        v137 = v236 + v192;
        v138 = v174;
        v139 = v177;
        while (2)
        {
          if (v135 >= *(v136 + 16))
          {
            goto LABEL_83;
          }

          v231 = v137;
          (v230)(v138);
          v140 = v180;
          sub_1BFAAE548();
          v141 = v181;
          v229(v181, v139, v11);
          __swift_storeEnumTagSinglePayload(v141, 0, 1, v11);
          v142 = *(v227 + 48);
          v143 = v179;
          sub_1BFA92268(v140, v179);
          sub_1BFA92268(v141, v143 + v142);
          if (__swift_getEnumTagSinglePayload(v143, 1, v11) == 1)
          {
            sub_1BFA20F44(v141, &qword_1EBDFC0C0, &qword_1BFAB6F40);
            sub_1BFA20F44(v140, &qword_1EBDFC0C0, &qword_1BFAB6F40);
            v98 = __swift_getEnumTagSinglePayload(v143 + v142, 1, v11) == 1;
            v144 = v143;
            if (v98)
            {
              sub_1BFA20F44(v143, &qword_1EBDFC0C0, &qword_1BFAB6F40);
              v148 = v186;
LABEL_66:

              v149 = v161;
              v150 = v239;
              v148(v161, v138, v239);
              sub_1BFAAE558();
              v221(v149, v150);
LABEL_67:
              (*v167)(v168, v176, v184);
              v151 = v172;
              v152 = v171;
              v153 = v170;
              v46 = v220;
              if (qword_1EBDFB510 != -1)
              {
                swift_once();
              }

              sub_1BFA23580(v160, v212, qword_1EBDFC0A8, v151);

              if (__swift_getEnumTagSinglePayload(v151, 1, v152) == 1)
              {
                (*v162)(v153, v163, v152);
                if (__swift_getEnumTagSinglePayload(v151, 1, v152) != 1)
                {
                  sub_1BFA20F44(v151, &qword_1EBDFC0B0, &qword_1BFAB6F30);
                }
              }

              else
              {
                (*v164)(v153, v151, v152);
              }

              sub_1BFAAEC08();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v14 = v227;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1BFA1F718(0, *(v187 + 16) + 1, 1, v187);
                v187 = v158;
              }

              v22 = v201;
              v68 = v238;
              v156 = *(v187 + 16);
              v155 = *(v187 + 24);
              if (v156 >= v155 >> 1)
              {
                sub_1BFA1F718(v155 > 1, v156 + 1, 1, v187);
                v187 = v159;
              }

              (*v166)(v176, v184);
              v157 = v187;
              *(v187 + 16) = v156 + 1;
              result = (*(v188 + 32))(v157 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + *(v188 + 72) * v156, v175, v169);
              v71 = v199;
              v75 = v198;
              v69 = v208;
              v74 = v207;
              goto LABEL_4;
            }

LABEL_62:
            sub_1BFA20F44(v144, &qword_1EBDFC0B8, &qword_1BFAB6F38);
            v136 = v236;
          }

          else
          {
            sub_1BFA92268(v143, v131);
            if (__swift_getEnumTagSinglePayload(v143 + v142, 1, v11) == 1)
            {
              sub_1BFA20F44(v181, &qword_1EBDFC0C0, &qword_1BFAB6F40);
              sub_1BFA20F44(v180, &qword_1EBDFC0C0, &qword_1BFAB6F40);
              (*v223)(v131, v11);
              v144 = v143;
              goto LABEL_62;
            }

            v145 = v217;
            (*v216)(v217, (v143 + v142), v11);
            sub_1BFA922D8();
            v146 = sub_1BFAAF848();
            v147 = *v223;
            (*v223)(v145, v11);
            sub_1BFA20F44(v181, &qword_1EBDFC0C0, &qword_1BFAB6F40);
            sub_1BFA20F44(v180, &qword_1EBDFC0C0, &qword_1BFAB6F40);
            v147(v131, v11);
            v139 = v177;
            sub_1BFA20F44(v143, &qword_1EBDFC0C0, &qword_1BFAB6F40);
            v136 = v236;
            v148 = v186;
            if (v146)
            {
              goto LABEL_66;
            }
          }

          ++v135;
          result = v221(v138, v239);
          v137 = v231 + v228;
          if (v235 == v135)
          {

            goto LABEL_67;
          }

          continue;
        }
      }

      v113 = v200;
      sub_1BFA92268(v111, v200);
      if (__swift_getEnumTagSinglePayload(v111 + v110, 1, v11) == 1)
      {
        sub_1BFA20F44(v109, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        sub_1BFA20F44(v215, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        (*v223)(v113, v11);
        v112 = v111;
        v22 = v201;
        goto LABEL_42;
      }

      v114 = v217;
      (*v216)(v217, (v111 + v110), v11);
      sub_1BFA922D8();
      v115 = sub_1BFAAF848();
      v116 = *v223;
      (*v223)(v114, v11);
      sub_1BFA20F44(v109, &qword_1EBDFC0C0, &qword_1BFAB6F40);
      sub_1BFA20F44(v215, &qword_1EBDFC0C0, &qword_1BFAB6F40);
      v116(v113, v11);
      v68 = v238;
      sub_1BFA20F44(v111, &qword_1EBDFC0C0, &qword_1BFAB6F40);
      v131 = v195;
      v22 = v201;
      v14 = v227;
      if (v115)
      {
        goto LABEL_52;
      }

LABEL_44:
      ++v106;
      v107 = v213;
      result = v221(v213, v239);
      v231 += v228;
      if (v235 != v106)
      {
        continue;
      }

      break;
    }

LABEL_46:
    v46 = v220;
LABEL_47:
    v117 = v206;
    sub_1BFAAF228();
    v118 = v236;

    v119 = sub_1BFAAF668();
    v120 = sub_1BFAAFB78();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      LODWORD(v231) = v120;
      v122 = v121;
      v235 = swift_slowAlloc();
      v242 = v235;
      *v122 = v194;
      v240 = v205;
      v241 = v204;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0C8, &qword_1BFAB6F48);
      v123 = sub_1BFAAF8B8();
      v125 = sub_1BF9F88A8(v123, v124, &v242);

      *(v122 + 4) = v125;
      *(v122 + 12) = 2080;
      v126 = MEMORY[0x1BFB60C30](v118, v239);
      v128 = v127;

      v129 = sub_1BF9F88A8(v126, v128, &v242);
      v117 = v206;

      *(v122 + 14) = v129;
      v68 = v238;
      _os_log_impl(&dword_1BF9F6000, v119, v231, "Dropped identifier group %s: %s due to missing value", v122, 0x16u);
      v130 = v235;
      swift_arrayDestroy();
      MEMORY[0x1BFB618C0](v130, -1, -1);
      MEMORY[0x1BFB618C0](v122, -1, -1);
    }

    else
    {
    }

    result = (*v196)(v117, v197);
    v76 = v208;
    v77 = v203;
    v71 = v199;
    v75 = v198;
    v74 = v207;
  }

  while (v207);
LABEL_6:
  while (1)
  {
    v78 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      break;
    }

    if (v78 >= v75)
    {

      return v187;
    }

    v74 = *(v71 + 8 * v78);
    ++v76;
    if (v74)
    {
      goto LABEL_9;
    }
  }

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

void *sub_1BFA91EEC(uint64_t a1)
{
  v47 = sub_1BFAAE568();
  v2 = MEMORY[0x1EEE9AC00](v47);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v37 - v4;
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC8];
  v48 = MEMORY[0x1E69E7CC8];
  v7 = *(a1 + 16);
  v42 = v8;
  v43 = v7;
  v41 = v8 + 16;
  v44 = (v8 + 32);
  v38 = xmmword_1BFAB08E0;
  v39 = a1;
  while (1)
  {
    if (v43 == v5)
    {

      return v6;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v9 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v10 = *(v42 + 72);
    v45 = v5;
    (*(v42 + 16))(v46, a1 + v9 + v10 * v5, v47);
    v11 = sub_1BFAAE538();
    v12 = v11;
    v13 = HIDWORD(v11) & 1;
    v14 = v11;
    v16 = sub_1BFA1F9BC(v11 | (v13 << 32));
    v17 = v6[2];
    v18 = (v15 & 1) == 0;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v19 = v15;
    if (v6[3] < v17 + v18)
    {
      sub_1BFAAB804();
      v6 = v48;
      v20 = sub_1BFA1F9BC(v14 | (v13 << 32));
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_21;
      }

      v16 = v20;
    }

    if (v19)
    {
      v22 = v6[7];
      v23 = *v44;
      (*v44)(v40, v46, v47);
      v24 = *(v22 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v22 + 8 * v16) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BFA1F758(0, *(v24 + 16) + 1, 1, v24);
        v24 = v34;
        *(v22 + 8 * v16) = v34;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1BFA1F758(v26 > 1, v27 + 1, 1, v24);
        v24 = v35;
        *(v22 + 8 * v16) = v35;
      }

      a1 = v39;
      v28 = v40;
      *(v24 + 16) = v27 + 1;
      v23((v24 + v9 + v27 * v10), v28, v47);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0E8, &unk_1BFAB6F60);
      v29 = swift_allocObject();
      *(v29 + 16) = v38;
      (*v44)((v29 + v9), v46, v47);
      v6[(v16 >> 6) + 8] |= 1 << v16;
      v30 = v6[6] + 8 * v16;
      *v30 = v12;
      *(v30 + 4) = v13;
      *(v6[7] + 8 * v16) = v29;
      v31 = v6[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_20;
      }

      v6[2] = v33;
      a1 = v39;
    }

    v5 = v45 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0C8, &qword_1BFAB6F48);
  result = sub_1BFAAFF38();
  __break(1u);
  return result;
}

uint64_t sub_1BFA92268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0C0, &qword_1BFAB6F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BFA922D8()
{
  result = qword_1EBDFC0D0;
  if (!qword_1EBDFC0D0)
  {
    sub_1BFAAE598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC0D0);
  }

  return result;
}

uint64_t sub_1BFA92360(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1Tm(a1, v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = a2(v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return v11;
}

uint64_t SuggestionsOverXPCLogger.log(from:deliveryVehicle:generationId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA9246C()
{
  v1 = v0[5];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(*(v3 + 16) + 8);
  v10 = (*(v4 + 56) + **(v4 + 56));
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1BFA925A8;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v6, v7, v2, v4);
}

uint64_t sub_1BFA925A8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t SuggestionsOverXPCLogger.logEngagement(for:with:invocationType:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA926AC()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(*(v3 + 16) + 16);
  v9 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1BFA927E4;
  v7 = v0[2];
  v6 = v0[3];

  return v9(v7, v6, v2, v4);
}

uint64_t sub_1BFA927E4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1BFA928F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BFA47AAC;

  return SuggestionsOverXPCLogger.log(from:deliveryVehicle:generationId:)(a1, a2, a3);
}

uint64_t sub_1BFA929A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BFA45CB0;

  return SuggestionsOverXPCLogger.logEngagement(for:with:invocationType:)(a1, a2);
}

void *sub_1BFA92A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = sub_1BFA92B58(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

void *sub_1BFA92B58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  return a2;
}

uint64_t SiriRuntimeSuggestionsAPIClientProvider.__allocating_init(assistantTurnState:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1BF9F9378(a1, v2 + OBJC_IVAR____TtC18SiriSuggestionsAPI39SiriRuntimeSuggestionsAPIClientProvider_assistantTurnState);
  return v2;
}

void *sub_1BFA92C40()
{
  type metadata accessor for SiriSuggestionsXPCClient();
  result = SiriSuggestionsXPCClient.__allocating_init()();
  qword_1EDCC6F68 = result;
  return result;
}

uint64_t ConfigurableSuggestionsAPIClientProvider.requestState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_requestState;
  sub_1BFAAEAC8();
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ConfigurableSuggestionsAPIClientProvider.__allocating_init(deviceState:requestState:catGlobalsHolder:salientEntitiesService:xpcClientOverride:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ConfigurableSuggestionsAPIClientProvider.init(deviceState:requestState:catGlobalsHolder:salientEntitiesService:xpcClientOverride:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ConfigurableSuggestionsAPIClientProvider.init(deviceState:requestState:catGlobalsHolder:salientEntitiesService:xpcClientOverride:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v19 = *a3;
  v10 = *(a3 + 2);
  v11 = OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_deviceState;
  sub_1BFAAEA88();
  OUTLINED_FUNCTION_0();
  (*(v12 + 32))(v5 + v11, a1);
  v13 = OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_requestState;
  sub_1BFAAEAC8();
  OUTLINED_FUNCTION_0();
  (*(v14 + 32))(v5 + v13, a2);
  v15 = v5 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_catGlobalsHolder;
  *v15 = v19;
  *(v15 + 16) = v10;
  v16 = v5 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_salientEntitiesService;
  *(v16 + 32) = *(a4 + 32);
  v17 = *(a4 + 16);
  *v16 = *a4;
  *(v16 + 16) = v17;
  *(v5 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_xpcClientOverride) = a5;
  return v5;
}

void *sub_1BFA92E68()
{
  v1 = v0;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v2 = sub_1BFAAF688();
  __swift_project_value_buffer(v2, qword_1EDCC8B70);

  v3 = sub_1BFAAF668();
  v4 = sub_1BFAAFB68();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_1BFAAEAA8();
    v8 = sub_1BF9F88A8(v6, v7, v17);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = sub_1BFAAEA68();
    v11 = sub_1BF9F88A8(v9, v10, v17);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_1BF9F6000, v3, v4, "Constructing suggestions client using state: \n%s, \ndevice state: %s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  sub_1BFA29E68(v0 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_salientEntitiesService, v17, &qword_1EBDFB638, &qword_1BFAB6BE0);
  v12 = *(v0 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_xpcClientOverride);
  if (v12)
  {
    swift_retain_n();
    v13 = v12;
  }

  else
  {
    v14 = qword_1EDCC6F60;
    swift_retain_n();
    if (v14 != -1)
    {
      swift_once();
    }

    v13 = qword_1EDCC6F68;
  }

  type metadata accessor for SiriSuggestionsAPIClients();

  v15 = static SiriSuggestionsAPIClients.createClient(salientEntitiesService:globals:deviceState:requestState:xpcClientOverride:)(v17, sub_1BFA940A0, v1, sub_1BFA940A8, v1, sub_1BFA940C4, v1, v13);

  sub_1BF9FAB40(v17, &qword_1EBDFB638, &qword_1BFAB6BE0);
  return v15;
}

uint64_t sub_1BFA93128@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_catGlobalsHolder);
  v2 = *(a1 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_catGlobalsHolder + 8);
  v4 = *(a1 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_catGlobalsHolder + 16);
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_1BFA93178@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_deviceState;
  v5 = sub_1BFAAEA88();
  a2[3] = v5;
  a2[4] = sub_1BFA94A24(qword_1EDCC7090, MEMORY[0x1E69D2D50], MEMORY[0x1E69D2D48]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  return (*(*(v5 - 8) + 16))(boxed_opaque_existential_1Tm, a1 + v4, v5);
}

uint64_t sub_1BFA9323C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_requestState;
  v5 = sub_1BFAAEAC8();
  a2[3] = v5;
  a2[4] = sub_1BFA94A24(&qword_1EDCC7088, MEMORY[0x1E69D2D60], MEMORY[0x1E69D2D58]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(boxed_opaque_existential_1Tm, a1 + v4, v5);
}

uint64_t ConfigurableSuggestionsAPIClientProvider.deinit()
{
  v1 = OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_deviceState;
  sub_1BFAAEA88();
  OUTLINED_FUNCTION_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_requestState;
  sub_1BFAAEAC8();
  OUTLINED_FUNCTION_0();
  (*(v4 + 8))(v0 + v3);

  sub_1BF9FAB40(v0 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_salientEntitiesService, &qword_1EBDFB638, &qword_1BFAB6BE0);

  return v0;
}

uint64_t ConfigurableSuggestionsAPIClientProvider.__deallocating_deinit()
{
  ConfigurableSuggestionsAPIClientProvider.deinit();

  return swift_deallocClassInstance();
}

void *static SiriRuntimeSuggestionsAPIClientProvider.createRuntimeClient(xpcClientOverride:salientEntitiesService:assistantTurnState:featureFlagProvider:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4[3];
  v9 = a4[4];
  v10 = __swift_project_boxed_opaque_existential_1(a4, v8);

  return sub_1BFA94360(a1, a2, a3, v10, v4, v8, v9);
}

void sub_1BFA934F0(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_1BFAAF078())
  {
    if (qword_1EDCC8BC0 != -1)
    {
      swift_once();
    }

    v3 = sub_1BFAAF688();
    __swift_project_value_buffer(v3, qword_1EDCC8B70);
    v4 = sub_1BFAAF668();
    v5 = sub_1BFAAFB68();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BF9F6000, v4, v5, "SAE is enabled meaning we can compute salient entities over the XPC service. Not setting a client side salient entity service", v6, 2u);
      MEMORY[0x1BFB618C0](v6, -1, -1);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v7 = type metadata accessor for RRSalientEntitiesService();
    v8 = RRSalientEntitiesService.__allocating_init()();
    *(a2 + 24) = v7;
    *(a2 + 32) = &protocol witness table for RRSalientEntitiesService;
    *a2 = v8;
  }
}

double sub_1BFA9361C@<D0>(uint64_t a1@<X8>)
{
  sub_1BFAAE998();
  sub_1BFAAE528();
  v2 = sub_1BFAAE978();
  sub_1BFA93680(&v4);

  *a1 = v4;
  result = *v5;
  *(a1 + 8) = v5[0];
  return result;
}

void sub_1BFA93680(unint64_t *a1@<X8>)
{
  v2 = sub_1BFAAE968();
  v3 = sub_1BFA93B38(v2);

  v4 = sub_1BFAAE968();
  sub_1BFA2351C(0xD000000000000010, 0x80000001BFAB9FD0, v4, &v11);

  if (!v12)
  {
    sub_1BF9FAB40(&v11, &qword_1EBDFBA30, &unk_1BFAB5450);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB958, &unk_1BFAB1EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_10;
  }

  sub_1BFA2351C(0x656369766564, 0xE600000000000000, v10, &v13);

  if (!*(&v14 + 1))
  {
LABEL_10:
    sub_1BF9FAB40(&v13, &qword_1EBDFBA30, &unk_1BFAB5450);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_12;
  }

  sub_1BFA2351C(0x614E656369766564, 0xEA0000000000656DLL, v11, &v15);

  if (!*(&v16 + 1))
  {
LABEL_12:
    sub_1BF9FAB40(&v15, &qword_1EBDFBA30, &unk_1BFAB5450);
    goto LABEL_13;
  }

  sub_1BFA94ABC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v6 = 0;
    v8 = 0;
    v5 = 0;
    goto LABEL_14;
  }

  v5 = v13;
  v6 = sub_1BFAAF8A8();
  v8 = v7;
LABEL_14:
  v9 = sub_1BFA12E44(v3);

  *a1 = v9;
  a1[1] = v6;
  a1[2] = v8;
}

uint64_t sub_1BFA93898@<X0>(uint64_t *a1@<X8>)
{
  sub_1BFAAE528();
  sub_1BFA938EC(v3, a1);
  return __swift_destroy_boxed_opaque_existential_2Tm(v3);
}

uint64_t sub_1BFA938EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1EDCC6AB0 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB688, &qword_1BFAB71E0);
  __swift_project_value_buffer(v5, qword_1EDCC6AB8);
  v6 = sub_1BFAAE818();
  sub_1BFAAE7A8();
  if (sub_1BFAAE778())
  {
    v7 = sub_1BFAAE758();
  }

  else
  {
    v7 = 0;
  }

  a2[3] = sub_1BFAAEA88();
  a2[4] = sub_1BFA94A24(qword_1EDCC7090, MEMORY[0x1E69D2D50], MEMORY[0x1E69D2D48]);
  __swift_allocate_boxed_opaque_existential_1Tm(a2);
  sub_1BF9F94C4(a1, v9);
  v9[5] = v7;

  v6(v9);

  if (!v2)
  {
    return sub_1BF9FAB40(v9, &qword_1EBDFB690, &unk_1BFAB13A0);
  }

  sub_1BF9FAB40(v9, &qword_1EBDFB690, &unk_1BFAB13A0);
  return __swift_deallocate_boxed_opaque_existential_1(a2);
}

uint64_t sub_1BFA93AB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BFAAE7A8();
  if (sub_1BFAAE778())
  {
    v4 = sub_1BFAAE758();
  }

  else
  {
    v4 = 0;
  }

  sub_1BF9FB2AC(v4, a1, a2);
}

uint64_t sub_1BFA93B38(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1BF9F8B40(*(a1 + 56) + 32 * v12, v37);
    *&v36 = v15;
    *(&v36 + 1) = v14;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    sub_1BF9F8B40(&v34, &v30);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5D8, &qword_1BFAB1160);
    if (swift_dynamicCast())
    {
      if (!*(&v27 + 1))
      {
        goto LABEL_17;
      }

      sub_1BF9FA474(&v26, v32);
      v30 = v33;
      v31[0] = v34;
      v31[1] = v35;
      sub_1BF9FA474(v32, v29);
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1BFAAB9B4();
        v2 = v38;
      }

      v16 = v30;
      sub_1BFAAFF98();
      sub_1BFAAF908();
      result = sub_1BFAAFFE8();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v18) >> 6;
        while (++v20 != v23 || (v22 & 1) == 0)
        {
          v24 = v20 == v23;
          if (v20 == v23)
          {
            v20 = 0;
          }

          v22 |= v24;
          v25 = *(v17 + 8 * v20);
          if (v25 != -1)
          {
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v2 + 48) + 16 * v21) = v16;
      sub_1BF9FA474(v29, *(v2 + 56) + 40 * v21);
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_2Tm(v31);
    }

    else
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
LABEL_17:
      sub_1BF9FAB40(&v33, &qword_1EBDFC0F8, qword_1BFAB76D0);
      result = sub_1BF9FAB40(&v26, &qword_1EBDFB5A8, &qword_1BFAB0A00);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1BFA93E6C(uint64_t a1)
{
  type metadata accessor for SiriSuggestionsXPCOnlyAPIClientProvider();
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v1 = sub_1BFA93ECC(0);
  result = sub_1BF9FAB40(v3, &qword_1EBDFB638, &qword_1BFAB6BE0);
  qword_1EDCC7790 = v1;
  return result;
}

void *sub_1BFA93ECC(void *a1)
{
  type metadata accessor for SiriSuggestionsAPIClients();
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v2 = static SiriSuggestionsAPIClients.createClient(salientEntitiesService:globals:deviceState:requestState:xpcClientOverride:)(v4, sub_1BFA93FDC, 0, sub_1BFA93FE8, 0, sub_1BFA93FE8, 0, a1);
  sub_1BF9FAB40(v4, &qword_1EBDFB638, &qword_1BFAB6BE0);
  return v2;
}

uint64_t sub_1BFA93F80()
{
  if (qword_1EDCC7788 != -1)
  {
    swift_once();
  }
}

void sub_1BFA93FDC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double sub_1BFA93FE8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *sub_1BFA94010()
{
  type metadata accessor for NoOpSiriSuggestionsClient();
  inited = swift_initStaticObject();
  type metadata accessor for LocalStateStoreClient();
  v1 = swift_allocObject();

  return sub_1BFA94920(inited, &unk_1BFAB1930, 0, v1);
}

void *sub_1BFA940CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v21 - v13;
  v25[3] = sub_1BFAAF0E8();
  v25[4] = MEMORY[0x1E69D3170];
  v25[0] = a4;
  sub_1BFA29E68(a2, &v22, &qword_1EBDFB638, &qword_1BFAB6BE0);
  if (v23)
  {
    sub_1BF9FA474(&v22, v24);
  }

  else
  {

    sub_1BFA934F0(v25, v24);
    if (v23)
    {
      sub_1BF9FAB40(&v22, &qword_1EBDFB638, &qword_1BFAB6BE0);
    }
  }

  type metadata accessor for SiriSuggestionsAPIClients();
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  sub_1BFA29E68(a3, v14, &qword_1EBDFB640, &qword_1BFAB11D0);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  sub_1BF9F9378(v14, v18 + v17);
  *(v18 + ((v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v19 = static SiriSuggestionsAPIClients.createClient(salientEntitiesService:globals:deviceState:requestState:xpcClientOverride:)(v24, sub_1BFA94CCC, v15, sub_1BFA94CB0, v16, sub_1BFA94CC8, v18, a1);

  sub_1BF9FAB40(v24, &qword_1EBDFB638, &qword_1BFAB6BE0);
  __swift_destroy_boxed_opaque_existential_2Tm(v25);
  return v19;
}

void *sub_1BFA94360(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v26 - v17;
  v30[3] = a6;
  v30[4] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v30);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1Tm, a4, a6);
  sub_1BFA29E68(a2, &v27, &qword_1EBDFB638, &qword_1BFAB6BE0);
  if (v28)
  {
    sub_1BF9FA474(&v27, v29);
  }

  else
  {
    sub_1BFA934F0(v30, v29);
    if (v28)
    {
      sub_1BF9FAB40(&v27, &qword_1EBDFB638, &qword_1BFAB6BE0);
    }
  }

  type metadata accessor for SiriSuggestionsAPIClients();
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  sub_1BFA29E68(a3, v18, &qword_1EBDFB640, &qword_1BFAB11D0);
  v22 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v23 = swift_allocObject();
  sub_1BF9F9378(v18, v23 + v22);
  *(v23 + ((v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v24 = static SiriSuggestionsAPIClients.createClient(salientEntitiesService:globals:deviceState:requestState:xpcClientOverride:)(v29, sub_1BFA949FC, v20, sub_1BFA94A04, v21, sub_1BFA94A20, v23, a1);

  sub_1BF9FAB40(v29, &qword_1EBDFB638, &qword_1BFAB6BE0);
  __swift_destroy_boxed_opaque_existential_2Tm(v30);
  return v24;
}

uint64_t sub_1BFA94660(uint64_t a1)
{
  result = sub_1BFAAEA88();
  if (v2 <= 0x3F)
  {
    result = sub_1BFAAEAC8();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1BFA947A0(uint64_t a1)
{
  sub_1BFA94880(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BFA94880(uint64_t a1)
{
  if (!qword_1EDCC64C0)
  {
    sub_1BFAAEFD8();
    v1 = sub_1BFAAFBA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCC64C0);
    }
  }
}

void *sub_1BFA94920(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = type metadata accessor for NoOpSiriSuggestionsClient();
  v11 = sub_1BFA94A24(&qword_1EBDFB630, type metadata accessor for NoOpSiriSuggestionsClient, &unk_1BFAB3A18);
  *&v9 = a1;
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB880, &qword_1BFAB1938);
  sub_1BFA27F28();
  a4[14] = sub_1BFAAF7D8();
  sub_1BF9FA474(&v9, (a4 + 15));
  a4[20] = a2;
  a4[21] = a3;
  return a4;
}

uint64_t sub_1BFA94A24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1BFB618C0);
  }

  return result;
}

unint64_t sub_1BFA94ABC()
{
  result = qword_1EDCC63D8;
  if (!qword_1EDCC63D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCC63D8);
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1BFAAEFD8();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1BFA94C04@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BFA93AB4(v4, a1);
}

void *SiriSuggestionsXPCClient.__allocating_init()()
{
  sub_1BFA94D7C();
  v0 = sub_1BFA979D8(0xD000000000000019, 0x80000001BFAB9FF0, 4096);
  v1 = [objc_opt_self() interfaceWithProtocol_];
  swift_allocObject();
  return SiriSuggestionsXPCClient.init(connection:xpcInterface:)(v0, v1);
}

unint64_t sub_1BFA94D7C()
{
  result = qword_1EDCC77A0;
  if (!qword_1EDCC77A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCC77A0);
  }

  return result;
}

uint64_t sub_1BFA94DC0(uint64_t a1)
{
  v2 = v1;
  v21 = a1;
  v3 = sub_1BFAAF498();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A0, &qword_1BFAB7688);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  sub_1BFA01D14(v2, v11, &qword_1EBDFC1A0, &qword_1BFAB7688);
  (*(v4 + 16))(v6, v21, v3);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + *(v4 + 80) + v16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_1BFA01D64(v11, v18 + v16, &qword_1EBDFC1A0, &qword_1BFAB7688);
  (*(v4 + 32))(v18 + v17, v6, v3);
  sub_1BFA0C8A4();
}

void sub_1BFA95044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_102();
  a19 = v20;
  a20 = v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  v25 = OUTLINED_FUNCTION_15(v24);
  MEMORY[0x1EEE9AC00](v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  OUTLINED_FUNCTION_60_0(v26);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  v30 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v30);
  OUTLINED_FUNCTION_94_1();
  sub_1BFA01D14(v31, v32, v33, v34);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  OUTLINED_FUNCTION_94_1();
  sub_1BFA01D64(v36, v37, v38, v39);
  sub_1BFA0C8A4();

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFA951AC(uint64_t a1)
{
  v2 = v1;
  v21 = a1;
  v3 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC128, &qword_1BFAB75C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  sub_1BFA01D14(v2, v11, &qword_1EBDFC128, &qword_1BFAB75C0);
  sub_1BFAA196C(v21, v6);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + *(v4 + 80) + v16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_1BFA01D64(v11, v18 + v16, &qword_1EBDFC128, &qword_1BFAB75C0);
  sub_1BFAA1A2C(v6, v18 + v17);
  sub_1BFA0C8A4();
}

uint64_t sub_1BFA95400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1BFAAF498();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA954C0, 0, 0);
}

uint64_t sub_1BFA954C0()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[2];
  v0[7] = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A0, &qword_1BFAB7688) + 44));
  OUTLINED_FUNCTION_18_12();
  v0[8] = v2;
  v0[9] = *(v3 + 8);
  v4 = OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BFA95548()
{
  OUTLINED_FUNCTION_40();
  *(v0 + 80) = sub_1BFA5D280(*(v0 + 64), *(v0 + 72)) & 1;
  v1 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BFA955B0()
{
  OUTLINED_FUNCTION_40();
  if (*(v0 + 80) == 1)
  {
    (*(*(v0 + 40) + 16))(*(v0 + 48), *(v0 + 24), *(v0 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC198, &qword_1BFAB7670);
    OUTLINED_FUNCTION_93_1();
    sub_1BFAAFA68();
  }

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA95670()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[2];
  v0[3] = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC180, &qword_1BFAB7640) + 44));
  OUTLINED_FUNCTION_18_12();
  v0[4] = v2;
  v0[5] = *(v3 + 8);
  v4 = OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BFA956F8()
{
  OUTLINED_FUNCTION_40();
  *(v0 + 48) = sub_1BFA5D280(*(v0 + 32), *(v0 + 40)) & 1;
  v1 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BFA95760()
{
  OUTLINED_FUNCTION_40();
  if (*(v0 + 48) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC178, &qword_1BFAB7620);
    sub_1BFAAFA68();
  }

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA957FC()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[2];
  v0[3] = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550) + 44));
  OUTLINED_FUNCTION_18_12();
  v0[4] = v2;
  v0[5] = *(v3 + 8);
  v4 = OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BFA95884()
{
  OUTLINED_FUNCTION_40();
  *(v0 + 48) = sub_1BFA5D280(*(v0 + 32), *(v0 + 40)) & 1;
  v1 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BFA958EC()
{
  OUTLINED_FUNCTION_40();
  if (*(v0 + 48) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA48, &qword_1BFAB2A70);
    sub_1BFAAFA68();
  }

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA95968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  v5[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA959F8, 0, 0);
}

uint64_t sub_1BFA959F8()
{
  OUTLINED_FUNCTION_40();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC128, &qword_1BFAB75C0);
  OUTLINED_FUNCTION_11_10(v0);
  v1 = OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BFA95A68()
{
  OUTLINED_FUNCTION_40();
  *(v0 + 64) = sub_1BFA5D280(*(v0 + 48), *(v0 + 56)) & 1;
  v1 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BFA95AD0()
{
  OUTLINED_FUNCTION_40();
  if (*(v0 + 64) == 1)
  {
    sub_1BFAA196C(*(v0 + 24), *(v0 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC120, &qword_1BFAB75A8);
    OUTLINED_FUNCTION_93_1();
    sub_1BFAAFA68();
  }

  OUTLINED_FUNCTION_85();

  return v1();
}

void sub_1BFA95B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_102();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v26 = OUTLINED_FUNCTION_113_1(v22, v24, v25);
  v27 = OUTLINED_FUNCTION_15(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  OUTLINED_FUNCTION_60_0(v32);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  OUTLINED_FUNCTION_94_1();
  sub_1BFA01D14(v37, v38, v39, v40);
  v41 = (v31 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  OUTLINED_FUNCTION_94_1();
  sub_1BFA01D64(v43, v44, v45, v46);
  *(v42 + v41) = v23;
  v47 = v23;
  sub_1BFA0C8A4();

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFA95CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BFA95D04, 0, 0);
}

uint64_t sub_1BFA95D04()
{
  OUTLINED_FUNCTION_40();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A0, &qword_1BFAB7688);
  OUTLINED_FUNCTION_11_10(v0);
  v1 = OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BFA95D74()
{
  OUTLINED_FUNCTION_40();
  *(v0 + 64) = sub_1BFA5D280(*(v0 + 48), *(v0 + 56)) & 1;
  v1 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BFA95DDC()
{
  OUTLINED_FUNCTION_40();
  if (*(v0 + 64) == 1)
  {
    OUTLINED_FUNCTION_108_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC198, &qword_1BFAB7670);
    OUTLINED_FUNCTION_93_1();
    sub_1BFAAFA58();
  }

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA95E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BFA95E78, 0, 0);
}

uint64_t sub_1BFA95E78()
{
  OUTLINED_FUNCTION_40();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  OUTLINED_FUNCTION_11_10(v0);
  v1 = OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BFA95EE8()
{
  OUTLINED_FUNCTION_40();
  *(v0 + 64) = sub_1BFA5D280(*(v0 + 48), *(v0 + 56)) & 1;
  v1 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BFA95F50()
{
  OUTLINED_FUNCTION_40();
  if (*(v0 + 64) == 1)
  {
    OUTLINED_FUNCTION_108_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA48, &qword_1BFAB2A70);
    OUTLINED_FUNCTION_93_1();
    sub_1BFAAFA58();
  }

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA95FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BFA95FF0, 0, 0);
}

uint64_t sub_1BFA95FF0()
{
  OUTLINED_FUNCTION_43();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50_5(v1);
  v3[2] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 56) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_88_3(v4);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_104_1();

  return MEMORY[0x1EEE6DDE0](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1BFA960D4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t sub_1BFA961D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA961F8, 0, 0);
}

uint64_t sub_1BFA961F8()
{
  OUTLINED_FUNCTION_43();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  *v5 = v0;
  v5[1] = sub_1BFA962F4;
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_104_1();

  return MEMORY[0x1EEE6DDE0](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1BFA962F4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t sub_1BFA963F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a2;
  v7 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC120, &qword_1BFAB75A8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v25 - v15;
  v17 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v10 + 16))(v13, a1, v9);
  sub_1BFAA196C(a3, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v25 + 80) + v19 + 8) & ~*(v25 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v10 + 32))(v21 + v18, v13, v9);
  *(v21 + v19) = v26;
  sub_1BFAA1A2C(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v22 = (v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA9669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC178, &qword_1BFAB7620);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();
  v7[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC180, &qword_1BFAB7640);
  v7[11] = swift_task_alloc();
  v10 = sub_1BFAAE3F8();
  v7[12] = v10;
  v7[13] = *(v10 - 8);
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA9680C, 0, 0);
}

uint64_t sub_1BFA968CC()
{
  OUTLINED_FUNCTION_40();
  v0 = OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_114_1(v0, v1);

  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA96940()
{
  OUTLINED_FUNCTION_43();
  v1 = OUTLINED_FUNCTION_29_5();
  v2(v1);
  sub_1BFAA445C(v0, &qword_1EBDFC180, &qword_1BFAB7640);

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t sub_1BFA969D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = *(type metadata accessor for SiriSuggestions.SuggestionList(0) - 8);
  v8[7] = v9;
  v8[8] = *(v9 + 64);
  v8[9] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC120, &qword_1BFAB75A8);
  v8[10] = v10;
  v11 = *(v10 - 8);
  v8[11] = v11;
  v8[12] = *(v11 + 64);
  v8[13] = swift_task_alloc();
  v8[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC128, &qword_1BFAB75C0);
  v8[15] = swift_task_alloc();
  v12 = sub_1BFAAE3F8();
  v8[16] = v12;
  v8[17] = *(v12 - 8);
  v8[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA96BA8, 0, 0);
}

uint64_t sub_1BFA96BA8(uint64_t a1)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[15];
  v20 = v1[16];
  v21 = v1[14];
  v5 = v1[11];
  v6 = v1[10];
  v23 = v1[13];
  v24 = v1[9];
  v26 = v1[12];
  v7 = v1[3];
  v22 = v1[4];
  v25 = v1[7];
  v8 = v1[2];
  sub_1BFAAE3E8();
  v9 = sub_1BFAAE398();
  v11 = v10;
  v1[19] = v9;
  v1[20] = v10;
  (*(v2 + 8))(v3, v20);
  v12 = *(v5 + 16);
  v12(v4, v8, v6);
  *(v4 + *(v21 + 44)) = v7;
  v13 = (v4 + *(v21 + 48));
  *v13 = v9;
  v13[1] = v11;
  v12(v23, v8, v6);
  sub_1BFAA196C(v22, v24);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = (v26 + *(v25 + 80) + v14) & ~*(v25 + 80);
  v16 = swift_allocObject();
  v1[21] = v16;
  (*(v5 + 32))(v16 + v14, v23, v6);
  sub_1BFAA1A2C(v24, v16 + v15);

  v17 = OUTLINED_FUNCTION_93();

  return MEMORY[0x1EEE6DFA0](v17, v18, 0);
}

uint64_t sub_1BFA96D6C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_114_1(*(v0 + 152), *(v0 + 160));

  v1 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BFA96DE8()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 120);
  (*(v0 + 40))(v1);
  sub_1BFAA445C(v1, &qword_1EBDFC128, &qword_1BFAB75C0);

  OUTLINED_FUNCTION_85();

  return v2();
}

uint64_t sub_1BFA96EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BFAA196C(a3, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC120, &qword_1BFAB75A8);
  return sub_1BFAAFA68();
}

uint64_t sub_1BFA96F7C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_85();

    return v10();
  }
}

uint64_t sub_1BFA97098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BFA970BC, 0, 0);
}

uint64_t sub_1BFA970BC()
{
  OUTLINED_FUNCTION_43();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50_5(v1);
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  sub_1BFAAF498();
  *v4 = v0;
  v4[1] = sub_1BFA971A8;
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_104_1();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1BFA971A8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_85();

    return v10();
  }
}

uint64_t sub_1BFA972C4()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

uint64_t sub_1BFA97320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC198, &qword_1BFAB7670);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();
  v7[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A0, &qword_1BFAB7688);
  v7[11] = swift_task_alloc();
  v10 = sub_1BFAAE3F8();
  v7[12] = v10;
  v7[13] = *(v10 - 8);
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA97490, 0, 0);
}

uint64_t sub_1BFA97550()
{
  OUTLINED_FUNCTION_40();
  v0 = OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_114_1(v0, v1);

  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA975C4()
{
  OUTLINED_FUNCTION_43();
  v1 = OUTLINED_FUNCTION_29_5();
  v2(v1);
  sub_1BFAA445C(v0, &qword_1EBDFC1A0, &qword_1BFAB7688);

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t sub_1BFA97658(void *a1)
{
  v1 = a1;
  v2 = OUTLINED_FUNCTION_93();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  return sub_1BFAAFA58();
}

uint64_t sub_1BFA976B0()
{
  v0 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1BFAAE3F8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  __swift_allocate_value_buffer(v0, qword_1EDCC7620);
  v13 = __swift_project_value_buffer(v0, qword_1EDCC7620);
  v14 = sub_1BFAAF288();
  v20[3] = sub_1BFAAECE8();
  v20[4] = sub_1BFA00780(&qword_1EDCC74A8, 255, MEMORY[0x1E69D2F48], MEMORY[0x1E69D2F40]);
  v20[0] = v14;
  sub_1BFAAE3E8();
  sub_1BF9F94C4(v20, v19);
  (*(v7 + 16))(v10, v12, v6);
  v15 = sub_1BFAAED08();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v15);
  v18 = MEMORY[0x1E69E7CC0];
  sub_1BFA1B5D0(&v18);
  (*(v7 + 8))(v12, v6);
  __swift_destroy_boxed_opaque_existential_2Tm(v20);
  *v2 = v18;
  sub_1BF9F97E4();
  (*(v7 + 32))(&v2[v0[6]], v10, v6);
  *&v2[v0[7]] = 0xBFF0000000000000;
  sub_1BFA01D64(v5, &v2[v0[8]], &qword_1EBDFB670, &qword_1BFAB1CD0);
  return sub_1BFAA1A2C(v2, v13);
}

id sub_1BFA979D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1BFAAF858();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void *SiriSuggestionsXPCClient.__allocating_init(connection:xpcInterface:)()
{
  OUTLINED_FUNCTION_58_0();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_60_1();
  return SiriSuggestionsXPCClient.init(connection:xpcInterface:)(v0, v1);
}

void *SiriSuggestionsXPCClient.init(connection:xpcInterface:)(void *a1, void *a2)
{
  v3 = v2;
  v2[4] = 0x6E65696C43435058;
  v2[5] = 0xE900000000000074;
  type metadata accessor for ContinuationsManager();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCD8, &qword_1BFAB4770);
  *(v6 + 112) = sub_1BFAAF7D8();
  v2[3] = v6;

  v7 = sub_1BFA97BC8(a1, a2, v6);

  if (v7)
  {
    v2[2] = v7;
  }

  else
  {

    OUTLINED_FUNCTION_96();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_1BFA97BC8(void *a1, void *a2, uint64_t a3)
{
  v6 = [objc_opt_self() interfaceWithProtocol_];
  [a2 setInterface:v6 forSelector:sel_getSuggestionsForAppWithAppBundleId_placementId_entities_intentsToSuggest_bridge_completionHandler_ argumentIndex:4 ofReply:0];
  [a1 setRemoteObjectInterface_];
  v24 = sub_1BFA9F9EC;
  v25 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1BFA9F9F8;
  v23 = &block_descriptor_209;
  v7 = _Block_copy(&aBlock);
  [a1 setInterruptionHandler_];
  _Block_release(v7);
  v24 = sub_1BFA9FA3C;
  v25 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1BFA9F9F8;
  v23 = &block_descriptor_212;
  v8 = _Block_copy(&aBlock);
  [a1 setInvalidationHandler_];
  _Block_release(v8);
  [a1 resume];
  if (qword_1EDCC8BC0 != -1)
  {
    swift_once();
  }

  v9 = sub_1BFAAF688();
  __swift_project_value_buffer(v9, qword_1EDCC8B70);
  v10 = a1;
  v11 = sub_1BFAAF668();
  v12 = sub_1BFAAFB78();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_1BF9F6000, v11, v12, "Established async %@", v13, 0xCu);
    sub_1BFAA445C(v14, &qword_1EBDFBA28, &qword_1BFAB28C0);
    MEMORY[0x1BFB618C0](v14, -1, -1);
    MEMORY[0x1BFB618C0](v13, -1, -1);
  }

  v24 = sub_1BFAA43A4;
  v25 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1BFA9FDF0;
  v23 = &block_descriptor_215;
  v16 = _Block_copy(&aBlock);

  v17 = [v10 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1BFAAFBF8();

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A8, &qword_1BFAB76B8);
  if (swift_dynamicCast())
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BFA97F80(uint64_t a1)
{
  v3 = *v1;
  v2[14] = a1;
  v2[15] = v3;
  v4 = sub_1BFAAEF98();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA98064, 0, 0);
}

uint64_t sub_1BFA98064()
{
  v47 = v0;
  v1 = v0[14];
  v2 = sub_1BFAAF7D8();
  if (v1)
  {
    v3 = v0[14];
    if (qword_1EDCC8BC0 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v4 = sub_1BFAAF688();
      OUTLINED_FUNCTION_126_0(v4, qword_1EDCC8B70);

      v5 = sub_1BFAAF668();
      v6 = sub_1BFAAFB78();

      v45 = v3;
      v40 = v2;
      if (os_log_type_enabled(v5, v6))
      {
        v7 = OUTLINED_FUNCTION_51_0();
        v8 = OUTLINED_FUNCTION_31_4();
        v46[0] = v8;
        *v7 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
        v9 = sub_1BFAAF7C8();
        v11 = sub_1BF9F88A8(v9, v10, v46);

        *(v7 + 4) = v11;
        OUTLINED_FUNCTION_30_2(&dword_1BF9F6000, v12, v13, "Adding cachedData to supporting call: %s");
        __swift_destroy_boxed_opaque_existential_2Tm(v8);
        v3 = v45;
        OUTLINED_FUNCTION_94();
        OUTLINED_FUNCTION_28();
      }

      v44 = v0;
      v14 = v0[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC140, &unk_1BFAB7E40);
      v15 = sub_1BFAAFD28();
      v0 = v15;
      v16 = 0;
      v17 = v3 + 64;
      v18 = 1 << *(v3 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v3 + 64);
      v2 = (v18 + 63) >> 6;
      v41 = v15 + 64;
      v42 = v14;
      v43 = v15;
      if (!v20)
      {
        break;
      }

      while (1)
      {
        v21 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_14:
        v24 = v21 | (v16 << 6);
        v25 = v44[18];
        v26 = v44[16];
        v27 = *(v3 + 56);
        v28 = (*(v3 + 48) + 16 * v24);
        v29 = *v28;
        v3 = v28[1];
        sub_1BFA27F7C(v27 + 48 * v24, (v44 + 2));
        sub_1BFA27F7C((v44 + 2), (v44 + 8));

        sub_1BFAAEF88();
        __swift_destroy_boxed_opaque_existential_2Tm(v44 + 2);
        *(v41 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v0 = v43;
        v30 = (v43[6] + 16 * v24);
        *v30 = v29;
        v30[1] = v3;
        (*(v42 + 32))(v43[7] + *(v42 + 72) * v24, v25, v26);
        v31 = v43[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          break;
        }

        v43[2] = v33;
        v3 = v45;
        if (!v20)
        {
          goto LABEL_9;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
    }

LABEL_9:
    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v16 >= v2)
      {
        break;
      }

      v23 = *(v17 + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v20 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46[0] = v40;
    sub_1BFAA21EC(v0, sub_1BFAA217C, 0, isUniquelyReferenced_nonNull_native, v46);
    v2 = v46[0];
    v0 = v44;
  }

  v35 = sub_1BFA98434(v2);
  v37 = v36;

  v38 = v0[1];

  return v38(v35, v37);
}

uint64_t sub_1BFA98434(uint64_t a1)
{
  sub_1BFAAE278();
  OUTLINED_FUNCTION_79_3();
  swift_allocObject();
  sub_1BFAAE268();
  sub_1BFAAE248();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC170, &unk_1BFAB7610);
  sub_1BFAA37F0();
  v1 = sub_1BFAAE258();

  return v1;
}

uint64_t SiriSuggestionsXPCClient.getAutoCompletePhrase(query:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = OUTLINED_FUNCTION_12();
  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA98510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v12 = v10[6];
  v11 = v10[7];
  v13 = v10[4];
  v14 = v10[5];
  v15 = v10[3];
  OUTLINED_FUNCTION_78_3();
  v16 = swift_allocObject();
  v10[8] = v16;
  v16[2] = v11;
  v16[3] = v15;
  v16[4] = v13;
  v16[5] = v14;
  v16[6] = v12;
  OUTLINED_FUNCTION_47_5(&dword_1BFAB7200);

  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v10[9] = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_88_3(v17);
  OUTLINED_FUNCTION_138();

  return v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1BFA98614()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_85();

    return v10();
  }
}

uint64_t sub_1BFA98730()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

void sub_1BFA9878C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A0, &qword_1BFAB7688);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v19 - v11;
  v20 = *(a2 + 16);
  v13 = sub_1BFAAF858();
  v14 = sub_1BFAAF858();
  sub_1BFA01D14(a1, v12, &qword_1EBDFC1A0, &qword_1BFAB7688);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_1BFA01D64(v12, v17 + v15, &qword_1EBDFC1A0, &qword_1BFAB7688);
  *(v17 + v16) = a2;
  aBlock[4] = sub_1BFAA3FAC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BFA98B44;
  aBlock[3] = &block_descriptor_197;
  v18 = _Block_copy(aBlock);

  [v20 getAutocompletePhraseWithQuery:v13 using:v14 completionHandler:v18];
  _Block_release(v18);
}

uint64_t sub_1BFA98998(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1BFAAF498();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v12 = a3;
    sub_1BFA95B60(a3, &qword_1EBDFC1A0, &qword_1BFAB7688, &unk_1F3F0C048, &unk_1BFAB76A8, v13, v14, v15, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], v17[11]);
  }

  swift_getObjectType();
  sub_1BFAA7830(a1, a2);
  sub_1BFA94DC0(v11);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BFA98B44(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = sub_1BFAAE338();
  v9 = v8;

  v10 = a3;
  v5(v7, v9, a3);

  sub_1BF9FDC2C(v7, v9);
}

uint64_t SiriSuggestionsXPCClient.getSuggestionsForApp(for:)()
{
  OUTLINED_FUNCTION_40();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB90, &qword_1BFAB3AB0);
  v1[5] = v4;
  OUTLINED_FUNCTION_15(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_100();
  v6 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BFA98CA0()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_51();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  *(swift_task_alloc() + 16) = *(v0 + 24);
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8790], v3);
  sub_1BFAAFB38();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_136();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_1BFA98D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v5 = sub_1BFAAEF58();
  v67 = *(v5 - 1);
  v68 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v59 - v8;
  v10 = sub_1BFAAED58();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  v15 = *(v14 - 8);
  v62 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - v16;
  type metadata accessor for ContinuationBasedXPCBridge();
  v64 = v15;
  v18 = *(v15 + 16);
  v71 = v14;
  v72 = a1;
  v60 = v18;
  v61 = v15 + 16;
  v18(v17, a1, v14);
  v63 = v17;
  v19 = sub_1BFA99520();
  if (qword_1EDCC8BC0 != -1)
  {
    swift_once();
  }

  v20 = sub_1BFAAF688();
  v21 = __swift_project_value_buffer(v20, qword_1EDCC8B70);
  v22 = *(v11 + 16);
  v69 = a2;
  v22(v13, a2, v10);
  v65 = v21;
  v23 = sub_1BFAAF668();
  v24 = sub_1BFAAFB78();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v59 = v9;
    v26 = v25;
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315138;
    sub_1BFA00780(&qword_1EDCC7030, 255, MEMORY[0x1E69D2F60], MEMORY[0x1E69D2F68]);
    v28 = sub_1BFAAFEE8();
    v29 = v19;
    v31 = v30;
    (*(v11 + 8))(v13, v10);
    v32 = sub_1BF9F88A8(v28, v31, aBlock);
    v19 = v29;

    *(v26 + 4) = v32;
    _os_log_impl(&dword_1BF9F6000, v23, v24, "Making XPC request for in app suggestions for: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v27);
    MEMORY[0x1BFB618C0](v27, -1, -1);
    v33 = v26;
    v9 = v59;
    MEMORY[0x1BFB618C0](v33, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v59 = *(v70 + 16);
  sub_1BFAAED28();
  sub_1BFAAEF28();
  v34 = v68;
  v35 = *(v67 + 8);
  v35(v9, v68);
  v36 = sub_1BFAAF858();

  v37 = v66;
  sub_1BFAAED28();
  sub_1BFAAEF38();
  v39 = v38;
  v40 = (v35)(v37, v34);
  if (v39)
  {
    v41 = sub_1BFAAF858();
  }

  else
  {
    v41 = 0;
  }

  v42 = MEMORY[0x1BFB5FF80](v40);
  v43 = sub_1BFA99670(v42);
  v45 = v44;
  v68 = v19;

  v46 = sub_1BFAAE328();
  sub_1BF9FDC2C(v43, v45);
  v47 = sub_1BFAAED38();
  v48 = sub_1BFA998D8(v47);
  v50 = v49;

  if (v50 >> 60 == 15)
  {
    v51 = 0;
  }

  else
  {
    v51 = sub_1BFAAE328();
    sub_1BFA1B9DC(v48, v50);
  }

  v52 = v63;
  v53 = v71;
  v60(v63, v72, v71);
  v54 = v64;
  v55 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v56 = swift_allocObject();
  (*(v54 + 32))(v56 + v55, v52, v53);
  aBlock[4] = sub_1BFAA3CE8;
  aBlock[5] = v56;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BFAA4518;
  aBlock[3] = &block_descriptor_182;
  v57 = _Block_copy(aBlock);
  v58 = v68;

  [v59 getSuggestionsForAppWithAppBundleId:v36 placementId:v41 entities:v46 intentsToSuggest:v51 bridge:v58 completionHandler:v57];

  _Block_release(v57);
}

id sub_1BFA99520()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - v3;
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC190, &qword_1BFAB7668));
  v8 = sub_1BFAA0654(v4, sub_1BFAA1544, 0);
  v9 = objc_allocWithZone(v1);
  *&v9[OBJC_IVAR____TtC18SiriSuggestionsAPI26ContinuationBasedXPCBridge_baseBridge] = v8;
  v14.receiver = v9;
  v14.super_class = v1;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = OUTLINED_FUNCTION_46();
  v12(v11);
  return v10;
}

void *sub_1BFA99670(uint64_t a1)
{
  v31 = sub_1BFAAEF98();
  v2 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v29 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC140, &unk_1BFAB7E40);
  result = sub_1BFAAFD28();
  v5 = result;
  v6 = 0;
  v34 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v30 = v2;
  v27[1] = v2 + 32;
  v28 = result + 8;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v34 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      sub_1BFA27F7C(*(v34 + 56) + 48 * v17, v33);
      sub_1BFA27F7C(v33, v32);

      v21 = v29;
      sub_1BFAAEF88();
      __swift_destroy_boxed_opaque_existential_2Tm(v33);
      *(v28 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v22 = (v5[6] + 16 * v17);
      *v22 = v19;
      v22[1] = v20;
      result = (*(v30 + 32))(v5[7] + *(v30 + 72) * v17, v21, v31);
      v23 = v5[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v5[2] = v25;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        v26 = sub_1BFA98434(v5);

        return v26;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BFA998D8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  sub_1BFAAE278();
  swift_allocObject();
  sub_1BFAAE268();
  sub_1BFAAE248();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB600, &qword_1BFAB7660);
  sub_1BFAA3D10();
  v1 = sub_1BFAAE258();

  return v1;
}

void *sub_1BFA999A4(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    if (qword_1EDCC8BC0 != -1)
    {
      swift_once();
    }

    v3 = sub_1BFAAF688();
    __swift_project_value_buffer(v3, qword_1EDCC8B70);
    v4 = v1;
    v5 = sub_1BFAAF668();
    v6 = sub_1BFAAFB88();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA40, &qword_1BFAB4880);
      v10 = sub_1BFAAF8B8();
      v12 = sub_1BF9F88A8(v10, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1BF9F6000, v5, v6, "Cannot provide in app suggestions because of %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v8);
      MEMORY[0x1BFB618C0](v8, -1, -1);
      MEMORY[0x1BFB618C0](v7, -1, -1);
    }

    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
    return sub_1BFAAFAD8();
  }

  return result;
}

uint64_t SiriSuggestionsXPCClient.disconnect(for:)()
{
  OUTLINED_FUNCTION_40();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1BFAAEF58();
  v1[4] = v3;
  OUTLINED_FUNCTION_15(v3);
  v1[5] = v4;
  v1[6] = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_100();
  v6 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BFA99C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v11 = v10[7];
  v12 = v10[4];
  v13 = v10[5];
  v14 = v10[3];
  (*(v13 + 16))(v11, v10[2], v12);
  v15 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v16 = swift_allocObject();
  v10[8] = v16;
  *(v16 + 16) = v14;
  (*(v13 + 32))(v16 + v15, v11, v12);
  OUTLINED_FUNCTION_47_5(&dword_1BFAB7220);

  v17 = swift_task_alloc();
  v10[9] = v17;
  *v17 = v10;
  v17[1] = sub_1BFA99D38;
  OUTLINED_FUNCTION_138();

  return v18(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1BFA99D38()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA99E38()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

void sub_1BFA99E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BFAAEF58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = *(a2 + 16);
  sub_1BFAAEF28();
  v9 = sub_1BFAAF858();

  sub_1BFAAEF38();
  if (v10)
  {
    v11 = sub_1BFAAF858();
  }

  else
  {
    v11 = 0;
  }

  (*(v6 + 16))(&aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v23 = sub_1BFAA3AAC;
  v24 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1BFAA4518;
  v22 = &block_descriptor_171;
  v14 = _Block_copy(&aBlock);

  [v8 disconnectForAppWithAppBundleId:v9 placementId:v11 completionHandler:v14];
  _Block_release(v14);

  sub_1BFA95044(&qword_1EBDFC180, &qword_1BFAB7640, &unk_1F3F0BF08, &unk_1BFAB7650, v15, v16, v17, v18, aBlock, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

void sub_1BFA9A0C4(void *a1, uint64_t a2)
{
  v4 = sub_1BFAAEF58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    if (qword_1EDCC8BC0 != -1)
    {
      swift_once();
    }

    v9 = sub_1BFAAF688();
    __swift_project_value_buffer(v9, qword_1EDCC8B70);
    (*(v5 + 16))(v7, a2, v4);
    v10 = a1;
    v11 = sub_1BFAAF668();
    v12 = sub_1BFAAFB88();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315394;
      sub_1BFA00780(&qword_1EBDFC188, 255, MEMORY[0x1E69D30D0], MEMORY[0x1E69D30D8]);
      v15 = sub_1BFAAFEE8();
      v17 = v16;
      (*(v5 + 8))(v7, v4);
      v18 = sub_1BF9F88A8(v15, v17, &v24);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2080;
      v23 = a1;
      v19 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA40, &qword_1BFAB4880);
      v20 = sub_1BFAAF8B8();
      v22 = sub_1BF9F88A8(v20, v21, &v24);

      *(v13 + 14) = v22;
      _os_log_impl(&dword_1BF9F6000, v11, v12, "Unable to disconnect from %s. Remote Error: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB618C0](v14, -1, -1);
      MEMORY[0x1BFB618C0](v13, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t SiriSuggestionsXPCClient.getSuggestionsForIntents(for:)()
{
  OUTLINED_FUNCTION_40();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v4 = sub_1BFAAFC98();
  v1[9] = v4;
  OUTLINED_FUNCTION_15(v4);
  v1[10] = v5;
  v1[11] = OUTLINED_FUNCTION_109();
  v1[12] = swift_task_alloc();
  v6 = sub_1BFAAFCB8();
  v1[13] = v6;
  OUTLINED_FUNCTION_15(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_100();
  v8 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  v1[16] = v8;
  OUTLINED_FUNCTION_60_0(v8);
  v1[17] = OUTLINED_FUNCTION_100();
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA9A4EC()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[7];
  sub_1BFAAE278();
  OUTLINED_FUNCTION_79_3();
  swift_allocObject();
  v0[18] = sub_1BFAAE268();
  sub_1BFAAE248();
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC100, &unk_1BFAB7230);
  sub_1BFAA18B4();
  OUTLINED_FUNCTION_46();
  v0[19] = sub_1BFAAE258();
  v0[20] = v2;
  if (qword_1EDCC7618 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_1EDCC7618);
  }

  v3 = v0[17];
  v4 = __swift_project_value_buffer(v0[16], qword_1EDCC7620);
  sub_1BFAA196C(v4, v3);
  sub_1BFAAFCA8();

  v5 = OUTLINED_FUNCTION_95_0();
  sub_1BFA006A8(v5, v6);
  v7 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA9A7B8()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_40_5();
  v0[21] = sub_1BFA00780(v1, 255, v2, MEMORY[0x1E69E8828]);
  sub_1BFAAFF48();
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_1BFA9A898;
  v4 = OUTLINED_FUNCTION_53(v0[17]);

  return sub_1BFA9AEC8(v4, v5, v6, v7);
}

uint64_t sub_1BFA9A898()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v3[23] = v0;

  if (v0)
  {
    (*(v3[10] + 8))(v3[12], v3[9]);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA9A9A8()
{
  v15 = *(v0 + 152);
  v16 = *(v0 + 160);
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  sub_1BFAAFF48();
  OUTLINED_FUNCTION_39_8();
  v7 = sub_1BFA00780(v5, 255, v6, MEMORY[0x1E69E8818]);
  OUTLINED_FUNCTION_86_3(v7);
  v8 = *(v2 + 8);
  v8(v3, v4);
  v8(v1, v4);

  sub_1BF9FDC2C(v15, v16);
  *(v0 + 192) = *(v0 + 16);
  v9 = OUTLINED_FUNCTION_46();
  v10(v9);
  v11 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BFA9AAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_24_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_72();
  a18 = v20;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v23 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v23, qword_1EDCC8B70);
  v24 = sub_1BFAAF668();
  v25 = sub_1BFAAFB68();
  if (OUTLINED_FUNCTION_48(v25))
  {
    v27 = v20[19];
    v26 = v20[20];
    v28 = OUTLINED_FUNCTION_51_0();
    v29 = OUTLINED_FUNCTION_31_4();
    a9 = v29;
    *v28 = 136315138;
    v30 = sub_1BFAB0018();
    v32 = sub_1BF9F88A8(v30, v31, &a9);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1BF9F6000, v24, v25, "Obtaining suggestions took: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v29);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
    v33 = v27;
    v34 = v26;
  }

  else
  {
    v33 = v20[19];
    v34 = v20[20];
  }

  sub_1BF9FDC2C(v33, v34);

  sub_1BFAA1A2C(v20[17], v20[6]);
  OUTLINED_FUNCTION_83_3();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_25_1();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_1BFA9AC50()
{
  OUTLINED_FUNCTION_51();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  v4 = OUTLINED_FUNCTION_96();
  sub_1BF9FDC2C(v4, v5);
  (*(v2 + 8))(v1, v3);
  v6 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BFA9ACE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_141();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_58();
  a16 = v18;
  v21 = v18[17];
  sub_1BF9FDC2C(v18[19], v18[20]);

  sub_1BFAA19D0(v21);
  v22 = v18[23];
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v23 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v23, qword_1EDCC8B70);
  v24 = v22;
  v25 = sub_1BFAAF668();
  v26 = sub_1BFAAFB88();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_51_0();
    v28 = OUTLINED_FUNCTION_31_4();
    a9 = v28;
    *v27 = 136315138;
    v18[5] = v22;
    v29 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA40, &qword_1BFAB4880);
    v30 = sub_1BFAAF8B8();
    v32 = sub_1BF9F88A8(v30, v31, &a9);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_1BF9F6000, v25, v26, "Unable to get suggestions from remote service. %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v28);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_94();
  }

  if (qword_1EDCC7618 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_1EDCC7618);
  }

  v33 = v18[6];
  v34 = __swift_project_value_buffer(v18[16], qword_1EDCC7620);
  sub_1BFAA196C(v34, v33);

  OUTLINED_FUNCTION_83_3();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_138();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_1BFA9AEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA9AF5C, 0, 0);
}

uint64_t sub_1BFA9AF5C()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  OUTLINED_FUNCTION_89_4();
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;

  v5 = OUTLINED_FUNCTION_96();
  sub_1BFA006A8(v5, v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[8] = v7;
  *v7 = v8;
  v7[1] = sub_1BFA9B044;
  v9 = v0[6];

  return sub_1BFA9B318(v9, sub_1BFAA38B0, v4);
}

uint64_t sub_1BFA9B044()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA9B144()
{
  OUTLINED_FUNCTION_40();
  sub_1BFAA33F0(*(v0 + 48), *(v0 + 16));

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA9B1B0()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

void sub_1BFA9B214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 16);
  v8 = sub_1BFAAE328();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[4] = sub_1BFAA38BC;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1BFA98B44;
  v11[3] = &block_descriptor_156;
  v10 = _Block_copy(v11);

  [v7 getSuggestionsForIntentsWithIntentQueries:v8 completionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_1BFA9B318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1BFA9B364, 0, 0);
}

uint64_t sub_1BFA9B364()
{
  OUTLINED_FUNCTION_58();
  if (qword_1EDCC7618 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_1EDCC7618);
  }

  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  v5 = __swift_project_value_buffer(v4, qword_1EDCC7620);
  OUTLINED_FUNCTION_89_4();
  v6 = swift_allocObject();
  v0[7] = v6;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;

  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[8] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_88_3(v7);

  return sub_1BFA961D0(v9, v5, sub_1BFAA3454, v6);
}

uint64_t sub_1BFA9B4A4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t SiriSuggestionsXPCClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)()
{
  OUTLINED_FUNCTION_40();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[5] = v5;
  v6 = sub_1BFAAFC98();
  v1[10] = v6;
  OUTLINED_FUNCTION_15(v6);
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_109();
  v1[13] = swift_task_alloc();
  v8 = sub_1BFAAFCB8();
  v1[14] = v8;
  OUTLINED_FUNCTION_15(v8);
  v1[15] = v9;
  v1[16] = OUTLINED_FUNCTION_100();
  v10 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  v1[17] = v10;
  OUTLINED_FUNCTION_60_0(v10);
  v1[18] = OUTLINED_FUNCTION_100();
  v11 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BFA9B6CC()
{
  OUTLINED_FUNCTION_43();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v1 = sub_1BFAAF688();
  v0[19] = __swift_project_value_buffer(v1, qword_1EDCC8B70);
  v2 = sub_1BFAAF668();
  v3 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_91(v3))
  {
    v4 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v4);
    OUTLINED_FUNCTION_39_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_69();
  }

  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_1BFA9B7DC;
  v11 = OUTLINED_FUNCTION_53(v0[8]);

  return sub_1BFA97F80(v11);
}

uint64_t sub_1BFA9B7DC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  *(v2 + 168) = v0;
  *(v2 + 176) = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA9B8CC()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_51();
  if (v0[22] >> 60 == 15)
  {
    v1 = sub_1BFAAF668();
    v2 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_91(v2))
    {
      v3 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v3);
      OUTLINED_FUNCTION_39_0();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
      OUTLINED_FUNCTION_69();
    }

    if (qword_1EDCC7618 != -1)
    {
      OUTLINED_FUNCTION_1_11(&qword_1EDCC7618);
    }

    v9 = v0[5];
    v10 = __swift_project_value_buffer(v0[17], qword_1EDCC7620);
    sub_1BFAA196C(v10, v9);
    OUTLINED_FUNCTION_81_3();

    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_136();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    if (qword_1EDCC7618 != -1)
    {
      OUTLINED_FUNCTION_1_11(&qword_1EDCC7618);
    }

    v20 = v0[18];
    v21 = __swift_project_value_buffer(v0[17], qword_1EDCC7620);
    v0[23] = v21;
    sub_1BFAA196C(v21, v20);
    sub_1BFAAFCA8();

    v22 = OUTLINED_FUNCTION_96();
    sub_1BFA1B9C8(v22, v23);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_136();

    return MEMORY[0x1EEE6DFA0](v24, v25, v26);
  }
}

uint64_t sub_1BFA9BA74()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_40_5();
  v0[24] = sub_1BFA00780(v1, 255, v2, MEMORY[0x1E69E8828]);
  sub_1BFAAFF48();
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_1BFA9BB58;
  v4 = OUTLINED_FUNCTION_53(v0[18]);

  return sub_1BFA9C100(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BFA9BB58()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v3[26] = v0;

  if (v0)
  {
    (*(v3[11] + 8))(v3[13], v3[10]);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA9BC68()
{
  v15 = *(v0 + 168);
  v16 = *(v0 + 176);
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  sub_1BFAAFF48();
  OUTLINED_FUNCTION_39_8();
  v7 = sub_1BFA00780(v5, 255, v6, MEMORY[0x1E69E8818]);
  OUTLINED_FUNCTION_86_3(v7);
  v8 = *(v2 + 8);
  v8(v3, v4);
  v8(v1, v4);

  sub_1BFA1B9DC(v15, v16);
  *(v0 + 216) = *(v0 + 16);
  v9 = OUTLINED_FUNCTION_46();
  v10(v9);
  v11 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BFA9BDA0()
{
  OUTLINED_FUNCTION_72();
  v15 = v0;
  v1 = sub_1BFAAF668();
  v2 = sub_1BFAAFB68();
  if (OUTLINED_FUNCTION_48(v2))
  {
    v3 = OUTLINED_FUNCTION_51_0();
    v4 = OUTLINED_FUNCTION_31_4();
    v14 = v4;
    *v3 = 136315138;
    OUTLINED_FUNCTION_28_6();
    v5 = sub_1BFAB0018();
    v7 = sub_1BF9F88A8(v5, v6, &v14);

    *(v3 + 4) = v7;
    OUTLINED_FUNCTION_30_2(&dword_1BF9F6000, v8, v9, "Obtaining suggestions took: %s");
    __swift_destroy_boxed_opaque_existential_2Tm(v4);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_28();
    v10 = OUTLINED_FUNCTION_60_1();
  }

  else
  {
    v10 = v0[21];
    v11 = v0[22];
  }

  sub_1BFA1B9DC(v10, v11);

  sub_1BFAA1A2C(v0[18], v0[5]);
  OUTLINED_FUNCTION_81_3();

  OUTLINED_FUNCTION_85();

  return v12();
}

uint64_t sub_1BFA9BEDC()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_51();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  v4 = OUTLINED_FUNCTION_96();
  sub_1BFA1B9DC(v4, v5);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_136();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BFA9BF78()
{
  OUTLINED_FUNCTION_58();
  v23 = v0;
  v1 = v0[26];
  sub_1BFAA19D0(v0[18]);
  v2 = v1;
  v3 = sub_1BFAAF668();
  v4 = sub_1BFAAFB88();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[26];
    v6 = OUTLINED_FUNCTION_51_0();
    v7 = OUTLINED_FUNCTION_31_4();
    v22 = v7;
    *v6 = 136315138;
    v0[4] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA40, &qword_1BFAB4880);
    v9 = sub_1BFAAF8B8();
    v11 = sub_1BF9F88A8(v9, v10, &v22);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_39_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v7);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_69();
  }

  v17 = v0[26];
  sub_1BFAA196C(v0[23], v0[5]);

  v18 = OUTLINED_FUNCTION_60_1();
  sub_1BFA1B9DC(v18, v19);
  OUTLINED_FUNCTION_81_3();

  OUTLINED_FUNCTION_85();

  return v20();
}

uint64_t sub_1BFA9C100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA9C198, 0, 0);
}

uint64_t sub_1BFA9C198()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_51();
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  OUTLINED_FUNCTION_78_3();
  v6 = swift_allocObject();
  v0[9] = v6;
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v1;
  v6[6] = v2;

  v7 = OUTLINED_FUNCTION_96();
  sub_1BFA006A8(v7, v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[10] = v9;
  *v9 = v10;
  v9[1] = sub_1BFA9C290;
  OUTLINED_FUNCTION_136();

  return sub_1BFA9B318(v11, v12, v13);
}

uint64_t sub_1BFA9C290()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA9C390()
{
  OUTLINED_FUNCTION_40();
  sub_1BFAA33F0(*(v0 + 64), *(v0 + 16));

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA9C3FC()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

void sub_1BFA9C460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a3 + 16);
  v10 = sub_1BFAAF858();
  v11 = sub_1BFAAE328();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v14[4] = sub_1BFAA452C;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1BFA98B44;
  v14[3] = &block_descriptor_145;
  v13 = _Block_copy(v14);

  [v9 suggestNextWithRequestId:v10 extraStateStoreProperties:v11 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_1BFA9C584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v5 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v5, qword_1EDCC8B70);
  v6 = sub_1BFAAF668();
  v7 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_48(v7))
  {
    v8 = OUTLINED_FUNCTION_44_0();
    *v8 = 0;
    _os_log_impl(&dword_1BF9F6000, v6, v7, "xpc connection executing suggestNext() to get next suggestions", v8, 2u);
    OUTLINED_FUNCTION_94();
  }

  v9 = OUTLINED_FUNCTION_95_0();
  return a4(v9);
}

uint64_t SiriSuggestionsXPCClient.submitAsync(for:properties:)()
{
  OUTLINED_FUNCTION_40();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1BFAAF648();
  v1[6] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_100();
  v7 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA9C710()
{
  OUTLINED_FUNCTION_40();
  v1 = sub_1BFAAF258();
  sub_1BFAAF238();

  v2 = sub_1BFAAF258();
  sub_1BFAAF268();

  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1BFA9C7E0;
  v4 = OUTLINED_FUNCTION_53(*(v0 + 32));

  return sub_1BFA97F80(v4);
}

uint64_t sub_1BFA9C7E0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  *(v2 + 80) = v0;
  *(v2 + 88) = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA9C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v11 = v10[11];
  if (v11 >> 60 == 15)
  {
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
    }

    v12 = sub_1BFAAF688();
    OUTLINED_FUNCTION_126_0(v12, qword_1EDCC8B70);
    v13 = sub_1BFAAF668();
    v14 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_91(v14))
    {
      v15 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v15);
      OUTLINED_FUNCTION_39_0();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_69();
    }

    v21 = v10[8];
    v22 = sub_1BFAAF258();
    OUTLINED_FUNCTION_62_2(v21, "SiriSuggestionsLocalStorePropertiesXPCSubmission", 48);

    v23 = OUTLINED_FUNCTION_93();
    v24(v23);

    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_138();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }

  else
  {
    v34 = v10[10];
    v35 = v10[5];
    v37 = v10[2];
    v36 = v10[3];
    OUTLINED_FUNCTION_78_3();
    v38 = swift_allocObject();
    v10[12] = v38;
    v38[2] = v35;
    v38[3] = v37;
    v38[4] = v36;
    v38[5] = v34;
    v38[6] = v11;

    v39 = OUTLINED_FUNCTION_60_1();
    sub_1BFA1B9C8(v39, v40);
    v41 = swift_task_alloc();
    v10[13] = v41;
    *v41 = v10;
    v41[1] = sub_1BFA9CAD4;
    OUTLINED_FUNCTION_138();

    return v42(v42, v43, v44, v45, v46, v47, v48, v49, sub_1BFA007C8, a10);
  }
}

uint64_t sub_1BFA9CAD4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA9CBD4()
{
  OUTLINED_FUNCTION_43();
  sub_1BFA1B9DC(v0[10], v0[11]);
  v1 = v0[8];
  v2 = sub_1BFAAF258();
  OUTLINED_FUNCTION_62_2(v1, "SiriSuggestionsLocalStorePropertiesXPCSubmission", 48);

  v3 = OUTLINED_FUNCTION_93();
  v4(v3);

  OUTLINED_FUNCTION_85();

  return v5();
}

uint64_t sub_1BFA9CC7C()
{
  OUTLINED_FUNCTION_43();
  sub_1BFA1B9DC(*(v0 + 80), *(v0 + 88));

  v1 = sub_1BFAAF258();
  sub_1BFAAF248();

  v2 = OUTLINED_FUNCTION_46();
  v3(v2);

  OUTLINED_FUNCTION_85();

  return v4();
}

uint64_t sub_1BFA9CD3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v18 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - v12;
  sub_1BFA01D14(a1, &v17 - v12, &qword_1EBDFC118, &qword_1BFAB7550);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  sub_1BFA01D64(v13, v15 + v14, &qword_1EBDFC118, &qword_1BFAB7550);
  sub_1BFA9CE9C(a3, a4, a5, v18, sub_1BFAA3300, v15);
}

void sub_1BFA9CE9C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (qword_1EDCC8BC0 != -1)
  {
    swift_once();
  }

  v14 = sub_1BFAAF688();
  __swift_project_value_buffer(v14, qword_1EDCC8B70);

  sub_1BFA006A8(a3, a4);
  v15 = sub_1BFAAF668();
  v16 = sub_1BFAAFB78();

  sub_1BF9FDC2C(a3, a4);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v17 = 136315394;
    *(v17 + 4) = sub_1BF9F88A8(a1, a2, aBlock);
    *(v17 + 12) = 2080;
    v18 = sub_1BFAAE318();
    v20 = a5;
    v21 = sub_1BF9F88A8(v18, v19, aBlock);

    *(v17 + 14) = v21;
    a5 = v20;
    _os_log_impl(&dword_1BF9F6000, v15, v16, "Calling Suggestions XPC service submit on request: %s, with stateStoreProperties: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB618C0](v27, -1, -1);
    MEMORY[0x1BFB618C0](v17, -1, -1);
  }

  else
  {
  }

  v22 = *(v7 + 16);
  v23 = sub_1BFAAF858();
  v24 = sub_1BFAAE328();
  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  aBlock[4] = sub_1BFAA3380;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BFAA4518;
  aBlock[3] = &block_descriptor_115;
  v26 = _Block_copy(aBlock);

  [v22 submitFor:v23 stateStoreProperties:v24 completion:v26];
  _Block_release(v26);
}

void sub_1BFA9D190(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1BFA9D1FC(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC128, &qword_1BFAB75C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v15 - v10;
  sub_1BFA01D14(a1, &v15 - v10, &qword_1EBDFC128, &qword_1BFAB75C0);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_1BFA01D64(v11, v13 + v12, &qword_1EBDFC128, &qword_1BFAB75C0);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  a2(sub_1BFAA36B0, v13);
}

void sub_1BFA9D354(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v37 = a2;
  v38 = a5;
  v40 = a4;
  v36 = a1;
  v6 = sub_1BFAAECD8();
  v35[8] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BFAAE8E8();
  v35[7] = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BFAAE8B8();
  v35[9] = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v35 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v35 - v19;
  v39 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  MEMORY[0x1EEE9AC00](v39);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v23 = a3;
    if (qword_1EDCC8BC0 != -1)
    {
      swift_once();
    }

    v24 = sub_1BFAAF688();
    __swift_project_value_buffer(v24, qword_1EDCC8B70);
    v25 = a3;
    v26 = sub_1BFAAF668();
    v27 = sub_1BFAAFB88();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = a3;
      v42[0] = v29;
      *v28 = 136315138;
      v30 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA40, &qword_1BFAB4880);
      v31 = sub_1BFAAF8B8();
      v33 = sub_1BF9F88A8(v31, v32, v42);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1BF9F6000, v26, v27, "Cannot provide next suggestions because of %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v29);
      MEMORY[0x1BFB618C0](v29, -1, -1);
      MEMORY[0x1BFB618C0](v28, -1, -1);
    }

    if (qword_1EDCC7618 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v39, qword_1EDCC7620);
    sub_1BFA951AC(v34);
  }

  else
  {
    v35[4] = v20;
    v35[5] = v6;
    v35[0] = v15;
    v35[1] = v11;
    v35[2] = v18;
    v35[3] = v9;
    v35[6] = v8;
    sub_1BFA9DC00(v36, v37);
    sub_1BFA951AC(v22);
    sub_1BFAA19D0(v22);
  }
}

uint64_t sub_1BFA9DC00(uint64_t a1, uint64_t a2)
{
  sub_1BFAAE238();
  swift_allocObject();
  sub_1BFAAE228();
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  sub_1BFA00780(&qword_1EDCC7810, 255, type metadata accessor for SiriSuggestions.SuggestionList, &protocol conformance descriptor for SiriSuggestions.SuggestionList);
  sub_1BFAAE218();
}

uint64_t SiriSuggestionsXPCClient.warmup()()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_12();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA9DD0C()
{
  OUTLINED_FUNCTION_43();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v1 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v1, qword_1EDCC8B70);
  v2 = sub_1BFAAF668();
  v3 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_91(v3))
  {
    v4 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v4);
    OUTLINED_FUNCTION_39_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_47_5(&dword_1BFAB7268);

  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = sub_1BFA9DE48;

  return v12();
}

uint64_t sub_1BFA9DE48()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 32) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t SiriSuggestionsXPCClient.submitEngagement(for:with:)()
{
  OUTLINED_FUNCTION_40();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1BFAAE3F8();
  v1[5] = v4;
  OUTLINED_FUNCTION_15(v4);
  v1[6] = v5;
  v1[7] = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_109();
  v1[9] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA9E1B0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA9E2B0()
{
  OUTLINED_FUNCTION_43();
  sub_1BF9FDC2C(*(v0 + 88), *(v0 + 96));

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA9E334()
{
  OUTLINED_FUNCTION_43();
  sub_1BF9FDC2C(*(v0 + 88), *(v0 + 96));

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t SiriSuggestionsXPCClient.submitAsync(for:propertyKey:propertyValue:)()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  *(v1 + 80) = v4;
  *(v1 + 88) = v0;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  v7 = sub_1BFAAF648();
  *(v1 + 96) = v7;
  OUTLINED_FUNCTION_15(v7);
  *(v1 + 104) = v8;
  *(v1 + 112) = OUTLINED_FUNCTION_100();
  *(v1 + 120) = *v3;
  *(v1 + 160) = *(v3 + 16);
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA9E47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  v13 = *(v12 + 160);
  v15 = *(v12 + 120);
  v14 = *(v12 + 128);
  v17 = *(v12 + 80);
  v16 = *(v12 + 88);
  v19 = *(v12 + 64);
  v18 = *(v12 + 72);
  v20 = sub_1BFAAF258();
  sub_1BFAAF238();

  v21 = sub_1BFAAF258();
  sub_1BFAAF268();

  sub_1BFA27F7C(v17, v12 + 16);
  v22 = swift_allocObject();
  *(v12 + 136) = v22;
  *(v22 + 16) = v16;
  *(v22 + 24) = v15;
  *(v22 + 32) = v14;
  *(v22 + 40) = v13;
  *(v22 + 48) = v19;
  *(v22 + 56) = v18;
  sub_1BFA17D30((v12 + 16), (v22 + 64));

  v23 = OUTLINED_FUNCTION_95_0();
  sub_1BF9FC17C(v23, v24);
  OUTLINED_FUNCTION_47_5(&dword_1BFAB7268);

  v25 = swift_task_alloc();
  *(v12 + 144) = v25;
  *v25 = v12;
  v25[1] = sub_1BFA9E5EC;
  OUTLINED_FUNCTION_25_1();

  return v26(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1BFA9E5EC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA9E6EC()
{
  OUTLINED_FUNCTION_43();
  v1 = *(v0 + 112);
  v2 = sub_1BFAAF258();
  OUTLINED_FUNCTION_62_2(v1, "SiriSuggestionsFacadeSiriHints", 30);

  v3 = OUTLINED_FUNCTION_93();
  v4(v3);

  OUTLINED_FUNCTION_85();

  return v5();
}

uint64_t sub_1BFA9E78C()
{
  OUTLINED_FUNCTION_43();
  v1 = *(v0 + 112);

  v2 = sub_1BFAAF258();
  OUTLINED_FUNCTION_62_2(v1, "SiriSuggestionsFacadeSiriHints", 30);

  v3 = OUTLINED_FUNCTION_93();
  v4(v3);

  OUTLINED_FUNCTION_85();

  return v5();
}

uint64_t sub_1BFA9E834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[1] = a7;
  v19[2] = a8;
  v19[0] = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v19 - v14;
  v19[3] = a3;
  v19[4] = a4;
  v20 = a5 & 1;
  sub_1BFA01D14(a1, v19 - v14, &qword_1EBDFC118, &qword_1BFAB7550);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  sub_1BFA01D64(v15, v17 + v16, &qword_1EBDFC118, &qword_1BFAB7550);
  SiriSuggestionsXPCClient.submit(for:propertyKey:propertyValue:completion:)();
}

void sub_1BFA9EA18(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t SiriSuggestionsXPCClient.refreshService()()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_12();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA9EAB8()
{
  OUTLINED_FUNCTION_43();

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1BFA9EB80;

  return (sub_1BFA007C8)();
}

uint64_t sub_1BFA9EB80()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 32) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA9EC80()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

void sub_1BFA9ECDC()
{
  OUTLINED_FUNCTION_102();
  v21 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  v10 = OUTLINED_FUNCTION_15(v9);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *(v6 + 16);
  sub_1BFA01D14(v8, &v20 - v13, &qword_1EBDFC118, &qword_1BFAB7550);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  sub_1BFA01D64(v14, v17 + v16, &qword_1EBDFC118, &qword_1BFAB7550);
  v22[4] = v4;
  v22[5] = v17;
  OUTLINED_FUNCTION_35_7();
  OUTLINED_FUNCTION_34_7(COERCE_DOUBLE(1107296256));
  v22[2] = v18;
  v22[3] = v2;
  v19 = _Block_copy(v22);

  [v15 *v21];
  _Block_release(v19);
  OUTLINED_FUNCTION_101();
}

uint64_t SiriSuggestionsXPCClient.logShown(for:deliveryVehicle:generationId:)()
{
  OUTLINED_FUNCTION_40();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_1BFAAE3F8();
  v1[12] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[13] = v6;
  v1[14] = *(v7 + 64);
  v1[15] = OUTLINED_FUNCTION_109();
  v1[16] = swift_task_alloc();
  v8 = sub_1BFAAEF98();
  v1[17] = v8;
  OUTLINED_FUNCTION_15(v8);
  v1[18] = v9;
  v1[19] = OUTLINED_FUNCTION_109();
  v1[20] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA9EF4C()
{
  v59 = v0;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v1 = sub_1BFAAF688();
  __swift_project_value_buffer(v1, qword_1EDCC8B70);
  v2 = sub_1BFAAF668();
  v3 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_91(v3))
  {
    v4 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v4);
    OUTLINED_FUNCTION_39_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_69();
  }

  v10 = v0[8];

  sub_1BFAAE278();
  OUTLINED_FUNCTION_79_3();
  swift_allocObject();
  v0[21] = sub_1BFAAE268();
  sub_1BFAAE248();
  v58[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB910, &unk_1BFAB1CE0);
  v58[4] = sub_1BFAA1B70();
  v58[5] = sub_1BFAA1C28();
  v58[0] = v10;

  sub_1BFAAEF88();
  OUTLINED_FUNCTION_41_5();
  sub_1BFA00780(v11, 255, v12, MEMORY[0x1E69D30E8]);
  OUTLINED_FUNCTION_46();
  v13 = sub_1BFAAE258();
  v0[22] = v13;
  v0[23] = v14;
  v56 = v13;
  v57 = v14;
  v54 = *(v0[18] + 8);
  v54(v0[20], v0[17]);
  v0[5] = sub_1BFAAEEF8();
  v15 = MEMORY[0x1E69D3090];
  v0[6] = sub_1BFA00780(&qword_1EDCC77E0, 255, MEMORY[0x1E69D3090], MEMORY[0x1E69D30B0]);
  v0[7] = sub_1BFA00780(&qword_1EDCC64D0, 255, v15, MEMORY[0x1E69D3098]);
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_54();
  (*(v16 + 16))();
  sub_1BFAAEF88();
  v17 = sub_1BFAAE258();
  v0[24] = v17;
  v0[25] = v18;
  v50 = v18;
  v51 = v17;
  v19 = v0[16];
  v20 = v0[12];
  v21 = v0[13];
  v22 = v0[10];
  v54(v0[19], v0[17]);
  v23 = *(v21 + 16);
  (v23)(v19, v22, v20);
  v24 = sub_1BFAAF668();
  v25 = sub_1BFAAFB78();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[16];
  v29 = v0[12];
  v28 = v0[13];
  if (v26)
  {
    v30 = OUTLINED_FUNCTION_51_0();
    v52 = OUTLINED_FUNCTION_31_4();
    v58[0] = v52;
    *v30 = 136315138;
    OUTLINED_FUNCTION_38_6();
    sub_1BFA00780(v31, 255, v32, MEMORY[0x1E69695E0]);
    v55 = v23;
    v33 = v25;
    v34 = sub_1BFAAFEE8();
    v36 = v35;
    (*(v28 + 8))(v27, v29);
    v37 = sub_1BF9F88A8(v34, v36, v58);

    *(v30 + 4) = v37;
    v38 = v33;
    v23 = v55;
    _os_log_impl(&dword_1BF9F6000, v24, v38, "Calling Suggestions XPC service log on request: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v52);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {

    (*(v28 + 8))(v27, v29);
  }

  v40 = v0[12];
  v39 = v0[13];
  v41 = v0[11];
  v53 = v0[15];
  v23();
  v42 = (*(v39 + 80) + 56) & ~*(v39 + 80);
  v43 = swift_allocObject();
  v0[26] = v43;
  *(v43 + 2) = v41;
  *(v43 + 3) = v56;
  *(v43 + 4) = v57;
  *(v43 + 5) = v51;
  *(v43 + 6) = v50;
  (*(v39 + 32))(&v43[v42], v53, v40);

  v44 = OUTLINED_FUNCTION_28_6();
  sub_1BFA006A8(v44, v45);
  v46 = OUTLINED_FUNCTION_96();
  sub_1BFA006A8(v46, v47);
  v48 = swift_task_alloc();
  v0[27] = v48;
  *v48 = v0;
  v48[1] = sub_1BFA9F50C;

  return sub_1BFA007C8(sub_1BFA007C8, sub_1BFAA1CE0, v43);
}

uint64_t sub_1BFA9F50C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA9F60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  sub_1BF9FDC2C(*(v10 + 176), *(v10 + 184));
  v11 = OUTLINED_FUNCTION_96();
  sub_1BF9FDC2C(v11, v12);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_138();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1BFA9F6B0()
{
  OUTLINED_FUNCTION_43();
  sub_1BF9FDC2C(*(v0 + 176), *(v0 + 184));
  v1 = OUTLINED_FUNCTION_60_1();
  sub_1BF9FDC2C(v1, v2);

  OUTLINED_FUNCTION_85();

  return v3();
}

void sub_1BFA9F758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = aBlock - v10;
  v12 = *(a2 + 16);
  v13 = sub_1BFAAE328();
  v14 = sub_1BFAAE328();
  v15 = sub_1BFAAE3B8();
  sub_1BFA01D14(a1, v11, &qword_1EBDFC118, &qword_1BFAB7550);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_1BFA01D64(v11, v17 + v16, &qword_1EBDFC118, &qword_1BFAB7550);
  aBlock[4] = sub_1BFAA451C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BFAA4518;
  aBlock[3] = &block_descriptor_66;
  v18 = _Block_copy(aBlock);

  [v12 logWithSuggestions:v13 deliveryVehicle:v14 generationId:v15 completion:v18];
  _Block_release(v18);
}

uint64_t sub_1BFA9F9F8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1BFA9FA48(const char *a1)
{
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v3 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v3, qword_1EDCC8B70);
  oslog = sub_1BFAAF668();
  v4 = sub_1BFAAFB88();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v5);
    _os_log_impl(&dword_1BF9F6000, oslog, v4, a1, v1, 2u);
    OUTLINED_FUNCTION_69();
  }
}

uint64_t sub_1BFA9FB0C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = a1;

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA9FC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BFA9FC20, 0, 0);
}

uint64_t sub_1BFA9FC20()
{
  OUTLINED_FUNCTION_58();
  v23 = v0;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v1 = *(v0 + 24);
  v2 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v2, qword_1EDCC8B70);
  v3 = v1;
  v4 = sub_1BFAAF668();
  v5 = sub_1BFAAFB88();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = OUTLINED_FUNCTION_51_0();
    v8 = OUTLINED_FUNCTION_31_4();
    v22 = v8;
    *v7 = 136315138;
    *(v0 + 16) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA40, &qword_1BFAB4880);
    v10 = sub_1BFAAF8B8();
    v12 = sub_1BF9F88A8(v10, v11, &v22);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_39_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v8);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_69();
  }

  v18 = OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1BFA9FD98()
{
  OUTLINED_FUNCTION_40();
  sub_1BFA5D030(*(v0 + 24));
  OUTLINED_FUNCTION_85();

  return v1();
}

void sub_1BFA9FDF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t SiriSuggestionsXPCClient.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SiriSuggestionsXPCClient.__deallocating_deinit()
{
  SiriSuggestionsXPCClient.deinit();
  OUTLINED_FUNCTION_58_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1BFA9FEB4()
{
  OUTLINED_FUNCTION_43();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_60_1();

  return SiriSuggestionsXPCClient.submitEngagement(for:with:)();
}

uint64_t sub_1BFA9FF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF9FDE28;

  return SiriSuggestionsXPCClient.getAutoCompletePhrase(query:using:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1BFAA0044()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_90_4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_95_0();

  return SiriSuggestionsXPCClient.submitAsync(for:propertyKey:propertyValue:)();
}

uint64_t sub_1BFAA00F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return SiriSuggestionsXPCClient.submitAsync(for:properties:)();
}

uint64_t sub_1BFAA01A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return SiriSuggestionsXPCClient.logShown(for:deliveryVehicle:generationId:)();
}

uint64_t sub_1BFAA0250()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return SiriSuggestionsXPCClient.warmup()();
}

uint64_t sub_1BFAA02E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return SiriSuggestionsXPCClient.getSuggestionsForApp(for:)();
}

uint64_t sub_1BFAA038C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return SiriSuggestionsXPCClient.disconnect(for:)();
}

uint64_t sub_1BFAA0424()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_90_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1BF9FDE28;

  return SiriSuggestionsXPCClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)();
}

uint64_t sub_1BFAA04D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return SiriSuggestionsXPCClient.refreshService()();
}

uint64_t sub_1BFAA0564()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return SiriSuggestionsXPCClient.getSuggestionsForIntents(for:)();
}

id BaseXPCBridge.__allocating_init(continuation:dataMapper:)()
{
  OUTLINED_FUNCTION_72_4();
  v4 = objc_allocWithZone(v1);
  return BaseXPCBridge.init(continuation:dataMapper:)(v3, v2, v0);
}

id sub_1BFAA0654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v3[v9], a1, v10);
  v12 = &v3[*((*v8 & *v3) + 0x60)];
  *v12 = a2;
  *(v12 + 1) = a3;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v11 + 8))(a1, v10);
  return v13;
}

id BaseXPCBridge.init(continuation:dataMapper:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_99_0();
  v9 = *(v8 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  v10 = sub_1BFAAFAE8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v3[v9], a1, v10);
  OUTLINED_FUNCTION_99_0();
  v13 = &v3[*(v12 + 96)];
  *v13 = a2;
  *(v13 + 1) = a3;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v11 + 8))(a1, v10);
  return v14;
}

uint64_t sub_1BFAA08D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18 = a2;
  v5 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA8, &unk_1BFAB5030);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14 = MEMORY[0x1E69E7D40];
  v15 = *(v7 + 16);
  v17 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v15(v9, &v3[v17], v6);
  (*&v3[*((*v14 & *v3) + 0x60)])(a1, v18);
  sub_1BFAAFAC8();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  result = sub_1BFAAFAA8();
  if (result)
  {
    v19 = 0;
    return sub_1BFAAFAD8();
  }

  return result;
}

void BaseXPCBridge.process(_:)()
{
  OUTLINED_FUNCTION_102();
  v18 = v1;
  v19 = v2;
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  OUTLINED_FUNCTION_103_1();
  v6 = sub_1BFAAFAE8();
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  OUTLINED_FUNCTION_103_1();
  sub_1BFAAFAB8();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v12);
  (*(v8 + 16))(v11, &v0[*((v4 & v3) + 0x58)], v6);
  v13 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v17 = v0;
  (*&v0[v13])(v18, v19);
  sub_1BFAAFAC8();
  (*(v8 + 8))(v11, v6);
  v14 = OUTLINED_FUNCTION_28_6();
  v15(v14);
  if (sub_1BFAAFAA8())
  {
    v20 = 0;
    OUTLINED_FUNCTION_109_1();
  }

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFAA1044(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  return sub_1BFAAFAD8();
}

uint64_t BaseXPCBridge.connectionError(error:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  sub_1BFAAFAE8();
  return sub_1BFAAFAD8();
}

uint64_t sub_1BFAA1160()
{
  if (qword_1EDCC8BC0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BFAAF688();
  __swift_project_value_buffer(v0, qword_1EDCC8B70);
  v1 = sub_1BFAAF668();
  v2 = sub_1BFAAFB78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BF9F6000, v1, v2, "ContinuationBasedXPCBridge continuation.finish()", v3, 2u);
    MEMORY[0x1BFB618C0](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  return sub_1BFAAFAD8();
}

Swift::Void __swiftcall BaseXPCBridge.finalise()()
{
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v0 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v0, qword_1EDCC8B70);
  v1 = sub_1BFAAF668();
  v2 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_48(v2))
  {
    v3 = OUTLINED_FUNCTION_44_0();
    *v3 = 0;
    _os_log_impl(&dword_1BF9F6000, v1, v2, "ContinuationBasedXPCBridge continuation.finish()", v3, 2u);
    OUTLINED_FUNCTION_94();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  sub_1BFAAFAE8();
  sub_1BFAAFAD8();
}

id BaseXPCBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1BFAA1460(char *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  sub_1BFAAFAE8();
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(&a1[v2]);
}

id _s18SiriSuggestionsAPI13BaseXPCBridgeCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1BFAA17DC(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_1BFAA1848()
{
  OUTLINED_FUNCTION_101_0();
  v2 = sub_1BFAAEF58();
  OUTLINED_FUNCTION_60_0(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1BFA99E90(v0, v4, v5);
}

unint64_t sub_1BFAA18B4()
{
  result = qword_1EDCC6448;
  if (!qword_1EDCC6448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFC100, &unk_1BFAB7230);
    sub_1BFA00780(&qword_1EDCC6510, 255, MEMORY[0x1E69D2DC0], MEMORY[0x1E69D2DC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6448);
  }

  return result;
}

uint64_t sub_1BFAA196C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFAA19D0(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BFAA1A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BFAA1B70()
{
  result = qword_1EDCC77B8;
  if (!qword_1EDCC77B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB910, &unk_1BFAB1CE0);
    sub_1BFA00780(qword_1EDCC7818, 255, type metadata accessor for SiriSuggestions.Suggestion, &protocol conformance descriptor for SiriSuggestions.Suggestion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC77B8);
  }

  return result;
}

unint64_t sub_1BFAA1C28()
{
  result = qword_1EDCC6458;
  if (!qword_1EDCC6458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB910, &unk_1BFAB1CE0);
    sub_1BFA00780(&qword_1EDCC6620, 255, type metadata accessor for SiriSuggestions.Suggestion, &protocol conformance descriptor for SiriSuggestions.Suggestion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6458);
  }

  return result;
}

void sub_1BFAA1CE0()
{
  OUTLINED_FUNCTION_101_0();
  v2 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v2);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];

  sub_1BFA9F758(v0, v3, v4, v5, v6, v7);
}

unint64_t sub_1BFAA1D54()
{
  result = qword_1EBDFC108;
  if (!qword_1EBDFC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC108);
  }

  return result;
}

uint64_t sub_1BFAA1DA8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1BFA00780(&qword_1EDCC7E38, a2, type metadata accessor for SiriSuggestionsXPCClient, &protocol conformance descriptor for SiriSuggestionsXPCClient);
  result = sub_1BFA00780(&qword_1EDCC7E30, v3, type metadata accessor for SiriSuggestionsXPCClient, &protocol conformance descriptor for SiriSuggestionsXPCClient);
  *(a1 + 32) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsAPI0B8XPCErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BFAA1E94(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BFAA1EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1BFAA1F40(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1BFAA1F70(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  result = sub_1BFAAFAE8();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BFAA209C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BFAAEF98();
  (*(*(v7 - 8) + 16))(a1, a4, v7);

  return a2;
}

uint64_t sub_1BFAA211C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_100_1(a1, a2, a3, a4);
  sub_1BFA27F7C(v4, v5);

  return OUTLINED_FUNCTION_93();
}

uint64_t sub_1BFAA214C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_100_1(a1, a2, a3, a4);
  sub_1BF9F8B40(v4, v5);

  return OUTLINED_FUNCTION_93();
}

uint64_t sub_1BFAA217C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC148, &qword_1BFAB75E8) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC150, &qword_1BFAB75F0);
  result = sub_1BFAA209C(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1BFAA21EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v56 = a5;
  v49 = sub_1BFAAEF98();
  v9 = *(v49 - 8);
  v10 = MEMORY[0x1EEE9AC00](v49);
  v45 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC158, &qword_1BFAB75F8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (v44 - v15);
  sub_1BFAA25FC(a1, a2, a3, v54);
  v50 = v54[0];
  v51 = v54[1];
  v52 = v54[2];
  v53 = v55;
  v17 = (v9 + 32);
  v44[6] = v9 + 16;
  v44[5] = v9 + 8;
  v48 = v9;
  v44[4] = v9 + 40;
  v44[2] = a1;

  v44[1] = a3;

  v46 = v16;
  v47 = v13;
  while (1)
  {
    sub_1BFAA2638(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC150, &qword_1BFAB75F0);
    if (__swift_getEnumTagSinglePayload(v16, 1, v18) == 1)
    {
      sub_1BFA27FF0(v50);
    }

    v20 = *v16;
    v19 = v16[1];
    v21 = *v17;
    (*v17)(v13, v16 + *(v18 + 48), v49);
    v22 = *v56;
    v24 = sub_1BFA01764(v20, v19);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC160, &qword_1BFAB7600);
        sub_1BFAAFCE8();
      }
    }

    else
    {
      sub_1BFAAB198(v27, a4 & 1);
      v29 = sub_1BFA01764(v20, v19);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_17;
      }

      v24 = v29;
    }

    v31 = *v56;
    if (v28)
    {
      v32 = v48;
      v33 = *(v48 + 72) * v24;
      v34 = v45;
      v35 = v17;
      v36 = v49;
      (*(v48 + 16))(v45, v31[7] + v33, v49);
      v13 = v47;
      (*(v32 + 8))(v47, v36);

      v37 = v36;
      v17 = v35;
      (*(v32 + 40))(v31[7] + v33, v34, v37);
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      v38 = (v31[6] + 16 * v24);
      *v38 = v20;
      v38[1] = v19;
      v39 = v31[7] + *(v48 + 72) * v24;
      v13 = v47;
      v21(v39, v47, v49);
      v40 = v31[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_16;
      }

      v31[2] = v42;
    }

    a4 = 1;
    v16 = v46;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1BFAAFF38();
  __break(1u);
  return result;
}

uint64_t sub_1BFAA25FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

uint64_t sub_1BFAA2638@<X0>(uint64_t a1@<X8>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC148, &qword_1BFAB75E8);
  MEMORY[0x1EEE9AC00](v39);
  v4 = &v36 - v3;
  v5 = sub_1BFAAEF98();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC168, &qword_1BFAB7608);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v41 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v36 = v4;
  v40 = v17;
  if (v19)
  {
    v38 = a1;
    v20 = v18;
LABEL_7:
    v37 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v20 << 6);
    v22 = (*(v15 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v21, v5);
    v25 = v39;
    v26 = *(v39 + 48);
    *v14 = v23;
    *(v14 + 1) = v24;
    v27 = v8;
    v28 = v25;
    (*(v6 + 32))(&v14[v26], v27, v5);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v28);

    v29 = v37;
    a1 = v38;
LABEL_8:
    *v1 = v15;
    v1[1] = v16;
    v30 = v41;
    v1[2] = v40;
    v1[3] = v18;
    v1[4] = v29;
    v31 = v1[5];
    sub_1BFA01D64(v14, v30, &qword_1EBDFC168, &qword_1BFAB7608);
    v32 = 1;
    if (__swift_getEnumTagSinglePayload(v30, 1, v28) != 1)
    {
      v33 = v30;
      v34 = v36;
      sub_1BFA01D64(v33, v36, &qword_1EBDFC148, &qword_1BFAB75E8);
      v31(v34);
      sub_1BFAA445C(v34, &qword_1EBDFC148, &qword_1BFAB75E8);
      v32 = 0;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC150, &qword_1BFAB75F0);
    return __swift_storeEnumTagSinglePayload(a1, v32, 1, v35);
  }

  else
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= ((v17 + 64) >> 6))
      {
        v28 = v39;
        __swift_storeEnumTagSinglePayload(&v36 - v13, 1, 1, v39);
        v29 = 0;
        goto LABEL_8;
      }

      v19 = *(v16 + 8 * v20);
      ++v18;
      if (v19)
      {
        v38 = a1;
        v18 = v20;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BFAA2988@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1BF9F8B40(*(v3 + 56) + 32 * v10, v18);
    *&v19 = v13;
    *(&v19 + 1) = v12;
    sub_1BFA27FE0(v18, &v20);

    v15 = *(&v19 + 1);
    v16 = v19;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v17 = v1[5];
      *&v18[0] = v16;
      *(&v18[0] + 1) = v15;
      v18[1] = v20;
      v18[2] = v21;
      v17(v18);
      return sub_1BFAA445C(v18, &qword_1EBDFC0F8, qword_1BFAB76D0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BFAA2AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1BF9FDF08;

  return sub_1BFA9669C(a1, a2, a3, a4, a5, a7, a8);
}

uint64_t sub_1BFAA2BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF9FDF08;

  return sub_1BFA95CE4(a1, a2, a3, a4, v10);
}

uint64_t sub_1BFAA2C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF9FDF08;

  return sub_1BFA95650(a1, a2, a3, a4);
}

uint64_t sub_1BFAA2D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF9FDF08;

  return sub_1BFA957DC(a1, a2, a3, a4);
}

uint64_t sub_1BFAA2DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF9FDF08;

  return sub_1BFA95E58(a1, a2, a3, a4, v10);
}

uint64_t sub_1BFAA2EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  OUTLINED_FUNCTION_15(v10);
  OUTLINED_FUNCTION_101_1();
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_77(v11);
  *v12 = v13;
  v12[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_138();

  return v19(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1BFAA2FB0()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_51();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  OUTLINED_FUNCTION_60_0(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_136();

  return v8(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1BFAA30A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  OUTLINED_FUNCTION_60_0(v0);
  v1 = OUTLINED_FUNCTION_21_8();
  return sub_1BFA9F95C(v1);
}

uint64_t sub_1BFAA3128(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_113_1(a1, a2, a3);
  OUTLINED_FUNCTION_60_0(v4);
  v5 = OUTLINED_FUNCTION_21_8();

  return a4(v5);
}

uint64_t sub_1BFAA31AC()
{
  OUTLINED_FUNCTION_72_4();
  v4 = OUTLINED_FUNCTION_113_1(v1, v2, v3);
  OUTLINED_FUNCTION_60_0(v4);
  return sub_1BFA97658(v0);
}

uint64_t objectdestroy_62Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  OUTLINED_FUNCTION_60();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA48, &qword_1BFAB2A70);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(v0 + v2);

  OUTLINED_FUNCTION_82_2();
  v4 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1BFAA3304(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  OUTLINED_FUNCTION_60_0(v5);
  return sub_1BFA9E9A4(a1, a2 & 1, v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)));
}

uint64_t objectdestroy_12Tm()
{

  sub_1BF9FDC2C(*(v0 + 40), *(v0 + 48));
  OUTLINED_FUNCTION_78_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BFAA33F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFAA346C()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_51_4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC120, &qword_1BFAB75A8);
  OUTLINED_FUNCTION_15(v0);
  v1 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  OUTLINED_FUNCTION_15(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_77(v2);
  *v3 = v4;
  v3[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_25_1();

  return sub_1BFA969D4(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1BFAA35DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC120, &qword_1BFAB75A8);
  OUTLINED_FUNCTION_15(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  OUTLINED_FUNCTION_60_0(v8);
  v10 = v1 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_1BFA96EDC(a1, v1 + v5, v10);
}

uint64_t sub_1BFAA36D8()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_51_4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC128, &qword_1BFAB75C0);
  OUTLINED_FUNCTION_15(v0);
  v1 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  OUTLINED_FUNCTION_60_0(v1);
  OUTLINED_FUNCTION_124();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_77(v2);
  *v3 = v4;
  v3[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_136();

  return sub_1BFA95968(v5, v6, v7, v8, v9);
}

unint64_t sub_1BFAA37F0()
{
  result = qword_1EDCC7468;
  if (!qword_1EDCC7468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFC170, &unk_1BFAB7610);
    sub_1BFA00780(&qword_1EDCC74A0, 255, MEMORY[0x1E69D30E0], MEMORY[0x1E69D30E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7468);
  }

  return result;
}

uint64_t sub_1BFAA3924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_51_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC178, &qword_1BFAB7620);
  OUTLINED_FUNCTION_15(v12);
  OUTLINED_FUNCTION_31_5();
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_77(v13);
  *v14 = v15;
  v14[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_25_1();

  return v21(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1BFAA3A40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC178, &qword_1BFAB7620);
  OUTLINED_FUNCTION_60_0(v0);
  OUTLINED_FUNCTION_21_8();

  return sub_1BFA96EA0();
}

void sub_1BFAA3AAC()
{
  OUTLINED_FUNCTION_101_0();
  v0 = sub_1BFAAEF58();
  OUTLINED_FUNCTION_60_0(v0);
  v1 = OUTLINED_FUNCTION_21_8();

  sub_1BFA9A0C4(v1, v2);
}

uint64_t objectdestroy_73Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_97_1();
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  v8 = OUTLINED_FUNCTION_60_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_1();
  (*(v10 + 8))(v2 + v5);

  return MEMORY[0x1EEE6BDD0](v2, v5 + v7, v4 | 7);
}

uint64_t sub_1BFAA3BFC()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_51();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC180, &qword_1BFAB7640);
  OUTLINED_FUNCTION_60_0(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_136();

  return v8(v4, v5, v6, v7, v8, v9, v10, v11);
}

unint64_t sub_1BFAA3D10()
{
  result = qword_1EDCC6450;
  if (!qword_1EDCC6450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB600, &qword_1BFAB7660);
    sub_1BFA00780(&qword_1EDCC6518, 255, MEMORY[0x1E69D2D78], MEMORY[0x1E69D2D80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6450);
  }

  return result;
}

uint64_t sub_1BFAA3E14()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC198, &qword_1BFAB7670);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_96_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_77(v3);
  *v4 = v5;
  v4[1] = sub_1BF9FDF08;
  v6 = OUTLINED_FUNCTION_27_9();

  return sub_1BFA97320(v6, v7, v8, v9, v10, v0, v1);
}

uint64_t objectdestroy_105Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return MEMORY[0x1EEE6BDD0](v2, v5 + v6, v4 | 7);
}

uint64_t sub_1BFAA3FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_72_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_15(v12);
  OUTLINED_FUNCTION_91_3();
  v15 = *(v7 + (v14 & 0xFFFFFFFFFFFFFFF8));

  return a6(v9, v8, v6, v7 + v13, v15);
}

uint64_t sub_1BFAA408C()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_51_4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A0, &qword_1BFAB7688);
  OUTLINED_FUNCTION_15(v0);
  v1 = sub_1BFAAF498();
  OUTLINED_FUNCTION_60_0(v1);
  OUTLINED_FUNCTION_124();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_77(v2);
  *v3 = v4;
  v3[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_136();

  return sub_1BFA95400(v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_68Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_97_1();
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v8 = OUTLINED_FUNCTION_60_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_1();
  (*(v10 + 8))(v2 + v5);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 8, v4 | 7);
}

uint64_t sub_1BFAA42AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A0, &qword_1BFAB7688);
  OUTLINED_FUNCTION_15(v10);
  OUTLINED_FUNCTION_101_1();
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_77(v11);
  *v12 = v13;
  v12[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_138();

  return v19(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1BFAA43AC()
{
  OUTLINED_FUNCTION_51();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1BF9FDE28;
  OUTLINED_FUNCTION_36_0();

  return sub_1BFA9FC00(v6, v7, v8, v3, v2);
}

uint64_t sub_1BFAA445C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_113_1(a1, a2, a3);
  OUTLINED_FUNCTION_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_10_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v13 + *(a10 + 44)) = a13;
  v16 = (v13 + *(a10 + 48));
  *v16 = v14;
  v16[1] = v15;
  return a11;
}

uint64_t OUTLINED_FUNCTION_16_6(uint64_t a1)
{

  return sub_1BFAAE3E8();
}

uint64_t OUTLINED_FUNCTION_62_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1BFAAF248();
}

uint64_t OUTLINED_FUNCTION_81_3()
{
}

uint64_t OUTLINED_FUNCTION_82_2()
{
}

uint64_t OUTLINED_FUNCTION_83_3()
{
}

uint64_t OUTLINED_FUNCTION_109_1()
{

  return sub_1BFAAFAD8();
}

uint64_t OUTLINED_FUNCTION_110_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_113_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t dispatch thunk of SuggestionsLogger.log(from:deliveryVehicle:generationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_16(a1, a2, a3, a4, a5);
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v7 = OUTLINED_FUNCTION_0_15(v6);

  return v8(v7);
}

uint64_t dispatch thunk of SuggestionsLogger.logEngagement(for:with:invocationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_16(a1, a2, a3, a4, a5);
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v7 = OUTLINED_FUNCTION_0_15(v6);

  return v8(v7);
}

uint64_t SiriSuggestions.Interaction.verb.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SiriSuggestions.Interaction.requestId.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t SiriSuggestions.Interaction.generationId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriSuggestions.Interaction(0) + 52);
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SiriSuggestions.Interaction(uint64_t a1)
{
  result = qword_1EDCC6600;
  if (!qword_1EDCC6600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriSuggestions.Interaction.invocationType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriSuggestions.Interaction(0) + 56);
  sub_1BFAAEEA8();
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

void SiriSuggestions.Interaction.init(requestId:generationId:dialogIdentifiers:intent:executionParameters:catGlobalProperties:salientEntities:deviceState:owner:verb:invocationType:relatedIntents:isFirstInvocationSinceOSInstalled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_10_11(v32, v33, v34, v35, v36, v37);
  *(v27 + 8) = a23;
  *(v27 + 9) = a24;
  *(v27 + 12) = v29;
  *(v27 + 13) = v28;
  sub_1BF9FA474(v31, (v27 + 112));
  v38 = type metadata accessor for SiriSuggestions.Interaction(0);
  v39 = v38[13];
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_14();
  (*(v40 + 32))(&v27[v39], v30);
  v41 = v38[14];
  sub_1BFAAEEA8();
  OUTLINED_FUNCTION_14();
  (*(v42 + 32))(&v27[v41], a25);
  sub_1BFAA4CA8(a26, &v27[v38[15]]);
  v27[v38[16]] = a27;
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFAA4CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1B0, &qword_1BFAB7740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void SiriSuggestions.Interaction.description.getter()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1B0, &qword_1BFAB7740);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v77 - v3;
  sub_1BFAAF688();
  OUTLINED_FUNCTION_2_3();
  v77 = v6;
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_0();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77 - v11;
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_1BFAAF228();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1B8, &qword_1BFAB7748);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BFAB6F20;
  *(v13 + 32) = 0x4974736575716572;
  *(v13 + 40) = 0xE900000000000064;
  v14 = v1[11];
  v15 = MEMORY[0x1E69E6158];
  *(v13 + 48) = v1[10];
  *(v13 + 56) = v14;
  *(v13 + 72) = v15;
  strcpy((v13 + 80), "invocationType");
  *(v13 + 95) = -18;
  v16 = type metadata accessor for SiriSuggestions.Interaction(0);
  *(v13 + 120) = sub_1BFAAEEA8();
  __swift_allocate_boxed_opaque_existential_1Tm((v13 + 96));
  OUTLINED_FUNCTION_54();
  (*(v17 + 16))();
  *(v13 + 128) = 0x72656E776FLL;
  *(v13 + 136) = 0xE500000000000000;
  v18 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v18);
  *(v13 + 168) = v18;
  __swift_allocate_boxed_opaque_existential_1Tm((v13 + 144));
  OUTLINED_FUNCTION_54();
  (*(v19 + 16))();
  *(v13 + 176) = 1651664246;
  *(v13 + 184) = 0xE400000000000000;
  if (v1[9])
  {
    v20 = v1[8];
    v21 = MEMORY[0x1E69E6158];
    v22 = v1[9];
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v21 = 0;
    *(v13 + 208) = 0;
  }

  *(v13 + 192) = v20;
  *(v13 + 200) = v22;
  *(v13 + 216) = v21;
  *(v13 + 224) = 0x746E65746E69;
  *(v13 + 232) = 0xE600000000000000;
  v23 = v1[2];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1C0, &qword_1BFAB7750);
  *(v13 + 240) = v23;
  *(v13 + 264) = v24;
  strcpy((v13 + 272), "relatedIntents");
  *(v13 + 287) = -18;
  sub_1BFA1EF80(v1 + *(v16 + 60), v4, &qword_1EBDFC1B0, &qword_1BFAB7740);
  v25 = sub_1BFAAEFE8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v25) == 1)
  {

    sub_1BF9FAB40(v4, &qword_1EBDFC1B0, &qword_1BFAB7740);
    *(v13 + 288) = 0u;
    *(v13 + 304) = 0u;
  }

  else
  {
    *(v13 + 312) = v25;
    __swift_allocate_boxed_opaque_existential_1Tm((v13 + 288));
    OUTLINED_FUNCTION_54();
    (*(v26 + 32))();
  }

  strcpy((v13 + 320), "generationId");
  *(v13 + 333) = 0;
  *(v13 + 334) = -5120;
  *(v13 + 360) = sub_1BFAAE3F8();
  __swift_allocate_boxed_opaque_existential_1Tm((v13 + 336));
  OUTLINED_FUNCTION_54();
  (*(v27 + 16))();
  *(v13 + 368) = 0xD000000000000016;
  *(v13 + 376) = 0x80000001BFABA210;
  v28 = *(v1 + *(v16 + 64));
  if (v28 == 2)
  {
    v29 = 0;
    *(v13 + 384) = 0;
    *(v13 + 392) = 0;
    *(v13 + 400) = 0;
  }

  else
  {
    *(v13 + 384) = v28 & 1;
    v29 = MEMORY[0x1E69E6370];
  }

  *(v13 + 408) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1C8, &unk_1BFAB7758);
  v30 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_12();
  v31 = sub_1BFAAF658();
  v33 = v32;

  v34 = v78;
  v35 = *(v77 + 8);
  v35(v12, v78);
  MEMORY[0x1BFB60B80](v31, v33);

  MEMORY[0x1BFB60B80](0x536563697665640ALL, 0xEE000A3A65746174);
  v36 = __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2();
  (*(v39 + 16))(v38 - v37);
  v79 = sub_1BFAAF8C8();
  v80 = v40;
  v41 = sub_1BFAAEF68();
  v43 = v42;

  MEMORY[0x1BFB60B80](v41, v43);

  MEMORY[0x1BFB60B80](0xD000000000000016, 0x80000001BFABA230);
  sub_1BFAAF228();

  sub_1BFAA55F4(v44, sub_1BFAA6B00, sub_1BFAA738C);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A8, &qword_1BFAB5050);
  v45 = OUTLINED_FUNCTION_5_12();
  v52 = OUTLINED_FUNCTION_7_11(v45, v46, v30, v47, v48, v49, v50, v51);
  v54 = v53;

  v35(v9, v34);
  MEMORY[0x1BFB60B80](v52, v54);

  MEMORY[0x1BFB60B80](0xD000000000000012, 0x80000001BFABA250);
  sub_1BFAAF228();
  sub_1BFAAEDA8();
  v55 = OUTLINED_FUNCTION_5_12();
  v63 = OUTLINED_FUNCTION_7_11(v55, v56, v57, v58, v59, v60, v61, v62);
  v65 = v64;
  v35(v9, v34);
  MEMORY[0x1BFB60B80](v63, v65);

  MEMORY[0x1BFB60B80](0xD000000000000015, 0x80000001BFABA270);
  sub_1BFAAF228();

  sub_1BFAA55F4(v66, sub_1BFAA6A7C, sub_1BFAA71F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1D0, &qword_1BFAB7768);
  v67 = OUTLINED_FUNCTION_5_12();
  v74 = OUTLINED_FUNCTION_7_11(v67, v68, v30, v69, v70, v71, v72, v73);
  v76 = v75;

  v35(v9, v34);
  MEMORY[0x1BFB60B80](v74, v76);

  OUTLINED_FUNCTION_101();
}