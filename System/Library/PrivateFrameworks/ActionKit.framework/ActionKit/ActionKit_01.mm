uint64_t sub_23DE501C8()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 440) = v0;

  v5 = *(v2 + 424);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_23E1FDE6C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = sub_23DE50DD4;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_23E1FDE6C();
      v8 = v9;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = sub_23DE50348;
  }

  return MEMORY[0x2822009F8](v10, v6, v8);
}

uint64_t sub_23DE50348()
{
  OUTLINED_FUNCTION_23();

  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  return MEMORY[0x2822009F8](sub_23DE503A8, v1, v2);
}

void sub_23DE503A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t *buf, uint64_t a14, os_log_t log, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_46();
  if (__swift_getEnumTagSinglePayload(*(v28 + 288), 1, *(v28 + 264)) != 1)
  {
    v31 = *(v28 + 448);
    v32 = OUTLINED_FUNCTION_35_0();
    v33(v32);
    v34 = OUTLINED_FUNCTION_36_0();
    if (v35(v34) != v31)
    {
      (*(*(v28 + 272) + 8))(*(v28 + 280), *(v28 + 264));
      goto LABEL_74;
    }

    v36 = *(v28 + 232);
    (*(*(v28 + 272) + 96))(*(v28 + 280), *(v28 + 264));
    v29 = *(v36 + 32);
    v37 = OUTLINED_FUNCTION_35_0();
    (v29)(v37);
    v38 = OUTLINED_FUNCTION_58_0();
    v39(v38);
    OUTLINED_FUNCTION_45_0(v28 + 144, v28 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v28 + 416);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

    goto LABEL_90;
  }

  v30 = *(v28 + 440);
  (*(*(v28 + 328) + 8))(*(v28 + 336), *(v28 + 320));
  OUTLINED_FUNCTION_45_0(v28 + 144, v28 + 16);
  sub_23DE50F78((v28 + 144));
  swift_endAccess();
  if (v30)
  {
    OUTLINED_FUNCTION_41();
    return;
  }

  v48 = *(v28 + 144);
  if (*(v48 + 16))
  {
    sub_23E1FB7BC();
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v28 + 392);
    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_1();
      sub_23DE4CD50();
      v50 = v146;
    }

    v51 = *(v50 + 16);
    if (v51 >= *(v50 + 24) >> 1)
    {
      OUTLINED_FUNCTION_61_0();
      sub_23DE4CD50();
      v50 = v147;
    }

    v52 = *(v28 + 400);
    *(v50 + 16) = v51 + 1;
    *(v50 + 8 * v51 + 32) = v48;
    *(v28 + 136) = v50;
    sub_23E1FCB9C();
    sub_23E1FB7BC();
    v53 = v52;
    v54 = sub_23E1FD02C();
    v55 = sub_23E1FE1AC();
    if (OUTLINED_FUNCTION_51(v55))
    {
      v56 = *(v28 + 400);
      v57 = *(v28 + 168);
      v58 = OUTLINED_FUNCTION_52_0();
      *v58 = 134218240;
      *(v58 + 4) = *(v48 + 16);
      *(v58 + 12) = 2048;
      sub_23DE59420(v56, v57);
      if (v60)
      {
        v61 = -1;
      }

      else
      {
        v61 = v59;
      }

      *(v58 + 14) = v61;

      _os_log_impl(&dword_23DE30000, v54, v55, "WFSpotlightSearchAction: received %ld items from query %ld", v58, 0x16u);
      OUTLINED_FUNCTION_56();
      v29 = *(v28 + 400);
    }

    else
    {

      v29 = *(v28 + 400);
      v54 = v29;
    }

    v62 = OUTLINED_FUNCTION_66();
    v63(v62);
  }

  else
  {

    v50 = *(v28 + 392);
  }

  v64 = *(v28 + 408);
  v41 = MEMORY[0x277D84F90];
  if (v64 != *(v28 + 376))
  {
    *(v28 + 392) = v50;
    v80 = *(v28 + 168);
    v81 = v80 & 0xC000000000000001;
    sub_23DE570B0(v64, (v80 & 0xC000000000000001) == 0, v80);
    v82 = *(v28 + 168);
    if (v81)
    {
      v83 = MEMORY[0x23EF04DD0](v64, v82);
    }

    else
    {
      v83 = *(v82 + 8 * v64 + 32);
    }

    *(v28 + 400) = v83;
    *(v28 + 408) = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      __break(1u);
LABEL_92:
      MEMORY[0x282200308](v83);
      return;
    }

    v117 = *(v28 + 304);
    v116 = *(v28 + 312);
    v118 = *(v28 + 296);
    *(v28 + 144) = v41;
    sub_23E1FE03C();
    sub_23E1FDFFC();
    (*(v117 + 8))(v116, v118);
    goto LABEL_73;
  }

  v150 = *(v28 + 384);
  sub_23E1FCB9C();
  v65 = sub_23E1FD02C();
  v66 = sub_23E1FE19C();
  if (os_log_type_enabled(v65, v66))
  {
    v153 = v66;
    v67 = OUTLINED_FUNCTION_52_0();
    *v67 = 134218240;
    *(v67 + 4) = *(v50 + 16);
    bufa = v67;
    *(v67 + 12) = 2048;
    v68 = *(v50 + 16);
    sub_23E1FB7BC();
    for (i = 0; ; ++i)
    {
      if (v68 == i)
      {

        v84 = *(v41 + 16);

        *(bufa + 14) = v84;
        _os_log_impl(&dword_23DE30000, v65, v153, "WFSpotlightSearchAction: received results from %ld queries with a total of %ld items", bufa, 0x16u);
        OUTLINED_FUNCTION_16_1();
        v41 = MEMORY[0x277D84F90];
        goto LABEL_45;
      }

      if (i >= *(v50 + 16))
      {
        break;
      }

      v70 = *(v50 + 8 * i + 32);
      v71 = *(v70 + 16);
      v72 = *(v41 + 16);
      v29 = v72 + v71;
      if (__OFADD__(v72, v71))
      {
        goto LABEL_84;
      }

      sub_23E1FB7BC();
      v73 = swift_isUniquelyReferenced_nonNull_native();
      if (!v73 || v29 > *(v41 + 24) >> 1)
      {
        if (v72 <= v29)
        {
          v74 = v72 + v71;
        }

        else
        {
          v74 = v72;
        }

        sub_23DE4CD10(v73, v74, 1, v41);
        v41 = v75;
      }

      if (*(v70 + 16))
      {
        OUTLINED_FUNCTION_66_0();
        if (v76 < v71)
        {
          goto LABEL_86;
        }

        OUTLINED_FUNCTION_56_0();
        swift_arrayInitWithCopy();

        if (v71)
        {
          v77 = *(v41 + 16);
          v78 = __OFADD__(v77, v71);
          v79 = v77 + v71;
          if (v78)
          {
            goto LABEL_88;
          }

          *(v41 + 16) = v79;
        }
      }

      else
      {

        if (v71)
        {
          goto LABEL_85;
        }
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    v138 = OUTLINED_FUNCTION_6_1();
    sub_23DE4CD10(v138, v139, v140, v41);
    v41 = v141;
LABEL_6:
    v43 = *(v41 + 16);
    v42 = *(v41 + 24);
    if (v43 >= v42 >> 1)
    {
      OUTLINED_FUNCTION_9(v42);
      OUTLINED_FUNCTION_61_0();
      sub_23DE4CD10(v142, v143, v144, v41);
      v41 = v145;
    }

    v44 = *(v28 + 232);
    *(v41 + 16) = v43 + 1;
    OUTLINED_FUNCTION_31_0();
    (v29)(v41 + v45 + *(v44 + 72) * v43);
    *(v28 + 144) = v41;
    swift_endAccess();
    v46 = OUTLINED_FUNCTION_50();
    v47(v46);
LABEL_73:
    *(v28 + 416) = v41;
LABEL_74:
    *(v28 + 424) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_15_1();
    sub_23DE58FC8(v119, v120, MEMORY[0x277CC21D0]);
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v28 + 432) = v121;
    *v121 = v122;
    OUTLINED_FUNCTION_10_1(v121);
    OUTLINED_FUNCTION_41();

    goto LABEL_92;
  }

LABEL_45:
  v85 = *(v28 + 192);

  v86 = OUTLINED_FUNCTION_66();
  v148 = v87;
  v149 = v85 + 8;
  v87(v86);
  *(v28 + 160) = v41;
  swift_beginAccess();
  v88 = 0;
  v89 = v41;
  while (1)
  {
    v90 = *(v89 + 16);
    if (v90 >= sub_23DE4E77C())
    {
      break;
    }

    v91 = *(v50 + 16);
    if (!v91)
    {
      break;
    }

    sub_23E1FB7BC();
    v92 = 0;
    v29 = v41;
    while (v91 != v92)
    {
      if (v92 >= *(v50 + 16))
      {
        __break(1u);
        goto LABEL_83;
      }

      v93 = *(v50 + 8 * v92++ + 32);
      if (*(v93 + 16))
      {
        loga = v88;
        sub_23E1FB7BC();
        a16 = v29;
        v94 = v89;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = OUTLINED_FUNCTION_13_1();
          sub_23DE64034(v95, v96, v97);
        }

        v99 = *(v29 + 16);
        v98 = *(v29 + 24);
        if (v99 >= v98 >> 1)
        {
          v100 = OUTLINED_FUNCTION_9(v98);
          sub_23DE64034(v100, v99 + 1, 1);
        }

        *(v29 + 16) = v99 + 1;
        *(v29 + 8 * v99 + 32) = v93;
        v41 = MEMORY[0x277D84F90];
        v89 = v94;
        v88 = loga;
      }
    }

    *(v28 + 136) = v29;

    v101 = *(v29 + 16);
    if (!v101)
    {
      break;
    }

    v102 = v88 % v101;
    if (*(*(v29 + 8 * (v88 % v101) + 32) + 16))
    {
      OUTLINED_FUNCTION_45_0(v28 + 136, v28 + 88);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23DF31A94();
        v29 = v107;
      }

      if (v102 >= *(v29 + 16))
      {
        goto LABEL_89;
      }

      sub_23DE5101C(*(v28 + 240));
      *(v28 + 136) = v29;
      swift_endAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = OUTLINED_FUNCTION_6_1();
        sub_23DE4CD10(v108, v109, v110, v89);
        v89 = v111;
      }

      v104 = *(v89 + 16);
      v103 = *(v89 + 24);
      if (v104 >= v103 >> 1)
      {
        OUTLINED_FUNCTION_9(v103);
        OUTLINED_FUNCTION_61_0();
        sub_23DE4CD10(v112, v113, v114, v89);
        v89 = v115;
      }

      *(v89 + 16) = v104 + 1;
      OUTLINED_FUNCTION_31_0();
      (*(v106 + 32))(v89 + v105 + *(v106 + 72) * v104);
    }

    v50 = v29;
    v78 = __OFADD__(v88, 1);
    v88 = (v88 + 1);
    if (v78)
    {
      goto LABEL_87;
    }
  }

  *(v28 + 160) = v89;
  sub_23E1FCB9C();
  v124 = sub_23E1FD02C();
  v125 = sub_23E1FE19C();
  if (OUTLINED_FUNCTION_51(v125))
  {
    v126 = OUTLINED_FUNCTION_38_0();
    *v126 = 134217984;
    *(v126 + 4) = *(v89 + 16);
    OUTLINED_FUNCTION_17_1(&dword_23DE30000, v127, v128, "WFSpotlightSearchAction: interleaved %ld items for final results");
    OUTLINED_FUNCTION_20_0();
  }

  v129 = OUTLINED_FUNCTION_45();
  v148(v129);
  OUTLINED_FUNCTION_45_0(v28 + 160, v28 + 64);
  sub_23DE50F78((v28 + 160));
  swift_endAccess();
  bufb = *(v28 + 208);
  v154 = *(v28 + 200);
  logb = *(v28 + 160);

  OUTLINED_FUNCTION_41();

  v132(v130, v131, v132, v133, v134, v135, v136, v137, v148, v149, v150, 0, bufb, v154, logb, a16, a17, a18, a19, a20);
}

uint64_t sub_23DE50DD4()
{
  OUTLINED_FUNCTION_23();
  v0[19] = v0[55];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C380, &qword_23E224180);
  swift_willThrowTypedImpl();

  v1 = v0[45];
  v2 = v0[46];

  return MEMORY[0x2822009F8](sub_23DE50E6C, v1, v2);
}

uint64_t sub_23DE50E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v19 = v18[50];
  v31 = v18[32];
  v32 = v18[31];
  v33 = v18[30];
  v34 = v18[27];
  v35 = v18[26];
  v36 = v18[25];

  v20 = OUTLINED_FUNCTION_30_0();
  v21(v20);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_26();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, v33, v34, v35, v36, a16, a17, a18);
}

uint64_t sub_23DE50F78(uint64_t *a1)
{
  v2 = sub_23E1FDFEC();
  OUTLINED_FUNCTION_25(v2);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23DF31AA8(v3);
    v3 = v7;
  }

  OUTLINED_FUNCTION_56_0();
  v8[0] = v3 + v5;
  v8[1] = v4;
  result = sub_23DE57558(v8);
  *a1 = v3;
  return result;
}

uint64_t sub_23DE5101C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C410, &unk_23E2241D0);
  result = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_23DF19510(*v1, &v9 - v5);
  v8 = sub_23E1FDFEC();
  result = __swift_getEnumTagSinglePayload(v6, 1, v8);
  if (result != 1)
  {
    result = (*(*(v8 - 8) + 32))(a1, v6, v8);
    if (*(v7 + 16))
    {
      return sub_23DE58E20(0, 1);
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_23DE5112C()
{
  OUTLINED_FUNCTION_23();
  v1[18] = v0;
  v2 = sub_23E1FD03C();
  v1[19] = v2;
  OUTLINED_FUNCTION_8(v2);
  v1[20] = v3;
  v1[21] = OUTLINED_FUNCTION_91();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  sub_23E1FDECC();
  v1[24] = sub_23E1FDEBC();
  OUTLINED_FUNCTION_37();
  v5 = sub_23E1FDE6C();
  v1[25] = v5;
  v1[26] = v4;

  return MEMORY[0x2822009F8](sub_23DE51220, v5, v4);
}

uint64_t sub_23DE51220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v25 = *(v24 + 144);
  [objc_opt_self() prepare];
  v26 = [v25 input];
  if (!v26)
  {
    goto LABEL_9;
  }

  v27 = v26;
  v28 = [v26 items];

  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  v29 = sub_23E1FDDEC();

  result = sub_23DE4D8B0();
  if (!result)
  {

LABEL_9:

    *(v24 + 96) = 0u;
    *(v24 + 112) = 0u;
LABEL_10:
    sub_23DE58BD0(v24 + 96, &qword_27E32C320, &unk_23E224B40);
    goto LABEL_11;
  }

  if ((v29 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x23EF04DD0](0, v29);
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v31 = *(v29 + 32);
  }

  v32 = v31;

  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v33 = [v32 objectForClass_];

  if (v33)
  {
    sub_23E1FE49C();
    swift_unknownObjectRelease();
  }

  else
  {
    a11 = 0u;
    a12 = 0u;
  }

  *(v24 + 96) = a11;
  *(v24 + 112) = a12;
  if (!*(v24 + 120))
  {

    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v70 = *(v24 + 136);
    v71 = HIBYTE(v70) & 0xF;
    if ((v70 & 0x2000000000000000) == 0)
    {
      v71 = *(v24 + 128) & 0xFFFFFFFFFFFFLL;
    }

    if (v71)
    {
      *(v24 + 216) = *MEMORY[0x277D7A440];
      sub_23E1FCB9C();
      sub_23E1FB7BC();
      v72 = sub_23E1FD02C();
      v73 = sub_23E1FE19C();

      v74 = os_log_type_enabled(v72, v73);
      v75 = *(v24 + 160);
      if (v74)
      {
        v76 = OUTLINED_FUNCTION_38_0();
        v86 = OUTLINED_FUNCTION_49_0();
        *v76 = 136315138;
        v77 = OUTLINED_FUNCTION_35_0();
        *(v76 + 4) = sub_23DE56B40(v77, v78, v79);
        _os_log_impl(&dword_23DE30000, v72, v73, "WFSpotlightSearchAction: with input %s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v86);
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_56();
      }

      v80 = *(v75 + 8);
      v81 = OUTLINED_FUNCTION_30_0();
      v80(v81);
      *(v24 + 224) = v80;
      OUTLINED_FUNCTION_35_0();
      sub_23DE4E7F4();
      *(v24 + 232) = v82;

      v83 = swift_task_alloc();
      *(v24 + 240) = v83;
      *v83 = v24;
      v83[1] = sub_23DE518C8;
      OUTLINED_FUNCTION_26();

      return sub_23DE4F824();
    }
  }

  else
  {
  }

LABEL_11:
  sub_23E1FCB9C();
  v34 = sub_23E1FD02C();
  v35 = sub_23E1FE1BC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_74_0();
    *v36 = 0;
    _os_log_impl(&dword_23DE30000, v34, v35, "WFSpotlightSearchAction: no search input", v36, 2u);
    OUTLINED_FUNCTION_20_0();
  }

  v37 = MEMORY[0x277D837D0];

  v38 = OUTLINED_FUNCTION_30_0();
  v85 = v39;
  v39(v38);
  sub_23E1FDC1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v41;
  sub_23E1FDCBC("Search failed because no input provided.", 40);
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v42 = qword_280DAE278;
  v43 = sub_23E1FDBDC();
  v44 = sub_23E1FDBDC();

  v45 = [v42 localizedStringForKey:v43 value:v44 table:0];

  v46 = sub_23E1FDC1C();
  v48 = v47;

  *(inited + 72) = v37;
  *(inited + 48) = v46;
  *(inited + 56) = v48;
  v49 = sub_23E1FDABC();
  v50 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v51 = OUTLINED_FUNCTION_45();
  v53 = sub_23DE56A08(v51, v52, 6, v49);
  swift_willThrow();
  OUTLINED_FUNCTION_65();
  sub_23E1FCB9C();
  v54 = v53;
  v55 = sub_23E1FD02C();
  v56 = sub_23E1FE1BC();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = OUTLINED_FUNCTION_38_0();
    v58 = OUTLINED_FUNCTION_48_0();
    *v57 = 138412290;
    v59 = v53;
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v57 + 4) = v60;
    *v58 = v60;
    _os_log_impl(&dword_23DE30000, v55, v56, "WFSpotlightSearchAction: error generating output %@", v57, 0xCu);
    sub_23DE58BD0(v58, &unk_27E32C190, &qword_23E224B70);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_16_1();
  }

  v61 = OUTLINED_FUNCTION_64_0();
  v85(v61);
  swift_willThrow();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_26();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, v85, a11, *(&a11 + 1), a12, *(&a12 + 1), a13, a14, a15, a16);
}

uint64_t sub_23DE518C8()
{
  OUTLINED_FUNCTION_33_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;
  v4[31] = v3;
  v4[32] = v0;

  if (v0)
  {
    v7 = v4[25];
    v8 = v4[26];

    return MEMORY[0x2822009F8](sub_23DE51C20, v7, v8);
  }

  else
  {
    v9 = swift_task_alloc();
    v4[33] = v9;
    *v9 = v6;
    v9[1] = sub_23DE51A5C;

    return sub_23DE52264();
  }
}

uint64_t sub_23DE51A5C()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 272) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = sub_23DE51D8C;
  }

  else
  {
    v7 = sub_23DE51BA4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23DE51BA4()
{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_7();

  return v0();
}

uint64_t sub_23DE51C20()
{

  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  OUTLINED_FUNCTION_65();
  sub_23E1FCB9C();
  v3 = v1;
  v4 = sub_23E1FD02C();
  v5 = sub_23E1FE1BC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_38_0();
    v7 = OUTLINED_FUNCTION_48_0();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_17_1(&dword_23DE30000, v10, v11, "WFSpotlightSearchAction: error generating output %@");
    sub_23DE58BD0(v7, &unk_27E32C190, &qword_23E224B70);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_20_0();
  }

  v12 = OUTLINED_FUNCTION_64_0();
  v2(v12);
  swift_willThrow();

  OUTLINED_FUNCTION_19();

  return v13();
}

uint64_t sub_23DE51D8C()
{

  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  OUTLINED_FUNCTION_65();
  sub_23E1FCB9C();
  v3 = v1;
  v4 = sub_23E1FD02C();
  v5 = sub_23E1FE1BC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_38_0();
    v7 = OUTLINED_FUNCTION_48_0();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_17_1(&dword_23DE30000, v10, v11, "WFSpotlightSearchAction: error generating output %@");
    sub_23DE58BD0(v7, &unk_27E32C190, &qword_23E224B70);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_20_0();
  }

  v12 = OUTLINED_FUNCTION_64_0();
  v2(v12);
  swift_willThrow();

  OUTLINED_FUNCTION_19();

  return v13();
}

uint64_t sub_23DE51F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DE5201C, v5, v4);
}

uint64_t sub_23DE5201C()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23DE520D4;

  return sub_23DE5112C();
}

uint64_t sub_23DE520D4()
{
  OUTLINED_FUNCTION_33_0();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[6];
  if (v2)
  {
    v10 = sub_23E1FBEBC();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v3[6], 0);
  }

  _Block_release(v4[6]);
  v11 = v8[1];

  return v11();
}

uint64_t sub_23DE52264()
{
  OUTLINED_FUNCTION_23();
  v1[17] = v2;
  v1[18] = v0;
  v3 = sub_23E1FD03C();
  v1[19] = v3;
  OUTLINED_FUNCTION_8(v3);
  v1[20] = v4;
  v1[21] = OUTLINED_FUNCTION_91();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v5 = sub_23E1FDFEC();
  v1[24] = v5;
  OUTLINED_FUNCTION_8(v5);
  v1[25] = v6;
  v1[26] = OUTLINED_FUNCTION_42();
  sub_23E1FDECC();
  v1[27] = sub_23E1FDEBC();
  OUTLINED_FUNCTION_37();
  v8 = sub_23E1FDE6C();
  v1[28] = v8;
  v1[29] = v7;

  return MEMORY[0x2822009F8](sub_23DE523A4, v8, v7);
}

id sub_23DE523A4()
{
  sub_23DE38DA8(0, &unk_27E32C3E0, 0x277CC33B0);
  v3 = sub_23DE53778(0xD00000000000001FLL, 0x800000023E24D5A0);
  v0[30] = v3;
  if (!v3)
  {
    goto LABEL_30;
  }

  v4 = v3;
  OUTLINED_FUNCTION_5();
  v6 = sub_23DE53778(0xD000000000000010, v5);
  v0[31] = v6;
  if (!v6)
  {
LABEL_29:

LABEL_30:

    sub_23E1FCB9C();
    v43 = sub_23E1FD02C();
    v44 = sub_23E1FE1BC();
    if (OUTLINED_FUNCTION_51(v44))
    {
      v45 = OUTLINED_FUNCTION_74_0();
      *v45 = 0;
      _os_log_impl(&dword_23DE30000, v43, v44, "WFSpotlightSearchAction: Spotlight CSCustomAttribute keys unavailable, halting execution.", v45, 2u);
      OUTLINED_FUNCTION_16_1();
    }

    v46 = OUTLINED_FUNCTION_64_0();
    v47(v46);
    v48 = sub_23E1FDC1C();
    v50 = v49;
    v51 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_23DE56A08(v48, v50, 16, 0);
    swift_willThrow();

    OUTLINED_FUNCTION_19();
LABEL_33:
    OUTLINED_FUNCTION_72_0();

    __asm { BRAA            X1, X16 }
  }

  v7 = v6;
  result = sub_23DE53778(0xD000000000000023, 0x800000023E24D5C0);
  v0[32] = result;
  if (!result)
  {

    v4 = v7;
    goto LABEL_29;
  }

  v9 = 0;
  v10 = *MEMORY[0x277D7A440];
  v0[33] = *(v0[17] + 16);
  v0[34] = v10;
  v11 = &selRef_kilocalorieUnit;
  v12 = &selRef_initWithActivityTypeIdentifier_isIndoor_;
  v13 = &unk_280DAE750;
  v14 = &off_278C24000;
  while (1)
  {
    v15 = v0[33];
    if (v9 == v15)
    {
      OUTLINED_FUNCTION_24_1();

      OUTLINED_FUNCTION_7();
      goto LABEL_33;
    }

    if (v9 >= v15)
    {
      break;
    }

    v1 = (v9 + 1);
    v0[35] = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_40;
    }

    v16 = v0[18];
    (*(v0[25] + 16))(v0[26], v0[17] + ((*(v0[25] + 80) + 32) & ~*(v0[25] + 80)) + *(v0[25] + 72) * v9, v0[24]);
    result = [v16 v11[474]];
    if (!result)
    {
      goto LABEL_41;
    }

    v17 = result;
    v18 = [result v12[484]];

    v0[36] = sub_23DE38DA8(0, v13, 0x277CFC2F8);
    v2 = sub_23E1FDDEC();

    if (v2 >> 62)
    {
      v19 = sub_23E1FE6AC();
    }

    else
    {
      v19 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v19 >= sub_23DE4E77C())
    {
      v35 = OUTLINED_FUNCTION_3_2();
      result = v36(v35);
      v9 = v1;
    }

    else
    {
      v20 = v0[31];
      v21 = sub_23E1FDFDC();
      v2 = [v21 v14[247]];

      v22 = [v2 valueForCustomKey_];
      if (!v22 || (v0[14] = v22, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C3F0, &unk_23E2241B8), (swift_dynamicCast() & 1) == 0))
      {
        v37 = OUTLINED_FUNCTION_3_2();
        result = v38(v37);
        goto LABEL_24;
      }

      v23 = v13;
      v24 = v12;
      v25 = v14;
      v26 = v0[30];
      v2 = v0[9];
      v0[37] = v2;
      v27 = sub_23E1FDFDC();
      v28 = v25;
      v1 = [v27 v25 + 116];

      v29 = [v1 valueForCustomKey_];
      if (v29 && (v0[15] = v29, (swift_dynamicCast() & 1) != 0))
      {
        v1 = v0[32];
        v0[38] = v0[11];
        v30 = sub_23E1FDFDC();
        v31 = [v30 v28 + 116];

        v32 = [v31 valueForCustomKey_];
        if (!v32)
        {
          v41 = OUTLINED_FUNCTION_3_2();
          v42(v41);

          v11 = &selRef_kilocalorieUnit;
          goto LABEL_23;
        }

        v0[16] = v32;
        v11 = &selRef_kilocalorieUnit;
        if (swift_dynamicCast())
        {
          v55 = v0[12];
          v54 = v0[13];
          v0[39] = v55;
          v0[40] = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
          inited = swift_initStackObject();
          v0[41] = inited;
          *(inited + 16) = xmmword_23E222340;
          *(inited + 32) = v55;
          *(inited + 40) = v54;
          sub_23E1FB7BC();
          v57 = swift_task_alloc();
          v0[42] = v57;
          *v57 = v0;
          OUTLINED_FUNCTION_1_2(v57);
          OUTLINED_FUNCTION_72_0();

          return sub_23DE537EC();
        }

        v33 = OUTLINED_FUNCTION_3_2();
        v34(v33);
      }

      else
      {
        v39 = OUTLINED_FUNCTION_3_2();
        v40(v39);
      }

LABEL_23:
      v14 = v28;
      v12 = v24;
      v13 = v23;
LABEL_24:
      v9 = v0[35];
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_23DE529F8()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_58();
  *v5 = v4;
  v2[43] = v6;
  v2[44] = v0;

  if (v0)
  {

    swift_setDeallocating();
    sub_23DF032A4();
    v7 = v2[28];
    v8 = v2[29];
    v9 = sub_23DE531B8;
  }

  else
  {
    swift_setDeallocating();
    sub_23DF032A4();
    v7 = v2[28];
    v8 = v2[29];
    v9 = sub_23DE52B4C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

id sub_23DE52B4C()
{
  v60 = v0;
  v1 = *(v0 + 344);
  sub_23E1FCB9C();
  v2 = v1;
  v3 = sub_23E1FD02C();
  v4 = sub_23E1FE19C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 344);
    v6 = *(v0 + 288);
    v7 = *(v0 + 160);
    v57 = *(v0 + 152);
    v58 = *(v0 + 184);
    v8 = OUTLINED_FUNCTION_38_0();
    v9 = OUTLINED_FUNCTION_49_0();
    v59 = v9;
    *v8 = 136315138;
    v10 = [v5 items];
    v11 = sub_23E1FDDEC();

    v12 = MEMORY[0x23EF04600](v11, v6);
    v14 = v13;

    v15 = sub_23DE56B40(v12, v14, &v59);

    *(v8 + 4) = v15;
    OUTLINED_FUNCTION_73_0(&dword_23DE30000, v16, v17, "WFSpotlightSearchAction: returning entities %s");
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_21_0();

    (*(v7 + 8))(v58, v57);
  }

  else
  {

    v18 = OUTLINED_FUNCTION_50();
    v19(v18);
  }

  result = [*(v0 + 144) output];
  if (result)
  {
    v21 = result;
    v22 = *(v0 + 344);

    v23 = [v22 items];
    if (!v23)
    {
      sub_23E1FDDEC();
      v23 = sub_23E1FDDCC();
    }

    v24 = *(v0 + 344);
    [v21 addItems_];

    v25 = OUTLINED_FUNCTION_45();
    v26(v25);
    v27 = &off_278C24000;
LABEL_8:
    for (i = *(v0 + 280); ; ++i)
    {
      v29 = *(v0 + 264);
      if (i == v29)
      {
        break;
      }

      if (i >= v29)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v54 = *(v0 + 96);
        v53 = *(v0 + 104);
        *(v0 + 312) = v54;
        *(v0 + 320) = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
        inited = swift_initStackObject();
        *(v0 + 328) = inited;
        *(inited + 16) = xmmword_23E222340;
        *(inited + 32) = v54;
        *(inited + 40) = v53;
        sub_23E1FB7BC();
        v56 = swift_task_alloc();
        *(v0 + 336) = v56;
        *v56 = v0;
        OUTLINED_FUNCTION_1_2(v56);

        return sub_23DE537EC();
      }

      *(v0 + 280) = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_33;
      }

      v30 = OUTLINED_FUNCTION_18_1();
      v31(v30);
      result = [v21 output];
      if (!result)
      {
        __break(1u);
        goto LABEL_38;
      }

      v32 = result;
      v33 = [result items];

      *(v0 + 288) = sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
      v34 = sub_23E1FDDEC();

      if (v34 >> 62)
      {
        v24 = sub_23E1FE6AC();
      }

      else
      {
        v24 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = *(v0 + 144);

      if (v24 < sub_23DE4E77C())
      {
        v24 = *(v0 + 248);
        v37 = sub_23E1FDFDC();
        v38 = [v37 v27[247]];

        v21 = [v38 valueForCustomKey_];
        if (!v21 || (*(v0 + 112) = v21, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C3F0, &unk_23E2241B8), (swift_dynamicCast() & 1) == 0))
        {
          v48 = OUTLINED_FUNCTION_3_2();
          v49(v48);
          goto LABEL_8;
        }

        v39 = v27;
        v40 = *(v0 + 240);
        v24 = *(v0 + 72);
        *(v0 + 296) = v24;
        v41 = sub_23E1FDFDC();
        v42 = [v41 v39 + 116];

        v21 = [v42 valueForCustomKey_];
        if (!v21 || (*(v0 + 120) = v21, (swift_dynamicCast() & 1) == 0))
        {
          v50 = OUTLINED_FUNCTION_3_2();
          v51(v50);
          goto LABEL_27;
        }

        v43 = *(v0 + 256);
        *(v0 + 304) = *(v0 + 88);
        v44 = sub_23E1FDFDC();
        v45 = [v44 attributeSet];

        v21 = [v45 valueForCustomKey_];
        if (!v21 || (*(v0 + 128) = v21, (swift_dynamicCast() & 1) == 0))
        {
          v46 = OUTLINED_FUNCTION_3_2();
          v47(v46);

LABEL_27:

          v27 = &off_278C24000;
          goto LABEL_8;
        }

        goto LABEL_34;
      }

      v35 = OUTLINED_FUNCTION_3_2();
      v36(v35);
    }

    OUTLINED_FUNCTION_24_1();

    OUTLINED_FUNCTION_7();

    return v52();
  }

  else
  {
LABEL_38:
    __break(1u);
  }

  return result;
}

id sub_23DE531B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_27();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_32();
  a24 = v26;
  v29 = v26[44];
  OUTLINED_FUNCTION_65();
  sub_23E1FCB9C();
  sub_23E1FB7BC();
  v30 = v29;
  v31 = sub_23E1FD02C();
  v32 = sub_23E1FE1BC();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v26[44];
  v35 = v26[40];
  if (v33)
  {
    v36 = v26[39];
    a13 = v26[24];
    a14 = v26[26];
    v37 = v26[20];
    a11 = v26[21];
    a12 = v26[25];
    a10 = v26[19];
    v38 = OUTLINED_FUNCTION_52_0();
    v39 = OUTLINED_FUNCTION_48_0();
    v40 = OUTLINED_FUNCTION_49_0();
    a15 = v40;
    *v38 = 136315394;
    v41 = sub_23DE56B40(v36, v35, &a15);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2112;
    v42 = v34;
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 14) = v43;
    *v39 = v43;
    _os_log_impl(&dword_23DE30000, v31, v32, "WFSpotlightSearchAction: entity hydration failed for instance %s with error %@", v38, 0x16u);
    sub_23DE58BD0(v39, &unk_27E32C190, &qword_23E224B70);
    OUTLINED_FUNCTION_20_0();
    __swift_destroy_boxed_opaque_existential_0(v40);
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_56();

    v45 = *(v37 + 8);
    v44 = (v37 + 8);
    v45(a11, a10);
    (*(a12 + 8))(a14, a13);
  }

  else
  {
    v46 = v26[25];
    v41 = v26[21];
    v44 = v26[19];

    v47 = OUTLINED_FUNCTION_66();
    v48(v47);
    v32 = (v46 + 8);
    v49 = OUTLINED_FUNCTION_45();
    v50(v49);
  }

LABEL_4:
  for (i = v26[35]; ; ++i)
  {
    v52 = v26[33];
    if (i == v52)
    {
      break;
    }

    if (i >= v52)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v84 = v26[12];
      v83 = v26[13];
      v26[39] = v84;
      v26[40] = v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
      inited = swift_initStackObject();
      v26[41] = inited;
      *(inited + 16) = xmmword_23E222340;
      *(inited + 32) = v84;
      *(inited + 40) = v83;
      sub_23E1FB7BC();
      v86 = swift_task_alloc();
      v26[42] = v86;
      *v86 = v26;
      OUTLINED_FUNCTION_1_2(v86);
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_26();

      return sub_23DE537EC();
    }

    v26[35] = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_27;
    }

    v53 = OUTLINED_FUNCTION_18_1();
    v54(v53);
    result = [v31 output];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v56 = result;
    v57 = [result items];

    v26[36] = sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    v58 = sub_23E1FDDEC();

    if (v58 >> 62)
    {
      v59 = sub_23E1FE6AC();
    }

    else
    {
      v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v26[18];

    if (v59 < sub_23DE4E77C())
    {
      v62 = v26[31];
      v63 = sub_23E1FDFDC();
      v64 = [v63 attributeSet];

      v31 = [v64 valueForCustomKey_];
      if (!v31 || (v26[14] = v31, v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C3F0, &unk_23E2241B8), (swift_dynamicCast() & 1) == 0))
      {
        v71 = OUTLINED_FUNCTION_3_2();
        v72(v71);
        goto LABEL_4;
      }

      v65 = v26[30];
      v26[37] = v26[9];
      v66 = sub_23E1FDFDC();
      v44 = [v66 attributeSet];

      v31 = [v44 valueForCustomKey_];
      if (!v31 || (v26[15] = v31, (swift_dynamicCast() & 1) == 0))
      {
        v73 = OUTLINED_FUNCTION_3_2();
        v74(v73);

        goto LABEL_4;
      }

      v32 = v26[32];
      v44 = v26[10];
      v26[38] = v26[11];
      v67 = sub_23E1FDFDC();
      v68 = [v67 attributeSet];

      v31 = [v68 valueForCustomKey_];
      if (!v31 || (v26[16] = v31, (swift_dynamicCast() & 1) == 0))
      {
        v69 = OUTLINED_FUNCTION_3_2();
        v70(v69);

        goto LABEL_4;
      }

      goto LABEL_28;
    }

    v60 = OUTLINED_FUNCTION_3_2();
    v61(v60);
  }

  OUTLINED_FUNCTION_24_1();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

id sub_23DE53778(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_23E1FDBDC();

  v4 = [v2 initWithKeyName_];

  return v4;
}

uint64_t sub_23DE537EC()
{
  OUTLINED_FUNCTION_4();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v1[21] = v5;
  v1[22] = v6;
  v7 = sub_23E1FE2EC();
  v1[27] = v7;
  OUTLINED_FUNCTION_8(v7);
  v1[28] = v8;
  v1[29] = OUTLINED_FUNCTION_42();
  v9 = sub_23E1FE2FC();
  v1[30] = v9;
  OUTLINED_FUNCTION_8(v9);
  v1[31] = v10;
  v1[32] = OUTLINED_FUNCTION_42();
  v11 = sub_23E1FD03C();
  v1[33] = v11;
  OUTLINED_FUNCTION_8(v11);
  v1[34] = v12;
  v1[35] = OUTLINED_FUNCTION_91();
  v1[36] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C328, &qword_23E224130);
  OUTLINED_FUNCTION_25(v13);
  v1[37] = OUTLINED_FUNCTION_42();
  v1[38] = sub_23E1FDECC();
  v1[39] = sub_23E1FDEBC();
  OUTLINED_FUNCTION_37();
  v14 = sub_23E1FDE6C();
  v1[40] = v14;
  v1[41] = v15;

  return MEMORY[0x2822009F8](sub_23DE539D8, v14, v15);
}

uint64_t sub_23DE539D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_46();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  a17 = *MEMORY[0x277D85DE8];
  v31 = v28[37];
  sub_23E1FB7BC();
  OUTLINED_FUNCTION_35_0();
  sub_23E1FBCFC();
  v32 = sub_23E1FBD5C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v32);
  v34 = v28[37];
  if (EnumTagSinglePayload == 1)
  {
    sub_23DE58BD0(v28[37], &unk_27E32C328, &qword_23E224130);
    sub_23E1FB7BC();
    v36 = v28[21];
    v35 = v28[22];
  }

  else
  {
    v36 = sub_23E1FBCEC();
    v35 = v37;
    OUTLINED_FUNCTION_21();
    (*(v38 + 8))(v34, v32);
  }

  v28[42] = v36;
  v28[43] = v35;
  v39 = [objc_opt_self() sharedProvider];
  v116 = v36;
  v117 = v35;
  OUTLINED_FUNCTION_35_0();
  v40 = sub_23E1FDBDC();
  v41 = [v39 entitiesForBundleIdentifier_];

  sub_23DE38DA8(0, &qword_280DAE370, 0x277D23818);
  v42 = sub_23E1FDDEC();

  v43 = sub_23DE4D8B0();
  v44 = 0;
  v118 = (v42 & 0xFFFFFFFFFFFFFF8);
  v119 = v42 & 0xC000000000000001;
  while (1)
  {
    if (v43 == v44)
    {

      sub_23E1FCB9C();
      sub_23E1FB7BC();
      sub_23E1FB7BC();
      v55 = sub_23E1FD02C();
      v56 = sub_23E1FE1BC();

      v57 = os_log_type_enabled(v55, v56);
      v59 = v28[34];
      v58 = v28[35];
      v60 = v28[33];
      if (v57)
      {
        v61 = v28[23];
        v118 = v28[24];
        v62 = OUTLINED_FUNCTION_52_0();
        a16 = swift_slowAlloc();
        *v62 = 136315394;
        v119 = v58;
        v63 = sub_23DE56B40(v116, v117, &a16);

        *(v62 + 4) = v63;
        *(v62 + 12) = 2080;
        *(v62 + 14) = sub_23DE56B40(v61, v118, &a16);
        _os_log_impl(&dword_23DE30000, v55, v56, "WFSpotlightSearchAction: no entity metadata bundle: %s type: %s", v62, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_56();

        (*(v59 + 8))(v119, v60);
      }

      else
      {

        (*(v59 + 8))(v58, v60);
      }

      v103 = sub_23E1FDC1C();
      v105 = v104;
      v106 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_23DE56A08(v103, v105, 16, 0);
      swift_willThrow();
      goto LABEL_38;
    }

    if (v119)
    {
      v45 = MEMORY[0x23EF04DD0](v44, v42);
    }

    else
    {
      if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v45 = *(v42 + 8 * v44 + 32);
    }

    v46 = v45;
    v28[44] = v45;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_43;
    }

    v48 = v28[23];
    v47 = v28[24];
    v49 = [v45 identifier];
    v50 = sub_23E1FDC1C();
    v52 = v51;

    if (v50 == v48 && v52 == v47)
    {
      break;
    }

    v54 = sub_23E1FE75C();

    if (v54)
    {
      goto LABEL_20;
    }

    ++v44;
  }

LABEL_20:

  sub_23E1FCB9C();
  v64 = v46;
  v65 = sub_23E1FD02C();
  v66 = sub_23E1FE1AC();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = OUTLINED_FUNCTION_38_0();
    v68 = OUTLINED_FUNCTION_48_0();
    *v67 = 138412290;
    *(v67 + 4) = v64;
    *v68 = v64;
    v69 = v64;
    OUTLINED_FUNCTION_73_0(&dword_23DE30000, v70, v71, "WFSpotlightSearchAction: entityMetadata %@");
    sub_23DE58BD0(v68, &unk_27E32C190, &qword_23E224B70);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_21_0();
  }

  v118 = v64;
  v72 = v28[25];

  v73 = OUTLINED_FUNCTION_30_0();
  v74(v73);
  v75 = 0;
  v119 = MEMORY[0x277D84F90];
  a16 = MEMORY[0x277D84F90];
  v76 = *(v72 + 16);
  v77 = v72 + 40;
  v116 = v72 + 40;
LABEL_23:
  v78 = (v77 + 16 * v75);
  while (v76 != v75)
  {
    if (v75 >= v76)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    v79 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      goto LABEL_42;
    }

    v81 = v28[23];
    v80 = v28[24];
    v83 = *(v78 - 1);
    v82 = *v78;
    objc_allocWithZone(MEMORY[0x277D23800]);
    sub_23E1FB7BC();
    sub_23E1FB7BC();
    v78 += 2;
    ++v75;
    if (sub_23DE56AB8(v81, v80, v83, v82))
    {
      MEMORY[0x23EF045A0]();
      v84 = *((a16 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((a16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v84 >> 1)
      {
        OUTLINED_FUNCTION_9(v84);
        sub_23E1FDE0C();
      }

      sub_23E1FDE3C();
      v119 = a16;
      v75 = v79;
      v77 = v116;
      goto LABEL_23;
    }
  }

  v85 = v28[31];
  v86 = v28[32];
  v88 = v28[29];
  v87 = v28[30];
  v90 = v28[27];
  v89 = v28[28];
  sub_23DE38DA8(0, &qword_27E32C338, 0x277D23B90);
  *v86 = v119;
  (*(v85 + 104))(v86, *MEMORY[0x277D23A18], v87);
  *v88 = v118;
  (*(v89 + 104))(v88, *MEMORY[0x277D23A40], v90);
  v91 = objc_allocWithZone(MEMORY[0x277D23C68]);
  v92 = v118;
  [v91 init];
  v93 = sub_23E1FE30C();
  v28[45] = v93;
  v94 = [objc_opt_self() policyWithEntityMetadata_];
  v28[46] = v94;
  v28[18] = 0;
  v95 = [v94 connectionWithError_];
  v28[47] = v95;
  v96 = v28[18];
  if (v95)
  {
    v97 = v95;
    v28[2] = v28;
    v28[7] = v28 + 19;
    v28[3] = sub_23DE5428C;
    v98 = swift_continuation_init();
    v28[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C340, &qword_23E224138);
    v28[10] = MEMORY[0x277D85DD0];
    v28[11] = 1107296256;
    v28[12] = sub_23DE54D3C;
    v28[13] = &block_descriptor_1;
    v28[14] = v98;
    v99 = v96;
    [v97 performConfigurableQuery:v93 completionHandler:v28 + 10];
    OUTLINED_FUNCTION_41();

    return MEMORY[0x282200938](v100);
  }

  v102 = v96;

  sub_23E1FBECC();

  swift_willThrow();
LABEL_38:
  OUTLINED_FUNCTION_47_0();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_41();

  return v108(v107, v108, v109, v110, v111, v112, v113, v114, a9, a10, v116, v117, v118, v119, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_23DE5428C()
{
  OUTLINED_FUNCTION_4();
  v1 = *v0;
  OUTLINED_FUNCTION_58();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  v1[48] = v4;
  if (v4)
  {

    v5 = v1[40];
    v6 = v1[41];
    v7 = sub_23DE54B5C;
  }

  else
  {
    v5 = v1[40];
    v6 = v1[41];
    v7 = sub_23DE543CC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23DE543CC()
{
  v1 = v0[44];
  v2 = v0[19];
  v0[49] = v2;
  v3 = [v2 value];
  v4 = [v3 valueType];

  v5 = [v2 value];
  OUTLINED_FUNCTION_30_0();
  v6 = sub_23E1FDBDC();

  sub_23DE5881C(v1);
  if (v7)
  {
    v8 = sub_23E1FDBDC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 wf:v5 contentCollectionFromLinkValue:v6 appBundleIdentifier:v8 displayedBundleIdentifier:1 disclosureLevel:?];
  v0[50] = v9;

  sub_23DE4E17C();
  sub_23DE54DCC();
  v11 = v10;
  v0[51] = v10;

  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
    v14 = (v11 + 32);
    v15 = MEMORY[0x277D84F90];
    do
    {
      v16 = *v14;
      if (*v14 != v13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = OUTLINED_FUNCTION_13_1();
          sub_23DE64074(v17, v18, v19);
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = OUTLINED_FUNCTION_9(v20);
          sub_23DE64074(v22, v21 + 1, 1);
        }

        *(v15 + 16) = v21 + 1;
        *(v15 + 8 * v21 + 32) = v16;
      }

      ++v14;
      --v12;
    }

    while (v12);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v0[52] = v15;
  sub_23DE38DA8(0, &qword_27E32C350, 0x277CFC2A0);
  v23 = sub_23DE552A0(v15);
  v24 = sub_23DE553CC(v23, 0, 0);
  v0[53] = v24;
  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  v0[54] = sub_23E1FDEBC();
  v25 = swift_task_alloc();
  v0[55] = v25;
  v25[2] = v9;
  v25[3] = v24;
  v25[4] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C358, &qword_23E224150);
  v26 = swift_task_alloc();
  v0[56] = v26;
  *v26 = v0;
  v26[1] = sub_23DE54728;
  OUTLINED_FUNCTION_72_0();

  return MEMORY[0x282200740](v27);
}

uint64_t sub_23DE54728()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  v2[57] = v0;

  if (v0)
  {

    v4 = v2[40];
    v5 = v2[41];
    v6 = sub_23DE54C40;
  }

  else
  {

    v4 = v2[40];
    v5 = v2[41];
    v6 = sub_23DE548E8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23DE548E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_46();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  a17 = *MEMORY[0x277D85DE8];

  v31 = v28[20];
  v62 = MEMORY[0x277D84F90];
  v32 = sub_23DE4D8B0();
  v33 = 0;
  v34 = v31 & 0xC000000000000001;
  v35 = v28[57];
  while (v32 != v33)
  {
    sub_23DE570B0(v33, v34 == 0, v31);
    if (v34)
    {
      v36 = MEMORY[0x23EF04DD0](v33, v31);
    }

    else
    {
      v36 = *(v31 + 8 * v33 + 32);
    }

    v37 = v36;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
    }

    v38 = v28[51];
    a15 = v36;
    v39 = sub_23DE56310(&a15, v38);
    if (v35)
    {

      OUTLINED_FUNCTION_41();
    }

    if (v39)
    {
      sub_23E1FE61C();
      sub_23E1FE64C();
      sub_23E1FE65C();
      sub_23E1FE62C();
    }

    else
    {
    }

    v35 = 0;
    ++v33;
  }

  v40 = v28[53];
  v41 = v28[50];
  v42 = v28[49];
  v44 = v28[46];
  v43 = v28[47];
  v45 = v28[44];
  v46 = v28[45];
  v57 = v28[37];
  v58 = v28[36];
  v59 = v28[35];
  v60 = v28[32];
  v61 = v28[29];

  sub_23DE38DA8(0, &qword_27E32C360, 0x277CFC2E0);
  sub_23DE56610(v62);

  OUTLINED_FUNCTION_41();

  return v49(v47, v48, v49, v50, v51, v52, v53, v54, v57, v58, v59, v60, v61, v62, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_23DE54B5C()
{
  v1 = v0[47];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[44];

  swift_willThrow();

  OUTLINED_FUNCTION_47_0();

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_23DE54C40()
{
  v1 = *(v0 + 424);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  v6 = *(v0 + 360);

  OUTLINED_FUNCTION_47_0();

  OUTLINED_FUNCTION_19();

  return v7();
}

void *sub_23DE54D3C(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_23DEEC878();
  }

  else if (a2)
  {
    v7 = a2;

    return sub_23DEEC87C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23DE54DCC()
{
  OUTLINED_FUNCTION_90();
  v1 = v0;
  v56 = sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = sub_23E1FBD5C();
  OUTLINED_FUNCTION_6_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v62 = v12;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = *(v1 + 16);
  if (v16)
  {
    v18 = *(v10 + 16);
    v17 = v10 + 16;
    v61 = v18;
    OUTLINED_FUNCTION_31_0();
    v20 = v1 + v19;
    v60 = (v17 + 72);
    v59 = *MEMORY[0x277CFC170];
    v55 = *MEMORY[0x277CFC1B0];
    v52 = *MEMORY[0x277CFC198];
    v51 = *MEMORY[0x277CFC178];
    v21 = *MEMORY[0x277CFC180];
    v49 = *MEMORY[0x277CFC1A0];
    v50 = v21;
    v48 = *MEMORY[0x277CFC188];
    v22 = *MEMORY[0x277CFC190];
    v46 = *MEMORY[0x277CFC1B8];
    v47 = v22;
    v45 = *MEMORY[0x277CFC1C0];
    v54 = (v3 + 8);
    v44 = *MEMORY[0x277CFC1A8];
    v53 = *MEMORY[0x277D7A440];
    v58 = *(v17 + 56);
    v23 = MEMORY[0x277D84F90];
    v57 = v17;
    while (1)
    {
      v24 = OUTLINED_FUNCTION_30_0();
      v25 = v61;
      (v61)(v24);
      v26 = v62;
      v25(v62, v15, v8);
      v27 = (*v60)(v26, v8);
      if (v27 != v59)
      {
        break;
      }

      sub_23E1FCB9C();
      v28 = sub_23E1FD02C();
      v29 = sub_23E1FE1BC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_74_0();
        *v30 = 0;
        _os_log_impl(&dword_23DE30000, v28, v29, "WFSpotlightSearchAction: Unexpected 'any' type in resultContentClasses computation", v30, 2u);
        OUTLINED_FUNCTION_56();
      }

      (*v54)(v7, v56);
      v31 = OUTLINED_FUNCTION_58_0();
      v32(v31);
LABEL_22:
      v20 += v58;
      if (!--v16)
      {
        goto LABEL_34;
      }
    }

    if (v27 == v55)
    {
      v33 = &unk_27E32C3C0;
      v34 = 0x277CFC288;
    }

    else if (v27 == v52)
    {
      v33 = &qword_280DAE6D8;
      v34 = 0x277CFC2B8;
    }

    else
    {
      if (v27 != v51)
      {
        if (v27 == v50)
        {
          v33 = &unk_27E32C3B0;
          v34 = 0x277CFC3C0;
          goto LABEL_17;
        }

        if (v27 == v49)
        {
          v33 = &unk_27E32C3A8;
          v34 = 0x277CFC470;
          goto LABEL_17;
        }

        if (v27 != v48)
        {
          if (v27 == v47)
          {
            v33 = &qword_27E32C3A0;
            v34 = 0x277CFC4C0;
            goto LABEL_17;
          }

          if (v27 == v46)
          {
            v33 = &unk_27E32C398;
            v34 = 0x277CFC4E8;
            goto LABEL_17;
          }

          if (v27 != v45 && v27 != v44)
          {
            sub_23E1FE74C();
            __break(1u);
            return;
          }
        }
      }

      v33 = &qword_280DAE6A0;
      v34 = 0x277D7C5C0;
    }

LABEL_17:
    v35 = sub_23DE38DA8(0, v33, v34);
    v36 = OUTLINED_FUNCTION_58_0();
    v37(v36);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_6_1();
      sub_23DE4CC50();
      v23 = v41;
    }

    v39 = *(v23 + 16);
    v38 = *(v23 + 24);
    if (v39 >= v38 >> 1)
    {
      OUTLINED_FUNCTION_9(v38);
      OUTLINED_FUNCTION_60_0();
      sub_23DE4CC50();
      v23 = v42;
    }

    *(v23 + 16) = v39 + 1;
    *(v23 + 8 * v39 + 32) = v35;
    goto LABEL_22;
  }

LABEL_34:
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DE552A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_23DE64054(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C368, &qword_23E224158);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C390, &qword_23E224190);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_23DE64054(v5 > 1, v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_23DE553CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C390, &qword_23E224190);
  v5 = sub_23E1FDDCC();

  if (a2)
  {
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_23DE554D8;
    v9[3] = &block_descriptor_17;
    v6 = _Block_copy(v9);
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() requestForCoercingToContentClasses:v5 completionHandler:v6];
  _Block_release(v6);

  return v7;
}

void sub_23DE554D8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  sub_23E1FB7CC();
  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_23DE55580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C370, &unk_23E224160);
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD50, &qword_23E22A9F0);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = sub_23E1FDECC();
  v5[23] = sub_23E1FDEBC();
  v8 = sub_23E1FDE6C();
  v5[24] = v8;
  v5[25] = v7;

  return MEMORY[0x2822009F8](sub_23DE556D0, v8, v7);
}

uint64_t sub_23DE556D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v19 = [*(v18 + 112) items];
  v52 = sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  v20 = sub_23E1FDDEC();

  v53 = v20;
  v21 = sub_23DE4D8B0();
  v51 = v21;
  if (v21)
  {
    if (v21 < 1)
    {
      __break(1u);
      return MEMORY[0x2822004E8](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, v51, v52, v53, a16, a17, a18);
    }

    v29 = 0;
    a12 = **(v18 + 104);
    a10 = (v18 + 16);
    a11 = v20 & 0xC000000000000001;
    do
    {
      if (a11)
      {
        v30 = MEMORY[0x23EF04DD0](v29, v53);
      }

      else
      {
        v30 = *(v53 + 8 * v29 + 32);
      }

      v31 = v30;
      v33 = *(v18 + 160);
      v32 = *(v18 + 168);
      v34 = *(v18 + 120);
      v35 = *(v18 + 128);
      v36 = sub_23E1FDEFC();
      __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v37[4] = v31;
      v37[5] = v34;
      v37[6] = v35;
      sub_23DE58B60(v32, v33);
      LODWORD(v32) = __swift_getEnumTagSinglePayload(v33, 1, v36);
      v38 = v31;
      v39 = v34;
      sub_23E1FB7BC();
      v40 = *(v18 + 160);
      if (v32 == 1)
      {
        sub_23DE58BD0(*(v18 + 160), &qword_27E32CD50, &qword_23E22A9F0);
      }

      else
      {
        sub_23E1FDEEC();
        OUTLINED_FUNCTION_21();
        (*(v41 + 8))(v40, v36);
      }

      if (v37[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v42 = sub_23E1FDE6C();
        v44 = v43;
        swift_unknownObjectRelease();
      }

      else
      {
        v42 = 0;
        v44 = 0;
      }

      sub_23E1FB7CC();
      if (v44 | v42)
      {
        v45 = v18 + 16;
        *a10 = 0;
        *(v18 + 24) = 0;
        *(v18 + 32) = v42;
        *(v18 + 40) = v44;
      }

      else
      {
        v45 = 0;
      }

      ++v29;
      v46 = *(v18 + 168);
      *(v18 + 48) = 1;
      *(v18 + 56) = v45;
      *(v18 + 64) = a12;
      swift_task_create();

      sub_23DE58BD0(v46, &qword_27E32CD50, &qword_23E22A9F0);
    }

    while (v51 != v29);
  }

  v47 = MEMORY[0x277D84F90];
  *(v18 + 72) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C380, &qword_23E224180);
  sub_23E1FDF1C();
  *(v18 + 208) = v47;
  *(v18 + 216) = sub_23E1FDEBC();
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v18 + 224) = v48;
  *v48 = v49;
  OUTLINED_FUNCTION_12_0(v48);
  OUTLINED_FUNCTION_26();

  return MEMORY[0x2822004E8](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, v51, v52, v53, a16, a17, a18);
}

uint64_t sub_23DE55A54()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 192);
    v8 = *(v3 + 200);
    v9 = sub_23DE55CE8;
  }

  else
  {

    v7 = *(v3 + 192);
    v8 = *(v3 + 200);
    v9 = sub_23DE55B64;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23DE55B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_33_0();
  v19 = v18[10];
  if (v19)
  {
    v20 = v19;
    MEMORY[0x23EF045A0]();
    v21 = *((v18[9] & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v18[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v21 >> 1)
    {
      OUTLINED_FUNCTION_9(v21);
      sub_23E1FDE0C();
    }

    OUTLINED_FUNCTION_58_0();
    sub_23E1FDE3C();

    v18[26] = v18[9];
    v22 = sub_23E1FDEBC();
    v18[27] = v22;
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    v18[28] = v23;
    *v23 = v24;
    OUTLINED_FUNCTION_12_0(v23);
    v29 = MEMORY[0x277D85700];

    return MEMORY[0x2822004E8](v18 + 10, v22, v29, v25, v18 + 11, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v30 = v18[26];
    v31 = v18[12];
    (*(v18[18] + 8))(v18[19], v18[17]);

    *v31 = v30;

    OUTLINED_FUNCTION_7();

    return v32();
  }
}

uint64_t sub_23DE55CE8()
{
  OUTLINED_FUNCTION_33_0();

  v0 = OUTLINED_FUNCTION_45();
  v1(v0);

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23DE55D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_23DE55DB0, 0, 0);
}

uint64_t sub_23DE55DB0()
{
  OUTLINED_FUNCTION_33_0();
  if ([*(v0 + 24) canPerformCoercion_])
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 24);
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    v5 = sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    *v4 = v0;
    v4[1] = sub_23DE55F24;
    v6 = *(v0 + 16);

    return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000052, 0x800000023E24E730, sub_23DE58C2C, v3, v5);
  }

  else
  {
    **(v0 + 16) = *(v0 + 24);
    OUTLINED_FUNCTION_19();
    v11 = v7;
    v9 = v8;

    return v11();
  }
}

uint64_t sub_23DE55F24()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_7();

  return v3();
}

void sub_23DE56020(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C388, &qword_23E224188);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_23DE38DA8(0, &qword_27E32C350, 0x277CFC2A0);
  v11 = sub_23DE552A0(a3);
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v14 = a2;
  v15 = sub_23DE553CC(v11, sub_23DE58C34, v13);
  [v14 performCoercion_];
}

void sub_23DE561D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1 || (v7 = [a1 items], sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8), sub_23E1FDDEC(), v7, v8 = sub_23DE4D8B0(), , !v8))
  {
    v12 = a5;
    goto LABEL_8;
  }

  v9 = [a1 items];
  v10 = sub_23E1FDDEC();

  if ((v10 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EF04DD0](0, v10);
    goto LABEL_6;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);
LABEL_6:

LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C388, &qword_23E224188);
    sub_23E1FDE8C();
    return;
  }

  __break(1u);
}

BOOL sub_23DE56310(void **a1, uint64_t a2)
{
  v4 = sub_23E1FD03C();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a2 + 16);
  for (i = 32; ; i += 8)
  {
    v10 = v8;
    if (v8-- == 0)
    {
      break;
    }

    if ([v7 isKindOfClass_])
    {
      return v10 != 0;
    }
  }

  sub_23E1FCB9C();
  v12 = v7;
  sub_23E1FB7BC();
  v13 = sub_23E1FD02C();
  v14 = sub_23E1FE1BC();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    HIDWORD(v29) = v14;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v17 = 138740483;
    *(v17 + 4) = v12;
    *v18 = v12;
    *(v17 + 12) = 2082;
    swift_getObjectType();
    v31 = v4;
    v19 = v12;
    v20 = sub_23E1FE88C();
    v22 = sub_23DE56B40(v20, v21, &v33);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2082;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C368, &qword_23E224158);
    v24 = MEMORY[0x23EF045E0](a2, v23);
    v26 = sub_23DE56B40(v24, v25, &v33);

    *(v17 + 24) = v26;
    _os_log_impl(&dword_23DE30000, v13, BYTE4(v29), "WFSpotlightSearchAction: dropping item %{sensitive}@ due to unsupported type %{public}s (allowed types: %{public}s)", v17, 0x20u);
    sub_23DE58BD0(v18, &unk_27E32C190, &qword_23E224B70);
    MEMORY[0x23EF074C0](v18, -1, -1);
    v27 = v30;
    swift_arrayDestroy();
    MEMORY[0x23EF074C0](v27, -1, -1);
    MEMORY[0x23EF074C0](v17, -1, -1);

    (*(v32 + 8))(v6, v31);
  }

  else
  {

    (*(v32 + 8))(v6, v4);
  }

  return v10 != 0;
}

id sub_23DE56610(uint64_t a1)
{
  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  v1 = sub_23E1FDDCC();

  v2 = [swift_getObjCClassFromMetadata() collectionWithItems_];

  return v2;
}

id WFSpotlightSearchAction.__allocating_init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v9 = sub_23E1FDA9C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithIdentifier:v8 definition:a3 serializedParameters:v9];

  return v10;
}

id WFSpotlightSearchAction.init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for WFSpotlightSearchAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id WFSpotlightSearchAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFSpotlightSearchAction.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFSpotlightSearchAction();
  return objc_msgSendSuper2(&v3, sel_init);
}

id WFSpotlightSearchAction.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFSpotlightSearchAction();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_23DE56998(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_23E1FDBDC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithUserQueryString:v5 userQueryContext:a3];

  return v6;
}

id sub_23DE56A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

id sub_23DE56AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23E1FDBDC();

  v6 = sub_23E1FDBDC();

  v7 = [v4 initWithTypeIdentifier:v5 instanceIdentifier:v6];

  return v7;
}

unint64_t sub_23DE56B40(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_23E1FB7BC();
  v6 = sub_23DE56C04(v11, 0, 0, 1, a1, a2);
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
    sub_23DE48110(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23DE56C04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23DE56D04(a5, a6);
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
    result = sub_23E1FE60C();
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

uint64_t sub_23DE56D04(uint64_t a1, unint64_t a2)
{
  v3 = sub_23DE56D50(a1, a2);
  sub_23DE56E68(&unk_2850233E0);
  return v3;
}

uint64_t sub_23DE56D50(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_23E1FDD2C())
  {
    result = sub_23DE56F4C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_23E1FE58C();
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
          result = sub_23E1FE60C();
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

uint64_t sub_23DE56E68(uint64_t result)
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

    result = sub_23DE56FBC(result, v7, 1, v3);
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

void *sub_23DE56F4C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C3D8, &unk_23E2241A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_23DE56FBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C3D8, &unk_23E2241A8);
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

unint64_t sub_23DE570B0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23DE570D4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_23DE574E0(result, 1, sub_23DE4CB98);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_23DE571A8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_41_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23DE574E0(v4, 1, sub_23DE4CF68);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_66_0();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  type metadata accessor for WFExecutionPlatform(0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_23DE57274(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23DE574E0(v4 + v3, 1, sub_23DE4D3CC);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_66_0();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 16 * v6 + 32), (a1 + 32), 16 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_23DE5733C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_41_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23DE574E0(result, 1, sub_23DE4D518);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_23E1FD6BC();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23DE57440(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_23E1FE6AC();
LABEL_9:
  result = sub_23E1FE5FC();
  *v2 = result;
  return result;
}

uint64_t sub_23DE574E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_23DE57558(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23E1FE70C();
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
        sub_23E1FDFEC();
        v6 = sub_23E1FDE2C();
        *(v6 + 16) = v5;
      }

      v7 = sub_23E1FDFEC();
      OUTLINED_FUNCTION_25(v7);
      OUTLINED_FUNCTION_31_0();
      v9[0] = v6 + v8;
      v9[1] = v5;
      sub_23DE578D8(v9, v10, a1, v4);
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
    return sub_23DE57680(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23DE57680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_23E1FDFEC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v41 = v10;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_68_0();
  v45 = v12;
  OUTLINED_FUNCTION_14_0();
  result = MEMORY[0x28223BE20](v13);
  v44 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v42 = *(v15 + 16);
    v43 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v20 = v17 + v18 * (a3 - 1);
    v38 = -v18;
    v39 = (v15 + 32);
    v21 = a1 - a3;
    v40 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v36 = v20;
      v37 = a3;
      v34 = v22;
      v35 = v21;
      do
      {
        v23 = v44;
        v24 = v42;
        v42(v44, v22, v8);
        v25 = v45;
        v24(v45, v20, v8);
        v26 = sub_23E1FDFCC();
        v27 = *v19;
        (*v19)(v25, v8);
        result = v27(v23, v8);
        if ((v26 & 1) == 0)
        {
          break;
        }

        if (!v40)
        {
          __break(1u);
          return result;
        }

        v28 = *v39;
        v29 = v41;
        (*v39)(v41, v22, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v28)(v20, v29, v8);
        v20 += v38;
        v22 += v38;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v37 + 1;
      v20 = v36 + v32;
      v21 = v35 - 1;
      v22 = v34 + v32;
      if (v37 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23DE578D8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v127 = a1;
  v146 = sub_23E1FDFEC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v130 = v10;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_68_0();
  v139 = v12;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_68_0();
  v145 = v14;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v15);
  v144 = &v123 - v17;
  v135 = v16;
  v136 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_102:
    v5 = *v127;
    if (!*v127)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v137 = v20;
      v117 = v20 + 16;
      v118 = *(v20 + 2);
      while (v118 >= 2)
      {
        if (!*v136)
        {
          goto LABEL_140;
        }

        v119 = v6;
        v120 = &v137[16 * v118];
        v6 = *v120;
        v20 = &v117[2 * v118];
        v121 = *(v20 + 1);
        sub_23DE581F4(*v136 + *(v135 + 72) * *v120, *v136 + *(v135 + 72) * *v20, *v136 + *(v135 + 72) * v121, v5);
        if (v119)
        {
          break;
        }

        if (v121 < v6)
        {
          goto LABEL_128;
        }

        if (v118 - 2 >= *v117)
        {
          goto LABEL_129;
        }

        *v120 = v6;
        *(v120 + 1) = v121;
        v122 = *v117 - v118;
        if (*v117 < v118)
        {
          goto LABEL_130;
        }

        v118 = *v117 - 1;
        sub_23DF20C0C(v20 + 16, v122, v20);
        *v117 = v118;
        v6 = 0;
      }

LABEL_112:

      return;
    }

LABEL_137:
    v20 = sub_23DF20AE8(v20);
    goto LABEL_104;
  }

  v124 = a4;
  v19 = 0;
  v142 = (v16 + 8);
  v143 = v16 + 16;
  v141 = (v16 + 32);
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v19++;
    if (v19 >= v18)
    {
      goto LABEL_32;
    }

    v126 = v6;
    v137 = v20;
    v138 = v18;
    v22 = *v136;
    v23 = *(v16 + 72);
    v5 = v21;
    v24 = *v136 + v23 * v19;
    v25 = *(v16 + 16);
    v26 = v144;
    v134 = v19;
    v27 = v146;
    v25(v144, v24, v146);
    v28 = v145;
    v132 = v25;
    v25(v145, v22 + v23 * v5, v27);
    LODWORD(v133) = sub_23E1FDFCC();
    v29 = *(v135 + 8);
    v29(v28, v27);
    v30 = v27;
    v19 = v134;
    v131 = v29;
    v29(v26, v30);
    v31 = v138;
    v125 = v5;
    v32 = v5 + 2;
    v140 = v23;
    v20 = (v22 + v23 * (v5 + 2));
    while (1)
    {
      v33 = v32;
      v34 = v19 + 1;
      if (v34 >= v31)
      {
        break;
      }

      v35 = v34;
      v36 = v144;
      v37 = v146;
      v38 = v132;
      (v132)(v144, v20, v146);
      v39 = v145;
      v38(v145, v24, v37);
      v40 = sub_23E1FDFCC() & 1;
      v41 = v39;
      v5 = v142;
      v42 = v131;
      (v131)(v41, v37);
      v43 = v36;
      v19 = v35;
      v42(v43, v37);
      v20 += v140;
      v24 += v140;
      v32 = v33 + 1;
      v31 = v138;
      if ((v133 & 1) != v40)
      {
        goto LABEL_9;
      }
    }

    v19 = v31;
LABEL_9:
    v6 = v126;
    if (v133)
    {
      v21 = v125;
      if (v19 < v125)
      {
        goto LABEL_134;
      }

      if (v125 >= v19)
      {
        v16 = v135;
        v20 = v137;
LABEL_32:
        v52 = v146;
        goto LABEL_33;
      }

      v5 = v19;
      v44 = v31 >= v33 ? v33 : v31;
      v45 = v140 * (v44 - 1);
      v46 = v140 * v44;
      v47 = v125 * v140;
      v134 = v19;
      do
      {
        if (v21 != --v5)
        {
          v48 = *v136;
          if (!*v136)
          {
            goto LABEL_141;
          }

          v49 = v146;
          v50 = *v141;
          (*v141)(v130, v48 + v47, v146);
          v51 = v47 < v45 || v48 + v47 >= v48 + v46;
          if (v51)
          {
            OUTLINED_FUNCTION_63_0();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v47 != v45)
          {
            OUTLINED_FUNCTION_63_0();
            swift_arrayInitWithTakeBackToFront();
          }

          v50(v48 + v45, v130, v49);
        }

        ++v21;
        v45 -= v140;
        v46 -= v140;
        v47 += v140;
      }

      while (v21 < v5);
      v6 = v126;
      v19 = v134;
      v16 = v135;
    }

    else
    {
      v16 = v135;
    }

    v20 = v137;
    v52 = v146;
    v21 = v125;
LABEL_33:
    v53 = v136[1];
    if (v19 < v53)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_133;
      }

      if (v19 - v21 < v124)
      {
        break;
      }
    }

LABEL_49:
    if (v19 < v21)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v112 = OUTLINED_FUNCTION_6_1();
      sub_23DE4CE18(v112, v113, v114, v20);
      v20 = v115;
    }

    v71 = *(v20 + 2);
    v70 = *(v20 + 3);
    v72 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      sub_23DE4CE18(v70 > 1, v71 + 1, 1, v20);
      v20 = v116;
    }

    *(v20 + 2) = v72;
    v73 = v20 + 32;
    v74 = &v20[16 * v71 + 32];
    *v74 = v21;
    *(v74 + 1) = v19;
    v140 = *v127;
    if (!v140)
    {
      goto LABEL_142;
    }

    if (v71)
    {
      v137 = v20;
      while (1)
      {
        v75 = v72 - 1;
        v76 = &v73[16 * v72 - 16];
        v77 = &v20[16 * v72];
        if (v72 >= 4)
        {
          break;
        }

        if (v72 == 3)
        {
          v78 = *(v20 + 4);
          v79 = *(v20 + 5);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_70:
          if (v81)
          {
            goto LABEL_119;
          }

          v93 = *v77;
          v92 = *(v77 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_122;
          }

          v97 = *(v76 + 1);
          v98 = v97 - *v76;
          if (__OFSUB__(v97, *v76))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v95, v98))
          {
            goto LABEL_127;
          }

          if (v95 + v98 >= v80)
          {
            if (v80 < v98)
            {
              v75 = v72 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v72 < 2)
        {
          goto LABEL_121;
        }

        v100 = *v77;
        v99 = *(v77 + 1);
        v88 = __OFSUB__(v99, v100);
        v95 = v99 - v100;
        v96 = v88;
LABEL_85:
        if (v96)
        {
          goto LABEL_124;
        }

        v102 = *v76;
        v101 = *(v76 + 1);
        v88 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v88)
        {
          goto LABEL_126;
        }

        if (v103 < v95)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v75 - 1 >= v72)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v136)
        {
          goto LABEL_139;
        }

        v107 = &v73[16 * v75 - 16];
        v108 = *v107;
        v20 = &v73[16 * v75];
        v109 = *(v20 + 1);
        sub_23DE581F4(*v136 + *(v135 + 72) * *v107, *v136 + *(v135 + 72) * *v20, *v136 + *(v135 + 72) * v109, v140);
        if (v6)
        {
          goto LABEL_112;
        }

        if (v109 < v108)
        {
          goto LABEL_114;
        }

        v5 = 0;
        v6 = v73;
        v110 = *(v137 + 2);
        if (v75 > v110)
        {
          goto LABEL_115;
        }

        *v107 = v108;
        *(v107 + 1) = v109;
        if (v75 >= v110)
        {
          goto LABEL_116;
        }

        v72 = v110 - 1;
        sub_23DF20C0C(v20 + 16, v110 - 1 - v75, v20);
        v20 = v137;
        *(v137 + 2) = v110 - 1;
        v111 = v110 > 2;
        v73 = v6;
        v6 = 0;
        if (!v111)
        {
          goto LABEL_99;
        }
      }

      v82 = &v73[16 * v72];
      v83 = *(v82 - 8);
      v84 = *(v82 - 7);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_117;
      }

      v87 = *(v82 - 6);
      v86 = *(v82 - 5);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_118;
      }

      v89 = *(v77 + 1);
      v90 = v89 - *v77;
      if (__OFSUB__(v89, *v77))
      {
        goto LABEL_120;
      }

      v88 = __OFADD__(v80, v90);
      v91 = v80 + v90;
      if (v88)
      {
        goto LABEL_123;
      }

      if (v91 >= v85)
      {
        v105 = *v76;
        v104 = *(v76 + 1);
        v88 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v88)
        {
          goto LABEL_131;
        }

        if (v80 < v106)
        {
          v75 = v72 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v16 = v135;
    v18 = v136[1];
    if (v19 >= v18)
    {
      goto LABEL_102;
    }
  }

  v54 = v21 + v124;
  if (__OFADD__(v21, v124))
  {
    goto LABEL_135;
  }

  if (v54 >= v53)
  {
    v54 = v136[1];
  }

  if (v54 < v21)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v19 == v54)
  {
    goto LABEL_49;
  }

  v125 = v21;
  v126 = v6;
  v55 = *v136;
  v56 = *(v16 + 72);
  v140 = *(v16 + 16);
  v57 = v55 + v56 * (v19 - 1);
  v58 = -v56;
  v59 = (v21 - v19);
  v137 = v20;
  v138 = v55;
  v128 = v56;
  v129 = v54;
  v60 = (v55 + v19 * v56);
LABEL_42:
  v133 = v57;
  v134 = v19;
  v131 = v60;
  v132 = v59;
  v61 = v57;
  while (1)
  {
    v62 = v144;
    v63 = v140;
    (v140)(v144, v60, v52);
    v64 = v145;
    v63(v145, v61, v146);
    v65 = sub_23E1FDFCC();
    v5 = v142;
    v66 = *v142;
    v67 = v64;
    v52 = v146;
    (*v142)(v67, v146);
    v66(v62, v52);
    if ((v65 & 1) == 0)
    {
LABEL_47:
      v19 = v134 + 1;
      v57 = v133 + v128;
      v59 = v132 - 1;
      v60 = &v131[v128];
      if (v134 + 1 == v129)
      {
        v19 = v129;
        v21 = v125;
        v6 = v126;
        v20 = v137;
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    if (!v138)
    {
      break;
    }

    v68 = *v141;
    v69 = v139;
    (*v141)(v139, v60, v52);
    swift_arrayInitWithTakeFrontToBack();
    v68(v61, v69, v52);
    v61 += v58;
    v60 += v58;
    v51 = __CFADD__(v59++, 1);
    if (v51)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

uint64_t sub_23DE581F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v62 = a4;
  v61 = sub_23E1FDFEC();
  v7 = MEMORY[0x28223BE20](v61);
  v59 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v58 = &v50 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v14 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v14)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v13;
  v65 = a1;
  v64 = v62;
  v56 = (v10 + 8);
  v57 = (v10 + 16);
  v18 = v15 / v13;
  if (v17 >= v15 / v13)
  {
    v32 = v62;
    sub_23DF3180C(a2, v15 / v13, v62);
    v33 = v32 + v18 * v13;
    v34 = -v13;
    v35 = v33;
    v52 = -v13;
    v53 = a1;
LABEL_36:
    v36 = v35;
    v54 = a2;
    v55 = a2 + v34;
    v37 = a3;
    v50 = v35;
    while (1)
    {
      if (v33 <= v62)
      {
        v65 = a2;
        v63 = v36;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v51 = v36;
      v60 = v37 + v34;
      v38 = v33 + v34;
      v39 = v58;
      v40 = *v57;
      v41 = v33;
      v42 = v61;
      (*v57)(v58, v38, v61);
      v43 = v59;
      v40(v59, v55, v42);
      LOBYTE(v40) = sub_23E1FDFCC();
      v44 = *v56;
      (*v56)(v43, v42);
      v44(v39, v42);
      if (v40)
      {
        v33 = v41;
        a3 = v60;
        if (v37 < v54 || v60 >= v54)
        {
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v51;
          v34 = v52;
          a1 = v53;
        }

        else
        {
          v48 = v51;
          v34 = v52;
          v35 = v51;
          v14 = v37 == v54;
          v49 = v55;
          a2 = v55;
          a1 = v53;
          if (!v14)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v49;
            v35 = v48;
          }
        }

        goto LABEL_36;
      }

      v45 = v60;
      if (v37 < v41 || v60 >= v41)
      {
        swift_arrayInitWithTakeFrontToBack();
        v37 = v45;
        v33 = v38;
        v36 = v38;
        a1 = v53;
        a2 = v54;
        v34 = v52;
      }

      else
      {
        v36 = v38;
        v14 = v41 == v37;
        v37 = v60;
        v33 = v38;
        a1 = v53;
        a2 = v54;
        v34 = v52;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          v37 = v45;
          v33 = v38;
          v36 = v38;
        }
      }
    }

    v65 = a2;
    v63 = v50;
  }

  else
  {
    v19 = v62;
    sub_23DF3180C(a1, (a2 - a1) / v13, v62);
    v55 = v19 + v17 * v13;
    v63 = v55;
    v60 = a3;
    while (v62 < v55 && a2 < a3)
    {
      v21 = a1;
      v22 = v58;
      v23 = *v57;
      v24 = v61;
      (*v57)(v58, a2, v61);
      v23(v59, v62, v24);
      LOBYTE(v23) = sub_23E1FDFCC();
      v25 = a2;
      v26 = *v56;
      v27 = OUTLINED_FUNCTION_66();
      (v26)(v27);
      v26(v22, v24);
      if (v23)
      {
        a2 = v25 + v13;
        v28 = v21;
        if (v21 < v25 || v21 >= a2)
        {
          OUTLINED_FUNCTION_55_0();
          swift_arrayInitWithTakeFrontToBack();
          a3 = v60;
        }

        else
        {
          a3 = v60;
          if (v21 != v25)
          {
            OUTLINED_FUNCTION_55_0();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v30 = v62 + v13;
        v28 = v21;
        if (v21 < v62 || v21 >= v30)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v25;
          a3 = v60;
        }

        else
        {
          a2 = v25;
          a3 = v60;
          if (v21 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v64 = v30;
        v62 = v30;
      }

      a1 = v28 + v13;
      v65 = a1;
    }
  }

LABEL_58:
  sub_23DF20AFC(&v65, &v64, &v63);
  return 1;
}

uint64_t sub_23DE586E0(void *a1)
{
  v1 = [a1 parameterStates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C430, &qword_23E223978);
  v3 = sub_23E1FDDEC();

  return v3;
}

void sub_23DE5874C(uint64_t a1, void *a2)
{
  v3 = sub_23E1FDDCC();

  [a2 setBundleIDs_];
}

uint64_t sub_23DE587B8(void *a1)
{
  v2 = [a1 filterQueries];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23E1FDDEC();

  return v3;
}

uint64_t sub_23DE5881C(void *a1)
{
  v1 = [a1 attributionBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23E1FDC1C();

  return v3;
}

void (*sub_23DE58880(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_23DE347B4(a3);
  v7 = OUTLINED_FUNCTION_26_0();
  sub_23DE570B0(v7, v8, v9);
  if (v6)
  {
    v10 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_36_0();
    v10 = MEMORY[0x23EF04DD0](v12);
  }

  *a1 = v10;
  return sub_23DE58904;
}

void (*sub_23DE5890C(void *a1, uint64_t a2, uint64_t a3))(id *)
{
  v6 = sub_23DE347B4(a3);
  v7 = OUTLINED_FUNCTION_26_0();
  sub_23DE570B0(v7, v8, v9);
  if (v6)
  {
    v10 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_36_0();
    v10 = MEMORY[0x23EF04DD0](v12);
  }

  *a1 = v10;
  return sub_23DE59010;
}

uint64_t sub_23DE589E4()
{
  OUTLINED_FUNCTION_33_0();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_23DE4D8A8;

  return sub_23DE55580(v5, v3, v6, v7, v8);
}

uint64_t sub_23DE58AA0()
{
  OUTLINED_FUNCTION_33_0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_23DE47040;

  return sub_23DE55D8C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_23DE58B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD50, &qword_23E22A9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE58BD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_21();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_23DE58C34(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C388, &qword_23E224188);
  OUTLINED_FUNCTION_8(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = *(v3 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_23DE561D0(a1, a2, a3, v3 + v12, v13);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

{
  return sub_23DE48110(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_16(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

uint64_t sub_23DE58D04()
{
  OUTLINED_FUNCTION_4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DE47040;
  v2 = OUTLINED_FUNCTION_50();

  return v3(v2);
}

unint64_t sub_23DE58DB4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_23E1FB7BC();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_23DE58E20(uint64_t result, uint64_t a2)
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

  sub_23DE574E0(result, 1, sub_23DE4CD10);
  v8 = *v2;
  v9 = *(sub_23E1FDFEC() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_23DF3180C(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_23DE58F64()
{
  result = qword_27E32C420;
  if (!qword_27E32C420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E32BA60, &unk_23E222770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C420);
  }

  return result;
}

uint64_t sub_23DE58FC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_16_1()
{

  JUMPOUT(0x23EF074C0);
}

void OUTLINED_FUNCTION_17_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_20_0()
{

  JUMPOUT(0x23EF074C0);
}

void OUTLINED_FUNCTION_21_0()
{

  JUMPOUT(0x23EF074C0);
}

uint64_t OUTLINED_FUNCTION_24_1()
{
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_46_0()
{

  return sub_23E1FE68C();
}

uint64_t OUTLINED_FUNCTION_47_0()
{
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_51(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_52_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_73_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_74_0()
{

  return swift_slowAlloc();
}

uint64_t sub_23DE59448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = a5 >> 1;
  while (1)
  {
    if (v7 == a4)
    {
      return 0;
    }

    result = sub_23DE38DA8(0, &qword_27E32C440, 0x277D7C098);
    if (a4 >= v7)
    {
      break;
    }

    v9 = *(a3 + 8 * a4);
    v10 = sub_23E1FE3BC();

    if (v10)
    {
      return a4;
    }

    ++a4;
  }

  __break(1u);
  return result;
}

void sub_23DE59500()
{
  OUTLINED_FUNCTION_90();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6(v4);
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
LABEL_11:
      OUTLINED_FUNCTION_76();
      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x23EF04DD0](v8, v5);
      goto LABEL_6;
    }

    if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v9 = *(v5 + 8 * v8 + 32);
LABEL_6:
    v10 = v9;
    sub_23DE38DA8(0, v3, v1);
    v11 = sub_23E1FE3BC();

    if (v11)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void WFGenerativeOutputTraversal.init(workflow:promptVariables:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  *(a3 + 8) = a2;
}

void WFGenerativeOutputTraversal.traverseWorkflow(for:)()
{
  OUTLINED_FUNCTION_90();
  v2 = v1;
  v3 = sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_59();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v53 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v53 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_4:
    sub_23E1FCB9C();
    v20 = sub_23E1FD02C();
    v21 = sub_23E1FE1BC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_23DE30000, v20, v21, "Cannot find action in workflow, returning []...", v22, 2u);
      OUTLINED_FUNCTION_5_2();
    }

    v23 = OUTLINED_FUNCTION_6_2();
    v24(v23);
LABEL_7:
    OUTLINED_FUNCTION_76();
    return;
  }

  v53[1] = v0;
  v54 = v12;
  v55 = v5;
  v56 = v3;
  v14 = Strong;
  v15 = [Strong actions];
  sub_23DE38DA8(0, &qword_27E32C440, 0x277D7C098);
  sub_23E1FDDEC();

  sub_23DE59500();
  v17 = v16;
  v19 = v18;

  if (v19)
  {

    goto LABEL_4;
  }

  v53[0] = v14;
  v25 = sub_23DE5C91C(v2, &selRef_UUID);
  if (!v26)
  {
    sub_23E1FCB9C();
    v36 = sub_23E1FD02C();
    v37 = sub_23E1FE1AC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_23DE30000, v36, v37, "Action does not have output id, returning []...", v38, 2u);
      OUTLINED_FUNCTION_5_2();
    }

    (*(v55 + 8))(v10, v56);
    goto LABEL_7;
  }

  v27 = v25;
  v28 = v26;
  v29 = [v53[0] actions];
  v30 = sub_23E1FDDEC();

  v31 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  v32 = sub_23DE4D8B0();
  if (v32 < v31)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v33 = v32;
  sub_23DE5C97C(v31, v30);
  sub_23DE5C97C(v33, v30);
  if ((v30 & 0xC000000000000001) == 0 || v31 == v33)
  {
    sub_23E1FB7BC();
  }

  else
  {
    if (v31 >= v33)
    {
      goto LABEL_31;
    }

    sub_23E1FB7BC();
    v34 = v31;
    do
    {
      v35 = v34 + 1;
      sub_23E1FE5DC();
      v34 = v35;
    }

    while (v33 != v35);
  }

  if (v30 >> 62)
  {
LABEL_29:

    v39 = sub_23E1FE6BC();
    v40 = v50;
    v31 = v51;
    v41 = v52;

    goto LABEL_24;
  }

  if ((v33 & 0x8000000000000000) == 0)
  {

    v39 = v30 & 0xFFFFFFFFFFFFFF8;
    v40 = (v30 & 0xFFFFFFFFFFFFFF8) + 32;
    v41 = (2 * v33) | 1;
LABEL_24:
    sub_23DE59B78(v27, v28, v39, v40, v31, v41);
    swift_unknownObjectRelease();

    v42 = v54;
    sub_23E1FCB9C();
    sub_23E1FB7BC();
    v43 = sub_23E1FD02C();
    v44 = sub_23E1FE1AC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v57 = v46;
      *v45 = 136315138;
      sub_23E1FBBDC();
      sub_23DE5C9D4();
      OUTLINED_FUNCTION_6_2();
      v47 = sub_23E1FDF5C();
      v49 = sub_23DE56B40(v47, v48, &v57);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_23DE30000, v43, v44, "WFGenerativeOutputTraversal inferred types: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      OUTLINED_FUNCTION_5_2();
      MEMORY[0x23EF074C0](v45, -1, -1);
    }

    (*(v55 + 8))(v42, v56);
    goto LABEL_7;
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_23DE59B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v62 = a1;
  v63 = a2;
  v64 = a3;
  v9 = sub_23E1FD03C();
  v10 = MEMORY[0x28223BE20](v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a6 >> 1;
  if ((a6 >> 1) <= a5)
  {
    goto LABEL_38;
  }

  v56 = v13;
  v57 = v11;
  v58 = v10;
  v65 = MEMORY[0x277D84FA0];
  v15 = a5;
  v61 = a4;
  v59 = a5;
  while (1)
  {
    if (v15 < a5 || v15 >= v14)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    v17 = *(a4 + 8 * v15);
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (!v18)
    {
      ++v15;
      v26 = v17;
      sub_23DE5A9A0(v62, v63, 0);
      if (v27)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          WFGenerativeOutputTraversal.traverseWorkflow(for:)();
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
          {
            v45 = sub_23DE5B714(v15, a6 >> 1, v64, a4, a5, a6);
            sub_23DE5AB60(v26, v62, v63, v45, v46, v47, v48);
            v50 = v49;
            a4 = v61;
            swift_unknownObjectRelease();
            v28 = v50;
          }

          else
          {
            sub_23DE5B130();
          }
        }

        v65 = sub_23DE71D40(v28, v65);
      }

      goto LABEL_31;
    }

    v19 = v18;
    v20 = v17;
    v21 = [v19 groupedCloseAction];
    if (!v21)
    {
      goto LABEL_35;
    }

    v22 = v21;
    v23 = sub_23DE59448(v21, v64, a4, a5, a6);
    if (v24)
    {
      break;
    }

    v25 = v23;

    if ([v19 mode])
    {

      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_39;
      }
    }

    else
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        if (v25 < v15)
        {
          goto LABEL_40;
        }

        if (__OFADD__(v25, 1))
        {
          goto LABEL_41;
        }

        v30 = v29;
        v31 = sub_23DE5B714(v15, v25 + 1, v64, a4, a5, a6);
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v60 = v20;
        v38 = v37;
        a5 = v59;
        sub_23DE5A008(v30, v62, v63, v31, v33, v35, v38);
        v40 = v39;
        swift_unknownObjectRelease();
      }

      else
      {
        if (v25 < v15)
        {
          goto LABEL_42;
        }

        if (__OFADD__(v25, 1))
        {
          goto LABEL_43;
        }

        v41 = sub_23DE5B714(v15, v25 + 1, v64, a4, a5, a6);
        v40 = sub_23DE5A550(v19, v62, v63, v41, v42, v43, v44);
        swift_unknownObjectRelease();
      }

      v65 = sub_23DE71D40(v40, v65);

      v15 = v25 + 1;
      a4 = v61;
    }

LABEL_31:
    if (v14 <= v15)
    {
      return;
    }
  }

LABEL_35:

  v51 = v56;
  sub_23E1FCB9C();
  v52 = sub_23E1FD02C();
  v53 = sub_23E1FE1BC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_23DE30000, v52, v53, "WFControlFlowAction does not have close action, this should never happen", v54, 2u);
    MEMORY[0x23EF074C0](v54, -1, -1);
  }

  (*(v57 + 8))(v51, v58);
LABEL_38:
  v65 = MEMORY[0x277D84FA0];
}

void sub_23DE5A008(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v14 = sub_23E1FBBDC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v76 = (&v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v77 = &v62 - v18;
  v81 = sub_23DE5C91C(a1, &selRef_itemVariableName);
  v83 = v19;
  if (v19)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32DB60, &qword_23E224230);
    v21 = *(v15 + 72);
    v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v69 = *(v15 + 80);
    v70 = v21;
    v71 = v20;
    v23 = swift_allocObject();
    v68 = xmmword_23E222340;
    *(v23 + 16) = xmmword_23E222340;
    v24 = *MEMORY[0x277CFC0F0];
    v72 = v22;
    v73 = v15;
    v66 = *(v15 + 104);
    v67 = v15 + 104;
    v66(v23 + v22, v24, v14);
    sub_23DF20D38();
    v74 = v25;
    swift_unknownObjectRetain();
    v26 = sub_23DE5B790(1, a4, a5, a6, a7);
    v30 = sub_23DE5B864(1, v26, v27, v28, v29);
    v82 = v32;
    v34 = v33;
    v75 = v31;
    if (v33 == v31 >> 1)
    {
      v35 = v30;

LABEL_4:
      v36 = v74;
LABEL_25:
      sub_23DE59B78(a2, a3, v35, v82, v34, v75);
      sub_23DE71D40(v61, v36);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v14;
      v64 = a2;
      v65 = a3;
      v37 = v31 >> 1;
      v63 = v30;
      swift_unknownObjectRetain();
      v38 = v34;
      v78 = v37;
      v79 = v34;
      while (v38 < v37)
      {
        v39 = *(v82 + 8 * v38);
        v40 = v83;
        sub_23E1FB7BC();
        v85 = v39;
        sub_23DE5A9A0(v81, v40, 1);
        LOBYTE(v39) = v41;

        if (v39)
        {
          v42 = *(v80 + 8);
          if (v42 >> 62)
          {
            v43 = sub_23E1FE6AC();
            if (v43)
            {
LABEL_11:
              v44 = 0;
              v84 = v42 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if ((v42 & 0xC000000000000001) != 0)
                {
                  v45 = MEMORY[0x23EF04DD0](v44, v42);
                }

                else
                {
                  if (v44 >= *(v84 + 16))
                  {
                    goto LABEL_27;
                  }

                  v45 = *(v42 + 8 * v44 + 32);
                }

                v46 = v45;
                v47 = v44 + 1;
                if (__OFADD__(v44, 1))
                {
                  break;
                }

                v48 = [v45 action];
                if (v48)
                {
                  v49 = v48;
                  sub_23E1FE41C();

                  sub_23E1FE40C();
                  LOBYTE(v49) = sub_23E1FE3EC();

                  if (v49)
                  {

                    v50 = [v46 name];
                    v51 = sub_23E1FDC1C();
                    v53 = v52;

                    v54 = v76;
                    *v76 = v51;
                    v54[1] = v53;
                    v55 = v62;
                    v66(v54, *MEMORY[0x277CFC0D8], v62);
                    v56 = v73;
                    v57 = v77;
                    (*(v73 + 32))(v77, v54, v55);
                    v58 = v72;
                    v59 = swift_allocObject();
                    *(v59 + 16) = v68;
                    (*(v56 + 16))(v59 + v58, v57, v55);
                    sub_23DF20D38();
                    v36 = v60;
                    v35 = v63;
                    swift_unknownObjectRelease();

                    (*(v56 + 8))(v57, v55);
                    a3 = v65;
                    a2 = v64;
                    v34 = v79;
                    goto LABEL_25;
                  }
                }

                ++v44;
                if (v47 == v43)
                {
                  goto LABEL_20;
                }
              }

              __break(1u);
LABEL_27:
              __break(1u);
              break;
            }
          }

          else
          {
            v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v43)
            {
              goto LABEL_11;
            }
          }
        }

LABEL_20:
        ++v38;

        v37 = v78;
        v34 = v79;
        if (v38 == v78)
        {

          v35 = v63;
          swift_unknownObjectRelease();
          a3 = v65;
          a2 = v64;
          goto LABEL_4;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_23DE5A550(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v55 = a4;
  v56 = a5;
  v57 = a7;
  v11 = sub_23E1FD03C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  v18 = [a1 groupedCloseAction];
  if (v18)
  {
    v19 = v18;
    v49 = v17;
    v50 = v12;
    v51 = v11;
    v53 = a2;
    v54 = a3;
    sub_23DE5B130();
    v21 = v20;
    v22 = [a1 groupedIntermediaryActions];
    sub_23DE38DA8(0, &qword_27E32C440, 0x277D7C098);
    v23 = sub_23E1FDDEC();

    v58 = v23;
    v24 = v19;
    MEMORY[0x23EF045A0]();
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_25:
      sub_23E1FDE0C();
    }

    v52 = v24;
    sub_23E1FDE3C();
    v24 = v58;
    v25 = sub_23DE4D8B0();
    v26 = 0;
    for (i = a6; ; i = v32)
    {
      if (v25 == v26)
      {

        return v21;
      }

      sub_23DE59014();
      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x23EF04DD0](v26, v24);
      }

      else
      {
        v28 = *(v24 + 8 * v26 + 32);
      }

      v29 = v28;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v30 = sub_23DE59448(v28, v55, v56, a6, v57);
      if (v31)
      {
        break;
      }

      v32 = v30;
      v33 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_23;
      }

      if (v32 < v33)
      {
        goto LABEL_24;
      }

      v34 = sub_23DE5B714(v33, v32, v55, v56, a6, v57);
      sub_23DE59B78(v53, v54, v34, v35, v36, v37);
      v39 = v38;
      swift_unknownObjectRelease();
      v21 = sub_23DE71D40(v39, v21);

      ++v26;
    }

    v43 = v49;
    sub_23E1FCB9C();
    v44 = sub_23E1FD02C();
    v45 = sub_23E1FE1BC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_23DE30000, v44, v45, "Cannot find action in the workflow, erroring out.", v46, 2u);
      MEMORY[0x23EF074C0](v46, -1, -1);
    }

    (*(v50 + 8))(v43, v51);
  }

  else
  {
    sub_23E1FCB9C();
    v40 = sub_23E1FD02C();
    v41 = sub_23E1FE1BC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_23DE30000, v40, v41, "Control flow action in a incorrect state, exiting...", v42, 2u);
      MEMORY[0x23EF074C0](v42, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
  }

  return MEMORY[0x277D84FA0];
}

void sub_23DE5A9A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = [v3 parameters];
  sub_23DE38DA8(0, &unk_27E32CD10, 0x277D7C6D8);
  OUTLINED_FUNCTION_20();
  v7 = sub_23E1FDDEC();

  v8 = sub_23DE4D8B0();
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x23EF04DD0](v10, v7);
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = [v11 key];
      if (!v14)
      {
        sub_23E1FDC1C();
        v14 = sub_23E1FDBDC();
      }

      v15 = [v4 parameterStateForKey_];

      if (v15)
      {
        ObjectType = swift_getObjectType();
        sub_23DE5B920(a1, a2, a3 & 1, ObjectType);
        v18 = v17;
        swift_unknownObjectRelease();

        if (v18)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      ++v10;
      if (v13 == v9)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_23DE5AB60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v59 = a5;
  v10 = sub_23E1FD03C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23E1FBBDC();
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v52 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v53 = &v51 - v17;
  v58 = sub_23DE5C91C(a1, &selRef_UUID);
  v60 = v18;
  if (v18)
  {
    v19 = a7 >> 1;
    if (a7 >> 1 == a6)
    {
LABEL_3:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32DB60, &qword_23E224230);
      v20 = v54;
      v21 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_23E222340;
      (*(v20 + 104))(v22 + v21, *MEMORY[0x277CFC0F0], v55);

      sub_23DF20D38();
    }

    else
    {
      v57 = a7 >> 1;
      while (a6 < v19)
      {
        v61 = a6;
        v29 = *(v59 + 8 * a6);
        v30 = v60;
        sub_23E1FB7BC();
        sub_23DE5A9A0(v58, v30, 0);
        v32 = v31;

        if (v32)
        {
          v33 = *(v56 + 8);
          if (v33 >> 62)
          {
            v34 = sub_23E1FE6AC();
            if (v34)
            {
LABEL_14:
              v35 = 0;
              v62 = v33 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if ((v33 & 0xC000000000000001) != 0)
                {
                  v36 = MEMORY[0x23EF04DD0](v35, v33);
                }

                else
                {
                  if (v35 >= *(v62 + 16))
                  {
                    goto LABEL_29;
                  }

                  v36 = *(v33 + 8 * v35 + 32);
                }

                v37 = v36;
                v38 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
                  break;
                }

                v39 = [v36 action];
                if (v39)
                {
                  v40 = v39;
                  sub_23E1FE41C();

                  sub_23E1FE40C();
                  LOBYTE(v40) = sub_23E1FE3EC();

                  if (v40)
                  {

                    v41 = [v37 name];
                    v42 = sub_23E1FDC1C();
                    v44 = v43;

                    v45 = v52;
                    *v52 = v42;
                    v45[1] = v44;
                    v47 = v54;
                    v46 = v55;
                    (*(v54 + 104))(v45, *MEMORY[0x277CFC0D8], v55);
                    v48 = v53;
                    (*(v47 + 32))(v53, v45, v46);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32DB60, &qword_23E224230);
                    v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
                    v50 = swift_allocObject();
                    *(v50 + 16) = xmmword_23E222340;
                    (*(v47 + 16))(v50 + v49, v48, v46);
                    sub_23DF20D38();

                    (*(v47 + 8))(v48, v46);
                    return;
                  }
                }

                ++v35;
                if (v38 == v34)
                {
                  goto LABEL_23;
                }
              }

              __break(1u);
LABEL_29:
              __break(1u);
              break;
            }
          }

          else
          {
            v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v34)
            {
              goto LABEL_14;
            }
          }
        }

LABEL_23:
        a6 = v61 + 1;

        v19 = v57;
        if (a6 == v57)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    sub_23E1FCB9C();
    v23 = sub_23E1FD02C();
    v24 = sub_23E1FE1AC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23DE30000, v23, v24, "WFGenerativeOutputTraversal: Cannot get output uuid from WFChooseFromListAction", v25, 2u);
      MEMORY[0x23EF074C0](v25, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32DB60, &qword_23E224230);
    v26 = v54;
    v27 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_23E222340;
    (*(v26 + 104))(v28 + v27, *MEMORY[0x277CFC0F0], v55);
    sub_23DF20D38();
  }
}

void sub_23DE5B130()
{
  OUTLINED_FUNCTION_90();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C448, &qword_23E224238);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_59();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  v14 = sub_23E1FBBDC();
  OUTLINED_FUNCTION_6_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_59();
  v20 = v18 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v73 = &v60 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v72 = &v60 - v25;
  MEMORY[0x28223BE20](v24);
  v68 = &v60 - v26;
  v76 = v2;
  v74 = v6;
  v75 = v4;
  v27 = OUTLINED_FUNCTION_6_2();
  sub_23DE5A9A0(v27, v28, v29);
  if ((v30 & 1) == 0)
  {
    goto LABEL_29;
  }

  v78 = MEMORY[0x277D84FA0];
  v65 = v0;
  v31 = [v0 parameters];
  sub_23DE38DA8(0, &unk_27E32CD10, 0x277D7C6D8);
  OUTLINED_FUNCTION_20();
  v32 = sub_23E1FDDEC();

  v77 = sub_23DE4D8B0();
  if (!v77)
  {
LABEL_28:

LABEL_29:
    OUTLINED_FUNCTION_76();
    return;
  }

  if (v77 >= 1)
  {
    v62 = v20;
    v63 = v10;
    v71 = v13;
    v33 = 0;
    v34 = v32 & 0xC000000000000001;
    v66 = (v16 + 16);
    v67 = (v16 + 32);
    v69 = (v16 + 8);
    HIDWORD(v60) = *MEMORY[0x277CFC0F8];
    LODWORD(v60) = *MEMORY[0x277CFC0E0];
    v35 = v65;
    v70 = v32 & 0xC000000000000001;
    v61 = (v16 + 104);
    v64 = v32;
    while (1)
    {
      if (v34)
      {
        v36 = MEMORY[0x23EF04DD0](v33, v32);
      }

      else
      {
        v36 = *(v32 + 8 * v33 + 32);
      }

      v37 = v36;
      v38 = [v36 key];
      if (!v38)
      {
        sub_23E1FDC1C();
        v38 = sub_23E1FDBDC();
      }

      v39 = [v35 parameterStateForKey_];

      if (v39)
      {
        ObjectType = swift_getObjectType();
        sub_23DE5B920(v74, v75, v76 & 1, ObjectType);
        if (v41)
        {
          v42 = v71;
          sub_23DE5B934(v71);
          if (__swift_getEnumTagSinglePayload(v42, 1, v14) == 1)
          {
            sub_23DE5CB68(v42, &qword_27E32C448, &qword_23E224238);
            v43 = swift_getObjectType();
            if (v43 == sub_23DE38DA8(0, &qword_27E32C450, 0x277D7C950) && (objc_opt_self(), (v54 = swift_dynamicCastObjCClass()) != 0))
            {
              v55 = [v54 processesIntoContentItems];
              v56 = v73;
              if (v55)
              {
                v57 = v73;
                v58 = v60;
              }

              else
              {
                v57 = v73;
                v58 = HIDWORD(v60);
              }

              (*v61)(v57, v58, v14);
              v59 = OUTLINED_FUNCTION_2_3();
              sub_23DF0342C(v59, v56);
              swift_unknownObjectRelease();

              (*v69)(v42, v14);
            }

            else
            {
              v44 = v63;
              sub_23DE5BA44();
              if (__swift_getEnumTagSinglePayload(v44, 1, v14) == 1)
              {
                swift_unknownObjectRelease();

                sub_23DE5CB68(v44, &qword_27E32C448, &qword_23E224238);
              }

              else
              {
                v50 = v62;
                (*v67)(v62, v44, v14);
                v51 = v73;
                (*v66)(v73, v50, v14);
                v52 = OUTLINED_FUNCTION_2_3();
                sub_23DF0342C(v52, v51);

                swift_unknownObjectRelease();
                v53 = *v69;
                (*v69)(v42, v14);
                v53(v50, v14);
              }

              v35 = v65;
              v34 = v70;
            }
          }

          else
          {
            v45 = v68;
            (*v67)(v68, v42, v14);
            v46 = v73;
            (*v66)(v73, v45, v14);
            v47 = OUTLINED_FUNCTION_2_3();
            sub_23DF0342C(v47, v46);

            swift_unknownObjectRelease();
            v48 = *v69;
            (*v69)(v42, v14);
            v49 = v45;
            v32 = v64;
            v34 = v70;
            v48(v49, v14);
          }

          goto LABEL_18;
        }

        swift_unknownObjectRelease();
      }

LABEL_18:
      if (v77 == ++v33)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
}

uint64_t sub_23DE5B714(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23DE5B790(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = a5 >> 1;
  v8 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = __OFSUB__(v8, result);
  v10 = v8 - result;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_23DE5CAB8(a4, v10 & ~(v10 >> 63), a5 >> 1);
  if (v13)
  {
    v14 = v7;
  }

  else
  {
    v14 = result;
  }

  if (v14 >= a4)
  {
    v15 = sub_23DE5B714(a4, v14, a2, a3, a4, a5);
    swift_unknownObjectRelease();
    return v15;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23DE5B864(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a5 >> 1;
    result = sub_23DE5CAB8(a4, result, a5 >> 1);
    if (v10)
    {
      result = v9;
    }

    if (v9 >= result)
    {
      v11 = sub_23DE5B714(result, v9, a2, a3, a4, a5);
      swift_unknownObjectRelease();
      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_23DE5B920(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    sub_23DE5C458(a1, a2);
  }

  else
  {
    sub_23DE5C134(a1, a2);
  }
}

void sub_23DE5B934(uint64_t a1@<X8>)
{
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v2 = swift_dynamicCastObjCClass();
  if (v2 || (objc_opt_self(), OUTLINED_FUNCTION_20(), (v2 = swift_dynamicCastObjCClass()) != 0))
  {
    v3 = v2;
    swift_unknownObjectRetain();
    v5 = [v3 variable];
    sub_23DE5C664(v5, a1);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = sub_23E1FBBDC();

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
  }
}

void sub_23DE5BA44()
{
  OUTLINED_FUNCTION_90();
  v64 = v0;
  v62 = v1;
  v63 = v2;
  v4 = v3;
  sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  v56 = v6;
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v58 = v8 - v7;
  v9 = sub_23E1FC92C();
  OUTLINED_FUNCTION_6_0();
  v65 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C458, &qword_23E224240);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C460, &qword_23E224248);
  OUTLINED_FUNCTION_6_0();
  v60 = v19;
  v61 = v18;
  MEMORY[0x28223BE20](v18);
  v59 = &v54 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C448, &qword_23E224238);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v54 - v22;
  v24 = sub_23E1FBBDC();
  OUTLINED_FUNCTION_6_0();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15();
  v30 = (v29 - v28);
  sub_23DE5B934(v23);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) != 1)
  {
    v36 = *(v26 + 32);
    v36(v30, v23, v24);
    v36(v4, v30, v24);
    v35 = v4;
LABEL_15:
    v38 = 0;
    goto LABEL_16;
  }

  v31 = v4;
  sub_23DE5CB68(v23, &qword_27E32C448, &qword_23E224238);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v32 = MEMORY[0x277CFC0D0];
    goto LABEL_4;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v37 = MEMORY[0x277CFC108];
LABEL_14:
    (*(v26 + 104))(v4, *v37, v24);
    v35 = v4;
    goto LABEL_15;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v37 = MEMORY[0x277CFC0F0];
    goto LABEL_14;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    v37 = MEMORY[0x277CFC100];
    goto LABEL_14;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v37 = MEMORY[0x277CFC0E8];
    goto LABEL_14;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()) || (objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    v37 = MEMORY[0x277CFC0F8];
    goto LABEL_14;
  }

  sub_23DE5CB04();
  v39 = v61;
  sub_23E1FE20C();
  if (__swift_getEnumTagSinglePayload(v17, 1, v39) == 1)
  {
    sub_23DE5CB68(v17, &qword_27E32C458, &qword_23E224240);
    v32 = MEMORY[0x277CFC0E0];
LABEL_4:
    v33 = *v32;
    v34 = *(v26 + 104);
LABEL_5:
    v34(v31, v33, v24);
    v35 = v31;
    goto LABEL_15;
  }

  v40 = OUTLINED_FUNCTION_6_2();
  v41(v40);
  v42 = sub_23E1FC86C();
  v43 = 0;
  v44 = *(v42 + 16);
  v54 = v65 + 16;
  v55 = v44;
  v45 = (v65 + 8);
  while (v55 != v43)
  {
    if (v43 >= *(v42 + 16))
    {
      __break(1u);
      return;
    }

    (*(v65 + 16))(v14, v42 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v43, v9);
    sub_23E1FC88C();
    ObjectType = swift_getObjectType();
    sub_23DE5B920(v62, v63, v64 & 1, ObjectType);
    v48 = v47;
    swift_unknownObjectRelease();
    if (v48)
    {

      v52 = sub_23E1FC91C();
      (*v45)(v14, v9);
      (*(v60 + 8))(v59, v61);
      v34 = *(v26 + 104);
      v53 = MEMORY[0x277CFC108];
      if ((v52 & 1) == 0)
      {
        v53 = MEMORY[0x277CFC0F8];
      }

      v33 = *v53;
      goto LABEL_5;
    }

    ++v43;
    (*v45)(v14, v9);
  }

  sub_23E1FCB9C();
  v49 = sub_23E1FD02C();
  v50 = sub_23E1FE1BC();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_23DE30000, v49, v50, "Cannot find a row that uses the action output, this should never happen.", v51, 2u);
    MEMORY[0x23EF074C0](v51, -1, -1);
  }

  (*(v56 + 8))(v58, v57);
  (*(v60 + 8))(v59, v61);
  v35 = v31;
  v38 = 1;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v35, v38, 1, v24);
  OUTLINED_FUNCTION_76();
}

void sub_23DE5C134(uint64_t a1, uint64_t a2)
{
  v5 = [v2 containedVariables];
  sub_23DE38DA8(0, &qword_27E32CC50, 0x277D7C9F8);
  v6 = sub_23E1FDDEC();

  v33 = sub_23DE4D8B0();
  if (!v33)
  {
LABEL_27:

    return;
  }

  v7 = 0;
  v34 = v6 & 0xC000000000000001;
  v29 = v6 + 32;
  v30 = v6 & 0xFFFFFFFFFFFFFF8;
  v27 = a1;
  v28 = a2;
  v31 = v6;
  while (1)
  {
    if (v34)
    {
      v8 = MEMORY[0x23EF04DD0](v7, v6);
    }

    else
    {
      if (v7 >= *(v30 + 16))
      {
        goto LABEL_33;
      }

      v8 = *(v29 + 8 * v7);
    }

    v9 = v8;
    if (__OFADD__(v7++, 1))
    {
      break;
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = [v11 outputUUID];
      v14 = sub_23E1FDC1C();
      v16 = v15;

      if (v14 == a1 && v16 == a2)
      {

LABEL_16:
        v32 = v9;
        v19 = [v12 aggrandizements];
        sub_23DE38DA8(0, &qword_27E32C470, 0x277D7CA00);
        v20 = sub_23E1FDDEC();

        v21 = sub_23DE4D8B0();
        for (i = 0; v21 != i; ++i)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x23EF04DD0](i, v20);
          }

          else
          {
            if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v23 = *(v20 + 8 * i + 32);
          }

          v24 = v23;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {

            return;
          }
        }

        v25 = [v12 aggrandizements];

        sub_23E1FDDEC();
        v26 = sub_23DE4D8B0();

        a1 = v27;
        a2 = v28;
        v6 = v31;
        if (!v26)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      v18 = sub_23E1FE75C();

      if (v18)
      {
        goto LABEL_16;
      }
    }

LABEL_26:
    if (v7 == v33)
    {
      goto LABEL_27;
    }
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_23DE5C458(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 containedVariables];
  sub_23DE38DA8(0, &qword_27E32CC50, 0x277D7C9F8);
  v7 = sub_23E1FDDEC();

  v8 = sub_23DE4D8B0();
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {
      goto LABEL_21;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x23EF04DD0](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = [v10 name];
    v13 = sub_23E1FDC1C();
    v15 = v14;

    if (v13 == a1 && v15 == a2)
    {
    }

    else
    {
      v17 = sub_23E1FE75C();

      if ((v17 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v18 = [v11 aggrandizements];
    sub_23DE38DA8(0, &qword_27E32C470, 0x277D7CA00);
    v19 = sub_23E1FDDEC();

    if (v19 >> 62)
    {
      v20 = sub_23E1FE6AC();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v20)
    {

LABEL_21:

      return;
    }

LABEL_17:
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_23DE5C664(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = [a1 aggrandizements];
    sub_23DE38DA8(0, &qword_27E32C470, 0x277D7CA00);
    v4 = sub_23E1FDDEC();

    v5 = sub_23DE4D8B0();
    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {

        goto LABEL_12;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EF04DD0](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        break;
      }
    }

    v13 = v9;

    [v13 coercionItemClass];

    swift_getObjCClassMetadata();
    sub_23DE38DA8(0, &qword_27E32CD40, 0x277CFC388);
    if (swift_dynamicCastMetatype())
    {
      v14 = MEMORY[0x277CFC0D0];
    }

    else
    {
      sub_23DE38DA8(0, &unk_280DAE6E0, 0x277CFC270);
      if (swift_dynamicCastMetatype())
      {
        v14 = MEMORY[0x277CFC108];
      }

      else
      {
        sub_23DE38DA8(0, &unk_280DAE700, 0x277CFC530);
        if (swift_dynamicCastMetatype())
        {
          v14 = MEMORY[0x277CFC0F8];
        }

        else
        {
          sub_23DE38DA8(0, &qword_280DAE710, 0x277CFC480);
          if (swift_dynamicCastMetatype())
          {
            v14 = MEMORY[0x277CFC100];
          }

          else
          {
            sub_23DE38DA8(0, &unk_280DAE720, 0x277CFC368);
            if (!swift_dynamicCastMetatype())
            {
              goto LABEL_12;
            }

            v14 = MEMORY[0x277CFC0E8];
          }
        }
      }
    }

    v15 = *v14;
    v16 = sub_23E1FBBDC();
    (*(*(v16 - 8) + 104))(a2, v15, v16);
    v11 = a2;
    v12 = 0;
    v10 = v16;
  }

  else
  {
LABEL_12:
    v10 = sub_23E1FBBDC();
    v11 = a2;
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
}

uint64_t sub_23DE5C91C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_23E1FDC1C();

  return v4;
}

uint64_t sub_23DE5C97C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_23E1FE6AC();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

unint64_t sub_23DE5C9D4()
{
  result = qword_27E32CD30;
  if (!qword_27E32CD30)
  {
    sub_23E1FBBDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32CD30);
  }

  return result;
}

uint64_t sub_23DE5CA2C(uint64_t a1, int a2)
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

uint64_t sub_23DE5CA6C(uint64_t result, int a2, int a3)
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

uint64_t sub_23DE5CAB8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_23DE5CB04()
{
  result = qword_27E32C468;
  if (!qword_27E32C468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32C460, &qword_23E224248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C468);
  }

  return result;
}

uint64_t sub_23DE5CB68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void OUTLINED_FUNCTION_5_2()
{

  JUMPOUT(0x23EF074C0);
}

id sub_23DE5CC34()
{
  v117 = sub_23E1FD89C();
  v114 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v108 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v8 = *MEMORY[0x277D7CB18];
  v9 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E24EA50;
  v10 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = v8;
  v12 = v10;
  v13 = sub_23E1FDCBC("keychain", 8);
  v15 = v14;
  sub_23E1FDCBC("keychain", 8);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v120 = qword_280DAE278;
  v16 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v17 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v13, v15);
  v19 = v18;
  v20 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v119 = v20;
  *(inited + 80) = v19;
  v21 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v20;
  *(inited + 112) = v21;
  v22 = v21;
  v23 = sub_23E1FDABC();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v23;
  v25 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v24;
  *(inited + 152) = v25;
  v113 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_23E222340;
  v27 = *MEMORY[0x277D7CC30];
  *(v26 + 32) = *MEMORY[0x277D7CC30];
  v28 = v25;
  v29 = v27;
  v30 = sub_23E1FDCBC("Sets the Personal Hotspot password.", 35);
  v32 = v31;
  sub_23E1FDCBC("Sets the Personal Hotspot password.", 35);
  sub_23E1FC14C();
  v33 = [v120 bundleURL];
  v109 = v6;
  v34 = v33;
  v118 = v3;
  sub_23E1FBF9C();

  v35 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v30, v32);
  *(v26 + 64) = v119;
  *(v26 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v37 = sub_23E1FDABC();
  v38 = v113;
  *(inited + 160) = sub_23DF3BE54(v37);
  v39 = *MEMORY[0x277D7CB28];
  *(inited + 184) = v38;
  *(inited + 192) = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 200) = &unk_2850234C8;
  v41 = *MEMORY[0x277D7CB48];
  *(inited + 224) = v40;
  *(inited + 232) = v41;
  *(inited + 240) = 0x6E65657247;
  *(inited + 248) = 0xE500000000000000;
  v42 = *MEMORY[0x277D7CB60];
  v43 = MEMORY[0x277D837D0];
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 272) = v42;
  *(inited + 280) = 0x6C616E6F73726570;
  *(inited + 288) = 0xEF746F7073746F68;
  v44 = *MEMORY[0x277D7CCC0];
  *(inited + 304) = v43;
  *(inited + 312) = v44;
  v45 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v46 = swift_initStackObject();
  v108 = xmmword_23E222350;
  *(v46 + 16) = xmmword_23E222350;
  *(v46 + 32) = 0x656C7069746C754DLL;
  *(v46 + 40) = 0xE800000000000000;
  v47 = MEMORY[0x277D839B0];
  *(v46 + 48) = 0;
  *(v46 + 72) = v47;
  strcpy((v46 + 80), "ParameterKey");
  *(v46 + 93) = 0;
  *(v46 + 94) = -5120;
  *(v46 + 96) = 0x7475706E494657;
  *(v46 + 104) = 0xE700000000000000;
  *(v46 + 120) = v45;
  *(v46 + 128) = 0x6465726975716552;
  *(v46 + 136) = 0xE800000000000000;
  *(v46 + 144) = 1;
  *(v46 + 168) = v47;
  *(v46 + 176) = 0x7365707954;
  *(v46 + 216) = v40;
  *(v46 + 184) = 0xE500000000000000;
  *(v46 + 192) = &unk_285023508;
  v48 = v39;
  v49 = v41;
  v50 = v42;
  v51 = v44;
  v52 = sub_23E1FDABC();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 320) = v52;
  v54 = *MEMORY[0x277D7CB90];
  *(inited + 344) = v53;
  *(inited + 352) = v54;
  v55 = v54;
  v56 = sub_23E1FDCBC("Set Hotspot Password (Action Name)", 34);
  v58 = v57;
  sub_23E1FDCBC("Set Hotspot Password", 20);
  sub_23E1FC14C();
  v59 = v120;
  v60 = [v120 bundleURL];
  sub_23E1FBF9C();

  v61 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v56, v58);
  *(inited + 360) = v62;
  v63 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v119;
  *(inited + 392) = v63;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v111 = swift_allocObject();
  v112 = xmmword_23E2235B0;
  *(v111 + 16) = xmmword_23E2235B0;
  v110 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v64 = swift_initStackObject();
  *(v64 + 16) = v108;
  v65 = *MEMORY[0x277D7CDF8];
  *(v64 + 32) = *MEMORY[0x277D7CDF8];
  *(v64 + 40) = 0xD000000000000014;
  *(v64 + 48) = 0x800000023E24EAF0;
  v66 = *MEMORY[0x277D7CE70];
  v67 = MEMORY[0x277D837D0];
  *(v64 + 64) = MEMORY[0x277D837D0];
  *(v64 + 72) = v66;
  *(v64 + 80) = 0x7475706E494657;
  *(v64 + 88) = 0xE700000000000000;
  v68 = *MEMORY[0x277D7CE80];
  *(v64 + 104) = v67;
  *(v64 + 112) = v68;
  v69 = v63;
  v70 = v65;
  v71 = v66;
  v72 = v68;
  *&v108 = sub_23E1FDCBC("Password (WFInput)", 18);
  v74 = v73;
  sub_23E1FDCBC("Password", 8);
  sub_23E1FC14C();
  v75 = v59;
  v76 = [v59 bundleURL];
  sub_23E1FBF9C();

  v77 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v108, v74);
  *(v64 + 120) = v78;
  v79 = *MEMORY[0x277D7CEA8];
  v80 = v119;
  *(v64 + 144) = v119;
  *(v64 + 152) = v79;
  v81 = v79;
  *&v108 = sub_23E1FDCBC("hello_world (WFInput)", 21);
  v83 = v82;
  sub_23E1FDCBC("hello_world", 11);
  sub_23E1FC14C();
  v84 = [v75 bundleURL];
  sub_23E1FBF9C();

  v85 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v108, v83);
  *(v64 + 184) = v80;
  *(v64 + 160) = v86;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v87 = sub_23E1FDABC();
  v88 = sub_23DF3BE9C(v87);
  v89 = v111;
  *(v111 + 32) = v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 400) = v89;
  v91 = *MEMORY[0x277D7CB98];
  *(inited + 424) = v90;
  *(inited + 432) = v91;
  v92 = v91;
  v93 = sub_23E1FDCBC("Set Personal Hotspot password to ${WFInput} (Parameter Summary)", 63);
  v95 = v94;
  sub_23E1FDCBC("Set Personal Hotspot password to ${WFInput}", 43);
  sub_23E1FC14C();
  v96 = [v120 bundleURL];
  sub_23E1FBF9C();

  v97 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v93, v95);
  v99 = v98;
  v100 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v101 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 440) = v100;
  v102 = *MEMORY[0x277D7CF20];
  *(inited + 464) = v101;
  *(inited + 472) = v102;
  v103 = swift_allocObject();
  *(v103 + 16) = v112;
  (*(v114 + 104))(v116, *MEMORY[0x277D732F0], v117);
  v104 = objc_allocWithZone(sub_23E1FC85C());
  v105 = v102;
  *(v103 + 32) = sub_23E1FC84C();
  *(inited + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C480, &qword_23E224258);
  *(inited + 480) = v103;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v106 = sub_23E1FDABC();
  return sub_23DF3BF9C(v106);
}

uint64_t sub_23DE5D888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t GetCurrentWeatherConditionsAction.provider.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR___WFGetCurrentWeatherConditionsAction____lazy_storage___provider;
  swift_beginAccess();
  sub_23DE61230(v1 + v3, &v7, &qword_27E32C498, &qword_23E224260);
  if (v8)
  {
    return sub_23DE36C8C(&v7, a1);
  }

  sub_23DE5CB68(&v7, &qword_27E32C498, &qword_23E224260);
  v5 = type metadata accessor for WFCurrentWeatherService();
  v6 = swift_allocObject();
  sub_23E1FC52C();
  *(v6 + 16) = sub_23E1FC4FC();
  a1[3] = v5;
  a1[4] = &off_285026900;
  *a1 = v6;
  sub_23DE5DA0C(a1, &v7);
  swift_beginAccess();
  sub_23DE5DA70(&v7, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_23DE5DA0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23DE5DA70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C498, &qword_23E224260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t GetCurrentWeatherConditionsAction.provider.setter(__int128 *a1)
{
  sub_23DE36C8C(a1, v4);
  v2 = OBJC_IVAR___WFGetCurrentWeatherConditionsAction____lazy_storage___provider;
  swift_beginAccess();
  sub_23DE5DA70(v4, v1 + v2);
  return swift_endAccess();
}

void (*GetCurrentWeatherConditionsAction.provider.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  GetCurrentWeatherConditionsAction.provider.getter(v3);
  return sub_23DE5DBDC;
}

void sub_23DE5DBDC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_23DE5DA0C(*a1, v2 + 40);
    GetCurrentWeatherConditionsAction.provider.setter((v2 + 40));
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    GetCurrentWeatherConditionsAction.provider.setter(*a1);
  }

  free(v2);
}

uint64_t GetCurrentWeatherConditionsAction.run(withInput:location:locationDisclosureLevel:)()
{
  OUTLINED_FUNCTION_23();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  sub_23E1FDECC();
  v1[10] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();
  v1[11] = v5;
  v1[12] = v4;

  return MEMORY[0x2822009F8](sub_23DE5DCDC, v5, v4);
}

uint64_t sub_23DE5DCDC()
{
  GetCurrentWeatherConditionsAction.provider.getter(v0 + 2);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v6 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_23DE5DE14;
  v4 = v0[7];

  return v6(v4, v1, v2);
}

uint64_t sub_23DE5DE14()
{
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v6 = v5;
  *(v8 + 112) = v7;
  *(v8 + 120) = v0;

  v9 = *(v2 + 96);
  v10 = *(v2 + 88);
  if (v0)
  {
    v11 = sub_23DE5E0CC;
  }

  else
  {
    v11 = sub_23DE5DF50;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

id sub_23DE5DF50()
{
  v14 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  v13[3] = sub_23DE38DA8(0, &unk_27E32C630, off_278C01900);
  v13[0] = v1;
  sub_23DE38DA8(0, &unk_27E32C4A0, 0x277CFC238);
  v3 = sub_23E1FDC1C();
  v5 = v4;
  v6 = v1;
  v7 = sub_23DE5E134(v3, v5);
  v8 = sub_23DE5E198(v13, v7, v2);
  if (v8)
  {
    v9 = v8;
    result = [*(v0 + 72) output];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v11 = result;

    [v11 addItem_];
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23DE5E0CC()
{
  OUTLINED_FUNCTION_23();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

id sub_23DE5E134(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E1FDBDC();

  v3 = [swift_getObjCClassFromMetadata() locationWithSystemAppBundleIdentifier_];

  return v3;
}

id sub_23DE5E198(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v6 = sub_23E1FE73C();
  v7 = [swift_getObjCClassFromMetadata() itemWithObject:v6 origin:a2 disclosureLevel:a3];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

id GetCurrentWeatherConditionsAction.__allocating_init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v9 = sub_23E1FDA9C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithIdentifier:v8 definition:a3 serializedParameters:v9];

  return v10;
}

id GetCurrentWeatherConditionsAction.init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_2_4(OBJC_IVAR___WFGetCurrentWeatherConditionsAction____lazy_storage___provider);
  v8 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v9 = sub_23E1FDA9C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithIdentifier_definition_serializedParameters_, v8, a3, v9);

  if (v10)
  {
  }

  return v10;
}

id GetCurrentWeatherConditionsAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GetCurrentWeatherConditionsAction.init()()
{
  swift_getObjectType();
  v1 = OUTLINED_FUNCTION_2_4(OBJC_IVAR___WFGetCurrentWeatherConditionsAction____lazy_storage___provider);
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init, v1);
}

id GetCurrentWeatherConditionsAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of WFCurrentWeatherProvider.fetchWeather(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23DE5E6BC;

  return v9(a1, a2, a3);
}

uint64_t sub_23DE5E6BC()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_23DE5E808(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4B0, &qword_23E2246D0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4B8, &unk_23E224320);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4C0, &unk_23E2246E0);
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C690, &unk_23E224330);
  v2[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4D0, &unk_23E224680);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v7 = sub_23E1FC4AC();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE5EABC, 0, 0);
}

uint64_t sub_23DE5EABC()
{
  sub_23E1FC4EC();
  sub_23E1FC4CC();
  sub_23E1FC4BC();
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_23DE5EBBC;
  v2 = v0[22];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[2];

  return MEMORY[0x282135620](v2, v3, v5, v9, v6, v7, v8, v4);
}

uint64_t sub_23DE5EBBC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v19 = v5[12];
  v6 = v5[11];
  v18 = v5[10];
  v7 = v5[9];
  v8 = v5[8];
  v9 = v5[7];
  v10 = v5[6];
  v11 = v5[5];
  v12 = v5[4];
  v13 = *v2;
  OUTLINED_FUNCTION_0_3();
  *v14 = v13;
  *(v15 + 192) = v1;

  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v19, v18);
  if (v1)
  {
    v16 = sub_23DE5EFA4;
  }

  else
  {
    v16 = sub_23DE5EDEC;
  }

  return MEMORY[0x2822009F8](v16, 0, 0);
}

uint64_t sub_23DE5EDEC()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v12 = v0[14];
  sub_23DE38DA8(0, &unk_27E32C630, off_278C01900);
  (*(v4 + 16))(v1, v2, v3);
  (*(v7 + 16))(v5, v6, v8);
  v9 = sub_23DE5F06C(v1, v5);
  v13 = sub_23DEBBBE0(v12);

  sub_23DE5CB68(v12, &qword_27E32C690, &unk_23E224330);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v2, v3);

  v10 = v0[1];

  return v10(v13);
}

uint64_t sub_23DE5EFA4()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_23DE5F06C(uint64_t a1, uint64_t a2)
{
  v256 = a2;
  v243 = sub_23E1FC6AC();
  v242 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v240 = v203 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v241 = v203 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v239 = v203 - v7;
  v238 = sub_23E1FC66C();
  v237 = *(v238 - 8);
  MEMORY[0x28223BE20](v238);
  v236 = v203 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4E0, &unk_23E224690);
  v234 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v233 = v203 - v9;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4E8, &qword_23E224350);
  v229 = *(v231 - 8);
  v10 = MEMORY[0x28223BE20](v231);
  v228 = v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v223 = v203 - v12;
  v232 = sub_23E1FC64C();
  v230 = *(v232 - 8);
  v13 = MEMORY[0x28223BE20](v232);
  v221 = v203 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v226 = v203 - v15;
  v217 = sub_23E1FC5EC();
  v216 = *(v217 - 8);
  v16 = MEMORY[0x28223BE20](v217);
  v215 = v203 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v213 = v203 - v18;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4F0, &qword_23E224358);
  v211 = *(v212 - 8);
  v19 = MEMORY[0x28223BE20](v212);
  v209 = v203 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v207 = v203 - v21;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C650, &qword_23E224360);
  v254 = *(v248 - 8);
  v22 = MEMORY[0x28223BE20](v248);
  v247 = v203 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v246 = v203 - v24;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C500, &qword_23E224368);
  v252 = *(v258 - 1);
  v25 = MEMORY[0x28223BE20](v258);
  v253 = v203 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v245 = v203 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF70, &qword_23E224370);
  v29 = *(v28 - 1);
  v261 = v28;
  v262 = v29;
  v30 = MEMORY[0x28223BE20](v28);
  v208 = v203 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v205 = v203 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = v203 - v34;
  v260 = sub_23E1FC54C();
  v36 = *(v260 - 1);
  MEMORY[0x28223BE20](v260);
  v38 = v203 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_23E1FC08C();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = v203 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C510, &qword_23E224378);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v222 = v203 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v219 = v203 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v206 = v203 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v214 = v203 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v210 = v203 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v218 = v203 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v58 = v203 - v57;
  MEMORY[0x28223BE20](v56);
  v264 = a1;
  v255 = v203 - v59;
  sub_23DE44FD4(sub_23DE61210, v263, v203 - v59);
  sub_23E1FC43C();
  v227 = sub_23E1FC02C();
  v60 = *(v40 + 8);
  v244 = v39;
  v61 = v245;
  v203[1] = v40 + 8;
  v203[0] = v60;
  v60(v42, v39);
  sub_23E1FC48C();
  v225 = sub_23E1FC53C();
  v62 = v38;
  v63 = a1;
  v64 = v252;
  (*(v36 + 8))(v62, v260);
  sub_23E1FC3FC();
  v65 = v258;
  sub_23E1FBDCC();
  v68 = *(v64 + 8);
  v67 = v64 + 8;
  v66 = v68;
  v68(v61, v65);
  v69 = v253;
  v259 = v63;
  sub_23E1FC3FC();
  sub_23E1FBDAC();
  v68(v69, v65);
  v260 = sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
  sub_23E1FBDBC();
  v70 = v261;
  v220 = sub_23E1FBD8C();
  v71 = v262[1];
  v249 = v35;
  ++v262;
  v257 = v71;
  v71(v35, v70);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4D0, &unk_23E224680);
  v73 = sub_23E1FC67C();
  sub_23DF19528(v73, v58);

  v74 = sub_23E1FC30C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 1, v74);
  v250 = v68;
  if (EnumTagSinglePayload == 1)
  {
    v76 = v61;
    v77 = v67;
    sub_23DE5CB68(v58, &unk_27E32C510, &qword_23E224378);
  }

  else
  {
    sub_23E1FC29C();
    (*(*(v74 - 1) + 8))(v58, v74);
    v78 = v258;
    sub_23E1FBDCC();
    v76 = v61;
    v77 = v67;
    v66(v61, v78);
  }

  v79 = sub_23E1FC67C();
  v80 = v218;
  sub_23DF19528(v79, v218);

  if (__swift_getEnumTagSinglePayload(v80, 1, v74) != 1)
  {
    sub_23E1FC29C();
    (*(*(v74 - 1) + 8))(v80, v74);
    v83 = v258;
    v81 = sub_23E1FBDAC();
    v250(v76, v83);
    if (EnumTagSinglePayload != 1)
    {
      if (v81)
      {
        v84 = v205;
        sub_23E1FBDBC();
        v85 = v261;
        v82 = sub_23E1FBD8C();
        v257(v84, v85);
        goto LABEL_12;
      }

LABEL_9:
      v82 = 0;
      goto LABEL_12;
    }

LABEL_8:

    goto LABEL_9;
  }

  sub_23DE5CB68(v80, &unk_27E32C510, &qword_23E224378);
  v81 = 0;
  v82 = 0;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_8;
  }

LABEL_12:
  v86 = sub_23E1FC67C();
  v87 = v210;
  sub_23DF19528(v86, v210);

  v88 = __swift_getEnumTagSinglePayload(v87, 1, v74);
  v89 = v250;
  if (v88 == 1)
  {
    sub_23DE5CB68(v87, &unk_27E32C510, &qword_23E224378);
  }

  else
  {
    sub_23E1FC27C();
    (*(*(v74 - 1) + 8))(v87, v74);
    v90 = v258;
    sub_23E1FBDCC();
    v89(v76, v90);
  }

  v91 = sub_23E1FC67C();
  v92 = v214;
  sub_23DF19528(v91, v214);

  v93 = __swift_getEnumTagSinglePayload(v92, 1, v74);
  v251 = v74;
  v224 = v72;
  v218 = v82;
  if (v93 == 1)
  {
    v94 = v77;
    sub_23DE5CB68(v92, &unk_27E32C510, &qword_23E224378);
    v95 = 0;
    v96 = 0;
    if (v88 != 1)
    {
      goto LABEL_23;
    }

LABEL_19:

    v96 = 0;
    goto LABEL_23;
  }

  sub_23E1FC27C();
  (*(*(v74 - 1) + 8))(v92, v74);
  v97 = v258;
  v95 = sub_23E1FBDAC();
  v89(v76, v97);
  v94 = v77;
  if (v88 == 1)
  {
    goto LABEL_19;
  }

  if (v95)
  {
    v98 = v208;
    sub_23E1FBDBC();
    v99 = v261;
    v96 = sub_23E1FBD8C();
    v257(v98, v99);
  }

  else
  {
    v96 = 0;
  }

LABEL_23:
  v214 = v96;
  sub_23E1FC41C();
  v100 = v76;
  v101 = v258;
  sub_23E1FBDCC();
  v89(v100, v101);
  v252 = v94;
  v102 = v253;
  sub_23E1FC41C();
  sub_23E1FBDAC();
  v89(v102, v101);
  v103 = v249;
  sub_23E1FBDBC();
  v104 = v261;
  v210 = sub_23E1FBD8C();
  v105 = v257;
  v257(v103, v104);
  v106 = v105;
  sub_23E1FC42C();
  v208 = sub_23E1FDBDC();

  v107 = v246;
  sub_23E1FC3EC();
  v108 = v248;
  sub_23E1FBDCC();
  v109 = v254 + 8;
  v110 = *(v254 + 1);
  v111 = v107;
  v112 = v108;
  v110(v111, v108);
  v204 = v110;
  v254 = v109;
  v113 = v247;
  sub_23E1FC3EC();
  sub_23E1FBDAC();
  v110(v113, v112);
  sub_23E1FBDBC();
  v205 = sub_23E1FBD8C();
  v114 = v104;
  v115 = v106;
  v106(v103, v114);
  v116 = v245;
  sub_23E1FC46C();
  sub_23E1FBDCC();
  v117 = v250;
  v250(v116, v101);
  v118 = v253;
  sub_23E1FC46C();
  sub_23E1FBDAC();
  v117(v118, v101);
  sub_23E1FBDBC();
  v119 = v261;
  v252 = sub_23E1FBD8C();
  v106(v103, v119);
  sub_23E1FC47C();
  v258 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v121 = v207;
  sub_23E1FC49C();
  v122 = v212;
  sub_23E1FBDCC();
  v123 = *(v211 + 8);
  v123(v121, v122);
  v124 = v209;
  sub_23E1FC49C();
  sub_23E1FBDAC();
  v123(v124, v122);
  sub_23E1FBDBC();
  v125 = v261;
  v253 = sub_23E1FBD8C();
  v126 = v115(v103, v125);
  v127 = v213;
  MEMORY[0x23EF02BF0](v126);
  v128 = v246;
  sub_23E1FC5DC();
  v129 = *(v216 + 8);
  v130 = v217;
  v129(v127, v217);
  v131 = v248;
  sub_23E1FBDCC();
  v132 = v204;
  v133 = (v204)(v128, v131);
  v134 = v215;
  MEMORY[0x23EF02BF0](v133);
  v135 = v247;
  sub_23E1FC5DC();
  v129(v134, v130);
  sub_23E1FBDAC();
  v132(v135, v131);
  sub_23E1FBDBC();
  v136 = v261;
  v137 = sub_23E1FBD8C();
  v257(v103, v136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C520, &qword_23E224380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v139 = v206;
  sub_23DE61230(v255, v206, &unk_27E32C510, &qword_23E224378);
  v140 = v251;
  v141 = __swift_getEnumTagSinglePayload(v139, 1, v251);
  v254 = v137;
  if (v141 == 1)
  {
    sub_23DE5CB68(v139, &unk_27E32C510, &qword_23E224378);
    *(inited + 32) = 0;
    *(inited + 40) = 1;

    v142 = MEMORY[0x277D84F90];
    v143 = v223;
    v144 = 0x277CCA000;
  }

  else
  {
    sub_23E1FC2AC();
    v146 = v145;
    (*(*(v140 - 1) + 8))(v139, v140);
    *(inited + 32) = v146;
    *(inited + 40) = 0;

    sub_23DE4CE40(0, 1, 1, MEMORY[0x277D84F90]);
    v142 = v147;
    v149 = *(v147 + 16);
    v148 = *(v147 + 24);
    v143 = v223;
    if (v149 >= v148 >> 1)
    {
      sub_23DE4CE40(v148 > 1, v149 + 1, 1, v147);
      v142 = v198;
    }

    v144 = 0x277CCA000uLL;
    *(v142 + 16) = v149 + 1;
    *(v142 + 8 * v149 + 32) = v146;
  }

  v150 = *(v142 + 16);
  if (v150)
  {
    v265 = MEMORY[0x277D84F90];
    sub_23E1FE63C();
    v151 = 32;
    do
    {
      [objc_allocWithZone(*(v144 + 2992)) initWithDouble_];
      sub_23E1FE61C();
      sub_23E1FE64C();
      sub_23E1FE65C();
      sub_23E1FE62C();
      v151 += 8;
      --v150;
    }

    while (v150);

    v152 = v265;
  }

  else
  {

    v152 = MEMORY[0x277D84F90];
  }

  if (sub_23DE4D8B0())
  {
    sub_23DE59014();
    if ((v152 & 0xC000000000000001) != 0)
    {
      v153 = MEMORY[0x23EF04DD0](0, v152);
    }

    else
    {
      v153 = *(v152 + 32);
    }

    v250 = v153;
  }

  else
  {
    v250 = 0;
  }

  v154 = v226;
  sub_23E1FC44C();
  sub_23E1FC62C();
  v155 = *(v230 + 8);
  v156 = v232;
  v155(v154, v232);
  v157 = v231;
  sub_23E1FBDCC();
  v158 = *(v229 + 8);
  v158(v143, v157);
  v159 = v221;
  sub_23E1FC44C();
  v160 = v228;
  sub_23E1FC62C();
  v155(v159, v156);
  sub_23E1FBDAC();
  v158(v160, v157);
  v161 = v249;
  sub_23E1FBDBC();
  v162 = v261;
  v260 = sub_23E1FBD8C();
  v257(v161, v162);
  sub_23E1FC44C();
  v163 = v233;
  sub_23E1FC63C();
  v155(v154, v156);
  v164 = v235;
  sub_23E1FBDCC();
  v166 = v165;
  (*(v234 + 8))(v163, v164);
  v167 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v168 = v236;
  sub_23E1FC45C();
  v169 = sub_23E1FC65C();
  (*(v237 + 8))(v168, v238);
  v170 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v171 = v255;
  v172 = v219;
  sub_23DE61230(v255, v219, &unk_27E32C510, &qword_23E224378);
  v173 = v251;
  if (__swift_getEnumTagSinglePayload(v172, 1, v251) == 1)
  {
    sub_23DE5CB68(v172, &unk_27E32C510, &qword_23E224378);
    v174 = v244;
    __swift_storeEnumTagSinglePayload(v239, 1, 1, v244);
    v175 = 0;
    v176 = v241;
    v177 = v222;
  }

  else
  {
    v178 = v240;
    sub_23E1FC2BC();
    (*(*(v173 - 1) + 8))(v172, v173);
    v179 = v239;
    sub_23E1FC69C();
    (*(v242 + 8))(v178, v243);
    v174 = v244;
    v180 = __swift_getEnumTagSinglePayload(v179, 1, v244);
    v176 = v241;
    v177 = v222;
    if (v180 == 1)
    {
      v175 = 0;
    }

    else
    {
      v181 = sub_23E1FC02C();
      v174 = v244;
      v175 = v181;
      (v203[0])(v179, v244);
    }

    v173 = v251;
  }

  sub_23DE61230(v171, v177, &unk_27E32C510, &qword_23E224378);
  if (__swift_getEnumTagSinglePayload(v177, 1, v173) == 1)
  {
    sub_23DE5CB68(v177, &unk_27E32C510, &qword_23E224378);
    __swift_storeEnumTagSinglePayload(v176, 1, 1, v174);
  }

  else
  {
    v182 = v240;
    sub_23E1FC2BC();
    (*(*(v173 - 1) + 8))(v177, v173);
    sub_23E1FC68C();
    v183 = v244;
    (*(v242 + 8))(v182, v243);
    if (__swift_getEnumTagSinglePayload(v176, 1, v183) != 1)
    {
      v184 = sub_23E1FC02C();
      (v203[0])(v176, v183);
      goto LABEL_49;
    }
  }

  v184 = 0;
LABEL_49:
  v185 = v227;
  v186 = v225;
  v187 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v261 = v184;
  v202 = v184;
  v257 = v175;
  v200 = v170;
  v201 = v175;
  v199 = v167;
  v188 = v250;
  v189 = v252;
  v190 = v205;
  v249 = v167;
  v191 = v208;
  v251 = v170;
  v192 = v210;
  v193 = v220;
  v194 = v218;
  v195 = v214;
  v262 = [v187 initWithDate:v185 location:v186 userTemperatureUnitString:0 temperature:v220 highTemperature:v218 lowTemperature:v214 feelsLikeTemperature:v210 localizedConditionString:v208 visibility:v205 dewpoint:v252 humidity:v258 pressure:v253 precipitationAmount:v254 precipitationChance:v250 windSpeed:v260 windDirection:v199 uvIndex:v200 sunriseTime:v201 sunsetTime:v202 localizedAirQualityIndex:0 localizedAirQualityCategory:0 pollutants:0];

  (*(*(v224 - 8) + 8))(v256);
  sub_23DE5CB68(v255, &unk_27E32C510, &qword_23E224378);
  v196 = sub_23E1FC4AC();
  (*(*(v196 - 8) + 8))(v259, v196);
  return v262;
}

uint64_t sub_23DE60E70()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_23DE60EA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE60F40;

  return sub_23DE5E808(a1);
}

uint64_t sub_23DE60F40()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_23DE61038()
{
  v0 = sub_23E1FC08C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = sub_23E1FC23C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E1FC20C();
  sub_23E1FC2CC();
  sub_23E1FC43C();
  v11 = sub_23E1FC1FC();
  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v6, v0);
  (*(v8 + 8))(v10, v7);
  return v11 & 1;
}

uint64_t sub_23DE61230(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double OUTLINED_FUNCTION_2_4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  return result;
}

uint64_t sub_23DE612B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E1FDC1C();
  v4 = v3;
  v5 = sub_23E1FDC1C();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_4(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_23DE61330(unsigned __int8 a1, uint64_t a2)
{
  v2 = 2003789939;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1701079400;
    }

    else
    {
      v4 = 0x656C67676F74;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 2003789939;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1701079400;
    }

    else
    {
      v2 = 0x656C67676F74;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_4(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_23DE61404(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6E776F6E6B6E55;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6E776F6E6B6E55;
  switch(v4)
  {
    case 1:
      v5 = 0x616E6F6974617453;
      v3 = 0xEA00000000007972;
      break;
    case 2:
      v6 = 1802264919;
      goto LABEL_6;
    case 3:
      v6 = 1852732754;
      goto LABEL_6;
    case 4:
      v6 = 1818458435;
LABEL_6:
      v5 = v6 | 0x676E6900000000;
      break;
    case 5:
      v3 = 0x800000023E24DB00;
      v5 = 0xD000000000000017;
      break;
    case 6:
      v5 = 0xD000000000000013;
      v3 = 0x800000023E24DB20;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v5 = 0x676E69766F4DLL;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x616E6F6974617453;
      v7 = 0xEA00000000007972;
      break;
    case 2:
      v8 = 1802264919;
      goto LABEL_15;
    case 3:
      v8 = 1852732754;
      goto LABEL_15;
    case 4:
      v8 = 1818458435;
LABEL_15:
      v2 = v8 | 0x676E6900000000;
      break;
    case 5:
      v7 = 0x800000023E24DB00;
      v2 = 0xD000000000000017;
      break;
    case 6:
      v2 = 0xD000000000000013;
      v7 = 0x800000023E24DB20;
      break;
    case 7:
      v7 = 0xE600000000000000;
      v2 = 0x676E69766F4DLL;
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
    v10 = OUTLINED_FUNCTION_0_4(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_23DE615E4(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 0x6563696F76;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1635017060;
  }

  else
  {
    v5 = 0x6563696F76;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_4(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_23DE6166C(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x74726174736552;
  }

  else
  {
    v3 = 0x776F442074756853;
  }

  if (v2)
  {
    v4 = 0xE90000000000006ELL;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x74726174736552;
  }

  else
  {
    v5 = 0x776F442074756853;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE90000000000006ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_4(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_23DE61704(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656C67676F74;
  }

  else
  {
    v3 = 1852994932;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x656C67676F74;
  }

  else
  {
    v5 = 1852994932;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_4(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_23DE6178C(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1886352499;
  }

  else
  {
    v3 = 0x7472617473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1886352499;
  }

  else
  {
    v5 = 0x7472617473;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_4(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_23DE618A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_23DE62210(a4, a5, a6);
  sub_23E1FDDAC();
  sub_23E1FDDAC();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_23E1FE75C();
  }

  return v10 & 1;
}

uint64_t sub_23DE61A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  sub_23E1FE29C();
  sub_23DE62210(&unk_280DAE350, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_23DE61B00;

  return MEMORY[0x282200308](a1);
}

uint64_t sub_23DE61B00()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_23E1FDE6C();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v7 = sub_23DE61C9C;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_23E1FDE6C();
      v5 = v6;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v7 = sub_23DE61C84;
  }

  return MEMORY[0x2822009F8](v7, v3, v5);
}

uint64_t sub_23DE61C9C()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C380, &qword_23E224180);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t WFActionRegistry.fillAndWait()()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C530, &qword_23E224390);
  v1[4] = swift_task_alloc();
  v2 = sub_23E1FE29C();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE61E3C, 0, 0);
}

uint64_t sub_23DE61E3C()
{
  if ([*(v0 + 24) state] == 2)
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = [objc_opt_self() defaultCenter];
    *(v0 + 64) = sub_23E1FE2AC();

    [v3 fill];
    sub_23E1FB7CC();
    sub_23E1FE28C();
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = sub_23DE61FD4;
    v6 = *(v0 + 32);

    return (sub_23DE61A0C)(v6, 0, 0, v0 + 16);
  }
}

uint64_t sub_23DE61FD4()
{

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_23DE620E4, 0, 0);
  }

  return result;
}

uint64_t sub_23DE620E4()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];

  (*(v3 + 8))(v1, v2);
  v5 = sub_23E1FBDDC();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
  {
    sub_23DE621A8(v0[4]);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_23DE621A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C530, &qword_23E224390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DE62210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_23E1FE75C();
}

uint64_t sub_23DE622E4()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SetCellularDataAction();
  v1 = objc_msgSendSuper2(&v7, sel_disabledOnPlatforms);
  type metadata accessor for WFExecutionPlatform(0);
  v2 = sub_23E1FDDEC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C560, &unk_23E2290D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v4 = *MEMORY[0x277D7CC80];
  *(inited + 32) = *MEMORY[0x277D7CC80];
  v5 = v4;
  sub_23DE571A8(inited);
  return v2;
}

id sub_23DE6239C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v16 = sub_23E1FDA9C();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v8;
  v19.super_class = type metadata accessor for SetCellularDataAction();
  v17 = objc_msgSendSuper2(&v19, sel_initWithIdentifier_definition_serializedParameters_schema_intent_resolvedIntentDescriptor_stringLocalizer_, v15, a3, v16, a5, a6, a7, a8);

  if (v17)
  {
  }

  return v17;
}

id sub_23DE62598(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetCellularDataAction();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23DE625F0(uint64_t *a1)
{
  v2 = *(sub_23E1FBD5C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23DF21860(v3, v4, v5, v6, v7, v8, v9, v10);
    v3 = v11;
  }

  v12 = *(v3 + 16);
  v14[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v14[1] = v12;
  result = sub_23DE64114(v14);
  *a1 = v3;
  return result;
}

uint64_t sub_23DE62698()
{
  v0 = sub_23E1FBD5C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v25 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  result = sub_23E1FBD4C();
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v27 = v1 + 16;
  v24 = (v1 + 32);
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v9 == v8)
    {

      qword_27E33E128 = v26;
      return result;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v11 = *(v1 + 72);
    (*(v1 + 16))(v5, v7 + v10 + v11 * v8, v0);
    if (sub_23E1FBCCC())
    {
      v23 = *v24;
      v23(v25, v5, v0);
      v12 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23DE63E6C(0, *(v12 + 16) + 1, 1, v14, v15, v16, v17);
        v12 = v28;
      }

      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v26 = v19 + 1;
        v22 = v19;
        sub_23DE63E6C(v18 > 1, v19 + 1, 1, v14, v15, v16, v17);
        v20 = v26;
        v19 = v22;
        v12 = v28;
      }

      ++v8;
      *(v12 + 16) = v20;
      v26 = v12;
      result = (v23)(v12 + v10 + v19 * v11, v25, v0);
    }

    else
    {
      result = (*(v1 + 8))(v5, v0);
      ++v8;
    }
  }

  __break(1u);
  return result;
}

void sub_23DE628F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_23DE6296C(v1);
}

void sub_23DE6296C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_23DE629C8(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___WFSpotlightSearchResultTypePickerParameter_action;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_23DE62A4C;
}

void sub_23DE62A4C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_23DE62AC8(void *a1)
{
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFSpotlightSearchResultTypePickerParameter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithDefinition_, a1);
  [v3 setDataSource_];

  return v3;
}

id sub_23DE62B70(uint64_t a1)
{
  v1 = sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = sub_23E1FBD5C();
  OUTLINED_FUNCTION_6_0();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v17 = sub_23E1FC9CC();
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v19 = [v17 value];
  if (!v19 || (v20 = v19, v39 = 0, v40 = 0, sub_23E1FDC0C(), v20, !v40))
  {

    return 0;
  }

  sub_23E1FB7BC();
  sub_23E1FBD2C();
  (*(v10 + 16))(v14, v16, v8);
  v21 = (*(v10 + 88))(v14, v8);
  if (v21 == *MEMORY[0x277CFC170])
  {

    sub_23E1FCB9C();
    v22 = sub_23E1FD02C();
    v23 = sub_23E1FE1CC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_23DE30000, v22, v23, "WFSpotlightSearchResultTypePickerParameter: Tried to get accessoryImage for deprecated 'any' type", v24, 2u);
      MEMORY[0x23EF074C0](v24, -1, -1);
    }

    (*(v3 + 8))(v7, v1);
    (*(v10 + 8))(v16, v8);
    return 0;
  }

  if (v21 == *MEMORY[0x277CFC1B0])
  {

    v27 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v28 = 0x7261646E656C6163;
LABEL_13:
    v29 = 0xE800000000000000;
LABEL_16:
    v25 = sub_23DE63D1C(v28, v29, 0, 2);

    (*(v10 + 8))(v16, v8);
    return v25;
  }

  if (v21 == *MEMORY[0x277CFC198])
  {

    v30 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v29 = 0x800000023E24ECF0;
    v28 = 0xD000000000000012;
    goto LABEL_16;
  }

  if (v21 == *MEMORY[0x277CFC178])
  {

    v31 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v28 = 0x746E656D75636F64;
    goto LABEL_13;
  }

  if (v21 == *MEMORY[0x277CFC180])
  {

    v32 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v28 = 0x65706F6C65766E65;
    goto LABEL_13;
  }

  if (v21 == *MEMORY[0x277CFC1A0])
  {

    v33 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v28 = 0x6567617373656DLL;
    v29 = 0xE700000000000000;
    goto LABEL_16;
  }

  if (v21 == *MEMORY[0x277CFC188])
  {

    v34 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v28 = 0x7865742E65746F6ELL;
LABEL_25:
    v29 = 0xE900000000000074;
    goto LABEL_16;
  }

  if (v21 == *MEMORY[0x277CFC190])
  {

    v35 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v28 = 0x6F746F6870;
    v29 = 0xE500000000000000;
    goto LABEL_16;
  }

  if (v21 == *MEMORY[0x277CFC1B8])
  {

    v36 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v28 = 0x73696C6B63656863;
    goto LABEL_25;
  }

  if (v21 == *MEMORY[0x277CFC1C0])
  {

    v37 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v28 = 0x6D726F6665766177;
    goto LABEL_13;
  }

  if (v21 == *MEMORY[0x277CFC1A8])
  {

    v38 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v28 = 0x697261666173;
    v29 = 0xE600000000000000;
    goto LABEL_16;
  }

  result = sub_23E1FE74C();
  __break(1u);
  return result;
}

id sub_23DE63198(uint64_t a1, uint64_t a2)
{
  sub_23E1FBD5C();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15();
  sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v3 = sub_23E1FC9CC();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 value];
  if (v5)
  {
    sub_23E1FDC0C();

    return 0;
  }

  return v5;
}

id sub_23DE633B0()
{
  v0 = sub_23E1FBD5C();
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];
  if (qword_27E32B8E8 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_27E32B8E8);
  }

  v23 = qword_27E33E128;
  sub_23E1FB7BC();
  sub_23DE625F0(&v23);
  v8 = v23;
  v9 = *(v23 + 16);
  if (v9)
  {
    v23 = v7;
    sub_23E1FE63C();
    v11 = *(v2 + 16);
    v10 = v2 + 16;
    v12 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v21 = *(v10 + 56);
    v22 = v11;
    do
    {
      v22(v6, v12, v0);
      sub_23E1FBD3C();
      v13 = sub_23E1FDBDC();

      v14 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];

      sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
      sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
      sub_23E1FC98C();

      (*(v10 - 8))(v6, v0);
      sub_23E1FE61C();
      sub_23E1FE64C();
      sub_23E1FE65C();
      sub_23E1FE62C();
      v12 += v21;
      --v9;
    }

    while (v9);

    v15 = v23;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v16 = objc_allocWithZone(MEMORY[0x277CD3E30]);
  sub_23DE63D90(0, 0, v15);
  MEMORY[0x23EF045A0]();
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23E1FDE0C();
  }

  sub_23E1FDE3C();
  v17 = objc_allocWithZone(MEMORY[0x277CD3E28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB40, &unk_23E2243C0);
  v18 = sub_23E1FDDCC();

  v19 = [v17 initWithSections_];

  return v19;
}

BOOL sub_23DE636D4(uint64_t a1)
{
  sub_23E1FBCDC();
  sub_23E1FBCDC();
  sub_23DE655BC();
  v1 = sub_23E1FE47C();

  return v1 == -1;
}

uint64_t sub_23DE637D8@<X0>(unint64_t *a1@<X8>)
{
  v43 = a1;
  v1 = sub_23E1FBD5C();
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v46 = &v40 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  if (qword_27E32B8E8 != -1)
  {
LABEL_21:
    OUTLINED_FUNCTION_1_3(&qword_27E32B8E8);
  }

  v11 = 0;
  v12 = qword_27E33E128;
  v48 = *(qword_27E33E128 + 16);
  v13 = v3 + 16;
  v45 = (v3 + 32);
  v44 = MEMORY[0x277D84F90];
  while (v48 != v11)
  {
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v15 = *(v3 + 72);
    (*(v3 + 16))(v10, v12 + v14 + v15 * v11, v1);
    if (sub_23E1FBCCC())
    {
      v41 = *v45;
      v41(v46, v10, v1);
      v16 = v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v16;
      v42 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23DE63E6C(0, *(v16 + 16) + 1, 1, v18, v19, v20, v21);
        v16 = v49;
      }

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v44 = v23 + 1;
        sub_23DE63E6C(v22 > 1, v23 + 1, 1, v18, v19, v20, v21);
        v24 = v44;
        v16 = v49;
      }

      ++v11;
      *(v16 + 16) = v24;
      v44 = v16;
      v41((v16 + v14 + v23 * v15), v46, v1);
      v13 = v42;
    }

    else
    {
      (*(v3 + 8))(v10, v1);
      ++v11;
    }
  }

  v25 = v44;
  v26 = *(v44 + 16);
  if (v26)
  {
    v48 = (v3 + 8);
    v49 = MEMORY[0x277D84F90];
    sub_23DE63E2C(0, v26, 0);
    v27 = v49;
    v28 = v25 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v29 = *(v3 + 72);
    v45 = *(v3 + 16);
    v46 = v29;
    do
    {
      v30 = v47;
      v31 = v13;
      v45(v47, v28, v1);
      v32 = sub_23E1FBD3C();
      v34 = v33;
      (*v48)(v30, v1);
      v49 = v27;
      v36 = *(v27 + 16);
      v35 = *(v27 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_23DE63E2C(v35 > 1, v36 + 1, 1);
        v27 = v49;
      }

      *(v27 + 16) = v36 + 1;
      v37 = v27 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v28 += v46;
      --v26;
      v13 = v31;
    }

    while (v26);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v39 = v43;
  v43[3] = result;
  *v39 = v27;
  return result;
}

id WFSpotlightSearchResultTypePickerParameter.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFSpotlightSearchResultTypePickerParameter();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_23DE63D1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  v8 = [v4 initWithSymbolName:v7 configuration:a3 renderingMode:a4];

  return v8;
}

id sub_23DE63D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_23E1FDBDC();
  }

  else
  {
    v4 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C5E0, &qword_23E2265D0);
  v5 = sub_23E1FDDCC();

  v6 = [v3 initWithTitle:v4 items:v5];

  return v6;
}

uint64_t sub_23DE64114(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23E1FE70C();
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
        sub_23E1FBD5C();
        v6 = sub_23E1FDE2C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_23E1FBD5C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23DE64514(v8, v9, a1, v4);
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
    return sub_23DE64244(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23DE64244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_23E1FBD5C();
  v9 = MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v33 - v12;
  result = MEMORY[0x28223BE20](v11);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v14 + 16);
    v17 = v14 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v20 = v16 + v19 * (a3 - 1);
    v40 = -v19;
    v41 = (v17 + 16);
    v21 = a1 - a3;
    v42 = v16;
    v34 = v19;
    v22 = v16 + v19 * a3;
    while (2)
    {
      v38 = v20;
      v39 = a3;
      v36 = v22;
      v37 = v21;
      do
      {
        v23 = v47;
        v24 = v45;
        v45(v47, v22, v8);
        v25 = v52;
        v24(v52, v20, v8);
        v50 = sub_23E1FBCDC();
        v51 = v26;
        v48 = sub_23E1FBCDC();
        v49 = v27;
        sub_23DE655BC();
        v28 = sub_23E1FE47C();

        v29 = *v44;
        (*v44)(v25, v8);
        result = v29(v23, v8);
        if (v28 != -1)
        {
          break;
        }

        if (!v42)
        {
          __break(1u);
          return result;
        }

        v30 = *v41;
        v31 = v43;
        (*v41)(v43, v22, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v30)(v20, v31, v8);
        v20 += v40;
        v22 += v40;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v39 + 1;
      v20 = v38 + v34;
      v21 = v37 - 1;
      v22 = v36 + v34;
      if (v39 + 1 != v35)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23DE64514(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v134 = a1;
  v8 = sub_23E1FBD5C();
  v9 = MEMORY[0x28223BE20](v8);
  v138 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v148 = &v130 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v152 = &v130 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v151 = &v130 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v130 - v18;
  MEMORY[0x28223BE20](v17);
  v22 = &v130 - v20;
  v143 = v21;
  v144 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_101:
    v159 = *v134;
    if (!v159)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_103;
    }

    goto LABEL_139;
  }

  v131 = a4;
  v24 = 0;
  v153 = v21 + 16;
  v154 = (v21 + 8);
  v150 = (v21 + 32);
  v25 = MEMORY[0x277D84F90];
  v159 = v8;
  v132 = v19;
  v133 = &v130 - v20;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    v139 = v24;
    if (v24 + 1 < v23)
    {
      v146 = v24 + 1;
      v147 = v23;
      v145 = v25;
      v28 = v22;
      v29 = v24;
      v30 = *v144;
      v31 = *(v21 + 72);
      v32 = *v144 + v31 * v27;
      v33 = v8;
      v34 = *(v21 + 16);
      v34(v28, v32, v33);
      v35 = v30 + v31 * v29;
      v36 = v133;
      v141 = v34;
      v34(v19, v35, v33);
      LODWORD(v142) = sub_23DE636D4(v36);
      if (v5)
      {
        v129 = *v154;
        (*v154)(v19, v33);
        (v129)(v36, v33);
LABEL_114:

        return;
      }

      v135 = 0;
      v25 = v154;
      v37 = *v154;
      (*v154)(v19, v33);
      v140 = v37;
      (v37)(v36, v33);
      v38 = v139 + 2;
      v39 = v30 + v31 * (v139 + 2);
      v149 = v31;
      v40 = v147;
      while (1)
      {
        v5 = v38;
        if (++v146 >= v40)
        {
          break;
        }

        v41 = v151;
        v42 = v159;
        v43 = v141;
        (v141)(v151, v39, v159);
        v25 = v152;
        v43(v152, v32, v42);
        v157 = sub_23E1FBCDC();
        v158 = v44;
        v155 = sub_23E1FBCDC();
        v156 = v45;
        sub_23DE655BC();
        v46 = sub_23E1FE47C();

        v47 = v140;
        (v140)(v25, v42);
        v47(v41, v42);
        v40 = v147;
        v31 = v149;
        v39 += v149;
        v32 += v149;
        v38 = v5 + 1;
        if (((v142 ^ (v46 != -1)) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v146 = v40;
LABEL_10:
      if (v142)
      {
        v27 = v146;
        v26 = v139;
        v21 = v143;
        v8 = v159;
        if (v146 < v139)
        {
          goto LABEL_138;
        }

        if (v139 >= v146)
        {
          v5 = v135;
          v25 = v145;
        }

        else
        {
          if (v40 >= v5)
          {
            v48 = v5;
          }

          else
          {
            v48 = v40;
          }

          v49 = v31 * (v48 - 1);
          v50 = v146;
          v51 = v31 * v48;
          v52 = v139 * v31;
          v53 = v139;
          v5 = v135;
          do
          {
            if (v53 != --v50)
            {
              v54 = *v144;
              if (!*v144)
              {
                goto LABEL_143;
              }

              v55 = *v150;
              (*v150)(v138, v54 + v52, v8);
              v56 = v52 < v49 || v54 + v52 >= v54 + v51;
              if (v56)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v52 != v49)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v55((v54 + v49), v138, v8);
              v5 = v135;
              v26 = v139;
              v31 = v149;
            }

            ++v53;
            v49 -= v31;
            v51 -= v31;
            v52 += v31;
          }

          while (v53 < v50);
          v21 = v143;
          v25 = v145;
          v27 = v146;
        }
      }

      else
      {
        v5 = v135;
        v21 = v143;
        v25 = v145;
        v27 = v146;
        v8 = v159;
        v26 = v139;
      }
    }

    v57 = v144[1];
    if (v27 < v57)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_135;
      }

      if (v27 - v26 < v131)
      {
        break;
      }
    }

LABEL_48:
    if (v27 < v26)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23DE4CE18(0, *(v25 + 2) + 1, 1, v25);
      v25 = v120;
    }

    v78 = *(v25 + 2);
    v77 = *(v25 + 3);
    v79 = v78 + 1;
    if (v78 >= v77 >> 1)
    {
      sub_23DE4CE18(v77 > 1, v78 + 1, 1, v25);
      v25 = v121;
    }

    *(v25 + 2) = v79;
    v80 = v25 + 32;
    v81 = &v25[16 * v78 + 32];
    v82 = v146;
    *v81 = v139;
    *(v81 + 1) = v82;
    v149 = *v134;
    if (!v149)
    {
      goto LABEL_144;
    }

    if (v78)
    {
      v145 = v25;
      while (1)
      {
        v83 = v79 - 1;
        v84 = &v80[16 * v79 - 16];
        v85 = &v25[16 * v79];
        if (v79 >= 4)
        {
          break;
        }

        if (v79 == 3)
        {
          v86 = *(v25 + 4);
          v87 = *(v25 + 5);
          v96 = __OFSUB__(v87, v86);
          v88 = v87 - v86;
          v89 = v96;
LABEL_69:
          if (v89)
          {
            goto LABEL_121;
          }

          v101 = *v85;
          v100 = *(v85 + 1);
          v102 = __OFSUB__(v100, v101);
          v103 = v100 - v101;
          v104 = v102;
          if (v102)
          {
            goto LABEL_124;
          }

          v105 = *(v84 + 1);
          v106 = v105 - *v84;
          if (__OFSUB__(v105, *v84))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v103, v106))
          {
            goto LABEL_129;
          }

          if (v103 + v106 >= v88)
          {
            if (v88 < v106)
            {
              v83 = v79 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v79 < 2)
        {
          goto LABEL_123;
        }

        v108 = *v85;
        v107 = *(v85 + 1);
        v96 = __OFSUB__(v107, v108);
        v103 = v107 - v108;
        v104 = v96;
LABEL_84:
        if (v104)
        {
          goto LABEL_126;
        }

        v110 = *v84;
        v109 = *(v84 + 1);
        v96 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v96)
        {
          goto LABEL_128;
        }

        if (v111 < v103)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v83 - 1 >= v79)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v144)
        {
          goto LABEL_141;
        }

        v115 = &v80[16 * v83 - 16];
        v25 = *v115;
        v116 = v83;
        v117 = &v80[16 * v83];
        v118 = *(v117 + 1);
        sub_23DE6502C(*v144 + *(v143 + 72) * *v115, *v144 + *(v143 + 72) * *v117, *v144 + *(v143 + 72) * v118, v149);
        if (v5)
        {
          goto LABEL_114;
        }

        if (v118 < v25)
        {
          goto LABEL_116;
        }

        v5 = *(v145 + 2);
        if (v116 > v5)
        {
          goto LABEL_117;
        }

        *v115 = v25;
        *(v115 + 1) = v118;
        if (v116 >= v5)
        {
          goto LABEL_118;
        }

        v79 = v5 - 1;
        sub_23DF20C0C(v117 + 16, v5 - 1 - v116, v117);
        v25 = v145;
        *(v145 + 2) = v5 - 1;
        v119 = v5 > 2;
        v5 = 0;
        if (!v119)
        {
          goto LABEL_98;
        }
      }

      v90 = &v80[16 * v79];
      v91 = *(v90 - 8);
      v92 = *(v90 - 7);
      v96 = __OFSUB__(v92, v91);
      v93 = v92 - v91;
      if (v96)
      {
        goto LABEL_119;
      }

      v95 = *(v90 - 6);
      v94 = *(v90 - 5);
      v96 = __OFSUB__(v94, v95);
      v88 = v94 - v95;
      v89 = v96;
      if (v96)
      {
        goto LABEL_120;
      }

      v97 = *(v85 + 1);
      v98 = v97 - *v85;
      if (__OFSUB__(v97, *v85))
      {
        goto LABEL_122;
      }

      v96 = __OFADD__(v88, v98);
      v99 = v88 + v98;
      if (v96)
      {
        goto LABEL_125;
      }

      if (v99 >= v93)
      {
        v113 = *v84;
        v112 = *(v84 + 1);
        v96 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v96)
        {
          goto LABEL_133;
        }

        if (v88 < v114)
        {
          v83 = v79 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v21 = v143;
    v23 = v144[1];
    v24 = v146;
    v19 = v132;
    v22 = v133;
    if (v146 >= v23)
    {
      goto LABEL_101;
    }
  }

  v58 = v26 + v131;
  if (__OFADD__(v26, v131))
  {
    goto LABEL_136;
  }

  if (v58 >= v57)
  {
    v58 = v144[1];
  }

  if (v58 < v26)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    v25 = sub_23DF20AE8(v25);
LABEL_103:
    v122 = v25 + 16;
    v123 = *(v25 + 2);
    while (v123 >= 2)
    {
      if (!*v144)
      {
        goto LABEL_142;
      }

      v124 = v25;
      v25 += 16 * v123;
      v125 = *v25;
      v126 = &v122[2 * v123];
      v127 = *(v126 + 1);
      sub_23DE6502C(*v144 + *(v143 + 72) * *v25, *v144 + *(v143 + 72) * *v126, *v144 + *(v143 + 72) * v127, v159);
      if (v5)
      {
        break;
      }

      if (v127 < v125)
      {
        goto LABEL_130;
      }

      if (v123 - 2 >= *v122)
      {
        goto LABEL_131;
      }

      *v25 = v125;
      *(v25 + 1) = v127;
      v128 = *v122 - v123;
      if (*v122 < v123)
      {
        goto LABEL_132;
      }

      v123 = *v122 - 1;
      sub_23DF20C0C(v126 + 16, v128, v126);
      *v122 = v123;
      v25 = v124;
    }

    goto LABEL_114;
  }

  if (v27 == v58)
  {
    goto LABEL_48;
  }

  v145 = v25;
  v135 = v5;
  v59 = *v144;
  v60 = *(v21 + 72);
  v149 = *(v21 + 16);
  v61 = v59 + v60 * (v27 - 1);
  v62 = -v60;
  v63 = (v26 - v27);
  v147 = v59;
  v136 = v60;
  v64 = (v59 + v27 * v60);
  v137 = v58;
LABEL_41:
  v146 = v27;
  v140 = v64;
  v141 = v63;
  v65 = v64;
  v142 = v61;
  while (1)
  {
    v66 = v151;
    v67 = v149;
    (v149)(v151, v65, v8);
    v68 = v152;
    v67(v152, v61, v159);
    v157 = sub_23E1FBCDC();
    v158 = v69;
    v155 = sub_23E1FBCDC();
    v156 = v70;
    sub_23DE655BC();
    v71 = sub_23E1FE47C();

    v72 = *v154;
    v73 = v68;
    v8 = v159;
    (*v154)(v73, v159);
    (v72)(v66, v8);
    if (v71 != -1)
    {
LABEL_46:
      v27 = v146 + 1;
      v61 = v142 + v136;
      v63 = v141 - 1;
      v64 = &v140[v136];
      if (v146 + 1 == v137)
      {
        v27 = v137;
        v5 = v135;
        v25 = v145;
        v26 = v139;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v147)
    {
      break;
    }

    v74 = *v150;
    v75 = v148;
    (*v150)(v148, v65, v8);
    swift_arrayInitWithTakeFrontToBack();
    v74(v61, v75, v8);
    v61 += v62;
    v65 += v62;
    v56 = __CFADD__(v63++, 1);
    if (v56)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}