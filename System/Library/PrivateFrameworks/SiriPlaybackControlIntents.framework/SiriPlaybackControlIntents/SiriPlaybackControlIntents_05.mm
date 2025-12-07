void OUTLINED_FUNCTION_73_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

void OUTLINED_FUNCTION_75_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

void OUTLINED_FUNCTION_94_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_95_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for SetVolumeLevelDevicesResolutionResult();
}

id OUTLINED_FUNCTION_96_0()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_26892E0A8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 26;
  }

  v3 = sub_268A757B8();
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 26;
  }
}

double sub_26892E0F4@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_268A75754(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_2688EF2C0(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_26892E170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_2_4();
  }

  v3 = sub_268A75754(a1);
  if (v4)
  {
    return OUTLINED_FUNCTION_0_12(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26892E1B8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_2_4();
  }

  v2 = sub_268A75868(a1);
  if (v3)
  {
    return OUTLINED_FUNCTION_0_12(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26892E200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_268A75754(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_8();
  return v3;
}

uint64_t sub_26892E248(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 7;
  }

  v3 = sub_268A75894(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 7;
  }
}

double sub_26892E294@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_268A758DC(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_2688EF2C0(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_26892E2F8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_268A76C60(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_8();
  return v2;
}

uint64_t sub_26892E340(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_268A75A50();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_8();
  return v2;
}

uint64_t sub_26892E388(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 3;
  }

  v3 = sub_268A75B00(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 3;
  }
}

uint64_t sub_26892E3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_2_4();
  }

  v3 = a3(a1);
  if (v4)
  {
    return OUTLINED_FUNCTION_0_12(v3);
  }

  else
  {
    return 0;
  }
}

void *sub_26892E438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_268A75754(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_26892E484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_268A75754(a1);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26892E4D4()
{
  sub_26892E760();
  result = sub_268B37B84();
  qword_2802CD900 = result;
  return result;
}

uint64_t NowPlayingState.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E752ELL;
    case 2:
      return 0x6465737561702ELL;
    case 1:
      return 0x676E6979616C702ELL;
  }

  sub_268B381C4();

  v2 = sub_268B38404();
  MEMORY[0x26D625650](v2);

  MEMORY[0x26D625650](41, 0xE100000000000000);
  return 0x64657070616D6E75;
}

BOOL static NowPlayingState.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (qword_2802A4D50 != -1)
  {
    swift_once();
  }

  v4 = qword_2802CD900;
  v5 = sub_26892E3EC(a1, qword_2802CD900, sub_268A76C60);
  if (v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = v5;
  }

  v8 = sub_26892E3EC(a2, v4, sub_268A76C60);
  if (v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = v8;
  }

  return v7 < v10;
}

unint64_t sub_26892E6DC()
{
  result = qword_2802A5DF8;
  if (!qword_2802A5DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5DF8);
  }

  return result;
}

unint64_t sub_26892E760()
{
  result = qword_2802A5E00;
  if (!qword_2802A5E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5E00);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_8()
{
}

uint64_t sub_26892E7E8(char a1)
{
  if (!a1)
  {
    return 0x656C62616E65;
  }

  if (a1 == 1)
  {
    return 0x656C6261736964;
  }

  return 0xD000000000000013;
}

uint64_t sub_26892E840(uint64_t a1)
{
  OUTLINED_FUNCTION_232();
  v3 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  (*(v5 + 16))(v9, a1, v3);
  sub_26892E9C4(v9, 0, v13);
  (*(v5 + 8))(a1, v3);
  v14 = type metadata accessor for MediaIntent(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    sub_2688C058C(v13, &qword_2802A59A0, &unk_268B3F0C0);
    v15 = 1;
  }

  else
  {
    sub_26893207C(v13, v1);
    v15 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v1, v15, 1, v14);
}

uint64_t sub_26892E9C4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v402) = a2;
  v418 = a1;
  v414 = a3;
  v398 = sub_268B35474();
  OUTLINED_FUNCTION_1();
  v397 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_79(v381 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E08, &unk_268B3D910);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v11);
  v386 = sub_268B355B4();
  OUTLINED_FUNCTION_1();
  v385 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79(v15 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v27);
  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  v31 = (v30 - v29);
  v416 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v417 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v43);
  v45 = v381 - v44;
  v46 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v419 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v50);
  v52 = v381 - v51;
  v400 = sub_268B366C4();
  OUTLINED_FUNCTION_1();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79(v57 - v56);
  v58 = type metadata accessor for MediaIntent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_1_0();
  v62 = v61 - v60;
  *v62 = 259;
  *(v62 + 2) = 5;
  v63 = v61 - v60;
  *(v63 + 8) = 0;
  v401 = (v63 + 8);
  *(v62 + 16) = 0;
  *(v62 + 24) = 3;
  sub_268B37124();
  OUTLINED_FUNCTION_71_2(&v406);
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  OUTLINED_FUNCTION_45_1(v58[10]);
  v68 = (v62 + v58[11]);
  *v68 = 0;
  v68[1] = 0;
  v403 = v68;
  OUTLINED_FUNCTION_45_1(v58[12]);
  OUTLINED_FUNCTION_45_1(v58[13]);
  sub_268B37924();
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  OUTLINED_FUNCTION_45_1(v58[15]);
  OUTLINED_FUNCTION_45_1(v58[16]);
  OUTLINED_FUNCTION_45_1(v58[17]);
  sub_268B37464();
  OUTLINED_FUNCTION_71_2(&v431);
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  v77 = (v62 + v58[19]);
  *v77 = 0;
  v77[1] = 0;
  v399 = v77;
  sub_268B37034();
  OUTLINED_FUNCTION_71_2(&v432);
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  v413 = v58;
  sub_268B378F4();
  v412 = v62;
  OUTLINED_FUNCTION_71_2(&v433);
  v82 = v46;
  v83 = v419;
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
  v88 = *(v83 + 16);
  v88(v52, v418, v82);
  v89 = OUTLINED_FUNCTION_46_1();
  v91 = v90(v89);
  v92 = 0x2802A4000uLL;
  v180 = v91 == *MEMORY[0x277D5C128];
  v411 = v82;
  if (v180)
  {
    v93 = OUTLINED_FUNCTION_46_1();
    v94(v93);
LABEL_6:
    v97 = v416;
    v98 = *(v54 + 32);
    v99 = v52;
    v100 = v400;
    v98(v415, v99, v400);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v97, qword_2802CDA10);
    OUTLINED_FUNCTION_35_1();
    (*(v101 + 16))(v45);
    v102 = sub_268B37A34();
    v103 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_183_0(v103))
    {
      v104 = OUTLINED_FUNCTION_14();
      *v104 = 0;
      _os_log_impl(&dword_2688BB000, v102, v103, "MediaIntent#init creating MediaIntent from .NLv3IntentOnly parse", v104, 2u);
      v97 = v416;
      OUTLINED_FUNCTION_12();
    }

    (*(v417 + 8))(v45, v97);
    v98(v31, v415, v100);
    if (qword_2802A50D0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_13();
    sub_2689339FC(v105, v106, &unk_268B5120C);
    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    v107 = v412;
    *v412 = v426;
    if (qword_2802A50E8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    *(v107 + 1) = v426;
    if (qword_2802A50D8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    *(v107 + 2) = v426;
    if (qword_2802A50E0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    *v401 = v426;
    if (qword_2802A50F8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    *(v107 + 24) = v426;
    if (qword_2802A4D88 != -1)
    {
      OUTLINED_FUNCTION_7_5(&qword_2802A4D88);
    }

    OUTLINED_FUNCTION_12_5();
    v108 = sub_268B35C74();
    OUTLINED_FUNCTION_27_3(v108, &v425);
    if (qword_2802A4D90 != -1)
    {
      OUTLINED_FUNCTION_31_1(&qword_2802A4D90);
    }

    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    *v403 = v426;
    if (qword_2802A4D98 != -1)
    {
      OUTLINED_FUNCTION_6_9(&qword_2802A4D98);
    }

    OUTLINED_FUNCTION_12_5();
    v109 = sub_268B35C74();
    OUTLINED_FUNCTION_27_3(v109, &v426 + 8);
    if (qword_2802A4DA0 != -1)
    {
      OUTLINED_FUNCTION_5_3(&qword_2802A4DA0);
    }

    OUTLINED_FUNCTION_12_5();
    v110 = sub_268B35C74();
    OUTLINED_FUNCTION_27_3(v110, &v427);
    if (qword_2802A4DA8 != -1)
    {
      OUTLINED_FUNCTION_4_5(&qword_2802A4DA8);
    }

    OUTLINED_FUNCTION_12_5();
    v111 = sub_268B35C74();
    OUTLINED_FUNCTION_27_3(v111, &v428);
    if (qword_2802A4DB0 != -1)
    {
      OUTLINED_FUNCTION_9_7(&qword_2802A4DB0);
    }

    OUTLINED_FUNCTION_12_5();
    v112 = sub_268B35C74();
    v113 = OUTLINED_FUNCTION_27_3(v112, &v429);
    sub_26893F2D0(v113);
    OUTLINED_FUNCTION_27_3(v114, &v430);
    if (qword_2802A4DC0 != -1)
    {
      OUTLINED_FUNCTION_36_1(&qword_2802A4DC0);
    }

    OUTLINED_FUNCTION_69_2();
    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    OUTLINED_FUNCTION_43_1();
    sub_268932694(v103, v115, v116, v117);
    if (qword_2802A4DD0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_69_2();
    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    OUTLINED_FUNCTION_43_1();
    sub_268932694(v103, v118, v119, v120);
    if (qword_2802A4DD8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_69_2();
    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    OUTLINED_FUNCTION_43_1();
    sub_268932694(v103, v121, v122, v123);
    if (v402)
    {
      v124 = sub_268940390();
      v126 = v125;
      v127 = OUTLINED_FUNCTION_13_4();
      v128(v127);
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_67_0();
      *v129 = v124;
      v129[1] = v126;
    }

    else
    {
      v130 = OUTLINED_FUNCTION_13_4();
      v131(v130);
      OUTLINED_FUNCTION_30_1();
    }

    goto LABEL_41;
  }

  v381[0] = v52;
  if (v91 == *MEMORY[0x277D5C158])
  {
    v52 = v381[0];
    v95 = OUTLINED_FUNCTION_46_1();
    v96(v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E20, qword_268B3D940);

    goto LABEL_6;
  }

  if (v91 == *MEMORY[0x277D5C150])
  {
    v134 = v381[0];
    (*(v419 + 96))(v381[0], v82);
    v135 = v397;
    v136 = v395;
    v137 = v398;
    (*(v397 + 32))(v395, v134, v398);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v416, qword_2802CDA10);
    OUTLINED_FUNCTION_69_2();
    v139 = *(v138 + 16);
    v140 = v396;
    v409 = v141;
    v415 = (v138 + 16);
    v410 = v139;
    v139(v396);
    v142 = *(v135 + 16);
    v107 = v393;
    v142(v393, v136, v137);
    v143 = sub_268B37A34();
    v144 = sub_268B37EE4();
    v145 = OUTLINED_FUNCTION_19(v144);
    v408 = (v135 + 16);
    v407 = v142;
    if (v145)
    {
      v146 = OUTLINED_FUNCTION_172_0();
      v147 = OUTLINED_FUNCTION_173_0();
      *&v426 = v147;
      *v146 = 136315138;
      v142(v390, v107, v137);
      v148 = sub_268B37C24();
      v149 = v137;
      v151 = v150;
      v152 = *(v135 + 8);
      v152(v107, v149);
      v153 = sub_26892CDB8(v148, v151, &v426);

      *(v146 + 4) = v153;
      v92 = v417;
      _os_log_impl(&dword_2688BB000, v143, v140, "MediaIntent#init directInvocation: %s", v146, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v147);
      OUTLINED_FUNCTION_12();
      v136 = v395;
      OUTLINED_FUNCTION_12();
    }

    else
    {

      v152 = *(v135 + 8);
      v152(v107, v137);
    }

    v176 = *(v92 + 8);
    v176(v396, v416);
    v177 = sub_268B35454();
    v179 = v178;
    v180 = v177 == 0xD00000000000003CLL && 0x8000000268B57880 == v178;
    v181 = v394;
    if (v180 || (v182 = v177, (OUTLINED_FUNCTION_58_1(0xD00000000000003CLL) & 1) != 0))
    {

      type metadata accessor for DirectInvocationHelper();
      sub_268A69384(v136);
      if (v184)
      {
        v185 = sub_268AA3904(v183);
        v186 = OUTLINED_FUNCTION_17_3();
        v187(v186, v411);
        OUTLINED_FUNCTION_50_1();
        v152(v136, v398);
        OUTLINED_FUNCTION_39_2();
        *(v107 + 24) = v185;
LABEL_41:
        v132 = v414;
        sub_268932630(v107, v414);
        __swift_storeEnumTagSinglePayload(v132, 0, 1, v413);
        return OUTLINED_FUNCTION_29_1();
      }

      v408 = v152;
      OUTLINED_FUNCTION_24_2(&v413);
      v204 = *(v203 - 256);
      OUTLINED_FUNCTION_19_2();
      v205();
      v206 = sub_268B37A34();
      v207 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v207))
      {
        v208 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_37_2(v208);
        OUTLINED_FUNCTION_28_3(&dword_2688BB000, v209, v210, "MediaIntent#init returning nil for intent since we could not find a button pressed.");
        OUTLINED_FUNCTION_20_2();

        v211 = OUTLINED_FUNCTION_68_2();
        v212(v211);
        (v142)(v176, v204);
      }

      else
      {

        v231 = OUTLINED_FUNCTION_68_2();
        v232(v231);
        v233 = OUTLINED_FUNCTION_70_1();
        (v176)(v233);
      }

      v234 = OUTLINED_FUNCTION_63_1();
      v408(v234);
      goto LABEL_93;
    }

    v213 = v182 == 0xD000000000000048 && 0x8000000268B578C0 == v179;
    if (v213 || (OUTLINED_FUNCTION_58_1(0xD000000000000048) & 1) != 0)
    {

      type metadata accessor for DirectInvocationHelper();
      sub_268A69394(v136);
      if (v215)
      {
        v216 = v214;
        v217 = v215;
        v218 = OUTLINED_FUNCTION_17_3();
        v219(v218, v411);
        OUTLINED_FUNCTION_50_1();
        v220 = OUTLINED_FUNCTION_32_2();
        (v152)(v220);
        OUTLINED_FUNCTION_39_2();
        *(v107 + 8) = v216;
        *(v107 + 16) = v217;
        goto LABEL_41;
      }

      sub_268A693A4(v136);
      OUTLINED_FUNCTION_64_1();
      if (v259)
      {
        v260 = v258;
        v261 = v259;
        v262 = OUTLINED_FUNCTION_13_4();
        v263(v262);
        v264 = OUTLINED_FUNCTION_32_2();
        (v152)(v264);
        OUTLINED_FUNCTION_39_2();
        *(v107 + 8) = v260;
        *(v107 + 16) = v261;
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_24_2(&v405);
      v344 = *(v343 - 256);
      OUTLINED_FUNCTION_19_2();
      v345();
      v346 = sub_268B37A34();
      v347 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v347))
      {
        v348 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_37_2(v348);
        OUTLINED_FUNCTION_28_3(&dword_2688BB000, v349, v350, "MediaIntent#init returning nil for intent since we could not find a language.");
        OUTLINED_FUNCTION_20_2();

        v351 = OUTLINED_FUNCTION_13_4();
        v352(v351);
        v353 = v176;
        v354 = v344;
LABEL_116:
        (v142)(v353, v354);
LABEL_122:
        v366 = OUTLINED_FUNCTION_63_1();
        (v152)(v366);
LABEL_93:
        OUTLINED_FUNCTION_39_2();
        goto LABEL_94;
      }

      v363 = OUTLINED_FUNCTION_13_4();
      v364(v363);
      v365 = OUTLINED_FUNCTION_70_1();
      goto LABEL_121;
    }

    if (v182 == 0xD000000000000046 && 0x8000000268B56FE0 == v179)
    {

      v267 = v411;
    }

    else
    {
      v266 = OUTLINED_FUNCTION_58_1(0xD000000000000046);

      v267 = v411;
      if ((v266 & 1) == 0)
      {
        v406 = v176;
        v268 = v152;
        v269 = v382;
        v270 = v416;
        OUTLINED_FUNCTION_19_2();
        v271();
        v272 = OUTLINED_FUNCTION_70_1();
        v273 = v398;
        v407(v272);
        v274 = sub_268B37A34();
        v275 = v136;
        v276 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_183_0(v276))
        {
          v277 = v181;
          v278 = OUTLINED_FUNCTION_172_0();
          v279 = OUTLINED_FUNCTION_173_0();
          *&v426 = v279;
          *v278 = 136315138;
          v280 = sub_268B35454();
          v282 = v281;
          v268(v277, v273);
          v283 = sub_26892CDB8(v280, v282, &v426);

          *(v278 + 4) = v283;
          _os_log_impl(&dword_2688BB000, v274, v276, "MediaIntent#init unexpected direct invocation identifier: %s", v278, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v279);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_20_2();

          v284 = OUTLINED_FUNCTION_17_3();
          v285(v284, v267);
          OUTLINED_FUNCTION_35_1();
          v406(v382, v416);
          v268(v395, v398);
        }

        else
        {

          v367 = OUTLINED_FUNCTION_17_3();
          v368(v367, v267);
          v268(v181, v273);
          v406(v269, v270);
          v268(v275, v273);
        }

        goto LABEL_93;
      }
    }

    type metadata accessor for DirectInvocationHelper();
    sub_268A69394(v136);
    if (v288)
    {
      v289 = v287;
      v290 = v288;
      v291 = OUTLINED_FUNCTION_17_3();
      v292(v291, v267);
      OUTLINED_FUNCTION_50_1();
      v293 = OUTLINED_FUNCTION_32_2();
      (v152)(v293);
      OUTLINED_FUNCTION_67_0();
      *v294 = v289;
      v294[1] = v290;
    }

    else
    {
      sub_268A693B4(v136);
      OUTLINED_FUNCTION_64_1();
      if (!v356)
      {
        OUTLINED_FUNCTION_24_2(&v404);
        v370 = *(v369 - 256);
        OUTLINED_FUNCTION_19_2();
        v371();
        v372 = sub_268B37A34();
        v373 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_19(v373))
        {
          v374 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_37_2(v374);
          OUTLINED_FUNCTION_28_3(&dword_2688BB000, v375, v376, "MediaIntent#init returning nil for intent since we could not find a DeviceID.");
          OUTLINED_FUNCTION_20_2();

          v377 = OUTLINED_FUNCTION_16_4();
          v378(v377, v267);
          OUTLINED_FUNCTION_35_1();
          v353 = v176;
          v354 = v370;
          goto LABEL_116;
        }

        v379 = OUTLINED_FUNCTION_16_4();
        v380(v379, v267);
        OUTLINED_FUNCTION_35_1();
        v365 = v136;
LABEL_121:
        (v176)(v365);
        goto LABEL_122;
      }

      v357 = v355;
      v358 = v356;
      v359 = OUTLINED_FUNCTION_16_4();
      v360(v359, v267);
      v361 = OUTLINED_FUNCTION_32_2();
      (v152)(v361);
      OUTLINED_FUNCTION_67_0();
      *v362 = v357;
      v362[1] = v358;
    }

    OUTLINED_FUNCTION_39_2();
    goto LABEL_41;
  }

  if (v91 != *MEMORY[0x277D5C160])
  {
    v188 = v417;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v189 = v416;
    v190 = __swift_project_value_buffer(v416, qword_2802CDA10);
    v191 = v391;
    (*(v188 + 16))(v391, v190, v189);
    v192 = v389;
    v88(v389, v418, v82);
    v193 = sub_268B37A34();
    v194 = sub_268B37ED4();
    if (os_log_type_enabled(v193, v194))
    {
      v195 = OUTLINED_FUNCTION_172_0();
      v415 = OUTLINED_FUNCTION_173_0();
      *&v426 = v415;
      *v195 = 136315138;
      v88(v388, v192, v82);
      OUTLINED_FUNCTION_46_1();
      v196 = sub_268B37C24();
      v198 = v197;
      v199 = *(v419 + 8);
      v200 = v82;
      v199(v192, v82);
      v201 = sub_26892CDB8(v196, v198, &v426);

      *(v195 + 4) = v201;
      _os_log_impl(&dword_2688BB000, v193, v194, "MediaIntent#init unexpected parse type: %s, returning nil MediaIntent", v195, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v415);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_20_2();

      v202 = OUTLINED_FUNCTION_65_0();
      v199(v202, v82);
      (*(v417 + 8))(v391, v416);
    }

    else
    {

      v199 = *(v419 + 8);
      v200 = v82;
      v221 = OUTLINED_FUNCTION_65_0();
      v199(v221, v82);
      v199(v192, v82);
      (*(v188 + 8))(v191, v189);
    }

    v199(v381[0], v200);
    goto LABEL_93;
  }

  v154 = v417;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v155 = v416;
  __swift_project_value_buffer(v416, qword_2802CDA10);
  v157 = *(v154 + 16);
  v107 = v154 + 16;
  v156 = v157;
  v158 = OUTLINED_FUNCTION_72_2(&v419);
  (v157)(v158);
  v159 = sub_268B37A34();
  v160 = sub_268B37ED4();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = OUTLINED_FUNCTION_14();
    *v161 = 0;
    _os_log_impl(&dword_2688BB000, v159, v160, "MediaIntent#init creating MediaIntent from .uso parse", v161, 2u);
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_35_1();
  v163 = *(v162 + 8);
  v417 = v162 + 8;
  v415 = v163;
  (v163)(v392, v155);
  v164 = sub_268A40454();
  if (v164)
  {
    v165 = v164;
    sub_268B35DC4();
    sub_268932738(&v430, v421, &byte_2802A6450, &byte_268B3BE10);
    if (v421[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E18, &qword_268B3D938);
      if (swift_dynamicCast())
      {
        if (*(&v423 + 1))
        {
          v402 = v165;
          sub_2688E6514(&v422, &v426);
          v166 = v383;
          v167 = OUTLINED_FUNCTION_70_1();
          (v156)(v167);
          sub_268932738(&v430, &v422, &byte_2802A6450, &byte_268B3BE10);
          v168 = sub_268B37A34();
          v169 = sub_268B37F04();
          if (OUTLINED_FUNCTION_183_0(v169))
          {
            v170 = OUTLINED_FUNCTION_172_0();
            v171 = OUTLINED_FUNCTION_173_0();
            v420 = v171;
            *v170 = 136315138;
            v107 = &byte_2802A6450;
            sub_268932738(&v422, v421, &byte_2802A6450, &byte_268B3BE10);
            __swift_instantiateConcreteTypeFromMangledNameV2(&byte_2802A6450, &byte_268B3BE10);
            v172 = sub_268B37C24();
            v174 = v173;
            sub_2688C058C(&v422, &byte_2802A6450, &byte_268B3BE10);
            v175 = sub_26892CDB8(v172, v174, &v420);

            *(v170 + 4) = v175;
            _os_log_impl(&dword_2688BB000, v168, v169, "Setting attributes for MediaIntent from task: %s", v170, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v171);
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_12();
          }

          else
          {

            sub_2688C058C(&v422, &byte_2802A6450, &byte_268B3BE10);
          }

          OUTLINED_FUNCTION_21_3();
          v295();
          OUTLINED_FUNCTION_39_2();
          v296 = OUTLINED_FUNCTION_23_3();
          __swift_project_boxed_opaque_existential_1(v296, v297);
          OUTLINED_FUNCTION_129();
          v298 = sub_268B37324();
          if (!v299)
          {
            v298 = 0;
            v299 = 0xE000000000000000;
          }

          *v107 = sub_268930CE4(v298, v299);
          v300 = v429;
          v301 = OUTLINED_FUNCTION_23_3();
          __swift_project_boxed_opaque_existential_1(v301, v302);
          v303 = OUTLINED_FUNCTION_129();
          *(v107 + 1) = v304(v303, v300) & 1;
          v305 = v429;
          v306 = OUTLINED_FUNCTION_23_3();
          __swift_project_boxed_opaque_existential_1(v306, v307);
          v308 = OUTLINED_FUNCTION_129();
          *(v107 + 2) = v309(v308, v305);
          v310 = v429;
          v311 = OUTLINED_FUNCTION_23_3();
          __swift_project_boxed_opaque_existential_1(v311, v312);
          v313 = OUTLINED_FUNCTION_129();
          *(v107 + 8) = v314(v313, v310);
          *(v107 + 16) = v315;
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_129();
          v316 = sub_268B377B4();
          OUTLINED_FUNCTION_27_3(v316, &v425);
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_129();
          v317 = sub_268B37784();
          v318 = v403;
          *v403 = v317;
          *(v318 + 1) = v319;
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_129();
          v320 = sub_268B377C4();
          OUTLINED_FUNCTION_27_3(v320, &v426 + 8);
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_129();
          v321 = sub_268B37814();
          OUTLINED_FUNCTION_27_3(v321, &v427);
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_129();
          v322 = sub_268B377F4();
          OUTLINED_FUNCTION_27_3(v322, &v428);
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_129();
          v323 = sub_268B37804();
          OUTLINED_FUNCTION_27_3(v323, &v429);
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_129();
          v324 = sub_268B377E4();
          OUTLINED_FUNCTION_27_3(v324, &v430);
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_20_3();
          sub_268B37824();
          OUTLINED_FUNCTION_43_1();
          sub_268932694(v166, v325, v326, v327);
          OUTLINED_FUNCTION_67_0();
          *v328 = 0;
          v328[1] = 0;
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_20_3();
          sub_268B377D4();
          OUTLINED_FUNCTION_43_1();
          sub_268932694(v166, v329, v330, v331);
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_20_3();
          sub_268B37794();
          OUTLINED_FUNCTION_43_1();
          sub_268932694(v166, v332, v333, v334);
          v335 = OUTLINED_FUNCTION_23_3();
          __swift_project_boxed_opaque_existential_1(v335, v336);
          OUTLINED_FUNCTION_20_3();
          sub_268B376D4();

          v337 = *(v419 + 8);
          v338 = OUTLINED_FUNCTION_65_0();
          v337(v338, v82);
          sub_2688C058C(&v430, &byte_2802A6450, &byte_268B3BE10);
          OUTLINED_FUNCTION_43_1();
          sub_268932694(v166, v339, v340, v341);
          __swift_destroy_boxed_opaque_existential_0Tm(&v426);
          v342 = OUTLINED_FUNCTION_49_0();
          (v337)(v342);
          goto LABEL_41;
        }
      }

      else
      {
        v424 = 0;
        v422 = 0u;
        v423 = 0u;
      }
    }

    else
    {
      sub_2688C058C(v421, &byte_2802A6450, &byte_268B3BE10);
      v422 = 0u;
      v423 = 0u;
      v424 = 0;
    }

    sub_2688C058C(&v422, &qword_2802A5E10, &qword_268B3D930);
    v156();
    sub_268932738(&v430, &v426, &byte_2802A6450, &byte_268B3BE10);
    v235 = sub_268B37A34();
    v236 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_183_0(v236))
    {
      v237 = OUTLINED_FUNCTION_172_0();
      v238 = v419;
      v239 = v237;
      v240 = OUTLINED_FUNCTION_173_0();
      v421[0] = v240;
      *v239 = 136315138;
      sub_268932738(&v426, &v422, &byte_2802A6450, &byte_268B3BE10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&byte_2802A6450, &byte_268B3BE10);
      v241 = sub_268B37C24();
      v243 = v242;
      sub_2688C058C(&v426, &byte_2802A6450, &byte_268B3BE10);
      v244 = sub_26892CDB8(v241, v243, v421);

      *(v239 + 4) = v244;
      _os_log_impl(&dword_2688BB000, v235, v236, "Fatal: Unable to cast task: %s to ControlsMediaTask", v239, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v240);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v245 = *(v238 + 8);
      v246 = OUTLINED_FUNCTION_65_0();
      v247 = v411;
      v245(v246, v411);
    }

    else
    {

      v245 = *(v419 + 8);
      v247 = v411;
      v245(v418, v411);
      v249 = OUTLINED_FUNCTION_23_3();
      sub_2688C058C(v249, v250, &byte_268B3BE10);
    }

    OUTLINED_FUNCTION_21_3();
    v248();
    sub_2688C058C(&v430, &byte_2802A6450, &byte_268B3BE10);
    v245(v381[0], v247);
    goto LABEL_93;
  }

  v222 = OUTLINED_FUNCTION_72_2(&v414);
  (v156)(v222);
  v223 = sub_268B37A34();
  v224 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_19(v224))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_28_3(&dword_2688BB000, v225, v226, "No tasks found in usoTasks input, might be a confirmation response.");
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_21_3();
  v227();
  v228 = v387;
  sub_268A3FD3C(v387);
  v229 = v386;
  if (__swift_getEnumTagSinglePayload(v228, 1, v386) == 1)
  {
    v230 = *(v419 + 8);
    v230(v418, v82);
    sub_2688C058C(v228, &qword_2802A5E08, &unk_268B3D910);
  }

  else
  {
    v254 = v385;
    v255 = v384;
    (*(v385 + 32))(v384, v228, v229);
    v256 = sub_2689F8358();
    v107 = v256;
    v230 = *(v419 + 8);
    v230(v418, v82);
    (*(v254 + 8))(v255, v229);
    if (v256 != 3)
    {
      OUTLINED_FUNCTION_39_2();
      *(v256 + 0x18) = v256;
      v286 = OUTLINED_FUNCTION_49_0();
      (v230)(v286);
      goto LABEL_41;
    }
  }

  OUTLINED_FUNCTION_39_2();
  v257 = OUTLINED_FUNCTION_49_0();
  (v230)(v257);
LABEL_94:
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_96();
  return __swift_storeEnumTagSinglePayload(v251, v252, v253, v413);
}

unint64_t sub_268930CE4(uint64_t a1, uint64_t a2)
{
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_268930D34(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t sub_268930ECC(uint64_t a1)
{
  result = sub_2689339FC(&qword_2802A59A8, type metadata accessor for MediaIntent, &unk_268B3D874);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for MediaIntent(uint64_t a1)
{
  result = qword_2802A5E28;
  if (!qword_2802A5E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268930F74()
{
  type metadata accessor for MediaIntent(0);
}

uint64_t sub_268930FA8()
{
  type metadata accessor for SettingsIntent(0);
}

uint64_t sub_268930FDC()
{
  if (qword_2802A4D88 != -1)
  {
    OUTLINED_FUNCTION_7_5(&qword_2802A4D88);
  }

  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_0_13();
  sub_2689339FC(v0, v1, &unk_268B5120C);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931084()
{
  if (qword_2802A4D88 != -1)
  {
    OUTLINED_FUNCTION_7_5(&qword_2802A4D88);
  }

  type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_2_9();
  sub_2689339FC(v0, v1, &unk_268B44454);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931114()
{
  if (qword_2802A4D88 != -1)
  {
    OUTLINED_FUNCTION_7_5(&qword_2802A4D88);
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_1_9();
  sub_2689339FC(v0, v1, &unk_268B4B4F8);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_2689311A8()
{
  v1 = *(v0 + *(type metadata accessor for MediaIntent(0) + 44));

  return v1;
}

uint64_t sub_2689311E8()
{
  type metadata accessor for SettingsIntent(0);
  OUTLINED_FUNCTION_242();
  return OUTLINED_FUNCTION_123();
}

uint64_t sub_268931260()
{
  type metadata accessor for MediaPlayerIntent(0);
  OUTLINED_FUNCTION_242();
  return OUTLINED_FUNCTION_123();
}

uint64_t sub_2689312D8(void (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (qword_2802A4D90 != -1)
  {
    OUTLINED_FUNCTION_31_1(&qword_2802A4D90);
  }

  a1(0);
  sub_2689339FC(a2, a3, a4);
  sub_268B35C64();
  return v9;
}

uint64_t sub_2689313C8()
{
  type metadata accessor for MediaIntent(0);
}

uint64_t sub_268931414()
{
  if (qword_2802A4D98 != -1)
  {
    OUTLINED_FUNCTION_6_9(&qword_2802A4D98);
  }

  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_0_13();
  sub_2689339FC(v0, v1, &unk_268B5120C);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_2689314BC()
{
  if (qword_2802A4D98 != -1)
  {
    OUTLINED_FUNCTION_6_9(&qword_2802A4D98);
  }

  type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_2_9();
  sub_2689339FC(v0, v1, &unk_268B44454);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_26893154C()
{
  if (qword_2802A4D98 != -1)
  {
    OUTLINED_FUNCTION_6_9(&qword_2802A4D98);
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_1_9();
  sub_2689339FC(v0, v1, &unk_268B4B4F8);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931620()
{
  v0 = OUTLINED_FUNCTION_54_2();
  v1(v0);
}

uint64_t sub_268931658()
{
  type metadata accessor for SettingsIntent(0);
}

uint64_t sub_26893168C()
{
  if (qword_2802A4DA0 != -1)
  {
    OUTLINED_FUNCTION_5_3(&qword_2802A4DA0);
  }

  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_0_13();
  sub_2689339FC(v0, v1, &unk_268B5120C);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931734()
{
  if (qword_2802A4DA0 != -1)
  {
    OUTLINED_FUNCTION_5_3(&qword_2802A4DA0);
  }

  type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_2_9();
  sub_2689339FC(v0, v1, &unk_268B44454);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_2689317C4()
{
  if (qword_2802A4DA0 != -1)
  {
    OUTLINED_FUNCTION_5_3(&qword_2802A4DA0);
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_1_9();
  sub_2689339FC(v0, v1, &unk_268B4B4F8);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931898()
{
  v0 = OUTLINED_FUNCTION_54_2();
  v1(v0);
}

uint64_t sub_2689318E8()
{
  if (qword_2802A4DA8 != -1)
  {
    OUTLINED_FUNCTION_4_5(&qword_2802A4DA8);
  }

  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_0_13();
  sub_2689339FC(v0, v1, &unk_268B5120C);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931978()
{
  type metadata accessor for MediaPlayerIntent(0);
}

uint64_t sub_2689319AC()
{
  if (qword_2802A4DA8 != -1)
  {
    OUTLINED_FUNCTION_4_5(&qword_2802A4DA8);
  }

  type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_2_9();
  sub_2689339FC(v0, v1, &unk_268B44454);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931A3C()
{
  if (qword_2802A4DA8 != -1)
  {
    OUTLINED_FUNCTION_4_5(&qword_2802A4DA8);
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_1_9();
  sub_2689339FC(v0, v1, &unk_268B4B4F8);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931AF8()
{
  v0 = OUTLINED_FUNCTION_54_2();
  v1(v0);
}

uint64_t sub_268931B48()
{
  if (qword_2802A4DB0 != -1)
  {
    OUTLINED_FUNCTION_9_7(&qword_2802A4DB0);
  }

  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_0_13();
  sub_2689339FC(v0, v1, &unk_268B5120C);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931BD8()
{
  type metadata accessor for MediaPlayerIntent(0);
}

uint64_t sub_268931C0C()
{
  if (qword_2802A4DB0 != -1)
  {
    OUTLINED_FUNCTION_9_7(&qword_2802A4DB0);
  }

  type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_2_9();
  sub_2689339FC(v0, v1, &unk_268B44454);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931C9C()
{
  if (qword_2802A4DB0 != -1)
  {
    OUTLINED_FUNCTION_9_7(&qword_2802A4DB0);
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_1_9();
  sub_2689339FC(v0, v1, &unk_268B4B4F8);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931D58()
{
  v0 = OUTLINED_FUNCTION_54_2();
  v1(v0);
}

uint64_t sub_268931DA8()
{
  v0 = OUTLINED_FUNCTION_54_2();
  v1(v0);
}

uint64_t sub_268931DE4()
{
  type metadata accessor for MediaPlayerIntent(0);
}

uint64_t sub_268931E6C()
{
  v0 = OUTLINED_FUNCTION_232();
  v1 = type metadata accessor for SettingsIntent(v0);
  return OUTLINED_FUNCTION_74_1(&qword_2802A5BA8, &qword_268B3C690, *(v1 + 76));
}

uint64_t sub_268931EF0()
{
  v0 = OUTLINED_FUNCTION_232();
  v1 = type metadata accessor for MediaPlayerIntent(v0);
  return OUTLINED_FUNCTION_74_1(&qword_2802A5BA8, &qword_268B3C690, *(v1 + 88));
}

uint64_t sub_268931F74(void (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (qword_2802A4DC0 != -1)
  {
    OUTLINED_FUNCTION_36_1(&qword_2802A4DC0);
  }

  a1(0);
  sub_2689339FC(a2, a3, a4);

  return sub_268B35C64();
}

uint64_t sub_26893207C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268932128()
{
  v0 = OUTLINED_FUNCTION_232();
  v1 = type metadata accessor for MediaPlayerIntent(v0);
  return OUTLINED_FUNCTION_74_1(&qword_2802A5CA8, &unk_268B3CE30, *(v1 + 40));
}

uint64_t sub_268932164()
{
  v0 = OUTLINED_FUNCTION_232();
  v1 = type metadata accessor for SettingsIntent(v0);
  return OUTLINED_FUNCTION_74_1(&qword_2802A5CA8, &unk_268B3CE30, *(v1 + 60));
}

uint64_t sub_2689321A0()
{
  OUTLINED_FUNCTION_232();
  sub_268B37924();
  OUTLINED_FUNCTION_96();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

unint64_t sub_268932214@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268930CE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268932244@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26892E7E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2689322C0(uint64_t a1, uint64_t a2)
{
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_268932314(char a1)
{
  result = 25697;
  switch(a1)
  {
    case 1:
      result = 0x6F69647561;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 25443;
      break;
    case 4:
      result = 6841459;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_2689323A0(uint64_t a1, uint64_t a2)
{
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  return v2 != 0;
}

unint64_t sub_268932438@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2689322C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268932468@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268932314(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_2689324F4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2689323A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2689325A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4(a1, a2, a3);
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t sub_268932630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268932694(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_25(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_123();
  v6(v5);
  return v4;
}

uint64_t sub_2689326E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_268932738(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_25(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_123();
  v6(v5);
  return v4;
}

_BYTE *storeEnumTagSinglePayload for MediaVerb(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268932850);
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

uint64_t getEnumTagSinglePayload for MediaQuestionAttributes(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for MediaQuestionAttributes(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x268932978);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaViewOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaViewOption(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268932B04);
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

uint64_t sub_268932B50(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_182();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[9];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
    OUTLINED_FUNCTION_182();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v9 = a3[14];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
      OUTLINED_FUNCTION_182();
      if (*(v15 + 84) == a2)
      {
        v8 = v14;
        v9 = a3[18];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
        OUTLINED_FUNCTION_182();
        if (*(v17 + 84) == a2)
        {
          v8 = v16;
          v9 = a3[20];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
          v9 = a3[21];
        }
      }
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[10]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_268932D2C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_182();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[9];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[10]) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
    OUTLINED_FUNCTION_182();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[14];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
      OUTLINED_FUNCTION_182();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[18];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
        OUTLINED_FUNCTION_182();
        if (*(v17 + 84) == a3)
        {
          v10 = v16;
          v11 = a4[20];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
          v11 = a4[21];
        }
      }
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_268932EF0(uint64_t a1)
{
  sub_2689332AC(319, &qword_2802A5E38, &type metadata for MediaVerb, MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2689332AC(319, &qword_2802A5E40, &type metadata for MediaQuestionAttributes, MEMORY[0x277D83D88]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2689332AC(319, &qword_2802A5E48, &type metadata for MediaViewOption, MEMORY[0x277D83D88]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_2689332AC(319, &qword_2802A5E50, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2689332AC(319, &qword_2802A5E58, &type metadata for ConfirmationStateValue, MEMORY[0x277D83D88]);
          if (v11 > 0x3F)
          {
            return v10;
          }

          sub_2689332FC(319, &qword_2802A5E60, MEMORY[0x277D5F7B8], MEMORY[0x277D83D88]);
          if (v12 > 0x3F)
          {
            return v10;
          }

          sub_2689332AC(319, &qword_2802A5E68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          if (v14 > 0x3F)
          {
            return v13;
          }

          sub_2689332FC(319, &qword_2802A5E70, MEMORY[0x277D5FA18], MEMORY[0x277D83D88]);
          if (v15 > 0x3F)
          {
            return v10;
          }

          sub_2689332FC(319, &qword_2802A5E78, MEMORY[0x277D5F790], MEMORY[0x277D83940]);
          if (v16 > 0x3F)
          {
            return v10;
          }

          sub_2689332FC(319, &qword_2802A5E80, MEMORY[0x277D5F880], MEMORY[0x277D83D88]);
          if (v17 > 0x3F)
          {
            return v10;
          }

          else
          {
            sub_2689332FC(319, &qword_2802A5E88, MEMORY[0x277D5F748], MEMORY[0x277D83D88]);
            v2 = v18;
            if (v19 <= 0x3F)
            {
              sub_2689332FC(319, &qword_2802A5E90, MEMORY[0x277D5F9D0], MEMORY[0x277D83D88]);
              v2 = v20;
              if (v21 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_2689332AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2689332FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_268933364()
{
  result = qword_2802A5E98;
  if (!qword_2802A5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5E98);
  }

  return result;
}

unint64_t sub_2689333EC()
{
  result = qword_2802A5EB0;
  if (!qword_2802A5EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5EB0);
  }

  return result;
}

unint64_t sub_268933444()
{
  result = qword_2802A5EB8;
  if (!qword_2802A5EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5EB8);
  }

  return result;
}

unint64_t sub_26893349C()
{
  result = qword_2802A5EC0;
  if (!qword_2802A5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5EC0);
  }

  return result;
}

unint64_t sub_268933524()
{
  result = qword_2802A5ED8;
  if (!qword_2802A5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5ED8);
  }

  return result;
}

unint64_t sub_26893357C()
{
  result = qword_2802A5EE0;
  if (!qword_2802A5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5EE0);
  }

  return result;
}

unint64_t sub_2689335D4()
{
  result = qword_2802A5EE8;
  if (!qword_2802A5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5EE8);
  }

  return result;
}

unint64_t sub_26893365C()
{
  result = qword_2802A5F00;
  if (!qword_2802A5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F00);
  }

  return result;
}

unint64_t sub_2689336B4()
{
  result = qword_2802A5F08;
  if (!qword_2802A5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F08);
  }

  return result;
}

unint64_t sub_268933708()
{
  result = qword_2802A5F10;
  if (!qword_2802A5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F10);
  }

  return result;
}

unint64_t sub_26893375C()
{
  result = qword_2802A5F18;
  if (!qword_2802A5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F18);
  }

  return result;
}

unint64_t sub_2689337B0()
{
  result = qword_2802A5F20;
  if (!qword_2802A5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F20);
  }

  return result;
}

unint64_t sub_268933804()
{
  result = qword_2802A5F28;
  if (!qword_2802A5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F28);
  }

  return result;
}

unint64_t sub_268933858()
{
  result = qword_2802A5F30;
  if (!qword_2802A5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F30);
  }

  return result;
}

unint64_t sub_2689338AC()
{
  result = qword_2802A5F38;
  if (!qword_2802A5F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F38);
  }

  return result;
}

unint64_t sub_268933900()
{
  result = qword_2802A5F40;
  if (!qword_2802A5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F40);
  }

  return result;
}

unint64_t sub_268933954()
{
  result = qword_2802A5F48;
  if (!qword_2802A5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F48);
  }

  return result;
}

unint64_t sub_2689339A8()
{
  result = qword_2802A5F50;
  if (!qword_2802A5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F50);
  }

  return result;
}

uint64_t sub_2689339FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_7(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_28_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_29_1()
{

  return sub_2689326E0(v0, type metadata accessor for MediaIntent);
}

uint64_t OUTLINED_FUNCTION_30_1()
{

  return sub_2689326E0(v0, type metadata accessor for MediaNLv3Intent);
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_36_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_58_1(uint64_t a1)
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_74_1@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_268932738(v4 + a3, v3, a1, a2);
}

uint64_t sub_268933E68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v67 = a8;
  v64 = a5;
  v65 = a7;
  v59 = a6;
  v60 = a2;
  v62 = a3;
  v63 = a4;
  v61 = a1;
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v57 = v9;
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v20 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v21 = *(v13 + 16);
  v21(v19, v20, v11);
  v22 = sub_268B37A34();
  v23 = sub_268B37ED4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2688BB000, v22, v23, "SetPlaybackSpeedUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v24, 2u);
    OUTLINED_FUNCTION_12();
  }

  v25 = *(v13 + 8);
  v25(v19, v11);
  sub_268B36754();
  v26 = sub_268B36734();
  if (!v26)
  {
    v26 = sub_268B36744();
  }

  v27 = v26;
  v21(v17, v20, v11);

  v28 = sub_268B37A34();
  v29 = sub_268B37ED4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v55 = v17;
    v31 = v30;
    v32 = swift_slowAlloc();
    v54 = v25;
    v33 = v32;
    v68 = v32;
    *v31 = 136315138;
    sub_268B36714();
    v34 = v56;
    sub_268B36B14();

    v35 = sub_268B36784();
    v37 = v36;
    (*(v57 + 8))(v34, v58);
    v38 = sub_26892CDB8(v35, v37, &v68);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_2688BB000, v28, v29, "SetPlaybackSpeedUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v54(v55, v11);
  }

  else
  {

    v25(v17, v11);
  }

  v39 = swift_allocObject();
  v41 = v62;
  v40 = v63;
  v39[2] = v27;
  v39[3] = v41;
  v42 = v59;
  v43 = v60;
  v39[4] = v40;
  v39[5] = v43;
  v45 = v65;
  v44 = v66;
  v39[6] = v42;
  v39[7] = v44;
  v39[8] = v61;
  v39[9] = v45;
  v46 = v67;
  v39[10] = v67;
  swift_retain_n();
  v47 = v42;
  swift_retain_n();
  v48 = v47;

  v49 = v48;

  v50 = v43;

  sub_2689F8C54(v51, v50, v41, v40, v64, v49, v44, v45, v46, v49, v44, sub_268935520);
}

uint64_t sub_2689343C4(uint64_t a1, char *a2, uint64_t a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v92 = a8;
  v78 = a7;
  v88 = a6;
  v76 = a5;
  v87 = a4;
  v75 = a3;
  v74 = a2;
  v82 = a1;
  v91 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v9 - 8);
  v81 = v73 - v10;
  v11 = sub_268B37A54();
  v89 = *(v11 - 8);
  v90 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v86 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v80 = v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v15 - 8);
  v85 = v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v77 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v73 - v20;
  v22 = sub_268B34E24();
  v84 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v25 = MEMORY[0x28223BE20](v83);
  v79 = v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v73 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v73 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v32);
  v34 = v73 - v33;
  sub_268935590(v82, v73 - v33, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688EF38C(v34, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v35 = v90;
    v36 = __swift_project_value_buffer(v90, qword_2802CDA10);
    v37 = v89;
    (*(v89 + 16))(v86, v36, v35);
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2688BB000, v38, v39, "SetPlaybackSpeedUnsupportedValueStrategy.makeUnsupportedValueOutput unable to execute dialog", v40, 2u);
      MEMORY[0x26D6266E0](v40, -1, -1);
    }

    (*(v37 + 8))(v86, v35);
    sub_2688C2ECC();
    v41 = swift_allocError();
    *v42 = -80;
    v93[0] = v41;
    v94 = 1;
    v92(v93);
    return sub_2688EF38C(v93, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v34, v31);
    v73[0] = sub_2688E1B0C(19, 3, v74, v75, v87, 0x6E776F6E6B6E75, 0xE700000000000000, v76);
    v73[1] = v44;
    __swift_project_boxed_opaque_existential_1(v88 + 13, v88[16]);
    v45 = *MEMORY[0x277D5BBE0];
    v46 = *(v84 + 104);
    v74 = v24;
    v75 = v22;
    v46(v24, v45, v22);
    v86 = v31;
    sub_268935590(v31, v29, &unk_2802A56E0, &unk_268B3CDF0);

    v47 = sub_268B350F4();
    v48 = *(v47 - 8);
    (*(v48 + 32))(v21, v29, v47);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v47);
    v49 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v49);
    v50 = v77;
    sub_268935590(v21, v77, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v47);
    v52 = v21;
    v82 = v47;
    v76 = v48;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688EF38C(v50, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v48 + 8))(v50, v47);
    }

    v53 = v89;
    v54 = v74;
    v55 = v85;
    sub_2688E2964();

    sub_2688EF38C(v55, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v52, &unk_2802A57B0, &unk_268B3CE00);
    (*(v84 + 8))(v54, v75);
    v56 = v88;
    __swift_project_boxed_opaque_existential_1(v88 + 13, v88[16]);
    sub_268948308(MEMORY[0x277D84F90]);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v57 = v90;
    v58 = __swift_project_value_buffer(v90, qword_2802CDA10);
    v59 = v80;
    (*(v53 + 16))(v80, v58, v57);
    v60 = sub_268B37A34();
    v61 = sub_268B37ED4();
    v62 = os_log_type_enabled(v60, v61);
    v63 = v86;
    if (v62)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_2688BB000, v60, v61, "SetPlaybackSpeedUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v64, 2u);
      MEMORY[0x26D6266E0](v64, -1, -1);
    }

    (*(v53 + 8))(v59, v57);
    v65 = v56[21];
    v66 = v56[22];
    __swift_project_boxed_opaque_existential_1(v56 + 18, v65);
    v67 = v63;
    v68 = v63;
    v69 = v79;
    sub_268935590(v67, v79, &unk_2802A56E0, &unk_268B3CDF0);
    v70 = *(v69 + *(v83 + 48));
    v71 = v81;
    sub_268A82B50(v87, v81);
    v72 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v71, 0, 1, v72);
    (*(v66 + 40))(v69, v70, v71, v92, v91, v65, v66);

    sub_2688EF38C(v71, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v68, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v76 + 8))(v69, v82);
  }
}

uint64_t sub_268934D98(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v63 = a7;
  v62 = a6;
  v61 = a5;
  v65 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v64 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v60 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v60 - v19;
  sub_268935590(a1, v66, &unk_2802A57C0, &qword_268B3BE00);
  v21 = v67;
  sub_2688EF38C(v66, &unk_2802A57C0, &qword_268B3BE00);
  if (v21 != 1)
  {
    return a2(a1);
  }

  v60[1] = a3;
  v22 = SetPlaybackSpeedSpeedMagnitudeUnsupportedReason.init(rawValue:)([a4 unsupportedReason]);
  if ((v23 & 1) == 0)
  {
    if (v22 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
      *(swift_initStackObject() + 16) = xmmword_268B3BBC0;
      OUTLINED_FUNCTION_3_10();
      *(v49 + 32) = 0xD000000000000010;
      *(v49 + 40) = v50;
      OUTLINED_FUNCTION_3_10();
      v51[9] = MEMORY[0x277D837D0];
      v51[6] = 0xD000000000000012;
      v51[7] = v52;
      v28 = sub_268B37B84();
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v53 = v65;
      v54 = __swift_project_value_buffer(v65, qword_2802CDA10);
      v55 = v64;
      (*(v64 + 16))(v18, v54, v53);
      v56 = sub_268B37A34();
      v57 = sub_268B37ED4();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_2688BB000, v56, v57, "Sending unsupportedCommand dialog", v58, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v55 + 8))(v18, v65);
      v59 = *(v61 + 56);
      v35 = "unsupportedCommand";
      v36 = v59[5];
      v37 = v59[6];
      __swift_project_boxed_opaque_existential_1(v59 + 2, v36);
      v38 = 0xD000000000000035;
      goto LABEL_22;
    }

    if (v22 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
      *(swift_initStackObject() + 16) = xmmword_268B3BBC0;
      OUTLINED_FUNCTION_3_10();
      *(v24 + 32) = 0xD000000000000010;
      *(v24 + 40) = v25;
      OUTLINED_FUNCTION_3_10();
      v26[9] = MEMORY[0x277D837D0];
      v26[6] = 0xD000000000000021;
      v26[7] = v27;
      v28 = sub_268B37B84();
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v29 = v65;
      v30 = __swift_project_value_buffer(v65, qword_2802CDA10);
      (*(v64 + 16))(v20, v30, v29);
      v31 = sub_268B37A34();
      v32 = sub_268B37ED4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2688BB000, v31, v32, "Sending unsupportedPlaybackSpeedRequested dialog", v33, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v64 + 8))(v20, v65);
      v34 = *(v61 + 56);
      v35 = "ackSpeedRequested";
      v36 = v34[5];
      v37 = v34[6];
      __swift_project_boxed_opaque_existential_1(v34 + 2, v36);
      v38 = 0xD000000000000032;
LABEL_22:
      sub_2689CE860(v38, v35 | 0x8000000000000000, v28, v62, v63, v36, v37);
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v40 = v65;
  v41 = __swift_project_value_buffer(v65, qword_2802CDA10);
  v42 = v64;
  (*(v64 + 16))(v15, v41, v40);
  v43 = a4;
  v44 = sub_268B37A34();
  v45 = sub_268B37EE4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134217984;
    *(v46 + 4) = [v43 &_OBJC_LABEL_PROTOCOL___OS_dispatch_source_timer + 4];

    _os_log_impl(&dword_2688BB000, v44, v45, "Received unrecognized unsupported Reason: %ld", v46, 0xCu);
    OUTLINED_FUNCTION_12();
  }

  else
  {

    v44 = v43;
  }

  (*(v42 + 8))(v15, v40);
  sub_2688C2ECC();
  v47 = swift_allocError();
  *v48 = 70;
  v66[0] = v47;
  v67 = 1;
  a2(v66);
  return sub_2688EF38C(v66, &unk_2802A57C0, &qword_268B3BE00);
}

uint64_t sub_268935404()
{
  v0 = sub_268A9AAA4();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t type metadata accessor for SetPlaybackSpeedUnsupportedValueStrategy(uint64_t a1)
{
  result = qword_2802A5F58;
  if (!qword_2802A5F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2689354B8()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_268935590(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id SetPlaybackSpeedIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SetPlaybackSpeedIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v27 = sub_268B36C44();
  sub_268B37204();
  v26 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v34);
  sub_268AD33CC(v33);
  sub_268B36754();
  v25 = sub_268B36734();
  v1 = sub_268B36C44();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = (v7 - v6);
  (*(v9 + 16))(v7 - v6);
  v10 = *v8;
  v31 = v0;
  v32 = MEMORY[0x277D5F680];
  *&v30 = v1;
  v11 = type metadata accessor for AnalyticsServiceLogger();
  v29[4] = &off_28795F5E0;
  v29[3] = v11;
  v29[0] = v10;
  v28[4] = &off_287960608;
  v28[3] = v2;
  v28[0] = v3;
  type metadata accessor for AnalyticsServiceImpl();
  v12 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v29, v11);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  __swift_mutable_project_boxed_opaque_existential_1(v28, v2);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v16;
  v24 = *v21;
  v12[5] = v11;
  v12[6] = &off_28795F5E0;
  v12[2] = v23;
  v12[21] = v2;
  v12[22] = &off_287960608;
  v12[18] = v24;
  sub_2688E6514(v33, (v12 + 7));
  v12[12] = v25;
  sub_2688E6514(&v30, (v12 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);

  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  sub_268B34C64();
  sub_26893B1C4(v27, v26, &v35, v12, v34);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268935A1C(void *a1, char *a2, void (**a3)(void, void *))
{
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v54 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v55 = &v54 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - v16;
  v58 = swift_allocObject();
  v59 = a3;
  *(v58 + 16) = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v19 = *(v7 + 16);
  v56 = v18;
  v57 = v19;
  (v19)(v17);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v54 = v13;
    v23 = v6;
    v24 = a2;
    v25 = a1;
    v26 = v7;
    v27 = v10;
    v28 = v22;
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "SetPlaybackSpeed.SetPlaybackSpeedIntentHandler.handle() called", v22, 2u);
    v29 = v28;
    v10 = v27;
    v7 = v26;
    a1 = v25;
    a2 = v24;
    v6 = v23;
    v13 = v54;
    MEMORY[0x26D6266E0](v29, -1, -1);
  }

  v30 = *(v7 + 8);
  v30(v17, v6);
  if (!sub_268B18100(a1))
  {
    goto LABEL_14;
  }

  if (!sub_2688EFD0C())
  {

LABEL_14:
    v39 = v55;
    v57(v55, v56, v6);
    v40 = sub_268B37A34();
    v41 = sub_268B37EE4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2688BB000, v40, v41, "No devices found in SetPlaybackSpeedIntent, returning failure", v42, 2u);
      MEMORY[0x26D6266E0](v42, -1, -1);
    }

    v30(v39, v6);
    goto LABEL_21;
  }

  sub_268921344();
  v32 = v31;

  if (!*(v32 + 16))
  {

    v57(v13, v56, v6);
    v48 = sub_268B37A34();
    v49 = sub_268B37EE4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2688BB000, v48, v49, "Missing routeId in intent, returning failure", v50, 2u);
      MEMORY[0x26D6266E0](v50, -1, -1);
    }

    v30(v13, v6);
    goto LABEL_21;
  }

  if ([a1 playbackSpeedType] == 3)
  {
    [a1 speedMagnitude];
    if (v33 == 0.0)
    {

      v57(v10, v56, v6);
      v34 = sub_268B37A34();
      v35 = sub_268B37EE4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = v10;
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2688BB000, v34, v35, "Missing playbackSpeed in intent, returning failure", v37, 2u);
        v38 = v37;
        v10 = v36;
        MEMORY[0x26D6266E0](v38, -1, -1);
      }

      v30(v10, v6);
LABEL_21:
      v51 = sub_268B36EA4();
      objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
      v52 = v51;
      v53 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(5, v51);
      v47 = v59;
      v59[2](v59, v53);

      goto LABEL_22;
    }
  }

  __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 24]);
  v43 = swift_allocObject();
  v44 = v58;
  v43[2] = sub_26892D9D4;
  v43[3] = v44;
  v43[4] = a2;
  v43[5] = a1;
  v43[6] = v32;

  v45 = a2;
  v46 = a1;
  sub_268B36CA4();

  v47 = v59;
LABEL_22:
  _Block_release(v47);
}

void sub_26893608C()
{
  OUTLINED_FUNCTION_26();
  v52 = v0;
  v53 = v1;
  v54 = v2;
  v55 = v3;
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v51 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v50 = v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v16 = __swift_project_value_buffer(v4, qword_2802CDA10);
  v17 = *(v6 + 16);
  v17(v0, v16, v4);
  v18 = sub_268B37A34();
  v19 = sub_268B37F04();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_14();
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "SetPlaybackSpeed.SetPlaybackSpeedIntentHandler.handle() called", v20, 2u);
    OUTLINED_FUNCTION_12();
  }

  v21 = *(v6 + 8);
  v21(v0, v4);
  if (!sub_268B18100(v53))
  {
    goto LABEL_14;
  }

  if (!sub_2688EFD0C())
  {

LABEL_14:
    v31 = OUTLINED_FUNCTION_11_6();
    (v17)(v31);
    v32 = sub_268B37A34();
    v33 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v33))
    {
      v34 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v34);
      OUTLINED_FUNCTION_10_7(&dword_2688BB000, v35, v36, "No devices found in SetPlaybackSpeedIntent, returning failure");
      OUTLINED_FUNCTION_12();
    }

    v21(v10, v4);
    goto LABEL_21;
  }

  sub_268921344();
  v23 = v22;

  if (!*(v23 + 16))
  {

    v40 = OUTLINED_FUNCTION_11_6();
    (v17)(v40);
    v41 = sub_268B37A34();
    v42 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v42))
    {
      v43 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v43);
      OUTLINED_FUNCTION_10_7(&dword_2688BB000, v44, v45, "Missing routeId in intent, returning failure");
      OUTLINED_FUNCTION_12();
    }

    v21(v51, v4);
    goto LABEL_21;
  }

  if ([v53 playbackSpeedType] == 3)
  {
    [v53 speedMagnitude];
    if (v24 == 0.0)
    {

      v25 = OUTLINED_FUNCTION_11_6();
      (v17)(v25);
      v26 = sub_268B37A34();
      v27 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_196(v27))
      {
        v28 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v28);
        OUTLINED_FUNCTION_10_7(&dword_2688BB000, v29, v30, "Missing playbackSpeed in intent, returning failure");
        OUTLINED_FUNCTION_12();
      }

      v21(v50, v4);
LABEL_21:
      v46 = sub_268B36EA4();
      v47 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
      v48 = v46;
      v49 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(5, v46);
      v54();

      goto LABEL_22;
    }
  }

  __swift_project_boxed_opaque_existential_1(&v52[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController], *&v52[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 24]);
  v37 = swift_allocObject();
  v37[2] = v54;
  v37[3] = v55;
  v37[4] = v52;
  v37[5] = v53;
  v37[6] = v23;

  v38 = v52;
  v39 = v53;
  sub_268B36CA4();

LABEL_22:
  OUTLINED_FUNCTION_23();
}

void sub_268936580(char a1, int a2, void (*a3)(void), uint64_t a4, int a5, id a6, uint64_t a7)
{
  if (a1)
  {
    v11 = [a6 playbackSpeedType];
    [a6 speedMagnitude];
    sub_26893988C(v11, a7, a3, a4, v12);
  }

  else
  {
    v13 = sub_268B36EA4();
    v14 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
    v15 = v13;
    v16 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(5, v13);
    a3();
  }
}

void sub_2689366BC(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
  v5 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_268936728(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
  v4 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_2689367B4(void *a1, char *a2, void (**a3)(void, id))
{
  v42 = a2;
  v45 = a1;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v43 = swift_allocObject();
  v44 = a3;
  *(v43 + 16) = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_2802CDA10);
  v14 = *(v5 + 16);
  v14(v12, v13, v4);
  v15 = sub_268B37A34();
  v16 = sub_268B37F04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "SetPlaybackSpeed.SetPlaybackSpeedIntentHandler.resolveSpeedMagnitude() called", v17, 2u);
    MEMORY[0x26D6266E0](v17, -1, -1);
  }

  v18 = *(v5 + 8);
  v18(v12, v4);
  v19 = v45;
  if ([v45 playbackSpeedType] == 3)
  {
    v20 = sub_268B18100(v19);
    v21 = v41;
    if (v20)
    {
      sub_268921344();
      v23 = v22;

      if (*(v23 + 16))
      {

LABEL_16:
        v34 = v42;
        __swift_project_boxed_opaque_existential_1(&v42[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController], *&v42[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 24]);
        v35 = swift_allocObject();
        v36 = v43;
        v35[2] = sub_26892DC18;
        v35[3] = v36;
        v37 = v45;
        v35[4] = v45;
        v35[5] = v34;

        v38 = v37;
        v39 = v34;
        sub_268B36CA4();

        v30 = v44;
        goto LABEL_17;
      }
    }

    v14(v21, v13, v4);
    v31 = sub_268B37A34();
    v32 = sub_268B37F04();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2688BB000, v31, v32, "intent.devices is empty, using localDevice to check supported speeds", v33, 2u);
      MEMORY[0x26D6266E0](v33, -1, -1);
    }

    v18(v21, v4);
    sub_268B36C54();
    sub_268B36C24();
    goto LABEL_16;
  }

  v14(v10, v13, v4);
  v24 = sub_268B37A34();
  v25 = sub_268B37F04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2688BB000, v24, v25, "No need to resolve speed magnitude for relative speed change. Returning success.", v26, 2u);
    v27 = v26;
    v19 = v45;
    MEMORY[0x26D6266E0](v27, -1, -1);
  }

  v18(v10, v4);
  type metadata accessor for SetPlaybackSpeedSpeedMagnitudeResolutionResult();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [v19 speedMagnitude];
  v29 = [ObjCClassFromMetadata successWithResolvedValue_];
  v30 = v44;
  v44[2](v44, v29);

LABEL_17:
  _Block_release(v30);
}

void sub_268936CC0()
{
  OUTLINED_FUNCTION_26();
  v37 = v0;
  v38 = v1;
  v39 = v2;
  v4 = v3;
  v5 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_0();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v36 = v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v15 = __swift_project_value_buffer(v5, qword_2802CDA10);
  v16 = *(v7 + 16);
  v16(v0, v15, v5);
  v17 = sub_268B37A34();
  v18 = sub_268B37F04();
  v40 = v4;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_14();
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "SetPlaybackSpeed.SetPlaybackSpeedIntentHandler.resolveSpeedMagnitude() called", v19, 2u);
    OUTLINED_FUNCTION_12();
  }

  v20 = *(v7 + 8);
  v20(v0, v5);
  if ([v4 playbackSpeedType] == 3)
  {
    if (sub_268B18100(v4))
    {
      sub_268921344();
      v22 = v21;

      if (*(v22 + 16))
      {

LABEL_16:
        __swift_project_boxed_opaque_existential_1(&v37[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController], *&v37[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 24]);
        v33 = swift_allocObject();
        v33[2] = v38;
        v33[3] = v39;
        v33[4] = v4;
        v33[5] = v37;

        v34 = v4;
        v35 = v37;
        sub_268B36CA4();

        goto LABEL_17;
      }
    }

    v16(v36, v15, v5);
    v29 = sub_268B37A34();
    v30 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v30))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_78_0(&dword_2688BB000, v31, v32, "intent.devices is empty, using localDevice to check supported speeds");
      OUTLINED_FUNCTION_12();
    }

    v20(v36, v5);
    sub_268B36C54();
    sub_268B36C24();
    goto LABEL_16;
  }

  v16(v11, v15, v5);
  v23 = sub_268B37A34();
  v24 = sub_268B37F04();
  if (OUTLINED_FUNCTION_196(v24))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_78_0(&dword_2688BB000, v25, v26, "No need to resolve speed magnitude for relative speed change. Returning success.");
    OUTLINED_FUNCTION_12();
  }

  v20(v11, v5);
  type metadata accessor for SetPlaybackSpeedSpeedMagnitudeResolutionResult();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [v40 speedMagnitude];
  v28 = [ObjCClassFromMetadata successWithResolvedValue_];
  v38();

LABEL_17:
  OUTLINED_FUNCTION_23();
}

void sub_2689370CC(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v33 = a3;
    v14 = *(a2 + 16);
    v15 = 32;
    while (v14)
    {
      v16 = *(a2 + v15);
      [a5 speedMagnitude];
      v15 += 8;
      --v14;
      if (v16 == v17)
      {
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v18 = __swift_project_value_buffer(v10, qword_2802CDA10);
        (*(v11 + 16))(v13, v18, v10);
        v19 = a5;
        v20 = sub_268B37A34();
        v21 = sub_268B37F04();

        v22 = os_log_type_enabled(v20, v21);
        v23 = v33;
        if (v22)
        {
          v24 = swift_slowAlloc();
          *v24 = 134217984;
          [v19 speedMagnitude];
          *(v24 + 4) = v25;
          _os_log_impl(&dword_2688BB000, v20, v21, "%f speed is supported", v24, 0xCu);
          MEMORY[0x26D6266E0](v24, -1, -1);
        }

        (*(v11 + 8))(v13, v10);
        type metadata accessor for SetPlaybackSpeedSpeedMagnitudeResolutionResult();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        [v19 speedMagnitude];
        v27 = [ObjCClassFromMetadata successWithResolvedValue_];
        v23();

        return;
      }
    }

    v29 = swift_allocObject();
    v30 = v33;
    v29[2] = a5;
    v29[3] = v30;
    v29[4] = a4;
    v31 = a5;

    sub_268939174(v31, a2, sub_26893B88C, v29, 0.5);
  }

  else
  {
    type metadata accessor for SetPlaybackSpeedSpeedMagnitudeResolutionResult();
    v33 = sub_268B1CD38(2);
    a3();
    v28 = v33;
  }
}

void sub_268937428(uint64_t a1, char a2, void *a3, void (*a4)(void))
{
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  if (a2)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v8, qword_2802CDA10);
    (*(v9 + 16))(v12, v15, v8);
    v16 = a3;
    v17 = sub_268B37A34();
    v18 = sub_268B37EE4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134218240;
      [v16 speedMagnitude];
      *(v19 + 4) = v20;
      *(v19 + 12) = 2048;
      [v16 speedMagnitude];
      *(v19 + 14) = v21;
      _os_log_impl(&dword_2688BB000, v17, v18, "%f speed is not supported. No supported speed is within 0.5 of the requested speed: %f", v19, 0x16u);
      MEMORY[0x26D6266E0](v19, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    type metadata accessor for SetPlaybackSpeedSpeedMagnitudeResolutionResult();
    v22 = sub_268B1CD38(1);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v8, qword_2802CDA10);
    (*(v9 + 16))(v14, v23, v8);
    v24 = a3;
    v25 = sub_268B37A34();
    v26 = sub_268B37F04();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134218240;
      [v24 speedMagnitude];
      *(v27 + 4) = v28;
      *(v27 + 12) = 2048;
      *(v27 + 14) = a1;
      _os_log_impl(&dword_2688BB000, v25, v26, "%f speed is not supported. Returning closest speed: %f", v27, 0x16u);
      MEMORY[0x26D6266E0](v27, -1, -1);
    }

    (*(v9 + 8))(v14, v8);
    type metadata accessor for SetPlaybackSpeedSpeedMagnitudeResolutionResult();
    v22 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];
  }

  v29 = v22;
  a4();
}

void sub_2689377CC(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
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
    v28 = v11;
    v16 = v12;
    v17 = a1;
    v18 = a3;
    v19 = v15;
    *v15 = 0;
    _os_log_impl(&dword_2688BB000, v13, v14, "SetPlaybackSpeed.SetPlaybackSpeedIntentHandler.resolvePlaybackSpeedType() called", v15, 2u);
    v20 = v19;
    a3 = v18;
    a1 = v17;
    v12 = v16;
    v11 = v28;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  v21 = *(v6 + 8);
  v21(v10, v5);
  if ([a1 playbackSpeedType])
  {
    type metadata accessor for PlaybackSpeedTypeResolutionResult();
    v22 = [a1 playbackSpeedType];
  }

  else
  {
    v23 = v29;
    v12(v29, v11, v5);
    v24 = sub_268B37A34();
    v25 = sub_268B37EE4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2688BB000, v24, v25, "Received unknown playbackSpeed type.", v26, 2u);
      MEMORY[0x26D6266E0](v26, -1, -1);
    }

    v21(v23, v5);
    type metadata accessor for PlaybackSpeedTypeResolutionResult();
    v22 = 1;
  }

  v27 = sub_268B28C94(v22);
  (a3)[2](a3, v27);

  _Block_release(a3);
}

void sub_268937AC4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v5 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v13 = __swift_project_value_buffer(v5, qword_2802CDA10);
  v23 = *(v7 + 16);
  v24 = v13;
  v23(v0);
  v14 = sub_268B37A34();
  v15 = sub_268B37F04();
  if (os_log_type_enabled(v14, v15))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v16, v17, "SetPlaybackSpeed.SetPlaybackSpeedIntentHandler.resolvePlaybackSpeedType() called");
    OUTLINED_FUNCTION_12();
  }

  v18 = *(v7 + 8);
  v18(v0, v5);
  if ([v4 playbackSpeedType])
  {
    type metadata accessor for PlaybackSpeedTypeResolutionResult();
    v19 = sub_268B28C94([v4 playbackSpeedType]);
  }

  else
  {
    (v23)(v11, v24, v5);
    v20 = sub_268B37A34();
    v21 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v21))
    {
      v22 = OUTLINED_FUNCTION_14();
      *v22 = 0;
      _os_log_impl(&dword_2688BB000, v20, v21, "Received unknown playbackSpeed type.", v22, 2u);
      OUTLINED_FUNCTION_12();
    }

    v18(v11, v5);
    type metadata accessor for PlaybackSpeedTypeResolutionResult();
    v19 = sub_268B28C94(1);
  }

  v2(v19);

  OUTLINED_FUNCTION_23();
}

void sub_268937D60(void *a1, char *a2, void (**a3)(void, void))
{
  v64 = a2;
  v5 = sub_268B36C04();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v58 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v62 = &v56 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v56 - v16;
  v63 = swift_allocObject();
  *(v63 + 16) = a3;
  v65 = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v7, qword_2802CDA10);
  v19 = *(v8 + 16);
  v19(v17, v18, v7);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v57 = v18;
    v23 = v19;
    v24 = v7;
    v25 = v8;
    v26 = v15;
    v27 = v22;
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "SetPlaybackSpeedIntentHandler.resolveDevices() called", v22, 2u);
    v28 = v27;
    v15 = v26;
    v8 = v25;
    v7 = v24;
    v19 = v23;
    v18 = v57;
    MEMORY[0x26D6266E0](v28, -1, -1);
  }

  v29 = *(v8 + 8);
  v29(v17, v7);
  if ((sub_268921060() & 1) != 0 && (__swift_project_boxed_opaque_existential_1(&v64[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceState], *&v64[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceState + 24]), (sub_2688C3240() & 1) == 0))
  {
    v19(v15, v18, v7);
    v51 = sub_268B37A34();
    v52 = sub_268B37EE4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2688BB000, v51, v52, "Whole House Audio requests are unsupported on this platform", v53, 2u);
      MEMORY[0x26D6266E0](v53, -1, -1);
    }

    v29(v15, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetPlaybackSpeedDevicesResolutionResult();
    *(v54 + 32) = sub_268B17B04(1);
    v55 = sub_268B37CE4();
    (v65)[2](v65, v55);
  }

  else if (sub_268B18120(a1))
  {
    v19(v62, v18, v7);
    v30 = sub_268B37A34();
    v31 = sub_268B37F04();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2688BB000, v30, v31, "SetPlaybackSpeedIntentHandler#resolveDevices resolving devices from device queries", v32, 2u);
      MEMORY[0x26D6266E0](v32, -1, -1);
    }

    v29(v62, v7);
    v33 = v64;
    sub_268920A60();

    v35 = v59;
    v34 = v60;
    v36 = v61;
    (*(v60 + 104))(v59, *MEMORY[0x277D5F650], v61);
    [a1 mediaType];
    v37 = swift_allocObject();
    v38 = v63;
    v37[2] = sub_26893B7E4;
    v37[3] = v38;
    v37[4] = v33;

    v39 = v33;
    sub_2688F80CC();

    (*(v34 + 8))(v35, v36);
  }

  else
  {
    v40 = v58;
    v19(v58, v18, v7);
    v41 = sub_268B37A34();
    v42 = sub_268B37F04();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2688BB000, v41, v42, "SetPlaybackSpeedIntentHandler#resolveDevices intent does not have disambiguated devices or device queries. Sending local device.", v43, 2u);
      MEMORY[0x26D6266E0](v43, -1, -1);
    }

    v29(v40, v7);
    type metadata accessor for DeviceContext();
    v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v45 = sub_26893A824(0, 0xE000000000000000, 0, 0xE000000000000000);
    [v45 setProximity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetPlaybackSpeedDevicesResolutionResult();
    v47 = v45;
    v48 = sub_268901CB8(v45);

    v49 = sub_268B2CC98(v48);
    *(v46 + 32) = v49;
    v50 = sub_268B37CE4();
    (v65)[2](v65, v50);
  }

  _Block_release(v65);
}

void sub_2689384F8()
{
  OUTLINED_FUNCTION_26();
  v59 = v1;
  v60 = v0;
  v58 = v2;
  v4 = v3;
  sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v55 = v6;
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v54 = v8 - v7;
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v53 = (v13 - v14);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v57 = v16;
  OUTLINED_FUNCTION_8();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v52 - v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v21 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v22 = *(v11 + 16);
  OUTLINED_FUNCTION_20_4();
  v22();
  v23 = sub_268B37A34();
  v24 = sub_268B37F04();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_14();
    v52[1] = v21;
    *v25 = 0;
    _os_log_impl(&dword_2688BB000, v23, v24, "SetPlaybackSpeedIntentHandler.resolveDevices() called", v25, 2u);
    OUTLINED_FUNCTION_12();
  }

  v26 = *(v11 + 8);
  v26(v0, v9);
  if (sub_268921060())
  {
    __swift_project_boxed_opaque_existential_1(&v60[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceState], *&v60[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceState + 24]);
    if ((sub_2688C3240() & 1) == 0)
    {
      OUTLINED_FUNCTION_20_4();
      v22();
      v47 = sub_268B37A34();
      v48 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v48))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_23_4(&dword_2688BB000, v49, v50, "Whole House Audio requests are unsupported on this platform");
        OUTLINED_FUNCTION_12();
      }

      v26(v20, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_268B3BBA0;
      type metadata accessor for SetPlaybackSpeedDevicesResolutionResult();
      *(v51 + 32) = sub_268B17B04(1);
      v59(v51);
      goto LABEL_17;
    }
  }

  if (!sub_268B18120(v4))
  {
    v37 = v53;
    OUTLINED_FUNCTION_20_4();
    v22();
    v38 = sub_268B37A34();
    v39 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v39))
    {
      v40 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v40);
      _os_log_impl(&dword_2688BB000, v38, v37, "SetPlaybackSpeedIntentHandler#resolveDevices intent does not have disambiguated devices or device queries. Sending local device.", v4, 2u);
      OUTLINED_FUNCTION_12();
    }

    v26(v37, v9);
    type metadata accessor for DeviceContext();
    v41 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v42 = sub_26893A824(0, 0xE000000000000000, 0, 0xE000000000000000);
    [v42 setProximity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetPlaybackSpeedDevicesResolutionResult();
    v44 = v42;
    v45 = sub_268901CB8(v42);

    v46 = sub_268B2CC98(v45);
    *(v43 + 32) = v46;
    v59(v43);

LABEL_17:

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_20_4();
  v22();
  v27 = sub_268B37A34();
  v28 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v28))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_23_4(&dword_2688BB000, v29, v30, "SetPlaybackSpeedIntentHandler#resolveDevices resolving devices from device queries");
    OUTLINED_FUNCTION_12();
  }

  v26(v57, v9);
  v31 = v60;
  sub_268920A60();

  v33 = v54;
  v32 = v55;
  v34 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x277D5F650], v56);
  [(uint8_t *)v4 mediaType];
  OUTLINED_FUNCTION_220();
  v35 = swift_allocObject();
  v35[2] = v59;
  v35[3] = v58;
  v35[4] = v31;

  v36 = v31;
  sub_2688F80CC();

  (*(v32 + 8))(v33, v34);
LABEL_18:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268938B04(uint64_t a1, char a2, void (*a3)(void), void *a4)
{
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  if (a2)
  {
    v48 = a4;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v8, qword_2802CDA10);
    (*(v9 + 16))(v12, v15, v8);
    v16 = sub_268B37A34();
    v17 = sub_268B37EE4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v47 = a3;
      v19 = v18;
      v20 = swift_slowAlloc();
      v50 = v20;
      *v19 = 136315138;
      v49 = a1 & 1;
      sub_26890C84C();
      v21 = sub_268B384A4();
      v23 = sub_26892CDB8(v21, v22, &v50);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2688BB000, v16, v17, "SetPlaybackSpeedIntentHandler#resolveDevices Error resolving devices: %s. Returning local device", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x26D6266E0](v20, -1, -1);
      v24 = v19;
      a3 = v47;
      MEMORY[0x26D6266E0](v24, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    type metadata accessor for DeviceContext();
    v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v26 = sub_26893A824(0, 0xE000000000000000, 0, 0xE000000000000000);
    [v26 setProximity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetPlaybackSpeedDevicesResolutionResult();
    v28 = v26;
    v29 = sub_268901CB8(v26);

    v30 = sub_268B2CC98(v29);
    *(v27 + 32) = v30;
    a3(v27);
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v8, qword_2802CDA10);
  (*(v9 + 16))(v14, v31, v8);

  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  sub_26890C840(a1, 0);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50 = v48;
    *v34 = 136315138;
    v35 = type metadata accessor for Device();
    v36 = MEMORY[0x26D6256F0](a1, v35);
    LODWORD(v47) = v33;
    v38 = sub_26892CDB8(v36, v37, &v50);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_2688BB000, v32, v47, "SetPlaybackSpeedIntentHandler#resolveDevices Success resolving devices: %s", v34, 0xCu);
    v39 = v48;
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    MEMORY[0x26D6266E0](v39, -1, -1);
    MEMORY[0x26D6266E0](v34, -1, -1);
  }

  (*(v9 + 8))(v14, v8);
  v40 = sub_2688EFD0C();
  v41 = MEMORY[0x277D84F90];
  if (!v40)
  {
LABEL_19:
    a3(v41);
  }

  v42 = v40;
  v50 = MEMORY[0x277D84F90];
  result = sub_268B38234();
  if ((v42 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SetPlaybackSpeedDevicesResolutionResult();
    v44 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x26D625BD0](v44, a1);
      }

      else
      {
        v45 = *(a1 + 8 * v44 + 32);
      }

      v46 = v45;
      ++v44;
      sub_268B2CC98(v45);

      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v42 != v44);
    v41 = v50;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void sub_26893907C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_268939108(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SetPlaybackSpeedDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_268939174(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v12 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v19 = __swift_project_value_buffer(v12, qword_2802CDA10);
  (*(v14 + 16))(v18, v19, v12);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v22, v23, "SetPlaybackSpeed.SetPlaybackSpeedIntentHandler.getClosestPlaybackSpeed() called");
    OUTLINED_FUNCTION_12();
  }

  (*(v14 + 8))(v18, v12);
  v28 = a2;

  sub_26893A8B8(&v28);
  v24 = v28;
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController), *(v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 24));
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  *(v25 + 32) = v24;
  *(v25 + 40) = a1;
  *(v25 + 48) = a2;
  *(v25 + 56) = a5;

  v26 = a1;
  sub_268B36C94();
}

id sub_2689393C8(uint64_t a1, uint64_t (*a2)(void, void), double a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v13 = sub_268B37A54();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v20 = &v58 - v19;
  if ((a1 & 0x100000000) != 0)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v13, qword_2802CDA10);
    (*(v14 + 16))(v20, v25, v13);
    v26 = sub_268B37A34();
    v27 = sub_268B37F04();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "PlaybackRate is nil", v28, 2u);
      MEMORY[0x26D6266E0](v28, -1, -1);
    }

    (*(v14 + 8))(v20, v13);
    goto LABEL_13;
  }

  LODWORD(v18) = a1;
  if (*&a1 == 0.0)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v13, qword_2802CDA10);
    (*(v14 + 16))(v17, v21, v13);
    v22 = sub_268B37A34();
    v23 = sub_268B37F04();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2688BB000, v22, v23, "PlaybackRate is 0", v24, 2u);
      MEMORY[0x26D6266E0](v24, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
    goto LABEL_13;
  }

  v59 = a2;
  v32 = 0;
  v33 = 0;
  v34 = *&a1;
  v35 = *(a5 + 16);
  v36 = a5 + 32;
  v37 = -1;
  while (v35 != v33)
  {
    v38 = v33 + 1;
    v39 = *(v36 + 8 * v33);
    v37 = v33 - 1;
    [a6 speedMagnitude];
    v32 = v33++;
    if (v18 < v39)
    {
      v37 = v38 - 2;
      v32 = v38 - 1;
      break;
    }
  }

  if (v32 >= v35)
  {
    result = [a6 speedMagnitude];
    if (v37 >= v35)
    {
      __break(1u);
      goto LABEL_61;
    }

    a2 = v59;
    if (vabdd_f64(v49, *(v36 + 8 * v37)) > a3)
    {
      goto LABEL_13;
    }

    v29 = *(v36 + 8 * v37);
LABEL_59:
    v30 = 0;
    return a2(*&v29, v30);
  }

  result = [a6 speedMagnitude];
  v41 = v40;
  if ((v37 & 0x8000000000000000) != 0)
  {
    if (v32 >= v35)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v50 = *(v36 + 8 * v32);
    a2 = v59;
    if (vabdd_f64(v41, v50) > a3)
    {
      goto LABEL_13;
    }

    v29 = v50;
    goto LABEL_59;
  }

  v42 = *(v36 + 8 * v32);
  result = [a6 speedMagnitude];
  if (v37 >= v35)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v44 = *(a7 + 16);
  if (v32 >= v44)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v45 = *(v36 + 8 * v37);
  v46 = vabdd_f64(v43, v45);
  if (*(a7 + 32 + 8 * v32) != v34)
  {
    a2 = v59;
    if (v37 < v44)
    {
      v51 = vabdd_f64(v41, v42);
      if (*(a7 + 32 + 8 * v37) == v34)
      {
        if (v51 <= a3)
        {
LABEL_57:
          v29 = v42;
          goto LABEL_59;
        }
      }

      else
      {
        if (v51 < v46 && v51 <= a3)
        {
          goto LABEL_57;
        }

        v53 = v46 >= v51 || v46 > a3;
        if (!v53 || (([a6 speedMagnitude], v54 < v34) ? (v55 = v46 > a3) : (v55 = 1), !v55))
        {
          v29 = v45;
          goto LABEL_59;
        }

        [a6 speedMagnitude];
        if (v56 > v34 && v51 <= a3)
        {
          goto LABEL_57;
        }
      }

LABEL_13:
      v29 = 0.0;
      v30 = 1;
      return a2(*&v29, v30);
    }

LABEL_64:
    __break(1u);
    return result;
  }

  if (v46 <= a3)
  {
    v47 = *(v36 + 8 * v37);
    v48 = 0;
  }

  else
  {
    v47 = 0;
    v48 = 1;
  }

  return v59(v47, v48);
}

uint64_t sub_26893988C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v39[1] = a2;
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_0();
  v17 = v15 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v39 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v39 - v22;
  OUTLINED_FUNCTION_220();
  v24 = swift_allocObject();
  v24[2] = a3;
  v24[3] = a4;
  v24[4] = a1;
  v25 = qword_2802A4F30;

  if (a1 == 1)
  {
    if (v25 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v11, qword_2802CDA10);
    OUTLINED_FUNCTION_13_5();
    v30(v21);
    v31 = sub_268B37A34();
    v32 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v32))
    {
      v33 = OUTLINED_FUNCTION_14();
      *v33 = 0;
      _os_log_impl(&dword_2688BB000, v31, v32, "Calling setPlaybackSpeedFaster", v33, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v13 + 8))(v21, v11);
    __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController), *(v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 24));
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_12_6();
    sub_268B36C74();
  }

  else if (a1 == 2)
  {
    if (v25 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v11, qword_2802CDA10);
    OUTLINED_FUNCTION_13_5();
    v26(v23);
    v27 = sub_268B37A34();
    v28 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v28))
    {
      v29 = OUTLINED_FUNCTION_14();
      *v29 = 0;
      _os_log_impl(&dword_2688BB000, v27, v28, "Calling setPlaybackSpeedSlower", v29, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v13 + 8))(v23, v11);
    __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController), *(v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 24));
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_12_6();
    sub_268B36C84();
  }

  else
  {
    if (v25 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v11, qword_2802CDA10);
    OUTLINED_FUNCTION_13_5();
    v34(v17);
    v35 = sub_268B37A34();
    v36 = sub_268B37F04();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = a5;
      _os_log_impl(&dword_2688BB000, v35, v36, "Setting playback rate: %f for playbackSpeedType: setToValue", v37, 0xCu);
      OUTLINED_FUNCTION_12();
    }

    (*(v13 + 8))(v17, v11);
    __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController), *(v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 24));
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_12_6();
    sub_268B36C64();
  }
}

void sub_268939C78(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v113 = a4;
  v119 = a3;
  v6 = sub_268B36F24();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v114 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v106 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v106 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v106 - v16;
  v120 = sub_268B37A54();
  v118 = *(v120 - 8);
  v18 = MEMORY[0x28223BE20](v120);
  v117 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v111 = &v106 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v110 = &v106 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v109 = &v106 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v106 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  MEMORY[0x28223BE20](v28);
  v30 = &v106 - v29;
  v116 = a1;
  sub_26893B66C(a1, &v106 - v29);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v112 = a2;
    (*(v7 + 32))(v17, v30, v6);
    v115 = v17;
    sub_268B36EC4();
    v31 = *(v7 + 16);
    v108 = v15;
    v31(v12, v15, v6);
    v32 = (*(v7 + 88))(v12, v6);
    v33 = *MEMORY[0x277D5F6D0];
    v34 = v12;
    v35 = v6;
    v107 = *(v7 + 8);
    v107(v34, v6);
    v36 = v7 + 8;
    if (v32 == v33)
    {
      v37 = v118;
      if (v113 == 1)
      {
        v82 = v112;
        v83 = v115;
        v84 = v120;
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v85 = __swift_project_value_buffer(v84, qword_2802CDA10);
        v86 = v110;
        (*(v37 + 16))(v110, v85, v84);
        v87 = sub_268B37A34();
        v88 = sub_268B37F04();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&dword_2688BB000, v87, v88, "Received requestParametersOutOfBounds while setting the playback rate to faster.", v89, 2u);
          MEMORY[0x26D6266E0](v89, -1, -1);
        }

        (*(v37 + 8))(v86, v120);
        v90 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
        v91 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(100, 0);
        v82();

        v92 = v107;
        v107(v108, v35);
        v92(v83, v35);
      }

      else
      {
        v38 = v112;
        v39 = v115;
        v40 = v120;
        if (v113 == 2)
        {
          if (qword_2802A4F30 != -1)
          {
            swift_once();
          }

          v41 = __swift_project_value_buffer(v40, qword_2802CDA10);
          v42 = v109;
          (*(v37 + 16))(v109, v41, v40);
          v43 = sub_268B37A34();
          v44 = sub_268B37F04();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = 0;
            _os_log_impl(&dword_2688BB000, v43, v44, "Received requestParametersOutOfBounds while setting the playback rate to slower.", v45, 2u);
            MEMORY[0x26D6266E0](v45, -1, -1);
          }

          (*(v37 + 8))(v42, v40);
          v46 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
          v47 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(101, 0);
          v38();

          v48 = v107;
          v107(v108, v35);
          v48(v39, v35);
        }

        else
        {
          if (qword_2802A4F30 != -1)
          {
            swift_once();
          }

          v93 = __swift_project_value_buffer(v40, qword_2802CDA10);
          v94 = v111;
          (*(v37 + 16))(v111, v93, v40);
          v95 = sub_268B37A34();
          v96 = sub_268B37EE4();
          v97 = os_log_type_enabled(v95, v96);
          v98 = v35;
          v99 = v108;
          if (v97)
          {
            v100 = swift_slowAlloc();
            *v100 = 0;
            _os_log_impl(&dword_2688BB000, v95, v96, "Received requestParametersOutOfBounds while setting the playback rate", v100, 2u);
            MEMORY[0x26D6266E0](v100, -1, -1);
          }

          (*(v37 + 8))(v94, v120);
          v101 = sub_268B36ED4();
          v102 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
          v103 = v101;
          v104 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(5, v101);
          v38();

          v105 = v107;
          v107(v99, v98);
          v105(v39, v98);
        }
      }
    }

    else
    {
      v58 = v118;
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v59 = v120;
      v60 = __swift_project_value_buffer(v120, qword_2802CDA10);
      v61 = v117;
      (*(v58 + 16))(v117, v60, v59);
      v62 = v114;
      v63 = v35;
      v31(v114, v115, v35);
      v64 = sub_268B37A34();
      v65 = sub_268B37EE4();
      v66 = os_log_type_enabled(v64, v65);
      v67 = v112;
      if (v66)
      {
        v68 = v62;
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v113 = v36;
        v71 = v70;
        v121 = v70;
        *v69 = 136315138;
        sub_26893B6DC();
        v72 = sub_268B384A4();
        v74 = v73;
        v75 = v68;
        v76 = v107;
        v107(v75, v63);
        v77 = sub_26892CDB8(v72, v74, &v121);
        v67 = v112;

        *(v69 + 4) = v77;
        _os_log_impl(&dword_2688BB000, v64, v65, "Unknown Error while setting the playback rate: %s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v71);
        MEMORY[0x26D6266E0](v71, -1, -1);
        MEMORY[0x26D6266E0](v69, -1, -1);

        (*(v58 + 8))(v117, v59);
      }

      else
      {

        v76 = v107;
        v107(v62, v63);
        (*(v58 + 8))(v61, v59);
      }

      v78 = sub_268B36ED4();
      v79 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
      v80 = v78;
      v81 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(5, v78);
      v67();

      v76(v108, v63);
      v76(v115, v63);
    }
  }

  else
  {
    v49 = a2;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v50 = v120;
    v51 = __swift_project_value_buffer(v120, qword_2802CDA10);
    v52 = v118;
    (*(v118 + 16))(v27, v51, v50);
    v53 = sub_268B37A34();
    v54 = sub_268B37F04();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2688BB000, v53, v54, "Playback rate updated.", v55, 2u);
      MEMORY[0x26D6266E0](v55, -1, -1);
    }

    (*(v52 + 8))(v27, v50);
    v56 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
    v57 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(4, 0);
    v49();
  }
}

id SetPlaybackSpeedIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetPlaybackSpeedIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_26893A824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_268B37BC4();

  v7 = [v4 initWithIdentifier:v5 displayString:v6];

  return v7;
}

uint64_t sub_26893A8B8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2688E170C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_26893A924(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_26893A924(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_268B383F4();
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
        v6 = sub_268B37D34();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_26893AA74(v7, v8, a1, v4);
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
    return sub_26893AA18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26893AA18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
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

void sub_26893AA74(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v79 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v74 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
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

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v76 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268987C84();
        v7 = v72;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_268987C84();
        v7 = v73;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v77 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
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

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_26893B050((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v77);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v76;
      a4 = v74;
      if (v76 >= v5)
      {
        v79 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_26893AF24(&v79, *result, a3);
LABEL_89:
}

uint64_t sub_26893AF24(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_268AE0F64(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_26893B050((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_26893B050(double *a1, double *a2, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_2689882C8(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_2689882C8(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

id sub_26893B1C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v34[3] = sub_268B36C54();
  v34[4] = MEMORY[0x277D5F680];
  v34[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v33[3] = v10;
  v33[4] = &off_2879539D0;
  v33[0] = a4;
  v11 = type metadata accessor for SetPlaybackSpeedIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v33, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v32[3] = v10;
  v32[4] = &off_2879539D0;
  v32[0] = v17;
  sub_26890C900(v34, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController]);
  sub_26890C900(a3, v31);
  sub_26890C900(v32, &v29);
  sub_26890C900(a5, v28);
  sub_268B376A4();
  v18 = sub_268B37694();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
  MEMORY[0x28223BE20](v19);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = sub_26892D53C(a2, v31, *v21, v28, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(&v29);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceSelector] = v23;
  sub_26890C900(a3, v31);
  sub_26890C900(a5, &v29);
  type metadata accessor for AceServiceHelper();
  v24 = swift_allocObject();
  sub_2688E6514(v31, v24 + 16);
  sub_2688E6514(&v29, v24 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_aceServiceHelper] = v24;
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceState]);
  v27.receiver = v12;
  v27.super_class = v11;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  return v25;
}

uint64_t sub_26893B62C()
{

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_26893B66C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26893B6DC()
{
  result = qword_2802A5F88;
  if (!qword_2802A5F88)
  {
    sub_268B36F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F88);
  }

  return result;
}

uint64_t sub_26893B734()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26893B7AC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26893B850()
{

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void OUTLINED_FUNCTION_10_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_23_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_24_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_26893B978()
{
  result = sub_268B35EC4();
  if (result)
  {

    if (!sub_268B35ED4() && !sub_268B35B94() && !sub_268B35B64())
    {
      if (sub_268B35EB4())
      {

        return 0;
      }

      if (!sub_268B35B84() && !sub_268B35B74() && !sub_268B35BA4() && !sub_268B35BB4() && !sub_268B35EE4() && !sub_268B35F04())
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_26893BA00()
{
  result = sub_268B35EC4();
  if (result)
  {

    result = sub_268B35B94();
    if (result)
    {

      if (!sub_268B35ED4() && !sub_268B35B64())
      {
        if (sub_268B35EB4())
        {

          return 0;
        }

        if (!sub_268B35B84() && !sub_268B35B74() && !sub_268B35BA4() && !sub_268B35BB4() && !sub_268B35EE4() && !sub_268B35F04())
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_26893BC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  HIDWORD(v482) = v23;
  v491 = v24;
  v490 = v25;
  v476 = sub_268B35474();
  OUTLINED_FUNCTION_1();
  v475 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E08, &unk_268B3D910);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v34);
  v468 = sub_268B355B4();
  OUTLINED_FUNCTION_1();
  v467 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79(v38 - v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_22(v39);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FB0, &unk_268B3DF00);
  OUTLINED_FUNCTION_22(v42);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FA8, &unk_268B3DEF0);
  OUTLINED_FUNCTION_22(v45);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  OUTLINED_FUNCTION_22(v48);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_22(v51);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v54);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  OUTLINED_FUNCTION_22(v57);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v59);
  v488 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v487 = v60;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v73);
  v484 = sub_268B366C4();
  OUTLINED_FUNCTION_1();
  v485 = v74;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v80);
  v81 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v83 = v82;
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_20_0();
  v87 = v85 - v86;
  v89 = MEMORY[0x28223BE20](v88);
  v91 = &v448 - v90;
  MEMORY[0x28223BE20](v89);
  v93 = &v448 - v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v95 = OUTLINED_FUNCTION_22(v94);
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_20_0();
  v98 = v96 - v97;
  v100 = MEMORY[0x28223BE20](v99);
  v102 = &v448 - v101;
  MEMORY[0x28223BE20](v100);
  v104 = &v448 - v103;
  v105 = type metadata accessor for MediaPlayerIntent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_100_0();
  sub_268940828(v104);
  v107 = OUTLINED_FUNCTION_162();
  v489 = v105;
  if (!__swift_getEnumTagSinglePayload(v107, v108, v105))
  {
    v448 = v87;
    v449 = v91;
    v451 = v102;
    v450 = v98;
    v109 = v486;
    v453 = v20;
    sub_2688C0464(v104, v20);
    v110 = *(v83 + 16);
    v110(v93, v491, v81);
    v111 = (*(v83 + 88))(v93, v81);
    v220 = v111 == *MEMORY[0x277D5C128];
    v112 = v93;
    v452 = v81;
    v454 = v83;
    if (v220)
    {
      v113 = OUTLINED_FUNCTION_102_1();
      v114(v113);
      v115 = v485;
      v116 = v483;
      v91 = v484;
      (*(v485 + 4))(v483, v93, v484);
      v117 = v487;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v118 = v488;
      __swift_project_value_buffer(v488, qword_2802CDA10);
      OUTLINED_FUNCTION_13_5();
      v119 = v109;
      v120(v109);
      v480 = *(v115 + 2);
      v480(v479, v116, v91);
      v121 = sub_268B37A34();
      v122 = sub_268B37ED4();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = OUTLINED_FUNCTION_172_0();
        v477 = v123;
        v478 = OUTLINED_FUNCTION_173_0();
        v497[0] = v478;
        *v123 = 136315138;
        OUTLINED_FUNCTION_21_4();
        sub_268946DBC(v124, v125, MEMORY[0x277D5F460]);
        v126 = sub_268B38404();
        v119 = v127;
        v128 = *(v115 + 1);
        v129 = OUTLINED_FUNCTION_104_1();
        (v128)(v129);
        v130 = v128;
        v131 = sub_26892CDB8(v126, v119, v497);

        v132 = v477;
        *(v477 + 1) = v131;
        _os_log_impl(&dword_2688BB000, v121, v122, "Creating MediaPlayerNLv3Intent from NLv3IntentOnly: %s", v132, 0xCu);
        v133 = OUTLINED_FUNCTION_175(&v500);
        __swift_destroy_boxed_opaque_existential_0Tm(v133);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        OUTLINED_FUNCTION_77_2();
      }

      else
      {

        v159 = *(v115 + 1);
        v160 = OUTLINED_FUNCTION_104_1();
        (v159)(v160);
        v130 = v159;
        v136 = *(v117 + 8);
        v134 = v119;
        v135 = v118;
      }

      v136(v134, v135);
      OUTLINED_FUNCTION_55_3();
      v161 = v491;
      v162 = BYTE4(v482);
      v163 = v481;
      v164 = v483;
      v480(v481, v483, v91);
      v165 = v162 & 1;
      v166 = v451;
      sub_2689409CC(v163, v165, v167, v168, v169, v170, v171, v172, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459);
      (*(v454 + 8))(v161, v452);
      (v130)(v164, v91);
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_47_0();
      if (!__swift_getEnumTagSinglePayload(v173, v174, v91))
      {
        OUTLINED_FUNCTION_69_3();
        sub_268946CF0(v203, v130);
        goto LABEL_124;
      }

      sub_2688C058C(v166, &qword_2802A5650, &unk_268B3BAC0);
LABEL_17:
      OUTLINED_FUNCTION_69_3();
LABEL_91:
      OUTLINED_FUNCTION_22_3();
      sub_268946E74(v130, v341);
      goto LABEL_92;
    }

    v137 = v487;
    v91 = v484;
    if (v111 == *MEMORY[0x277D5C158])
    {
      v138 = OUTLINED_FUNCTION_102_1();
      v139(v138);
      v486 = *(v112 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E20, qword_268B3D940) + 48));
      OUTLINED_FUNCTION_88_1();
      v141 = v480;
      (*(v140 + 32))(v480);
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v142 = v488;
      __swift_project_value_buffer(v488, qword_2802CDA10);
      OUTLINED_FUNCTION_49_1();
      v476 = v143;
      v478 = v144;
      v475 = v145;
      (v145)(v477);
      v146 = v137;
      v130 = v473;
      v479 = v112[2];
      v479(v473, v141, v91);
      v147 = sub_268B37A34();
      v119 = sub_268B37ED4();
      if (os_log_type_enabled(v147, v119))
      {
        v130 = OUTLINED_FUNCTION_172_0();
        v148 = OUTLINED_FUNCTION_173_0();
        v497[0] = v148;
        *v130 = 136315138;
        OUTLINED_FUNCTION_21_4();
        sub_268946DBC(v149, v150, MEMORY[0x277D5F460]);
        v151 = sub_268B38404();
        v152 = v91;
        v91 = v153;
        v154 = OUTLINED_FUNCTION_74_2();
        v483 = v155;
        v155(v154);
        v156 = sub_26892CDB8(v151, v91, v497);

        *(v130 + 4) = v156;
        _os_log_impl(&dword_2688BB000, v147, v119, "Creating MediaPlayerNLv3Intent from NLv3IntentPlusServerConversion: %s", v130, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v148);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        OUTLINED_FUNCTION_46_2();
        v158 = *(v157 + 8);
        (v158)(v477, v142);
      }

      else
      {

        v483 = v112[1];
        v483(v130, v91);
        v158 = *(v146 + 8);
        v204 = OUTLINED_FUNCTION_278();
        v158(v204);
        v152 = v91;
      }

      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_69_3();
      v205 = BYTE4(v482);
      v206 = v481;
      v207 = v480;
      v479(v481, v480, v152);
      v208 = v205 & 1;
      v209 = v450;
      sub_2689409CC(v206, v208, v210, v211, v212, v213, v214, v215, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459);
      v216 = OUTLINED_FUNCTION_162();
      __swift_getEnumTagSinglePayload(v216, v217, v91);
      OUTLINED_FUNCTION_55_3();
      if (v218)
      {
        OUTLINED_FUNCTION_70_2();

        OUTLINED_FUNCTION_25_3();
        OUTLINED_FUNCTION_56_1();
        v219();
        OUTLINED_FUNCTION_43_2();
        v483(v207, v152);
        sub_2688C058C(v209, &qword_2802A5650, &unk_268B3BAC0);
        goto LABEL_91;
      }

      sub_268946CF0(v209, v130);
      v245 = sub_268B35484();
      objc_opt_self();
      v246 = swift_dynamicCastObjCClass();
      if (v246)
      {
        v247 = [v246 privatePlayMediaIntentData];
        if (v247)
        {
          v248 = v247;
          v249 = [v247 privateMediaIntentData];

          if (v249)
          {
            v119 = [v249 homeAutomationEntityProvider];

            if (v119)
            {
              v497[0] = v119;
              sub_2688EA03C(0, &qword_2802A6110, 0x277CD3CD8);
              sub_268946D54();
              if (sub_268B37834())
              {
                v250 = OUTLINED_FUNCTION_175(&v489);
                (v475)(v250, v476, v488);
                v251 = v119;
                v252 = sub_268B37A34();
                v253 = sub_268B37ED4();

                if (os_log_type_enabled(v252, v253))
                {
                  v130 = OUTLINED_FUNCTION_172_0();
                  v254 = swift_slowAlloc();
                  *v130 = 138412290;
                  *(v130 + 4) = v251;
                  *v254 = v119;
                  v255 = v251;
                  _os_log_impl(&dword_2688BB000, v252, v253, "Amending HomeAutomation nodes using homeAutomationEntityProvider from the server conversion: %@", v130, 0xCu);
                  sub_2688C058C(v254, &qword_2802A6420, &unk_268B3C680);
                  OUTLINED_FUNCTION_12();
                  OUTLINED_FUNCTION_69_3();
                  OUTLINED_FUNCTION_12();
                }

                OUTLINED_FUNCTION_43_2();
                OUTLINED_FUNCTION_77_2();
                (v158)();
                v256 = sub_2689452B0(v251, &selRef_roomNames);
                v257 = MEMORY[0x277D84F90];
                if (v256)
                {
                  v258 = v256;
                }

                else
                {
                  v258 = MEMORY[0x277D84F90];
                }

                v259 = *(v91 + 15);

                *&v130[v259] = v258;
                v260 = sub_268945374(v251, &selRef_homeName);
                v262 = v261;
                v263 = &v130[*(v91 + 16)];

                *v263 = v260;
                v263[1] = v262;
                v264 = sub_2689452B0(v251, &selRef_zoneNames);
                if (v264)
                {
                  v265 = v264;
                }

                else
                {
                  v265 = v257;
                }

                v266 = *(v91 + 17);

                *&v130[v266] = v265;
                v267 = sub_2689452B0(v251, &selRef_accessoryNames);
                if (v267)
                {
                  v268 = v267;
                }

                else
                {
                  v268 = v257;
                }

                v269 = *(v91 + 18);

                *&v130[v269] = v268;
                INHomeAutomationEntityProvider.haServiceNames()();
                v271 = v270;
                v272 = *(v91 + 19);

                *&v130[v272] = v271;
                v273 = sub_2689452B0(v251, &selRef_serviceGroups);
                if (v273)
                {
                  v257 = v273;
                }

                v274 = *(v91 + 20);

                *&v130[v274] = v257;
                INHomeAutomationEntityProvider.haFromEntities()();
                v276 = v275;
                v277 = *(v91 + 21);

                *&v130[v277] = v276;
                OUTLINED_FUNCTION_88_1();
                INHomeAutomationEntityProvider.haDeviceQuantifier()();
                sub_268932694(v277, &v130[*(v91 + 22)], &qword_2802A5BA8, &qword_268B3C690);
                OUTLINED_FUNCTION_88_1();
                INHomeAutomationEntityProvider.haDeviceType()();
                sub_268932694(v277, &v130[*(v91 + 24)], &qword_2802A58F0, &unk_268B3BEC0);
                OUTLINED_FUNCTION_88_1();
                INHomeAutomationEntityProvider.haPlaceHint()();

                OUTLINED_FUNCTION_70_2();

                OUTLINED_FUNCTION_25_3();
                OUTLINED_FUNCTION_56_1();
                v278();
                v279 = OUTLINED_FUNCTION_26_2();
                v280(v279);
                sub_268932694(v277, &v130[*(v91 + 25)], &qword_2802A5908, &qword_268B3D920);
                goto LABEL_123;
              }
            }

            OUTLINED_FUNCTION_70_2();

            OUTLINED_FUNCTION_25_3();
            v383 = OUTLINED_FUNCTION_74_2();
            v384(v383);
            v385 = OUTLINED_FUNCTION_26_2();
            v386(v385);
LABEL_123:
            OUTLINED_FUNCTION_55_3();
            goto LABEL_124;
          }
        }
      }

      else
      {
      }

      OUTLINED_FUNCTION_25_3();
      v312 = OUTLINED_FUNCTION_74_2();
      v313(v312);
      v314 = OUTLINED_FUNCTION_26_2();
      v315(v314);
LABEL_124:
      sub_268946C8C(v130, v119);
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v444, v445, v446, v91);
      OUTLINED_FUNCTION_22_3();
      sub_268946E74(v130, v447);
      goto LABEL_93;
    }

    if (v111 == *MEMORY[0x277D5C150])
    {
      v175 = OUTLINED_FUNCTION_102_1();
      v176(v175);
      OUTLINED_FUNCTION_76_1();
      v178 = v478;
      v179 = v476;
      (*(v177 + 32))(v478, v112, v476);
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v180 = v488;
      __swift_project_value_buffer(v488, qword_2802CDA10);
      OUTLINED_FUNCTION_49_1();
      v181 = v474;
      v484 = v182;
      v486 = v183;
      v485 = v184;
      (v184)(v474);
      v185 = v81 + 16;
      v91 = *(v81 + 16);
      v186 = v137;
      v119 = v472;
      (v91)(v472, v178, v179);
      v187 = sub_268B37A34();
      v188 = sub_268B37EE4();
      v189 = OUTLINED_FUNCTION_115_0(v188);
      v483 = v91;
      if (v189)
      {
        v190 = v81;
        v191 = OUTLINED_FUNCTION_172_0();
        v192 = OUTLINED_FUNCTION_173_0();
        v497[0] = v192;
        *v191 = 136315138;
        v193 = OUTLINED_FUNCTION_175(&v496);
        (v91)(v193, v119, v179);
        OUTLINED_FUNCTION_97();
        sub_268B37C24();
        v194 = *(v190 + 8);
        (v194)(v119, v179);
        v195 = OUTLINED_FUNCTION_97();
        v198 = sub_26892CDB8(v195, v196, v197);

        *(v191 + 4) = v198;
        _os_log_impl(&dword_2688BB000, v187, v181, "MediaPlayerIntent#init directInvocation: %s", v191, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v192);
        v199 = v194;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        OUTLINED_FUNCTION_46_2();
        v130 = *(v200 + 8);
        OUTLINED_FUNCTION_77_2();
      }

      else
      {

        v199 = *(v81 + 8);
        (v199)(v119, v179);
        v130 = *(v186 + 8);
        v201 = v474;
        v202 = v180;
      }

      (v130)(v201, v202);
      OUTLINED_FUNCTION_55_3();
      v281 = sub_268B35454();
      v283 = v282;
      v284 = v281 == 0xD00000000000003CLL && 0x8000000268B57880 == v282;
      if (v284 || (v285 = v281, (sub_268B38444() & 1) != 0))
      {

        type metadata accessor for DirectInvocationHelper();
        sub_268A69384(v478);
        if (v287)
        {
          v288 = sub_268AA3904(v286);
          v289 = OUTLINED_FUNCTION_24_4();
          v290(v289);
          OUTLINED_FUNCTION_43_2();
          OUTLINED_FUNCTION_108_1();
          v199();
          OUTLINED_FUNCTION_47_0();
          v291 = *(v91 + 9);
          v130 = v453;
LABEL_69:
          v130[v291] = v288;
          goto LABEL_124;
        }

        v490 = v199;
        v316 = OUTLINED_FUNCTION_45_2(&v495);
        v317(v316);
        v318 = sub_268B37A34();
        v319 = sub_268B37EE4();
        OUTLINED_FUNCTION_183_0(v319);
        OUTLINED_FUNCTION_47_0();
        if (!v320)
        {
          goto LABEL_80;
        }

        *OUTLINED_FUNCTION_14() = 0;
        v323 = "MediaIntent#init returning nil for intent since we could not find a button pressed.";
        goto LABEL_79;
      }

      if (v285 == 0xD000000000000046 && 0x8000000268B56FE0 == v283)
      {

        v327 = v478;
      }

      else
      {
        v326 = sub_268B38444();

        v327 = v478;
        if ((v326 & 1) == 0)
        {
          v91 = v462;
          (v485)(v462, v484, v488);
          v328 = v461;
          v329 = v476;
          (v483)(v461, v327, v476);
          v330 = sub_268B37A34();
          sub_268B37EE4();
          OUTLINED_FUNCTION_89_2();
          if (os_log_type_enabled(v330, v331))
          {
            v332 = v328;
            v333 = OUTLINED_FUNCTION_172_0();
            v486 = OUTLINED_FUNCTION_173_0();
            v497[0] = v486;
            *v333 = 136315138;
            v334 = sub_268B35454();
            v336 = v335;
            v91 = v475 + 8;
            (v199)(v332, v329);
            v337 = sub_26892CDB8(v334, v336, v497);

            *(v333 + 4) = v337;
            _os_log_impl(&dword_2688BB000, v330, v327, "MediaPlayerIntent#init unexpected direct invocation identifier: %s", v333, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v486);
            OUTLINED_FUNCTION_55_3();
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_12();

            v338 = OUTLINED_FUNCTION_24_4();
            v339(v338);
            OUTLINED_FUNCTION_43_2();
            OUTLINED_FUNCTION_77_2();
            (v130)();
            (v199)(v478, v329);
          }

          else
          {

            v387 = OUTLINED_FUNCTION_24_4();
            v388(v387);
            (v199)(v328, v329);
            OUTLINED_FUNCTION_43_2();
            OUTLINED_FUNCTION_77_2();
            (v130)();
            (v199)(v327, v329);
          }

LABEL_108:
          OUTLINED_FUNCTION_47_0();
          goto LABEL_17;
        }
      }

      type metadata accessor for DirectInvocationHelper();
      sub_268A69394(v327);
      v357 = v327;
      if (v356)
      {
        v358 = v355;
        v359 = v356;
        v360 = OUTLINED_FUNCTION_24_4();
        v361(v360);
        OUTLINED_FUNCTION_43_2();
        OUTLINED_FUNCTION_108_1();
        v199();
        OUTLINED_FUNCTION_47_0();
        OUTLINED_FUNCTION_95_1();
        *v357 = v358;
        v357[1] = v359;
        goto LABEL_124;
      }

      sub_268A693B4(v327);
      OUTLINED_FUNCTION_47_0();
      if (v379)
      {
        v380 = v378;
        v381 = v379;
        OUTLINED_FUNCTION_25_3();
        OUTLINED_FUNCTION_56_1();
        v382();
        OUTLINED_FUNCTION_43_2();
        OUTLINED_FUNCTION_108_1();
        v199();
        OUTLINED_FUNCTION_95_1();
        *v327 = v380;
        v327[1] = v381;
        goto LABEL_124;
      }

      v490 = v199;
      v439 = OUTLINED_FUNCTION_45_2(&v482);
      v440(v439);
      v318 = sub_268B37A34();
      v441 = sub_268B37EE4();
      if (!OUTLINED_FUNCTION_183_0(v441))
      {
        goto LABEL_80;
      }

      *OUTLINED_FUNCTION_14() = 0;
      v323 = "MediaIntent#init returning nil for intent since we could not find a DeviceID.";
LABEL_79:
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v321, v322, v323);
      OUTLINED_FUNCTION_12();
LABEL_80:

      OUTLINED_FUNCTION_25_3();
      OUTLINED_FUNCTION_56_1();
      v324();
      OUTLINED_FUNCTION_43_2();
      (v130)(v185, v199);
      OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_108_1();
      v490();
      goto LABEL_17;
    }

    v220 = v111 == *MEMORY[0x277D5C148] || v111 == *MEMORY[0x277D5C160];
    if (v220)
    {
      v221 = *(v83 + 8);
      v222 = OUTLINED_FUNCTION_102_1();
      v454 = v83 + 8;
      (v221)(v222);
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v223 = v488;
      v224 = __swift_project_value_buffer(v488, qword_2802CDA10);
      v130 = *(v137 + 16);
      (v130)(v471, v224, v223);
      v225 = sub_268B37A34();
      v226 = sub_268B37ED4();
      v227 = OUTLINED_FUNCTION_115_0(v226);
      v119 = v491;
      v228 = v470;
      if (v227)
      {
        v229 = OUTLINED_FUNCTION_14();
        *v229 = 0;
        _os_log_impl(&dword_2688BB000, v225, v98, "Handling USO/Pommes parse in MediaPlayerIntent", v229, 2u);
        v223 = v488;
        OUTLINED_FUNCTION_12();
      }

      OUTLINED_FUNCTION_46_2();
      v91 = *(v230 + 8);
      v487 = v230 + 8;
      (v91)(v471, v223);
      v231 = sub_268A40454();
      if (v231)
      {
        v232 = v231;
        sub_268B35DC4();
        sub_268932738(v499, v493, &byte_2802A6450, &byte_268B3BE10);
        if (v493[3])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6108, &qword_268B3E800);
          if (swift_dynamicCast())
          {
            if (*(&v495 + 1))
            {
              v486 = v232;
              v485 = v221;
              sub_2688E6514(&v494, v497);
              v233 = OUTLINED_FUNCTION_74_2();
              (v130)(v233);
              sub_268932738(v499, &v494, &byte_2802A6450, &byte_268B3BE10);
              v234 = sub_268B37A34();
              v235 = sub_268B37F04();
              if (OUTLINED_FUNCTION_183_0(v235))
              {
                v236 = OUTLINED_FUNCTION_172_0();
                v237 = OUTLINED_FUNCTION_173_0();
                v492 = v237;
                *v236 = 136315138;
                v130 = &byte_268B3BE10;
                sub_268932738(&v494, v493, &byte_2802A6450, &byte_268B3BE10);
                v238 = OUTLINED_FUNCTION_97();
                __swift_instantiateConcreteTypeFromMangledNameV2(v238, v239);
                v240 = sub_268B37C24();
                v242 = v241;
                sub_2688C058C(&v494, &byte_2802A6450, &byte_268B3BE10);
                v243 = v240;
                v119 = v491;
                v244 = sub_26892CDB8(v243, v242, &v492);

                *(v236 + 4) = v244;
                _os_log_impl(&dword_2688BB000, v234, v235, "Setting attributes for MediaPlayerIntent from task: %s", v236, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v237);
                OUTLINED_FUNCTION_12();
                OUTLINED_FUNCTION_12();
              }

              else
              {

                sub_2688C058C(&v494, &byte_2802A6450, &byte_268B3BE10);
                OUTLINED_FUNCTION_278();
              }

              OUTLINED_FUNCTION_46_2();
              (v91)();
              OUTLINED_FUNCTION_69_3();
              v389 = v465;
              v390 = v464;
              v391 = v463;
              v392 = v460;
              OUTLINED_FUNCTION_34_1();
              OUTLINED_FUNCTION_129();
              sub_268B37324();
              *v130 = sub_268942CA4();
              v393 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v393, v394);
              v395 = sub_268B37344();
              v397 = v396;
              OUTLINED_FUNCTION_47_0();
              v398 = &v130[*(v91 + 26)];

              *v398 = v395;
              v398[1] = v397;
              v399 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v399, v400);
              v130[*(v91 + 12)] = sub_268A36358();
              v401 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v401, v402);
              v403 = v457;
              sub_268B37364();
              sub_268932694(v403, &v130[*(v91 + 10)], &qword_2802A5CA8, &unk_268B3CE30);
              v404 = v498;
              v405 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v405, v406);
              v407 = OUTLINED_FUNCTION_129();
              v130[1] = v408(v407, v404);
              v409 = v498;
              v410 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v410, v411);
              v412 = OUTLINED_FUNCTION_129();
              v130[*(v91 + 8)] = v413(v412, v409);
              OUTLINED_FUNCTION_34_1();
              v414 = v458;
              OUTLINED_FUNCTION_123();
              sub_268A5D240(v415, v416);
              sub_268932694(v414, &v130[*(v91 + 7)], &qword_2802A5FA8, &unk_268B3DEF0);
              OUTLINED_FUNCTION_34_1();
              v417 = v459;
              v418 = OUTLINED_FUNCTION_123();
              sub_268A5D2E4(v418, v419);
              sub_268932694(v417, &v130[*(v91 + 13)], &qword_2802A5FB0, &unk_268B3DF00);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v420 = sub_268B377B4();
              v421 = *(v91 + 15);

              *&v130[v421] = v420;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v422 = sub_268B37784();
              v424 = v423;
              v425 = &v130[*(v91 + 16)];

              *v425 = v422;
              v425[1] = v424;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v426 = sub_268B377C4();
              v427 = *(v91 + 17);

              *&v130[v427] = v426;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v428 = sub_268B37814();
              v429 = *(v91 + 18);

              *&v130[v429] = v428;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v430 = sub_268B377F4();
              v431 = *(v91 + 19);

              *&v130[v431] = v430;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v432 = sub_268B37804();
              v433 = *(v91 + 20);

              *&v130[v433] = v432;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v434 = sub_268B377E4();
              v435 = *(v91 + 21);

              *&v130[v435] = v434;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              sub_268B37824();
              sub_268932694(v391, &v130[*(v91 + 22)], &qword_2802A5BA8, &qword_268B3C690);
              v436 = &v130[*(v91 + 23)];

              *v436 = 0;
              *(v436 + 1) = 0;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              sub_268B377D4();
              sub_268932694(v390, &v130[*(v91 + 24)], &qword_2802A58F0, &unk_268B3BEC0);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              sub_268B37794();
              sub_268932694(v389, &v130[*(v91 + 25)], &qword_2802A5908, &qword_268B3D920);
              OUTLINED_FUNCTION_34_1();
              OUTLINED_FUNCTION_129();
              sub_268B376D4();
              sub_268932694(v392, &v130[*(v91 + 11)], &qword_2802A58C0, &unk_268B3F080);
              OUTLINED_FUNCTION_34_1();
              OUTLINED_FUNCTION_129();
              if (sub_268B372F4())
              {
                sub_268962590();
                v438 = v437;
              }

              else
              {
                v438 = MEMORY[0x277D84F90];
              }

              v442 = v485;
              OUTLINED_FUNCTION_70_2();

              OUTLINED_FUNCTION_28_4();
              v442();
              sub_2688C058C(v499, &byte_2802A6450, &byte_268B3BE10);
              v443 = *(v91 + 14);

              *&v130[v443] = v438;
              __swift_destroy_boxed_opaque_existential_0Tm(v497);
              goto LABEL_123;
            }
          }

          else
          {
            v496 = 0;
            v494 = 0u;
            v495 = 0u;
          }
        }

        else
        {
          sub_2688C058C(v493, &byte_2802A6450, &byte_268B3BE10);
          v494 = 0u;
          v495 = 0u;
          v496 = 0;
        }

        sub_2688C058C(&v494, &qword_2802A6100, &qword_268B3E7F8);
        (v130)(v228, v224, v223);
        sub_268932738(v499, v497, &byte_2802A6450, &byte_268B3BE10);
        v362 = sub_268B37A34();
        v363 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_183_0(v363))
        {
          v364 = OUTLINED_FUNCTION_172_0();
          v130 = OUTLINED_FUNCTION_173_0();
          v493[0] = v130;
          *v364 = 136315138;
          v486 = v232;
          OUTLINED_FUNCTION_103_1();
          sub_268932738(v365, v366, v367, v368);
          v369 = OUTLINED_FUNCTION_189();
          __swift_instantiateConcreteTypeFromMangledNameV2(v369, v370);
          v371 = sub_268B37C24();
          v485 = v91;
          v91 = v221;
          v372 = v371;
          v374 = v373;
          sub_2688C058C(v497, &byte_2802A6450, &byte_268B3BE10);
          v375 = sub_26892CDB8(v372, v374, v493);

          *(v364 + 4) = v375;
          _os_log_impl(&dword_2688BB000, v362, v363, "Fatal: Unable to cast task: %s to ControlsMediaPlayerTask", v364, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v130);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();

          OUTLINED_FUNCTION_70_2();

          OUTLINED_FUNCTION_28_4();
          v221();
          OUTLINED_FUNCTION_46_2();
          v485();
        }

        else
        {

          OUTLINED_FUNCTION_28_4();
          v221();
          v376 = OUTLINED_FUNCTION_23_3();
          sub_2688C058C(v376, v377, &byte_268B3BE10);
          OUTLINED_FUNCTION_46_2();
          (v91)();
        }

        sub_2688C058C(v499, &byte_2802A6450, &byte_268B3BE10);
        OUTLINED_FUNCTION_55_3();
        goto LABEL_108;
      }

      v345 = v221;
      v346 = OUTLINED_FUNCTION_74_2();
      (v130)(v346);
      v347 = sub_268B37A34();
      v348 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_183_0(v348))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v349, v350, "No tasks found in usoTasks input, might be a confirmation response.");
        OUTLINED_FUNCTION_12();
      }

      OUTLINED_FUNCTION_278();
      OUTLINED_FUNCTION_46_2();
      (v91)();
      OUTLINED_FUNCTION_88_1();
      sub_268A3FD3C(v351);
      v352 = v468;
      OUTLINED_FUNCTION_135(v347, 1, v468);
      v119 = v490;
      v130 = v453;
      v353 = v467;
      v354 = v466;
      if (!v220)
      {
        (*(v467 + 32))(v466, v347, v352);
        v288 = sub_2689F8358();
        OUTLINED_FUNCTION_28_4();
        v345();
        (*(v353 + 8))(v354, v352);
        v91 = v489;
        if (v288 == 3)
        {
          goto LABEL_91;
        }

        v291 = *(v489 + 9);
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_28_4();
      v345();
      sub_2688C058C(v347, &qword_2802A5E08, &unk_268B3D910);
    }

    else
    {
      v486 = v112;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v130 = v488;
      __swift_project_value_buffer(v488, qword_2802CDA10);
      OUTLINED_FUNCTION_49_1();
      v292 = v469;
      v293(v469);
      v294 = OUTLINED_FUNCTION_175(&v476);
      v110(v294, v491, v81);
      v91 = v110;
      v295 = v81;
      v296 = sub_268B37A34();
      sub_268B37ED4();
      OUTLINED_FUNCTION_89_2();
      v298 = os_log_type_enabled(v296, v297);
      v299 = v448;
      if (v298)
      {
        v300 = OUTLINED_FUNCTION_172_0();
        LODWORD(v485) = v81;
        v301 = v300;
        v484 = OUTLINED_FUNCTION_173_0();
        v497[0] = v484;
        *v301 = 136315138;
        (v91)(v299, v109, v295);
        sub_268B37C24();
        v130 = v302;
        v91 = (v454 + 8);
        v303 = *(v454 + 8);
        v303(v109, v295);
        v304 = OUTLINED_FUNCTION_97();
        v307 = sub_26892CDB8(v304, v305, v306);

        *(v301 + 4) = v307;
        _os_log_impl(&dword_2688BB000, v296, v485, "MediaPlayerIntent#init Unexpected parse type: %s, returning nil MediaPlayerIntent", v301, 0xCu);
        v308 = OUTLINED_FUNCTION_175(&a12);
        __swift_destroy_boxed_opaque_existential_0Tm(v308);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        v303(v491, v295);
        OUTLINED_FUNCTION_77_2();
      }

      else
      {

        v303 = *(v454 + 8);
        v303(v491, v81);
        v303(v109, v81);
        v311 = *(v137 + 8);
        v309 = v292;
        v310 = v130;
      }

      v311(v309, v310);
      OUTLINED_FUNCTION_69_3();
      v340 = OUTLINED_FUNCTION_70_2();
      v303(v340, v295);
      OUTLINED_FUNCTION_55_3();
    }

    OUTLINED_FUNCTION_47_0();
    goto LABEL_91;
  }

  (*(v83 + 8))(v491, v81);
  sub_2688C058C(v104, &qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_55_3();
LABEL_92:
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v342, v343, v344, v91);
LABEL_93:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26893E3F8(char a1)
{
  result = 2036427888;
  switch(a1)
  {
    case 1:
      result = 0x6573756170;
      break;
    case 2:
      result = 0x656D75736572;
      break;
    case 3:
      result = 1886352499;
      break;
    case 4:
      result = 1885956979;
      break;
    case 5:
      result = 0x73756F6976657270;
      break;
    case 6:
      result = 1801807219;
      break;
    case 7:
      result = 0x77726F4670696B73;
      break;
    case 8:
      result = 0x6B63614270696B73;
      break;
    case 9:
      result = 0x746165706572;
      break;
    case 10:
      v3 = 0x726174736572;
      goto LABEL_21;
    case 11:
      result = 0x656C6666756873;
      break;
    case 12:
      result = 0x6165705365766F6DLL;
      break;
    case 13:
      result = 0x6B61657053646461;
      break;
    case 14:
      result = 0x705365766F6D6572;
      break;
    case 15:
      result = 0x627265566F6ELL;
      break;
    case 16:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0x736972616D6D7573;
      break;
    case 18:
      v3 = 0x736575716572;
LABEL_21:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0xD000000000000016;
      break;
    case 21:
      result = 0x6573616572636E69;
      break;
    case 22:
      result = 0x6573616572636564;
      break;
    case 23:
      result = 1701079400;
      break;
    default:
      return result;
  }

  return result;
}

void sub_26893E6A8(uint64_t a1)
{
  MEMORY[0x26D625820](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_107_1();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;

    v13 = OUTLINED_FUNCTION_106_0(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
    sub_268ADD5F8(v13);

    v3 += 16;
  }

  __break(1u);
}

void sub_26893E750(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  sub_2689474F0();
  v5 = OUTLINED_FUNCTION_189();
  MEMORY[0x26D625820](v5);
  OUTLINED_FUNCTION_107_1();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;

    v14 = OUTLINED_FUNCTION_106_0(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
    sub_268ADD6FC(v14);

    v3 += 16;
  }

  __break(1u);
}

uint64_t sub_26893E80C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26892E760();
  v8 = MEMORY[0x26D625820](v2, &type metadata for NowPlayingState, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_268ADD83C(&v7, *(a1 + v5));
      v5 += 8;
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_129();
  }

  return v2;
}

uint64_t sub_26893E8A0()
{
  if (qword_2802A4D88 != -1)
  {
    OUTLINED_FUNCTION_7_5(&qword_2802A4D88);
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_0_14();
  sub_268946DBC(v0, v1, &unk_268B4B4F8);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_26893E930()
{
  if (qword_2802A4D88 != -1)
  {
    OUTLINED_FUNCTION_7_5(&qword_2802A4D88);
  }

  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_2_11();
  sub_268946DBC(v0, v1, &unk_268B5120C);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_26893E9C0()
{
  if (qword_2802A4D88 != -1)
  {
    OUTLINED_FUNCTION_7_5(&qword_2802A4D88);
  }

  type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_1_10();
  sub_268946DBC(v0, v1, &unk_268B44454);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_26893EB28(void (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (qword_2802A4D90 != -1)
  {
    OUTLINED_FUNCTION_31_1(&qword_2802A4D90);
  }

  a1(0);
  sub_268946DBC(a2, a3, a4);
  OUTLINED_FUNCTION_150();
  sub_268B35C64();
  return v9;
}

uint64_t sub_26893EBC8()
{
  if (qword_2802A4D98 != -1)
  {
    OUTLINED_FUNCTION_6_9(&qword_2802A4D98);
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_0_14();
  sub_268946DBC(v0, v1, &unk_268B4B4F8);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_26893EC58()
{
  if (qword_2802A4D98 != -1)
  {
    OUTLINED_FUNCTION_6_9(&qword_2802A4D98);
  }

  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_2_11();
  sub_268946DBC(v0, v1, &unk_268B5120C);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_26893ECE8()
{
  if (qword_2802A4D98 != -1)
  {
    OUTLINED_FUNCTION_6_9(&qword_2802A4D98);
  }

  type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_1_10();
  sub_268946DBC(v0, v1, &unk_268B44454);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_26893ED78()
{
  if (qword_2802A4DA0 != -1)
  {
    OUTLINED_FUNCTION_5_3(&qword_2802A4DA0);
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_0_14();
  sub_268946DBC(v0, v1, &unk_268B4B4F8);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_26893EE08()
{
  if (qword_2802A4DA0 != -1)
  {
    OUTLINED_FUNCTION_5_3(&qword_2802A4DA0);
  }

  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_2_11();
  sub_268946DBC(v0, v1, &unk_268B5120C);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_26893EE98()
{
  if (qword_2802A4DA0 != -1)
  {
    OUTLINED_FUNCTION_5_3(&qword_2802A4DA0);
  }

  type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_1_10();
  sub_268946DBC(v0, v1, &unk_268B44454);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_26893EF28()
{
  if (qword_2802A4DA8 != -1)
  {
    OUTLINED_FUNCTION_4_5(&qword_2802A4DA8);
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_0_14();
  sub_268946DBC(v0, v1, &unk_268B4B4F8);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_26893EFB8()
{
  if (qword_2802A4DA8 != -1)
  {
    OUTLINED_FUNCTION_4_5(&qword_2802A4DA8);
  }

  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_2_11();
  sub_268946DBC(v0, v1, &unk_268B5120C);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_26893F048()
{
  if (qword_2802A4DA8 != -1)
  {
    OUTLINED_FUNCTION_4_5(&qword_2802A4DA8);
  }

  type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_1_10();
  sub_268946DBC(v0, v1, &unk_268B44454);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_26893F0D8()
{
  if (qword_2802A4DB0 != -1)
  {
    OUTLINED_FUNCTION_9_7(&qword_2802A4DB0);
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_0_14();
  sub_268946DBC(v0, v1, &unk_268B4B4F8);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_26893F168()
{
  if (qword_2802A4DB0 != -1)
  {
    OUTLINED_FUNCTION_9_7(&qword_2802A4DB0);
  }

  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_2_11();
  sub_268946DBC(v0, v1, &unk_268B5120C);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_26893F1F8()
{
  if (qword_2802A4DB0 != -1)
  {
    OUTLINED_FUNCTION_9_7(&qword_2802A4DB0);
  }

  type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_1_10();
  sub_268946DBC(v0, v1, &unk_268B44454);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

void sub_26893F360()
{
  OUTLINED_FUNCTION_26();
  v100 = v2;
  v101 = v3;
  v98 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6138, &qword_268B3E820);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74();
  v93 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6140, &qword_268B3E828);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74();
  v95 = v12;
  OUTLINED_FUNCTION_9();
  v96 = sub_268B37054();
  OUTLINED_FUNCTION_1();
  v92 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v86 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_78();
  v94 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6148, &qword_268B3E830);
  v19 = OUTLINED_FUNCTION_22(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_20_0();
  v22 = (v20 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = &v78 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FA0, qword_268B3DE28);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v27);
  v29 = &v78 - v28;
  v99 = sub_268B37074();
  OUTLINED_FUNCTION_1();
  v87 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  v85 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_78();
  v84 = v34;
  OUTLINED_FUNCTION_9();
  v102 = sub_268B35B14();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_100_0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6150, qword_268B412C0);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_53_2();
  v40 = sub_268B35C14();
  OUTLINED_FUNCTION_1();
  v89 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_0();
  v88 = v44 - v43;
  if (qword_2802A4DB8 != -1)
  {
LABEL_29:
    swift_once();
  }

  (v6)(0);
  sub_268946DBC(v98, v100, v101);
  sub_268B35C54();
  OUTLINED_FUNCTION_135(v1, 1, v40);
  if (!v65)
  {
    v98 = v22;
    v45 = *(v89 + 32);
    v79 = v40;
    v45(v88, v1, v40);
    v6 = sub_268B35C04();
    v1 = 0;
    v100 = (v36 + 16);
    v101 = *(v6 + 16);
    v91 = (v92 + 32);
    v81 = (v92 + 16);
    v97 = *MEMORY[0x277D5E5C8];
    v90 = (v92 + 8);
    v22 = (v36 + 8);
    v80 = (v87 + 32);
    v92 = MEMORY[0x277D84F90];
    v40 = v99;
    while (1)
    {
      if (v101 == v1)
      {
        (*(v89 + 8))(v88, v79);

        goto LABEL_27;
      }

      if (v1 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_258();
      (*(v36 + 16))(v0, v6 + v46 + *(v36 + 72) * v1, v102);
      sub_268B35A64();
      v47 = sub_268B35A44();
      v48 = 1;
      OUTLINED_FUNCTION_135(v25, 1, v47);
      if (!v65)
      {
        break;
      }

LABEL_15:
      __swift_storeEnumTagSinglePayload(v29, v48, 1, v40);
      sub_2688C058C(v25, &qword_2802A6148, &qword_268B3E830);
      (*v22)(v0, v102);
      v60 = OUTLINED_FUNCTION_286();
      OUTLINED_FUNCTION_135(v60, v61, v40);
      if (v65)
      {
        sub_2688C058C(v29, &qword_2802A5FA0, qword_268B3DE28);
        ++v1;
      }

      else
      {
        v70 = *v80;
        (*v80)(v84, v29, v40);
        v83 = v70;
        v70(v85, v84, v40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2689874FC();
          v92 = v76;
        }

        v72 = *(v92 + 16);
        if (v72 >= *(v92 + 24) >> 1)
        {
          sub_2689874FC();
          v92 = v77;
        }

        ++v1;
        *(v92 + 16) = v72 + 1;
        OUTLINED_FUNCTION_258();
        v83(v74 + v73 + *(v75 + 72) * v72, v85, v40);
      }
    }

    sub_268932738(v25, v98, &qword_2802A6148, &qword_268B3E830);
    v49 = OUTLINED_FUNCTION_179();
    v51 = v50(v49);
    if (v51 == v97)
    {
      v52 = OUTLINED_FUNCTION_179();
      v53(v52);
      v54 = v95;
      sub_268B37044();
      v55 = OUTLINED_FUNCTION_162();
      v56 = v96;
      OUTLINED_FUNCTION_135(v55, v57, v96);
      if (v65)
      {
        sub_2688C058C(v54, &qword_2802A6140, &qword_268B3E828);
      }

      else
      {
        (*v91)(v94, v54, v56);
        v62 = v93;
        sub_268B359E4();
        v63 = v56;
        v64 = sub_268B359C4();
        OUTLINED_FUNCTION_135(v62, 1, v64);
        if (!v65)
        {
          v66 = sub_268B359B4();
          v82 = v67;
          v83 = v66;
          (*(*(v64 - 8) + 8))(v62, v64);
          (*v81)(v86, v94, v96);
          sub_268B37064();
          v68 = OUTLINED_FUNCTION_179();
          v69(v68);
          v48 = 0;
          goto LABEL_14;
        }

        sub_2688C058C(v62, &qword_2802A6138, &qword_268B3E820);
        (*v90)(v94, v63);
      }
    }

    else
    {
      v58 = OUTLINED_FUNCTION_179();
      v59(v58);
    }

    v48 = 1;
LABEL_14:
    v40 = v99;
    goto LABEL_15;
  }

  sub_2688C058C(v1, &qword_2802A6150, qword_268B412C0);
LABEL_27:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26893FC10()
{
  if (qword_2802A4DC0 != -1)
  {
    OUTLINED_FUNCTION_36_1(&qword_2802A4DC0);
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_0_14();
  sub_268946DBC(v0, v1, &unk_268B4B4F8);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_26893FCA4()
{
  if (qword_2802A4DC0 != -1)
  {
    OUTLINED_FUNCTION_36_1(&qword_2802A4DC0);
  }

  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_2_11();
  sub_268946DBC(v0, v1, &unk_268B5120C);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_26893FD38()
{
  if (qword_2802A4DC0 != -1)
  {
    OUTLINED_FUNCTION_36_1(&qword_2802A4DC0);
  }

  type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_1_10();
  sub_268946DBC(v0, v1, &unk_268B44454);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_26893FDCC()
{
  if (qword_2802A4DD0 != -1)
  {
    OUTLINED_FUNCTION_53(&qword_2802A4DD0);
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_0_14();
  sub_268946DBC(v0, v1, &unk_268B4B4F8);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_26893FE60()
{
  if (qword_2802A4DD0 != -1)
  {
    OUTLINED_FUNCTION_53(&qword_2802A4DD0);
  }

  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_2_11();
  sub_268946DBC(v0, v1, &unk_268B5120C);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_26893FEF4()
{
  if (qword_2802A4DD0 != -1)
  {
    OUTLINED_FUNCTION_53(&qword_2802A4DD0);
  }

  type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_1_10();
  sub_268946DBC(v0, v1, &unk_268B44454);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_26893FF88()
{
  if (qword_2802A4DD8 != -1)
  {
    OUTLINED_FUNCTION_52(&qword_2802A4DD8);
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_0_14();
  sub_268946DBC(v0, v1, &unk_268B4B4F8);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_26894001C()
{
  if (qword_2802A4DD8 != -1)
  {
    OUTLINED_FUNCTION_52(&qword_2802A4DD8);
  }

  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_2_11();
  sub_268946DBC(v0, v1, &unk_268B5120C);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_2689400B0()
{
  if (qword_2802A4DD8 != -1)
  {
    OUTLINED_FUNCTION_52(&qword_2802A4DD8);
  }

  type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_1_10();
  sub_268946DBC(v0, v1, &unk_268B44454);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_268940144()
{
  v0 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_254();
  if (qword_2802A4DC8 != -1)
  {
    OUTLINED_FUNCTION_29_2(&qword_2802A4DC8);
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_0_14();
  sub_268946DBC(v2, v3, &unk_268B4B4F8);
  OUTLINED_FUNCTION_63_2();
  if (v20)
  {
    sub_2688EA03C(0, &qword_2802A5C90, 0x277D85C98);
    OUTLINED_FUNCTION_0_3();
    v4 = swift_allocObject();
    *(v4 + 16) = v19;
    *(v4 + 24) = v20;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A80, &qword_268B42590);
    OUTLINED_FUNCTION_52_2(v5, v6, v5);

    if (v19)
    {

      v8 = sub_2689AB4A8(v7, v19);

      if (v8)
      {
        sub_2689A98B4(v19);
        OUTLINED_FUNCTION_97_0();
        if (v4)
        {
          return OUTLINED_FUNCTION_80_2();
        }
      }

      else
      {
      }
    }

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v0, qword_2802CDA10);
    v9 = OUTLINED_FUNCTION_42_1();
    v10(v9);
    v11 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_89_2();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v13);
      OUTLINED_FUNCTION_65_1(&dword_2688BB000, v14, v15, "Failed to decode destinationDeviceId");
      OUTLINED_FUNCTION_12();
    }

    v16 = OUTLINED_FUNCTION_81_0();
    v17(v16);
  }

  return OUTLINED_FUNCTION_80_2();
}

uint64_t sub_268940390()
{
  v0 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_254();
  if (qword_2802A4DC8 != -1)
  {
    OUTLINED_FUNCTION_29_2(&qword_2802A4DC8);
  }

  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_2_11();
  sub_268946DBC(v2, v3, &unk_268B5120C);
  OUTLINED_FUNCTION_63_2();
  if (v20)
  {
    sub_2688EA03C(0, &qword_2802A5C90, 0x277D85C98);
    OUTLINED_FUNCTION_0_3();
    v4 = swift_allocObject();
    *(v4 + 16) = v19;
    *(v4 + 24) = v20;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A80, &qword_268B42590);
    OUTLINED_FUNCTION_52_2(v5, v6, v5);

    if (v19)
    {

      v8 = sub_2689AB4A8(v7, v19);

      if (v8)
      {
        sub_2689A98B4(v19);
        OUTLINED_FUNCTION_97_0();
        if (v4)
        {
          return OUTLINED_FUNCTION_80_2();
        }
      }

      else
      {
      }
    }

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v0, qword_2802CDA10);
    v9 = OUTLINED_FUNCTION_42_1();
    v10(v9);
    v11 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_89_2();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v13);
      OUTLINED_FUNCTION_65_1(&dword_2688BB000, v14, v15, "Failed to decode destinationDeviceId");
      OUTLINED_FUNCTION_12();
    }

    v16 = OUTLINED_FUNCTION_81_0();
    v17(v16);
  }

  return OUTLINED_FUNCTION_80_2();
}

uint64_t sub_2689405DC()
{
  v0 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_254();
  if (qword_2802A4DC8 != -1)
  {
    OUTLINED_FUNCTION_29_2(&qword_2802A4DC8);
  }

  type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_1_10();
  sub_268946DBC(v2, v3, &unk_268B44454);
  OUTLINED_FUNCTION_63_2();
  if (v20)
  {
    sub_2688EA03C(0, &qword_2802A5C90, 0x277D85C98);
    OUTLINED_FUNCTION_0_3();
    v4 = swift_allocObject();
    *(v4 + 16) = v19;
    *(v4 + 24) = v20;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A80, &qword_268B42590);
    OUTLINED_FUNCTION_52_2(v5, v6, v5);

    if (v19)
    {

      v8 = sub_2689AB4A8(v7, v19);

      if (v8)
      {
        sub_2689A98B4(v19);
        OUTLINED_FUNCTION_97_0();
        if (v4)
        {
          return OUTLINED_FUNCTION_80_2();
        }
      }

      else
      {
      }
    }

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v0, qword_2802CDA10);
    v9 = OUTLINED_FUNCTION_42_1();
    v10(v9);
    v11 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_89_2();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v13);
      OUTLINED_FUNCTION_65_1(&dword_2688BB000, v14, v15, "Failed to decode destinationDeviceId");
      OUTLINED_FUNCTION_12();
    }

    v16 = OUTLINED_FUNCTION_81_0();
    v17(v16);
  }

  return OUTLINED_FUNCTION_80_2();
}

uint64_t sub_268940828@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MediaPlayerIntent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_254();
  *v1 = 1048;
  *(v1 + 2) = 2;
  sub_268B35984();
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  *(v1 + v3[8]) = 2;
  *(v1 + v3[9]) = 3;
  v9 = sub_268B37924();
  OUTLINED_FUNCTION_33_2(v9);
  v10 = sub_268B37124();
  OUTLINED_FUNCTION_33_2(v10);
  *(v1 + v3[12]) = 26;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
  OUTLINED_FUNCTION_33_2(v11);
  v12 = MEMORY[0x277D84F90];
  *(v1 + v3[14]) = MEMORY[0x277D84F90];
  *(v1 + v3[15]) = v12;
  v13 = (v1 + v3[16]);
  *v13 = 0;
  v13[1] = 0;
  *(v1 + v3[17]) = v12;
  *(v1 + v3[18]) = v12;
  *(v1 + v3[19]) = v12;
  *(v1 + v3[20]) = v12;
  *(v1 + v3[21]) = v12;
  v14 = sub_268B37464();
  OUTLINED_FUNCTION_33_2(v14);
  v15 = (v1 + v3[23]);
  *v15 = 0;
  v15[1] = 0;
  v16 = sub_268B37034();
  OUTLINED_FUNCTION_33_2(v16);
  v17 = sub_268B378F4();
  OUTLINED_FUNCTION_33_2(v17);
  v18 = (v1 + v3[26]);
  *v18 = 0;
  v18[1] = 0;
  sub_2688C0464(v1, a1);
  OUTLINED_FUNCTION_84();
  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v3);
}

void sub_2689409CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v219 = v23;
  v25 = v24;
  v224 = v26;
  v27 = sub_268B37034();
  OUTLINED_FUNCTION_1();
  v220 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79(v31 - v30);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6128, &qword_268B3E808);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_74();
  v221 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  v35 = OUTLINED_FUNCTION_22(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_78();
  v228 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_22(v39);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  OUTLINED_FUNCTION_22(v42);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FB0, &unk_268B3DF00);
  OUTLINED_FUNCTION_22(v45);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  OUTLINED_FUNCTION_22(v48);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FA8, &unk_268B3DEF0);
  OUTLINED_FUNCTION_22(v51);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v53);
  v216 = type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_1_0();
  v225 = v56 - v55;
  OUTLINED_FUNCTION_9();
  v57 = sub_268B366C4();
  OUTLINED_FUNCTION_1();
  v229 = v58;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_1_0();
  v62 = v61 - v60;
  v63 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v65 = v64;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v67);
  v69 = &v187 - v68;
  v70 = type metadata accessor for MediaPlayerIntent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_100_0();
  v73 = *(v72 + 28);
  sub_268B35984();
  v209 = v73;
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  v78 = v70[10];
  sub_268B37924();
  v211 = v78;
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  sub_268B37124();
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
  v87 = v70[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
  v212 = v87;
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
  v192 = v70[14];
  *&v20[v192] = MEMORY[0x277D84F90];
  v92 = v70[22];
  sub_268B37464();
  v213 = v92;
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
  v97 = &v20[v70[23]];
  *v97 = 0;
  v97[1] = 0;
  v195 = v97;
  v197 = v70[24];
  OUTLINED_FUNCTION_96();
  v222 = v27;
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v27);
  v226 = v70;
  v101 = v70[25];
  sub_268B378F4();
  v214 = v101;
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v106 = __swift_project_value_buffer(v63, qword_2802CDA10);
  v107 = *(v65 + 16);
  v190 = v106;
  v191 = v65 + 16;
  v189 = v107;
  (v107)(v69);
  v199 = *(v229 + 16);
  v199(v62, v25, v57);
  v108 = sub_268B37A34();
  v109 = v62;
  v110 = v25;
  v111 = v69;
  v112 = v65;
  v113 = sub_268B37ED4();
  v114 = os_log_type_enabled(v108, v113);
  v227 = v57;
  v198 = v63;
  v194 = v112;
  if (v114)
  {
    v115 = OUTLINED_FUNCTION_172_0();
    v223 = OUTLINED_FUNCTION_173_0();
    *&v230 = v223;
    *v115 = 136315138;
    OUTLINED_FUNCTION_21_4();
    sub_268946DBC(v116, v117, MEMORY[0x277D5F460]);
    v118 = sub_268B38404();
    v210 = v111;
    v119 = v118;
    v121 = v120;
    v215 = *(v229 + 8);
    v215(v109, v227);
    v122 = sub_26892CDB8(v119, v121, &v230);
    v57 = v227;

    *(v115 + 4) = v122;
    _os_log_impl(&dword_2688BB000, v108, v113, "Creating MediaPlayerNLv3Intent using: %s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v223);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v123 = *(v112 + 8);
    v124 = v210;
    v125 = v198;
  }

  else
  {

    v126 = OUTLINED_FUNCTION_189();
    v215 = v127;
    (v127)(v126);
    v123 = *(v112 + 8);
    v124 = v111;
    v125 = v63;
  }

  v188 = v123;
  v123(v124, v125);
  v128 = v226[9];
  v200 = v226[8];
  v201 = v128;
  v202 = v226[12];
  v129 = v226[16];
  v203 = v226[15];
  v204 = v129;
  v130 = v226[18];
  v205 = v226[17];
  v206 = v130;
  v131 = v226[20];
  v207 = v226[19];
  v208 = v131;
  v132 = &v20[v226[26]];
  v210 = v226[21];
  v223 = v110;
  v199(v225, v110, v57);
  if (qword_2802A5038 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_14();
  sub_268946DBC(v133, v134, &unk_268B4B4F8);
  OUTLINED_FUNCTION_19_3();
  sub_268B35C64();
  *v20 = v230;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x8000000268B562C0;
  v136 = sub_268AA8BA0();
  v138 = v137;
  swift_setDeallocating();
  sub_268ACE684();
  *v132 = v136;
  v132[1] = v138;
  if (qword_2802A5050 != -1)
  {
    swift_once();
  }

  sub_268B35C64();
  v20[1] = v230;
  v140 = v221;
  v139 = v222;
  v141 = v220;
  if (qword_2802A5058 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_19_3();
  sub_268B35C64();
  v20[2] = v230;
  if (qword_2802A5068 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_19_3();
  sub_268B35C64();
  OUTLINED_FUNCTION_58_2(&qword_2802A5FA8, &unk_268B3DEF0, &v235);
  if (qword_2802A5060 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_19_3();
  sub_268B35C64();
  v20[v200] = v230;
  if (qword_2802A5070 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_19_3();
  sub_268B35C64();
  v20[v201] = v230;
  OUTLINED_FUNCTION_76_1();
  sub_268AA8D70(v142);
  OUTLINED_FUNCTION_58_2(&qword_2802A5CA8, &unk_268B3CE30, &v237);
  v20[v202] = sub_268AA91F0();
  if (qword_2802A5080 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_19_3();
  sub_268B35C64();
  OUTLINED_FUNCTION_58_2(&qword_2802A5FB0, &unk_268B3DF00, &v238);
  if (qword_2802A4D88 != -1)
  {
    OUTLINED_FUNCTION_7_5(&qword_2802A4D88);
  }

  OUTLINED_FUNCTION_19_3();
  v143 = sub_268B35C74();
  OUTLINED_FUNCTION_73_2(v143, &v230);
  if (qword_2802A4D90 != -1)
  {
    OUTLINED_FUNCTION_31_1(&qword_2802A4D90);
  }

  OUTLINED_FUNCTION_19_3();
  sub_268B35C64();
  *&v20[v204] = v230;
  if (qword_2802A4D98 != -1)
  {
    OUTLINED_FUNCTION_6_9(&qword_2802A4D98);
  }

  OUTLINED_FUNCTION_19_3();
  v144 = sub_268B35C74();
  OUTLINED_FUNCTION_73_2(v144, &v231);
  if (qword_2802A4DA0 != -1)
  {
    OUTLINED_FUNCTION_5_3(&qword_2802A4DA0);
  }

  OUTLINED_FUNCTION_19_3();
  v145 = sub_268B35C74();
  OUTLINED_FUNCTION_73_2(v145, &v232);
  if (qword_2802A4DA8 != -1)
  {
    OUTLINED_FUNCTION_4_5(&qword_2802A4DA8);
  }

  OUTLINED_FUNCTION_19_3();
  v146 = sub_268B35C74();
  OUTLINED_FUNCTION_73_2(v146, &v233);
  if (qword_2802A4DB0 != -1)
  {
    OUTLINED_FUNCTION_9_7(&qword_2802A4DB0);
  }

  OUTLINED_FUNCTION_19_3();
  v147 = sub_268B35C74();
  OUTLINED_FUNCTION_73_2(v147, &v234);
  OUTLINED_FUNCTION_37_3();
  sub_26893F360();
  OUTLINED_FUNCTION_73_2(v148, &v236);
  if (qword_2802A4DC0 != -1)
  {
    OUTLINED_FUNCTION_36_1(&qword_2802A4DC0);
  }

  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_19_3();
  sub_268B35C64();
  OUTLINED_FUNCTION_58_2(&qword_2802A5BA8, &qword_268B3C690, &a12);
  if (qword_2802A4DD8 != -1)
  {
    OUTLINED_FUNCTION_52(&qword_2802A4DD8);
  }

  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_19_3();
  sub_268B35C64();
  OUTLINED_FUNCTION_58_2(&qword_2802A5908, &qword_268B3D920, &a13);
  if (qword_2802A4DD0 != -1)
  {
    OUTLINED_FUNCTION_53(&qword_2802A4DD0);
  }

  OUTLINED_FUNCTION_19_3();
  sub_268B35C64();
  v149 = v217;
  (*(v141 + 104))(v217, *MEMORY[0x277D5F728], v139);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v150, v151, v152, v139);
  v153 = *(v218 + 48);
  v154 = &unk_268B3BEC0;
  OUTLINED_FUNCTION_103_1();
  sub_268932738(v155, v156, v157, v158);
  OUTLINED_FUNCTION_103_1();
  sub_268932738(v159, v160, v161, v162);
  v163 = OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_135(v163, v164, v139);
  if (!v166)
  {
    v165 = v196;
    sub_268932738(v140, v196, &qword_2802A58F0, &unk_268B3BEC0);
    OUTLINED_FUNCTION_135(&v153[v140], 1, v139);
    if (!v166)
    {
      v167 = v187;
      (*(v141 + 32))(v187, &v153[v140], v139);
      sub_268946DBC(&qword_2802A6130, MEMORY[0x277D5F748], MEMORY[0x277D5F758]);
      v168 = sub_268B37BB4();
      v169 = *(v141 + 8);
      v169(v167, v139);
      v154 = &qword_2802A58F0;
      v153 = &unk_268B3BEC0;
      sub_2688C058C(v149, &qword_2802A58F0, &unk_268B3BEC0);
      v169(v165, v139);
      sub_2688C058C(v140, &qword_2802A58F0, &unk_268B3BEC0);
      if (v168)
      {
        goto LABEL_49;
      }

LABEL_47:
      sub_268946E04(v228, &v20[v197]);
      goto LABEL_52;
    }

    sub_2688C058C(v149, &qword_2802A58F0, &unk_268B3BEC0);
    (*(v141 + 8))(v165, v139);
LABEL_46:
    sub_2688C058C(v140, &qword_2802A6128, &qword_268B3E808);
    goto LABEL_47;
  }

  sub_2688C058C(v149, &qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_135(&v153[v140], 1, v139);
  if (!v166)
  {
    goto LABEL_46;
  }

  sub_2688C058C(v140, &qword_2802A58F0, &unk_268B3BEC0);
LABEL_49:
  v170 = v193;
  v171 = v198;
  v189(v193, v190, v198);
  v172 = sub_268B37A34();
  v173 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_115_0(v173))
  {
    v174 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v174);
    _os_log_impl(&dword_2688BB000, v172, v154, "Got .airplaySpeaker as device type. Ignoring since it needs to be treated as a setting name instead", v153, 2u);
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_43_2();
  v188(v170, v171);
  *&v20[v192] = &unk_28794E000;
LABEL_52:
  if (v219)
  {
    v175 = sub_268940144();
    v177 = v176;
    v178 = OUTLINED_FUNCTION_72_3();
    v179(v178);
    sub_2688C058C(v228, &qword_2802A58F0, &unk_268B3BEC0);
    OUTLINED_FUNCTION_48_2();
    v180 = v195;
    *v195 = v175;
    v180[1] = v177;
  }

  else
  {
    v181 = OUTLINED_FUNCTION_72_3();
    v182(v181);
    sub_2688C058C(v228, &qword_2802A58F0, &unk_268B3BEC0);
    OUTLINED_FUNCTION_48_2();
  }

  sub_268946C8C(v20, v224);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v183, v184, v185, v226);
  OUTLINED_FUNCTION_22_3();
  sub_268946E74(v20, v186);
  OUTLINED_FUNCTION_23();
}

Swift::String_optional __swiftcall INHomeAutomationEntityProvider.haHomeName()()
{
  v1 = sub_268945374(v0, &selRef_homeName);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

void INHomeAutomationEntityProvider.haServiceNames()()
{
  OUTLINED_FUNCTION_26();
  v53 = sub_268B378F4();
  OUTLINED_FUNCTION_1();
  v50 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v52 = v4 - v3;
  OUTLINED_FUNCTION_9();
  v5 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v5, qword_2802CDA10);
  OUTLINED_FUNCTION_49_1();
  v10(v9);
  v11 = v0;
  v12 = sub_268B37A34();
  v13 = sub_268B37F04();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_172_0();
    v48 = OUTLINED_FUNCTION_173_0();
    v54 = v48;
    *v14 = 136315138;
    sub_2689452B0(v11, &selRef_serviceNames);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5F98, &qword_268B3DE20);
    v15 = sub_268B38094();
    v17 = v16;

    v18 = sub_26892CDB8(v15, v17, &v54);

    *(v14 + 4) = v18;
    OUTLINED_FUNCTION_93_2(&dword_2688BB000, v19, v13, "INHomeAutomationEntityProvider#haServiceNames serviceNames: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  v20 = OUTLINED_FUNCTION_74_2();
  v21(v20);
  v22 = sub_2689452B0(v11, &selRef_serviceNames);
  if (v22)
  {
    sub_26893E6A8(v22);
    v28 = v27;
    if (qword_2802A4D58 != -1)
    {
      OUTLINED_FUNCTION_30_2(&qword_2802A4D58);
    }

    v29 = off_2802A5F90;
    v30 = *(off_2802A5F90 + 2);
    v31 = MEMORY[0x277D84F90];
    if (v30)
    {
      v54 = MEMORY[0x277D84F90];
      sub_26894470C(0, v30, 0, v23, v24, v25, v26);
      v31 = v54;
      v32 = v50 + 16;
      OUTLINED_FUNCTION_258();
      v34 = &v29[v33];
      v49 = *(v50 + 72);
      v51 = v35;
      v36 = (v32 - 8);
      do
      {
        v51(v52, v34, v53);
        v37 = sub_268B378E4();
        v39 = v38;
        (*v36)(v52, v53);
        v54 = v31;
        v45 = *(v31 + 16);
        v44 = *(v31 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_26894470C(v44 > 1, v45 + 1, 1, v40, v41, v42, v43);
          v31 = v54;
        }

        *(v31 + 16) = v45 + 1;
        v46 = v31 + 16 * v45;
        *(v46 + 32) = v37;
        *(v46 + 40) = v39;
        v34 += v49;
        --v30;
      }

      while (v30);
    }

    v47 = sub_268944C74(v31, v28);

    sub_268943C44(v47);
  }

  OUTLINED_FUNCTION_23();
}

void INHomeAutomationEntityProvider.haFromEntities()()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FA0, qword_268B3DE28);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_100_0();
  v5 = sub_268B37074();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_78();
  v34 = v13;
  v14 = sub_268945304(v2);
  if (v14)
  {
    v15 = v14;
    v16 = sub_2688EFD0C();
    v17 = 0;
    v35 = v15 & 0xFFFFFFFFFFFFFF8;
    v36 = v15 & 0xC000000000000001;
    v18 = (v7 + 32);
    v19 = MEMORY[0x277D84F90];
    v32 = v15;
    v33 = v11;
    while (1)
    {
      if (v16 == v17)
      {

        goto LABEL_19;
      }

      if (v36)
      {
        v20 = MEMORY[0x26D625BD0](v17, v15);
      }

      else
      {
        if (v17 >= *(v35 + 16))
        {
          goto LABEL_21;
        }

        v20 = *(v15 + 8 * v17 + 32);
      }

      v21 = v20;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v37 = v20;
      sub_268943CD0(&v37, v0);

      OUTLINED_FUNCTION_135(v0, 1, v5);
      if (v22)
      {
        sub_2688C058C(v0, &qword_2802A5FA0, qword_268B3DE28);
      }

      else
      {
        v23 = v16;
        v24 = *v18;
        (*v18)(v34, v0, v5);
        v24(v11, v34, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2689874FC();
          v19 = v30;
        }

        v26 = *(v19 + 16);
        if (v26 >= *(v19 + 24) >> 1)
        {
          sub_2689874FC();
          v19 = v31;
        }

        *(v19 + 16) = v26 + 1;
        OUTLINED_FUNCTION_258();
        v29 = v19 + v27 + *(v28 + 72) * v26;
        v11 = v33;
        v24(v29, v33, v5);
        v16 = v23;
        v15 = v32;
      }

      ++v17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_23();
  }
}

void INHomeAutomationEntityProvider.haDeviceQuantifier()()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  v4 = v3;
  v5 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_53_2();
  sub_268945374(v2, &selRef_intentDeviceQuantifier);
  if (v12)
  {

    OUTLINED_FUNCTION_150();
    sub_268B37444();
    v13 = sub_268B37464();
    OUTLINED_FUNCTION_135(v1, 1, v13);
    if (v14)
    {
      sub_2688C058C(v1, &qword_2802A5BA8, &qword_268B3C690);
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      __swift_project_value_buffer(v5, qword_2802CDA10);
      OUTLINED_FUNCTION_13_5();
      v15(v9);

      v16 = sub_268B37A34();
      v17 = sub_268B37EE4();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_172_0();
        v33 = OUTLINED_FUNCTION_173_0();
        *v18 = 136315138;
        v19 = OUTLINED_FUNCTION_150();
        v22 = sub_26892CDB8(v19, v20, v21);

        *(v18 + 4) = v22;
        OUTLINED_FUNCTION_93_2(&dword_2688BB000, v23, v17, "INHomeAutomationEntityProvider#haDeviceQuantifier Unable to get device quantifier for value: %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {
      }

      v31 = OUTLINED_FUNCTION_189();
      v32(v31);
      v29 = OUTLINED_FUNCTION_286();
    }

    else
    {

      (*(*(v13 - 8) + 32))(v4, v1, v13);
      v29 = v4;
      v30 = 0;
    }

    __swift_storeEnumTagSinglePayload(v29, v30, 1, v13);
    OUTLINED_FUNCTION_23();
  }

  else
  {
    sub_268B37464();
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_23();

    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  }
}

void INHomeAutomationEntityProvider.haDeviceType()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  sub_268945374(v1, &selRef_intentDeviceType);
  if (v9)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v10 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v4 + 16))(v8, v10, v2);

    v11 = sub_268B37A34();
    v12 = sub_268B37F04();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_172_0();
      v28 = OUTLINED_FUNCTION_173_0();
      *v13 = 136315138;
      v14 = OUTLINED_FUNCTION_278();
      *(v13 + 4) = sub_26892CDB8(v14, v15, v16);
      _os_log_impl(&dword_2688BB000, v11, v12, "INHomeAutomationEntityProvider#haDeviceType Getting device type for value: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    v17 = OUTLINED_FUNCTION_189();
    v18(v17);
    OUTLINED_FUNCTION_278();
    sub_268B37004();
    sub_268B37034();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_23();
  }

  else
  {
    sub_268B37034();
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_23();

    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }
}

void INHomeAutomationEntityProvider.haPlaceHint()()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_53_2();
  v13 = sub_268B378F4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  sub_268945374(v0, &selRef_intentPlaceHint);
  if (v20)
  {
    OUTLINED_FUNCTION_23();

    sub_268B378D4();
    return;
  }

  v22 = sub_2689452B0(v0, &selRef_serviceNames);
  if (v22)
  {
    v77 = v19;
    v74 = v1;
    v70 = v6;
    v71 = v4;
    sub_26893E6A8(v22);
    v28 = v27;
    if (qword_2802A4D58 != -1)
    {
      OUTLINED_FUNCTION_30_2(&qword_2802A4D58);
    }

    v29 = off_2802A5F90;
    v30 = *(off_2802A5F90 + 2);
    v31 = MEMORY[0x277D84F90];
    v69 = v15;
    if (v30)
    {
      v68 = v3;
      v72 = v10;
      v78 = MEMORY[0x277D84F90];
      sub_26894470C(0, v30, 0, v23, v24, v25, v26);
      OUTLINED_FUNCTION_258();
      v33 = &v29[v32];
      v75 = *(v34 + 56);
      v76 = v35;
      v36 = (v34 - 8);
      do
      {
        v76(v77, v33, v13);
        v37 = sub_268B378E4();
        v39 = v38;
        (*v36)(v77, v13);
        v78 = v31;
        v45 = *(v31 + 16);
        v44 = *(v31 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_26894470C(v44 > 1, v45 + 1, 1, v40, v41, v42, v43);
          v31 = v78;
        }

        *(v31 + 16) = v45 + 1;
        v46 = v31 + 16 * v45;
        *(v46 + 32) = v37;
        *(v46 + 40) = v39;
        v33 += v75;
        --v30;
      }

      while (v30);
      v3 = v68;
      v10 = v72;
    }

    v47 = sub_2689448CC(v31, v28);

    v48 = sub_2689A98CC(v47);
    v50 = v49;

    if (v50)
    {

      sub_268B378D4();
      OUTLINED_FUNCTION_135(v74, 1, v13);
      if (!v51)
      {

        (*(v69 + 32))(v3, v74, v13);
        v66 = v3;
        v67 = 0;
LABEL_26:
        __swift_storeEnumTagSinglePayload(v66, v67, 1, v13);
        OUTLINED_FUNCTION_23();
        return;
      }

      sub_2688C058C(v74, &qword_2802A5908, &qword_268B3D920);
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v52 = __swift_project_value_buffer(v71, qword_2802CDA10);
      (*(v70 + 16))(v10, v52, v71);

      v53 = sub_268B37A34();
      v54 = v10;
      v55 = sub_268B37EE4();

      if (os_log_type_enabled(v53, v55))
      {
        v73 = v54;
        v56 = OUTLINED_FUNCTION_172_0();
        v57 = OUTLINED_FUNCTION_173_0();
        v78 = v57;
        *v56 = 136315138;
        v58 = sub_26892CDB8(v48, v50, &v78);
        v59 = v13;
        v60 = v58;

        *(v56 + 4) = v60;
        v13 = v59;
        _os_log_impl(&dword_2688BB000, v53, v55, "INHomeAutomationEntityProvider#haPlaceHint Unable to get place hint for value: %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v57);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        (*(v70 + 8))(v73, v71);
      }

      else
      {

        (*(v70 + 8))(v54, v71);
      }
    }

    v66 = v3;
    v67 = 1;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_23();

  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
}

unint64_t sub_268942CA4()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B38464();
  OUTLINED_FUNCTION_129();

  if (v0 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_268942CFC()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B38464();
  OUTLINED_FUNCTION_129();

  if (v0 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_268942D54(char a1)
{
  result = 0x636973756DLL;
  switch(a1)
  {
    case 1:
      result = 0x74736163646F70;
      break;
    case 2:
      result = 0x7473696C79616C70;
      break;
    case 3:
      result = 0x646956636973756DLL;
      break;
    case 4:
      result = 1735290739;
      break;
    case 5:
      result = 0x6F6F426F69647561;
      break;
    case 6:
      result = 0x6F65646976;
      break;
    case 7:
      result = 0x5573656E755469;
      break;
    case 8:
      result = 0x74616C69706D6F63;
      break;
    case 9:
      result = 0x6D75626C61;
      break;
    case 10:
      result = 0x776F68537674;
      break;
    case 11:
      result = 2003789939;
      break;
    case 12:
      result = 0x6F68536F69646172;
      break;
    case 13:
      result = 0x5374736163646F70;
      break;
    case 14:
      result = 0x616C50636973756DLL;
      break;
    case 15:
      result = 0x6E6F6974617473;
      break;
    case 16:
      result = 0x65646F73697065;
      break;
    case 17:
      result = 28773;
      break;
    case 18:
      result = 28780;
      break;
    case 19:
      result = 0x656C676E6973;
      break;
    case 20:
      v3 = 1919837543;
      goto LABEL_17;
    case 21:
      result = 1937204590;
      break;
    case 22:
      result = 0x656E6F74676E6972;
      break;
    case 23:
      result = 0x73646E756F73;
      break;
    case 24:
      v3 = 1769369453;
LABEL_17:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 25:
      result = 0x7972617262696CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26894301C()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26894306C(char a1)
{
  result = 0x656C67676F74;
  switch(a1)
  {
    case 1:
      result = 7628147;
      break;
    case 2:
      result = 0x656C62616E65;
      break;
    case 3:
      result = 0x656C6261736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268943104(char a1)
{
  if (a1)
  {
    return 6710895;
  }

  else
  {
    return 28271;
  }
}

uint64_t sub_268943134()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268943188(char a1)
{
  if (a1)
  {
    return 0x676E69646E65;
  }

  else
  {
    return 0x6E69616761;
  }
}

BOOL sub_2689431B8()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  return v0 != 0;
}

BOOL sub_268943220()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  return v0 != 0;
}

uint64_t sub_268943288(char a1)
{
  if (a1)
  {
    return 1701079400;
  }

  else
  {
    return 2003789939;
  }
}

unint64_t sub_268943494@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268942CA4();
  *a1 = result;
  return result;
}

uint64_t sub_2689434C4()
{
  v1 = OUTLINED_FUNCTION_78_2();
  result = sub_26893E3F8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_268943560@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268942CFC();
  *a1 = result;
  return result;
}

unint64_t sub_268943590()
{
  v1 = OUTLINED_FUNCTION_78_2();
  result = sub_268942D54(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_26894362C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26894301C();
  *a1 = result;
  return result;
}

uint64_t sub_26894365C()
{
  v1 = OUTLINED_FUNCTION_78_2();
  result = sub_26894306C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2689436F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268943134();
  *a1 = result;
  return result;
}

uint64_t sub_268943730()
{
  v1 = OUTLINED_FUNCTION_78_2();
  result = sub_268943104(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2689437CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268943134();
  *a1 = result;
  return result;
}

uint64_t sub_268943804()
{
  v1 = OUTLINED_FUNCTION_78_2();
  result = sub_268943188(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_268943888@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2689431B8();
  *a1 = result;
  return result;
}

BOOL sub_268943938@<W0>(_BYTE *a1@<X8>)
{
  result = sub_268943220();
  *a1 = result;
  return result;
}

unint64_t sub_26894396C@<X0>(void *a1@<X8>)
{
  result = sub_26894326C();
  *a1 = 0xD000000000000011;
  a1[1] = v3;
  return result;
}

uint64_t sub_2689439EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), void (*a6)(void))
{
  v8 = a4();
  v9 = a5();
  a6();
  v10 = OUTLINED_FUNCTION_278();

  return MEMORY[0x2821C21F8](v10, v11, v8, v9, v12);
}

uint64_t sub_268943A78()
{
  v1 = OUTLINED_FUNCTION_78_2();
  result = sub_268943288(v1);
  *v0 = result;
  v0[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_268943AA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A61F8, &qword_268B3E838);
  v0 = sub_268B378F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_268B3DE10;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D5F9B8], v0);
  v6(v5 + v2, *MEMORY[0x277D5F9A8], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D5F9B0], v0);
  result = (v6)(v5 + 3 * v2, *MEMORY[0x277D5F9C0], v0);
  off_2802A5F90 = v4;
  return result;
}

uint64_t static INHomeAutomationEntityProvider.locationPlaceHints.getter()
{
  if (qword_2802A4D58 != -1)
  {
    OUTLINED_FUNCTION_30_2(&qword_2802A4D58);
  }
}

void *sub_268943C44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_2689880CC(*(a1 + 16), 0);
  OUTLINED_FUNCTION_103_1();
  sub_268AE1274();
  v4 = v3;
  sub_2689475B8();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_268943CD0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_268B37A54();
  v46 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - v7;
  v9 = sub_268B37054();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = *a1;
  v17 = sub_268945374(v16, &selRef_value);
  if (v18)
  {
    v45 = v17;
    v19 = [v16 type];
    if (v19 == 3)
    {
      v20 = MEMORY[0x277D5F778];
    }

    else if (v19 == 2)
    {
      v20 = MEMORY[0x277D5F770];
    }

    else
    {
      if (v19 != 1)
      {
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v35 = __swift_project_value_buffer(v3, qword_2802CDA10);
        (*(v46 + 16))(v8, v35, v3);
        v36 = v16;
        v37 = sub_268B37A34();
        v44 = sub_268B37F04();
        if (os_log_type_enabled(v37, v44))
        {
          v38 = swift_slowAlloc();
          v39 = v36;
          v43 = v36;
          v40 = v38;
          *v38 = 134217984;
          *(v38 + 4) = [v39 type];

          _os_log_impl(&dword_2688BB000, v37, v44, "INHomeAutomationEntityProvider#haFromEntities Unknown from entity type found: %ld", v40, 0xCu);
          MEMORY[0x26D6266E0](v40, -1, -1);
        }

        else
        {

          v37 = v36;
        }

        v34 = v47;

        (*(v46 + 8))(v8, v3);
        (*(v10 + 104))(v15, *MEMORY[0x277D5F780], v9);
        goto LABEL_21;
      }

      v20 = MEMORY[0x277D5F788];
    }

    (*(v10 + 104))(v15, *v20, v9);
    v34 = v47;
LABEL_21:
    (*(v10 + 16))(v13, v15, v9);
    sub_268B37064();
    (*(v10 + 8))(v15, v9);
    v33 = 0;
    goto LABEL_22;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v3, qword_2802CDA10);
  v22 = v46;
  (*(v46 + 16))(v6, v21, v3);
  v23 = v16;
  v24 = sub_268B37A34();
  v25 = sub_268B37EE4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v48 = v27;
    *v26 = 136315138;
    v28 = [v23 description];
    v29 = sub_268B37BF4();
    v31 = v30;

    v32 = sub_26892CDB8(v29, v31, &v48);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_2688BB000, v24, v25, "INHomeAutomationEntityProvider#haFromEntities Unable to get from entity value for entity: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x26D6266E0](v27, -1, -1);
    MEMORY[0x26D6266E0](v26, -1, -1);

    (*(v46 + 8))(v6, v3);
  }

  else
  {

    (*(v22 + 8))(v6, v3);
  }

  v33 = 1;
  v34 = v47;
LABEL_22:
  v41 = sub_268B37074();
  return __swift_storeEnumTagSinglePayload(v34, v33, 1, v41);
}