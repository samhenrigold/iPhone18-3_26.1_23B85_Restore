uint64_t sub_2689188FC(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = sub_268B35044();
  OUTLINED_FUNCTION_19_0(v10);
  v12 = v11;
  v14 = v13;
  v15 = (v9 + *(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_268914D1C(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v7, *(v2 + v9), *(v2 + v9 + 8), v2 + v15, *(v2 + v16), *(v2 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_268918A34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2();
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v7 = v1 + v4;
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v7);

  return MEMORY[0x2821FE8E8](v1, v6 + 16, v3 | 7);
}

uint64_t sub_268918B44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 1);

  return sub_26891412C(a1, v9, v10, v11, v1 + v8, v13, v14);
}

uint64_t sub_268918C00()
{
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 73) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_268918CE0(uint64_t a1)
{
  v3 = sub_268B35044();
  OUTLINED_FUNCTION_22(v3);
  return sub_2689134D4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v1 + ((*(v4 + 80) + 73) & ~*(v4 + 80)));
}

unint64_t sub_268918DC0()
{
  result = qword_2802A5B60;
  if (!qword_2802A5B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A5B58, &unk_268B3C660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5B60);
  }

  return result;
}

uint64_t sub_268918E34(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_6_4()
{
  v1 = *(v0 + 256);
  v2 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_10_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v8 - 384);

  return sub_2689CE860(a1, v6 | 0x8000000000000000, v10, a4, v7, v4, v5);
}

uint64_t OUTLINED_FUNCTION_15_2(uint64_t a1)
{

  return sub_2688C058C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_26_1()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return sub_268B350F4();
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return sub_268B37BC4();
}

uint64_t sub_268918FF0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = v2[15];
  v7 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 12, v6);

  v8 = sub_268B37B84();
  (*(v7 + 8))(0xD000000000000016, 0x8000000268B573E0, v8, 1, sub_2689197D8, v5, v6, v7);
}

uint64_t sub_268919110(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v40 = a4;
  v41 = a3;
  v39 = sub_268B34F84();
  v6 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  sub_2689197E4(a1, &v38 - v17);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  sub_268919854(v18);
  if (a1 == 1)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v9, qword_2802CDA10);
    (*(v10 + 16))(v13, v19, v9);
    v20 = sub_268B37A34();
    v21 = sub_268B37EE4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2688BB000, v20, v21, "QuickStopLocalStoppedFlow#execute DialogEngine returned an error", v22, 2u);
      MEMORY[0x26D6266E0](v22, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    __swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);
    sub_2688C2ECC();
    v23 = swift_allocError();
    *v24 = 14;
    sub_26894B450();

    sub_268947F08();
    v26 = v25;
    v28 = v27;
    __swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);
    sub_268948620(0xD000000000000051, 0x8000000268B57400, 4, 59, 0, 0, 0, v26, v28);
  }

  else
  {
    sub_268AAC1F4(a2 + 7);
    __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
    sub_268B35114();

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v9, qword_2802CDA10);
    (*(v10 + 16))(v15, v29, v9);
    v30 = sub_268B37A34();
    v31 = sub_268B37F04();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2688BB000, v30, v31, "QuickStopLocalStoppedFlow#execute dialog generated successfully", v32, 2u);
      MEMORY[0x26D6266E0](v32, -1, -1);
    }

    (*(v10 + 8))(v15, v9);
    __swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);
    sub_26894B450();
    sub_268947F08();
    v34 = v33;
    v36 = v35;
    __swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);
    sub_268948620(0xD000000000000051, 0x8000000268B57400, 2, 1, 0, 0, 0, v34, v36);
  }

  sub_268B34F64();
  v41(v8);
  return (*(v6 + 8))(v8, v39);
}

void *sub_2689196AC()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  sub_2689198BC((v0 + 12));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  return v0;
}

uint64_t sub_2689196E4()
{
  sub_2689196AC();

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t sub_268919760(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for QuickStopLocalStoppedFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_268919798()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2689197E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268919854(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268919910(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void (*a20)(uint64_t), uint64_t a21)
{
  v128 = a8;
  v127 = a7;
  v135 = a3;
  v136 = a4;
  v141 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5798, &qword_268B3BDE0);
  MEMORY[0x28223BE20](v24 - 8);
  v146 = v113 - v25;
  v145 = sub_268B34DE4();
  OUTLINED_FUNCTION_1();
  v140 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v30);
  v130 = v113 - v31;
  sub_268B34EA4();
  OUTLINED_FUNCTION_1();
  v148 = v32;
  v149 = v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  v144 = v34;
  v36 = MEMORY[0x28223BE20](v35);
  v38 = v113 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = v113 - v39;
  v41 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  v46 = v113 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
LABEL_50:
    swift_once();
  }

  v113[1] = a21;
  v114 = a20;
  v118 = a19;
  v117 = a18;
  v116 = a17;
  v115 = a16;
  v122 = a15;
  v121 = a14;
  v120 = a13;
  v119 = a12;
  v126 = a10;
  v125 = a9;
  v47 = __swift_project_value_buffer(v41, qword_2802CDA10);
  (*(v43 + 16))(v46, v47, v41);

  v48 = sub_268B37A34();
  v49 = sub_268B37F04();

  LODWORD(v147) = v49;
  v50 = os_log_type_enabled(v48, v49);
  v138 = a1;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v143 = v46;
    v52 = v51;
    v142 = swift_slowAlloc();
    v150 = v142;
    *v52 = 136315138;
    v53 = MEMORY[0x26D6256F0](a1, MEMORY[0x277D837D0]);
    v55 = sub_26892CDB8(v53, v54, &v150);
    a1 = v138;

    *(v52 + 4) = v55;
    _os_log_impl(&dword_2688BB000, v48, v147, "Encoded route ids: %s", v52, 0xCu);
    v56 = v142;
    __swift_destroy_boxed_opaque_existential_0Tm(v142);
    MEMORY[0x26D6266E0](v56, -1, -1);
    MEMORY[0x26D6266E0](v52, -1, -1);

    (*(v43 + 8))(v143, v41);
  }

  else
  {

    (*(v43 + 8))(v46, v41);
  }

  v41 = a11;
  v46 = v141;
  v139 = sub_2688EFD0C();
  v43 = 0;
  v137 = v46 & 0xC000000000000001;
  v134 = v46 & 0xFFFFFFFFFFFFFF8;
  v142 = (v140 + 32);
  v143 = v149 + 16;
  v132 = (v149 + 8);
  v57 = a1 + 40;
  v124 = a6;
  v123 = a5;
  v133 = v40;
  while (v139 != v43)
  {
    if (v137)
    {
      v58 = MEMORY[0x26D625BD0](v43, v141);
    }

    else
    {
      if (v43 >= *(v134 + 16))
      {
        goto LABEL_49;
      }

      v58 = *&v141[8 * v43 + 32];
    }

    v59 = v58;
    sub_268B34E94();
    sub_268B34E94();

    v46 = v40;
    sub_268B34E64();
    if (v43 >= *(a1 + 16))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    sub_268B34E74();

    sub_268B34E84();
    v149 = v59;
    a1 = sub_26892D418(v59);
    v61 = v60;
    v62 = sub_268B37724();
    v147 = v57;
    if (v61)
    {
      if (a1 == v62 && v61 == v63)
      {

LABEL_26:
        OUTLINED_FUNCTION_9_4();
        OUTLINED_FUNCTION_0_8(&v155);
        sub_268B34E64();
        sub_268B374A4();
        sub_268B34E74();
        OUTLINED_FUNCTION_9_4();
        OUTLINED_FUNCTION_0_8(&v154);
        sub_268B34E84();
        v76 = *v143;
        v77 = v146;
        v78 = v148;
        (*v143)(v146, v40, v148);
        __swift_storeEnumTagSinglePayload(v77, 0, 1, v78);
        v76(v144, v38, v78);
        sub_268B34DC4();
        OUTLINED_FUNCTION_7_2();
        v79 = *(a11 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a11 + 16) = v79;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_13_3(v103);
        }

        v82 = *(v79 + 16);
        v81 = *(v79 + 24);
        v129 = v43;
        if (v82 >= v81 >> 1)
        {
          OUTLINED_FUNCTION_1_6();
          v79 = v104;
        }

        OUTLINED_FUNCTION_4_3();
        v85 = v84 & ~v83;
        v87 = *(v86 + 72);
        v88 = v79 + v85 + v87 * v82;
        v89 = *(v86 + 32);
        v89(v88, v130, v145);
        *(a11 + 16) = v79;
        swift_endAccess();
        OUTLINED_FUNCTION_9_4();
        OUTLINED_FUNCTION_0_8(&v149);
        sub_268B34E64();
        sub_268B37484();
        sub_268B34E74();
        OUTLINED_FUNCTION_9_4();
        OUTLINED_FUNCTION_0_8(&v151);
        sub_268B34E84();
        v90 = v146;
        v76(v146, v40, v148);
        v91 = OUTLINED_FUNCTION_3_4(v90);
        (v76)(v91);
        sub_268B34DC4();
        swift_beginAccess();
        v92 = *(a11 + 16);
        v93 = swift_isUniquelyReferenced_nonNull_native();
        *(a11 + 16) = v92;
        if ((v93 & 1) == 0)
        {
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_13_3(v105);
        }

        v43 = v129;
        v94 = *(v92 + 16);
        v40 = v133;
        if (v94 >= *(v92 + 24) >> 1)
        {
          OUTLINED_FUNCTION_1_6();
          v92 = v106;
        }

        *(v92 + 16) = v94 + 1;
        v89(v92 + v85 + v94 * v87, v131, v145);
        *(a11 + 16) = v92;
        swift_endAccess();
        a6 = v124;
        a5 = v123;
        a1 = v138;
        goto LABEL_44;
      }

      a1 = sub_268B38444();

      if (a1)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v66 = v149;
    if (sub_268983434(v65))
    {
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_0_8(&v155);
      sub_268B34E64();
      sub_268B37494();
      sub_268B34E74();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_0_8(&v154);
      sub_268B34E84();
      v67 = OUTLINED_FUNCTION_6_5();
      v66(v67);
      v68 = OUTLINED_FUNCTION_3_4(v57);
      v66(v68);
      sub_268B34DC4();
      OUTLINED_FUNCTION_7_2();
      v69 = *(a11 + 16);
      v70 = swift_isUniquelyReferenced_nonNull_native();
      *(a11 + 16) = v69;
      if ((v70 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_13_3(v107);
      }

      OUTLINED_FUNCTION_11_3();
      v40 = v133;
      if (v71)
      {
        OUTLINED_FUNCTION_1_6();
        v69 = v108;
      }

      OUTLINED_FUNCTION_4_3();
      v73 = OUTLINED_FUNCTION_10_5(v72);
      v75 = &v152;
    }

    else
    {
      v95 = sub_268988580(v66);
      if (v96 || (v95 = sub_268988568(v66), v97))
      {
        a1 = v95;
      }

      else
      {
        a1 = 0;
      }

      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_0_8(&v145);
      sub_268B34E64();
      sub_268B34E74();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_0_8(&v147);
      sub_268B34E84();
      v98 = OUTLINED_FUNCTION_6_5();
      v66(v98);
      v99 = OUTLINED_FUNCTION_3_4(v57);
      v66(v99);
      sub_268B34DC4();
      OUTLINED_FUNCTION_7_2();
      v69 = *(a11 + 16);
      v100 = swift_isUniquelyReferenced_nonNull_native();
      *(a11 + 16) = v69;
      if ((v100 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_13_3(v109);
      }

      OUTLINED_FUNCTION_11_3();
      v40 = v133;
      if (v71)
      {
        OUTLINED_FUNCTION_1_6();
        v69 = v110;
      }

      OUTLINED_FUNCTION_4_3();
      v73 = OUTLINED_FUNCTION_10_5(v101);
      v75 = &v153;
    }

    v74(v73, *(v75 - 32), v145);
    *(a11 + 16) = v69;
    swift_endAccess();
LABEL_44:
    v46 = *v132;
    v102 = v148;
    (*v132)(v38, v148);
    (v46)(v40, v102);

    v57 = v147 + 16;
    ++v43;
  }

  swift_beginAccess();

  v114(v111);
}

void OUTLINED_FUNCTION_1_6()
{

  sub_268987924();
}

void OUTLINED_FUNCTION_2_6()
{

  sub_268987924();
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_4()
{
}

uint64_t sub_26891A510(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 81))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_26891A564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_26891A5E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574756F52736168 && a2 == 0xE900000000000073;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000268B57460 == a2;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6570536C6C417369 && a2 == 0xED00007372656B61;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657265486E497369 && a2 == 0xE800000000000000;
        if (v8 || (sub_268B38444() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000268B57480 == a2;
          if (v9 || (sub_268B38444() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x8000000268B574A0 == a2;
            if (v10 || (sub_268B38444() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F6F527473726966 && a2 == 0xE90000000000006DLL;
              if (v11 || (sub_268B38444() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F52646E6F636573 && a2 == 0xEA00000000006D6FLL;
                if (v12 || (sub_268B38444() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x6F6F52726568746FLL && a2 == 0xEF746E756F43736DLL)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_268B38444();

                  if (v14)
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

unint64_t sub_26891A8D0(char a1)
{
  result = 0x6574756F52736168;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x6570536C6C417369;
      break;
    case 3:
      result = 0x657265486E497369;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6F6F527473726966;
      break;
    case 7:
      result = 0x6F52646E6F636573;
      break;
    case 8:
      result = 0x6F6F52726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26891AA2C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CC8, &qword_268B3CFE8);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26891B2B0();
  sub_268B38584();
  v10[15] = 0;
  OUTLINED_FUNCTION_6_6();
  sub_268B383B4();
  if (!v1)
  {
    v10[14] = 1;
    OUTLINED_FUNCTION_6_6();
    sub_268B383B4();
    v10[13] = 2;
    OUTLINED_FUNCTION_6_6();
    sub_268B383B4();
    v10[12] = 3;
    OUTLINED_FUNCTION_6_6();
    sub_268B383B4();
    v10[11] = 4;
    OUTLINED_FUNCTION_5_2();
    sub_268B38374();
    v10[10] = 5;
    OUTLINED_FUNCTION_5_2();
    sub_268B38374();
    v10[9] = 6;
    OUTLINED_FUNCTION_5_2();
    sub_268B38374();
    v10[8] = 7;
    OUTLINED_FUNCTION_5_2();
    sub_268B38374();
    v10[7] = 8;
    OUTLINED_FUNCTION_5_2();
    sub_268B38394();
  }

  return (*(v5 + 8))(v8, v3);
}

void *sub_26891AC68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CB8, &qword_268B3CFE0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v47 = 1;
  v8 = a1[3];
  v9 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_26891B2B0();
  sub_268B38574();
  if (v2)
  {
    OUTLINED_FUNCTION_0_9();
    OUTLINED_FUNCTION_7_3();
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = v8;
    v39 = v6;
    v40 = v9;
    v41 = a1;
    v42 = a2;
    v43 = v2;
    v44 = v29;
    OUTLINED_FUNCTION_10_6();
    v45 = 0;
    v46 = v47;
    return sub_26891B304(&v35);
  }

  else
  {
    v35 = 0;
    v28 = sub_268B38344() & 1;
    OUTLINED_FUNCTION_3_5(1);
    v27 = sub_268B38344() & 1;
    OUTLINED_FUNCTION_3_5(2);
    v26 = sub_268B38344() & 1;
    OUTLINED_FUNCTION_3_5(3);
    v10 = sub_268B38344() & 1;
    OUTLINED_FUNCTION_3_5(4);
    v24 = sub_268B38304();
    v25 = v11;
    OUTLINED_FUNCTION_3_5(5);
    v23 = sub_268B38304();
    v22 = v12;
    OUTLINED_FUNCTION_3_5(6);
    v13 = sub_268B38304();
    v30 = v14;
    OUTLINED_FUNCTION_3_5(7);
    v32 = sub_268B38304();
    v33 = v15;
    v48 = 8;
    v16 = sub_268B38324();
    v18 = v17;
    v19 = OUTLINED_FUNCTION_9_5();
    v20(v19);
    v18 &= 1u;
    v47 = v18;
    LOBYTE(__src[0]) = v28;
    BYTE1(__src[0]) = v27;
    BYTE2(__src[0]) = v26;
    BYTE3(__src[0]) = v10;
    __src[1] = v24;
    __src[2] = v25;
    __src[3] = v23;
    __src[4] = v22;
    __src[5] = v13;
    __src[6] = v30;
    __src[7] = v32;
    __src[8] = v33;
    __src[9] = v16;
    LOBYTE(__src[10]) = v18;
    sub_26891B334(__src, &v35);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    v35 = v28;
    v36 = v27;
    v37 = v26;
    v38 = v10;
    v39 = v24;
    v40 = v25;
    v41 = v23;
    v42 = v22;
    v43 = v13;
    v44 = v30;
    OUTLINED_FUNCTION_10_6();
    v45 = v16;
    v46 = v18;
    sub_26891B304(&v35);
    return memcpy(a2, __src, 0x51uLL);
  }
}

uint64_t sub_26891B184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26891A5E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26891B1AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26891A8C8();
  *a1 = result;
  return result;
}

uint64_t sub_26891B1D4(uint64_t a1)
{
  v2 = sub_26891B2B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26891B210(uint64_t a1)
{
  v2 = sub_26891B2B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26891B24C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_26891AC68(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x51uLL);
  }

  return result;
}

unint64_t sub_26891B2B0()
{
  result = qword_2802A5CC0;
  if (!qword_2802A5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5CC0);
  }

  return result;
}

uint64_t _s7SpeakerV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s7SpeakerV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26891B4C0);
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

unint64_t sub_26891B4FC()
{
  result = qword_2802A5CD0;
  if (!qword_2802A5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5CD0);
  }

  return result;
}

unint64_t sub_26891B554()
{
  result = qword_2802A5CD8;
  if (!qword_2802A5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5CD8);
  }

  return result;
}

unint64_t sub_26891B5AC()
{
  result = qword_2802A5CE0;
  if (!qword_2802A5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5CE0);
  }

  return result;
}

void OUTLINED_FUNCTION_0_9()
{
  *(v0 - 272) = 0;
  *(v0 - 280) = 0;
  *(v0 - 304) = 0;
}

void OUTLINED_FUNCTION_10_6()
{
  v1 = *(v0 - 272);
  *(v0 - 120) = *(v0 - 280);
  *(v0 - 112) = v1;
}

Swift::String_optional __swiftcall UsoTask_summarise_common_Setting.verb()()
{
  v0 = 1684104562;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_26891B704()
{
  v0 = sub_268A9D2E8();
  if (v0 == 6)
  {
    return 3;
  }

  return sub_2689ABD4C(v0);
}

uint64_t sub_26891B744@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D00, &unk_268B51080);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_26891B81C(uint64_t a1)
{
  result = sub_26891B8C8(&qword_2802A5CE8, &protocol conformance descriptor for UsoTask_summarise_common_Setting);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26891B8C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B36204();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26891B940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_26891B994(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_26891B9E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_26891BA3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_26891BA90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_26891BAE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_26891BB38(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_26891BB8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_26891BBF0(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_26891BC44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_26891BCA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_26891BD0C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_26891BD70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

id sub_26891BDD4()
{
  result = [objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentHandler()) init];
  qword_2802CD8F8 = result;
  return result;
}

uint64_t sub_26891BE08@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v30 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v29 = (v10 - v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v15 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v28 = *(v8 + 16);
  v28(v14, v15, v6);
  v16 = sub_268B37A34();
  v17 = sub_268B37F04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v2;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "SetPlaybackSpeedFlowStrategy#actionForInput called", v18, 2u);
    v2 = v27;
    OUTLINED_FUNCTION_12();
  }

  v19 = *(v8 + 8);
  v19(v14, v6);
  sub_268B35414();
  v20 = sub_2688F29A4(v5);
  (*(v2 + 8))(v5, v30);
  if (v20)
  {
    return sub_268B34EC4();
  }

  v22 = v29;
  v28(v29, v15, v6);
  v23 = sub_268B37A34();
  v24 = sub_268B37EE4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2688BB000, v23, v24, "SetPlaybackSpeedFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v25, 2u);
    OUTLINED_FUNCTION_12();
  }

  v19(v22, v6);
  type metadata accessor for ErrorFilingHelper();
  OUTLINED_FUNCTION_3_6(0xD00000000000002DLL, "makeIntentFromParseQueue");
  return sub_268B34ED4();
}

void sub_26891C154(uint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v72 = a3;
  v73 = a4;
  v76 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D28, &unk_268B3D420);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v62 - v6;
  v7 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v75 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v74 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v15 - 8);
  v70 = &v62 - v16;
  v69 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v69);
  v64 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_20_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v62 - v26;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v28 = __swift_project_value_buffer(v18, qword_2802CDA10);
  v65 = *(v20 + 16);
  v66 = v28;
  v65(v27);
  v29 = sub_268B37A34();
  v30 = sub_268B37F04();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v68 = v24;
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v29, v30, "SetPlaybackSpeedFlowStrategy#makeIntentFromParse called", v31, 2u);
    v24 = v68;
    OUTLINED_FUNCTION_12();
  }

  v71 = v12;

  v33 = *(v20 + 8);
  v32 = v20 + 8;
  v67 = v33;
  v33(v27, v18);
  if (a2)
  {
    v34 = a2;
  }

  else
  {
    v34 = [objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntent()) init];
  }

  v35 = *(v75 + 16);
  v35(v74, v76, v7);
  v36 = a2;
  v37 = v70;
  sub_26893BA8C(v70);
  if (__swift_getEnumTagSinglePayload(v37, 1, v69) == 1)
  {
    v69 = v34;
    sub_2688EF38C(v37, &qword_2802A5650, &unk_268B3BAC0);
    v38 = v71;
  }

  else
  {
    v39 = v64;
    sub_2688C0464(v37, v64);
    v38 = v71;
    if (*v39 != 24)
    {
      v54 = v39;
      v55 = v62;
      v35(v62, v76, v7);
      __swift_storeEnumTagSinglePayload(v55, 0, 1, v7);
      sub_268B0B834(v54, v55);
      sub_2688EF38C(v55, &qword_2802A5D28, &unk_268B3D420);
      sub_2688C2F6C(v54);
      v56 = v63;
      v57 = v63[5];
      v58 = v63[6];
      __swift_project_boxed_opaque_existential_1(v63 + 2, v57);
      v59 = swift_allocObject();
      v60 = v73;
      v59[2] = v72;
      v59[3] = v60;
      v59[4] = v34;
      v61 = v34;

      sub_268AD35F4(v61, &off_287953CC8, (v56 + 7), sub_26891D098, v59, v57, v58);

      return;
    }

    v69 = v34;
    sub_2688C2F6C(v39);
  }

  (v65)(v24, v66, v18);
  v35(v38, v76, v7);
  v40 = v24;
  v41 = v7;
  v42 = sub_268B37A34();
  v43 = sub_268B37EE4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v68 = v40;
    v45 = v44;
    v46 = swift_slowAlloc();
    v76 = v32;
    v77 = v46;
    v47 = v46;
    *v45 = 136315138;
    v35(v74, v38, v41);
    v48 = sub_268B37C24();
    v50 = v49;
    (*(v75 + 8))(v38, v41);
    v51 = sub_26892CDB8(v48, v50, &v77);

    *(v45 + 4) = v51;
    _os_log_impl(&dword_2688BB000, v42, v43, "SetPlaybackSpeedFlowStrategy#makeIntentFromParse received unexpected parse: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v67(v68, v18);
  }

  else
  {

    (*(v75 + 8))(v38, v41);
    v67(v40, v18);
  }

  type metadata accessor for ErrorFilingHelper();
  OUTLINED_FUNCTION_3_6(0xD000000000000032, "20SkipTimeFlowStrategy");
  sub_2688C2ECC();
  v52 = swift_allocError();
  *v53 = 69;
  v72(v52, 1);
}

uint64_t sub_26891C888(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_268B37A34();
  v11 = sub_268B37F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "SetPlaybackSpeedFlowStrategy#makeIntentFromParse finished creating intent from parse", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return a1(a3, 0);
}

uint64_t sub_26891CA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26891CB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_26891CB5C()
{
  if (qword_2802A4D48 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD8F8;

  return v1;
}

uint64_t sub_26891CBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26891CC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26891CC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26891CCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_26891CD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_26891CDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26891CE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26891CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26891CFA0(uint64_t a1)
{
  result = sub_26891D018(&qword_2802A5D10, &unk_268B3D318);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26891D018(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SetPlaybackSpeedFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26891D058()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_3_6@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(a1, a2 | 0x8000000000000000, 0xD000000000000010, v2 | 0x8000000000000000, v4 | 4, v3 | 0x8000000000000000);
}

uint64_t sub_26891D0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2802A4F30 != -1)
  {
LABEL_25:
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_268B37A34();
  v12 = sub_268B37ED4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "PauseMediaDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v9 = a3;
  a3 = sub_268B35244();
  v30 = MEMORY[0x277D84F90];
  v6 = sub_2688EFD0C();
  v14 = 0;
  v7 = a3 & 0xC000000000000001;
  while (v6 != v14)
  {
    if (v7)
    {
      v15 = MEMORY[0x26D625BD0](v14, a3);
    }

    else
    {
      if (v14 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v15 = *(a3 + 8 * v14 + 32);
    }

    v16 = v15;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v17 = sub_26892D418(v15);
    v19 = v18;
    v20 = sub_268B37724();
    v9 = v21;
    if (!v19)
    {

LABEL_18:
      v9 = &v30;
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      goto LABEL_20;
    }

    if (v17 != v20 || v19 != v21)
    {
      v23 = sub_268B38444();

      if (v23)
      {

        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_20:
    ++v14;
  }

  sub_268AE2278(v30);
  v25 = v24;

  sub_268AAEE94(v25, v28, v29);
}

void sub_26891D40C()
{
  type metadata accessor for PauseMediaDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_26891D51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for PauseMediaDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_26891D5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for PauseMediaDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_26891D67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for PauseMediaDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_26891D714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for PauseMediaDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_26891D7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for PauseMediaDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_26891D864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for PauseMediaDeviceDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_26891D948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  v17 = type metadata accessor for PauseMediaDeviceDisambiguationStrategy();
  *v16 = v8;
  v16[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v17, a8);
}

unint64_t sub_26891DA88()
{
  result = qword_2802A56A0;
  if (!qword_2802A56A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A56A8, &qword_268B3BCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A56A0);
  }

  return result;
}

uint64_t sub_26891DB9C(uint64_t a1, uint64_t a2)
{
  result = sub_26891DBF4(&qword_2802A5D38, a2, type metadata accessor for PauseMediaDeviceDisambiguationStrategy, &unk_268B3D508);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26891DBF4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_26891DC50(uint64_t a1)
{
  sub_268B35494();
  OUTLINED_FUNCTION_1();
  v60 = v2;
  v61 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v53 - v10;
  v59 = type metadata accessor for SettingsIntent(0);
  MEMORY[0x28223BE20](v59);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v58 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v53 - v19;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v13, qword_2802CDA10);
  v53 = *(v15 + 16);
  v54 = v21;
  v53(v20);
  v22 = sub_268B37A34();
  v23 = sub_268B37F04();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v57 = a1;
    v25 = v8;
    v26 = v13;
    v27 = v6;
    v28 = v15;
    v29 = v24;
    *v24 = 0;
    _os_log_impl(&dword_2688BB000, v22, v23, "SettingsFlowProvider#makeFlowFor Making flow from parse", v24, 2u);
    v30 = v29;
    v15 = v28;
    v6 = v27;
    v13 = v26;
    v8 = v25;
    a1 = v57;
    MEMORY[0x26D6266E0](v30, -1, -1);
  }

  v31 = *(v15 + 8);
  v57 = v15 + 8;
  v31(v20, v13);
  v32 = v60;
  v33 = *(v61 + 16);
  v33(v8, a1, v60);
  sub_26897BBA8(v8, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v59) == 1)
  {
    v59 = v8;
    sub_26891E52C(v11);
    v34 = v58;
    (v53)(v58, v54, v13);
    v33(v6, a1, v32);
    v35 = v32;
    v36 = sub_268B37A34();
    v37 = sub_268B37EE4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v62 = v56;
      *v38 = 136315138;
      v33(v59, v6, v35);
      v39 = sub_268B37C24();
      v41 = v40;
      v42 = OUTLINED_FUNCTION_0_11();
      v43(v42);
      v44 = sub_26892CDB8(v39, v41, &v62);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_2688BB000, v36, v37, "SettingsFlowProvider#makeFlowFor Received unexpected parse: %s", v38, 0xCu);
      v45 = v56;
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x26D6266E0](v45, -1, -1);
      MEMORY[0x26D6266E0](v38, -1, -1);

      v46 = v58;
    }

    else
    {

      v50 = OUTLINED_FUNCTION_0_11();
      v51(v50);
      v46 = v34;
    }

    v31(v46, v13);
    return 0;
  }

  else
  {
    v47 = v55;
    sub_26891E594(v11, v55);
    sub_26891E15C(v47);
    v49 = v48;
    sub_26891E5F8(v47);
  }

  return v49;
}

void sub_26891E15C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = a1[1];
  switch(a1[1])
  {
    case 1u:
    case 2u:
      v12 = sub_268B38444();

      if (v12)
      {
        goto LABEL_5;
      }

      if (v11 == 2)
      {
        goto LABEL_4;
      }

      v17 = sub_268B38444();

      if (v17)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    case 3u:
LABEL_15:
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v4, qword_2802CDA10);
      (*(v5 + 16))(v8, v18, v4);
      v19 = sub_268B37A34();
      v20 = sub_268B37F04();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_2688BB000, v19, v20, "SettingsFlowProvider#makeFlowFrom Not a media volume request", v21, 2u);
        MEMORY[0x26D6266E0](v21, -1, -1);
      }

      (*(v5 + 8))(v8, v4);
      break;
    default:
LABEL_4:

LABEL_5:
      if (*a1 - 1 >= 3)
      {
        if (*a1)
        {
          if (qword_2802A4F30 != -1)
          {
            swift_once();
          }

          v13 = __swift_project_value_buffer(v4, qword_2802CDA10);
          (*(v5 + 16))(v10, v13, v4);
          v14 = sub_268B37A34();
          v15 = sub_268B37EC4();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&dword_2688BB000, v14, v15, "SettingsFlowProvider#makeFlowFrom Could not find any verbs in the setting intent for the volume request. Returning getVolume flow", v16, 2u);
            MEMORY[0x26D6266E0](v16, -1, -1);
          }

          (*(v5 + 8))(v10, v4);
        }

        __swift_project_boxed_opaque_existential_1(v2, v2[3]);
        sub_268B0300C();
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v2, v2[3]);
        sub_268B0333C();
      }

      break;
  }
}

uint64_t sub_26891E52C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26891E594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26891E5F8(uint64_t a1)
{
  v2 = type metadata accessor for SettingsIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26891E708(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26891E75C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_26891E7BC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0xD00000000000001BLL;
}

void sub_26891E810(float a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_3_7();
  v28 = v14;
  v29 = v13;
  v15 = OUTLINED_FUNCTION_192();
  MEMORY[0x26D625650](v15);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v6, qword_2802CDA10);
  v16 = OUTLINED_FUNCTION_6_7();
  v17(v16);

  v18 = sub_268B37A34();
  v19 = sub_268B37F04();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v20 = 136315138;
    v21 = OUTLINED_FUNCTION_192();
    *(v20 + 4) = sub_26892CDB8(v21, v22, v23);
    OUTLINED_FUNCTION_8_6(&dword_2688BB000, v24, v25, "UserDefaultsProvider#setPreviousVolumeLevel for key: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  (*(v8 + 8))(v12, v6);
  if (a4)
  {
    OUTLINED_FUNCTION_192();
    v26 = sub_268B37BC4();

    *&v27 = a1;
    [a4 setFloat:v26 forKey:{v27, v28, v29}];
  }

  else
  {
  }
}

unint64_t sub_26891EA2C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_3_7();
  *&v35 = v14;
  *(&v35 + 1) = v13;
  MEMORY[0x26D625650](a1, a2);
  v15 = v35;
  if (a3)
  {
    v16 = sub_268B37BC4();
    v17 = [a3 objectForKey_];

    if (v17)
    {
      sub_268B380E4();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v18 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v8 + 16))(v12, v18, v6);
  sub_26891F428(&v35, &v33);

  v19 = sub_268B37A34();
  v20 = sub_268B37F04();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v21 = 136315394;
    v22 = sub_26892CDB8(v15, *(&v15 + 1), &v32);

    *(v21 + 4) = v22;
    *(v21 + 12) = 2080;
    sub_26891F428(&v33, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&byte_2802A6450, &byte_268B3BE10);
    v23 = sub_268B37C24();
    v25 = v24;
    sub_26891F498(&v33);
    v26 = sub_26892CDB8(v23, v25, &v32);

    *(v21 + 14) = v26;
    _os_log_impl(&dword_2688BB000, v19, v20, "UserDefaultsProvider#getPreviousVolumeLevel for key: %s volume: %s", v21, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    sub_26891F498(&v33);
  }

  (*(v8 + 8))(v12, v6);
  v33 = v35;
  v34 = v36;
  if (*(&v36 + 1))
  {
    v27 = swift_dynamicCast();
    v28 = v31[0];
    v29 = v27 ^ 1;
    if (!v27)
    {
      v28 = 0;
    }
  }

  else
  {
    sub_26891F498(&v33);
    v28 = 0;
    v29 = 1;
  }

  return v28 | (v29 << 32);
}

void sub_26891ED94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_3_7();
  v25 = v12;
  v26 = v11;
  v13 = OUTLINED_FUNCTION_192();
  MEMORY[0x26D625650](v13);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v4, qword_2802CDA10);
  v14 = OUTLINED_FUNCTION_6_7();
  v15(v14);

  v16 = sub_268B37A34();
  v17 = sub_268B37F04();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v18 = 136315138;
    v19 = OUTLINED_FUNCTION_192();
    *(v18 + 4) = sub_26892CDB8(v19, v20, v21);
    OUTLINED_FUNCTION_8_6(&dword_2688BB000, v22, v23, "UserDefaultsProvider#clearPreviousVolumeLevel for key: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  (*(v6 + 8))(v10, v4);
  if (a3)
  {
    OUTLINED_FUNCTION_192();
    v24 = sub_268B37BC4();

    [a3 removeObjectForKey_];
  }

  else
  {
  }
}

uint64_t sub_26891EFA0(void *a1)
{
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  if (a1)
  {
    v9 = OUTLINED_FUNCTION_7_4();
    v10 = [a1 objectForKey_];

    if (v10)
    {
      sub_268B380E4();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25 = v23;
    v26 = v24;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v11 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v4 + 16))(v8, v11, v2);
  sub_26891F428(&v25, &v23);
  v12 = sub_268B37A34();
  v13 = sub_268B37F04();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    sub_26891F428(&v23, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&byte_2802A6450, &byte_268B3BE10);
    v16 = sub_268B37C24();
    v18 = v17;
    sub_26891F498(&v23);
    v19 = sub_26892CDB8(v16, v18, &v22);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2688BB000, v12, v13, "UserDefaultsProvider#getLoudVolumeConfirmationCount %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    sub_26891F498(&v23);
  }

  (*(v4 + 8))(v8, v2);
  v23 = v25;
  v24 = v26;
  if (*(&v26 + 1))
  {
    if (swift_dynamicCast())
    {
      return v21[0];
    }
  }

  else
  {
    sub_26891F498(&v23);
  }

  return 0;
}

void sub_26891F278(void *a1)
{
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = sub_26891EFA0(a1);
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v9 + 1;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v11 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v4 + 16))(v8, v11, v2);
  v12 = sub_268B37A34();
  v13 = sub_268B37F04();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v13, "UserDefaultsProvider#incrementLoudVolumeConfirmationCount Setting loudVolumeConfirmationCount to incrementedConfirmationCount", v14, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v4 + 8))(v8, v2);
  if (a1)
  {
    v15 = OUTLINED_FUNCTION_7_4();
    [a1 setInteger:v10 forKey:v15];
  }
}

uint64_t sub_26891F428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&byte_2802A6450, &byte_268B3BE10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26891F498(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&byte_2802A6450, &byte_268B3BE10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_268B37BC4();
}

void OUTLINED_FUNCTION_8_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_26891F56C(uint64_t a1, uint64_t a2)
{
  v2 = sub_268B37BF4();
  v4 = v3;
  if (v2 == sub_268B37BF4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_15_3(v2);
  }

  return v7 & 1;
}

uint64_t sub_26891F5E4(char a1, char a2)
{
  v2 = 0x656C62616E65;
  if (a1)
  {
    OUTLINED_FUNCTION_48_1();
    if (v4 == 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v5;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
    v8 = 0x656C62616E65;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_48_1();
    v15 = (v14 - 32) | 0x8000000000000000;
    if (v10 == 1)
    {
      v2 = v12;
    }

    else
    {
      v2 = v13;
    }

    if (v10 == 1)
    {
      v16 = v11;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0xE600000000000000;
  }

  if (v8 == v2 && v9 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_3(v8);
  }

  return v18 & 1;
}

uint64_t sub_26891F6C4(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000726579;
  v3 = 0x616C50616964656DLL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x616964656DLL;
    }

    else
    {
      v5 = 0x73676E6974746573;
    }

    if (v4 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x616C50616964656DLL;
    v6 = 0xEB00000000726579;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x616964656DLL;
    }

    else
    {
      v3 = 0x73676E6974746573;
    }

    if (a2 == 1)
    {
      v2 = 0xE500000000000000;
    }

    else
    {
      v2 = 0xE800000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1(v5);
  }

  return v8 & 1;
}

uint64_t sub_26891F7B0(char a1)
{
  if (a1)
  {
    v1 = 0xE300000000000000;
  }

  else
  {
    v1 = 0xE200000000000000;
  }

  OUTLINED_FUNCTION_68_1();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3(v2);
  }

  return v8 & 1;
}

uint64_t sub_26891F82C(unsigned __int8 a1, char a2)
{
  v2 = 0x656C67676F74;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x656C67676F74;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7628147;
      break;
    case 2:
      v5 = 0x656C62616E65;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x656C6261736964;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 7628147;
      break;
    case 2:
      v2 = 0x656C62616E65;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x656C6261736964;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3(v5);
  }

  return v8 & 1;
}

uint64_t sub_26891F96C(char a1)
{
  OUTLINED_FUNCTION_68_1();
  if (v1 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_268B38444();
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

uint64_t sub_26891F9D8(unsigned __int8 a1, char a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7562617;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3(v4);
  }

  return v8 & 1;
}

uint64_t sub_26891FAA4(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_68_1();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3(v2);
  }

  return v8 & 1;
}

uint64_t sub_26891FB2C(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_68_1();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3(v2);
  }

  return v8 & 1;
}

uint64_t sub_26891FBB8(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 28271;
  switch(a1)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x6570706F7473;
      goto LABEL_5;
    case 2:
      v3 = 0xE600000000000000;
      v4 = 0x646573756170;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x656D75736572;
LABEL_5:
      v4 = v5 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    default:
      break;
  }

  v6 = 0xE200000000000000;
  v7 = 28271;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v8 = 0x6570706F7473;
      goto LABEL_10;
    case 2:
      v6 = 0xE600000000000000;
      v7 = 0x646573756170;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v8 = 0x656D75736572;
LABEL_10:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    default:
      break;
  }

  if (v4 == v7 && v3 == v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_15_3(v4);
  }

  return v10 & 1;
}

uint64_t sub_26891FD00(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x746174735F746573;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x746174735F746567;
    }

    else
    {
      v5 = 0x6174735F646C6F68;
    }

    if (v4 == 1)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0xEA00000000006574;
    }
  }

  else
  {
    v5 = 0x746174735F746573;
    v6 = 0xE900000000000065;
  }

  if (a2)
  {
    v3 = a2 == 1 ? 0x746174735F746567 : 0x6174735F646C6F68;
    if (a2 != 1)
    {
      v2 = 0xEA00000000006574;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1(v5);
  }

  return v8 & 1;
}

uint64_t sub_26891FDD8(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25697;
  switch(a1)
  {
    case 1:
      v3 = 0xE500000000000000;
      v4 = 0x6F69647561;
      break;
    case 2:
      v4 = 0x656C746974627573;
      v3 = 0xE900000000000073;
      break;
    case 3:
      v4 = 25443;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v4 = 6841459;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25697;
  switch(a2)
  {
    case 1:
      v5 = 0xE500000000000000;
      v6 = 0x6F69647561;
      break;
    case 2:
      v6 = 0x656C746974627573;
      v5 = 0xE900000000000073;
      break;
    case 3:
      v6 = 25443;
      break;
    case 4:
      v5 = 0xE300000000000000;
      v6 = 6841459;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3(v4);
  }

  return v8 & 1;
}

uint64_t sub_26891FF50(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_68_1();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3(v2);
  }

  return v8 & 1;
}

uint64_t sub_26891FFDC(unsigned __int8 a1, char a2)
{
  v2 = 1936942444;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1936942444;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v6 = 1769496941;
      goto LABEL_6;
    case 2:
      v5 = 1851876717;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v6 = 1768843629;
LABEL_6:
      v5 = v6 | 0x6D756D00000000;
      break;
    case 4:
      v5 = 1701998445;
      break;
    case 5:
      v5 = 1702131053;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = 0x6574756D6E75;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE700000000000000;
      v8 = 1769496941;
      goto LABEL_14;
    case 2:
      v2 = 1851876717;
      break;
    case 3:
      v7 = 0xE700000000000000;
      v8 = 1768843629;
LABEL_14:
      v2 = v8 | 0x6D756D00000000;
      break;
    case 4:
      v2 = 1701998445;
      break;
    case 5:
      v2 = 1702131053;
      break;
    case 6:
      v7 = 0xE600000000000000;
      v2 = 0x6574756D6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_15_3(v5);
  }

  return v10 & 1;
}

uint64_t sub_268920180(unsigned __int8 a1, char a2)
{
  v2 = 0x656D756C6F76;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6563696F76;
    }

    else
    {
      v4 = 0x707954616964656DLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE900000000000065;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x656D756C6F76;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6563696F76;
    }

    else
    {
      v2 = 0x707954616964656DLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3(v4);
  }

  return v8 & 1;
}

uint64_t sub_26892026C(unsigned __int8 a1, char a2)
{
  v2 = 1684104562;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1684104562;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7628147;
      break;
    case 2:
      v5 = 0x6573616572636E69;
      v3 = 0xE800000000000000;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x6573616572636564;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 7628147;
      break;
    case 2:
      v2 = 0x6573616572636E69;
      v6 = 0xE800000000000000;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x6573616572636564;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3(v5);
  }

  return v8 & 1;
}

uint64_t sub_2689203B0(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x6B61657053646461;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6165705365766F6DLL;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v4 == 1)
    {
      v6 = 0xEB0000000072656BLL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0x6B61657053646461;
    v6 = 0xEA00000000007265;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6165705365766F6DLL;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (a2 == 1)
    {
      v2 = 0xEB0000000072656BLL;
    }

    else
    {
      v2 = 0xE700000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1(v5);
  }

  return v8 & 1;
}

uint64_t sub_2689204B4(char a1, char a2)
{
  v2 = 1701736302;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 6647407;
    }

    else
    {
      v3 = 7105633;
    }

    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1701736302;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 6647407;
    }

    else
    {
      v2 = 7105633;
    }

    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_15_3(v3);
  }

  return v7 & 1;
}

uint64_t sub_268920580(unsigned __int8 a1, char a2)
{
  v2 = 0x656E6F6870;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x656E6F6870;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 6578544;
      break;
    case 2:
      v5 = 0x6863746177;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v5 = 6513005;
      break;
    case 4:
      v5 = 0x69736976656C6574;
      v3 = 0xEA00000000006E6FLL;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x646F70656D6F68;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v5 = 0x6563697665447278;
      break;
    case 7:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 6578544;
      break;
    case 2:
      v2 = 0x6863746177;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v2 = 6513005;
      break;
    case 4:
      v2 = 0x69736976656C6574;
      v6 = 0xEA00000000006E6FLL;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x646F70656D6F68;
      break;
    case 6:
      v6 = 0xE800000000000000;
      v2 = 0x6563697665447278;
      break;
    case 7:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3(v5);
  }

  return v8 & 1;
}

uint64_t sub_2689207AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  if (v5 == a3(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_15_3(v5);
  }

  return v10 & 1;
}

uint64_t sub_2689208C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  a3(0);
  v7 = OUTLINED_FUNCTION_71_1();
  sub_26892DA98(v7, v8, a6);
  sub_268B37CA4();
  sub_268B37CA4();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_54_1(v14);
  }

  return v10 & 1;
}

uint64_t sub_2689209D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_268B37984();
  sub_268B37974();
  OUTLINED_FUNCTION_86_1();
  v7 = sub_268B37964();
  v8 = MEMORY[0x277D61F08];
  *&v6 = v2;
  v3 = type metadata accessor for AnalyticsServiceLogger();
  v4 = swift_allocObject();
  result = sub_2688E6514(&v6, v4 + 16);
  a1[3] = v3;
  a1[4] = &off_28795F5E0;
  *a1 = v4;
  return result;
}

void sub_268920A60()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_268B382A4();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
LABEL_14:
    OUTLINED_FUNCTION_23();
    return;
  }

  v15 = MEMORY[0x277D84F90];
  sub_26894472C();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v15;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      OUTLINED_FUNCTION_85_1();
      v7 = type metadata accessor for DeviceQuery();
      v13 = v7;
      v8 = sub_26892DA98(&qword_2802A5B68, type metadata accessor for DeviceQuery, &protocol conformance descriptor for DeviceQuery);
      v14 = v8;
      v15 = v5;
      v12[0] = v0;
      v0 = v5[2];
      if (v0 >= v5[3] >> 1)
      {
        v5 = &v15;
        sub_26894472C();
        v7 = v13;
        v9 = v14;
      }

      else
      {
        v9 = v8;
      }

      ++v4;
      __swift_mutable_project_boxed_opaque_existential_1(v12, v7);
      OUTLINED_FUNCTION_3_8();
      MEMORY[0x28223BE20](v10);
      OUTLINED_FUNCTION_2_8();
      (*(v11 + 16))(v5);
      sub_26892D904(v0, v5, &v15, v7, v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      v5 = v15;
    }

    while (v3 != v4);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_268920CE4()
{
  OUTLINED_FUNCTION_26();
  v21 = v1;
  v22 = v2;
  v20 = v3;
  v5 = v4;
  v6 = v0;
  if (v0 >> 62)
  {
    v7 = sub_268B382A4();
  }

  else
  {
    v7 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
LABEL_14:
    OUTLINED_FUNCTION_23();
    return;
  }

  v26 = MEMORY[0x277D84F90];
  sub_26894480C();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v26;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D625BD0](v8, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v5(0);
      v24 = v12;
      v13 = sub_26892DA98(v20, v21, v22);
      v25 = v13;
      v26 = v9;
      v23[0] = v11;
      v14 = *(v9 + 16);
      if (v14 >= *(v9 + 24) >> 1)
      {
        sub_26894480C();
        v12 = v24;
        v15 = v25;
      }

      else
      {
        v15 = v13;
      }

      ++v8;
      __swift_mutable_project_boxed_opaque_existential_1(v23, v12);
      OUTLINED_FUNCTION_3_8();
      MEMORY[0x28223BE20](v16);
      OUTLINED_FUNCTION_1_0();
      v18 = OUTLINED_FUNCTION_77_1(v17);
      v19(v18);
      sub_26892D904(v14, v9, &v26, v12, v15);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      v9 = v26;
    }

    while (v7 != v8);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_268920EBC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B35C14();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = *(v1 + 16);
  if (v9)
  {
    v23 = MEMORY[0x277D84F90];
    sub_26894486C();
    v10 = v23;
    v13 = *(v4 + 16);
    v11 = v4 + 16;
    v12 = v13;
    v14 = v1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v19 = *(v11 + 56);
    do
    {
      v12(v8, v14, v2);
      v23 = v10;
      v15 = *(v10 + 16);
      if (v15 >= *(v10 + 24) >> 1)
      {
        sub_26894486C();
      }

      v21 = v2;
      v22 = MEMORY[0x277D5E670];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      v12(boxed_opaque_existential_1, v8, v2);
      v10 = v23;
      *(v23 + 16) = v15 + 1;
      sub_2688E6514(&v20, v10 + 40 * v15 + 32);
      v17 = OUTLINED_FUNCTION_0_1();
      v18(v17);
      v14 += v19;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268921078(uint64_t (*a1)(uint64_t))
{
  v3 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v11 = a1(v1);
  if (v11)
  {
    v12 = v11;
    if (sub_2688EFBD0(v11) == 1 && sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x26D625BD0](0, v12);
      }

      else
      {
        v13 = *(v12 + 32);
      }

      v14 = v13;

      v15 = DeviceQuery.hasReferenceOnly.getter();

      v17 = v15 ^ 1;
    }

    else
    {

      v17 = 1;
    }

    if (qword_2802A4F30 != -1)
    {
      v16 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_61(v16, qword_2802CDA10);
    (*(v5 + 16))(v9);
    v18 = sub_268B37A34();
    sub_268B37ED4();
    OUTLINED_FUNCTION_39_1();
    if (!os_log_type_enabled(v18, v19))
    {
      v1 = v9;
      goto LABEL_19;
    }

    v20 = OUTLINED_FUNCTION_236();
    *v20 = 67109120;
    *(v20 + 4) = v17 & 1;
    _os_log_impl(&dword_2688BB000, v18, v9, "DeviceQueryableIntent#isWholeHouseAudio: %{BOOL}d", v20, 8u);
    v1 = v9;
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v11 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_61(v11, qword_2802CDA10);
    v21 = OUTLINED_FUNCTION_139();
    v22(v21);
    v18 = sub_268B37A34();
    v23 = sub_268B37ED4();
    if (!os_log_type_enabled(v18, v23))
    {
      v17 = 0;
      goto LABEL_19;
    }

    v24 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v24);
    OUTLINED_FUNCTION_75_1(&dword_2688BB000, v18, v23, "DeviceQueryableIntent#isWholeHouseAudio No deviceQueries found in the intent. This is not a WHA intent");
    v17 = 0;
  }

  OUTLINED_FUNCTION_20_2();
LABEL_19:

  (*(v5 + 8))(v1, v3);
  return v17 & 1;
}

void sub_268921344()
{
  OUTLINED_FUNCTION_26();
  v22 = v1;
  v21 = v2;
  v3 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
LABEL_21:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v3, qword_2802CDA10);
  OUTLINED_FUNCTION_6_2();
  v7(v0);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_236();
    *v10 = 67109120;
    *(v10 + 4) = v21 & 1;
    _os_log_impl(&dword_2688BB000, v8, v9, "Getting routeIds from intent. PreferContextRouteId: %{BOOL}d", v10, 8u);
    OUTLINED_FUNCTION_33_1();
  }

  (*(v5 + 8))(v0, v3);
  v0 = sub_2688EFD0C();
  v11 = 0;
  v3 = 0;
  v5 = v22 & 0xC000000000000001;
  v12 = MEMORY[0x277D84F90];
  while (v0 != v11)
  {
    if (v5)
    {
      v13 = MEMORY[0x26D625BD0](v11, v22);
    }

    else
    {
      if (v11 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v13 = *(v22 + 8 * v11 + 32);
    }

    v14 = v13;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v25 = v13;
    sub_268986960(&v25, v21 & 1, &v23);

    v15 = v24;
    if (v24)
    {
      v16 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2689876A4();
        v12 = v19;
      }

      v17 = *(v12 + 16);
      if (v17 >= *(v12 + 24) >> 1)
      {
        sub_2689876A4();
        v12 = v20;
      }

      *(v12 + 16) = v17 + 1;
      v18 = v12 + 16 * v17;
      *(v18 + 32) = v16;
      *(v18 + 40) = v15;
    }

    ++v11;
  }

  OUTLINED_FUNCTION_23();
}

id SetVolumeLevelIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SetVolumeLevelIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  sub_268B36F44();
  OUTLINED_FUNCTION_1();
  v65 = v1;
  v66 = v2;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v63 = (v4 - v3);
  OUTLINED_FUNCTION_9();
  v5 = sub_268B36C54();
  v64 = sub_268B36C44();
  sub_268B37204();
  v62 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(&v89);
  sub_268AD33CC(&v86);
  sub_268B36754();
  v60 = sub_268B36734();
  sub_268B36C44();
  OUTLINED_FUNCTION_86_1();
  v6 = type metadata accessor for MultiUserConnectionProvider();
  v7 = swift_allocObject();
  v8 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v7 + 16) = [v8 init];
  __swift_mutable_project_boxed_opaque_existential_1(&v89, v90);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = (v11 - v10);
  (*(v13 + 16))(v11 - v10);
  v14 = *v12;
  v84 = v5;
  v85 = MEMORY[0x277D5F680];
  *&v83 = v5;
  v15 = type metadata accessor for AnalyticsServiceLogger();
  v81 = v15;
  v82 = &off_28795F5E0;
  v80[0] = v14;
  v78 = v6;
  v79 = &off_287960608;
  v77[0] = v7;
  v57 = type metadata accessor for AnalyticsServiceImpl();
  v16 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v80, v15);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v19 = OUTLINED_FUNCTION_77_1(v18);
  v20(v19);
  __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v23 = OUTLINED_FUNCTION_78_1(v22);
  v24(v23);
  v25 = *v0;
  v26 = *v14;
  v16[5] = v15;
  v16[6] = &off_28795F5E0;
  v16[2] = v25;
  v16[21] = v6;
  v16[22] = &off_287960608;
  v16[18] = v26;
  sub_2688E6514(&v86, (v16 + 7));
  v16[12] = v60;
  sub_2688E6514(&v83, (v16 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v77);
  __swift_destroy_boxed_opaque_existential_0Tm(v80);

  __swift_destroy_boxed_opaque_existential_0Tm(&v89);
  v27 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v58 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  v28 = [objc_allocWithZone(MEMORY[0x277CB83F8]) init];
  sub_268B354A4();
  v29 = type metadata accessor for AudioSessionProvider();
  v30 = swift_allocObject();
  *(v30 + 56) = v28;
  sub_2688E6514(&v89, v30 + 16);
  sub_268B34C64();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D48, &qword_268B3D700);
  v32 = sub_268B37754();
  sub_268B36F34();
  v87 = v5;
  v88 = MEMORY[0x277D5F680];
  *&v86 = v64;
  v85 = &off_2879539D0;
  v84 = v57;
  *&v83 = v16;
  v81 = &type metadata for UserDefaultsProviderImpl;
  v82 = &off_287952DF0;
  v80[0] = v58;
  v78 = v29;
  v79 = &off_287958998;
  v77[0] = v30;
  v76[3] = v31;
  v76[4] = sub_26892CBBC();
  v76[0] = v32;
  v75[3] = v65;
  v75[4] = MEMORY[0x277D5F6F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
  (*(v66 + 16))(boxed_opaque_existential_1, v63, v65);
  v61 = type metadata accessor for SetVolumeLevelIntentHandler();
  v34 = objc_allocWithZone(v61);
  __swift_mutable_project_boxed_opaque_existential_1(&v83, v84);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_8();
  (*(v36 + 16))(v65);
  __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_0();
  v40 = (v39 - v38);
  (*(v41 + 16))(v39 - v38);
  __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_0();
  v44 = OUTLINED_FUNCTION_78_1(v43);
  v45(v44);
  v46 = *v65;
  v47 = *v40;
  v48 = *v63;
  v74[4] = &off_2879539D0;
  v74[3] = v57;
  v74[0] = v46;
  v73[4] = &off_287952DF0;
  v73[3] = &type metadata for UserDefaultsProviderImpl;
  v73[0] = v47;
  v72[3] = v29;
  v72[4] = &off_287958998;
  v72[0] = v48;
  sub_26890C900(v91, v71);
  sub_26890C900(v74, &v69);
  sub_26890C900(&v89, v68);
  sub_268B376A4();
  v59 = v58;

  v49 = sub_268B37694();
  __swift_mutable_project_boxed_opaque_existential_1(&v69, v70);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_1_0();
  v53 = (v52 - v51);
  (*(v54 + 16))(v52 - v51);
  v55 = sub_26892D53C(v62, v71, *v53, v68, v49);
  __swift_destroy_boxed_opaque_existential_0Tm(&v69);
  *&v34[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceSelector] = v55;
  sub_26890C900(v91, &v34[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState]);
  sub_26890C900(&v86, &v34[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController]);
  sub_26890C900(v73, &v34[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_userDefaultsProvider]);
  sub_26890C900(v72, &v34[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_audioSession]);
  sub_26890C900(v91, v71);
  sub_26890C900(&v89, &v69);
  type metadata accessor for AceServiceHelper();
  v56 = swift_allocObject();
  sub_2688E6514(v71, v56 + 16);
  sub_2688E6514(&v69, v56 + 56);
  *&v34[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_aceServiceHelper] = v56;
  sub_26890C900(v76, &v34[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController]);
  sub_26890C900(v75, &v34[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider]);
  v67.receiver = v34;
  v67.super_class = v61;
  objc_msgSendSuper2(&v67, sel_init);

  (*(v66 + 8))(v63, v65);
  __swift_destroy_boxed_opaque_existential_0Tm(&v89);
  __swift_destroy_boxed_opaque_existential_0Tm(v91);
  __swift_destroy_boxed_opaque_existential_0Tm(v75);
  __swift_destroy_boxed_opaque_existential_0Tm(v76);
  __swift_destroy_boxed_opaque_existential_0Tm(&v86);
  __swift_destroy_boxed_opaque_existential_0Tm(v72);
  __swift_destroy_boxed_opaque_existential_0Tm(v73);
  __swift_destroy_boxed_opaque_existential_0Tm(v74);
  __swift_destroy_boxed_opaque_existential_0Tm(v77);
  __swift_destroy_boxed_opaque_existential_0Tm(v80);
  __swift_destroy_boxed_opaque_existential_0Tm(&v83);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268921FD0(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v185 = a2;
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v180 = &v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v183 = &v171 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v181 = &v171 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v182 = &v171 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v184 = (&v171 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v171 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v171 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v171 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v171 - v26;
  v186 = swift_allocObject();
  *(v186 + 16) = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v5, qword_2802CDA10);
  v29 = *(v6 + 16);
  v187 = v28;
  v188 = v29;
  v189 = v6 + 16;
  v190 = v5;
  (v29)(v27);
  v30 = sub_268B37A34();
  v31 = sub_268B37ED4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v6;
    v33 = v19;
    v34 = a3;
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2688BB000, v30, v31, "SetVolumeLevelIntentHandler#handle called", v35, 2u);
    v36 = v35;
    a3 = v34;
    v19 = v33;
    v6 = v32;
    MEMORY[0x26D6266E0](v36, -1, -1);
  }

  v39 = *(v6 + 8);
  v37 = v6 + 8;
  v38 = v39;
  v40 = v190;
  (v39)(v27, v190);
  v41 = sub_268B18100(a1);
  if (!v41)
  {
    goto LABEL_11;
  }

  v42 = v41;
  if (!sub_2688EFD0C())
  {

LABEL_11:
    v188(v25, v187, v40);
    v47 = sub_268B37A34();
    v48 = sub_268B37EE4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2688BB000, v47, v48, "SetVolumeLevelIntentHandler#handle no devices resolved, returning failure", v49, 2u);
      v50 = v49;
      v40 = v190;
      MEMORY[0x26D6266E0](v50, -1, -1);
    }

    (v38)(v25, v40);
    goto LABEL_54;
  }

  sub_268921344();
  v44 = v43;
  if (!v43[2])
  {
    v185 = v37;

    v188(v22, v187, v40);
    v51 = a1;
    v52 = sub_268B37A34();
    v53 = sub_268B37EE4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = v40;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v184 = v38;
      v57 = v56;
      v191 = v56;
      *v55 = 136315138;
      v193[0] = sub_268B18100(v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B30, &qword_268B3EE70);
      v58 = sub_268B38094();
      v59 = a3;
      v61 = v60;

      v62 = sub_26892CDB8(v58, v61, &v191);
      a3 = v59;

      *(v55 + 4) = v62;
      _os_log_impl(&dword_2688BB000, v52, v53, "SetVolumeLevelIntentHandler#handle unable to get route ids for the intent devices: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      MEMORY[0x26D6266E0](v57, -1, -1);
      MEMORY[0x26D6266E0](v55, -1, -1);

      v184(v22, v54);
    }

    else
    {

      (v38)(v22, v40);
    }

LABEL_54:
    v113 = sub_268B36EA4();
    v114 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v115 = v113;
    v116 = SetVolumeLevelIntentResponse.init(code:userActivity:)(5, v113);
    (a3)[2](a3, v116);

LABEL_55:
    goto LABEL_56;
  }

  v45 = [a1 volumeLevel];
  v46 = v45;
  if (v45)
  {
    v175 = [v45 volumeSettingType];
  }

  else
  {
    v175 = 0;
  }

  v63 = [a1 volumeLevel];
  v176 = v46;
  v178 = v63;
  v179 = v44;
  if (v63)
  {
    v64 = v63;
    v177 = [v63 volumeSettingState];
  }

  else
  {
    v177 = 0;
  }

  v188(v19, v187, v40);
  v65 = a1;
  v66 = sub_268B37A34();
  v67 = sub_268B37ED4();

  if (os_log_type_enabled(v66, v67))
  {
    v172 = v19;
    v173 = a3;
    v68 = v178 != 0;
    v69 = v176 == 0;
    v70 = v65;
    v71 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v193[0] = v171;
    *v71 = 136315906;
    v191 = v175;
    v192 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5878, &unk_268B3BE90);
    v72 = sub_268B37C24();
    v74 = sub_26892CDB8(v72, v73, v193);

    *(v71 + 4) = v74;
    *(v71 + 12) = 1024;
    v75 = v177;
    v76 = v177 == 5 && v68;
    *(v71 + 14) = v76;
    *(v71 + 18) = 1024;
    v77 = v75 == 1 && v68;
    *(v71 + 20) = v77;
    *(v71 + 24) = 2080;
    v174 = v70;
    v78 = [v70 volumeLevel];
    if (v78 && (v79 = v78, v80 = [v78 resolvedVolumeOutput], v79, v80))
    {
      [v80 floatValue];

      v81 = sub_268B37E14();
      v83 = v82;
      a3 = v173;
      v84 = v172;
    }

    else
    {
      v83 = 0xE300000000000000;
      a3 = v173;
      v84 = v172;
      v81 = 7104878;
    }

    v85 = sub_26892CDB8(v81, v83, v193);

    *(v71 + 26) = v85;
    _os_log_impl(&dword_2688BB000, v66, v67, "SetVolumeLevelIntentHandler#handle volume settingType: %s, increase: %{BOOL}d, decrease: %{BOOL}d, resolved output: %s", v71, 0x22u);
    v86 = v171;
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v86, -1, -1);
    MEMORY[0x26D6266E0](v71, -1, -1);

    v40 = v190;
    (v38)(v84, v190);
    v65 = v174;
  }

  else
  {

    (v38)(v19, v40);
  }

  v87 = [v65 volumeLevel];
  if (!v87 || (v88 = v87, v89 = [v87 resolvedVolumeOutput], v88, !v89) || (objc_msgSend(v89, sel_floatValue), v91 = v90, v89, (v92 = objc_msgSend(v65, sel_volumeLevel)) == 0) || (v93 = v92, v94 = objc_msgSend(v92, sel_currentVolumeOutput), v93, !v94) || (objc_msgSend(v94, sel_floatValue), v96 = v95, v94, (v97 = objc_msgSend(v65, sel_volumeLevel)) == 0) || (v98 = v97, v99 = sub_268ACC57C(), v98, (v99 & 0x100000000) != 0))
  {

    v108 = v184;
    v188(v184, v187, v40);
    v109 = sub_268B37A34();
    v110 = sub_268B37EE4();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_2688BB000, v109, v110, "SetVolumeLevelIntentHandler#handle resolvedVolumeOutput or currentVolume is undefined or could not be cast to float. Returning failure", v111, 2u);
      v112 = v111;
      v40 = v190;
      MEMORY[0x26D6266E0](v112, -1, -1);
    }

    (v38)(v108, v40);
    goto LABEL_54;
  }

  if (v96 == 1.0)
  {
    v100 = v177 != 5 || v178 == 0;
    if (!v100 || v91 == 1.0)
    {

      v102 = v182;
      v188(v182, v187, v40);
      v103 = sub_268B37A34();
      v104 = sub_268B37ED4();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_2688BB000, v103, v104, "SetVolumeLevelIntentHandler#handle volume is already at 100%%. Skip setting volume.", v105, 2u);
        v40 = v190;
        MEMORY[0x26D6266E0](v105, -1, -1);
      }

      (v38)(v102, v40);
      v106 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
      v107 = 100;
      goto LABEL_77;
    }
  }

  if (v96 == 0.0)
  {
    v117 = v177 != 1 || v178 == 0;
    if (!v117 || v91 == 0.0)
    {

      v131 = v181;
      v188(v181, v187, v40);
      v132 = sub_268B37A34();
      v133 = sub_268B37ED4();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&dword_2688BB000, v132, v133, "SetVolumeLevelIntentHandler#handle volume is already at 0%%. Skip setting volume.", v134, 2u);
        v40 = v190;
        MEMORY[0x26D6266E0](v134, -1, -1);
      }

      (v38)(v131, v40);
      v135 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
      v107 = 101;
LABEL_77:
      v116 = SetVolumeLevelIntentResponse.init(code:userActivity:)(v107, 0);
      (a3)[2](a3, v116);

      goto LABEL_55;
    }
  }

  v184 = v38;
  v118 = (v185 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState);
  __swift_project_boxed_opaque_existential_1((v185 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState), *(v185 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 24));
  v119 = sub_268B34C74();
  v120 = v65;
  v121 = v119;
  v174 = v120;
  v122 = sub_268B18100(v120);
  if (!v122)
  {
    goto LABEL_80;
  }

  v123 = sub_2688EFBD0(v122);

  if (v123 != 1)
  {
    goto LABEL_80;
  }

  v124 = sub_268B18100(v174);
  if (!v124)
  {
    goto LABEL_80;
  }

  v125 = v124;
  if (!sub_2688EFD0C())
  {

    goto LABEL_80;
  }

  sub_2688EFD10();
  if ((v125 & 0xC000000000000001) != 0)
  {
    goto LABEL_124;
  }

  for (i = *(v125 + 32); ; i = MEMORY[0x26D625BD0](0, v125))
  {
    v127 = i;

    if (sub_268984BA0())
    {

      v128 = v179;
      if (!v179[2])
      {
        __break(1u);
LABEL_126:

        _Block_release(a3);
        v191 = v128;
        sub_268B38474();
        __break(1u);
        return;
      }

      v129 = v179[4];
      v130 = v179[5];

      sub_268928A18(v129, v130, sub_26892DC18, v186);

LABEL_112:

      goto LABEL_56;
    }

LABEL_80:
    __swift_project_boxed_opaque_existential_1((v185 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider), *(v185 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 24));
    if (sub_268B36F74())
    {
      __swift_project_boxed_opaque_existential_1(v118, v118[3]);
      v136 = sub_2688C32AC();
      v137 = v190;
      v138 = v176;
      if ((v136 | v121))
      {
        goto LABEL_97;
      }
    }

    else
    {
      v137 = v190;
      v138 = v176;
      if (v121)
      {
        goto LABEL_97;
      }
    }

    if (sub_2688EFBD0(v42) != 1)
    {
      goto LABEL_97;
    }

    sub_2688EFD10();
    if ((v42 & 0xC000000000000001) != 0)
    {
      v139 = MEMORY[0x26D625BD0](0, v42);
    }

    else
    {
      v139 = *(v42 + 32);
    }

    v118 = v139;
    v140 = sub_2689840D4();
    if ((v140 - 1) < 4)
    {
      v141 = sub_26892D418(v118);
      v143 = v142;
      sub_268B36C54();
      v144 = sub_268B36C24();
      if (v143)
      {
        if (v141 == v144 && v143 == v145)
        {
        }

        else
        {
          v147 = sub_268B38444();

          if ((v147 & 1) == 0)
          {
            goto LABEL_96;
          }
        }

        goto LABEL_117;
      }

LABEL_96:

      v137 = v190;
      v138 = v176;
LABEL_97:
      if (sub_2688EFBD0(v42) == 1)
      {
        sub_2688EFD10();
        v148 = v174;
        if ((v42 & 0xC000000000000001) != 0)
        {
          v149 = MEMORY[0x26D625BD0](0, v42);
        }

        else
        {
          v149 = *(v42 + 32);
        }

        v150 = v149;

        v152 = sub_268983434(v151);

        v138 = v176;
      }

      else
      {

        v152 = 0;
        v148 = v174;
      }

      v153 = v183;
      if (v138)
      {
        if (v175 == 1)
        {
          sub_2689295D4(v179, v152 & 1, sub_26892DC18, v186);
          goto LABEL_111;
        }

        if (v175 == 2)
        {
          sub_268929DC0(v179, v177, v178 == 0, v152 & 1);
LABEL_111:

          goto LABEL_112;
        }
      }

      v188(v153, v187, v137);
      v154 = v148;
      v155 = sub_268B37A34();
      v156 = sub_268B37EE4();

      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v193[0] = v158;
        *v157 = 136315138;
        v159 = [v154 &selRef_encodedClassName];
        v160 = v159;
        if (v159)
        {
          v161 = [v159 volumeSettingType];
        }

        else
        {
          v161 = 0;
        }

        v191 = v161;
        v192 = v160 == 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D98, &unk_268B3D708);
        v162 = sub_268B37C24();
        v164 = sub_26892CDB8(v162, v163, v193);

        *(v157 + 4) = v164;
        _os_log_impl(&dword_2688BB000, v155, v156, "SetVolumeLevelIntentHandler#handle unknown volume setting type: %s, returning failure.", v157, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v158);
        MEMORY[0x26D6266E0](v158, -1, -1);
        MEMORY[0x26D6266E0](v157, -1, -1);

        v184(v153, v190);
      }

      else
      {

        v184(v153, v137);
      }

      goto LABEL_54;
    }

    v128 = v140;
    if (v140)
    {
      goto LABEL_126;
    }

LABEL_117:

    v125 = v179;
    v42 = v180;
    if (v179[2])
    {
      break;
    }

    __break(1u);
LABEL_124:
    ;
  }

  v165 = a3;
  v166 = v179[4];
  v167 = v179[5];

  v188(v42, v187, v190);
  v168 = sub_268B37A34();
  v169 = sub_268B37EE4();
  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    *v170 = 0;
    _os_log_impl(&dword_2688BB000, v168, v169, "SetVolumeLevelIntentHandler#handle setting volume for single local device", v170, 2u);
    MEMORY[0x26D6266E0](v170, -1, -1);
  }

  v184(v42, v190);
  sub_268928EC0(v166, v167, sub_26892DC18, v186);

  a3 = v165;
LABEL_56:
  _Block_release(a3);
}

void sub_2689233AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_27_2();
  v5 = v3;
  v207 = v6;
  v8 = v7;
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v201 = v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v203 = v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v200 = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v199 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v204 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v26 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v27 = *(v11 + 16);
  v28 = OUTLINED_FUNCTION_212_0();
  v27(v28);
  v29 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_66_0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_52_1(v31);
    _os_log_impl(&dword_2688BB000, v29, v4, "SetVolumeLevelIntentHandler#handle called", v8, 2u);
    v5 = v3;
    OUTLINED_FUNCTION_12();
  }

  v32 = *(v11 + 8);
  v33 = OUTLINED_FUNCTION_138();
  v32(v33);
  v34 = sub_268B18100(v207);
  if (!v34)
  {
    goto LABEL_11;
  }

  v35 = v34;
  if (!sub_2688EFD0C())
  {

LABEL_11:
    v39 = OUTLINED_FUNCTION_32_1();
    v27(v39);
    v40 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_39_1();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v42);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v43, v44, v45, v46, v47, 2u);
      OUTLINED_FUNCTION_12();
    }

    v48 = OUTLINED_FUNCTION_46_1();
    v32(v48);
    OUTLINED_FUNCTION_62_1();
    goto LABEL_58;
  }

  sub_268921344();
  if (!*(v36 + 16))
  {

    (v27)(v201, v26, v9);
    v49 = v207;
    v40 = sub_268B37A34();
    v50 = sub_268B37EE4();

    if (os_log_type_enabled(v40, v50))
    {
      OUTLINED_FUNCTION_172_0();
      v197 = v8;
      v51 = OUTLINED_FUNCTION_53_1();
      v209 = v51;
      *v26 = 136315138;
      v211[0] = sub_268B18100(v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B30, &qword_268B3EE70);
      v52 = sub_268B38094();
      v53 = v32;
      v55 = v54;

      v56 = sub_26892CDB8(v52, v55, &v209);

      *(v26 + 4) = v56;
      _os_log_impl(&dword_2688BB000, v40, v50, "SetVolumeLevelIntentHandler#handle unable to get route ids for the intent devices: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      v8 = v197;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_20_2();

      v57 = OUTLINED_FUNCTION_192();
      v53(v57);
    }

    else
    {

      v79 = OUTLINED_FUNCTION_192();
      v32(v79);
    }

    OUTLINED_FUNCTION_62_1();
LABEL_58:
    OUTLINED_FUNCTION_25_2();
    sub_268B36EA4();
    OUTLINED_FUNCTION_142_0();
    v112 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v113 = v40;
    v114 = SetVolumeLevelIntentResponse.init(code:userActivity:)(5, v40);
    (v8)();
    goto LABEL_59;
  }

  v206 = v36;
  v37 = [v207 volumeLevel];
  v38 = v37;
  if (v37)
  {
    v193 = [v37 volumeSettingType];
  }

  else
  {
    v193 = 0;
  }

  v202 = v35;
  v58 = [v207 volumeLevel];
  v194 = v38;
  v195 = v58;
  v59 = v8;
  if (v58)
  {
    v60 = v58;
    v196 = [v58 volumeSettingState];
  }

  else
  {
    v196 = 0;
  }

  v191 = v5;
  v205 = v26;
  (v27)(v204, v26, v9);
  v61 = v207;
  v62 = sub_268B37A34();
  v63 = sub_268B37ED4();

  v192 = v63;
  v208 = v61;
  if (os_log_type_enabled(v62, v63))
  {
    v190 = v27;
    v188 = v32;
    v198 = v59;
    v64 = swift_slowAlloc();
    v211[0] = swift_slowAlloc();
    *v64 = 136315906;
    v209 = v193;
    v210 = v194 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5878, &unk_268B3BE90);
    v65 = sub_268B37C24();
    v67 = sub_26892CDB8(v65, v66, v211);

    *(v64 + 4) = v67;
    *(v64 + 12) = 1024;
    v68 = v196 == 5 && v195 != 0;
    *(v64 + 14) = v68;
    *(v64 + 18) = 1024;
    v69 = v196 == 1 && v195 != 0;
    *(v64 + 20) = v69;
    *(v64 + 24) = 2080;
    v70 = [v61 volumeLevel];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 resolvedVolumeOutput];

      v73 = v204;
      v74 = v202;
      if (v72)
      {
        [v72 floatValue];

        v75 = sub_268B37E14();
        v77 = v76;
LABEL_36:
        v80 = sub_26892CDB8(v75, v77, v211);

        *(v64 + 26) = v80;
        _os_log_impl(&dword_2688BB000, v62, v192, "SetVolumeLevelIntentHandler#handle volume settingType: %s, increase: %{BOOL}d, decrease: %{BOOL}d, resolved output: %s", v64, 0x22u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_132_0();

        v32 = v188;
        (v188)(v73, v9);
        v8 = v198;
        v27 = v190;
        v61 = v208;
        goto LABEL_37;
      }

      v77 = 0xE300000000000000;
    }

    else
    {
      v77 = 0xE300000000000000;
      v73 = v204;
      v74 = v202;
    }

    v75 = 7104878;
    goto LABEL_36;
  }

  v78 = OUTLINED_FUNCTION_138();
  v32(v78);
  v8 = v59;
  v74 = v202;
LABEL_37:
  v81 = [v61 volumeLevel];
  if (!v81 || (v82 = v81, v83 = [v81 resolvedVolumeOutput], v82, !v83) || (objc_msgSend(v83, sel_floatValue), v85 = v84, v83, (v86 = objc_msgSend(v208, sel_volumeLevel)) == 0) || (v87 = v86, v88 = objc_msgSend(v86, sel_currentVolumeOutput), v87, !v88) || (objc_msgSend(v88, sel_floatValue), v90 = v89, v88, (v91 = objc_msgSend(v208, sel_volumeLevel)) == 0) || (v92 = v91, v93 = sub_268ACC57C(), v92, (v93 & 0x100000000) != 0))
  {

    v108 = OUTLINED_FUNCTION_32_1();
    v27(v108);
    v40 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_39_1();
    if (os_log_type_enabled(v40, v109))
    {
      v110 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v110);
      OUTLINED_FUNCTION_75_1(&dword_2688BB000, v40, v203, "SetVolumeLevelIntentHandler#handle resolvedVolumeOutput or currentVolume is undefined or could not be cast to float. Returning failure");
      OUTLINED_FUNCTION_20_2();
    }

    v111 = OUTLINED_FUNCTION_46_1();
    v32(v111);
    goto LABEL_58;
  }

  if (v90 == 1.0)
  {
    v94 = v196 != 5 || v195 == 0;
    if (!v94 || v85 == 1.0)
    {

      v96 = OUTLINED_FUNCTION_32_1();
      v27(v96);
      v97 = sub_268B37A34();
      sub_268B37ED4();
      OUTLINED_FUNCTION_39_1();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v99);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v100, v101, v102, v103, v104, 2u);
        OUTLINED_FUNCTION_12();
      }

      v105 = OUTLINED_FUNCTION_46_1();
      v32(v105);
      v106 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
      v107 = 100;
      goto LABEL_81;
    }
  }

  if (v90 == 0.0)
  {
    v115 = v196 != 1 || v195 == 0;
    if (!v115 || v85 == 0.0)
    {

      v129 = OUTLINED_FUNCTION_32_1();
      v27(v129);
      v130 = sub_268B37A34();
      sub_268B37ED4();
      OUTLINED_FUNCTION_39_1();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v132);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v133, v134, v135, v136, v137, 2u);
        OUTLINED_FUNCTION_12();
      }

      v138 = OUTLINED_FUNCTION_46_1();
      v32(v138);
      v139 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
      v107 = 101;
LABEL_81:
      v114 = SetVolumeLevelIntentResponse.init(code:userActivity:)(v107, 0);
      (v8)();
      goto LABEL_60;
    }
  }

  v189 = v32;
  v116 = v8;
  v117 = (v191 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState);
  OUTLINED_FUNCTION_59_0((v191 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState), *(v191 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 24));
  v118 = sub_268B34C74();
  v119 = sub_268B18100(v208);
  if (!v119)
  {
    goto LABEL_84;
  }

  v120 = sub_2688EFBD0(v119);

  if (v120 != 1)
  {
    goto LABEL_84;
  }

  v121 = sub_268B18100(v208);
  if (!v121)
  {
    goto LABEL_84;
  }

  v122 = v121;
  if (!sub_2688EFD0C())
  {

    goto LABEL_84;
  }

  OUTLINED_FUNCTION_90_1();
  sub_2688EFD10();
  if ((v122 & 0xC000000000000001) != 0)
  {
    goto LABEL_128;
  }

  for (i = *(v122 + 32); ; i = MEMORY[0x26D625BD0](0, v122))
  {
    v124 = i;

    if (sub_268984BA0())
    {

      if (*(v206 + 16))
      {

        OUTLINED_FUNCTION_61_1();
        sub_268928A18(v125, v126, v127, v128);

LABEL_124:

        goto LABEL_61;
      }

      __break(1u);
LABEL_130:
      sub_268B38474();
      __break(1u);
      return;
    }

LABEL_84:
    OUTLINED_FUNCTION_59_0((v191 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider), *(v191 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 24));
    if (sub_268B36F74())
    {
      __swift_project_boxed_opaque_existential_1(v117, v117[3]);
      OUTLINED_FUNCTION_212_0();
      v140 = v194;
      if ((sub_2688C32AC() | v118))
      {
        goto LABEL_101;
      }
    }

    else
    {
      v140 = v194;
      if (v118)
      {
        goto LABEL_101;
      }
    }

    if (sub_2688EFBD0(v74) != 1)
    {
      goto LABEL_101;
    }

    OUTLINED_FUNCTION_90_1();
    sub_2688EFD10();
    v141 = (v74 & 0xC000000000000001) != 0 ? MEMORY[0x26D625BD0](0, v74) : *(v74 + 32);
    v117 = v141;
    v142 = sub_2689840D4();
    v118 = v116;
    if ((v142 - 1) < 4)
    {
      break;
    }

    if (v142)
    {
      goto LABEL_130;
    }

LABEL_120:

    v122 = v206;
    v74 = v199;
    if (*(v206 + 16))
    {

      (v27)(v199, v205, v9);
      v178 = sub_268B37A34();
      v179 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_196(v179))
      {
        v180 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_52_1(v180);
        OUTLINED_FUNCTION_50_0(&dword_2688BB000, v181, v182, "SetVolumeLevelIntentHandler#handle setting volume for single local device");
        OUTLINED_FUNCTION_12();
      }

      v183 = OUTLINED_FUNCTION_46_1();
      v189(v183);
      OUTLINED_FUNCTION_61_1();
      sub_268928EC0(v184, v185, v186, v187);

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    ;
  }

  v143 = sub_26892D418(v117);
  v145 = v144;
  sub_268B36C54();
  v146 = sub_268B36C24();
  if (v145)
  {
    if (v143 == v146 && v145 == v147)
    {
    }

    else
    {
      v149 = sub_268B38444();

      if ((v149 & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    goto LABEL_120;
  }

LABEL_100:

  v140 = v194;
LABEL_101:
  if (sub_2688EFBD0(v74) == 1)
  {
    OUTLINED_FUNCTION_90_1();
    sub_2688EFD10();
    v150 = v116;
    v151 = v27;
    if ((v74 & 0xC000000000000001) != 0)
    {
      v152 = MEMORY[0x26D625BD0](0, v74);
    }

    else
    {
      v152 = *(v74 + 32);
    }

    v153 = v152;

    v155 = sub_268983434(v154);

    v140 = v194;
  }

  else
  {

    v155 = 0;
    v150 = v116;
    v151 = v27;
  }

  if (v140)
  {
    if (v193 == 1)
    {
      OUTLINED_FUNCTION_61_1();
      sub_2689295D4(v165, v166, v167, v168);
      goto LABEL_124;
    }

    if (v193 == 2)
    {
      sub_268929DC0(v206, v196, v195 == 0, v155 & 1);
      goto LABEL_124;
    }
  }

  v151(v200, v205, v9);
  v156 = v208;
  v157 = sub_268B37A34();
  v158 = sub_268B37EE4();

  if (os_log_type_enabled(v157, v158))
  {
    v159 = OUTLINED_FUNCTION_172_0();
    v160 = OUTLINED_FUNCTION_173_0();
    v211[0] = v160;
    *v159 = 136315138;
    v161 = [v156 volumeLevel];
    v162 = v161;
    if (v161)
    {
      v163 = [v161 volumeSettingType];
    }

    else
    {
      v163 = 0;
    }

    v209 = v163;
    v210 = v162 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D98, &unk_268B3D708);
    v169 = sub_268B37C24();
    v171 = sub_26892CDB8(v169, v170, v211);

    *(v159 + 4) = v171;
    OUTLINED_FUNCTION_27();
    _os_log_impl(v172, v173, v174, v175, v176, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v160);
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_12();

    (v189)(v200, v9);
    v150 = v116;
  }

  else
  {

    v164 = OUTLINED_FUNCTION_46_1();
    v189(v164);
  }

  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_25_2();
  sub_268B36EA4();
  OUTLINED_FUNCTION_142_0();
  v177 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
  v113 = v157;
  v114 = SetVolumeLevelIntentResponse.init(code:userActivity:)(5, v157);
  v150();
LABEL_59:

LABEL_60:
LABEL_61:
  OUTLINED_FUNCTION_28_2();
}

void sub_268924560(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_268B37A34();
  v10 = sub_268B37ED4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2688BB000, v9, v10, "SetVolumeLevelIntentHandler#confirm setVolumeLevel.SetVolumeLevelIntentHandler.confirm() called", v11, 2u);
    MEMORY[0x26D6266E0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
  v13 = SetVolumeLevelIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v13);

  _Block_release(a3);
}

void sub_268924738(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v4, qword_2802CDA10);
  v6 = OUTLINED_FUNCTION_139();
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_52_1(v10);
    _os_log_impl(&dword_2688BB000, v8, v9, "SetVolumeLevelIntentHandler#confirm setVolumeLevel.SetVolumeLevelIntentHandler.confirm() called", v2, 2u);
    OUTLINED_FUNCTION_12();
  }

  v11 = OUTLINED_FUNCTION_138();
  v12(v11);
  v13 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
  v14 = SetVolumeLevelIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_2689248D0(uint64_t a1, char *a2, void (**a3)(void, void *))
{
  v77 = a1;
  v78 = a2;
  v4 = sub_268B371E4();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_268B36C04();
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x28223BE20](v6);
  v72 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v70 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v67 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v71 = (&v67 - v16);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - v17;
  v75 = swift_allocObject();
  v76 = a3;
  *(v75 + 16) = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v8, qword_2802CDA10);
  v20 = *(v9 + 16);
  v20(v18, v19, v8);
  v21 = sub_268B37A34();
  v22 = sub_268B37F04();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v9;
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "SetVolumeLevelIntentHandler#resolveDevices resolving devices for SetVolume", v24, 2u);
    v25 = v24;
    v9 = v23;
    MEMORY[0x26D6266E0](v25, -1, -1);
  }

  v26 = *(v9 + 8);
  v26(v18, v8);
  if (sub_268921078(sub_268B18120))
  {
    __swift_project_boxed_opaque_existential_1(&v78[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState], *&v78[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 24]);
    if ((sub_2688C3240() & 1) == 0)
    {
      v41 = v71;
      v20(v71, v19, v8);
      v42 = sub_268B37A34();
      v43 = sub_268B37EE4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_2688BB000, v42, v43, "SetVolumeLevelIntentHandler#resolveDevices whole House Audio requests are unsupported on this platform", v44, 2u);
        MEMORY[0x26D6266E0](v44, -1, -1);
      }

      v26(v41, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_268B3BBA0;
      type metadata accessor for SetVolumeLevelDevicesResolutionResult();
      v32 = 5;
      goto LABEL_21;
    }
  }

  v71 = v26;
  v27 = &v78[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState];
  __swift_project_boxed_opaque_existential_1(&v78[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState], *&v78[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 24]);
  if (sub_268B34D14())
  {
    v20(v14, v19, v8);
    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2688BB000, v28, v29, "SetVolumeLevelIntentHandler#resolveDevices can't do volume controls on CarPlay, returning unsupported.", v30, 2u);
      MEMORY[0x26D6266E0](v30, -1, -1);
    }

    v71(v14, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    v32 = 3;
    goto LABEL_21;
  }

  v33 = v77;
  if (sub_268B18140(v77))
  {
    if (sub_2688EFD0C())
    {
      if (!sub_268B18120(v33))
      {
        v58 = v78;
        v60 = v72;
        v59 = v73;
        v61 = v74;
        (*(v73 + 104))(v72, *MEMORY[0x277D5F648], v74);
        v62 = swift_allocObject();
        v63 = v75;
        v62[2] = sub_26892DA54;
        v62[3] = v63;
        v62[4] = v58;

        v64 = v58;
        v65 = v67;
        sub_268B37164();
        sub_2688F4CD4();

        (*(v68 + 8))(v65, v69);
        (*(v59 + 8))(v60, v61);
        goto LABEL_29;
      }
    }
  }

  if (sub_268B18120(v33))
  {
    sub_268B18140(v33);
    v34 = v78;
    sub_268920A60();

    v36 = v72;
    v35 = v73;
    v37 = v74;
    (*(v73 + 104))(v72, *MEMORY[0x277D5F648], v74);
    v38 = swift_allocObject();
    v39 = v75;
    v38[2] = sub_26892DA54;
    v38[3] = v39;
    v38[4] = v34;

    v40 = v34;
    sub_2688F80CC();

    (*(v35 + 8))(v36, v37);
LABEL_29:

    v46 = v76;
    goto LABEL_30;
  }

  v47 = v70;
  v20(v70, v19, v8);
  v48 = sub_268B37A34();
  v49 = sub_268B37F04();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_2688BB000, v48, v49, "SetVolumeLevelIntentHandler#resolveDevices no context or device query, falling back to local device", v50, 2u);
    MEMORY[0x26D6266E0](v50, -1, -1);
  }

  v71(v47, v8);
  __swift_project_boxed_opaque_existential_1(v27, *(v27 + 3));
  if (sub_268B34D04() & 1) == 0 || (__swift_project_boxed_opaque_existential_1(&v78[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider], *&v78[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 24]), (sub_268B36F94()))
  {
    type metadata accessor for Device();
    sub_268B36C54();
    v51 = sub_268B36C24();
    v53 = v52;

    LOBYTE(v66) = 0;
    sub_268983F14(v51, v53, 0, 0, 0, 0, 0, 0, v54, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
    v56 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    *(v57 + 32) = sub_268B2CC98(v56);
    v45 = sub_268B37CE4();
    v46 = v76;
    v76[2](v76, v45);

    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_268B3BBA0;
  type metadata accessor for SetVolumeLevelDevicesResolutionResult();
  v32 = 2;
LABEL_21:
  *(v31 + 32) = sub_268B1CD38(v32);
  v45 = sub_268B37CE4();
  v46 = v76;
  v76[2](v76, v45);

LABEL_22:

LABEL_30:
  _Block_release(v46);
}

void sub_268925338()
{
  OUTLINED_FUNCTION_26();
  v81 = v3;
  v82 = v0;
  v79 = v4;
  OUTLINED_FUNCTION_85_1();
  sub_268B371E4();
  OUTLINED_FUNCTION_1();
  v70 = v6;
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v69 = v8 - v7;
  OUTLINED_FUNCTION_9();
  sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v76 = v10;
  v77 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v75 = v12 - v11;
  OUTLINED_FUNCTION_9();
  v13 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20_0();
  v78 = v17 - v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v72 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v73 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v13, qword_2802CDA10);
  v24 = *(v15 + 16);
  OUTLINED_FUNCTION_84_1();
  v24();
  v25 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_66_0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_52_1(v27);
    _os_log_impl(&dword_2688BB000, v25, v2, "SetVolumeLevelIntentHandler#resolveDevices resolving devices for SetVolume", v1, 2u);
    OUTLINED_FUNCTION_12();
  }

  v28 = *(v15 + 8);
  v29 = OUTLINED_FUNCTION_212_0();
  v28(v29);
  if (sub_268921078(sub_268B18120))
  {
    __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState], *&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 24]);
    OUTLINED_FUNCTION_138();
    if ((sub_2688C3240() & 1) == 0)
    {
      OUTLINED_FUNCTION_84_1();
      v24();
      v49 = sub_268B37A34();
      sub_268B37EE4();
      OUTLINED_FUNCTION_39_1();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v51);
        _os_log_impl(&dword_2688BB000, v49, v73, "SetVolumeLevelIntentHandler#resolveDevices whole House Audio requests are unsupported on this platform", v24, 2u);
        OUTLINED_FUNCTION_12();
      }

      (v28)(v73, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v42 = swift_allocObject();
      OUTLINED_FUNCTION_95_0(v42, xmmword_268B3BBA0);
      v43 = 5;
      goto LABEL_21;
    }
  }

  v74 = v28;
  v30 = &v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState];
  v31 = *&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 24];
  v32 = OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_59_0(v32, v33);
  if (sub_268B34D14())
  {
    OUTLINED_FUNCTION_84_1();
    v24();
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v35))
    {
      v36 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v36);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      OUTLINED_FUNCTION_6();
    }

    v74(v78, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v42 = swift_allocObject();
    OUTLINED_FUNCTION_95_0(v42, xmmword_268B3BBA0);
    v43 = 3;
    goto LABEL_21;
  }

  v44 = sub_268B18140(v1);
  if (v44)
  {
    v31 = v44;
    if (sub_2688EFD0C())
    {
      v45 = sub_268B18120(v1);
      if (!v45)
      {
        (*(v76 + 104))(v75, *MEMORY[0x277D5F648], v77);
        OUTLINED_FUNCTION_220();
        v65 = swift_allocObject();
        v65[2] = v79;
        v65[3] = v81;
        v65[4] = v0;

        v66 = v0;
        sub_268B37164();
        sub_2688F4CD4();

        (*(v70 + 8))(v69, v71);
        (*(v76 + 8))(v75, v77);
        goto LABEL_23;
      }

      v46 = v45;

      v31 = v46;
    }
  }

  if (!sub_268B18120(v1))
  {
    OUTLINED_FUNCTION_84_1();
    v24();
    v52 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_39_1();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v54);
      _os_log_impl(&dword_2688BB000, v52, v72, "SetVolumeLevelIntentHandler#resolveDevices no context or device query, falling back to local device", v31, 2u);
      OUTLINED_FUNCTION_6();
    }

    v74(v72, v13);
    OUTLINED_FUNCTION_59_0(v30, *(v30 + 3));
    if (sub_268B34D04() & 1) == 0 || (OUTLINED_FUNCTION_59_0(&v82[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider], *&v82[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 24]), (sub_268B36F94()))
    {
      type metadata accessor for Device();
      OUTLINED_FUNCTION_142_0();
      sub_268B36C54();
      sub_268B36C24();
      LOBYTE(v68) = 0;

      OUTLINED_FUNCTION_25_2();
      sub_268983F14(v55, v56, v57, v58, v59, v60, v61, 0, v67, v68, v69, v70, v71, v72, v74, v75, v76, v77, v78, v79, v81, v82);
      v63 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v64 = swift_allocObject();
      OUTLINED_FUNCTION_95_0(v64, xmmword_268B3BBA0);
      v64[2].n128_u64[0] = sub_268B2CC98(v63);
      v80(v64);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v42 = swift_allocObject();
    OUTLINED_FUNCTION_95_0(v42, xmmword_268B3BBA0);
    v43 = 2;
LABEL_21:
    v42[2].n128_u64[0] = sub_268B1CD38(v43);
    v79(v42);
LABEL_22:

    goto LABEL_23;
  }

  sub_268B18140(v1);
  sub_268920A60();

  (*(v76 + 104))(v75, *MEMORY[0x277D5F648], v77);
  OUTLINED_FUNCTION_220();
  v47 = swift_allocObject();
  v47[2] = v79;
  v47[3] = v81;
  v47[4] = v82;

  v48 = v82;
  sub_2688F80CC();

  (*(v76 + 8))(v75, v77);
LABEL_23:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268925B98(unint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    v14 = 4;
LABEL_19:
    *(v13 + 32) = sub_268B1CD38(v14);
    a3(v13);
LABEL_31:
  }

  if (!sub_2688EFD0C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    v14 = 1;
    goto LABEL_19;
  }

  v15 = sub_2688EFBD0(a1);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    goto LABEL_27;
  }

  v17 = v15;
  if (v15 != 1)
  {
    v35 = MEMORY[0x277D84F90];
    sub_268B38234();
    if (v17 < 0)
    {
      __break(1u);
LABEL_40:
      swift_once();
      goto LABEL_35;
    }

    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    v24 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x26D625BD0](v24, a1);
      }

      else
      {
        v25 = *(a1 + 8 * v24 + 32);
      }

      v26 = v25;
      ++v24;
      sub_268B2CC98(v25);

      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v17 != v24);
    v16 = v35;
LABEL_27:
    a3(v16);
    goto LABEL_31;
  }

  sub_2688EFD10();
  if ((a1 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x26D625BD0](0, a1);
  }

  else
  {
    v18 = *(a1 + 32);
  }

  a1 = v18;
  v19 = sub_268988574(v18);
  if (v20)
  {
    if (v19 == 0x7674656C707061 && v20 == 0xE700000000000000)
    {

      goto LABEL_29;
    }

    v22 = sub_268B38444();

    if (v22)
    {
      goto LABEL_29;
    }
  }

  v23 = sub_2689840D4();
  if ((v23 - 1) < 4)
  {
    goto LABEL_30;
  }

  if (v23)
  {
    v35 = v23;
    result = sub_268B38474();
    __break(1u);
    return result;
  }

  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState), *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 24));
  if ((sub_268B34D04() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_29:
  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider), *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 24));
  if (sub_268B36F94())
  {
LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    *(v27 + 32) = sub_268B2CC98(a1);
    a3(v27);

    goto LABEL_31;
  }

  if (qword_2802A4F30 != -1)
  {
    goto LABEL_40;
  }

LABEL_35:
  v29 = __swift_project_value_buffer(v9, qword_2802CDA10);
  (*(v10 + 16))(v12, v29, v9);
  v30 = sub_268B37A34();
  v31 = sub_268B37F04();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2688BB000, v30, v31, "SetVolumeLevelIntentHandler#resolveDevices can't do volume controls on Apple TV, returning unsupported.", v32, 2u);
    MEMORY[0x26D6266E0](v32, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_268B3BBA0;
  type metadata accessor for SetVolumeLevelDevicesResolutionResult();
  *(v33 + 32) = sub_268B1CD38(2);
  a3(v33);
}

uint64_t sub_2689260E8(unint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v40 - v14);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    if ((a1 & 1) == 0)
    {
      v17 = 4;
LABEL_20:
      *(v16 + 32) = sub_268B1CD38(v17);
      a3(v16);
      goto LABEL_21;
    }

LABEL_19:
    v17 = 1;
    goto LABEL_20;
  }

  if (!sub_2688EFD0C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    goto LABEL_19;
  }

  v18 = sub_2688EFBD0(a1);
  if (v18 != 1)
  {
    v26 = v18;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v9, qword_2802CDA10);
    (*(v10 + 16))(v13, v27, v9);
    v15 = sub_268B37A34();
    v28 = sub_268B37ED4();
    if (os_log_type_enabled(v15, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2688BB000, v15, v28, "SetVolumeLevelIntentHandler#resolveDevices multiple devices selected.", v29, 2u);
      MEMORY[0x26D6266E0](v29, -1, -1);
    }

    v30 = *(v10 + 8);
    v10 += 8;
    v30(v13, v9);
    v9 = MEMORY[0x277D84F90];
    if (v26)
    {
      v41 = MEMORY[0x277D84F90];
      sub_268B38234();
      if (v26 < 0)
      {
        __break(1u);
        goto LABEL_46;
      }

      type metadata accessor for SetVolumeLevelDevicesResolutionResult();
      v31 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x26D625BD0](v31, a1);
        }

        else
        {
          v32 = *(a1 + 8 * v31 + 32);
        }

        v33 = v32;
        ++v31;
        sub_268B2CC98(v32);

        sub_268B38214();
        sub_268B38244();
        sub_268B38254();
        sub_268B38224();
      }

      while (v26 != v31);
      v9 = v41;
    }

    a3(v9);
  }

  sub_2688EFD10();
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x26D625BD0](0, a1);
  }

  else
  {
    v19 = *(a1 + 32);
  }

  a1 = v19;
  v20 = sub_268988574(v19);
  if (v21)
  {
    if (v20 == 0x7674656C707061 && v21 == 0xE700000000000000)
    {

      goto LABEL_38;
    }

    v23 = sub_268B38444();

    if (v23)
    {
      goto LABEL_38;
    }
  }

  v24 = sub_2689840D4();
  if ((v24 - 1) < 4)
  {
LABEL_39:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    *(v34 + 32) = sub_268B2CC98(a1);
    a3(v34);

LABEL_21:
  }

  if (!v24)
  {
    __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState), *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 24));
    if ((sub_268B34D04() & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_38:
    __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider), *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 24));
    if (sub_268B36F94())
    {
      goto LABEL_39;
    }

    if (qword_2802A4F30 == -1)
    {
LABEL_41:
      v35 = __swift_project_value_buffer(v9, qword_2802CDA10);
      (*(v10 + 16))(v15, v35, v9);
      v36 = sub_268B37A34();
      v37 = sub_268B37EE4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_2688BB000, v36, v37, "SetVolumeLevelIntentHandler#resolveDevices can't do volume controls on Apple TV, returning unsupported.", v38, 2u);
        MEMORY[0x26D6266E0](v38, -1, -1);
      }

      (*(v10 + 8))(v15, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_268B3BBA0;
      type metadata accessor for SetVolumeLevelDevicesResolutionResult();
      *(v39 + 32) = sub_268B1CD38(2);
      a3(v39);
    }

LABEL_46:
    swift_once();
    goto LABEL_41;
  }

  v41 = v24;
  result = sub_268B38474();
  __break(1u);
  return result;
}

void sub_268926750(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SetVolumeLevelDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_2689267BC(uint64_t a1, char *a2, void (**a3)(void, id))
{
  v54 = a2;
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - v9;
  v55 = swift_allocObject();
  v56 = a3;
  *(v55 + 16) = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_2802CDA10);
  v12 = *(v6 + 16);
  v12(v10, v11, v5);
  v13 = sub_268B37A34();
  v14 = sub_268B37F04();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v52 = v5;
    v16 = a1;
    v17 = v15;
    *v15 = 0;
    _os_log_impl(&dword_2688BB000, v13, v14, "SetVolumeLevelIntentHandler#resolveVolumeLevel resolving volume level for SetVolume", v15, 2u);
    v18 = v17;
    a1 = v16;
    v5 = v52;
    MEMORY[0x26D6266E0](v18, -1, -1);
  }

  v19 = *(v6 + 8);
  v19(v10, v5);
  if (sub_268B18100(a1))
  {
    sub_268921344();
    v21 = v20;

    if (v21[2])
    {
      v22 = v11;
      v23 = v12;
      v24 = v21[4];
      v25 = v21[5];

      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        v27 = a1;
        v28 = sub_268B18100(a1);
        v29 = v56;
        if (v28)
        {
          v30 = sub_2688EFBD0(v28);

          if (v30 == 1)
          {
            v31 = sub_268B18100(v27);
            if (v31)
            {
              v32 = v31;
              if (sub_2688EFD0C())
              {
                sub_2688EFD10();
                if ((v32 & 0xC000000000000001) != 0)
                {
                  v33 = MEMORY[0x26D625BD0](0, v32);
                }

                else
                {
                  v33 = *(v32 + 32);
                }

                v34 = v33;

                if (sub_268984BA0())
                {
                  v35 = v54;
                  v36 = *&v54[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController + 24];
                  v53 = *&v54[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController + 32];
                  __swift_project_boxed_opaque_existential_1(&v54[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController], v36);
                  v37 = swift_allocObject();
                  v38 = v55;
                  v37[2] = sub_26892D9D4;
                  v37[3] = v38;
                  v37[4] = v35;
                  v37[5] = v27;

                  v39 = v35;
                  v40 = v27;
                  sub_268B37764();

LABEL_26:

                  goto LABEL_27;
                }
              }

              else
              {
              }
            }
          }
        }

        v46 = v54;
        __swift_project_boxed_opaque_existential_1(&v54[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController], *&v54[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController + 24]);
        v47 = swift_allocObject();
        v48 = v55;
        v47[2] = sub_26892D9D4;
        v47[3] = v48;
        v47[4] = v46;
        v47[5] = v27;

        v49 = v46;
        v50 = v27;
        sub_268B36CD4();

        goto LABEL_26;
      }

      v12 = v23;
      v11 = v22;
    }

    else
    {
    }
  }

  v41 = v53;
  v12(v53, v11, v5);
  v42 = sub_268B37A34();
  v43 = sub_268B37EE4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2688BB000, v42, v43, "SetVolumeLevelIntentHandler#resolveVolumeLevel no devices resolved. Returning failure", v44, 2u);
    MEMORY[0x26D6266E0](v44, -1, -1);
  }

  v19(v41, v5);
  type metadata accessor for SetVolumeLevelVolumeLevelResolutionResult();
  v45 = [swift_getObjCClassFromMetadata() unsupported];
  v29 = v56;
  v56[2](v56, v45);

LABEL_27:
  _Block_release(v29);
}

void sub_268926D48()
{
  OUTLINED_FUNCTION_26();
  v47 = v0;
  v48 = v2;
  v49 = v3;
  v5 = v4;
  v6 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v46 = (v10 - v11);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v13 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v14 = *(v8 + 16);
  v14(v0, v13, v6);
  v15 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_66_0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v17);
    _os_log_impl(&dword_2688BB000, v15, v1, "SetVolumeLevelIntentHandler#resolveVolumeLevel resolving volume level for SetVolume", v5, 2u);
    OUTLINED_FUNCTION_12();
  }

  v18 = *(v8 + 8);
  v18(v0, v6);
  if (sub_268B18100(v5))
  {
    sub_268921344();
    v20 = v19;

    if (v20[2])
    {
      v21 = v14;
      v22 = v20[4];
      v23 = v20[5];

      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        v25 = v5;
        v26 = sub_268B18100(v5);
        if (v26)
        {
          v27 = sub_2688EFBD0(v26);

          if (v27 == 1)
          {
            v28 = sub_268B18100(v25);
            if (v28)
            {
              v29 = v28;
              if (sub_2688EFD0C())
              {
                OUTLINED_FUNCTION_90_1();
                sub_2688EFD10();
                if ((v29 & 0xC000000000000001) != 0)
                {
                  v30 = MEMORY[0x26D625BD0](0, v29);
                }

                else
                {
                  v30 = *(v29 + 32);
                }

                v31 = v30;

                if (sub_268984BA0())
                {
                  OUTLINED_FUNCTION_59_0(&v47[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController], *&v47[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController + 24]);
                  v32 = swift_allocObject();
                  v32[2] = v48;
                  v32[3] = v49;
                  v32[4] = v47;
                  v32[5] = v25;

                  v33 = v47;
                  v34 = v25;
                  sub_268B37764();

LABEL_26:

                  goto LABEL_27;
                }
              }

              else
              {
              }
            }
          }
        }

        OUTLINED_FUNCTION_59_0(&v47[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController], *&v47[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController + 24]);
        v43 = swift_allocObject();
        v43[2] = v48;
        v43[3] = v49;
        v43[4] = v47;
        v43[5] = v25;

        v44 = v47;
        v45 = v25;
        sub_268B36CD4();

        goto LABEL_26;
      }

      v14 = v21;
    }

    else
    {
    }
  }

  v14(v46, v13, v6);
  v35 = sub_268B37A34();
  v36 = sub_268B37EE4();
  if (OUTLINED_FUNCTION_196(v36))
  {
    v37 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v37);
    OUTLINED_FUNCTION_247();
    _os_log_impl(v38, v39, v40, v41, v5, 2u);
    OUTLINED_FUNCTION_12();
  }

  v18(v46, v6);
  type metadata accessor for SetVolumeLevelVolumeLevelResolutionResult();
  v42 = [swift_getObjCClassFromMetadata() unsupported];
  v48();

LABEL_27:
  OUTLINED_FUNCTION_23();
}

void sub_2689271DC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x100000000) != 0)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v9, qword_2802CDA10);
    (*(v10 + 16))(v12, v16, v9);
    v17 = sub_268B37A34();
    v18 = sub_268B37EE4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2688BB000, v17, v18, "SetVolumeLevelIntentHandler#resolveVolumeLevel failed to get volume for accessory", v19, 2u);
      MEMORY[0x26D6266E0](v19, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    type metadata accessor for SetVolumeLevelVolumeLevelResolutionResult();
    v20 = sub_268B17B04(3);
    a2();
  }

  else
  {
    v13 = objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
    v22 = GetVolumeLevelIntentResponse.init(code:userActivity:)(4, 0);
    v14 = sub_268B37E04();
    [v22 setCurrentVolumeLevel_];

    sub_26892A584(a5, a2, a3);
    v15 = v22;
  }
}

void sub_268927458(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v40 = a5;
  v43 = a4;
  v8 = sub_268B37A54();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B36F24();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v41 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DD8, qword_268B42E80);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  sub_26892DB34(a1, &v37 - v17, &qword_2802A5DD8, qword_268B42E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = a2;
    v43 = a3;
    (*(v11 + 32))(v15, v18, v10);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v19 = v45;
    v20 = __swift_project_value_buffer(v45, qword_2802CDA10);
    v21 = v44;
    v22 = v42;
    (*(v44 + 16))(v42, v20, v19);
    v23 = *(v11 + 16);
    v24 = v41;
    v39 = v15;
    v23(v41, v15, v10);
    v25 = sub_268B37A34();
    v26 = sub_268B37EE4();
    v27 = v10;
    if (os_log_type_enabled(v25, v26))
    {
      v28 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v46 = v38;
      *v28 = 136446210;
      sub_26892DA98(&qword_2802A5DE0, MEMORY[0x277D5F6E0], MEMORY[0x277D5F6F0]);
      v29 = sub_268B38404();
      v31 = v30;
      v32 = *(v11 + 8);
      v32(v24, v27);
      v33 = sub_26892CDB8(v29, v31, &v46);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_2688BB000, v25, v26, "SetVolumeLevelIntentHandler#resolveVolumeLevel an error occurred in the GetVolumeLevel media remote call: %{public}s", v28, 0xCu);
      v34 = v38;
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x26D6266E0](v34, -1, -1);
      MEMORY[0x26D6266E0](v28, -1, -1);

      (*(v44 + 8))(v22, v45);
    }

    else
    {

      v32 = *(v11 + 8);
      v32(v24, v27);
      (*(v21 + 8))(v22, v19);
    }

    v35 = v40;
    type metadata accessor for SetVolumeLevelVolumeLevelResolutionResult();
    v36 = sub_268B17B04(3);
    v35();

    v32(v39, v27);
  }

  else
  {
    sub_26892A584(v40, a2, a3);
  }
}

void sub_268927904(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_268927990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_27_2();
  v9 = v4;
  OUTLINED_FUNCTION_85_1();
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v137 = v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v135 = v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_58_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v136 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_274_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v124 - v27;
  v29 = (v9 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_userDefaultsProvider);
  v30 = __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_userDefaultsProvider), *(v9 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_userDefaultsProvider + 24));
  v31 = sub_26891EFA0(*v30);
  if (v31 > 1)
  {
    if (qword_2802A4F30 != -1)
    {
      v31 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_61(v31, qword_2802CDA10);
    v60 = OUTLINED_FUNCTION_139();
    v61(v60);
    v62 = sub_268B37A34();
    v63 = sub_268B37EC4();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v64);
      OUTLINED_FUNCTION_75_1(&dword_2688BB000, v62, v63, "SetVolumeLevelIntentHandler#shouldPresentLoudVolumeWarning loud volume confirmation already presented twice on this device, skipping confirmation");
      OUTLINED_FUNCTION_20_2();
    }

    (*(v12 + 8))(v16, v10);
    goto LABEL_25;
  }

  v134 = v7;
  v32 = sub_2689B8400();
  if (!v32)
  {
LABEL_20:
    if (qword_2802A4F30 != -1)
    {
      v32 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_61(v32, qword_2802CDA10);
    (*(v12 + 16))(v5);
    v66 = sub_268B37A34();
    v67 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v67))
    {
      v68 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v68);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v69, v70, v71, v72, v73, 2u);
      OUTLINED_FUNCTION_6();
    }

    (*(v12 + 8))(v5, v10);
    goto LABEL_25;
  }

  v33 = v32;
  v34 = [v6 volumeLevel];
  if (!v34)
  {
    v35 = v33;
LABEL_19:

    goto LABEL_20;
  }

  v35 = v34;
  v36 = [v34 currentVolumeOutput];
  if (!v36)
  {
    v65 = v35;
    v35 = v33;
LABEL_18:

    goto LABEL_19;
  }

  v37 = v36;
  [v36 floatValue];
  v39 = v38;

  v40 = sub_268ACC57C();
  if ((v40 & 0x100000000) != 0)
  {
    v65 = v33;
    goto LABEL_18;
  }

  v41 = *&v40;
  if (qword_2802A4F30 != -1)
  {
    v40 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v42 = v41;
  OUTLINED_FUNCTION_61(v40, qword_2802CDA10);
  v43 = *(v12 + 16);
  v129 = v44;
  v130 = v43;
  v131 = v12 + 16;
  v43(v28);
  v133 = v35;
  v45 = v33;
  v46 = sub_268B37A34();
  v47 = sub_268B37ED4();
  v132 = v45;

  v127 = v47;
  v128 = v46;
  v48 = os_log_type_enabled(v46, v47);
  v49 = &selRef_groupLeader;
  if (v48)
  {
    v50 = swift_slowAlloc();
    v126 = OUTLINED_FUNCTION_236();
    v125 = OUTLINED_FUNCTION_173_0();
    v139 = v125;
    v51 = [v133 currentVolumeOutput];
    v138 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC8, &unk_268B3D780);
    v124 = sub_268B38094();
    v53 = v52;

    v54 = sub_26892CDB8(v124, v53, &v139);

    *(v50 + 14) = v54;
    *(v50 + 22) = 2112;
    v55 = v132;
    *(v50 + 24) = v132;
    *v126 = v33;
    *(v50 + 32) = 2048;
    v56 = v55;
    v57 = [v133 volumeSettingState];

    *(v50 + 34) = v57;
    v49 = &selRef_groupLeader;

    v58 = v128;
    _os_log_impl(&dword_2688BB000, v128, v127, "SetVolumeLevelIntentHandler#shouldPresentLoudVolumeWarning checking if we should be presenting loud volume warning for expectedOutputVolume = %f, currentVolumeOutput = %s, device = %@, volumeSettingState: %ld", v50, 0x2Au);
    sub_2688EF38C(v126, &qword_2802A6420, &unk_268B3C680);
    OUTLINED_FUNCTION_33_1();
    __swift_destroy_boxed_opaque_existential_0Tm(v125);
    OUTLINED_FUNCTION_33_1();
    v59 = v133;
    OUTLINED_FUNCTION_12();
  }

  else
  {

    v59 = v133;
  }

  v74 = *(v12 + 8);
  v75 = OUTLINED_FUNCTION_0_1();
  v74(v75);
  v76 = v132;
  if ([v59 v49[23]] == 1 || objc_msgSend(v59, v49[23]) == 4 || objc_msgSend(v59, v49[23]) == 6)
  {
    OUTLINED_FUNCTION_21_2();
    v77();
    v78 = sub_268B37A34();
    v79 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_115_0(v79))
    {
      v80 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v80);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v81, v82, v83, v84, v85, 2u);
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    v86 = v8;
    goto LABEL_34;
  }

  if (v42 < 0.9)
  {
    v87 = v137;
    OUTLINED_FUNCTION_21_2();
    v88();
    v89 = sub_268B37A34();
    v90 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_115_0(v90))
    {
      v91 = OUTLINED_FUNCTION_238();
      *v91 = 134218240;
      *(v91 + 4) = v42;
      *(v91 + 12) = 2048;
      *(v91 + 14) = 0x3FECCCCCC0000000;
LABEL_41:
      OUTLINED_FUNCTION_57();
      _os_log_impl(v96, v97, v98, v99, v100, 0x16u);
      OUTLINED_FUNCTION_6();
      v101 = v59;
      v59 = v76;
LABEL_43:

      v86 = v87;
LABEL_34:
      (v74)(v86, v10);
      goto LABEL_25;
    }

    goto LABEL_42;
  }

  if ((v42 - v39) < 0.3)
  {
    v87 = v135;
    OUTLINED_FUNCTION_21_2();
    v92();
    v89 = sub_268B37A34();
    v93 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_115_0(v93))
    {
      v94 = OUTLINED_FUNCTION_238();
      OUTLINED_FUNCTION_9_6(v94, 3.8521e-34);
      *(v95 + 12) = 2048;
      *(v95 + 14) = 0x3FD3333340000000;
      goto LABEL_41;
    }

LABEL_42:
    v101 = v89;
    v89 = v76;
    goto LABEL_43;
  }

  v102 = v76;
  v103 = v59;
  __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_audioSession), *(v9 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_audioSession + 24));
  v104 = v102;
  v105 = sub_26892826C(v102);
  OUTLINED_FUNCTION_21_2();
  v106();
  v107 = sub_268B37A34();
  v108 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_196(v108))
  {
    v109 = OUTLINED_FUNCTION_236();
    *v109 = 67109120;
    *(v109 + 4) = v105 & 1;
    OUTLINED_FUNCTION_247();
    _os_log_impl(v110, v111, v112, v113, v109, 8u);
    OUTLINED_FUNCTION_20_2();
  }

  (v74)(v136, v10);
  if (v105)
  {
    OUTLINED_FUNCTION_21_2();
    v114();
    v115 = sub_268B37A34();
    v116 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_115_0(v116))
    {
      v117 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v117);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v118, v119, v120, v121, v122, 2u);
      OUTLINED_FUNCTION_6();
    }

    (v74)(v134, v10);
    v123 = __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_26891F278(*v123);
  }

  else
  {
  }

LABEL_25:
  OUTLINED_FUNCTION_28_2();
}

uint64_t sub_26892826C(void *a1)
{
  v45 = sub_268B371E4();
  v2 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_2802CDA10);
  v13 = *(v6 + 16);
  v48 = v12;
  v49 = v6 + 16;
  v47 = v13;
  (v13)(v11);
  v14 = a1;
  v15 = sub_268B37A34();
  v16 = sub_268B37F04();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v50 = v9;
    v18 = v6;
    v19 = v17;
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v14;
    *v20 = v14;
    v21 = v14;
    _os_log_impl(&dword_2688BB000, v15, v16, "Determining if device: %@ has very loud audio output", v19, 0xCu);
    sub_2688EF38C(v20, &qword_2802A6420, &unk_268B3C680);
    MEMORY[0x26D6266E0](v20, -1, -1);
    v22 = v19;
    v6 = v18;
    v9 = v50;
    MEMORY[0x26D6266E0](v22, -1, -1);
  }

  v23 = *(v6 + 8);
  v50 = (v6 + 8);
  v46 = v23;
  v23(v11, v5);
  v24 = [v14 type];
  if (v24)
  {
    v25 = v24;
    v26 = sub_268B37BF4();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = sub_268B371B4();
  sub_268B371D4();
  v30 = sub_26892E340(v4, v29);
  v32 = v31;

  (*(v2 + 8))(v4, v45);
  if (v28)
  {
    if (v32)
    {
      if (v26 == v30 && v28 == v32)
      {

        v34 = 1;
      }

      else
      {
        v34 = sub_268B38444();
      }
    }

    else
    {
      v34 = 0;
    }

    goto LABEL_19;
  }

  if (v32)
  {
    v34 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v34 = 1;
LABEL_20:
  v35 = sub_2689840D4();
  if ((v35 - 1) >= 4)
  {
    if (v35)
    {
      goto LABEL_32;
    }

    sub_26890C900(v44 + 16, v51);
    __swift_project_boxed_opaque_existential_1(v51, v51[3]);
    v36 = sub_268B34D24();
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
  }

  else
  {
    v36 = 0;
  }

  v35 = sub_2689840D4();
  if ((v35 - 1) >= 4)
  {
    if (!v35)
    {
      v43 = sub_268A3609C();
      v38 = v34 | v36 | v43;
      v37 = v43 & 1;
      goto LABEL_24;
    }

LABEL_32:
    v51[0] = v35;
    result = sub_268B38474();
    __break(1u);
    return result;
  }

  v37 = 0;
  v38 = v34 | v36;
LABEL_24:
  v47(v9, v48, v5);
  v39 = sub_268B37A34();
  v40 = sub_268B37F04();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 67110144;
    *(v41 + 4) = v34 & 1;
    *(v41 + 8) = 1024;
    *(v41 + 10) = v36 & 1;
    *(v41 + 14) = 1024;
    *(v41 + 16) = v37;
    *(v41 + 20) = 1024;
    *(v41 + 22) = 0;
    *(v41 + 26) = 1024;
    *(v41 + 28) = v38 & 1;
    _os_log_impl(&dword_2688BB000, v39, v40, "isHomePodFromDeviceType: %{BOOL}d, isHomePodFromDeviceState: %{BOOL}d, isAudioRouteToHeadphone: %{BOOL}d, isLoudVolumeDevice: %{BOOL}d. hasVeryLoudAudioOutput=%{BOOL}d", v41, 0x20u);
    MEMORY[0x26D6266E0](v41, -1, -1);
  }

  v46(v9, v5);
  return v38 & 1;
}

float sub_2689287B4(float a1)
{
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  if (a1 <= 1.0)
  {
    if (a1 >= 0.0)
    {
      return a1;
    }

    if (qword_2802A4F30 != -1)
    {
      v7 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_61(v7, qword_2802CDA10);
    (*(v4 + 16))(v1);
    v10 = sub_268B37A34();
    v17 = sub_268B37EC4();
    if (!OUTLINED_FUNCTION_115_0(v17))
    {
      a1 = 0.0;
      goto LABEL_15;
    }

    v18 = OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_9_6(v18, 3.852e-34);
    _os_log_impl(&dword_2688BB000, v10, v9, "SetVolumeLevelIntentHandler#boundVolumeLevel floatVolumeLevel: %f deceeds minimum level. This is okay, we'll still try to set it to the min value", v18, 0xCu);
    a1 = 0.0;
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v7 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_61(v7, qword_2802CDA10);
    (*(v4 + 16))(v9);
    v10 = sub_268B37A34();
    v11 = sub_268B37EC4();
    if (!OUTLINED_FUNCTION_196(v11))
    {
      a1 = 1.0;
      goto LABEL_15;
    }

    v12 = OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_9_6(v12, 3.852e-34);
    OUTLINED_FUNCTION_247();
    _os_log_impl(v13, v14, v15, v16, v12, 0xCu);
    a1 = 1.0;
  }

  OUTLINED_FUNCTION_132_0();
LABEL_15:

  v19 = OUTLINED_FUNCTION_0_1();
  v20(v19);
  return a1;
}

void sub_268928A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_27_2();
  v10 = OUTLINED_FUNCTION_55_1(v7, v8, v9);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_8();
  sub_2689287B4(v6);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v10, qword_2802CDA10);
  OUTLINED_FUNCTION_11_4();
  v14(v4);

  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();

  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_238();
    v23 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_19_1(3.8521e-34);
    v17 = OUTLINED_FUNCTION_0_1();
    *(v5 + 14) = sub_26892CDB8(v17, v18, v19);
    OUTLINED_FUNCTION_94_1(&dword_2688BB000, v20, v21, "SetVolumeLevelIntentHandler#setVolumeForSidekickDevice attempting to set the volume for sidekick device to %f for routeId: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    OUTLINED_FUNCTION_132_0();
    OUTLINED_FUNCTION_12();
  }

  (*(v12 + 8))(v4, v10);
  OUTLINED_FUNCTION_59_0((v5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController), *(v5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController + 24));
  OUTLINED_FUNCTION_79_1();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_63_0(v22);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_93_1();
  sub_268B37774();

  OUTLINED_FUNCTION_28_2();
}

void sub_268928C00(char a1, void (*a2)(char *), float a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v24 = SetVolumeLevelIntentResponse.init(code:userActivity:)(a5, 0);
    v13 = sub_268B37E04();
    [v24 setVolumeLevel_];

    a2(v24);
    v14 = v24;
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v8, qword_2802CDA10);
    (*(v9 + 16))(v11, v15, v8);
    v16 = sub_268B37A34();
    v17 = sub_268B37EE4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "SetVolumeLevelIntentHandler#setVolumeForSidekickDevice failed to set volume for accessory", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v19 = sub_268B36EA4();
    v20 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v21 = v19;
    v22 = SetVolumeLevelIntentResponse.init(code:userActivity:)(5, v19);
    (a2)();
  }
}

void sub_268928EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_27_2();
  v10 = OUTLINED_FUNCTION_55_1(v7, v8, v9);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_8();
  sub_2689287B4(v6);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v10, qword_2802CDA10);
  OUTLINED_FUNCTION_11_4();
  v14(v4);

  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();

  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_238();
    v23 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_19_1(3.8521e-34);
    v17 = OUTLINED_FUNCTION_0_1();
    *(v5 + 14) = sub_26892CDB8(v17, v18, v19);
    OUTLINED_FUNCTION_94_1(&dword_2688BB000, v20, v21, "SetVolumeLevelIntentHandler#setVolumeForLocalDevice attempting to set the volume for local device to %f for routeId: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    OUTLINED_FUNCTION_132_0();
    OUTLINED_FUNCTION_12();
  }

  (*(v12 + 8))(v4, v10);
  OUTLINED_FUNCTION_59_0((v5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController), *(v5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController + 24));
  OUTLINED_FUNCTION_79_1();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_63_0(v22);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_93_1();
  sub_268B36D64();

  OUTLINED_FUNCTION_28_2();
}

void sub_2689290A8(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void), float a5)
{
  v47 = a4;
  v51 = a3;
  v50 = sub_268B37A54();
  v46 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_268B36F24();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v42[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  MEMORY[0x28223BE20](v15);
  v17 = &v42[-v16];
  v48 = a1;
  sub_26892DB34(a1, &v42[-v16], &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v14, v17, v8);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v47 = a2;
    v18 = v50;
    v19 = __swift_project_value_buffer(v50, qword_2802CDA10);
    v20 = v46;
    v21 = v49;
    (*(v46 + 16))(v49, v19, v18);
    v22 = *(v9 + 16);
    v45 = v14;
    v23 = v14;
    v24 = v21;
    v22(v12, v23, v8);
    v25 = sub_268B37A34();
    v26 = sub_268B37EE4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v52 = v44;
      *v27 = 136446210;
      sub_26892DA98(&qword_2802A5DE0, MEMORY[0x277D5F6E0], MEMORY[0x277D5F6F0]);
      v43 = v26;
      v28 = sub_268B38404();
      v29 = v20;
      v31 = v30;
      v32 = *(v9 + 8);
      v32(v12, v8);
      v33 = sub_26892CDB8(v28, v31, &v52);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_2688BB000, v25, v43, "SetVolumeLevelIntentHandler#setVolumeForLocalDevice an error occurred in the SetVolumeLevel media remote call: %{public}s", v27, 0xCu);
      v34 = v44;
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x26D6266E0](v34, -1, -1);
      MEMORY[0x26D6266E0](v27, -1, -1);

      (*(v29 + 8))(v49, v50);
    }

    else
    {

      v32 = *(v9 + 8);
      v32(v12, v8);
      (*(v20 + 8))(v24, v18);
    }

    v38 = sub_268B36ED4();
    v39 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v40 = v38;
    v41 = SetVolumeLevelIntentResponse.init(code:userActivity:)(5, v38);
    v47();

    v32(v45, v8);
  }

  else
  {
    v35 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v36 = SetVolumeLevelIntentResponse.init(code:userActivity:)(v47, 0);
    v37 = sub_268B37E04();
    [v36 setVolumeLevel_];

    (a2)(v36);
  }
}

void sub_2689295D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_27_2();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_142_0();
  v15 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_8();
  v19 = sub_2689287B4(v14);
  v33 = v20;
  v21 = v19;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v15, qword_2802CDA10);
  v22 = OUTLINED_FUNCTION_139();
  v23(v22);

  v24 = sub_268B37A34();
  v25 = sub_268B37ED4();

  if (os_log_type_enabled(v24, v25))
  {
    swift_slowAlloc();
    v32 = OUTLINED_FUNCTION_53_1();
    v34 = v32;
    *v15 = 134218498;
    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v26 = MEMORY[0x26D6256F0](v4, MEMORY[0x277D837D0]);
    v28 = sub_26892CDB8(v26, v27, &v34);

    *(v15 + 14) = v28;
    v6 = v5;
    *(v15 + 22) = 1024;
    *(v15 + 24) = v12 & 1;
    _os_log_impl(&dword_2688BB000, v24, v25, "SetVolumeLevelIntentHandler#setAbsoluteVolume attempting to set the volume to %f for routeIds: %s isLocal: %{BOOL}d", v15, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    OUTLINED_FUNCTION_132_0();
    OUTLINED_FUNCTION_20_2();

    (*(v17 + 8))(v5, v15);
  }

  else
  {

    v29 = OUTLINED_FUNCTION_212_0();
    v30(v29);
  }

  OUTLINED_FUNCTION_59_0((v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController), *(v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController + 24));
  OUTLINED_FUNCTION_79_1();
  v31 = swift_allocObject();
  *(v31 + 16) = v10;
  *(v31 + 24) = v8;
  *(v31 + 32) = v33;
  *(v31 + 40) = v21;

  sub_268B36D74();

  OUTLINED_FUNCTION_28_2();
}

void sub_268929894(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void), float a5)
{
  v47 = a4;
  v51 = a3;
  v50 = sub_268B37A54();
  v46 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_268B36F24();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v42[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  MEMORY[0x28223BE20](v15);
  v17 = &v42[-v16];
  v48 = a1;
  sub_26892DB34(a1, &v42[-v16], &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v14, v17, v8);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v47 = a2;
    v18 = v50;
    v19 = __swift_project_value_buffer(v50, qword_2802CDA10);
    v20 = v46;
    v21 = v49;
    (*(v46 + 16))(v49, v19, v18);
    v22 = *(v9 + 16);
    v45 = v14;
    v23 = v14;
    v24 = v21;
    v22(v12, v23, v8);
    v25 = sub_268B37A34();
    v26 = sub_268B37EE4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v52 = v44;
      *v27 = 136446210;
      sub_26892DA98(&qword_2802A5DE0, MEMORY[0x277D5F6E0], MEMORY[0x277D5F6F0]);
      v43 = v26;
      v28 = sub_268B38404();
      v29 = v20;
      v31 = v30;
      v32 = *(v9 + 8);
      v32(v12, v8);
      v33 = sub_26892CDB8(v28, v31, &v52);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_2688BB000, v25, v43, "SetVolumeLevelIntentHandler#setAbsoluteVolume an error occurred in the SetVolumeLevel media remote call: %{public}s", v27, 0xCu);
      v34 = v44;
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x26D6266E0](v34, -1, -1);
      MEMORY[0x26D6266E0](v27, -1, -1);

      (*(v29 + 8))(v49, v50);
    }

    else
    {

      v32 = *(v9 + 8);
      v32(v12, v8);
      (*(v20 + 8))(v24, v18);
    }

    v38 = sub_268B36ED4();
    v39 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v40 = v38;
    v41 = SetVolumeLevelIntentResponse.init(code:userActivity:)(5, v38);
    v47();

    v32(v45, v8);
  }

  else
  {
    v35 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v36 = SetVolumeLevelIntentResponse.init(code:userActivity:)(v47, 0);
    v37 = sub_268B37E04();
    [v36 setVolumeLevel_];

    (a2)(v36);
  }
}

void sub_268929DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_27_2();
  v5 = v4;
  v7 = v6;
  v29 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v15, qword_2802CDA10);
  v19 = OUTLINED_FUNCTION_139();
  v20(v19);

  v21 = sub_268B37A34();
  v22 = sub_268B37ED4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_238();
    v28 = OUTLINED_FUNCTION_173_0();
    v30[0] = v28;
    *v23 = 134218242;
    *(v23 + 4) = v12;
    *(v23 + 12) = 2080;
    v24 = MEMORY[0x26D6256F0](v14, MEMORY[0x277D837D0]);
    v26 = sub_26892CDB8(v24, v25, v30);

    *(v23 + 14) = v26;
    _os_log_impl(&dword_2688BB000, v21, v22, "SetVolumeLevelIntentHandler#setRelativeVolume attempting to change the volume by %f for routeIds: %s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    OUTLINED_FUNCTION_132_0();
    v5 = v4;
    OUTLINED_FUNCTION_12();

    (*(v17 + 8))(v4, v15);
  }

  else
  {

    (*(v17 + 8))(v4, v15);
  }

  sub_26890C900(v5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController, v30);
  OUTLINED_FUNCTION_59_0(v30, v30[3]);
  v27 = swift_allocObject();
  *(v27 + 16) = v29;
  *(v27 + 24) = v7;
  *(v27 + 32) = v10;

  sub_268B36D84();

  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  OUTLINED_FUNCTION_28_2();
}

void sub_26892A078(uint64_t a1, void (*a2)(void), uint64_t a3, float a4)
{
  v47 = a3;
  v45 = sub_268B37A54();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_268B36F24();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v44 = a1;
  sub_26892DB34(a1, &v39 - v15, &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v13, v16, v7);
    v17 = v13;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v42 = a2;
    v18 = v45;
    v19 = __swift_project_value_buffer(v45, qword_2802CDA10);
    v20 = v43;
    (*(v43 + 16))(v46, v19, v18);
    (*(v8 + 16))(v11, v17, v7);
    v21 = sub_268B37A34();
    v22 = sub_268B37EE4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48 = v40;
      *v23 = 136446210;
      sub_26892DA98(&qword_2802A5DE0, MEMORY[0x277D5F6E0], MEMORY[0x277D5F6F0]);
      v24 = sub_268B38404();
      v41 = v17;
      v26 = v25;
      v27 = v11;
      v28 = *(v8 + 8);
      v28(v27, v7);
      v29 = sub_26892CDB8(v24, v26, &v48);
      v17 = v41;

      *(v23 + 4) = v29;
      _os_log_impl(&dword_2688BB000, v21, v22, "SetVolumeLevelIntentHandler#setRelativeVolume an error occurred in the SetVolumeLevel media remote call: %{public}s", v23, 0xCu);
      v30 = v40;
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x26D6266E0](v30, -1, -1);
      MEMORY[0x26D6266E0](v23, -1, -1);

      (*(v20 + 8))(v46, v45);
    }

    else
    {

      v34 = v11;
      v28 = *(v8 + 8);
      v28(v34, v7);
      (*(v20 + 8))(v46, v18);
    }

    v35 = sub_268B36ED4();
    v36 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v37 = v35;
    v38 = SetVolumeLevelIntentResponse.init(code:userActivity:)(5, v35);
    v42();

    v28(v17, v7);
  }

  else
  {
    v31 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v32 = SetVolumeLevelIntentResponse.init(code:userActivity:)(4, 0);
    v33 = sub_268B37E04();
    [v32 setVolumeLevel_];

    (a2)(v32);
  }
}

void sub_26892A584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_27_2();
  v121 = v3;
  v123 = v7;
  v124 = v6;
  OUTLINED_FUNCTION_85_1();
  sub_268B37714();
  OUTLINED_FUNCTION_1();
  v119 = v9;
  v120 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v118 = v11 - v10;
  OUTLINED_FUNCTION_9();
  v12 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_0();
  v117 = v16 - v17;
  OUTLINED_FUNCTION_8();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v115 - v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v116 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_80_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v115 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_20_0();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v122 = &v115 - v32;
  v33 = [v4 volumeLevel];
  if (v33)
  {
    v34 = v33;
    v35 = v14;
    v36 = v21;
    v37 = sub_268B37E04();
    [v34 setCurrentVolumeOutput_];

    v21 = v36;
    v14 = v35;
  }

  if (sub_2689B859C())
  {
    v38 = v122;
    v39 = OUTLINED_FUNCTION_37_1();
    sub_26892C368(v40, v41, v39);
    v42 = [v4 volumeLevel];
    goto LABEL_7;
  }

  if (sub_2689B85F4())
  {
    v38 = v122;
    OUTLINED_FUNCTION_37_1();
    sub_26892C6D0(v43, v44, v45, v46, v47, v48, v49, v50, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0], v125[1], v125[2], v126);
    v42 = [v4 volumeLevel];
LABEL_7:
    v51 = v42;
    if (v51)
    {
      v52 = v51;
      [v51 setVolumeSettingType_];
    }

LABEL_21:
    sub_26892DB34(v38, v30, &qword_2802A5DC0, &unk_268B3D770);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v76 = v118;
      v75 = v119;
      v77 = v120;
      v78 = (*(v119 + 32))(v118, v30, v120);
      if (qword_2802A4F30 != -1)
      {
        v78 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_14_3(v78, qword_2802CDA10);
      v79(v21);
      v80 = sub_268B37A34();
      v81 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_115_0(v81))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_73_1(&dword_2688BB000, v82, v30, "SetVolumeLevelIntentHandler#resolveVolumeLevelCompletionHandler error getting the volume resolution result");
        OUTLINED_FUNCTION_12();
      }

      (*(v14 + 8))(v21, v12);
      sub_26892AED0(v76, v124);
      (*(v75 + 8))(v76, v77);
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        EnumCaseMultiPayload = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_14_3(EnumCaseMultiPayload, qword_2802CDA10);
      v83(v117);
      v84 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_39_1();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = OUTLINED_FUNCTION_172_0();
        OUTLINED_FUNCTION_9_6(v86, 3.852e-34);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v87, v88, v89, v90, v91, 0xCu);
        OUTLINED_FUNCTION_12();
      }

      v92 = OUTLINED_FUNCTION_192();
      v93(v92);
      v94 = [v4 volumeLevel];
      if (!v94)
      {
        type metadata accessor for VolumeLevel();
        v95 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v96 = OUTLINED_FUNCTION_86_1();
        v94 = sub_26893A824(v96, 0xE000000000000000, 0, 0xE000000000000000);
      }

      v97 = sub_268B37E04();
      [v94 setResolvedVolumeOutput_];

      sub_268927990(v4, v98, v99, v100);
      v102 = v101;
      type metadata accessor for SetVolumeLevelVolumeLevelResolutionResult();
      if (v102)
      {
        v126 = type metadata accessor for VolumeLevel();
        v125[0] = v94;
        v94 = v94;
        v103 = sub_26892AD88(v125);
      }

      else
      {
        v103 = sub_268B30DF8(v94);
      }

      v104 = v103;
      v124();
    }

    sub_2688EF38C(v38, &qword_2802A5DC0, &unk_268B3D770);
    goto LABEL_38;
  }

  v53 = sub_2689B864C();
  if (v53)
  {
    if (qword_2802A4F30 != -1)
    {
      v53 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_14_3(v53, qword_2802CDA10);
    v54(v26);
    v55 = sub_268B37A34();
    v56 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v56))
    {
      v57 = OUTLINED_FUNCTION_14();
      v116 = v21;
      *v57 = 0;
      OUTLINED_FUNCTION_73_1(&dword_2688BB000, v58, v56, "SetVolumeLevelIntentHandler#resolveVolumeLevelCompletionHandler user specified a numeric value in the intent. Trying to resolve the volume level from numeric input");
      v21 = v116;
      OUTLINED_FUNCTION_12();
    }

    v59 = OUTLINED_FUNCTION_46_1();
    v60(v59);
    v38 = v122;
    OUTLINED_FUNCTION_37_1();
    sub_26892B068(v61, v62, v63, v64);
    goto LABEL_21;
  }

  v65 = sub_2689B86B8();
  if (v65)
  {
    if (qword_2802A4F30 != -1)
    {
      v65 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_14_3(v65, qword_2802CDA10);
    v66 = v116;
    v67(v116);
    v68 = sub_268B37A34();
    v69 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v69))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_73_1(&dword_2688BB000, v70, v69, "SetVolumeLevelIntentHandler#resolveVolumeLevelCompletionHandler user did not specify a numeric volume level in the intent, but intent has qualifiers. Trying to resolve volume level using qualifiers");
      OUTLINED_FUNCTION_12();
    }

    (*(v14 + 8))(v66, v12);
    v38 = v122;
    sub_26892B5B0(v4, v71, v72, v73);
    goto LABEL_21;
  }

  if (qword_2802A4F30 != -1)
  {
    v65 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_14_3(v65, qword_2802CDA10);
  v105(v5);
  v106 = sub_268B37A34();
  sub_268B37EE4();
  OUTLINED_FUNCTION_39_1();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v108);
    OUTLINED_FUNCTION_27();
    _os_log_impl(v109, v110, v111, v112, v113, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v14 + 8))(v5, v12);
  type metadata accessor for SetVolumeLevelVolumeLevelResolutionResult();
  v114 = [swift_getObjCClassFromMetadata() needsValue];
  v124();

LABEL_38:
  OUTLINED_FUNCTION_28_2();
}

id sub_26892AD88(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v4 = *(v1 - 8);
    MEMORY[0x28223BE20](v3);
    v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = sub_268B38424();
    (*(v4 + 8))(v6, v1);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v7 = 0;
  }

  v8 = [swift_getObjCClassFromMetadata() resolutionResultConfirmationRequiredWithItemToConfirm_];
  swift_unknownObjectRelease();
  return v8;
}

void sub_26892AED0(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_86_1();
  v4 = sub_268B37714();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, v2, v4);
  v11 = (*(v6 + 88))(v10, v4);
  if (v11 == *MEMORY[0x277D5F960])
  {
    type metadata accessor for SetVolumeLevelVolumeLevelResolutionResult();
    v12 = 1;
LABEL_5:
    v15 = sub_268B17B04(v12);
    a2();

    return;
  }

  v13 = v11;
  v14 = *MEMORY[0x277D5F968];
  type metadata accessor for SetVolumeLevelVolumeLevelResolutionResult();
  if (v13 == v14)
  {
    v12 = 2;
    goto LABEL_5;
  }

  v16 = [swift_getObjCClassFromMetadata() unsupported];
  a2();

  (*(v6 + 8))(v10, v4);
}

void sub_26892B068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_27_2();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_274_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  v21 = [v11 volumeLevel];
  if (v21 && (v22 = v21, v23 = [v21 volumeSettingValue], v22, v23))
  {
    v60 = v7;
    v61 = v13;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_82(v14, qword_2802CDA10);
    v58 = v24;
    v59 = *(v16 + 16);
    v59(v4);
    v25 = v23;
    v26 = sub_268B37A34();
    LOBYTE(v27) = sub_268B37F04();
    v62 = v25;

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_172_0();
      v29 = OUTLINED_FUNCTION_236();
      *v28 = 138412290;
      *(v28 + 4) = v62;
      *v29 = v23;
      v30 = v62;
      _os_log_impl(&dword_2688BB000, v26, v27, "SetVolumeLevelIntentHandler#resolveVolumeLevelFromNumericInput user specified a numeric value in the intent: %@", v28, 0xCu);
      sub_2688EF38C(v29, &qword_2802A6420, &unk_268B3C680);
      OUTLINED_FUNCTION_33_1();
      OUTLINED_FUNCTION_20_2();
    }

    v31 = *(v16 + 8);
    v31(v4, v14);
    v32 = [v11 volumeLevel];
    if (v32)
    {
      v27 = v32;
      v33 = [v32 volumeSettingUnit];

      v34 = v33 == 1;
    }

    else
    {
      v34 = 0;
    }

    if (sub_2689B8710())
    {
      (v59)(v6, v58, v14);
      v45 = sub_268B37A34();
      v46 = sub_268B37F04();
      if (OUTLINED_FUNCTION_139_0(v46))
      {
        v47 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_279(v47);
        OUTLINED_FUNCTION_75_1(&dword_2688BB000, v45, v27, "SetVolumeLevelIntentHandler#resolveVolumeLevelFromNumericInput this is a relative volume adjust intent");
        OUTLINED_FUNCTION_20_2();
      }

      v31(v6, v14);
      v48 = [v11 volumeLevel];
      if (v48)
      {
        v49 = v48;
        [v48 setVolumeSettingType_];
      }

      v50 = sub_26892BD54(v11, v62, v34, v9);
    }

    else
    {
      (v59)(v60, v58, v14);
      v51 = sub_268B37A34();
      v52 = sub_268B37F04();
      if (OUTLINED_FUNCTION_139_0(v52))
      {
        v53 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_279(v53);
        OUTLINED_FUNCTION_75_1(&dword_2688BB000, v51, v27, "SetVolumeLevelIntentHandler#resolveVolumeLevelFromNumericInput this is an absolute volume adjust intent");
        OUTLINED_FUNCTION_20_2();
      }

      v31(v60, v14);
      v54 = [v11 volumeLevel];
      if (v54)
      {
        v55 = v54;
        [v54 setVolumeSettingType_];
      }

      [v62 floatValue];
      v57 = v56;

      v50 = v57 / 100.0;
    }

    *v61 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
    OUTLINED_FUNCTION_148();
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_82(v14, qword_2802CDA10);
    (*(v16 + 16))(v5);
    v35 = sub_268B37A34();
    v36 = sub_268B37F04();
    if (OUTLINED_FUNCTION_139_0(v36))
    {
      v37 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v37);
      OUTLINED_FUNCTION_12_4();
      _os_log_impl(v38, v39, v40, v41, v42, 2u);
      OUTLINED_FUNCTION_6();
    }

    (*(v16 + 8))(v5, v14);
    v43 = *MEMORY[0x277D5F970];
    sub_268B37714();
    OUTLINED_FUNCTION_8_7();
    (*(v44 + 104))(v13, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_28_2();
}

void sub_26892B5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_27_2();
  v92 = v9;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v93 = v10;
  v94 = v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_58_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_80_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v91 - v17;
  v19 = OUTLINED_FUNCTION_72_1();
  v20 = v19;
  if (v19)
  {
    v21 = [v19 volumeSettingState];
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_2689B88E0();
  if (v20)
  {
    v23 = v22 * 0.1;
    switch(v21)
    {
      case 1uLL:
        v24 = OUTLINED_FUNCTION_72_1();
        v26 = v93;
        v25 = v94;
        if (v24)
        {
          v27 = v24;
          [v24 setVolumeSettingType_];
        }

        v28 = v92;
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_82(v26, qword_2802CDA10);
        OUTLINED_FUNCTION_152();
        v29(v18);
        v30 = sub_268B37A34();
        v31 = sub_268B37ED4();
        if (!OUTLINED_FUNCTION_139_0(v31))
        {
          goto LABEL_43;
        }

        v32 = OUTLINED_FUNCTION_172_0();
        OUTLINED_FUNCTION_9_6(v32, 3.852e-34);
        OUTLINED_FUNCTION_12_4();
        _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
        goto LABEL_42;
      case 2uLL:
        v79 = OUTLINED_FUNCTION_72_1();
        v26 = v93;
        if (v79)
        {
          v80 = v79;
          [v79 setVolumeSettingType_];
        }

        v28 = v92;
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_82(v26, qword_2802CDA10);
        (*(v94 + 16))(v7);
        v30 = sub_268B37A34();
        v81 = sub_268B37ED4();
        v23 = 1.0;
        if (OUTLINED_FUNCTION_139_0(v81))
        {
          v82 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v82);
          OUTLINED_FUNCTION_12_4();
          _os_log_impl(v83, v84, v85, v86, v87, 2u);
          v18 = v7;
          v25 = v94;
          goto LABEL_42;
        }

        v5 = v7;
        v25 = v94;
        break;
      case 3uLL:
        v59 = OUTLINED_FUNCTION_72_1();
        v26 = v93;
        v25 = v94;
        if (v59)
        {
          v60 = v59;
          [v59 setVolumeSettingType_];
        }

        v28 = v92;
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_82(v26, qword_2802CDA10);
        OUTLINED_FUNCTION_152();
        v61(v6);
        v30 = sub_268B37A34();
        v62 = sub_268B37ED4();
        v23 = 0.5;
        if (OUTLINED_FUNCTION_139_0(v62))
        {
          v63 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v63);
          OUTLINED_FUNCTION_12_4();
          _os_log_impl(v64, v65, v66, v67, v68, 2u);
          v18 = v6;
          goto LABEL_42;
        }

        v5 = v6;
        break;
      case 4uLL:
        v69 = OUTLINED_FUNCTION_72_1();
        v26 = v93;
        v25 = v94;
        if (v69)
        {
          v70 = v69;
          [v69 setVolumeSettingType_];
        }

        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_82(v26, qword_2802CDA10);
        OUTLINED_FUNCTION_152();
        v71(v5);
        v30 = sub_268B37A34();
        v72 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_139_0(v72))
        {
          v73 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v73);
          OUTLINED_FUNCTION_12_4();
          _os_log_impl(v74, v75, v76, v77, v78, 2u);
          v23 = 0.05;
          v18 = v5;
          v28 = v92;
          goto LABEL_42;
        }

        v23 = 0.05;
        v28 = v92;
        break;
      case 5uLL:
        v49 = OUTLINED_FUNCTION_72_1();
        v25 = v94;
        if (v49)
        {
          v50 = v49;
          [v49 setVolumeSettingType_];
        }

        v28 = v92;
        if (qword_2802A4F30 != -1)
        {
          v49 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_61(v49, qword_2802CDA10);
        OUTLINED_FUNCTION_152();
        v51(v8);
        v30 = sub_268B37A34();
        v52 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_139_0(v52))
        {
          v53 = OUTLINED_FUNCTION_172_0();
          OUTLINED_FUNCTION_9_6(v53, 3.852e-34);
          OUTLINED_FUNCTION_12_4();
          _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
          v18 = v8;
          v26 = v93;
LABEL_42:
          OUTLINED_FUNCTION_6();
LABEL_43:
          v5 = v18;
        }

        else
        {
          v5 = v8;
          v26 = v93;
        }

        break;
      default:
        goto LABEL_12;
    }

    (*(v25 + 8))(v5, v26);
    *v28 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
  }

  else
  {
LABEL_12:
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v38 = v93;
    OUTLINED_FUNCTION_82(v93, qword_2802CDA10);
    v39 = v94;
    (*(v94 + 16))(v4);
    v40 = sub_268B37A34();
    v41 = sub_268B37EE4();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v92;
    if (v42)
    {
      v44 = OUTLINED_FUNCTION_172_0();
      v45 = OUTLINED_FUNCTION_173_0();
      v96 = v45;
      *v44 = 136446210;
      if (v20)
      {
        v95 = v21;
        sub_2688E4434();
        v46 = sub_268B380D4();
        v48 = v47;
      }

      else
      {
        v48 = 0xE300000000000000;
        v46 = 7104878;
      }

      v88 = sub_26892CDB8(v46, v48, &v96);

      *(v44 + 4) = v88;
      _os_log_impl(&dword_2688BB000, v40, v41, "SetVolumeLevelIntentHandler#resolveVolumeLevelUsingQualifiers found unexpected volumeSettingState: %{public}s. Returning failure", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      OUTLINED_FUNCTION_33_1();
      OUTLINED_FUNCTION_132_0();

      (*(v94 + 8))(v4, v38);
    }

    else
    {

      (*(v39 + 8))(v4, v38);
    }

    v89 = *MEMORY[0x277D5F970];
    sub_268B37714();
    OUTLINED_FUNCTION_8_7();
    (*(v90 + 104))(v43, v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_28_2();
}

float sub_26892BD54(void *a1, void *a2, char a3, float a4)
{
  v73 = a1;
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v74 = (v14 - v15);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_58_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_35_0();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v73 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v73 - v23;
  v25 = [a2 floatValue];
  v27 = v26;
  if (a3)
  {
    goto LABEL_2;
  }

  if (v26 > 4.0 || v26 < 1.0)
  {
    if (v26 < 1.0)
    {
LABEL_7:
      if (v27 < 0.5 || a4 == 0.0)
      {
        if (qword_2802A4F30 != -1)
        {
          v25 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_61(v25, qword_2802CDA10);
        v33 = *(v12 + 16);
        v33(v5);
        v42 = sub_268B37A34();
        v43 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_196(v43))
        {
          v44 = OUTLINED_FUNCTION_14();
          *v44 = 0;
          _os_log_impl(&dword_2688BB000, v42, v43, "SetVolumeLevelIntentHandler#resolveRelativeNumericChange using value directly as delta because value is less than normalizedMinimumValueToUseAsMultiplier or current volume is 0", v44, 2u);
          OUTLINED_FUNCTION_33_1();
        }

        v39 = *(v12 + 8);
        v39(v5, v10);
        v40 = v27;
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          v25 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_61(v25, qword_2802CDA10);
        v33 = *(v12 + 16);
        v33(v6);
        v34 = sub_268B37A34();
        v35 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_196(v35))
        {
          v36 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_52_1(v36);
          OUTLINED_FUNCTION_50_0(&dword_2688BB000, v37, v38, "SetVolumeLevelIntentHandler#resolveRelativeNumericChange calculating delta based on percent of current value");
          OUTLINED_FUNCTION_12();
        }

        v39 = *(v12 + 8);
        v39(v6, v10);
        v40 = v27 * a4;
      }

      v45 = v74;
      v46 = [v73 volumeLevel];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 volumeSettingState];

        if (v48 == 1 && v40 >= a4)
        {
          if (qword_2802A4F30 != -1)
          {
            v46 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          OUTLINED_FUNCTION_61(v46, qword_2802CDA10);
          v33(v4);
          v50 = sub_268B37A34();
          v51 = sub_268B37ED4();
          if (OUTLINED_FUNCTION_196(v51))
          {
            v52 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_52_1(v52);
            OUTLINED_FUNCTION_50_0(&dword_2688BB000, v53, v54, "SetVolumeLevelIntentHandler#resolveRelativeNumericChange recalculating delta based on percent of current value");
            OUTLINED_FUNCTION_12();
          }

          v46 = (v39)(v4, v10);
          v40 = v27 * a4;
        }
      }

      goto LABEL_41;
    }

LABEL_2:
    if (qword_2802A4F30 != -1)
    {
      v25 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_61(v25, qword_2802CDA10);
    v28 = OUTLINED_FUNCTION_139();
    v29(v28);
    v30 = sub_268B37A34();
    sub_268B37ED4();
    OUTLINED_FUNCTION_66_0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_14();
      *v32 = 0;
      _os_log_impl(&dword_2688BB000, v30, v24, "SetVolumeLevelIntentHandler#resolveRelativeNumericChange normalizing floatSettingValue percentage value", v32, 2u);
      OUTLINED_FUNCTION_12();
    }

    v25 = (*(v12 + 8))(v22, v10);
    v27 = v27 / 100.0;
    goto LABEL_7;
  }

  if (qword_2802A4F30 != -1)
  {
    v25 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_61(v25, qword_2802CDA10);
  v33 = *(v12 + 16);
  v33(v24);
  v55 = sub_268B37A34();
  v56 = sub_268B37ED4();
  v57 = OUTLINED_FUNCTION_196(v56);
  v45 = v74;
  if (v57)
  {
    v58 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_89_1(v58);
    OUTLINED_FUNCTION_34_0();
    _os_log_impl(v59, v60, v61, v62, v63, 2u);
    OUTLINED_FUNCTION_132_0();
  }

  v39 = *(v12 + 8);
  v46 = (v39)(v24, v10);
  v40 = v27 * 0.1;
LABEL_41:
  if (qword_2802A4F30 != -1)
  {
    v46 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_61(v46, qword_2802CDA10);
  v33(v45);
  v64 = sub_268B37A34();
  v65 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_196(v65))
  {
    v66 = OUTLINED_FUNCTION_172_0();
    *v66 = 134217984;
    *(v66 + 4) = v40;
    OUTLINED_FUNCTION_34_0();
    _os_log_impl(v67, v68, v69, v70, v71, 0xCu);
    OUTLINED_FUNCTION_132_0();
  }

  v39(v45, v10);
  return v40;
}

uint64_t sub_26892C368@<X0>(uint8_t *a1@<X0>, _DWORD *a2@<X8>, float a3@<S0>)
{
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  if (a3 == 0.0)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v8, qword_2802CDA10);
    OUTLINED_FUNCTION_11_4();
    v15(v14);
    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v17))
    {
      v18 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_89_1(v18);
      OUTLINED_FUNCTION_34_0();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_132_0();
    }

    (*(v10 + 8))(v14, v8);
    v24 = MEMORY[0x277D5F960];
LABEL_7:
    v25 = *v24;
    sub_268B37714();
    OUTLINED_FUNCTION_8_7();
    (*(v26 + 104))(a2, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
    OUTLINED_FUNCTION_148();
    return swift_storeEnumTagMultiPayload();
  }

  if (a3 > 0.0)
  {
    v28 = sub_268B18100(a1);
    if (v28)
    {
      a1 = v28;
      sub_268921344();
      v30 = v29;

      if (v30[2])
      {
        v31 = v30[4];
        v32 = v30[5];

        v33 = __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_userDefaultsProvider), *(v3 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_userDefaultsProvider + 24));
        sub_26891E810(a3, v31, v32, *v33);

        goto LABEL_12;
      }
    }

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v8, qword_2802CDA10);
    OUTLINED_FUNCTION_11_4();
    v34(v4);
    v35 = sub_268B37A34();
    v36 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v36))
    {
      v37 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_89_1(v37);
      OUTLINED_FUNCTION_247();
      _os_log_impl(v38, v39, v40, v41, a1, 2u);
      OUTLINED_FUNCTION_132_0();
    }

    (*(v10 + 8))(v4, v8);
    v24 = MEMORY[0x277D5F970];
    goto LABEL_7;
  }

LABEL_12:
  *a2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
  OUTLINED_FUNCTION_148();

  return swift_storeEnumTagMultiPayload();
}

void sub_26892C6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_27_2();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  if (v27 == 0.0 && sub_268B18100(v29))
  {
    sub_268921344();
    v40 = v39;

    if (v40[2])
    {
      v42 = v40[4];
      v41 = v40[5];

      v43 = (v22 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_userDefaultsProvider);
      v44 = __swift_project_boxed_opaque_existential_1(v43, v43[3]);
      v45 = sub_26891EA2C(v42, v41, *v44);
      if ((v45 & 0x100000000) == 0)
      {
        v46 = v45;
        if (*&v45 > 0.0)
        {
          v47 = __swift_project_boxed_opaque_existential_1(v43, v43[3]);
          sub_26891ED94(v42, v41, *v47);

          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          __swift_project_value_buffer(v32, qword_2802CDA10);
          OUTLINED_FUNCTION_6_2();
          v48(v38);
          v49 = sub_268B37A34();
          v50 = sub_268B37F04();
          if (OUTLINED_FUNCTION_196(v50))
          {
            v51 = OUTLINED_FUNCTION_172_0();
            OUTLINED_FUNCTION_9_6(v51, 3.852e-34);
            OUTLINED_FUNCTION_247();
            _os_log_impl(v52, v53, v54, v55, v51, 0xCu);
            OUTLINED_FUNCTION_12();
          }

          (*(v34 + 8))(v38, v32);
          *v31 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
          OUTLINED_FUNCTION_148();
          goto LABEL_17;
        }
      }
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v32, qword_2802CDA10);
  OUTLINED_FUNCTION_6_2();
  v56(v23);
  v57 = sub_268B37A34();
  v58 = sub_268B37F04();
  if (OUTLINED_FUNCTION_196(v58))
  {
    v59 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_89_1(v59);
    OUTLINED_FUNCTION_34_0();
    _os_log_impl(v60, v61, v62, v63, v64, 2u);
    OUTLINED_FUNCTION_132_0();
  }

  (*(v34 + 8))(v23, v32);
  v65 = *MEMORY[0x277D5F968];
  sub_268B37714();
  OUTLINED_FUNCTION_8_7();
  (*(v66 + 104))(v31, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
  OUTLINED_FUNCTION_148();
LABEL_17:
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_28_2();
}

id SetVolumeLevelIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetVolumeLevelIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
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

id sub_26892CB58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_26892CBBC()
{
  result = qword_2802A5D50;
  if (!qword_2802A5D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A5D48, &qword_268B3D700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5D50);
  }

  return result;
}

uint64_t sub_26892CC44(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26892CCD8(uint64_t result, void (*a2)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      a2(0);
      OUTLINED_FUNCTION_148();
      result = sub_268B37D34();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_26892CD5C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_26892CDB8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_26892CDB8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26892CE7C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2688EF2C0(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_26892CE7C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26892CF7C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_268B38204();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26892CF7C(uint64_t a1, unint64_t a2)
{
  v3 = sub_26892CFC8(a1, a2);
  sub_26892D0E0(&unk_28794DFD8);
  return v3;
}

uint64_t sub_26892CFC8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_268B37C74())
  {
    result = sub_26892D1C4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_268B381A4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_268B38204();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26892D0E0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_26892D234(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26892D1C4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DF0, qword_268B3D798);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26892D234(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DF0, qword_268B3D798);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_26892D328(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_26892D338(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_26892D3B0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_26892D418(void *a1)
{
  v1 = [a1 routeId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37BF4();

  return v3;
}

uint64_t sub_26892D47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_8(a1, a2, a3);
  sub_2688EFD10();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_96_0();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_71_1();
    v5 = MEMORY[0x26D625BD0](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_83_1();
}

uint64_t sub_26892D4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_8(a1, a2, a3);
  sub_2688EFD10();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_96_0();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_71_1();
    v5 = MEMORY[0x26D625BD0](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_83_1();
}

void *sub_26892D53C(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v33 = sub_268B37204();
  v34 = MEMORY[0x277D5F810];
  *&v32 = a1;
  v31[3] = sub_268B376A4();
  v31[4] = MEMORY[0x277D5F928];
  v31[0] = a5;
  v11 = type metadata accessor for AnalyticsServiceImpl();
  v30[3] = v11;
  v30[4] = &off_2879539D0;
  v30[0] = a3;
  type metadata accessor for DeviceSelectingUtil();
  v12 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v30, v11);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v15 = OUTLINED_FUNCTION_69_1(v14);
  v16(v15);
  v17 = *v5;
  v12[17] = v11;
  v12[18] = &off_2879539D0;
  v12[14] = v17;
  sub_26890C900(&v32, (v12 + 2));
  sub_26890C900(a2, (v12 + 7));
  sub_26890C900(v31, (v12 + 24));
  sub_26890C900((v12 + 14), &v28);
  sub_26890C900(a2, v27);
  __swift_mutable_project_boxed_opaque_existential_1(&v28, v29);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v20 = OUTLINED_FUNCTION_69_1(v19);
  v21(v20);
  v22 = *v5;

  v23 = sub_2689A52C0(v22, v27, a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  __swift_destroy_boxed_opaque_existential_0Tm(&v28);
  v12[12] = v23;
  sub_26890C900(a4, &v28);
  type metadata accessor for GroupingUtil();
  v24 = swift_allocObject();
  sub_2688E6514(&v32, v24 + 16);
  sub_2688E6514(&v28, v24 + 56);
  v12[13] = v24;
  sub_26890C900(a4, (v12 + 19));
  type metadata accessor for AceServiceHelper();
  v25 = swift_allocObject();
  sub_2688E6514(a2, v25 + 16);
  sub_2688E6514(a4, v25 + 56);
  v12[29] = v25;
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  return v12;
}

uint64_t sub_26892D904(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2688E6514(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_26892D99C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroyTm_0()
{

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_26892DA98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26892DAE0()
{

  OUTLINED_FUNCTION_79_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_26892DB34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_8_7();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26892DB90()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

double OUTLINED_FUNCTION_9_6(uint64_t a1, float a2)
{
  *a1 = a2;
  result = v2;
  *(a1 + 4) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_3(uint64_t a1)
{

  return sub_268B38444();
}

double OUTLINED_FUNCTION_19_1(float a1)
{
  *v1 = a1;
  result = v2;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2080;
  return result;
}

void OUTLINED_FUNCTION_20_2()
{

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_33_1()
{

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_50_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_53_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_54_1(uint64_t a1)
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_55_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 112) = a3;

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_63_0(uint64_t a1)
{
  v5 = *(v2 - 120);
  *(a1 + 16) = *(v2 - 112);
  *(a1 + 24) = v1;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
}

id OUTLINED_FUNCTION_72_1()
{

  return [v0 (v1 + 3448)];
}