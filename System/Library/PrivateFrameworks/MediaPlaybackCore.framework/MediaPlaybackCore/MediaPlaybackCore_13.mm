uint64_t sub_1C5D989C8()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D98A5C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D98AF0()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D98B84()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D98C18()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D98C90()
{
  OUTLINED_FUNCTION_248();
  v1 = *(*(v0 + 16) + 40);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1C5D9B3BC;

  return sub_1C5D99B3C(v1);
}

uint64_t sub_1C5D98D44()
{
  OUTLINED_FUNCTION_248();
  v1 = *(*(v0 + 16) + 56);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1C5D98DD8;

  return sub_1C5D99B3C(v1);
}

uint64_t sub_1C5D98DD8()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  OUTLINED_FUNCTION_172();

  return v3();
}

uint64_t sub_1C5D98EB8(void *a1)
{
  sub_1C5D7E40C((a1 + 15), v17);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_0(v17, v18);
    v4 = a1[2];
    v3 = a1[3];
    __src[0] = 0;
    __src[1] = 0xE000000000000000;

    sub_1C6017540();

    v5 = [objc_opt_self() isMainThread];
    v6 = v5 == 0;
    if (v5)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v6)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    MEMORY[0x1C69534E0](v7, v8);

    MEMORY[0x1C69534E0](41, 0xE100000000000000);
    __src[0] = v4;
    __src[1] = v3;
    __src[2] = 0xD00000000000002BLL;
    __src[3] = 0x80000001C60501E0;
    sub_1C5D5CEC8(__src);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    sub_1C5D7E4D8(v17);
  }

  result = sub_1C5D99F34(a1[5], 1);
  if (!v1)
  {
    sub_1C5D99F34(a1[7], 0);
    sub_1C5D7E40C((a1 + 15), v17);
    if (v18)
    {
      __swift_project_boxed_opaque_existential_0(v17, v18);
      v11 = a1[2];
      v10 = a1[3];

      v12 = sub_1C5D991B0();
      __src[0] = v11;
      __src[1] = v10;
      __src[2] = v12;
      __src[3] = v13;
      sub_1C5D5CEC8(__src);
      memcpy(v20, __src, sizeof(v20));
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v17);
    }

    else
    {
      sub_1C5D7E4D8(v17);
    }

    result = sub_1C6016CA0();
    if (result)
    {
      sub_1C5D7E40C((a1 + 15), v17);
      if (v18)
      {
        __swift_project_boxed_opaque_existential_0(v17, v18);
        v14 = a1[3];
        __src[0] = a1[2];
        __src[1] = v14;
        __src[2] = 0xD00000000000003FLL;
        __src[3] = 0x80000001C60501A0;
        sub_1C5D5CEC8(__src);
        memcpy(v19, __src, sizeof(v19));

        sub_1C5DBBF0C();

        __swift_destroy_boxed_opaque_existential_0(v17);
      }

      else
      {
        sub_1C5D7E4D8(v17);
      }

      sub_1C5D99694();
      sub_1C5D9AFB4();
      swift_allocError();
      *v15 = 2;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1C5D991B0()
{
  v1 = v0;
  if (*(v0 + 241) & 1) != 0 || (*(v0 + 297))
  {
    OUTLINED_FUNCTION_14_24();
    sub_1C6017540();
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);

    v148 = v3;
    v149 = v2;
    MEMORY[0x1C69534E0](0xD000000000000017, 0x80000001C604FF30);
  }

  else
  {
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    time = *(v0 + 232);
    HIDWORD(v104) = *(v0 + 240);
    HIDWORD(v121) = *(v0 + 296);
    v129 = *(v0 + 288);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    OUTLINED_FUNCTION_14_24();
    sub_1C6017540();
    v151 = v148;
    v152 = v149;
    v8 = *(v0 + 40);
    v9 = sub_1C5C64D74(0, &qword_1ED7DCEA8, 0x1E69880B0);
    v150 = v9;
    v148 = v8;
    v10 = v8;
    OUTLINED_FUNCTION_18_20(v10, v11, v12, v13, v14, v15, v16, v17, v104, time, v121, v129, v137, v141);
    sub_1C5CBCF4C(&v148);
    v18 = OUTLINED_FUNCTION_25_13();
    MEMORY[0x1C69534E0](v18, 0xEF285B203A74756FLL);
    v19 = OUTLINED_FUNCTION_3_35();
    sub_1C5C72B9C(v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_8_26();
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E63B0];
    *(v24 + 16) = xmmword_1C60311E0;
    v26 = MEMORY[0x1E69E6438];
    *(v24 + 56) = v25;
    *(v24 + 64) = v26;
    *(v24 + 32) = v5;
    v27 = sub_1C6016960();
    MEMORY[0x1C69534E0](v27);

    OUTLINED_FUNCTION_11_19();
    sub_1C6016D30();
    OUTLINED_FUNCTION_27_14();
    OUTLINED_FUNCTION_8_26();
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_13_21(v28, v29, v30, v31, v32, v33, v34, v35, v36, v105, timea, v122, v130, v37);
    v38[7] = v25;
    v38[8] = v26;
    v38[4] = v4;
    v39 = sub_1C6016960();
    MEMORY[0x1C69534E0](v39);

    OUTLINED_FUNCTION_11_19();
    sub_1C6016D30();
    OUTLINED_FUNCTION_26_13();
    v153.is_nil = timeb;
    DefaultStringInterpolation.appendInterpolation(time:)(v153);
    v40 = v152;
    timec = v151;
    OUTLINED_FUNCTION_14_24();
    sub_1C6017540();
    v151 = v148;
    v152 = v149;
    v41 = v1[7];
    v150 = v9;
    v148 = v41;
    v42 = v41;
    OUTLINED_FUNCTION_18_20(v42, v43, v44, v45, v46, v47, v48, v49, v106, timec, v123, v131, 1, 2);
    sub_1C5CBCF4C(&v148);
    v50 = OUTLINED_FUNCTION_25_13();
    MEMORY[0x1C69534E0](v50);
    OUTLINED_FUNCTION_8_26();
    v51 = swift_allocObject();
    OUTLINED_FUNCTION_13_21(v51, v52, v53, v54, v55, v56, v57, v58, v59, v107, timed, v124, v132, v60);
    v61 = MEMORY[0x1E69E63B0];
    v62[7] = MEMORY[0x1E69E63B0];
    v62[8] = v26;
    v62[4] = v7;
    v63 = sub_1C6016960();
    MEMORY[0x1C69534E0](v63);

    OUTLINED_FUNCTION_11_19();
    sub_1C6016D30();
    OUTLINED_FUNCTION_27_14();
    OUTLINED_FUNCTION_8_26();
    v64 = swift_allocObject();
    OUTLINED_FUNCTION_13_21(v64, v65, v66, v67, v68, v69, v70, v71, v72, v108, timee, v125, v133, v73);
    v74[7] = v61;
    v74[8] = v26;
    v74[4] = v6;
    v75 = sub_1C6016960();
    MEMORY[0x1C69534E0](v75);

    OUTLINED_FUNCTION_11_19();
    sub_1C6016D30();
    OUTLINED_FUNCTION_26_13();
    v154.is_nil = v134;
    DefaultStringInterpolation.appendInterpolation(time:)(v154);
    v77 = v151;
    v76 = v152;
    v78 = v1[3];
    v148 = v1[2];
    v149 = v78;

    v79 = MEMORY[0x1C69534E0](10, 0xE100000000000000);
    OUTLINED_FUNCTION_17_17(v79, v80, v81, v82, v83, v84, v85, v86, v109, timef, v126, v134, v138, v142, v145, v148, v149);
    MEMORY[0x1C69534E0](timeg, v40);

    OUTLINED_FUNCTION_17_17(v87, v88, v89, v90, v91, v92, v93, v94, v110, timeg, v127, v135, v139, v143, v146, v148, v149);
    MEMORY[0x1C69534E0](10, 0xE100000000000000);

    OUTLINED_FUNCTION_17_17(v95, v96, v97, v98, v99, v100, v101, v102, v111, timeh, v128, v136, v140, v144, v147, v148, v149);
    MEMORY[0x1C69534E0](v77, v76);
  }

  return v148;
}

id sub_1C5D995F0()
{
  v1 = *(v0 + 40);
  sub_1C5DABC1C();
  sub_1C5E10700();
  v3 = v2;

  sub_1C5D9B0F0(v3, v1);
  v4 = *(v0 + 56);
  sub_1C5DABC1C();
  sub_1C5E10700();
  v6 = v5;

  sub_1C5D9B0F0(v6, v4);
  [v1 setAudioMix_];

  return [v4 setAudioMix_];
}

uint64_t sub_1C5D99694()
{
  sub_1C5D7E40C(v0 + 120, v17);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_0(v17, v18);
    v1 = *(v0 + 24);
    OUTLINED_FUNCTION_9_24();
    __src[0] = v2;
    __src[1] = v1;
    __src[2] = 0xD000000000000018;
    __src[3] = v3;
    sub_1C5D5CEC8(__src);
    memcpy(__dst, __src, sizeof(__dst));

    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    sub_1C5D7E4D8(v17);
  }

  v16 = 1;
  *(v0 + 248) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 256;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 256;
  v4 = *(v0 + 40);
  sub_1C5D9A520(v4);
  sub_1C5D9A520(*(v0 + 56));
  [v4 overlappedPlaybackEndTime];
  v5 = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 8);
  v7 = *(MEMORY[0x1E6960C70] + 12);
  v8 = *(MEMORY[0x1E6960C70] + 16);
  result = sub_1C60171E0();
  if (result)
  {
    sub_1C5D7E40C(v0 + 120, v14);
    if (v15)
    {
      __swift_project_boxed_opaque_existential_0(v14, v15);
      v11 = *(v0 + 16);
      v10 = *(v0 + 24);
      __src[0] = 0;
      __src[1] = 0xE000000000000000;

      sub_1C6017540();
      MEMORY[0x1C69534E0](0xD00000000000002ALL, 0x80000001C6050030);
      v12 = sub_1C5DBCDF8();
      MEMORY[0x1C69534E0](v12);

      MEMORY[0x1C69534E0](0xD000000000000018, 0x80000001C6050060);
      v13[0] = v11;
      v13[1] = v10;
      v13[2] = __src[0];
      v13[3] = __src[1];
      sub_1C5D5CEC8(v13);
      memcpy(__src, v13, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    else
    {
      sub_1C5D7E4D8(v14);
    }

    v13[0] = v5;
    v13[1] = __PAIR64__(v7, v6);
    v13[2] = v8;
    return [v4 setOverlappedPlaybackEndTime_];
  }

  return result;
}

uint64_t sub_1C5D99908(uint64_t a1, double a2)
{
  if (*(v2 + 32) != a1)
  {
    sub_1C5D7E40C(v2 + 120, v11);
    if (v12)
    {
      __swift_project_boxed_opaque_existential_0(v11, v12);
      v3 = *(v2 + 24);
      OUTLINED_FUNCTION_9_24();
      __src[0] = v5;
      __src[1] = v3;
      v6 = 0xD00000000000002ALL;
LABEL_4:
      __src[2] = v6;
      __src[3] = v4;
      sub_1C5D5CEC8(__src);
      memcpy(__dst, __src, sizeof(__dst));

      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v11);
      return 1;
    }

    goto LABEL_11;
  }

  if (*(v2 + 241))
  {
    return 0;
  }

  result = 0;
  if ((*(v2 + 240) & 1) == 0 && *(v2 + 232) < a2 + 0.1)
  {
    sub_1C5D7E40C(v2 + 120, v11);
    if (v12)
    {
      __swift_project_boxed_opaque_existential_0(v11, v12);
      v8 = *(v2 + 24);
      OUTLINED_FUNCTION_9_24();
      __src[0] = v9;
      __src[1] = v8;
      v6 = 0xD000000000000038;
      goto LABEL_4;
    }

LABEL_11:
    sub_1C5D7E4D8(v11);
    return 1;
  }

  return result;
}

double *sub_1C5D99A54(uint64_t a1, double a2)
{
  type metadata accessor for OverlappingTransitionTimeImpl();
  swift_allocObject();
  v4 = sub_1C5DAFD74();
  v6 = v5;
  if (*(v2 + 241))
  {
    [*(v2 + 40) duration];
    v7 = sub_1C6017220();
  }

  else
  {
    v7 = *(v2 + 200);
  }

  sub_1C5C64D74(0, &qword_1ED7DCC30, 0x1E69E58C0);
  v8 = sub_1C60172D0();
  v9 = a2 - v7;
  if (a2 - v7 < 0.0)
  {
    v9 = 0.0;
  }

  v10 = v7 + a2;
  if (v8)
  {
    v10 = a2;
  }

  v6[2] = v10;
  v6[3] = v10;
  if ((v8 & 1) == 0)
  {
    v9 = a2;
  }

  v6[4] = v9;
  v6[5] = v9;
  return v6;
}

uint64_t sub_1C5D99B54()
{
  OUTLINED_FUNCTION_248();
  sub_1C6016C10();
  *(v0 + 32) = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C5D99BD0()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 24);

  *(v0 + 40) = [v1 asset];
  v2 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5D99C48()
{
  OUTLINED_FUNCTION_13();
  sub_1C5D9B070(0, &qword_1EC1AB6C8, sub_1C5D9B008);
  v1 = sub_1C6015270();
  v0[6] = v1;
  sub_1C5D9B070(0, &qword_1EC1AAC18, type metadata accessor for CMTime);
  v2 = sub_1C6015280();
  v0[7] = v2;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1C5D99D78;

  return MEMORY[0x1EEE68148](v0 + 2, v0 + 10, v0 + 10, v1, v2, v0 + 10, 0, 0);
}

uint64_t sub_1C5D99D78()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v4 = *(v2 + 40);
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = sub_1C5D99F10;
  }

  else
  {

    v7 = sub_1C5D99EEC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

id sub_1C5D99F34(void *a1, char a2)
{
  v5 = [a1 asset];
  [v5 duration];

  v6 = sub_1C6017220();
  if (*(v2 + 64) >= v6)
  {
    sub_1C5D7E40C(v2 + 120, &v35);
    if (v39)
    {
      __swift_project_boxed_opaque_existential_0(&v35, v39);
      v13 = *(v2 + 16);
      v12 = *(v2 + 24);
      *&v34[0] = 0;
      *(&v34[0] + 1) = 0xE000000000000000;

      sub_1C6017540();

      *&v34[0] = 0xD00000000000002DLL;
      *(&v34[0] + 1) = 0x80000001C604FF90;
      v14 = OUTLINED_FUNCTION_3_35();
      sub_1C5C72B9C(v14, v15, v16, v17, v18);
      OUTLINED_FUNCTION_8_26();
      v19 = swift_allocObject();
      v20 = MEMORY[0x1E69E63B0];
      *(v19 + 16) = xmmword_1C60311E0;
      OUTLINED_FUNCTION_7_29(v19, v20);
      v21 = sub_1C6016960();
      MEMORY[0x1C69534E0](v21);

      v22 = v34[0];
      *&v34[0] = v13;
      *(&v34[0] + 1) = v12;
      v34[1] = v22;
      sub_1C5D5CEC8(v34);
      memcpy(__dst, v34, sizeof(__dst));
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(&v35);
    }

    else
    {
      sub_1C5D7E4D8(&v35);
    }

    sub_1C5D9AFB4();
    OUTLINED_FUNCTION_10_1();
    swift_allocError();
    *v33 = 0;
    return swift_willThrow();
  }

  else
  {
    if (a2)
    {
      sub_1C5D9A2C4(a1, &v45, v6, *(v2 + 64));
      v8 = v46;
      v34[0] = v45;
      v7 = v45;
      v34[1] = v46;
      v9 = v48;
      *&v34[2] = v47;
      *(v2 + 224) = v47;
      *(v2 + 232) = v9;
      v10 = v9;
      v11 = v49;
      LOBYTE(v35) = 0;
      *(v2 + 192) = v7;
      *(v2 + 208) = v8;
      *(v2 + 240) = v11;
    }

    else
    {
      sub_1C5D9A23C(a1, &v40, v6, *(v2 + 64));
      v23 = v40;
      v24 = v41;
      v34[0] = v40;
      v34[1] = v41;
      v25 = v43;
      *&v34[2] = v42;
      *(v2 + 280) = v42;
      *(v2 + 288) = v25;
      v10 = v25;
      v11 = v44;
      LOBYTE(v35) = 0;
      *(v2 + 248) = v23;
      *(v2 + 264) = v24;
      *(v2 + 296) = v11;
    }

    v50[0] = v34[0];
    v50[1] = v34[1];
    v51 = *&v34[2];
    v52 = v10;
    v53 = v11;
    v26 = sub_1C5D9A350(v50);
    [a1 setAudioMix_];

    if (v11)
    {
      v28 = *MEMORY[0x1E6960C70];
      LODWORD(v29) = *(MEMORY[0x1E6960C70] + 8);
      LODWORD(v30) = *(MEMORY[0x1E6960C70] + 12);
      v31 = *(MEMORY[0x1E6960C70] + 16);
    }

    else
    {
      v27.n128_u64[0] = v10;
      v28 = sub_1C5D67CC0(v27);
      v30 = HIDWORD(v29);
    }

    v35 = v28;
    v36 = v29;
    v37 = v30;
    v38 = v31;
    return [a1 setAdvanceTimeForOverlappedPlayback_];
  }
}

void sub_1C5D9A23C(void *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (a3 <= a4)
  {
    __break(1u);
  }

  else
  {
    [result currentTime];
    v5 = sub_1C6017220();
    if (v5 < 0.0)
    {
      v5 = 0.0;
    }

    OUTLINED_FUNCTION_16_19(v5);
    *(a2 + 24) = xmmword_1C6040410;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
  }
}

void sub_1C5D9A2C4(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = a3 - a4;
  if (a3 - a4 <= 0.0)
  {
    __break(1u);
  }

  else
  {
    [a1 currentTime];
    v6 = sub_1C6017220();
    if (v4 > v6)
    {
      v6 = v4;
    }

    OUTLINED_FUNCTION_16_19(v6);
    *(a2 + 24) = xmmword_1C6040420;
    *(a2 + 40) = v7;
    *(a2 + 48) = 0;
  }
}

id sub_1C5D9A350(uint64_t a1)
{
  v2 = [objc_opt_self() audioMixInputParametersWithTrack_];
  [v2 setTrackID_];
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5.n128_u64[0] = *(a1 + 8);
  v6 = sub_1C5D67CC0(v5);
  v8 = v7;
  v10 = v9;
  v11 = HIDWORD(v7);
  v12.n128_u64[0] = *a1;
  v13 = sub_1C5D67CC0(v12);
  duration.epoch = v14;
  start.value = v6;
  start.timescale = v8;
  start.flags = v11;
  start.epoch = v10;
  duration.value = v13;
  duration.timescale = v15;
  duration.flags = v16;
  CMTimeRangeMake(&v22, &start, &duration);
  [v2 setVolumeRampFromStartVolume:&v22 toEndVolume:COERCE_DOUBLE(__PAIR64__(v22.duration.flags timeRange:{v3)), COERCE_DOUBLE(__PAIR64__(HIDWORD(v22.start.epoch), v4))}];
  v17 = [objc_allocWithZone(MEMORY[0x1E6988038]) init];
  sub_1C5C674E0(0, &qword_1ED7DCAF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C60311F0;
  *(v18 + 32) = v2;
  sub_1C5C64D74(0, &qword_1EC1AB528, 0x1E6987F28);
  v19 = v2;
  v20 = sub_1C6016AF0();

  [v17 setInputParameters_];

  return v17;
}

id sub_1C5D9A520(void *a1)
{
  [a1 setAudioMix_];
  v2 = *(MEMORY[0x1E6960C70] + 16);
  v4[0] = *MEMORY[0x1E6960C70];
  v4[1] = *(MEMORY[0x1E6960C70] + 8);
  v4[2] = v2;
  return [a1 setAdvanceTimeForOverlappedPlayback_];
}

double sub_1C5D9A58C()
{
  v1 = 0.0;
  if ((*(v0 + 241) & 1) == 0)
  {
    v2 = v0;
    v3 = *(v0 + 208);
    v4 = [*(v0 + 40) timebase];
    if (v4)
    {
      v5 = v4;
      sub_1C6016EC0();

      if ((sub_1C5D9A664() & 1) != 0 && (sub_1C5D9A6FC() & 1) == 0)
      {
        return v3 - sub_1C6017220();
      }

      else if ((*(v2 + 297) & 1) == 0)
      {
        if (*(v2 + 248) >= *(v2 + 176))
        {
          return *(v2 + 176);
        }

        else
        {
          return *(v2 + 248);
        }
      }
    }
  }

  return v1;
}

id sub_1C5D9A664()
{
  if (*(v0 + 241))
  {
    return 0;
  }

  v2 = *(v0 + 200);
  result = [*(v0 + 40) timebase];
  if (result)
  {
    v3 = result;
    sub_1C6016EC0();

    return (v2 + -0.1 <= sub_1C6017220());
  }

  return result;
}

id sub_1C5D9A6FC()
{
  if (*(v0 + 297))
  {
    return 0;
  }

  v2 = *(v0 + 256);
  result = [*(v0 + 56) timebase];
  if (result)
  {
    v3 = result;
    sub_1C6016EC0();

    v4 = 0.0;
    if ((*(v0 + 297) & 1) == 0)
    {
      v4 = *(v0 + 248);
      if (v4 >= *(v0 + 176))
      {
        v4 = *(v0 + 176);
      }
    }

    return (v2 + v4 + 0.1 < sub_1C6017220());
  }

  return result;
}

uint64_t sub_1C5D9A7C4()
{
  v1 = v0;
  v2 = type metadata accessor for PlayerItemTransitionProvided(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5D5D630(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035CF0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001C604FF70;
  v6 = sub_1C6014A60();
  __swift_storeEnumTagSinglePayload(v4, 2, 2, v6);
  v7 = sub_1C5DAE2E8();
  sub_1C5D9AEE0(v4);
  v8 = 0;
  v9 = MEMORY[0x1E69E6530];
  *(inited + 48) = v7;
  *(inited + 72) = v9;
  *(inited + 80) = 0x6E6F697461727564;
  *(inited + 88) = 0xE800000000000000;
  v10 = *(v1 + 176);
  *(inited + 120) = MEMORY[0x1E69E63B0];
  *(inited + 128) = 0x676E696F6774756FLL;
  *(inited + 96) = v10;
  *(inited + 136) = 0xE800000000000000;
  if ((*(v1 + 241) & 1) == 0)
  {
    v11 = *(v1 + 208);
    v21 = *(v1 + 192);
    v22 = v11;
    v23 = *(v1 + 224);
    v24 = *(v1 + 240);
    v8 = sub_1C5DAE4B8();
  }

  sub_1C5D9AF3C(0);
  v13 = v12;
  *(inited + 168) = v12;
  if (!v8)
  {
    sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
    v8 = sub_1C6016880();
  }

  *(inited + 144) = v8;
  *(inited + 176) = 0x676E696D6F636E69;
  *(inited + 184) = 0xE800000000000000;
  if (*(v1 + 297))
  {
    *(inited + 216) = v13;
LABEL_8:
    sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
    v17 = sub_1C6016880();
    goto LABEL_9;
  }

  v14 = *(v1 + 248);
  v20 = *(v1 + 296);
  v15 = *(v1 + 264);
  v16 = *(v1 + 280);
  v19[14] = v14;
  v19[15] = v15;
  v19[16] = v16;
  v17 = sub_1C5DAE4B8();
  *(inited + 216) = v13;
  if (!v17)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(inited + 192) = v17;
  return sub_1C6016880();
}

double sub_1C5D9AA34()
{
  result = 0.0;
  if ((*(v0 + 297) & 1) == 0)
  {
    result = *(v0 + 248);
    if (result >= *(v0 + 176))
    {
      return *(v0 + 176);
    }
  }

  return result;
}

uint64_t sub_1C5D9AA54()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1C5D7E4D8(v0 + 120);
  sub_1C5C96DF0(v0 + 160);
  return v0;
}

uint64_t sub_1C5D9AAA4()
{
  sub_1C5D9AA54();

  return MEMORY[0x1EEE6BDC0](v0, 298, 7);
}

_BYTE *storeEnumTagSinglePayload for SmartPlayerItemTransitionSetupFailureReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C5D9ABDC()
{
  result = qword_1EC1AB6B0;
  if (!qword_1EC1AB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB6B0);
  }

  return result;
}

double sub_1C5D9AC7C()
{
  if ((*(v0 + 297) & 1) == 0)
  {
    v1 = *(v0 + 248);
    if (v1 >= *(v0 + 176))
    {
      v1 = *(v0 + 176);
    }

    return *(v0 + 256) + v1 * 0.5;
  }

  return result;
}

uint64_t sub_1C5D9ACBC()
{
  v1 = *(*v0 + 16);

  return v1;
}

double sub_1C5D9AD20@<D0>(uint64_t a1@<X8>)
{
  sub_1C5D97978(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1C5D9ADB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C5CBCD24;

  return sub_1C5D97C40();
}

uint64_t sub_1C5D9AEE0(uint64_t a1)
{
  v2 = type metadata accessor for PlayerItemTransitionProvided(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5D9AF3C(uint64_t a1)
{
  if (!qword_1EC1AB6B8)
  {
    sub_1C5C64D74(255, &qword_1ED7DCCD0, 0x1E696AD98);
    v1 = sub_1C60168A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1AB6B8);
    }
  }
}

unint64_t sub_1C5D9AFB4()
{
  result = qword_1EC1AB6C0;
  if (!qword_1EC1AB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB6C0);
  }

  return result;
}

void sub_1C5D9B008(uint64_t a1)
{
  if (!qword_1EC1AB6D0)
  {
    sub_1C5C64D74(255, &qword_1EC1AB5A0, 0x1E6987EC8);
    v1 = sub_1C6016B80();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1AB6D0);
    }
  }
}

void sub_1C5D9B070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1C5C64D74(255, &qword_1EC1AAC20, 0x1E6987E28);
    a3(255);
    v5 = sub_1C6015200();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C5D9B0F0(uint64_t a1, void *a2)
{
  v3 = sub_1C6016840();

  [a2 setGaplessInfo_];
}

uint64_t sub_1C5D9B170()
{
  OUTLINED_FUNCTION_248();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_21_18(v1);

  return sub_1C5D98C70(v2, v3);
}

uint64_t sub_1C5D9B1FC()
{
  OUTLINED_FUNCTION_248();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_21_18(v1);

  return sub_1C5D98D24(v2, v3);
}

_BYTE *storeEnumTagSinglePayload for CrossFadePlayerItemTransition.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C5D9B368()
{
  result = qword_1EC1AB6D8;
  if (!qword_1EC1AB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB6D8);
  }

  return result;
}

void OUTLINED_FUNCTION_16_19(double a1)
{
  v4 = a1 + v2;
  if (a1 + v2 > v3)
  {
    v4 = v3;
  }

  *v1 = v2;
  v1[1] = a1;
  v1[2] = v4;
}

uint64_t OUTLINED_FUNCTION_18_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return DefaultStringInterpolation.appendInterpolation(describing:default:)(va, 7104878, 0xE300000000000000);
}

void OUTLINED_FUNCTION_27_14()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t sub_1C5D9B454(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1C5D9B494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1C5D9B504@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  result = *(v1 + 56);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  *(&a1[1] + 8) = v3;
  a1[2].n128_u64[1] = 0;
  a1[3].n128_u8[0] = 0;
  return result;
}

uint64_t sub_1C5D9B524()
{
  v1 = [*(v0 + 32) gaplessInfo];
  if (v1 && (v2 = v1, v3 = sub_1C6016860(), v2, sub_1C5DF59E4(v3), v5 = v4, , v5) && (sub_1C5DABC1C(), sub_1C5D29214(), v7 = v6, , , (v7 & 1) == 0))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

void sub_1C5D9B5E4()
{
  v1 = *(v0 + 32);
  v2 = [v1 gaplessInfo];
  if (!v2 || (v3 = v2, v4 = sub_1C6016860(), v3, sub_1C5DF59E4(v4), v6 = v5, v2 = , !v6) || (sub_1C5DABC1C(), sub_1C5D29214(), v8 = v7, , v2 = , (v8 & 1) != 0))
  {
    sub_1C5D9B6F4(v2);
    sub_1C5DAE6C8(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
    sub_1C5E10700();
    v10 = v9;

    sub_1C5D9B0F0(v10, v1);
  }
}

id sub_1C5D9B6F4(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1C5DABC1C();
  sub_1C5E10700();
  v4 = v3;

  sub_1C5D9B0F0(v4, v2);
  v5 = *(v1 + 48);
  sub_1C5DABC1C();
  sub_1C5E10700();
  v7 = v6;

  sub_1C5D9B0F0(v7, v5);
  [v2 setAudioMix_];

  return [v5 setAudioMix_];
}

void sub_1C5D9B798(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1C5DABC1C();
  sub_1C5E10700();
  v4 = v3;

  sub_1C5D9B0F0(v4, v2);
}

unint64_t sub_1C5D9B7F0()
{
  v1 = sub_1C5DAE6C8(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v2 = sub_1C5E10D34(v1);

  return v2;
}

uint64_t sub_1C5D9B834()
{
  v1 = *(v0 + 8);

  return v1;
}

double sub_1C5D9B884@<D0>(uint64_t a1@<X8>)
{
  sub_1C5D9B504(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1C5D9B8F0()
{
  sub_1C5D9B5E4();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1C5D9B954()
{
  OUTLINED_FUNCTION_153_0();
  v3 = type metadata accessor for SmartTransitionParameters(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_22_18();
  sub_1C5DA4F3C(0, &qword_1EC1AB720, v2, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v5);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  OUTLINED_FUNCTION_82_2(v0 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_incomingParameters);
  sub_1C5DAAA70();
  if (__swift_getEnumTagSinglePayload(v8, 1, v3))
  {
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_10_25();
    sub_1C5DAAB34(v8, v1, v11);
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v8, v12, v13);
    sub_1C6014B10();
    OUTLINED_FUNCTION_5_32();
    sub_1C5DAAB90(v1, v14);
  }

  OUTLINED_FUNCTION_146_0();
}

void sub_1C5D9BAC0()
{
  OUTLINED_FUNCTION_153_0();
  v3 = type metadata accessor for SmartTransitionParameters(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_138_0();
  sub_1C5DA4F3C(v5, v6, v7, v8);
  OUTLINED_FUNCTION_13_3(v9);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_82_2(v0 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_outgoingParameters);
  OUTLINED_FUNCTION_148_0();
  v11 = OUTLINED_FUNCTION_99_1();
  if (__swift_getEnumTagSinglePayload(v11, v12, v3))
  {
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v2, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_10_25();
    sub_1C5DAAB34(v2, v1, v15);
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v2, v16, v17);
    sub_1C6014B10();
    OUTLINED_FUNCTION_5_32();
    sub_1C5DAAB90(v1, v18);
  }

  OUTLINED_FUNCTION_146_0();
}

uint64_t sub_1C5D9BC08(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 11;
  }

  else
  {
    return byte_1C6040B22[a1];
  }
}

uint64_t sub_1C5D9BC60@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C5D9BC08(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C5D9BC8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5D9BC28(*v1);
  *a1 = result;
  return result;
}

double sub_1C5D9BCC4@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0x80;
  return result;
}

uint64_t sub_1C5D9BCDC()
{
  OUTLINED_FUNCTION_65_7();
  sub_1C5DA4F3C(0, &qword_1EC1AB720, v1, MEMORY[0x1E69E6720]);
  v4 = OUTLINED_FUNCTION_13_3(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_102();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_104_0();
  v6 = OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_incomingParameters;
  OUTLINED_FUNCTION_27(v0 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_incomingParameters, v19);
  sub_1C5DAAA70();
  type metadata accessor for SmartTransitionParameters(0);
  v7 = OUTLINED_FUNCTION_135_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v6);
  sub_1C5DAAACC(v2, &qword_1EC1AB720, v1);
  if (EnumTagSinglePayload == 1)
  {
    return qword_1C6040B88[*(v0 + 140)];
  }

  OUTLINED_FUNCTION_27(v0 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_outgoingParameters, v18);
  OUTLINED_FUNCTION_65_7();
  sub_1C5DAAA70();
  v9 = OUTLINED_FUNCTION_56_1();
  v11 = __swift_getEnumTagSinglePayload(v9, v10, v6);
  v12 = OUTLINED_FUNCTION_252();
  sub_1C5DAAACC(v12, v13, v1);
  if (v11 == 1)
  {
    return qword_1C6040B88[*(v0 + 140)];
  }

  if (*(v0 + 139))
  {
    return 4;
  }

  v15 = sub_1C5D9BE8C();
  if (v16)
  {
    return *&v15;
  }

  sub_1C5D9BEE4();
  if (v17)
  {
    return 4;
  }

  return *(v0 + 88);
}

double sub_1C5D9BE8C()
{
  v0 = 0.0;
  if (sub_1C5DA56B8())
  {
    sub_1C5D9BEE4();
    if ((v1 & 1) == 0)
    {
      v2 = COERCE_DOUBLE(sub_1C5DA5900());
      if (v3)
      {
        return 0.0;
      }

      else
      {
        return v2;
      }
    }
  }

  return v0;
}

void sub_1C5D9BEE4()
{
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_138_0();
  sub_1C5DA4F3C(v2, v3, v4, v5);
  OUTLINED_FUNCTION_13_3(v6);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78_2();
  v8 = type metadata accessor for SmartTransitionParameters(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_146();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_82_2(v0 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_incomingParameters);
  OUTLINED_FUNCTION_148_0();
  v13 = OUTLINED_FUNCTION_99_1();
  if (__swift_getEnumTagSinglePayload(v13, v14, v8) == 1)
  {
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v1, v15, v16);
  }

  else
  {
    sub_1C5DAAD4C(v1, v12, type metadata accessor for SmartTransitionParameters);
    v17 = [*(v0 + 72) timebase];
    if (v17)
    {
      v18 = v17;
      sub_1C6016EC0();

      OUTLINED_FUNCTION_138_0();
      sub_1C6017220();
      sub_1C6014B10();
    }

    OUTLINED_FUNCTION_5_32();
    sub_1C5DAAB90(v12, v19);
  }

  OUTLINED_FUNCTION_146_0();
}

void sub_1C5D9C084()
{
  OUTLINED_FUNCTION_247();
  v2 = v0;
  v3 = type metadata accessor for SmartTransitionParameters(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_10();
  sub_1C5DA4F3C(0, &qword_1EC1AB720, type metadata accessor for SmartTransitionParameters, MEMORY[0x1E69E6720]);
  v6 = OUTLINED_FUNCTION_13_3(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_102();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45[-v11];
  v13 = type metadata accessor for PlayerItemTransitionProvided(0);
  v14 = OUTLINED_FUNCTION_13_3(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_146();
  v17 = v16 - v15;
  sub_1C5DA4F3C(0, &qword_1EC1A9230, sub_1C5D80578, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60379A0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001C604FF70;
  v19 = OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionProvided;
  OUTLINED_FUNCTION_27(v2 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionProvided, &v47);
  OUTLINED_FUNCTION_21_19();
  sub_1C5DAAB34(v2 + v19, v17, v20);
  v21 = sub_1C5DAE2E8();
  OUTLINED_FUNCTION_20_20();
  sub_1C5DAAB90(v17, v22);
  v23 = MEMORY[0x1E69E6530];
  *(inited + 48) = v21;
  *(inited + 72) = v23;
  *(inited + 80) = 0x7967657461727473;
  *(inited + 88) = 0xE800000000000000;
  v24 = *(v2 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionStrategy);
  v25 = *(v2 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionStrategy + 8);
  v26 = MEMORY[0x1E69E6158];
  if (!v25)
  {
    v24 = 1701736270;
  }

  v27 = 0xE400000000000000;
  if (v25)
  {
    v27 = *(v2 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionStrategy + 8);
  }

  *(inited + 96) = v24;
  *(inited + 104) = v27;
  *(inited + 120) = v26;
  *(inited + 128) = 0x6E6F697461727564;
  *(inited + 136) = 0xE800000000000000;
  v28 = MEMORY[0x1E69E63B0];
  *(inited + 144) = *(v2 + 88);
  *(inited + 168) = v28;
  *(inited + 176) = 0x676E696F6774756FLL;
  *(inited + 184) = 0xE800000000000000;
  OUTLINED_FUNCTION_27(v2 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_outgoingParameters, &v46);
  sub_1C5DAAA70();
  if (__swift_getEnumTagSinglePayload(v12, 1, v3))
  {

    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v12, v29, v30);
    v31 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_25();
    sub_1C5DAAB34(v12, v1, v32);

    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v12, v33, v34);
    v31 = sub_1C5DAE8AC();
    OUTLINED_FUNCTION_5_32();
    sub_1C5DAAB90(v1, v35);
  }

  sub_1C5D9AF3C(0);
  v37 = v36;
  *(inited + 216) = v36;
  if (!v31)
  {
    sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
    v31 = sub_1C6016880();
  }

  *(inited + 192) = v31;
  *(inited + 224) = 0x676E696D6F636E69;
  *(inited + 232) = 0xE800000000000000;
  OUTLINED_FUNCTION_27(v2 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_incomingParameters, v45);
  OUTLINED_FUNCTION_60_6();
  sub_1C5DAAA70();
  if (__swift_getEnumTagSinglePayload(v9, 1, v3))
  {
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v9, v38, v39);
    *(inited + 264) = v37;
  }

  else
  {
    OUTLINED_FUNCTION_10_25();
    sub_1C5DAAB34(v9, v1, v41);
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v9, v42, v43);
    v40 = sub_1C5DAE8AC();
    OUTLINED_FUNCTION_5_32();
    sub_1C5DAAB90(v1, v44);
    *(inited + 264) = v37;
    if (v40)
    {
      goto LABEL_14;
    }
  }

  sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
  v40 = sub_1C6016880();
LABEL_14:
  *(inited + 240) = v40;
  sub_1C6016880();
  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5D9C50C()
{
  OUTLINED_FUNCTION_248();
  v1[7] = v0;
  v2 = sub_1C6014980();
  v1[8] = v2;
  OUTLINED_FUNCTION_12(v2);
  v1[9] = v3;
  v1[10] = OUTLINED_FUNCTION_105_1();
  v1[11] = swift_task_alloc();
  OUTLINED_FUNCTION_8_27();
  sub_1C5DA4F3C(0, v4, v5, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v6);
  v1[12] = swift_task_alloc();
  v7 = sub_1C60149E0();
  v1[13] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[14] = v8;
  v1[15] = OUTLINED_FUNCTION_105_1();
  v1[16] = swift_task_alloc();
  v9 = sub_1C60162D0();
  v1[17] = v9;
  OUTLINED_FUNCTION_12(v9);
  v1[18] = v10;
  v1[19] = OUTLINED_FUNCTION_105_1();
  v1[20] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C5D9C6B4(uint64_t a1)
{
  v81 = v1;
  v3 = *(v1 + 56);
  *(v3 + 140) = 0;
  sub_1C6016CB0();
  v4 = OUTLINED_FUNCTION_1_48();
  OUTLINED_FUNCTION_157_0(v4, v5, v6);

  v7 = sub_1C60162B0();
  sub_1C6016F30();
  OUTLINED_FUNCTION_75_2();

  v8 = OUTLINED_FUNCTION_137_0();
  v9 = *(v1 + 160);
  v11 = *(v1 + 136);
  v10 = *(v1 + 144);
  if (v8)
  {
    OUTLINED_FUNCTION_112();
    v77 = v9;
    v79 = OUTLINED_FUNCTION_53_5();
    v12 = OUTLINED_FUNCTION_69_5(4.8751e-34);
    OUTLINED_FUNCTION_110_1(v12, v13, &v79);
    OUTLINED_FUNCTION_109_0();
    *(v9 + 4) = v2;
    OUTLINED_FUNCTION_94();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    OUTLINED_FUNCTION_31_8();
    OUTLINED_FUNCTION_6();

    v19 = *(v10 + 8);
    v19(v9, v11);
  }

  else
  {

    v19 = *(v10 + 8);
    v19(v9, v11);
  }

  *(v1 + 168) = v19;
  v20 = *(v1 + 56);
  v21 = *(v20 + 80);
  *(v1 + 453) = v21;
  if (v21 == 2 || (v22 = *(v20 + 81), *(v1 + 454) = v22, v22 == 2))
  {
    *(v1 + 448) = 3;
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000050, 0x80000001C6050450);
    v23 = *(v20 + 80);
    if (v23)
    {
      v24 = 7562617;
    }

    else
    {
      v24 = 28526;
    }

    if (v23)
    {
      v25 = 0xE300000000000000;
    }

    else
    {
      v25 = 0xE200000000000000;
    }

    if (v23 == 2)
    {
      v26 = 0x6E776F6E6B6E75;
    }

    else
    {
      v26 = v24;
    }

    if (v23 == 2)
    {
      v27 = 0xE700000000000000;
    }

    else
    {
      v27 = v25;
    }

    MEMORY[0x1C69534E0](v26, v27);

    MEMORY[0x1C69534E0](0xD000000000000018, 0x80000001C60504B0);
    v28 = *(v20 + 81);
    if (v28)
    {
      v29 = 7562617;
    }

    else
    {
      v29 = 28526;
    }

    if (v28)
    {
      v30 = 0xE300000000000000;
    }

    else
    {
      v30 = 0xE200000000000000;
    }

    if (v28 == 2)
    {
      v31 = 0x6E776F6E6B6E75;
    }

    else
    {
      v31 = v29;
    }

    if (v28 == 2)
    {
      v32 = 0xE700000000000000;
    }

    else
    {
      v32 = v30;
    }

    MEMORY[0x1C69534E0](v31, v32);

    sub_1C5DAA568(0);
    v33 = sub_1C5DAA618();
    OUTLINED_FUNCTION_16(v33);
    sub_1C5DAA5C4();
    goto LABEL_31;
  }

  v36 = [*(v20 + 56) forwardPlaybackEndTime];
  OUTLINED_FUNCTION_127_1(v36, v37, v38, v39, v40, v41, v42, v43, v77, v79);
  if ((sub_1C60171C0() & 1) == 0 || ([*(*(v1 + 56) + 64) playbackStartTime], v44 != 0.0))
  {
    v63 = *(v1 + 56);
    *(v1 + 449) = 4;
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_1C6017540();
    v64 = v80;
    *(v1 + 40) = v79;
    *(v1 + 48) = v64;
    MEMORY[0x1C69534E0](0xD000000000000056, 0x80000001C60504D0);
    v65 = [*(v20 + 56) forwardPlaybackEndTime];
    OUTLINED_FUNCTION_127_1(v65, v66, v67, v68, v69, v70, v71, v72, v78, v79);
    sub_1C6017220();
    OUTLINED_FUNCTION_132_0();
    sub_1C6016D10();
    MEMORY[0x1C69534E0](0xD000000000000019, 0x80000001C6050530);
    [*(v63 + 64) playbackStartTime];
    OUTLINED_FUNCTION_132_0();
    sub_1C6016D10();
    sub_1C5DAA568(0);
    v73 = sub_1C5DAA618();
    OUTLINED_FUNCTION_16(v73);
    sub_1C5DAA5C4();
LABEL_31:
    OUTLINED_FUNCTION_132_0();
LABEL_32:
    MEMORY[0x1C6951DD0]();
    swift_willThrow();
LABEL_33:
    OUTLINED_FUNCTION_35_10();

    OUTLINED_FUNCTION_172();

    return v34();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v45 = *(*(v1 + 56) + 72);
    v46 = *(v20 + 56);
    v47 = v45;
    v48 = OUTLINED_FUNCTION_45_0();
    LOBYTE(v45) = sub_1C5DE3F2C(v48);

    if ((v45 & 1) == 0)
    {
      *(v3 + 140) = 1;
      *(v1 + 452) = 2;
      sub_1C5DAA568(0);
      v75 = sub_1C5DAA618();
      OUTLINED_FUNCTION_16(v75);
      v76 = sub_1C5DAA5C4();
      MEMORY[0x1C6951DD0](v1 + 452, 0xD000000000000047, 0x80000001C6050600, MEMORY[0x1E69E7CC0], &type metadata for SmartPlayerItemTransitionError, v76);
      swift_willThrow();
      swift_unknownObjectRelease();
      goto LABEL_33;
    }

    swift_unknownObjectRelease();
  }

  if (!swift_unknownObjectWeakLoadStrong() || (v49 = sub_1C5DE3FD4(), swift_unknownObjectRelease(), (v49 & 1) == 0))
  {
    *(v3 + 140) = 2;
    *(v1 + 450) = 5;
    OUTLINED_FUNCTION_126_1();
    v74 = sub_1C5DAA618();
    OUTLINED_FUNCTION_16(v74);
    OUTLINED_FUNCTION_156_0();
    OUTLINED_FUNCTION_115_1();
    goto LABEL_32;
  }

  v50 = [*(v20 + 56) currentTime];
  OUTLINED_FUNCTION_127_1(v50, v51, v52, v53, v54, v55, v56, v57, v78, v79);
  *(v1 + 176) = sub_1C6017220();
  v58 = *(v20 + 56);
  *(v1 + 184) = v58;
  *(v1 + 192) = sub_1C6016C10();
  v59 = v58;
  *(v1 + 200) = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v60 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v60, v61, v62);
}

uint64_t sub_1C5D9CCCC()
{
  OUTLINED_FUNCTION_23();
  v22 = v0;
  v1 = v0[23];

  v2 = [v1 currentTime];
  OUTLINED_FUNCTION_127_1(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21);
  sub_1C5D643DC();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v0[26] = v11;
  v0[27] = v13;
  v0[28] = v15;
  v16 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1C5D9CD70()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 56);
  *(v0 + 232) = sub_1C6017220();
  v2 = *(v1 + 56);
  *(v0 + 240) = v2;
  v3 = v2;
  v4 = OUTLINED_FUNCTION_118_0();
  *(v0 + 248) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_75_5(v4);

  return sub_1C5DA32E8(v5);
}

uint64_t sub_1C5D9CE14()
{
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  v5 = v4;
  OUTLINED_FUNCTION_30();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_101();
  *v8 = v7;
  *(v5 + 256) = v9;
  *(v5 + 264) = v10;
  *(v5 + 272) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_235();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {

    *(v5 + 280) = v3;

    v14 = swift_task_alloc();
    *(v5 + 288) = v14;
    *v14 = v7;
    v14[1] = sub_1C5D9CF90;

    return sub_1C5D9E1F8();
  }
}

uint64_t sub_1C5D9CF90()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_101();
  *v4 = v3;
  *(v5 + 296) = v6;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5D9D074()
{
  v42 = v0;
  v3 = *(v0 + 296) + 0.5 + *(v0 + 176);
  if (v3 >= sub_1C6017220())
  {
    *(*(v0 + 56) + 140) = 3;
    v17 = OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_157_0(v17, v18, v19);

    v20 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_75_2();

    if (OUTLINED_FUNCTION_137_0())
    {
      v21 = *(v0 + 296);
      v22 = *(v0 + 232);
      v23 = *(v0 + 176);
      v40 = *(v0 + 168);
      swift_slowAlloc();
      v41 = OUTLINED_FUNCTION_53_5();
      v24 = OUTLINED_FUNCTION_69_5(4.8755e-34);
      OUTLINED_FUNCTION_110_1(v24, v25, &v41);
      OUTLINED_FUNCTION_109_0();
      *(v1 + 4) = v2;
      *(v1 + 12) = 2050;
      *(v1 + 14) = v23;
      *(v1 + 22) = 2050;
      *(v1 + 24) = v22;
      *(v1 + 32) = 2050;
      *(v1 + 34) = v21;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v26, v27, v28, v29, v30, 0x2Au);
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_6();

      v31 = OUTLINED_FUNCTION_28_9();
      v40(v31);
    }

    else
    {
      v35 = *(v0 + 168);

      v36 = OUTLINED_FUNCTION_252();
      v35(v36);
    }

    *(v0 + 451) = 10;
    OUTLINED_FUNCTION_126_1();
    v37 = sub_1C5DAA618();
    OUTLINED_FUNCTION_16(v37);
    OUTLINED_FUNCTION_156_0();
    OUTLINED_FUNCTION_115_1();
    MEMORY[0x1C6951DD0]();
    swift_willThrow();
    OUTLINED_FUNCTION_35_10();

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_97_1();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 104);
  OUTLINED_FUNCTION_27(*(v0 + 56) + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_cachedSmartTransitionData, v0 + 16);
  OUTLINED_FUNCTION_63_3();
  sub_1C5DAAA70();
  v5 = OUTLINED_FUNCTION_56_1();
  if (__swift_getEnumTagSinglePayload(v5, v6, v4) == 1)
  {
    v7 = *(v0 + 56);
    OUTLINED_FUNCTION_8_27();
    sub_1C5DAAACC(v8, v9, v10);
    v11 = *(v7 + 72);
    *(v0 + 320) = v11;
    v12 = v11;
    v13 = OUTLINED_FUNCTION_118_0();
    *(v0 + 328) = v13;
    *v13 = v0;
    OUTLINED_FUNCTION_75_5(v13);
    OUTLINED_FUNCTION_97_1();

    return sub_1C5DA32E8(v14);
  }

  else
  {
    (*(*(v0 + 112) + 32))(*(v0 + 128), *(v0 + 96), *(v0 + 104));
    v32 = swift_task_alloc();
    *(v0 + 304) = v32;
    *v32 = v0;
    v32[1] = sub_1C5D9D400;
    OUTLINED_FUNCTION_94_1(*(v0 + 128));
    OUTLINED_FUNCTION_97_1();

    return sub_1C5D9E568(v33);
  }
}

uint64_t sub_1C5D9D400()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5D9D4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v11 = *(v10 + 128);
  OUTLINED_FUNCTION_130_1();
  v12(v11);

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C5D9D5AC()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_8_0();
  v9 = v8;
  OUTLINED_FUNCTION_30();
  *v10 = v9;
  v11 = *v1;
  OUTLINED_FUNCTION_101();
  *v12 = v11;
  *(v9 + 336) = v0;

  if (!v0)
  {

    *(v9 + 344) = v5;
    *(v9 + 352) = v3;
    *(v9 + 360) = v7;
  }

  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C5D9D6D4()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 56);
  *(v0 + 455) = [v2[6] hasSubscriptionAssetSource];
  *(v0 + 456) = [v2[8] hasSubscriptionAssetSource];
  OUTLINED_FUNCTION_138_0();
  *(v0 + 368) = sub_1C6017220();
  OUTLINED_FUNCTION_85_0();
  *(v0 + 376) = sub_1C6017220();
  v3 = v2[7];
  v4 = [v1 respondsToSelector_];

  if (v4 && (v5 = *(*(v0 + 56) + 72), v6 = [v1 respondsToSelector_], v1, v6))
  {
    v7 = *(*(v0 + 56) + 56);
    *(v0 + 384) = v7;
    v8 = v7;
    *(v0 + 392) = sub_1C6016C00();
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_117();
    v9 = OUTLINED_FUNCTION_6_27();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_139_1(*(v0 + 296));
    v12 = *(v0 + 454);
    sub_1C6014970();
    OUTLINED_FUNCTION_150_0(v12 & 1, v13);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_2();
    *(v0 + 416) = v14;
    *v14 = v15;
    OUTLINED_FUNCTION_45_5(v14);

    return sub_1C5D9F2F4();
  }
}

uint64_t sub_1C5D9D8E8()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 384);

  *(v0 + 457) = [v1 missingAudioEditList];

  v2 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5D9D95C()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0[7] + 72);
  v0[50] = v1;
  v2 = v1;
  v0[51] = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v3 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5D9D9E0()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 400);

  *(v0 + 458) = [v1 missingAudioEditList];

  v2 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5D9DA54()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_139_1(*(v0 + 296));
  v1 = *(v0 + 454);
  sub_1C6014970();
  OUTLINED_FUNCTION_150_0(v1 & 1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_2();
  *(v0 + 416) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_45_5(v3);

  return sub_1C5D9F2F4();
}

uint64_t sub_1C5D9DB2C()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_101();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[53] = v0;

  v6 = v2[11];
  v7 = v2[10];
  v8 = v2[9];
  v9 = v2[8];
  if (v0)
  {
    v10 = *(v8 + 8);
    v10(v7, v2[8]);
    v10(v6, v9);
    v11 = OUTLINED_FUNCTION_137_1();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v8 + 8);
    v14(v7, v2[8]);
    v14(v6, v9);
    v15 = swift_task_alloc();
    v3[54] = v15;
    *v15 = v5;
    v15[1] = sub_1C5D9DD3C;
    v16 = OUTLINED_FUNCTION_94_1(v3[15]);

    return sub_1C5D9E568(v16);
  }
}

uint64_t sub_1C5D9DD3C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v6 + 440) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5D9DE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v11 = *(v10 + 120);
  OUTLINED_FUNCTION_130_1();
  v12(v11);

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C5D9DEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_35_10();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1C5D9DF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  (*(v10[14] + 8))(v10[16], v10[13]);
  OUTLINED_FUNCTION_35_10();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1C5D9E028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_35_10();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1C5D9E0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_35_10();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1C5D9E150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  (*(v10[14] + 8))(v10[15], v10[13]);
  OUTLINED_FUNCTION_35_10();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1C5D9E218()
{
  OUTLINED_FUNCTION_248();
  type metadata accessor for CMTime();
  OUTLINED_FUNCTION_100_1(v0 + 16, v1, v2, &unk_1C6040A00);
  OUTLINED_FUNCTION_100_1(v0 + 656, v3, v4, &unk_1C6040A10);

  return MEMORY[0x1EEE6DEB8](v0 + 16, v0 + 1360, sub_1C5D9E2C8, v0 + 1296);
}

uint64_t sub_1C5D9E2DC()
{
  OUTLINED_FUNCTION_248();
  if (sub_1C6017200())
  {
    v1 = sub_1C5D9E35C;
    v2 = v0 + 16;
    v3 = v0 + 1360;
  }

  else
  {
    *(v0 + 1344) = 0;
    v2 = OUTLINED_FUNCTION_56_5();
  }

  return MEMORY[0x1EEE6DEB8](v2, v3, v1, v0 + 1296);
}

uint64_t sub_1C5D9E370()
{
  OUTLINED_FUNCTION_248();
  *(v0 + 1344) = sub_1C6017220();
  v1 = OUTLINED_FUNCTION_56_5();

  return MEMORY[0x1EEE6DEB8](v1, v2, v3, v0 + 1296);
}

uint64_t sub_1C5D9E3E4()
{
  OUTLINED_FUNCTION_248();
  if (sub_1C6017200())
  {

    return MEMORY[0x1EEE6DEB8](v0 + 656, v0 + 1384, sub_1C5D9E480, v0 + 1296);
  }

  else
  {
    *(v0 + 1352) = 0;
    v1 = OUTLINED_FUNCTION_50_6();

    return MEMORY[0x1EEE6DEB0](v1, v2, v3, v4);
  }
}

uint64_t sub_1C5D9E494()
{
  OUTLINED_FUNCTION_248();
  *(v0 + 1352) = sub_1C6017220();
  v1 = OUTLINED_FUNCTION_50_6();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v4);
}

uint64_t sub_1C5D9E538()
{
  OUTLINED_FUNCTION_172();
  v2.n128_u64[0] = *(v0 + 1352);
  if (*(v0 + 1344) > v2.n128_f64[0])
  {
    v2.n128_u64[0] = *(v0 + 1344);
  }

  return v1(v2);
}

uint64_t sub_1C5D9E568(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1C60149E0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1C6014B20();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_1C6014AE0();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_1C6014A50();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = sub_1C60162D0();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5D9E7B0, 0, 0);
}

uint64_t sub_1C5D9E7B0()
{
  v64 = v0;
  OUTLINED_FUNCTION_157_0(0x6C7070612E6D6F63, 0xEF63696E6F532E65, 0x6B63616279616C70);

  v1 = sub_1C60162B0();
  v2 = sub_1C6016F30();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 160);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  if (v3)
  {
    v7 = *(v0 + 24);
    v8 = OUTLINED_FUNCTION_112();
    v9 = OUTLINED_FUNCTION_21();
    v63 = v9;
    *v8 = 136446210;
    v10 = *(v7 + 32);
    v11 = *(v7 + 40);

    v12 = sub_1C5C6AB10(v10, v11, &v63);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1C5C61000, v1, v2, "[ALC:%{public}s] - Attempting to apply Smart Transition", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  v13 = *(v5 + 8);
  v13(v4, v6);
  *(v0 + 168) = v13;
  sub_1C6016CB0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v0 + 24);
    v17 = *(v16 + 72);
    v18 = *(v16 + 56);
    v19 = v17;
    v20 = OUTLINED_FUNCTION_252();
    LOBYTE(v17) = sub_1C5DE3F2C(v20);

    if ((v17 & 1) == 0)
    {
      *(*(v0 + 24) + 140) = 1;
      *(v0 + 218) = 2;
      OUTLINED_FUNCTION_126_1();
      v52 = sub_1C5DAA618();
      OUTLINED_FUNCTION_16(v52);
      OUTLINED_FUNCTION_156_0();
      OUTLINED_FUNCTION_115_1();
      MEMORY[0x1C6951DD0]();
      swift_willThrow();
      swift_unknownObjectRelease();
LABEL_4:
      OUTLINED_FUNCTION_106_0();

      OUTLINED_FUNCTION_172();

      return v14();
    }

    swift_unknownObjectRelease();
  }

  v21 = *(v0 + 112);
  v22 = sub_1C60149B0();
  v23 = MEMORY[0x1C69514E0](v22);
  v24 = *(v21 + 8);
  v25 = OUTLINED_FUNCTION_252();
  v24(v25);
  if (v23 < 0.5)
  {
    v27 = *(v0 + 40);
    v26 = *(v0 + 48);
    v28 = *(v0 + 32);
    v29 = *(v0 + 16);
    OUTLINED_FUNCTION_1_48();
    sub_1C60162C0();
    (*(v27 + 16))(v26, v29, v28);

    v30 = sub_1C60162B0();
    v31 = sub_1C6016F30();

    v32 = OUTLINED_FUNCTION_29_0();
    v62 = *(v0 + 144);
    v33 = *(v0 + 128);
    if (v32)
    {
      v61 = *(v0 + 128);
      v34 = *(v0 + 120);
      v58 = *(v0 + 104);
      v35 = *(v0 + 40);
      v56 = *(v0 + 48);
      v36 = *(v0 + 24);
      v60 = *(v0 + 32);
      v37 = OUTLINED_FUNCTION_68_0();
      v59 = OUTLINED_FUNCTION_21();
      v63 = v59;
      *v37 = 136446466;
      v57 = v31;
      v38 = *(v36 + 32);

      v39 = OUTLINED_FUNCTION_85_0();
      sub_1C5C6AB10(v39, v40, v41);
      OUTLINED_FUNCTION_155_0();
      *(v37 + 4) = v38;
      *(v37 + 12) = 2050;
      v42 = sub_1C60149B0();
      v43 = MEMORY[0x1C69514E0](v42);
      (v24)(v34, v58);
      (*(v35 + 8))(v56, v60);
      *(v37 + 14) = v43;
      _os_log_impl(&dword_1C5C61000, v30, v57, "[ALC:%{public}s] - Failed to apply Smart Transition - transition duration (%{public}f) is too short", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v59);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_28();

      v44 = v61;
      v45 = v62;
    }

    else
    {

      v53 = OUTLINED_FUNCTION_85_0();
      v54(v53);
      v45 = v62;
      v44 = v33;
    }

    v13(v45, v44);
    *(v0 + 216) = 9;
    OUTLINED_FUNCTION_126_1();
    v55 = sub_1C5DAA618();
    OUTLINED_FUNCTION_16(v55);
    OUTLINED_FUNCTION_156_0();
    OUTLINED_FUNCTION_115_1();
    MEMORY[0x1C6951DD0]();
    swift_willThrow();
    goto LABEL_4;
  }

  [*(*(v0 + 24) + 56) currentTime];
  *(v0 + 176) = sub_1C6017220();
  sub_1C60149A0();
  sub_1C6014A90();
  v46 = OUTLINED_FUNCTION_252();
  v47(v46);
  sub_1C6014B10();
  *(v0 + 184) = v48;
  v49 = OUTLINED_FUNCTION_18();
  v50(v49);
  v51 = swift_task_alloc();
  *(v0 + 192) = v51;
  *v51 = v0;
  v51[1] = sub_1C5D9EDA4;

  return sub_1C5D9E1F8();
}

uint64_t sub_1C5D9EDA4()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_101();
  *v4 = v3;
  *(v5 + 200) = v6;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5D9EE88()
{
  v27 = v0;
  if (*(v0 + 176) >= *(v0 + 184) - *(v0 + 200))
  {
    *(*(v0 + 24) + 140) = 3;
    v6 = OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_157_0(v6, v7, v8);

    v9 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_75_2();

    if (OUTLINED_FUNCTION_137_0())
    {
      v10 = *(v0 + 200);
      v11 = *(v0 + 176);
      v25 = *(v0 + 168);
      OUTLINED_FUNCTION_21();
      v26 = OUTLINED_FUNCTION_53_5();
      v12 = OUTLINED_FUNCTION_69_5(4.8754e-34);
      OUTLINED_FUNCTION_110_1(v12, v13, &v26);
      OUTLINED_FUNCTION_109_0();
      *(v1 + 4) = v2;
      *(v1 + 12) = 2050;
      *(v1 + 14) = v11;
      *(v1 + 22) = 2050;
      *(v1 + 24) = v10;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v14, v15, v16, v17, v18, 0x20u);
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_6();

      v19 = OUTLINED_FUNCTION_28_9();
      v25(v19);
    }

    else
    {
      v20 = *(v0 + 168);

      v21 = OUTLINED_FUNCTION_252();
      v20(v21);
    }

    *(v0 + 217) = 10;
    sub_1C5DAA568(0);
    v22 = sub_1C5DAA618();
    OUTLINED_FUNCTION_16(v22);
    v23 = sub_1C5DAA5C4();
    MEMORY[0x1C6951DD0](v0 + 217, 0xD000000000000033, 0x80000001C60505A0, MEMORY[0x1E69E7CC0], &type metadata for SmartPlayerItemTransitionError, v23);
    swift_willThrow();
    OUTLINED_FUNCTION_106_0();

    OUTLINED_FUNCTION_172();

    return v24();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 208) = v3;
    *v3 = v0;
    v3[1] = sub_1C5D9F130;
    v4 = OUTLINED_FUNCTION_94_1(*(v0 + 16));

    return sub_1C5DA5F80(v4);
  }
}

uint64_t sub_1C5D9F130()
{
  OUTLINED_FUNCTION_23();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C5D9F2F4()
{
  OUTLINED_FUNCTION_248();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v5 = sub_1C60148F0();
  v1[14] = v5;
  OUTLINED_FUNCTION_12(v5);
  v1[15] = v6;
  v1[16] = swift_task_alloc();
  v7 = sub_1C6014930();
  v1[17] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_105_1();
  v1[20] = swift_task_alloc();
  sub_1C5DAA9FC(0);
  v1[21] = v9;
  OUTLINED_FUNCTION_13_3(v9);
  v1[22] = OUTLINED_FUNCTION_105_1();
  v1[23] = swift_task_alloc();
  OUTLINED_FUNCTION_4_37();
  v10 = MEMORY[0x1E69E6720];
  sub_1C5DA4F3C(0, v11, v12, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v13);
  v1[24] = swift_task_alloc();
  OUTLINED_FUNCTION_8_27();
  sub_1C5DA4F3C(0, v14, v15, v10);
  OUTLINED_FUNCTION_13_3(v16);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v17 = type metadata accessor for TransitionProvider.TransitionableIdentifier(0);
  v1[28] = v17;
  OUTLINED_FUNCTION_13_3(v17);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  OUTLINED_FUNCTION_13_22();
  sub_1C5DA4F3C(0, v18, v19, v10);
  OUTLINED_FUNCTION_13_3(v20);
  v1[33] = OUTLINED_FUNCTION_105_1();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v21 = sub_1C6014980();
  v1[37] = v21;
  OUTLINED_FUNCTION_12(v21);
  v1[38] = v22;
  v1[39] = OUTLINED_FUNCTION_105_1();
  v1[40] = swift_task_alloc();
  v23 = sub_1C60162D0();
  v1[41] = v23;
  OUTLINED_FUNCTION_12(v23);
  v1[42] = v24;
  v1[43] = OUTLINED_FUNCTION_105_1();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  sub_1C5D2D8C8(0);
  v1[50] = v25;
  OUTLINED_FUNCTION_12(v25);
  v1[51] = v26;
  v1[52] = OUTLINED_FUNCTION_105_1();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

uint64_t sub_1C5D9F6EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, os_log_t a22, uint64_t a23, uint64_t a24, os_log_t log, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_71_2();
  a45 = v47;
  a46 = v48;
  OUTLINED_FUNCTION_81_4();
  a44 = v46;
  v49 = *(v46 + 408);
  v283 = *(v46 + 312);
  v51 = *(v46 + 296);
  v50 = *(v46 + 304);
  v279 = *(v46 + 320);
  v281 = *(v46 + 96);
  v52 = *(v46 + 88);
  MEMORY[0x1C6952D20]();
  OUTLINED_FUNCTION_108_1(0x6B63616279616C70);
  *(v46 + 472) = *(v49 + 8);
  *(v46 + 480) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v53 = OUTLINED_FUNCTION_108();
  v285 = v54;
  v54(v53);
  v55 = *(v50 + 16);
  v55(v279, v52, v51);
  v56 = v281;
  v280 = v55;
  v282 = v50 + 16;
  v55(v283, v56, v51);

  v57 = sub_1C60162B0();
  v58 = sub_1C6016F30();

  v59 = os_log_type_enabled(v57, v58);
  v284 = *(v46 + 392);
  v60 = *(v46 + 328);
  v61 = *(v46 + 336);
  v62 = *(v46 + 320);
  v64 = *(v46 + 296);
  v63 = *(v46 + 304);
  if (v59)
  {
    v277 = *(v46 + 328);
    v65 = OUTLINED_FUNCTION_21();
    a33 = swift_slowAlloc();
    *v65 = 136446722;
    logc = v57;

    v66 = OUTLINED_FUNCTION_45_0();
    v69 = sub_1C5C6AB10(v66, v67, v68);

    *(v65 + 4) = v69;
    *(v65 + 12) = 2082;
    sub_1C6014960();
    v70 = *(v63 + 8);
    v70(v62, v64);
    v71 = OUTLINED_FUNCTION_45_0();
    v74 = sub_1C5C6AB10(v71, v72, v73);

    *(v65 + 14) = v74;
    *(v65 + 22) = 2082;
    v75 = sub_1C6014960();
    v76 = OUTLINED_FUNCTION_134_1();
    (v70)(v76);
    v77 = OUTLINED_FUNCTION_85_0();
    sub_1C5C6AB10(v77, v78, v79);
    OUTLINED_FUNCTION_155_0();
    *(v65 + 24) = v75;
    _os_log_impl(&dword_1C5C61000, logc, v58, "[ALC:%{public}s] - Fetching Smart Transition info. OutgoingItemInfo: %{public}s.  IncomingItemInfo: %{public}s", v65, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();

    v80 = *(v61 + 8);
    (v80)(v284, v277);
  }

  else
  {

    v81 = *(v63 + 8);
    v82 = OUTLINED_FUNCTION_134_1();
    v81(v82);
    (v81)(v62, v64);
    v80 = *(v61 + 8);
    (v80)(v284, v60);
  }

  *(v46 + 488) = v80;
  v83 = *(v46 + 104);
  objc_opt_self();
  OUTLINED_FUNCTION_34_4();
  v84 = swift_dynamicCastObjCClass();
  v85 = "rameworks/AssistantServices.framework/AssistantServices";
  if (v84)
  {
    v86 = [v84 modelGenericObject];
    if (v86)
    {
      v87 = v86;
      v88 = [v86 identifiers];

      if (v88)
      {
        MEMORY[0x1C6952D20]();
        v89 = OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_108_1(v89);
        v90 = OUTLINED_FUNCTION_46_4();
        v91(v90);

        v92 = v88;
        v93 = sub_1C60162B0();
        v94 = sub_1C6016F30();

        v95 = os_log_type_enabled(v93, v94);
        v96 = *(v46 + 384);
        if (v95)
        {
          logd = *(v46 + 328);
          v284 = v80;
          v97 = OUTLINED_FUNCTION_68_0();
          v98 = swift_slowAlloc();
          v274 = v83;
          v99 = OUTLINED_FUNCTION_21();
          a33 = v99;
          *v97 = 136446466;
          v267 = v96;

          v100 = OUTLINED_FUNCTION_45_0();
          v103 = sub_1C5C6AB10(v100, v101, v102);

          *(v97 + 4) = v103;
          *(v97 + 12) = 2114;
          *(v97 + 14) = v92;
          *v98 = v88;
          v104 = v92;
          _os_log_impl(&dword_1C5C61000, v93, v94, "[ALC:%{public}s] - Outgoing identifier set: %{public}@", v97, 0x16u);
          sub_1C5CB5700(v98);
          v85 = "softlink:r:path:/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices" + 40;
          OUTLINED_FUNCTION_4();
          __swift_destroy_boxed_opaque_existential_0(v99);
          v83 = v274;
          OUTLINED_FUNCTION_4();
          v80 = v284;
          OUTLINED_FUNCTION_4();

          OUTLINED_FUNCTION_129_1();
          v105 = v267;
          v106 = logd;
        }

        else
        {

          OUTLINED_FUNCTION_129_1();
          v105 = OUTLINED_FUNCTION_45_0();
        }

        (v80)(v105, v106);
      }
    }
  }

  v107 = *(v46 + 288);
  v108 = *(v46 + 224);
  v109 = (*(v46 + 104) + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionProvider);
  __swift_project_boxed_opaque_existential_0(v109, v109[3]);
  v110 = swift_unknownObjectRetain();
  sub_1C5DB1A0C(v110, v107);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_108();
  sub_1C5DAAA70();
  v111 = OUTLINED_FUNCTION_56_1();
  if (__swift_getEnumTagSinglePayload(v111, v112, v108) == 1)
  {
    v113 = *(v46 + 104);
    OUTLINED_FUNCTION_13_22();
    v117 = sub_1C5DAAACC(v114, v115, v116);
    MEMORY[0x1C6952D20](v117);
    v118 = OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_108_1(v118);
    v119 = OUTLINED_FUNCTION_46_4();
    v120(v119);

    v121 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_125_1();
    if (OUTLINED_FUNCTION_137_0())
    {
      v122 = *(v46 + 104);
      OUTLINED_FUNCTION_112();
      v123 = OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_136_2(v123);
      *v113 = 136446210;
      v284 = v80;
      v124 = *(v122 + 32);

      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_109_0();
      *(v113 + 4) = v124;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v125, v126, v127, v128, v129, 0xCu);
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_6();

      v130 = OUTLINED_FUNCTION_28_9();
      v284(v130);
    }

    else
    {

      v157 = OUTLINED_FUNCTION_28_9();
      v80(v157);
    }

    v158 = *(v46 + 288);
    *(v46 + 664) = 6;
    OUTLINED_FUNCTION_126_1();
    sub_1C5DAA618();
    v159 = swift_allocError();
    sub_1C5DAA5C4();
    OUTLINED_FUNCTION_115_1();
    MEMORY[0x1C6951DD0]();
    v287 = v159;
    swift_willThrow();
    OUTLINED_FUNCTION_13_22();
    v162 = v158;
LABEL_32:
    sub_1C5DAAACC(v162, v160, v161);
    OUTLINED_FUNCTION_17_18();
    v250 = v212;
    v251 = v213;
    v252 = v214;
    v253 = *(v46 + 344);
    v254 = *(v46 + 320);
    v255 = *(v46 + 312);
    v256 = *(v46 + 288);
    v257 = *(v46 + 280);
    v258 = *(v46 + 272);
    v259 = *(v46 + 264);
    v260 = *(v46 + 256);
    v261 = *(v46 + 248);
    v262 = *(v46 + 240);
    v264 = *(v46 + 232);
    v266 = *(v46 + 216);
    v269 = *(v46 + 208);
    logb = *(v46 + 200);
    v276 = *(v46 + 192);
    v278 = *(v46 + 184);
    OUTLINED_FUNCTION_147_0();

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_43_9();

    return v216(v215, v216, v217, v218, v219, v220, v221, v222, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v264, v266, v269, logb, v276, v278, v280, v282, v284, v285, v287, a33, a34, a35, a36, a37, a38);
  }

  v284 = v80;
  v131 = *(v46 + 104);
  OUTLINED_FUNCTION_73_2(*(v46 + 280), *(v46 + 256));
  objc_opt_self();
  OUTLINED_FUNCTION_34_4();
  v132 = swift_dynamicCastObjCClass();
  if (v132)
  {
    v133 = [v132 modelGenericObject];
    if (v133)
    {
      v134 = v133;
      v135 = [v133 identifiers];

      if (v135)
      {
        MEMORY[0x1C6952D20]();
        v136 = OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_108_1(v136);
        v137 = OUTLINED_FUNCTION_46_4();
        v138(v137);

        v139 = v135;
        v140 = sub_1C60162B0();
        v141 = sub_1C6016F30();

        loga = v141;
        v142 = os_log_type_enabled(v140, v141);
        v143 = *(v46 + 376);
        v144 = *(v46 + 328);
        if (v142)
        {
          v263 = v140;
          v145 = *(v46 + 104);
          v275 = v83;
          v146 = OUTLINED_FUNCTION_68_0();
          v268 = v143;
          v147 = swift_slowAlloc();
          v148 = OUTLINED_FUNCTION_21();
          v149 = v85;
          v150 = v148;
          a33 = v148;
          *v146 = *(v149 + 31);
          v265 = v144;
          v152 = *(v145 + 32);
          v151 = *(v145 + 40);

          v153 = sub_1C5C6AB10(v152, v151, &a33);

          *(v146 + 4) = v153;
          *(v146 + 12) = 2114;
          *(v146 + 14) = v139;
          *v147 = v135;
          v154 = v139;
          _os_log_impl(&dword_1C5C61000, v263, loga, "[ALC:%{public}s] - Incoming identifier set: %{public}@", v146, 0x16u);
          sub_1C5CB5700(v147);
          OUTLINED_FUNCTION_4();
          __swift_destroy_boxed_opaque_existential_0(v150);
          OUTLINED_FUNCTION_4();
          v83 = v275;
          OUTLINED_FUNCTION_4();

          OUTLINED_FUNCTION_129_1();
          v156 = v265;
          v155 = v268;
        }

        else
        {

          OUTLINED_FUNCTION_129_1();
          v155 = OUTLINED_FUNCTION_86();
        }

        (v284)(v155, v156);
      }
    }
  }

  v163 = *(v46 + 272);
  v164 = *(v46 + 224);
  __swift_project_boxed_opaque_existential_0(v109, v109[3]);
  v165 = swift_unknownObjectRetain();
  sub_1C5DB1A0C(v165, v163);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_108();
  sub_1C5DAAA70();
  v166 = OUTLINED_FUNCTION_56_1();
  if (__swift_getEnumTagSinglePayload(v166, v167, v164) == 1)
  {
    v168 = *(v46 + 104);
    OUTLINED_FUNCTION_13_22();
    v172 = sub_1C5DAAACC(v169, v170, v171);
    MEMORY[0x1C6952D20](v172);
    v173 = OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_108_1(v173);
    v174 = OUTLINED_FUNCTION_46_4();
    v175(v174);

    v176 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_125_1();
    if (OUTLINED_FUNCTION_137_0())
    {
      OUTLINED_FUNCTION_112();
      v177 = OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_136_2(v177);
      OUTLINED_FUNCTION_69_5(4.8751e-34);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_109_0();
      *(v168 + 4) = v131;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v178, v179, v180, v181, v182, 0xCu);
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_6();
    }

    v183 = OUTLINED_FUNCTION_28_9();
    v284(v183);
    v184 = *(v46 + 272);
    v185 = *(v46 + 256);
    *(v46 + 665) = 6;
    sub_1C5DAA568(0);
    v186 = sub_1C5DAA618();
    v187 = OUTLINED_FUNCTION_92_1(v186);
    v188 = sub_1C5DAA5C4();
    MEMORY[0x1C6951DD0](v46 + 665, 0xD000000000000040, 0x80000001C6050710, MEMORY[0x1E69E7CC0], &type metadata for SmartPlayerItemTransitionError, v188);
    v287 = v187;
    swift_willThrow();
    sub_1C5DAAACC(v184, &qword_1EC1AB760, type metadata accessor for TransitionProvider.TransitionableIdentifier);
    sub_1C5DAAB90(v185, type metadata accessor for TransitionProvider.TransitionableIdentifier);
    v162 = OUTLINED_FUNCTION_85_0();
    v161 = type metadata accessor for TransitionProvider.TransitionableIdentifier;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_73_2(*(v46 + 264), *(v46 + 248));
  v189 = [*(v83 + 48) userIdentity];
  *(v46 + 496) = v189;
  if (!v189)
  {
    v190 = *(v46 + 104);
    MEMORY[0x1C6952D20]();
    v191 = OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_108_1(v191);
    v192 = OUTLINED_FUNCTION_46_4();
    v193(v192);

    v194 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_125_1();
    if (OUTLINED_FUNCTION_137_0())
    {
      OUTLINED_FUNCTION_112();
      v195 = OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_136_2(v195);
      OUTLINED_FUNCTION_69_5(4.8751e-34);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_109_0();
      *(v190 + 4) = v131;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v196, v197, v198, v199, v200, 0xCu);
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_6();
    }

    v201 = OUTLINED_FUNCTION_28_9();
    v284(v201);
    v202 = *(v46 + 288);
    v203 = *(v46 + 272);
    v204 = *(v46 + 248);
    *(v46 + 666) = 7;
    sub_1C5DAA568(0);
    v205 = sub_1C5DAA618();
    v206 = OUTLINED_FUNCTION_92_1(v205);
    v207 = sub_1C5DAA5C4();
    MEMORY[0x1C6951DD0](v46 + 666, 0xD00000000000003ELL, 0x80000001C6050760, MEMORY[0x1E69E7CC0], &type metadata for SmartPlayerItemTransitionError, v207);
    v287 = v206;
    swift_willThrow();
    OUTLINED_FUNCTION_23_13();
    sub_1C5DAAB90(v204, v208);
    OUTLINED_FUNCTION_2_36();
    sub_1C5DAAACC(v203, &qword_1EC1AB760, v209);
    v210 = OUTLINED_FUNCTION_252();
    sub_1C5DAAB90(v210, v211);
    v162 = v202;
    v160 = &qword_1EC1AB760;
    v161 = " transition info";
    goto LABEL_32;
  }

  sub_1C6016CB0();
  v224 = *(v46 + 104);
  sub_1C5CDAF64(v109, v46 + 16);
  __swift_project_boxed_opaque_existential_0((v46 + 16), *(v46 + 40));
  if (*(v224 + 112))
  {
    v225 = 1;
  }

  else
  {
    sub_1C6014AF0();
    v225 = 0;
  }

  v226 = *(v46 + 296);
  v227 = *(v46 + 256);
  v229 = *(v46 + 184);
  v228 = *(v46 + 192);
  v230 = *(v46 + 168);
  v231 = *(v46 + 176);
  v232 = *(v46 + 88);
  v286 = *(v46 + 248);
  v288 = *(v46 + 96);
  v233 = sub_1C6014B20();
  __swift_storeEnumTagSinglePayload(v228, v225, 1, v233);
  sub_1C5DAAB34(v227, v229, type metadata accessor for TransitionProvider.TransitionableIdentifier);
  v234 = *(v230 + 48);
  *(v46 + 656) = v234;
  v280(v229 + v234, v232, v226);
  sub_1C5DAAB34(v286, v231, type metadata accessor for TransitionProvider.TransitionableIdentifier);
  v235 = *(v230 + 48);
  *(v46 + 660) = v235;
  v280(v231 + v235, v288, v226);
  sub_1C6016CB0();
  OUTLINED_FUNCTION_27_15(*(v46 + 184));
  OUTLINED_FUNCTION_108();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v237 = *(v46 + 240);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v46 + 144) + 32))(*(v46 + 160), v237, *(v46 + 136));
    v238 = swift_task_alloc();
    *(v46 + 504) = v238;
    *v238 = v46;
    v238[1] = sub_1C5DA0844;
    OUTLINED_FUNCTION_94_1(*(v46 + 160));
LABEL_42:
    OUTLINED_FUNCTION_43_9();

    return sub_1C5DB1F7C();
  }

  v239 = *v237;
  *(v46 + 528) = v237[1];
  *(v46 + 520) = v239;
  OUTLINED_FUNCTION_27_15(*(v46 + 176));
  OUTLINED_FUNCTION_108();
  v240 = swift_getEnumCaseMultiPayload();
  v241 = *(v46 + 232);
  if (v240 == 1)
  {
    (*(*(v46 + 144) + 32))(*(v46 + 152), v241, *(v46 + 136));
    v242 = swift_task_alloc();
    *(v46 + 536) = v242;
    *v242 = v46;
    OUTLINED_FUNCTION_44_8(v242);
    goto LABEL_42;
  }

  v244 = *v241;
  *(v46 + 560) = v241[1];
  *(v46 + 552) = v244;
  sub_1C6016CB0();
  v245 = *(v46 + 496);
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_14_2();
  *(v46 + 568) = v246;
  *v246 = v247;
  OUTLINED_FUNCTION_16_20(v246);
  OUTLINED_FUNCTION_43_9();

  return MEMORY[0x1EEE5F870](v248);
}

uint64_t sub_1C5DA0844()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  v7 = v6;
  OUTLINED_FUNCTION_30();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_101();
  *v10 = v9;
  v7[64] = v0;

  if (!v0)
  {
    v7[80] = v3;
    v7[81] = v5;
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C5DA0960()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  v7 = v6;
  OUTLINED_FUNCTION_30();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_101();
  *v10 = v9;
  v7[68] = v0;

  if (v0)
  {
  }

  else
  {
    v7[78] = v3;
    v7[79] = v5;
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C5DA0A84()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  *(v3 + 576) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_10();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C60148B0();
    v10 = swift_task_alloc();
    *(v3 + 584) = v10;
    *v10 = v5;
    v10[1] = sub_1C5DA0BF0;

    return MEMORY[0x1EEE5F850]();
  }
}

uint64_t sub_1C5DA0BF0()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  v5 = v4;
  OUTLINED_FUNCTION_30();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_101();
  *v8 = v7;
  v5[74] = v3;
  v5[75] = v0;

  if (v0)
  {

    v9 = OUTLINED_FUNCTION_137_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v5[76] = v12;
    *v12 = v7;
    v12[1] = sub_1C5DA0F80;
    OUTLINED_FUNCTION_31();

    return MEMORY[0x1EEE5F848]();
  }
}

uint64_t sub_1C5DA0DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_81_4();
  v62 = *(v39 + 576);
  v43 = OUTLINED_FUNCTION_3_36();
  sub_1C5DAAB90(v43, v44);
  v45 = OUTLINED_FUNCTION_55_2();
  sub_1C5DAAB90(v45, v46);
  OUTLINED_FUNCTION_4_37();
  sub_1C5DAAACC(v41, v47, v48);

  OUTLINED_FUNCTION_6_28();
  sub_1C5DAAB90(v40, v49);
  OUTLINED_FUNCTION_2_36();
  sub_1C5DAAACC(v38, &qword_1EC1AB760, v50);
  v51 = OUTLINED_FUNCTION_86();
  sub_1C5DAAB90(v51, v52);
  OUTLINED_FUNCTION_58_6();
  __swift_destroy_boxed_opaque_existential_0((v39 + 16));
  OUTLINED_FUNCTION_9_25();

  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_43_9();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v62, a35, a36, a37, a38);
}

uint64_t sub_1C5DA0F80()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 616) = v0;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_74_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5DA10FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_81_4();
  v43 = OUTLINED_FUNCTION_103_1();
  v44(v43);
  v64 = *(v39 + 600);
  v45 = OUTLINED_FUNCTION_3_36();
  sub_1C5DAAB90(v45, v46);
  v47 = OUTLINED_FUNCTION_55_2();
  sub_1C5DAAB90(v47, v48);
  OUTLINED_FUNCTION_4_37();
  sub_1C5DAAACC(v41, v49, v50);

  OUTLINED_FUNCTION_6_28();
  sub_1C5DAAB90(v40, v51);
  OUTLINED_FUNCTION_2_36();
  sub_1C5DAAACC(v38, &qword_1EC1AB760, v52);
  v53 = OUTLINED_FUNCTION_86();
  sub_1C5DAAB90(v53, v54);
  OUTLINED_FUNCTION_58_6();
  __swift_destroy_boxed_opaque_existential_0((v39 + 16));
  OUTLINED_FUNCTION_9_25();

  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_43_9();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v64, a35, a36, a37, a38);
}

uint64_t sub_1C5DA12DC(uint64_t a1)
{
  v4 = *(v1 + 616);
  v5 = *(v1 + 184);
  v6 = *(v1 + 192);
  v7 = *(v1 + 176);
  v8 = OUTLINED_FUNCTION_103_1();
  v9(v8);
  v10 = sub_1C5DAA9FC;
  sub_1C5DAAB90(v7, sub_1C5DAA9FC);
  sub_1C5DAAB90(v5, sub_1C5DAA9FC);
  OUTLINED_FUNCTION_4_37();
  sub_1C5DAAACC(v6, v11, v12);
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  sub_1C6016CB0();
  if (v4)
  {
    OUTLINED_FUNCTION_116_1();
  }

  else
  {
    v13 = *(v1 + 208);
    OUTLINED_FUNCTION_63_3();
    sub_1C5DAAA70();
    v14 = sub_1C60149E0();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      v49 = *(v1 + 288);
      v29 = *(v1 + 272);
      v30 = *(v1 + 248);
      v31 = *(v1 + 256);
      v32 = *(v1 + 208);
      v33 = *(v1 + 216);
      v50 = *(v1 + 200);
      v34 = *(v1 + 80);

      sub_1C5DAAACC(v33, &qword_1EC1AB718, MEMORY[0x1E69E3BD8]);
      OUTLINED_FUNCTION_23_13();
      sub_1C5DAAB90(v30, v35);
      sub_1C5DAAACC(v29, &qword_1EC1AB760, type metadata accessor for TransitionProvider.TransitionableIdentifier);
      sub_1C5DAAB90(v31, 0);
      sub_1C5DAAACC(v49, &qword_1EC1AB760, type metadata accessor for TransitionProvider.TransitionableIdentifier);
      (*(*(v14 - 8) + 32))(v34, v32, v14);
      v36 = OUTLINED_FUNCTION_134_1();
      v37(v36);
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v14);
      swift_beginAccess();
      sub_1C5DAABE8();
      swift_endAccess();

      OUTLINED_FUNCTION_172();
      goto LABEL_9;
    }

    v2 = *(v1 + 472);
    v7 = *(v1 + 480);
    OUTLINED_FUNCTION_8_27();
    v18 = sub_1C5DAAACC(v15, v16, v17);
    MEMORY[0x1C6952D20](v18);
    v19 = OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_108_1(v19);
    v20 = OUTLINED_FUNCTION_108();
    v2(v20);

    v6 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_125_1();
    v21 = OUTLINED_FUNCTION_137_0();
    v10 = *(v1 + 488);
    if (v21)
    {
      OUTLINED_FUNCTION_112();
      v22 = OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_136_2(v22);
      OUTLINED_FUNCTION_69_5(4.8751e-34);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_109_0();
      *(v10 + 4) = v3;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_6();
    }

    v28 = OUTLINED_FUNCTION_28_9();
    v10(v28);
    OUTLINED_FUNCTION_116_1();
    *(v1 + 667) = 8;
    sub_1C5DAA568(0);
    v39 = sub_1C5DAA618();
    v40 = OUTLINED_FUNCTION_92_1(v39);
    v41 = sub_1C5DAA5C4();
    MEMORY[0x1C6951DD0](v1 + 667, 0xD000000000000028, 0x80000001C60507A0, MEMORY[0x1E69E7CC0], &type metadata for SmartPlayerItemTransitionError, v41);
    v4 = v40;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_8_27();
  sub_1C5DAAACC(v2, v42, v43);
  OUTLINED_FUNCTION_23_13();
  sub_1C5DAAB90(v6, v44);
  OUTLINED_FUNCTION_2_36();
  sub_1C5DAAACC(v10, &qword_1EC1AB760, v45);
  sub_1C5DAAB90(v7, v4);
  v46 = OUTLINED_FUNCTION_255();
  sub_1C5DAAACC(v46, v47, v2);
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_147_0();

  OUTLINED_FUNCTION_172();
LABEL_9:

  return v38();
}

uint64_t sub_1C5DA1A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_81_4();
  v43 = OUTLINED_FUNCTION_103_1();
  v44(v43);
  v64 = *(v39 + 616);
  v45 = OUTLINED_FUNCTION_3_36();
  sub_1C5DAAB90(v45, v46);
  v47 = OUTLINED_FUNCTION_55_2();
  sub_1C5DAAB90(v47, v48);
  OUTLINED_FUNCTION_4_37();
  sub_1C5DAAACC(v41, v49, v50);

  OUTLINED_FUNCTION_6_28();
  sub_1C5DAAB90(v40, v51);
  OUTLINED_FUNCTION_2_36();
  sub_1C5DAAACC(v38, &qword_1EC1AB760, v52);
  v53 = OUTLINED_FUNCTION_86();
  sub_1C5DAAB90(v53, v54);
  OUTLINED_FUNCTION_58_6();
  __swift_destroy_boxed_opaque_existential_0((v39 + 16));
  OUTLINED_FUNCTION_9_25();

  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_43_9();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v64, a35, a36, a37, a38);
}

uint64_t sub_1C5DA1C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_81_4();
  (*(*(v39 + 144) + 8))(*(v39 + 152), *(v39 + 136));
  v43 = *(v39 + 632);
  v44 = *(v39 + 544);
  *(v39 + 560) = *(v39 + 624);
  *(v39 + 552) = v43;
  sub_1C6016CB0();
  if (v44)
  {

    v45 = OUTLINED_FUNCTION_3_36();
    sub_1C5DAAB90(v45, v46);
    v47 = OUTLINED_FUNCTION_55_2();
    sub_1C5DAAB90(v47, v48);
    OUTLINED_FUNCTION_4_37();
    sub_1C5DAAACC(v41, v49, v50);

    OUTLINED_FUNCTION_6_28();
    sub_1C5DAAB90(v40, v51);
    OUTLINED_FUNCTION_2_36();
    sub_1C5DAAACC(v38, &qword_1EC1AB760, v52);
    v53 = OUTLINED_FUNCTION_86();
    sub_1C5DAAB90(v53, v54);
    OUTLINED_FUNCTION_58_6();
    __swift_destroy_boxed_opaque_existential_0((v39 + 16));
    OUTLINED_FUNCTION_38_7();

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_43_9();

    return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, v44, a34, a35, a36, a37, a38);
  }

  else
  {
    v64 = *(v39 + 496);
    OUTLINED_FUNCTION_118_0();
    OUTLINED_FUNCTION_14_2();
    *(v39 + 568) = v65;
    *v65 = v66;
    OUTLINED_FUNCTION_16_20(v65);
    OUTLINED_FUNCTION_43_9();

    return MEMORY[0x1EEE5F870](v67);
  }
}

uint64_t sub_1C5DA1E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_81_4();
  (*(v39[18] + 8))(v39[19], v39[17]);
  v62 = v39[68];
  v43 = OUTLINED_FUNCTION_3_36();
  sub_1C5DAAB90(v43, v44);
  v45 = OUTLINED_FUNCTION_55_2();
  sub_1C5DAAB90(v45, v46);
  OUTLINED_FUNCTION_4_37();
  sub_1C5DAAACC(v41, v47, v48);

  OUTLINED_FUNCTION_6_28();
  sub_1C5DAAB90(v40, v49);
  OUTLINED_FUNCTION_2_36();
  sub_1C5DAAACC(v38, &qword_1EC1AB760, v50);
  v51 = OUTLINED_FUNCTION_86();
  sub_1C5DAAB90(v51, v52);
  OUTLINED_FUNCTION_58_6();
  __swift_destroy_boxed_opaque_existential_0(v39 + 2);
  OUTLINED_FUNCTION_9_25();

  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_43_9();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v62, a35, a36, a37, a38);
}

uint64_t sub_1C5DA2060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_81_4();
  (*(*(v38 + 144) + 8))(*(v38 + 160), *(v38 + 136));
  v42 = *(v38 + 648);
  v43 = *(v38 + 512);
  *(v38 + 528) = *(v38 + 640);
  *(v38 + 520) = v42;
  v44 = *(v38 + 224);
  OUTLINED_FUNCTION_27_15(*(v38 + 176));
  OUTLINED_FUNCTION_108();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v46 = *(v38 + 232);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v38 + 144) + 32))(*(v38 + 152), v46, *(v38 + 136));
    v47 = swift_task_alloc();
    *(v38 + 536) = v47;
    *v47 = v38;
    OUTLINED_FUNCTION_44_8(v47);
    OUTLINED_FUNCTION_43_9();

    return sub_1C5DB1F7C();
  }

  else
  {
    v50 = *v46;
    *(v38 + 560) = v46[1];
    *(v38 + 552) = v50;
    sub_1C6016CB0();
    if (v43)
    {

      v51 = OUTLINED_FUNCTION_3_36();
      sub_1C5DAAB90(v51, v52);
      v53 = OUTLINED_FUNCTION_55_2();
      sub_1C5DAAB90(v53, v54);
      OUTLINED_FUNCTION_4_37();
      sub_1C5DAAACC(v40, v55, v56);

      OUTLINED_FUNCTION_6_28();
      sub_1C5DAAB90(v39, v57);
      OUTLINED_FUNCTION_2_36();
      sub_1C5DAAACC(v44, &qword_1EC1AB760, v58);
      v59 = OUTLINED_FUNCTION_86();
      sub_1C5DAAB90(v59, v60);
      OUTLINED_FUNCTION_58_6();
      __swift_destroy_boxed_opaque_existential_0((v38 + 16));
      OUTLINED_FUNCTION_38_7();

      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_43_9();

      return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, v43, a34, a35, a36, a37, a38);
    }

    else
    {
      v69 = *(v38 + 496);
      OUTLINED_FUNCTION_118_0();
      OUTLINED_FUNCTION_14_2();
      *(v38 + 568) = v70;
      *v70 = v71;
      OUTLINED_FUNCTION_16_20(v70);
      OUTLINED_FUNCTION_43_9();

      return MEMORY[0x1EEE5F870](v72);
    }
  }
}

uint64_t sub_1C5DA235C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_81_4();
  (*(v39[18] + 8))(v39[20], v39[17]);
  v62 = v39[64];
  v43 = OUTLINED_FUNCTION_3_36();
  sub_1C5DAAB90(v43, v44);
  v45 = OUTLINED_FUNCTION_55_2();
  sub_1C5DAAB90(v45, v46);
  OUTLINED_FUNCTION_4_37();
  sub_1C5DAAACC(v41, v47, v48);

  OUTLINED_FUNCTION_6_28();
  sub_1C5DAAB90(v40, v49);
  OUTLINED_FUNCTION_2_36();
  sub_1C5DAAACC(v38, &qword_1EC1AB760, v50);
  v51 = OUTLINED_FUNCTION_86();
  sub_1C5DAAB90(v51, v52);
  OUTLINED_FUNCTION_58_6();
  __swift_destroy_boxed_opaque_existential_0(v39 + 2);
  OUTLINED_FUNCTION_9_25();

  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_43_9();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v62, a35, a36, a37, a38);
}

void sub_1C5DA2544(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6988038]) init];
  v3 = [objc_opt_self() audioMixInputParametersWithTrack_];
  [v3 setTrackID_];
  sub_1C5C64D74(0, &qword_1EC1AB520, 0x1E6987F30);
  sub_1C5D96190();
  if (v4)
  {
    v5 = v4;
    [v3 addEffect_];
  }

  sub_1C5D3BEAC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C60311F0;
  *(v6 + 32) = v3;
  sub_1C5C64D74(0, &qword_1EC1AB528, 0x1E6987F28);
  v8 = v3;
  v7 = sub_1C6016AF0();

  [v2 setInputParameters_];

  [a1 setAudioMix_];
}

uint64_t sub_1C5DA26B8(uint64_t a1, double a2)
{
  v4 = v2;
  v92 = a1;
  v89 = type metadata accessor for SmartTransitionParameters(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_146();
  v88 = v8 - v7;
  OUTLINED_FUNCTION_0_56();
  sub_1C5DA4F3C(0, v9, v10, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v11);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78_2();
  sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v90 = v13;
  v91 = v14;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_102();
  v17 = v15 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v87 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v87 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v87 - v25;
  sub_1C5D2D8C8(0);
  v28 = v27;
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_102();
  v32 = v30 - v31;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v36 = MEMORY[0x1EEE9AC00](v35);
  if (*(v4 + 48) != v92)
  {
    v38 = v37;
    MEMORY[0x1C6952D20](v36);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_98_1();
    sub_1C6016250();
    (*(v38 + 8))(v32, v28);

    v39 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_154_0();
    if (OUTLINED_FUNCTION_29_0())
    {
      v40 = OUTLINED_FUNCTION_112();
      v94[0] = OUTLINED_FUNCTION_21();
      *v40 = 136446210;
      v41 = *(v4 + 32);
      v42 = *(v4 + 40);

      v43 = sub_1C5C6AB10(v41, v42, v94);

      *(v40 + 4) = v43;
      OUTLINED_FUNCTION_91_2(&dword_1C5C61000, v44, v45, "[ALC:%{public}s] - Jump in the new item, cancelling transition");
      OUTLINED_FUNCTION_48_6();
      OUTLINED_FUNCTION_4();
    }

    (*(v91 + 8))(v17, v90);
    return 1;
  }

  v92 = v37;
  v46 = v89;
  if (*(v4 + 112) != 1)
  {
    MEMORY[0x1C6952D20](v36);
    OUTLINED_FUNCTION_1();
    v24 = v21;
    OUTLINED_FUNCTION_98_1();
    sub_1C6016250();
    v58 = OUTLINED_FUNCTION_131_1();
    v59(v58);

    v60 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_154_0();
    if (OUTLINED_FUNCTION_29_0())
    {
      v61 = OUTLINED_FUNCTION_112();
      v94[0] = OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_120_0(4.8751e-34);
      v62 = OUTLINED_FUNCTION_18();
      sub_1C5C6AB10(v62, v63, v64);
      OUTLINED_FUNCTION_135_1();

      *(v61 + 4) = v28;
      v67 = "[ALC:%{public}s] - Jump with a previousTransitionOffsetData, cancelling transition";
LABEL_12:
      OUTLINED_FUNCTION_91_2(&dword_1C5C61000, v65, v66, v67);
      OUTLINED_FUNCTION_48_6();
      OUTLINED_FUNCTION_4();
    }

LABEL_13:

    (*(v91 + 8))(v24, v90);
    return 1;
  }

  v47 = sub_1C5D9BCDC();
  if (v48 == 1)
  {
    MEMORY[0x1C6952D20](v47);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_98_1();
    sub_1C6016250();
    v49 = OUTLINED_FUNCTION_45_0();
    v50(v49);

    v51 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_154_0();
    if (OUTLINED_FUNCTION_29_0())
    {
      v52 = OUTLINED_FUNCTION_112();
      v94[0] = OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_120_0(4.8751e-34);
      v53 = OUTLINED_FUNCTION_18();
      sub_1C5C6AB10(v53, v54, v55);
      OUTLINED_FUNCTION_135_1();

      *(v52 + 4) = v28;
      OUTLINED_FUNCTION_91_2(&dword_1C5C61000, v56, v57, "[ALC:%{public}s] - Jump during an ongoing transition, cancelling transition");
      OUTLINED_FUNCTION_48_6();
      OUTLINED_FUNCTION_4();
    }

    (*(v91 + 8))(v26, v90);
    return 1;
  }

  OUTLINED_FUNCTION_27(v4 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_outgoingParameters, v94);
  OUTLINED_FUNCTION_60_6();
  sub_1C5DAAA70();
  v69 = OUTLINED_FUNCTION_99_1();
  if (!__swift_getEnumTagSinglePayload(v69, v70, v46))
  {
    OUTLINED_FUNCTION_10_25();
    v73 = v88;
    sub_1C5DAAB34(v3, v88, v74);
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v3, v75, v76);
    sub_1C6014B10();
    v78 = v77;
    OUTLINED_FUNCTION_5_32();
    v80 = sub_1C5DAAB90(v73, v79);
    if (v78 >= a2 + 0.1)
    {
      return 0;
    }

    MEMORY[0x1C6952D20](v80);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_98_1();
    sub_1C6016250();
    v81 = OUTLINED_FUNCTION_131_1();
    v82(v81);

    v60 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_154_0();
    if (OUTLINED_FUNCTION_29_0())
    {
      v83 = OUTLINED_FUNCTION_112();
      v93 = OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_120_0(4.8751e-34);
      v84 = OUTLINED_FUNCTION_18();
      sub_1C5C6AB10(v84, v85, v86);
      OUTLINED_FUNCTION_135_1();

      *(v83 + 4) = v28;
      v67 = "[ALC:%{public}s] - Jump position passes overlap start, cancelling transition";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_56();
  sub_1C5DAAACC(v3, v71, v72);
  return 0;
}

double *sub_1C5DA2D34(uint64_t a1, double a2)
{
  v83 = a1;
  sub_1C6014B20();
  OUTLINED_FUNCTION_25();
  v78 = v6;
  v79 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v9 = v8 - v7;
  sub_1C6014A50();
  OUTLINED_FUNCTION_25();
  v80 = v11;
  v81 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_146();
  v14 = v13 - v12;
  v15 = sub_1C60149E0();
  OUTLINED_FUNCTION_25();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_10();
  sub_1C5DA4F3C(0, &qword_1EC1AB718, MEMORY[0x1E69E3BD8], MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v19);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v77 - v21;
  v82 = sub_1C6014B60();
  OUTLINED_FUNCTION_25();
  v86 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_102();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v77 - v29;
  type metadata accessor for OverlappingTransitionTimeImpl();
  swift_allocObject();
  sub_1C5DAFD74();
  v87 = v30;
  OUTLINED_FUNCTION_27(v2 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_cachedSmartTransitionData, v88);
  v84 = v2;
  sub_1C5DAAA70();
  v31 = OUTLINED_FUNCTION_56_1();
  if (__swift_getEnumTagSinglePayload(v31, v32, v15))
  {
    OUTLINED_FUNCTION_8_27();
    sub_1C5DAAACC(v22, v33, v34);
    return v87;
  }

  else
  {
    v37 = v78;
    v36 = v79;
    (*(v17 + 16))(v3, v22, v15);
    OUTLINED_FUNCTION_8_27();
    sub_1C5DAAACC(v22, v38, v39);
    sub_1C60149B0();
    (*(v17 + 8))(v3, v15);
    sub_1C6014A30();
    (*(v80 + 8))(v14, v81);
    (*(v86 + 32))(v85, v27, v82);
    sub_1C5C64D74(0, &qword_1ED7DCC30, 0x1E69E58C0);
    v40 = v84;
    v41 = *(v84 + 56);
    v42 = sub_1C60172D0();

    if (v42)
    {
      v35 = v87;
      v87[2] = a2;
      v43 = COERCE_DOUBLE(sub_1C5D6772C());
      if (v44)
      {
        v43 = -1.0;
      }

      v35[3] = v43;
      v45 = sub_1C6014B50();
      v46 = MEMORY[0x1C69515E0](v45);
      v47 = *(v37 + 8);
      v47(v9, v36);
      v48 = a2 - v46;
      v49 = sub_1C6014B40();
      v50 = MEMORY[0x1C69515E0](v49);
      v47(v9, v36);
      if (v48 + v50 < 0.0)
      {
        v51 = 0.0;
      }

      else
      {
        v51 = v48 + v50;
      }

      v35[4] = v51;
      v52 = *(v40 + 72);
      v53 = sub_1C5D6772C();
      v55 = v54;

      v56 = OUTLINED_FUNCTION_300();
      v57(v56);
      v58 = *&v53;
      if (v55)
      {
        v58 = -1.0;
      }
    }

    else
    {
      v59 = sub_1C6014B50();
      v60 = MEMORY[0x1C69515E0](v59);
      v61 = *(v37 + 8);
      v61(v9, v36);
      v62 = v60 + a2;
      v63 = sub_1C6014B40();
      v64 = MEMORY[0x1C69515E0](v63);
      v61(v9, v36);
      if (v62 - v64 < 0.0)
      {
        v65 = 0.0;
      }

      else
      {
        v65 = v62 - v64;
      }

      v35 = v87;
      v87[2] = v65;
      v66 = *(v40 + 56);
      v67 = sub_1C5D6772C();
      v69 = v68;

      v70 = *&v67;
      if (v69)
      {
        v70 = -1.0;
      }

      v35[3] = v70;
      v35[4] = a2;
      v71 = sub_1C5D6772C();
      v73 = v72;
      v74 = OUTLINED_FUNCTION_300();
      v75(v74);
      v58 = *&v71;
      if (v73)
      {
        v58 = -1.0;
      }
    }

    v35[5] = v58;
  }

  return v35;
}

uint64_t sub_1C5DA3300()
{
  OUTLINED_FUNCTION_248();
  sub_1C6016C10();
  *(v0 + 32) = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C5DA337C()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 24);

  *(v0 + 40) = [v1 asset];
  v2 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5DA33F4()
{
  OUTLINED_FUNCTION_13();
  sub_1C5DAA45C(0);
  v1 = sub_1C6015270();
  v0[6] = v1;
  sub_1C5CFC4D8(0);
  v2 = sub_1C6015280();
  v0[7] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_2();
  v0[8] = v3;
  *v3 = v4;
  v3[1] = sub_1C5DA34E8;

  return MEMORY[0x1EEE68148](v0 + 2, v0 + 10, v0 + 10, v1, v2, v0 + 10, 0, 0);
}

uint64_t sub_1C5DA34E8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_101();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C5DA3660()
{
  OUTLINED_FUNCTION_247();
  v3 = v0;
  sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v42 = v5;
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_102();
  v41 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_64_6();
  sub_1C5DA4F3C(0, &qword_1EC1AB720, v2, MEMORY[0x1E69E6720]);
  v10 = OUTLINED_FUNCTION_13_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_102();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - v15;
  v17 = OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_outgoingParameters;
  OUTLINED_FUNCTION_82_2(v0 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_outgoingParameters);
  sub_1C5DAAA70();
  v18 = type metadata accessor for SmartTransitionParameters(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v18);
  sub_1C5DAAACC(v16, &qword_1EC1AB720, v2);
  if (EnumTagSinglePayload == 1 && (OUTLINED_FUNCTION_27(v3 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_incomingParameters, &v45), OUTLINED_FUNCTION_67_4(), sub_1C5DAAA70(), v20 = __swift_getEnumTagSinglePayload(v14, 1, v18), sub_1C5DAAACC(v14, &qword_1EC1AB720, &qword_1EC1AB720), v20 == 1))
  {
    v21 = v41;
    OUTLINED_FUNCTION_1_48();
    sub_1C60162C0();

    v22 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_75_2();

    if (os_log_type_enabled(v22, v17))
    {
      OUTLINED_FUNCTION_112();
      v44 = OUTLINED_FUNCTION_53_5();
      *v1 = 136446210;
      v24 = *(v3 + 32);
      v23 = *(v3 + 40);

      v25 = sub_1C5C6AB10(v24, v23, &v44);

      *(v1 + 4) = v25;
      _os_log_impl(&dword_1C5C61000, v22, v17, "[ALC:%{public}s] - Skipping transition cancellation - no transition has been applied to the player items", v1, 0xCu);
      OUTLINED_FUNCTION_48_6();
      OUTLINED_FUNCTION_6();
    }

    (*(v42 + 8))(v21, v43);
  }

  else
  {
    v41 = v18;
    OUTLINED_FUNCTION_1_48();
    sub_1C60162C0();

    v26 = sub_1C60162B0();
    v27 = sub_1C6016F30();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_112();
      v44 = OUTLINED_FUNCTION_21();
      *v28 = 136446210;

      v29 = OUTLINED_FUNCTION_300();
      v32 = sub_1C5C6AB10(v29, v30, v31);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1C5C61000, v26, v27, "[ALC:%{public}s] - Tearing down transition", v28, 0xCu);
      OUTLINED_FUNCTION_48_6();
      OUTLINED_FUNCTION_4();
    }

    (*(v42 + 8))(v1, v43);
    v33 = *(v3 + 56);
    sub_1C5DA3AF4();

    v34 = *(v3 + 72);
    sub_1C5DA43CC();

    objc_opt_self();
    OUTLINED_FUNCTION_34_4();
    v35 = swift_dynamicCastObjCClass();
    v36 = v41;
    if (v35)
    {
      [v35 clearPlannedContentItemTransitionInfo];
    }

    v37 = OUTLINED_FUNCTION_99_1();
    __swift_storeEnumTagSinglePayload(v37, v38, 1, v36);
    OUTLINED_FUNCTION_144_0();
    OUTLINED_FUNCTION_66_7();
    sub_1C5DAABE8();
    swift_endAccess();
    v39 = OUTLINED_FUNCTION_99_1();
    __swift_storeEnumTagSinglePayload(v39, v40, 1, v36);
    OUTLINED_FUNCTION_144_0();
    sub_1C5DAABE8();
    swift_endAccess();
    *(v3 + 137) = 0;
    *(v3 + 139) = 0;
  }

  OUTLINED_FUNCTION_237();
}

void sub_1C5DA3AF4()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v99 = sub_1C6014B20();
  OUTLINED_FUNCTION_25();
  v98 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v97 = v7 - v6;
  v8 = sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_102();
  v100 = v12 - v13;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v96 = v89 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v89 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v89 - v20;
  sub_1C5D9BCDC();
  OUTLINED_FUNCTION_128_0();
  if (v23)
  {
    v24 = v22 == 4;
  }

  else
  {
    v24 = 0;
  }

  if (!v24)
  {
    sub_1C5DA2544(v3);
    v26 = *(MEMORY[0x1E6960C70] + 8);
    v27 = *(MEMORY[0x1E6960C70] + 12);
    v28 = *(MEMORY[0x1E6960C70] + 16);
    v102[0] = *MEMORY[0x1E6960C70];
    v25 = v102[0];
    v102[1] = __PAIR64__(v27, v26);
    v102[2] = v28;
    [v3 setAdvanceTimeForOverlappedPlayback_];
    [v3 forwardPlaybackEndTime];
    v29 = OUTLINED_FUNCTION_133_1();
    v94 = v26;
    v93 = v27;
    v31 = OUTLINED_FUNCTION_121_0(v29, v30);
    v95 = v25;
    if (v31)
    {
      v92 = v8;
      OUTLINED_FUNCTION_1_48();
      sub_1C60162C0();

      v32 = v3;
      v33 = sub_1C60162B0();
      v34 = sub_1C6016F30();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_68_0();
        v91 = v10;
        v36 = v35;
        v89[0] = OUTLINED_FUNCTION_119_0();
        v102[0] = v89[0];
        *v36 = 136446466;
        v89[1] = v28;
        v37 = v32;
        OUTLINED_FUNCTION_140_1();
        v38 = sub_1C5C6AB10(v32, v3, v102);

        *(v36 + 4) = v38;
        *(v36 + 12) = 2082;
        v39 = sub_1C5DBCDF8();
        v41 = sub_1C5C6AB10(v39, v40, v102);
        v32 = v37;

        *(v36 + 14) = v41;
        v3 = v90;
        _os_log_impl(&dword_1C5C61000, v33, v34, "[ALC:%{public}s] - forwardPlaybackEndTime had been set on %{public}s - resetting to .invalid", v36, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_28();
        v10 = v91;
        OUTLINED_FUNCTION_4();
      }

      v8 = v92;
      (*(v10 + 8))(v21, v92);
      v102[0] = v95;
      OUTLINED_FUNCTION_61_3();
      [v32 v42];
    }

    [v3 overlappedPlaybackEndTime];
    v43 = OUTLINED_FUNCTION_133_1();
    if (OUTLINED_FUNCTION_121_0(v43, v44))
    {
      v91 = v10;
      OUTLINED_FUNCTION_1_48();
      sub_1C60162C0();

      v45 = v3;
      v46 = sub_1C60162B0();
      v47 = sub_1C6016F30();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_68_0();
        v92 = v8;
        v49 = v48;
        v102[0] = OUTLINED_FUNCTION_119_0();
        *v49 = 136446466;
        OUTLINED_FUNCTION_140_1();
        v50 = sub_1C5C6AB10(v19, v3, v102);

        *(v49 + 4) = v50;
        *(v49 + 12) = 2082;
        v51 = sub_1C5DBCDF8();
        v53 = sub_1C5C6AB10(v51, v52, v102);

        *(v49 + 14) = v53;
        v3 = v90;
        _os_log_impl(&dword_1C5C61000, v46, v47, "[ALC:%{public}s] - overlappedPlaybackEndTime had been set on %{public}s - resetting to .invalid", v49, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_4();
        v8 = v92;
        OUTLINED_FUNCTION_4();
      }

      v10 = v91;
      (*(v91 + 8))(v19, v8);
      v102[0] = v95;
      OUTLINED_FUNCTION_61_3();
      [v45 v54];
    }
  }

  sub_1C5D9BCDC();
  OUTLINED_FUNCTION_128_0();
  if (v23)
  {
    v56 = v55 == 4;
  }

  else
  {
    v56 = 0;
  }

  if (!v56)
  {
    v57 = v10;
    v58 = *(v1 + 56);
    sub_1C5DB1894();
    v60 = v59;

    if (v60 & 1) != 0 || (v61 = v97, sub_1C6014AF0(), sub_1C5DAB728(v102), (*(v98 + 8))(v61, v99), (v103))
    {
      v62 = v100;
      OUTLINED_FUNCTION_1_48();
      sub_1C60162C0();

      v63 = v3;
      v64 = sub_1C60162B0();
      v65 = sub_1C6016F30();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = OUTLINED_FUNCTION_68_0();
        v104[0] = OUTLINED_FUNCTION_119_0();
        *v66 = 136446466;
        v67 = *(v1 + 32);
        v68 = *(v1 + 40);

        sub_1C5C6AB10(v67, v68, v104);

        v70 = OUTLINED_FUNCTION_152_0(v69);
        v72 = sub_1C5C6AB10(v70, v71, v104);

        *(v66 + 14) = v72;
        OUTLINED_FUNCTION_151_0(&dword_1C5C61000, v73, v74, "[ALC:%{public}s] - Resetting speedRamps to nil on outgoingItem: %{public}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_4();

        (*(v57 + 8))(v100, v8);
      }

      else
      {

        (*(v57 + 8))(v62, v8);
      }
    }

    else
    {
      memcpy(v104, v102, 0x60uLL);
      v75 = v96;
      OUTLINED_FUNCTION_1_48();
      sub_1C60162C0();

      v76 = v3;
      v77 = sub_1C60162B0();
      v78 = sub_1C6016F30();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = OUTLINED_FUNCTION_68_0();
        v101 = OUTLINED_FUNCTION_119_0();
        *v79 = 136446466;
        v80 = *(v1 + 32);
        v81 = *(v1 + 40);

        sub_1C5C6AB10(v80, v81, &v101);

        v83 = OUTLINED_FUNCTION_152_0(v82);
        v85 = sub_1C5C6AB10(v83, v84, &v101);

        *(v79 + 14) = v85;
        OUTLINED_FUNCTION_151_0(&dword_1C5C61000, v86, v87, "[ALC:%{public}s] - Resetting speedRamps to previous shell on outgoingItem: %{public}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_4();

        (*(v57 + 8))(v96, v8);
      }

      else
      {

        (*(v57 + 8))(v75, v8);
      }

      sub_1C5DA4F3C(0, &qword_1EC1AAE50, type metadata accessor for CMTimeMapping, MEMORY[0x1E69E6F90]);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_1C60311E0;
      memcpy((v88 + 32), v104, 0x60uLL);
    }

    sub_1C6016E90();
  }

  OUTLINED_FUNCTION_237();
}

void sub_1C5DA43CC()
{
  OUTLINED_FUNCTION_247();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_102();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_104_0();
  sub_1C5DA2544(v4);
  sub_1C5D9BCDC();
  OUTLINED_FUNCTION_128_0();
  if (v14)
  {
    v15 = v13 == 4;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    v70 = v11;
    v72 = v7;
    OUTLINED_FUNCTION_1_48();
    sub_1C60162C0();

    v16 = v4;
    v17 = sub_1C60162B0();
    v18 = sub_1C6016F30();

    if (os_log_type_enabled(v17, v18))
    {
      v68 = v5;
      v19 = OUTLINED_FUNCTION_68_0();
      v75 = OUTLINED_FUNCTION_119_0();
      *v19 = 136446466;
      v20 = *(v0 + 32);

      v21 = OUTLINED_FUNCTION_85_0();
      sub_1C5C6AB10(v21, v22, v23);
      OUTLINED_FUNCTION_155_0();
      *(v19 + 4) = v20;
      *(v19 + 12) = 2082;
      v24 = sub_1C5DBCDF8();
      v26 = sub_1C5C6AB10(v24, v25, &v75);

      *(v19 + 14) = v26;
      OUTLINED_FUNCTION_149_1(&dword_1C5C61000, v27, v28, "[ALC:%{public}s] - Resetting speedRamps to nil on incomingItem: %{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4();
      v5 = v68;
      OUTLINED_FUNCTION_4();
    }

    v7 = v72;
    (*(v72 + 8))(v1, v5);
    sub_1C6016E90();
    v11 = v70;
  }

  if (MSVDeviceOSIsInternalInstall() && (v29 = [objc_opt_self() standardUserDefaults], v30 = sub_1C6016900(), v31 = objc_msgSend(v29, sel_BOOLForKey_, v30), v29, v30, v31))
  {
    v32 = swift_allocObject();
    *(v32 + 16) = v2;
    *(v32 + 24) = v4;

    v33 = v4;
    v34 = 0;
    v35 = sub_1C5DAA454;
  }

  else
  {
    v35 = 0;
    v32 = 0;
    v34 = 1;
  }

  if ((*(v2 + 138) & 1) != 0 || ((sub_1C5D9BCDC(), OUTLINED_FUNCTION_128_0(), v14) ? (v37 = v36 == 4) : (v37 = 0), v37))
  {
    sub_1C5C74C18(v35, v32);
  }

  else
  {
    v66 = v34;
    v73 = v7;
    OUTLINED_FUNCTION_1_48();
    sub_1C60162C0();

    v38 = v4;
    v39 = sub_1C60162B0();
    v40 = v11;
    v41 = sub_1C6016F30();

    v67 = v38;
    if (os_log_type_enabled(v39, v41))
    {
      v69 = v5;
      v42 = OUTLINED_FUNCTION_68_0();
      v75 = OUTLINED_FUNCTION_119_0();
      *v42 = 136446466;
      v43 = *(v2 + 32);

      v44 = OUTLINED_FUNCTION_85_0();
      sub_1C5C6AB10(v44, v45, v46);
      OUTLINED_FUNCTION_155_0();
      *(v42 + 4) = v43;
      *(v42 + 12) = 2082;
      v47 = sub_1C5DBCDF8();
      v49 = sub_1C5C6AB10(v47, v48, &v75);

      *(v42 + 14) = v49;
      OUTLINED_FUNCTION_149_1(&dword_1C5C61000, v50, v51, "[ALC:%{public}s] - Attempting to seek to 0.0 on incomingItem: %{public}s due to cancellation prior to pivot point");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();

      v52 = (*(v73 + 8))(v40, v69);
    }

    else
    {

      v53 = OUTLINED_FUNCTION_134_1();
      v52 = v55(v53, v54);
    }

    v52.n128_u64[0] = 0;
    v74 = sub_1C5D67CC0(v52);
    v57 = v56;
    v59 = v58;
    v60 = HIDWORD(v56);
    v61 = *MEMORY[0x1E6960CC0];
    v63 = *(MEMORY[0x1E6960CC0] + 8);
    v62 = *(MEMORY[0x1E6960CC0] + 12);
    v64 = *(MEMORY[0x1E6960CC0] + 16);
    if (v66)
    {
      v65 = 0;
    }

    else
    {
      v79 = v35;
      v80 = v32;
      v75 = MEMORY[0x1E69E9820];
      v71 = HIDWORD(v56);
      v76 = 1107296256;
      v77 = sub_1C5DBCF1C;
      v78 = &block_descriptor_18;
      v65 = _Block_copy(&v75);

      LODWORD(v60) = v71;
    }

    v75 = v74;
    v76 = __PAIR64__(v60, v57);
    v77 = v59;
    v84 = v64;
    v85 = v61;
    v86 = v63;
    v87 = v62;
    v88 = v64;
    v81 = v61;
    v82 = v63;
    v83 = v62;
    [v67 seekToTime:&v75 toleranceBefore:&v85 toleranceAfter:&v81 completionHandler:v65];
    sub_1C5C74C18(v35, v32);
    _Block_release(v65);
  }

  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5DA4904(char a1, uint64_t a2, void *a3)
{
  v6 = sub_1C60162D0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C60162C0();

  v10 = a3;
  v11 = sub_1C60162B0();
  v12 = sub_1C6016F30();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136446722;
    v16 = *(a2 + 32);
    v17 = *(a2 + 40);

    v18 = sub_1C5C6AB10(v16, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    if (a1)
    {
      v19 = 0x6564656563637553;
    }

    else
    {
      v19 = 0x64656C696146;
    }

    if (a1)
    {
      v20 = 0xE900000000000064;
    }

    else
    {
      v20 = 0xE600000000000000;
    }

    v21 = sub_1C5C6AB10(v19, v20, &v27);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2082;
    v22 = sub_1C5DBCDF8();
    v24 = sub_1C5C6AB10(v22, v23, &v27);

    *(v14 + 24) = v24;
    _os_log_impl(&dword_1C5C61000, v11, v12, "[ALC:%{public}s] - %{public}s to seek to 0.0 on incomingItem: %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v15, -1, -1);
    MEMORY[0x1C6956920](v14, -1, -1);

    return (*(v7 + 8))(v9, v26);
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1C5DA4BB4()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_8_27();
  sub_1C5DAAACC(v0 + v1, v2, v3);
  sub_1C5C96DF0(v0 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_delegate);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionProvider));
  OUTLINED_FUNCTION_20_20();
  sub_1C5DAAB90(v0 + v4, v5);

  OUTLINED_FUNCTION_66_7();
  sub_1C5DAAACC(v0 + v6, &qword_1EC1AB720, v7);
  OUTLINED_FUNCTION_132_0();
  sub_1C5DAAACC(v8, v9, v10);
  return v0;
}

uint64_t sub_1C5DA4CA8()
{
  sub_1C5DA4BB4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for SmartPlayerItemTransition(uint64_t a1)
{
  result = qword_1EC1A9048;
  if (!qword_1EC1A9048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5DA4D54(uint64_t a1)
{
  sub_1C5DA4F3C(319, &qword_1EC1AB718, MEMORY[0x1E69E3BD8], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PlayerItemTransitionProvided(319);
    if (v2 <= 0x3F)
    {
      sub_1C5DA4F3C(319, &qword_1EC1AB720, type metadata accessor for SmartTransitionParameters, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C5DA4F3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *_s17MediaPlaybackCore43SmartPlayerItemTransitionSetupFailureReasonOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C5DA5080()
{
  result = qword_1EC1AB728;
  if (!qword_1EC1AB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB728);
  }

  return result;
}

uint64_t sub_1C5DA512C()
{
  v3 = sub_1C6014B20();
  OUTLINED_FUNCTION_25();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_146();
  v9 = v8 - v7;
  v10 = type metadata accessor for SmartTransitionParameters(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_64_6();
  sub_1C5DA4F3C(0, &qword_1EC1AB720, v2, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v12);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26[-v14 - 8];
  OUTLINED_FUNCTION_27(v0 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_incomingParameters, v26);
  sub_1C5DAAA70();
  if (__swift_getEnumTagSinglePayload(v15, 1, v10))
  {
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v15, v16, v17);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_25();
    sub_1C5DAAB34(v15, v1, v19);
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v15, v20, v21);
    (*(v5 + 16))(v9, v1 + *(v10 + 24), v3);
    OUTLINED_FUNCTION_5_32();
    sub_1C5DAAB90(v1, v22);
    sub_1C6014B10();
    v24 = v23;
    (*(v5 + 8))(v9, v3);
    return v24;
  }
}

void sub_1C5DA537C(uint64_t a1)
{
  OUTLINED_FUNCTION_153_0();
  v6 = v5;
  v7 = type metadata accessor for SmartTransitionParameters(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_67_4();
  sub_1C5DA4F3C(0, &qword_1EC1AB720, v4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v9);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_82_2(v1 + *v6);
  sub_1C5DAAA70();
  v11 = OUTLINED_FUNCTION_99_1();
  if (__swift_getEnumTagSinglePayload(v11, v12, v7))
  {
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v3, v13, v14);
  }

  else
  {
    sub_1C5DAAB34(v3, v2, type metadata accessor for SmartTransitionParameters);
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v3, v15, v16);
    OUTLINED_FUNCTION_5_32();
    sub_1C5DAAB90(v2, v17);
  }

  OUTLINED_FUNCTION_146_0();
}

double sub_1C5DA5520@<D0>(uint64_t a1@<X8>)
{
  sub_1C5D9BCC4(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1C5DA55B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C5CBCD24;

  return sub_1C5D9C50C();
}

BOOL sub_1C5DA56B8()
{
  v1 = v0;
  sub_1C5DA4F3C(0, &qword_1EC1AB720, type metadata accessor for SmartTransitionParameters, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for SmartTransitionParameters(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1C5DAAA70();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C5DAAACC(v4, &qword_1EC1AB720, type metadata accessor for SmartTransitionParameters);
    return 0;
  }

  sub_1C5DAAD4C(v4, v7, type metadata accessor for SmartTransitionParameters);
  v8 = [*(v1 + 56) timebase];
  if (!v8)
  {
    sub_1C5DAAB90(v7, type metadata accessor for SmartTransitionParameters);
    return 0;
  }

  v9 = v8;
  sub_1C6016EC0();

  if (*(v1 + 137))
  {
    v10 = 1;
  }

  else
  {
    v11 = sub_1C6017220();
    sub_1C6014B10();
    v10 = v12 <= v11;
  }

  sub_1C5DAAB90(v7, type metadata accessor for SmartTransitionParameters);
  return v10;
}

uint64_t sub_1C5DA5900()
{
  v1 = sub_1C6014B20();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C6014B60();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6014A50();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1C5DA4F3C(0, &qword_1EC1AB718, MEMORY[0x1E69E3BD8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_1C60149E0();
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5DA4F3C(0, &qword_1EC1AB720, type metadata accessor for SmartTransitionParameters, v7);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  swift_beginAccess();
  sub_1C5DAAA70();
  v19 = type metadata accessor for SmartTransitionParameters(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v19);
  sub_1C5DAAACC(v18, &qword_1EC1AB720, type metadata accessor for SmartTransitionParameters);
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  sub_1C5DAAA70();
  v21 = __swift_getEnumTagSinglePayload(v16, 1, v19);
  sub_1C5DAAACC(v16, &qword_1EC1AB720, type metadata accessor for SmartTransitionParameters);
  if (v21 == 1)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  sub_1C5DAAA70();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    v23 = v46;
    v22 = v47;
    (*(v47 + 32))(v46, v10, v11);
    if (*(v0 + 138))
    {
      goto LABEL_6;
    }

    v30 = [*(v0 + 56) timebase];
    if (v30)
    {
      v31 = v30;
      sub_1C6016EC0();

      v26 = sub_1C6017220();
      v32 = v37;
      sub_1C60149B0();
      v28 = v40;
      sub_1C60149F0();
      (*(v38 + 8))(v32, v39);
      v29 = v43;
      sub_1C6014B50();
      goto LABEL_10;
    }

    if (*(v0 + 138) == 1)
    {
LABEL_6:
      v24 = [*(v0 + 72) timebase];
      if (v24)
      {
        v25 = v24;
        sub_1C6016EC0();

        v26 = sub_1C6017220();
        v27 = v37;
        sub_1C60149B0();
        v28 = v40;
        sub_1C60149F0();
        (*(v38 + 8))(v27, v39);
        v29 = v43;
        sub_1C6014B40();
LABEL_10:
        (*(v41 + 8))(v28, v42);
        sub_1C6014B10();
        v34 = v33;
        (*(v44 + 8))(v29, v45);
        (*(v22 + 8))(v23, v11);
        *&result = v34 - v26;
        return result;
      }
    }

    (*(v22 + 8))(v23, v11);
    goto LABEL_13;
  }

  sub_1C5DAAACC(v10, &qword_1EC1AB718, MEMORY[0x1E69E3BD8]);
LABEL_13:
  *&result = 0.0;
  return result;
}

uint64_t sub_1C5DA5F80(uint64_t a1)
{
  v2[181] = v1;
  v2[175] = a1;
  v3 = sub_1C6014A50();
  v2[187] = v3;
  v2[193] = *(v3 - 8);
  v2[199] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5DA6044, 0, 0);
}

uint64_t sub_1C5DA6044()
{
  OUTLINED_FUNCTION_23();
  sub_1C6016CB0();

  sub_1C5DAA6F4(0);
  OUTLINED_FUNCTION_100_1(v0 + 16, v1, v2, &unk_1C60409C8);

  OUTLINED_FUNCTION_100_1(v0 + 656, v3, v4, &unk_1C60409D8);
  sub_1C6016CB0();
  *(v0 + 1640) = 0;
  v5 = *(v0 + 1448);
  v6 = sub_1C60149B0();
  v7 = MEMORY[0x1C69514E0](v6);
  v8 = OUTLINED_FUNCTION_252();
  v9(v8);
  *(v5 + 88) = v7;

  return MEMORY[0x1EEE6DEC0](v0 + 16);
}

uint64_t sub_1C5DA6200()
{
  *(v1 + 1688) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 656, v1 + 1368, sub_1C5DA6668, v1 + 1504);
  }

  else
  {
    return OUTLINED_FUNCTION_0_2(sub_1C5DA623C);
  }
}

uint64_t sub_1C5DA623C()
{
  OUTLINED_FUNCTION_248();
  *(v0 + 1736) = sub_1C6017220();

  return MEMORY[0x1EEE6DEC0](v0 + 656);
}

uint64_t sub_1C5DA62B0()
{
  *(v1 + 1784) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 656, v1 + 1368, sub_1C5DA6710, v1 + 1648);
  }

  else
  {
    return OUTLINED_FUNCTION_0_2(sub_1C5DA62EC);
  }
}

uint64_t sub_1C5DA62EC()
{
  OUTLINED_FUNCTION_248();
  *(v0 + 1832) = sub_1C6017220();
  sub_1C6016C10();
  *(v0 + 1880) = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C5DA637C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[229];
  v2 = *(v0 + 223);
  v3 = v0[217];
  v4 = *(v0 + 181);
  v5 = *(v0 + 175);

  sub_1C5DA6BDC(v4, v5, v3, v1);
  *(v0 + 241) = v2;
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C5DA6494()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_123_1();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DA6560()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_123_1();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DA6608()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_123_1();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DA66B0()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_123_1();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DA6758()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_123_1();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DA67B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C5DA67D8, 0, 0);
}

uint64_t sub_1C5DA67D8()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0[3] + 56);
  v0[4] = v1;
  v2 = v1;
  v3 = OUTLINED_FUNCTION_118_0();
  v0[5] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_75_5(v3);

  return sub_1C5DA32E8(v4);
}

uint64_t sub_1C5DA686C()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_8_0();
  v11 = v10;
  OUTLINED_FUNCTION_30();
  *v12 = v11;
  v13 = *v1;
  OUTLINED_FUNCTION_101();
  *v14 = v13;
  *(v11 + 48) = v0;

  if (!v0)
  {

    *(v11 + 56) = v5;
    *(v11 + 64) = v3;
    *(v11 + 72) = v7;
    *(v11 + 80) = v9;
  }

  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C5DA698C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C5DA69AC, 0, 0);
}

uint64_t sub_1C5DA69AC()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0[3] + 72);
  v0[4] = v1;
  v2 = v1;
  v3 = OUTLINED_FUNCTION_118_0();
  v0[5] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_75_5(v3);

  return sub_1C5DA32E8(v4);
}

uint64_t sub_1C5DA6A40()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_8_0();
  v11 = v10;
  OUTLINED_FUNCTION_30();
  *v12 = v11;
  v13 = *v1;
  OUTLINED_FUNCTION_101();
  *v14 = v13;
  *(v11 + 48) = v0;

  if (!v0)
  {

    *(v11 + 56) = v5;
    *(v11 + 64) = v3;
    *(v11 + 72) = v7;
    *(v11 + 80) = v9;
  }

  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C5DA6B60()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[2];
  *v4 = v0[10];
  v4[1] = v1;
  v4[2] = v3;
  v4[3] = v2;
  return OUTLINED_FUNCTION_54_5();
}

uint64_t sub_1C5DA6B80()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5DA6BDC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v37 = a2;
  v8 = sub_1C6014AE0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C60162D0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C6016CB0();
  if (!v4)
  {
    v34 = 0;
    v35 = v9;
    v36 = v8;
    sub_1C60162C0();

    v17 = sub_1C60162B0();
    v18 = sub_1C6016F30();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v32 = v19;
      v33 = swift_slowAlloc();
      v38 = v33;
      *v19 = 136446210;
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);

      v22 = sub_1C5C6AB10(v21, v20, &v38);

      v23 = v32;
      *(v32 + 1) = v22;
      _os_log_impl(&dword_1C5C61000, v17, v18, "[ALC:%{public}s] - Apply smart transition to player items", v23, 0xCu);
      v24 = v33;
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1C6956920](v24, -1, -1);
      MEMORY[0x1C6956920](v23, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    v25 = *(a1 + 56);
    v26 = v37;
    sub_1C60149A0();
    v27 = sub_1C60149D0();
    sub_1C5DA6F4C(v25, 1, v11, v27, a3);

    v28 = v36;
    v29 = *(v35 + 8);
    v29(v11, v36);
    v30 = *(a1 + 72);
    sub_1C6014990();
    v31 = sub_1C60149C0();
    sub_1C5DA6F4C(v30, 0, v11, v31, a4);

    v29(v11, v28);
    sub_1C5DA85F4(v26);
    return sub_1C6016CB0();
  }

  return result;
}

uint64_t sub_1C5DA6F4C(void (*a1)(void, void), char a2, uint64_t a3, char *a4, double a5)
{
  v211 = a4;
  v219 = a3;
  v213 = a1;
  v210 = sub_1C6014AE0();
  v206 = *(v210 - 8);
  v7 = MEMORY[0x1EEE9AC00](v210);
  v205 = (&v197 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v203 = &v197 - v9;
  v10 = sub_1C60162D0();
  v217 = *(v10 - 8);
  v218 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v208 = &v197 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v200 = &v197 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v201 = &v197 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v209 = &v197 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v199 = &v197 - v19;
  v20 = MEMORY[0x1E69E6720];
  sub_1C5DA4F3C(0, &qword_1EC1AB720, type metadata accessor for SmartTransitionParameters, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v197 - v22;
  sub_1C5DA4F3C(0, &qword_1EC1AB750, MEMORY[0x1E69E3C00], v20);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v197 - v25;
  v27 = sub_1C6014B20();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v202 = (&v197 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v29);
  v207 = &v197 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v197 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v198 = &v197 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v197 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v197 - v41;
  v43 = type metadata accessor for SmartTransitionParameters(0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v197 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = v27;
  v214 = v45;
  v212 = v28;
  if (a2)
  {
    v204 = v35;
    sub_1C6014A90();
    sub_1C6014AB0();
    v46 = *(v28 + 16);
    v206 = v42;
    v46(v45, v42, v27);
    v47 = v43[5];
    sub_1C6014A80();
    sub_1C6014AA0();
    sub_1C6014AC0();
    v49 = v48;
    v208 = v26;
    sub_1C5DAAA70();
    *&v45[v43[7]] = v49;
    sub_1C5DAAB34(v45, v23, type metadata accessor for SmartTransitionParameters);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v43);
    v50 = v215;
    swift_beginAccess();
    sub_1C5DAABE8();
    swift_endAccess();
    v51 = &v45[v47];
    v52 = v216;
    v205 = v46;
    v53 = (v46)(v40, v51, v216);
    v54 = MEMORY[0x1C69515E0](v53);
    v55 = v50;
    v56 = v213;
    v57 = v40;
    v210 = v40;
    v58 = v209;
    v59 = v207;
    if (a5 + 0.1 < v54)
    {
      sub_1C6014B10();
      if (a5 + 0.1 < v60)
      {
        sub_1C60162C0();
        v61 = v205;
        v205(v198, v57, v52);
        v62 = v204;
        v61(v204, v57, v52);

        v63 = v56;
        v64 = sub_1C60162B0();
        v65 = sub_1C6016F30();

        LODWORD(v203) = v65;
        v66 = os_log_type_enabled(v64, v65);
        v67 = v52;
        if (v66)
        {
          v68 = v62;
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          aBlock = v70;
          *v69 = 136447234;
          v202 = v64;
          v71 = *(v55 + 32);
          v72 = *(v55 + 40);

          v73 = sub_1C5C6AB10(v71, v72, &aBlock);

          *(v69 + 4) = v73;
          *(v69 + 12) = 2050;
          v74 = v198;
          sub_1C6014B10();
          v76 = v75;
          v77 = *(v212 + 8);
          v77(v74, v67);
          *(v69 + 14) = v76;
          *(v69 + 22) = 2082;
          v78 = sub_1C5DBCDF8();
          v80 = sub_1C5C6AB10(v78, v79, &aBlock);

          *(v69 + 24) = v80;
          *(v69 + 32) = 2050;
          v82 = MEMORY[0x1C69515E0](v81);
          v77(v68, v67);
          v55 = v215;
          *(v69 + 34) = v82;
          *(v69 + 42) = 2050;
          *(v69 + 44) = a5;
          v83 = v202;
          _os_log_impl(&dword_1C5C61000, v202, v203, "[ALC:%{public}s] - Setting forwardPlaybackEndTime to %{public}f on %{public}s due to transition endTime: %{public}f exceeding duration: %{public}f", v69, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x1C6956920](v70, -1, -1);
          v56 = v213;
          v58 = v209;
          v59 = v207;
          MEMORY[0x1C6956920](v69, -1, -1);
        }

        else
        {

          v144 = *(v212 + 8);
          v144(v62, v52);
          v144(v198, v52);
        }

        (*(v217 + 8))(v199, v218);
        v57 = v210;
        sub_1C6014B10();
        aBlock = sub_1C6017130();
        v229 = v145;
        v230 = v146;
        [v63 setForwardPlaybackEndTime_];
        v52 = v216;
      }
    }

    sub_1C60162C0();
    v205(v59, v57, v52);

    v147 = v56;
    v148 = sub_1C60162B0();
    v149 = sub_1C6016F30();

    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      aBlock = v207;
      *v150 = 136446722;
      v151 = *(v55 + 32);
      v152 = v55;
      v153 = v212;
      v154 = *(v152 + 40);

      v155 = sub_1C5C6AB10(v151, v154, &aBlock);

      *(v150 + 4) = v155;
      *(v150 + 12) = 2050;
      sub_1C6014B10();
      v157 = v156;
      v213 = *(v153 + 8);
      v213(v59, v52);
      *(v150 + 14) = v157;
      *(v150 + 22) = 2082;
      v158 = sub_1C5DBCDF8();
      v160 = sub_1C5C6AB10(v158, v159, &aBlock);

      *(v150 + 24) = v160;
      v55 = v152;
      _os_log_impl(&dword_1C5C61000, v148, v149, "[ALC:%{public}s] - Setting overlappedPlaybackEndTime to %{public}f on %{public}s", v150, 0x20u);
      v161 = v207;
      swift_arrayDestroy();
      MEMORY[0x1C6956920](v161, -1, -1);
      v162 = v150;
      v57 = v210;
      MEMORY[0x1C6956920](v162, -1, -1);

      v163 = v218;
      v164 = *(v217 + 8);
      v165 = v209;
    }

    else
    {

      v213 = *(v212 + 8);
      v213(v59, v52);
      v163 = v218;
      v164 = *(v217 + 8);
      v165 = v58;
    }

    v209 = v164;
    (v164)(v165, v163);
    v166 = v208;
    v167 = v206;
    v168 = v211;
    sub_1C6014B10();
    aBlock = sub_1C6017130();
    v229 = v169;
    v230 = v170;
    [v147 setOverlappedPlaybackEndTime_];
    [v147 setAudioMix_];
    sub_1C5DAED88();
    if (v171)
    {
      v172 = *MEMORY[0x1E6960C70];
      LODWORD(v173) = *(MEMORY[0x1E6960C70] + 8);
      LODWORD(v174) = *(MEMORY[0x1E6960C70] + 12);
      v175 = *(MEMORY[0x1E6960C70] + 16);
    }

    else
    {
      v172 = sub_1C6017130();
      v174 = HIDWORD(v173);
    }

    aBlock = v172;
    v229 = __PAIR64__(v174, v173);
    v230 = v175;
    [v147 setAdvanceTimeForOverlappedPlayback_];
    v176 = sub_1C6014A70();
    v177 = sub_1C5DAB860(v176);

    if (v177)
    {
      v178 = v201;
      sub_1C60162C0();
      swift_bridgeObjectRetain_n();

      v179 = v147;
      v180 = sub_1C60162B0();
      v181 = sub_1C6016F30();

      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        aBlock = v183;
        *v182 = 136446722;
        v185 = *(v55 + 32);
        v184 = *(v55 + 40);

        v186 = sub_1C5C6AB10(v185, v184, &aBlock);

        *(v182 + 4) = v186;
        *(v182 + 12) = 2082;
        v187 = sub_1C5DBCDF8();
        v189 = sub_1C5C6AB10(v187, v188, &aBlock);

        *(v182 + 14) = v189;
        *(v182 + 22) = 2050;
        v190 = *(v177 + 16);

        *(v182 + 24) = v190;

        _os_log_impl(&dword_1C5C61000, v180, v181, "[ALC:%{public}s] - Setting speedRamp for outgoing item - %{public}s with %{public}ld time mappings", v182, 0x20u);
        swift_arrayDestroy();
        v191 = v183;
        v167 = v206;
        MEMORY[0x1C6956920](v191, -1, -1);
        v192 = v182;
        v166 = v208;
        MEMORY[0x1C6956920](v192, -1, -1);

        v193 = v201;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v193 = v178;
      }

      (v209)(v193, v218);
      sub_1C6016E90();
      v57 = v210;
    }

    v194 = v216;
    v195 = v213;
    v213(v57, v216);
    sub_1C5DAAACC(v166, &qword_1EC1AB750, MEMORY[0x1E69E3C00]);
    v195(v167, v194);
  }

  else
  {
    v84 = v219;
    sub_1C6014A90();
    sub_1C6014A80();
    sub_1C6014AA0();
    sub_1C6014AC0();
    v86 = v85;
    __swift_storeEnumTagSinglePayload(&v45[v43[8]], 1, 1, v27);
    *&v45[v43[7]] = v86;
    sub_1C5DAAB34(v45, v23, type metadata accessor for SmartTransitionParameters);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v43);
    v87 = v215;
    swift_beginAccess();
    sub_1C5DAABE8();
    swift_endAccess();
    v88 = v213;
    [v213 setAudioMix_];
    v89 = sub_1C6014A70();
    v90 = sub_1C5DABACC(v89);

    v91 = "rameworks/AssistantServices.framework/AssistantServices";
    if (v90)
    {
      v92 = v200;
      sub_1C60162C0();
      swift_bridgeObjectRetain_n();

      v93 = v88;
      v94 = sub_1C60162B0();
      v95 = sub_1C6016F30();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v211 = swift_slowAlloc();
        aBlock = v211;
        *v96 = 136446722;
        v97 = *(v87 + 32);
        v98 = *(v87 + 40);

        v99 = sub_1C5C6AB10(v97, v98, &aBlock);

        *(v96 + 4) = v99;
        *(v96 + 12) = 2082;
        v100 = sub_1C5DBCDF8();
        v102 = sub_1C5C6AB10(v100, v101, &aBlock);

        *(v96 + 14) = v102;
        v88 = v213;
        *(v96 + 22) = 2050;
        v103 = v92;
        v104 = *(v90 + 16);

        *(v96 + 24) = v104;

        _os_log_impl(&dword_1C5C61000, v94, v95, "[ALC:%{public}s] - Setting speedRamp for incoming item - %{public}s with %{public}ld time mappings", v96, 0x20u);
        v105 = v211;
        swift_arrayDestroy();
        MEMORY[0x1C6956920](v105, -1, -1);
        v106 = v96;
        v91 = "softlink:r:path:/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices" + 40;
        MEMORY[0x1C6956920](v106, -1, -1);

        (*(v217 + 8))(v103, v218);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        (*(v217 + 8))(v92, v218);
      }

      sub_1C6016E90();
    }

    objc_opt_self();
    v107 = swift_dynamicCastObjCClass();
    v108 = v203;
    if (v107)
    {
      [v107 disableItemReuse];
    }

    v109 = v208;
    sub_1C60162C0();
    v110 = v206;
    v111 = v210;
    v211 = *(v206 + 2);
    (v211)(v108, v84, v210);
    v112 = v109;

    v113 = v88;
    v114 = sub_1C60162B0();
    v115 = sub_1C6016F30();
    v213 = v113;

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      aBlock = v209;
      *v116 = *(v91 + 39);
      LODWORD(v207) = v115;
      v117 = *(v87 + 32);
      v118 = *(v87 + 40);

      v119 = sub_1C5C6AB10(v117, v118, &aBlock);

      *(v116 + 4) = v119;
      *(v116 + 12) = 2050;
      v120 = v202;
      sub_1C6014A90();
      sub_1C6014B10();
      v122 = v121;
      v123 = v212;
      v124 = v108;
      v125 = v216;
      (*(v212 + 8))(v120, v216);
      v110[1](v124, v111);
      *(v116 + 14) = v122;
      *(v116 + 22) = 2082;
      v126 = sub_1C5DBCDF8();
      v128 = sub_1C5C6AB10(v126, v127, &aBlock);

      *(v116 + 24) = v128;
      _os_log_impl(&dword_1C5C61000, v114, v207, "[ALC:%{public}s] - Attempting to seek to startTime: %{public}f on incomingItem: %{public}s", v116, 0x20u);
      v129 = v209;
      swift_arrayDestroy();
      MEMORY[0x1C6956920](v129, -1, -1);
      MEMORY[0x1C6956920](v116, -1, -1);

      (*(v217 + 8))(v208, v218);
    }

    else
    {

      v110[1](v108, v111);
      (*(v217 + 8))(v112, v218);
      v125 = v216;
      v123 = v212;
      v120 = v202;
    }

    v130 = v219;
    sub_1C6014A90();
    sub_1C6014B10();
    (*(v123 + 8))(v120, v125);
    v209 = sub_1C6017130();
    v132 = v131;
    v217 = HIDWORD(v131);
    v218 = v133;
    v134 = *MEMORY[0x1E6960CC0];
    v135 = *(MEMORY[0x1E6960CC0] + 8);
    LODWORD(v216) = *(MEMORY[0x1E6960CC0] + 12);
    v212 = *(MEMORY[0x1E6960CC0] + 16);
    v136 = v205;
    v137 = v210;
    (v211)(v205, v130, v210);
    v138 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v139 = &v204[v138 + 7] & 0xFFFFFFFFFFFFFFF8;
    v140 = swift_allocObject();
    *(v140 + 16) = v215;
    (v110[4])(v140 + v138, v136, v137);
    v141 = v213;
    *(v140 + v139) = v213;
    v232 = sub_1C5DAA964;
    v233 = v140;
    aBlock = MEMORY[0x1E69E9820];
    v229 = 1107296256;
    v230 = sub_1C5DBCF1C;
    v231 = &block_descriptor_115;
    v142 = _Block_copy(&aBlock);

    v143 = v141;

    v229 = __PAIR64__(v217, v132);
    v230 = v218;
    v225 = v135;
    v226 = v216;
    v227 = v212;
    aBlock = v209;
    v220 = v134;
    v221 = v135;
    v222 = v216;
    v223 = v212;
    v224 = v134;
    [v143 seekToTime:&aBlock toleranceBefore:&v224 toleranceAfter:&v220 completionHandler:v142];
    _Block_release(v142);
  }

  return sub_1C5DAAB90(v214, type metadata accessor for SmartTransitionParameters);
}

uint64_t sub_1C5DA85F4(uint64_t a1)
{
  v79 = a1;
  v1 = sub_1C60149E0();
  v77 = *(v1 - 8);
  v78 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v75 = v2;
  v76 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1C5DA4F3C(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = &v66 - v5;
  v6 = sub_1C60162D0();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlayerItemTransitionProvided(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5DA4F3C(0, &qword_1EC1AB750, MEMORY[0x1E69E3C00], v3);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v66 - v11;
  v13 = sub_1C6014A50();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v66 - v18;
  v20 = sub_1C6014B20();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v66 - v25;
  sub_1C60149B0();
  sub_1C6014A40();
  v27 = *(v14 + 8);
  v68 = v13;
  v28 = v13;
  v29 = v27;
  v27(v19, v28);
  if (__swift_getEnumTagSinglePayload(v12, 1, v20) == 1)
  {
    sub_1C5DAAACC(v12, &qword_1EC1AB750, MEMORY[0x1E69E3C00]);
    v30 = v70;
  }

  else
  {
    (*(v21 + 32))(v26, v12, v20);
    v31 = (*(v21 + 16))(v24, v26, v20);
    *&v32 = MEMORY[0x1C69515E0](v31);
    v67 = v32;
    sub_1C6014B10();
    v66 = v33;
    v34 = *(v21 + 8);
    v34(v24, v20);
    v34(v26, v20);
    v35.i64[0] = v67;
    v36 = *&v67 == *&v66;
    v35.i64[1] = v66;
    v37 = v35;
    *v35.i8 = vdup_n_s32(v36);
    v38.i64[0] = v35.u32[0];
    v38.i64[1] = v35.u32[1];
    v30 = v70;
    *(v70 + 120) = vandq_s8(v37, vcgezq_s64(vshlq_n_s64(v38, 0x3FuLL)));
    *(v30 + 136) = v36;
  }

  sub_1C60149B0();
  v39 = v69;
  sub_1C6014A10();
  v40 = v68;
  v29(v17, v68);
  v41 = sub_1C6014A60();
  __swift_storeEnumTagSinglePayload(v39, 0, 2, v41);
  v42 = OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionProvided;
  swift_beginAccess();
  sub_1C5DAA818(v39, v30 + v42);
  swift_endAccess();
  sub_1C60149B0();
  v43 = sub_1C6014A20();
  v45 = v44;
  v29(v17, v40);
  v46 = (v30 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionStrategy);
  *v46 = v43;
  v46[1] = v45;

  v47 = v71;
  sub_1C60162C0();

  v48 = sub_1C60162B0();
  v49 = sub_1C6016F30();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v80[0] = v51;
    *v50 = 136446466;
    v52 = *(v30 + 32);
    v53 = *(v30 + 40);

    v54 = sub_1C5C6AB10(v52, v53, v80);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2082;
    sub_1C5D9C084();
    v55 = sub_1C6016870();
    v57 = v56;

    v58 = sub_1C5C6AB10(v55, v57, v80);

    *(v50 + 14) = v58;
    _os_log_impl(&dword_1C5C61000, v48, v49, "[ALC:%{public}s] - Smart transition setup complete with parameters: %{public}s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v51, -1, -1);
    MEMORY[0x1C6956920](v50, -1, -1);
  }

  (*(v72 + 8))(v47, v73);
  v59 = sub_1C6016C30();
  __swift_storeEnumTagSinglePayload(v74, 1, 1, v59);
  v61 = v76;
  v60 = v77;
  v62 = v78;
  (*(v77 + 16))(v76, v79, v78);
  v63 = (*(v60 + 80) + 40) & ~*(v60 + 80);
  v64 = swift_allocObject();
  *(v64 + 2) = 0;
  *(v64 + 3) = 0;
  *(v64 + 4) = v30;
  (*(v60 + 32))(&v64[v63], v61, v62);

  sub_1C5CDC270();
}

uint64_t sub_1C5DA8DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1C5CBCD24;

  return sub_1C5DA8E80(a5);
}

uint64_t sub_1C5DA8E80(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1C6014A60();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for PlayerItemTransitionProvided(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = sub_1C60162D0();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_1C5D2D8C8(0);
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v6 = sub_1C6014B20();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v7 = sub_1C6014AE0();
  v2[28] = v7;
  v2[29] = *(v7 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  sub_1C6016C10();
  v2[32] = sub_1C6016C00();
  v9 = sub_1C6016BA0();
  v2[33] = v9;
  v2[34] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C5DA917C, v9, v8);
}

uint64_t sub_1C5DA917C()
{
  v32 = v0;
  *(v0 + 280) = *(*(v0 + 48) + 48);
  objc_opt_self();
  OUTLINED_FUNCTION_34_4();
  v2 = swift_dynamicCastObjCClass();
  *(v0 + 288) = v2;
  if (v2)
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    v8 = *(v0 + 200);
    swift_unknownObjectRetain();
    sub_1C60149A0();
    sub_1C6014A90();
    v9 = *(v5 + 8);
    *(v0 + 296) = v9;
    *(v0 + 304) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10 = v9(v3, v4);
    *(v0 + 312) = MEMORY[0x1C69515E0](v10);
    v11 = *(v7 + 8);
    v11(v6, v8);
    sub_1C60149A0();
    sub_1C6014AA0();
    v12 = v9(v3, v4);
    *(v0 + 320) = MEMORY[0x1C69515E0](v12);
    v11(v6, v8);
    v13 = swift_task_alloc();
    *(v0 + 328) = v13;
    *v13 = v0;
    v13[1] = sub_1C5DA94A8;

    return sub_1C5D9E1F8();
  }

  else
  {
    v15 = *(v0 + 48);

    MEMORY[0x1C6952D20](v16);
    v17 = OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_108_1(v17);
    v18 = OUTLINED_FUNCTION_108();
    v19(v18);

    v20 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_125_1();
    if (OUTLINED_FUNCTION_137_0())
    {
      OUTLINED_FUNCTION_112();
      v31 = OUTLINED_FUNCTION_53_5();
      v21 = OUTLINED_FUNCTION_69_5(4.8751e-34);
      OUTLINED_FUNCTION_110_1(v21, v22, &v31);
      OUTLINED_FUNCTION_109_0();
      *(v15 + 4) = v1;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_6();
    }

    v28 = OUTLINED_FUNCTION_252();
    v29(v28);
    OUTLINED_FUNCTION_79_2();

    OUTLINED_FUNCTION_172();

    return v30();
  }
}

uint64_t sub_1C5DA94A8()
{
  OUTLINED_FUNCTION_248();
  v1 = *v0;
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 336) = v4;

  v5 = *(v1 + 272);
  v6 = *(v1 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1C5DA95BC, v6, v5);
}

uint64_t sub_1C5DA95BC()
{
  v84 = v0;
  OUTLINED_FUNCTION_76_3();
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);

  v4 = v2 - v1 + -0.5 + -0.1;
  sub_1C60149A0();
  v5 = sub_1C6014AD0();
  v6 = OUTLINED_FUNCTION_18();
  v3(v6);
  if (!v5)
  {
LABEL_25:
    v14 = v4;
    goto LABEL_26;
  }

  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = (v5 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = *v8;
      if (*v8 < v4)
      {
        v83 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C5D0F218(0, *(v9 + 16) + 1, 1);
          v9 = v83;
        }

        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1C5D0F218((v11 > 1), v12 + 1, 1);
          v9 = v83;
        }

        *(v9 + 16) = v12 + 1;
        *(v9 + 8 * v12 + 32) = v10;
      }

      ++v8;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v9 + 16);
  if (!v13)
  {

    MEMORY[0x1C6952D20](v33);
    OUTLINED_FUNCTION_98_1();
    sub_1C6016250();
    v34 = OUTLINED_FUNCTION_45_0();
    v35(v34);

    v36 = sub_1C60162B0();
    v37 = sub_1C6016F30();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_68_0();
      v39 = OUTLINED_FUNCTION_21();
      v83 = v39;
      *v38 = 136446466;

      v40 = OUTLINED_FUNCTION_300();
      v43 = sub_1C5C6AB10(v40, v41, v42);
      OUTLINED_FUNCTION_76_3();

      *(v38 + 4) = v43;
      *(v38 + 12) = 2050;
      *(v38 + 14) = v4;
      _os_log_impl(&dword_1C5C61000, v36, v37, "[ALC:%{public}s] - No suitable downbeats found before safe start time %{public}f", v38, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v39);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_28();
    }

    v44 = OUTLINED_FUNCTION_45_0();
    v45(v44);
    goto LABEL_25;
  }

  v14 = *(v9 + 32);
  v15 = v13 - 1;
  if (v15)
  {
    v16 = (v9 + 40);
    v17 = *(v9 + 32);
    do
    {
      v18 = *v16++;
      v19 = v18;
      if (v17 < v18)
      {
        v14 = v19;
        v17 = v19;
      }

      --v15;
    }

    while (v15);
  }

  MEMORY[0x1C6952D20](v20);
  OUTLINED_FUNCTION_98_1();
  sub_1C6016250();
  v21 = OUTLINED_FUNCTION_45_0();
  v22(v21);

  v23 = sub_1C60162B0();
  v24 = sub_1C6016F30();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_21();
    v26 = OUTLINED_FUNCTION_21();
    v83 = v26;
    *v25 = 136446722;

    v27 = OUTLINED_FUNCTION_300();
    v30 = sub_1C5C6AB10(v27, v28, v29);
    OUTLINED_FUNCTION_76_3();

    *(v25 + 4) = v30;
    *(v25 + 12) = 2050;
    *(v25 + 14) = v14;
    *(v25 + 22) = 2050;
    *(v25 + 24) = v4;
    _os_log_impl(&dword_1C5C61000, v23, v24, "[ALC:%{public}s] - Using downbeat at %{public}f instead of safe start time %{public}f", v25, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_28();
  }

  v31 = OUTLINED_FUNCTION_45_0();
  v32(v31);
LABEL_26:
  v46 = *(v0 + 96);
  v47 = *(v0 + 48);
  v48 = OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionProvided;
  OUTLINED_FUNCTION_27(v47 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionProvided, v0 + 16);
  OUTLINED_FUNCTION_21_19();
  v82 = v48;
  sub_1C5DAAB34(v47 + v48, v46, v49);
  v50 = sub_1C5DAE2E8();
  OUTLINED_FUNCTION_20_20();
  sub_1C5DAAB90(v46, v51);
  if (*(v47 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionStrategy + 8))
  {

    OUTLINED_FUNCTION_45_0();
    v52 = sub_1C6016900();
  }

  else
  {
    v52 = 0;
  }

  [*(v0 + 288) updateContentItemWithPlannedTransitionStartTime:v50 pivotTime:v52 transitionProvided:v14 debugString:*(v0 + 320)];

  MEMORY[0x1C6952D20]();
  sub_1C6016250();
  v53 = OUTLINED_FUNCTION_18();
  v54(v53);

  v55 = sub_1C60162B0();
  v56 = sub_1C6016F30();
  v57 = os_log_type_enabled(v55, v56);
  v58 = *(v0 + 48);
  if (!v57)
  {
    swift_unknownObjectRelease();

    v70 = OUTLINED_FUNCTION_252();
    v71(v70);
    goto LABEL_37;
  }

  v59 = *(v0 + 320);
  v60 = *(v0 + 80);
  v61 = *(v0 + 88);
  v62 = *(v0 + 56);
  v63 = swift_slowAlloc();
  v81 = OUTLINED_FUNCTION_21();
  v83 = v81;
  *v63 = 136446978;
  v65 = *(v58 + 32);
  v64 = *(v58 + 40);

  v66 = sub_1C5C6AB10(v65, v64, &v83);

  *(v63 + 4) = v66;
  *(v63 + 12) = 2050;
  *(v63 + 14) = v14;
  *(v63 + 22) = 2050;
  *(v63 + 24) = v59;
  *(v63 + 32) = 2050;
  OUTLINED_FUNCTION_21_19();
  sub_1C5DAAB34(v47 + v82, v61, v67);
  sub_1C5DAAD4C(v61, v60, type metadata accessor for PlayerItemTransitionProvided);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 2, v62);
  if (EnumTagSinglePayload)
  {
    v69 = EnumTagSinglePayload != 1;
  }

  else
  {
    v72 = *(v0 + 72);
    v74 = *(v0 + 56);
    v73 = *(v0 + 64);
    (*(v73 + 32))(v72, *(v0 + 80), v74);
    v75 = (*(v73 + 88))(v72, v74);
    if (v75 != *MEMORY[0x1E69E3BF8])
    {
      v76 = v81;
      if (v75 == *MEMORY[0x1E69E3BE0])
      {
        v69 = 3;
      }

      else if (v75 == *MEMORY[0x1E69E3BE8])
      {
        v69 = 4;
      }

      else if (v75 == *MEMORY[0x1E69E3BF0])
      {
        v69 = 5;
      }

      else
      {
        (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
        v69 = 0;
      }

      goto LABEL_36;
    }

    v69 = 2;
  }

  v76 = v81;
LABEL_36:
  *(v63 + 34) = v69;

  _os_log_impl(&dword_1C5C61000, v55, v56, "[ALC:%{public}s] - Updated outgoing item content with transition info - finalStartTime: %{public}f, pivotTime: %{public}f, transitionProvided: %{public}ld", v63, 0x2Au);
  __swift_destroy_boxed_opaque_existential_0(v76);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4();
  swift_unknownObjectRelease();

  v77 = OUTLINED_FUNCTION_55_2();
  v78(v77);
LABEL_37:
  OUTLINED_FUNCTION_79_2();

  OUTLINED_FUNCTION_172();

  return v79();
}

uint64_t sub_1C5DA9DC0(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v39 = a1;
  v7 = sub_1C6014B20();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1C6014AE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1C60162D0();
  v42 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C60162C0();
  (*(v11 + 16))(v13, a3, v10);

  v17 = a4;
  v18 = sub_1C60162B0();
  v19 = sub_1C6016F30();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = v14;
    v21 = v20;
    v37 = swift_slowAlloc();
    v43 = v37;
    *v21 = 136446978;
    v36 = v19;
    v22 = *(a2 + 32);
    v23 = *(a2 + 40);

    v24 = sub_1C5C6AB10(v22, v23, &v43);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    if (v39)
    {
      v25 = 0x6564656563637553;
    }

    else
    {
      v25 = 0x64656C696146;
    }

    if (v39)
    {
      v26 = 0xE900000000000064;
    }

    else
    {
      v26 = 0xE600000000000000;
    }

    v27 = sub_1C5C6AB10(v25, v26, &v43);

    *(v21 + 14) = v27;
    *(v21 + 22) = 2050;
    sub_1C6014A90();
    sub_1C6014B10();
    v29 = v28;
    (*(v40 + 8))(v9, v41);
    (*(v11 + 8))(v13, v10);
    *(v21 + 24) = v29;
    *(v21 + 32) = 2082;
    v30 = sub_1C5DBCDF8();
    v32 = sub_1C5C6AB10(v30, v31, &v43);

    *(v21 + 34) = v32;
    _os_log_impl(&dword_1C5C61000, v18, v36, "[ALC:%{public}s] - %{public}s to seek to startTime: %{public}f on incomingItem: %{public}s", v21, 0x2Au);
    v33 = v37;
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v33, -1, -1);
    MEMORY[0x1C6956920](v21, -1, -1);

    return (*(v42 + 8))(v16, v38);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
    return (*(v42 + 8))(v16, v14);
  }
}

uint64_t sub_1C5DAA210(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C5DAA230, 0, 0);
}

uint64_t sub_1C5DAA230()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_143_0();
  v2 = v0;
  *(v1 + 40) = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v3 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5DAA2AC()
{
  OUTLINED_FUNCTION_13();
  v17 = v0;
  v1 = *(v0 + 32);

  v2 = [v1 overlappedPlaybackSafetyMargin];
  OUTLINED_FUNCTION_122_0(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15, v16);
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C5DAA320(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C5DAA340, 0, 0);
}

uint64_t sub_1C5DAA340()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_143_0();
  v2 = v0;
  *(v1 + 40) = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v3 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5DAA3BC()
{
  OUTLINED_FUNCTION_13();
  v17 = v0;
  v1 = *(v0 + 32);

  v2 = [v1 speedRampAdjustabilityMargin];
  OUTLINED_FUNCTION_122_0(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15, v16);
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C5DAA430()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = v0[8];
  *v2 = v0[6];
  v2[1] = v3;
  v2[2] = v1;
  return OUTLINED_FUNCTION_54_5();
}

void sub_1C5DAA45C(uint64_t a1)
{
  if (!qword_1EC1AB6C8)
  {
    sub_1C5C64D74(255, &qword_1EC1AAC20, 0x1E6987E28);
    sub_1C5DAA500(255, &qword_1EC1AB6D0, &qword_1EC1AB5A0, 0x1E6987EC8, MEMORY[0x1E69E62F8]);
    v1 = sub_1C6015200();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1AB6C8);
    }
  }
}

void sub_1C5DAA500(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C5C64D74(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C5DAA568(uint64_t a1)
{
  if (!qword_1EC1AB730)
  {
    sub_1C5DAA5C4();
    v1 = sub_1C6015300();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1AB730);
    }
  }
}

unint64_t sub_1C5DAA5C4()
{
  result = qword_1EC1AB738;
  if (!qword_1EC1AB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB738);
  }

  return result;
}

unint64_t sub_1C5DAA618()
{
  result = qword_1EC1AB740;
  if (!qword_1EC1AB740)
  {
    sub_1C5DAA568(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB740);
  }

  return result;
}

uint64_t sub_1C5DAA670()
{
  OUTLINED_FUNCTION_248();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_18(v1);

  return sub_1C5DA67B8(v3, v4);
}

void sub_1C5DAA6F4(uint64_t a1)
{
  if (!qword_1EC1AB748)
  {
    sub_1C5DAA500(255, &qword_1EC1AB6D0, &qword_1EC1AB5A0, 0x1E6987EC8, MEMORY[0x1E69E62F8]);
    type metadata accessor for CMTime();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1AB748);
    }
  }
}

uint64_t sub_1C5DAA794()
{
  OUTLINED_FUNCTION_248();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_18(v1);

  return sub_1C5DA698C(v3, v4);
}

uint64_t sub_1C5DAA818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerItemTransitionProvided(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5DAA87C()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v3 = sub_1C60149E0();
  OUTLINED_FUNCTION_13_3(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_6_0(v9);
  *v10 = v11;
  v10[1] = sub_1C5CBCD24;

  return sub_1C5DA8DE4(v2, v6, v7, v8, v0 + v5);
}

uint64_t sub_1C5DAA964(int a1)
{
  v3 = sub_1C6014AE0();
  OUTLINED_FUNCTION_12(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C5DA9DC0(a1, v9, v1 + v8, v10);
}

void sub_1C5DAA9FC(uint64_t a1)
{
  if (!qword_1EC1AB758)
  {
    type metadata accessor for TransitionProvider.TransitionableIdentifier(255);
    sub_1C6014980();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1AB758);
    }
  }
}

uint64_t sub_1C5DAAA70()
{
  v1 = OUTLINED_FUNCTION_57_3();
  sub_1C5DA4F3C(v1, v2, v3, v4);
  OUTLINED_FUNCTION_105();
  v5 = OUTLINED_FUNCTION_255();
  v6(v5);
  return v0;
}

uint64_t sub_1C5DAAACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C5DA4F3C(0, a2, a3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_105();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C5DAAB34(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_105();
  v4 = OUTLINED_FUNCTION_255();
  v5(v4);
  return a2;
}

uint64_t sub_1C5DAAB90(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_105();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C5DAABE8()
{
  v1 = OUTLINED_FUNCTION_57_3();
  sub_1C5DA4F3C(v1, v2, v3, v4);
  OUTLINED_FUNCTION_105();
  v5 = OUTLINED_FUNCTION_255();
  v6(v5);
  return v0;
}

uint64_t sub_1C5DAAC44()
{
  OUTLINED_FUNCTION_248();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_18(v1);

  return sub_1C5DAA210(v3, v4);
}

uint64_t sub_1C5DAACC8()
{
  OUTLINED_FUNCTION_248();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_18(v1);

  return sub_1C5DAA320(v3, v4);
}

uint64_t sub_1C5DAAD4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_105();
  v4 = OUTLINED_FUNCTION_255();
  v5(v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SmartPlayerItemTransitionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SmartPlayerItemTransitionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C5DAAF10()
{
  result = qword_1EC1AB768;
  if (!qword_1EC1AB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB768);
  }

  return result;
}

unint64_t sub_1C5DAAF68()
{
  result = qword_1EC1AB770;
  if (!qword_1EC1AB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB770);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_27_15(uint64_t a1)
{

  return sub_1C5DAAB34(a1, v1, type metadata accessor for TransitionProvider.TransitionableIdentifier);
}

uint64_t OUTLINED_FUNCTION_38_7()
{
  v3 = v0[22];
  *(v1 - 136) = v0[23];
  *(v1 - 128) = v3;
  v4 = v0[19];
  *(v1 - 120) = v0[20];
  *(v1 - 112) = v4;
  *(v1 - 104) = v0[16];
}

uint64_t OUTLINED_FUNCTION_53_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_58_6()
{

  return sub_1C5DAAACC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_73_2(uint64_t a1, uint64_t a2)
{

  return sub_1C5DAAD4C(a1, a2, type metadata accessor for TransitionProvider.TransitionableIdentifier);
}

double OUTLINED_FUNCTION_82_2(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

void OUTLINED_FUNCTION_91_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_92_1(uint64_t a1)
{

  return swift_allocError();
}

unint64_t OUTLINED_FUNCTION_96_0()
{

  return sub_1C5C6AB10(v0, v1, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_100_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_asyncLet_begin();
}

uint64_t OUTLINED_FUNCTION_105_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_106_0()
{
}

uint64_t OUTLINED_FUNCTION_108_1(uint64_t a1)
{

  return sub_1C6016250();
}

uint64_t OUTLINED_FUNCTION_109_0()
{
}

unint64_t OUTLINED_FUNCTION_110_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1C5C6AB10(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_118_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_120_0(float a1)
{
  *v1 = a1;
}

uint64_t OUTLINED_FUNCTION_121_0(uint64_t a1, uint64_t a2)
{

  return sub_1C60171E0();
}

void OUTLINED_FUNCTION_122_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12[8] = a10;
  v12[6] = a9;
  v12[7] = a11;
}

uint64_t OUTLINED_FUNCTION_123_1()
{
}

uint64_t OUTLINED_FUNCTION_125_1()
{
}

void OUTLINED_FUNCTION_126_1()
{

  sub_1C5DAA568(0);
}

uint64_t OUTLINED_FUNCTION_140_1()
{
  *(v1 - 384) = v0;
}

uint64_t OUTLINED_FUNCTION_142_1()
{

  return MEMORY[0x1EEE6CDE8](0xD000000000000014, v0 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_143_0()
{
  *(v0 + 32) = *(*(v0 + 24) + 56);

  return sub_1C6016C10();
}

uint64_t OUTLINED_FUNCTION_147_0()
{
  v5 = v1[19];
  v4 = v1[20];
  *(v2 - 136) = v0;
  *(v2 - 128) = v4;
  v6 = v1[16];
  *(v2 - 120) = v5;
  *(v2 - 112) = v6;
}

uint64_t OUTLINED_FUNCTION_148_0()
{

  return sub_1C5DAAA70();
}

void OUTLINED_FUNCTION_149_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_150_0(uint64_t a1, double a2)
{

  return sub_1C6014970();
}

void OUTLINED_FUNCTION_151_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_152_0(uint64_t a1)
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2082;

  return sub_1C5DBCDF8();
}

uint64_t OUTLINED_FUNCTION_155_0()
{
}

unint64_t OUTLINED_FUNCTION_156_0()
{

  return sub_1C5DAA5C4();
}

uint64_t OUTLINED_FUNCTION_157_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C60162C0();
}

void sub_1C5DAB728(uint64_t a1@<X8>)
{
  if (MEMORY[0x1C69515E0]() <= 0.0 || (v2 = sub_1C6014B10(), v3 <= 0.0) || (v4 = MEMORY[0x1C69515E0](v2), sub_1C6014B10(), v4 == v5))
  {
    v6 = 0;
    v7 = 0;
    v8 = 1;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  else
  {
    sub_1C6017130();
    MEMORY[0x1C69515E0]();
    sub_1C6017130();
    OUTLINED_FUNCTION_0_57();
    sub_1C6016E60();
    v6 = v16;
    v7 = v17;
    sub_1C6017130();
    sub_1C6014B10();
    sub_1C6017130();
    OUTLINED_FUNCTION_0_57();
    sub_1C6016E60();
    v12 = v14;
    v13 = v15;
    v8 = 0;
    v9 = v18;
    v10 = v19;
    v11 = v20;
  }

  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v9;
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  *(a1 + 96) = v8;
}

uint64_t sub_1C5DAB860(void *a1)
{
  v3 = sub_1C6014B20();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || !a1[2])
  {
    return 0;
  }

  if (*(v1 + 112))
  {

LABEL_8:
    v8 = sub_1C5DABACC(v7);

    return v8;
  }

  v9 = a1[10];
  v17[0] = a1[11];
  v17[1] = v9;

  sub_1C6014AF0();
  sub_1C5DAB728(v20);
  (*(v4 + 8))(v6, v3);
  if (v21)
  {
    v7 = a1;
    goto LABEL_8;
  }

  sub_1C5D0E900();
  v11 = v10;
  v12 = *(v10 + 16);
  if (v12 >= *(v10 + 24) >> 1)
  {
    OUTLINED_FUNCTION_1_49();
    v11 = v15;
  }

  *(v11 + 16) = v12 + 1;
  memcpy((v11 + 96 * v12 + 32), v20, 0x60uLL);
  v25 = v20[0];
  v26 = v20[1];
  v27 = v20[2];
  sub_1C6016E50();
  sub_1C6016E60();
  v22 = v20[3];
  v23 = v20[4];
  v24 = v20[5];
  sub_1C6016E50();
  sub_1C6016E60();
  v13 = *(v11 + 16);
  if (v13 >= *(v11 + 24) >> 1)
  {
    OUTLINED_FUNCTION_1_49();
    v11 = v16;
  }

  *(v11 + 16) = v13 + 1;
  memcpy((v11 + 96 * v13 + 32), v18, 0x60uLL);
  v19 = v11;
  sub_1C5D0CE8C(a1);
  return v19;
}

uint64_t sub_1C5DABACC(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {

      sub_1C6017130();
      OUTLINED_FUNCTION_0_57();
      if (sub_1C60171E0() & 1) != 0 || (sub_1C6017130(), OUTLINED_FUNCTION_0_57(), (sub_1C60171E0()))
      {
        sub_1C6017130();
        sub_1C6016E60();
        sub_1C6017130();
        sub_1C6016E60();
        if (!swift_isUniquelyReferenced_nonNull_native() || v2 >= *(v1 + 24) >> 1)
        {
          sub_1C5D0E900();
          v1 = v3;
        }

        sub_1C5D10DBC(0, 0, 1);
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1C5DABC1C()
{
  OUTLINED_FUNCTION_3_37();
  sub_1C5DB08EC(0, v0, v1, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  OUTLINED_FUNCTION_89();
  *(v3 + 32) = 0xD00000000000001CLL;
  *(v3 + 40) = v4;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
  return sub_1C6016880();
}

double sub_1C5DABCEC@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  if (v2)
  {
    sub_1C5DB0BBC(v2 + 24, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_1C5DABD28()
{
  OUTLINED_FUNCTION_247();
  v1 = *(v0 + 120);
  if (!v1 || (v2 = v0, sub_1C5DB0BBC(v1 + 24, __src), sub_1C5C74680(0, qword_1ED7DE920, &protocol descriptor for PlayerItemTransition), sub_1C5C74680(0, qword_1ED7DD8B0, &protocol descriptor for OverlappingPlayerItemTransition), (swift_dynamicCast() & 1) == 0))
  {
    memset(__dst, 0, 40);
    goto LABEL_17;
  }

  if (!*(&__dst[1] + 1))
  {
LABEL_17:
    OUTLINED_FUNCTION_0_58();
    sub_1C5DB13B0(__dst, v23, v24, v25, v26);
    goto LABEL_18;
  }

  sub_1C5C6BEFC(__dst, v64);
  if (swift_unknownObjectWeakLoadStrong() && (v3 = v65, OUTLINED_FUNCTION_7_30(v64, v65), v5 = (*(v4 + 24))(v3), v6 = v65, OUTLINED_FUNCTION_7_30(v64, v65), v8 = (*(v7 + 40))(v6), v9 = OUTLINED_FUNCTION_36_8(v8), swift_unknownObjectRelease(), v5, v6, (v9 & 1) != 0) || ((OUTLINED_FUNCTION_7_30(v64, v65), v10 = OUTLINED_FUNCTION_312(), v11(v10), OUTLINED_FUNCTION_128_0(), v17) ? (v13 = v12 == 0) : (v13 = 0), v13))
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = v65;
      OUTLINED_FUNCTION_7_30(v64, v65);
      v29 = (*(v28 + 24))(v27);
      v30 = v65;
      OUTLINED_FUNCTION_7_30(v64, v65);
      v32 = (*(v31 + 40))(v30);
      v33 = OUTLINED_FUNCTION_36_8(v32);
      swift_unknownObjectRelease();

      if (v33)
      {
        OUTLINED_FUNCTION_7_30(v64, v65);
        v34 = OUTLINED_FUNCTION_312();
        v35(v34);
        OUTLINED_FUNCTION_128_0();
        if (v17 && !v36)
        {
          OUTLINED_FUNCTION_1_50();
          sub_1C5DB1340(v2 + 16, v62, v37, v38, v39, v40);
          if (v63)
          {
            OUTLINED_FUNCTION_45(v62, v63);
            OUTLINED_FUNCTION_89();
            __src[0] = 0xD00000000000001FLL;
            __src[1] = v41;
            sub_1C5DB12C8(__src);
            memcpy(__dst, __src, 0xD9uLL);
            sub_1C5DBBF0C();
            __swift_destroy_boxed_opaque_existential_0(v62);
          }

          else
          {
            OUTLINED_FUNCTION_0_58();
            sub_1C5DB13B0(v62, v52, v53, v54, v55);
          }

          sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
          sub_1C6016940();
          OUTLINED_FUNCTION_13_23();
          sub_1C6017540();
          v56 = OUTLINED_FUNCTION_4_38();
          MEMORY[0x1C69534E0](v56);
          v57 = v65;
          OUTLINED_FUNCTION_7_30(v64, v65);
          OUTLINED_FUNCTION_16_0();
          v59 = v58(v57);
          MEMORY[0x1C69534E0](v59);

          v50 = "Player can't overlap playback";
          v51 = 0xD000000000000030;
          goto LABEL_31;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_30(v64, v65);
    v14 = OUTLINED_FUNCTION_312();
    v15(v14);
    OUTLINED_FUNCTION_128_0();
    v17 = v17 && v16 >= 5;
    if (!v17)
    {
      OUTLINED_FUNCTION_1_50();
      sub_1C5DB1340(v2 + 16, v62, v18, v19, v20, v21);
      if (v63)
      {
        OUTLINED_FUNCTION_45(v62, v63);
        OUTLINED_FUNCTION_89();
        __src[0] = 0xD00000000000001DLL;
        __src[1] = v22;
        sub_1C5DB12C8(__src);
        memcpy(__dst, __src, 0xD9uLL);
        sub_1C5DBBF0C();
        __swift_destroy_boxed_opaque_existential_0(v62);
      }

      else
      {
        OUTLINED_FUNCTION_0_58();
        sub_1C5DB13B0(v62, v42, v43, v44, v45);
      }

      sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
      sub_1C6016940();
      OUTLINED_FUNCTION_13_23();
      sub_1C6017540();
      v46 = OUTLINED_FUNCTION_4_38();
      MEMORY[0x1C69534E0](v46);
      v47 = v65;
      OUTLINED_FUNCTION_7_30(v64, v65);
      OUTLINED_FUNCTION_16_0();
      v49 = v48(v47);
      MEMORY[0x1C69534E0](v49);

      v50 = "edPlaybackEndTime to ";
      v51 = 0xD00000000000002FLL;
LABEL_31:
      MEMORY[0x1C69534E0](v51, v50 | 0x8000000000000000);
      sub_1C6016880();
      _s3__C4CodeOMa_6();
      sub_1C5DB0894();
      v60 = sub_1C6017280();

      sub_1C5DAE024(v60);

      __swift_destroy_boxed_opaque_existential_0(v64);
      goto LABEL_18;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v64);
LABEL_18:
  OUTLINED_FUNCTION_237();
}

void sub_1C5DAC2E4()
{
  OUTLINED_FUNCTION_247();
  v1 = *(v0 + 120);
  if (v1)
  {
    sub_1C5DB0BBC(v1 + 24, __dst);
    sub_1C5C74680(0, qword_1ED7DE920, &protocol descriptor for PlayerItemTransition);
    type metadata accessor for SmartPlayerItemTransition(0);
    if (swift_dynamicCast())
    {
      v2 = __src[0];
      if (swift_unknownObjectWeakLoadStrong() && (v3 = sub_1C5DE3FD4(), swift_unknownObjectRelease(), (v3 & 1) != 0) || ((sub_1C5D9BCDC(), OUTLINED_FUNCTION_128_0(), v5) ? (v6 = v4 > 4) : (v6 = 0), v6))
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v13 = sub_1C5DE3FD4();
          swift_unknownObjectRelease();
          if (v13)
          {
            v14 = sub_1C5D9BCDC();
            if (v15 >= 2u && v14 == 5)
            {
              OUTLINED_FUNCTION_1_50();
              sub_1C5DB1340(v0 + 16, v39, v26, v27, v28, v29);
              if (v40)
              {
                OUTLINED_FUNCTION_45(v39, v40);
                OUTLINED_FUNCTION_89();
                __src[0] = 0xD00000000000001ELL;
                __src[1] = v30;
                sub_1C5DB12C8(__src);
                memcpy(__dst, __src, 0xD9uLL);
                sub_1C5DBBF0C();
                __swift_destroy_boxed_opaque_existential_0(v39);
              }

              else
              {
                OUTLINED_FUNCTION_0_58();
                sub_1C5DB13B0(v39, v31, v32, v33, v34);
              }

              sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
              sub_1C6016940();
              OUTLINED_FUNCTION_12_25();
              sub_1C6017540();
              v35 = OUTLINED_FUNCTION_4_38();
              MEMORY[0x1C69534E0](v35);
              v36 = *(v2 + 16);
              v37 = *(v2 + 24);

              MEMORY[0x1C69534E0](v36, v37);

              v23 = "Player can now overlap playback";
              v24 = 0xD000000000000032;
              goto LABEL_22;
            }
          }
        }
      }

      else
      {
        sub_1C5D9BCDC();
        OUTLINED_FUNCTION_128_0();
        if (!v5 || v7)
        {
          OUTLINED_FUNCTION_1_50();
          sub_1C5DB1340(v0 + 16, v39, v8, v9, v10, v11);
          if (v40)
          {
            OUTLINED_FUNCTION_45(v39, v40);
            OUTLINED_FUNCTION_89();
            __src[0] = 0xD00000000000001CLL;
            __src[1] = v12;
            sub_1C5DB12C8(__src);
            memcpy(__dst, __src, 0xD9uLL);
            sub_1C5DBBF0C();
            __swift_destroy_boxed_opaque_existential_0(v39);
          }

          else
          {
            OUTLINED_FUNCTION_0_58();
            sub_1C5DB13B0(v39, v16, v17, v18, v19);
          }

          sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
          sub_1C6016940();
          OUTLINED_FUNCTION_12_25();
          sub_1C6017540();
          v20 = OUTLINED_FUNCTION_4_38();
          MEMORY[0x1C69534E0](v20);
          v21 = *(v2 + 16);
          v22 = *(v2 + 24);

          MEMORY[0x1C69534E0](v21, v22);

          v23 = "Player can now play speedRamps";
          v24 = 0xD000000000000031;
LABEL_22:
          MEMORY[0x1C69534E0](v24, v23 | 0x8000000000000000);
          sub_1C6016880();
          _s3__C4CodeOMa_6();
          sub_1C5DB0894();
          OUTLINED_FUNCTION_26();
          v25 = sub_1C6017280();

          sub_1C5DAE024(v25);

          goto LABEL_19;
        }
      }
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_237();
}

void sub_1C5DAC724()
{
  OUTLINED_FUNCTION_247();
  v33 = v0;
  v3 = v2;
  v4 = sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_146();
  v8 = OUTLINED_FUNCTION_21_20();
  sub_1C5D2D8C8(v8);
  v10 = v9;
  OUTLINED_FUNCTION_25();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_146();
  v16 = v15 - v14;
  if (MSVDeviceOSIsInternalInstall())
  {
    v17 = [objc_opt_self() standardUserDefaults];
    OUTLINED_FUNCTION_109();
    v18 = sub_1C6016900();
    v19 = [v17 BOOLForKey_];

    if (v19)
    {
      OUTLINED_FUNCTION_237();
      return;
    }
  }

  MEMORY[0x1C6952D20]();
  sub_1C6016250();
  (*(v12 + 8))(v16, v10);
  v34 = v3;
  v20 = sub_1C60162B0();
  v21 = sub_1C6016F30();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35 = v23;
    *v22 = 136446210;
    v24 = [v34 playerItem];

    if (!v24)
    {
      __break(1u);
      return;
    }

    v25 = sub_1C5DBCDF8();
    v27 = v26;

    v28 = sub_1C5C6AB10(v25, v27, &v35);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_1C5C61000, v20, v21, "[ALC]: 🟡 TransitionController setSmartTransitionOutroItemReference: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  else
  {
  }

  (*(v6 + 8))(v1, v4);
  v29 = *(v33 + 112);
  *(v33 + 112) = v34;

  OUTLINED_FUNCTION_237();

  v32 = v30;
}

void sub_1C5DACA28()
{
  OUTLINED_FUNCTION_247();
  v2 = v0;
  v4 = v3;
  sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v50 = v6;
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17_19();
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v49 - v8;
  sub_1C5D2D8C8(0);
  v10 = v9;
  OUTLINED_FUNCTION_25();
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  if (!MSVDeviceOSIsInternalInstall() || (v19 = [objc_opt_self() standardUserDefaults], OUTLINED_FUNCTION_109(), v20 = sub_1C6016900(), v21 = objc_msgSend(v19, sel_BOOLForKey_, v20), v19, v20, (v21 & 1) == 0))
  {
    v22 = *(v2 + 112);
    if (v22 && (v23 = [v22 playerItem]) != 0 && (v24 = v23, v23, v24 == v4))
    {
      MEMORY[0x1C6952D20]();
      v40 = v49;
      sub_1C6016250();
      (*(v12 + 8))(v18, v10);
      v41 = v4;
      v42 = sub_1C60162B0();
      v43 = sub_1C6016F30();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v52 = v45;
        *v44 = 136446210;
        v46 = sub_1C5DBCDF8();
        v48 = sub_1C5C6AB10(v46, v47, &v52);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_1C5C61000, v42, v43, "[ALC]: 🟢 TransitionController removeSmartTransitionOutroItemReference: %{public}s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_4();
      }

      (*(v50 + 8))(v40, v51);
    }

    else
    {
      MEMORY[0x1C6952D20]();
      sub_1C6016250();
      (*(v12 + 8))(v16, v10);
      v25 = v4;

      v26 = sub_1C60162B0();
      v27 = sub_1C6016F20();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = 7104878;
        v29 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v29 = 136315394;
        v30 = sub_1C5DBCDF8();
        v32 = sub_1C5C6AB10(v30, v31, &v52);

        *(v29 + 4) = v32;
        *(v29 + 12) = 2080;
        v33 = *(v2 + 112);
        if (v33 && (v34 = [v33 playerItem]) != 0)
        {
          v35 = v34;
          v28 = sub_1C5DBCDF8();
          v37 = v36;
        }

        else
        {
          v37 = 0xE300000000000000;
        }

        v38 = sub_1C5C6AB10(v28, v37, &v52);

        *(v29 + 14) = v38;
        _os_log_impl(&dword_1C5C61000, v26, v27, "[ALC]: 🔴 TransitionController removeSmartTransitionOutroItemReference called with: %s but existing outroItemReference was %s", v29, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_4();
      }

      (*(v50 + 8))(v1, v51);
    }

    v39 = *(v2 + 112);
    *(v2 + 112) = 0;
  }

  OUTLINED_FUNCTION_237();
}

void sub_1C5DACED4(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = sub_1C5DE3F1C();
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = sub_1C5C6AA20();
      if (v3 < 0)
      {
        goto LABEL_53;
      }

      v4 = v3;
      if (v3)
      {
        v5 = 0;
        v57 = a1 & 0xC000000000000001;
        v50 = a1 & 0xFFFFFFFFFFFFFF8;
        v55 = *(MEMORY[0x1E6960C70] + 8);
        v56 = *MEMORY[0x1E6960C70];
        v53 = *(MEMORY[0x1E6960C70] + 16);
        v54 = *(MEMORY[0x1E6960C70] + 12);
        v43 = *(MEMORY[0x1E6960C88] + 8);
        v44 = *MEMORY[0x1E6960C88];
        v42 = *(MEMORY[0x1E6960C88] + 12);
        v41 = *(MEMORY[0x1E6960C88] + 16);
        v45 = a1;
        v51 = v3;
        while (1)
        {
          v6 = a1 + 8 * v5;
          if (v57)
          {
            v7 = MEMORY[0x1C6954040](v5, a1);
          }

          else
          {
            if (v5 >= *(v50 + 16))
            {
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
              return;
            }

            v7 = *(v6 + 32);
            swift_unknownObjectRetain();
          }

          ++v5;
          v8 = [v7 avPlayerItem];
          if (!v8)
          {
            swift_unknownObjectRelease();
            goto LABEL_46;
          }

          v9 = v8;
          v10 = v55;
          v11 = v56;
          v12 = v53;
          LODWORD(v13) = v54;
          if (v5 < v4)
          {
            break;
          }

LABEL_39:
          [v9 advanceTimeForOverlappedPlayback];
          if (sub_1C60171E0())
          {
            v46 = v12;
            v47 = v10;
            v49 = v11;
            v27 = [v9 asset];
            [v27 duration];
            v28 = __src[0];
            v48 = v9;
            v29 = __src[1];
            v30 = HIDWORD(__src[1]);
            v31 = __src[2];

            OUTLINED_FUNCTION_1_50();
            sub_1C5DB1340(v52 + 16, v61, &qword_1ED7DF410, qword_1ED7DF420, &protocol descriptor for EventReporting, v32);
            if (v62)
            {
              __swift_project_boxed_opaque_existential_0(v61, v62);
              __src[0] = 0;
              __src[1] = 0xE000000000000000;
              sub_1C6017540();
              v58 = __src[0];
              v59 = __src[1];
              MEMORY[0x1C69534E0](0xD000000000000025, 0x80000001C6050B50);
              __src[0] = v28;
              v33 = v29;
              __src[1] = __PAIR64__(v30, v29);
              __src[2] = v31;
              type metadata accessor for CMTime();
              sub_1C6017650();
              MEMORY[0x1C69534E0](544108320, 0xE400000000000000);
              v34 = v48;
              v35 = sub_1C5DBCDF8();
              MEMORY[0x1C69534E0](v35);

              __src[0] = 0x6E776F6E6B6E75;
              __src[1] = 0xE700000000000000;
              __src[2] = v58;
              __src[3] = v59;
              sub_1C5D5CEC8(__src);
              memcpy(__dst, __src, sizeof(__dst));
              sub_1C5DBBF0C();
              a1 = v45;

              __swift_destroy_boxed_opaque_existential_0(v61);
              v36 = v33;
            }

            else
            {
              OUTLINED_FUNCTION_0_58();
              sub_1C5DB13B0(v61, &qword_1ED7DF410, qword_1ED7DF420, &protocol descriptor for EventReporting, v37);
              v36 = v29;
              v34 = v48;
            }

            __src[0] = v28;
            __src[1] = __PAIR64__(v30, v36);
            __src[2] = v31;
            [v34 setOverlappedPlaybackEndTime_];
            __src[0] = v49;
            __src[1] = __PAIR64__(v13, v47);
            __src[2] = v46;
            [v34 setAdvanceTimeForOverlappedPlayback_];
            swift_unknownObjectRelease();

            goto LABEL_45;
          }

          swift_unknownObjectRelease();

LABEL_46:
          if (v4 == v5)
          {
            return;
          }
        }

        if (v57)
        {
          v14 = MEMORY[0x1C6954040](v5, a1);
          v15 = &selRef_currentThread;
        }

        else
        {
          v15 = &selRef_currentThread;
          if (v5 >= *(v50 + 16))
          {
            goto LABEL_52;
          }

          v14 = *(v6 + 40);
          swift_unknownObjectRetain();
        }

        v16 = [v14 avPlayerItem];
        if (!v16)
        {
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          a1 = v45;
LABEL_45:
          v4 = v51;
          goto LABEL_46;
        }

        v17 = v16;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v18 = sub_1C5DE4028();
          v19 = v18;
          if (v18)
          {
            if (v18 != 1)
            {
              swift_unknownObjectRetain();
              if ([v7 shouldPerformOverlappingTransitionWith_])
              {
                [v19 v15[176]];
                v21 = v20;
                sub_1C5DB0BAC(v19);
                swift_unknownObjectRelease();
                sub_1C5DB0BAC(v19);
                if (v21 > 0.0)
                {
                  v22 = [v9 asset];
                  [v22 v15[176]];

                  v23 = sub_1C6017220() - v21;
                  if (v23 > 0.0)
                  {
                    [v9 currentTime];
                    if (sub_1C6017220() + 0.1 < v23)
                    {
                      if (swift_unknownObjectWeakLoadStrong())
                      {
                        v24 = sub_1C5DE3F2C(v9);
                        swift_unknownObjectRelease();
                        if (v24)
                        {
                          if (v23 == INFINITY)
                          {
                            swift_unknownObjectRelease();

                            v10 = v43;
                            v11 = v44;
                            v12 = v41;
                            LODWORD(v13) = v42;
                          }

                          else
                          {
                            v11 = sub_1C6017210();
                            v39 = v38;
                            v12 = v40;
                            swift_unknownObjectRelease();

                            v10 = v39;
                            v13 = HIDWORD(v39);
                          }

                          goto LABEL_38;
                        }
                      }
                    }
                  }
                }

                goto LABEL_30;
              }
            }
          }

          else if ([v7 shouldPerformOverlappingTransitionWith_])
          {
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return;
          }

          if ([v7 shouldPerformGaplessTransitionWith_] && (v25 = objc_msgSend(v7, sel_gaplessParameters)) != 0)
          {
            v26 = v25;
            [v25 durationInFrames];
            [v26 lastPacketsResync];
            [v26 encodingDelayInFrames];
            [v26 encodingDrainInFrames];
            [v26 heuristicInfo];

            swift_unknownObjectRelease();
          }

          else
          {
          }

          sub_1C5DB0BAC(v19);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1C5DB0BAC(v19);
          goto LABEL_37;
        }

LABEL_30:
        swift_unknownObjectRelease();

LABEL_37:
        v10 = v55;
        v11 = v56;
        v12 = v53;
        LODWORD(v13) = v54;
LABEL_38:
        a1 = v45;
        v4 = v51;
        goto LABEL_39;
      }
    }
  }
}

void sub_1C5DAD5C8()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = v3;
  v12[4] = v1;
  sub_1C5DABCEC(__dst);
  if (!*(&__dst[1] + 1))
  {

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_0_58();
    sub_1C5DB13B0(__dst, v30, v31, v32, v33);
    goto LABEL_7;
  }

  v13 = v7;
  v116 = v12;
  sub_1C5C6BEFC(__dst, v117);
  v15 = *(&v117[1] + 1);
  v14 = *&v117[2];
  OUTLINED_FUNCTION_45(v117, *(&v117[1] + 1));
  v16 = *(v14 + 56);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v17 = v16(v15, v14);
  if (v18 != 1)
  {
    __swift_destroy_boxed_opaque_existential_0(v117);
    v12 = v116;
    v7 = v13;
LABEL_7:
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1C5DAF01C(v11, v9, v7 + 16, Strong, *(v7 + 64), v7 + 72, v120);
    swift_unknownObjectRelease();
    v35 = v121;
    v36 = v122;
    __swift_project_boxed_opaque_existential_0(v120, v121);
    OUTLINED_FUNCTION_16_0();
    v38 = v37(v35, v36);
    v40 = v39;
    OUTLINED_FUNCTION_1_50();
    sub_1C5DB1340(v7 + 16, v117, v41, v42, v43, v44);
    if (*(&v117[1] + 1))
    {
      OUTLINED_FUNCTION_45(v117, *(&v117[1] + 1));
      OUTLINED_FUNCTION_89();
      *&__src[0] = v38;
      *(&__src[0] + 1) = v40;
      *&__src[1] = 0xD000000000000024;
      *(&__src[1] + 1) = v45;
      sub_1C5D5CEC8(__src);
      memcpy(__dst, __src, 0xD9uLL);

      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v117);
    }

    else
    {
      OUTLINED_FUNCTION_0_58();
      sub_1C5DB13B0(v117, v58, v59, v60, v61);
    }

    sub_1C5DABCEC(__src);
    v62 = *(&__src[1] + 1);
    if (*(&__src[1] + 1))
    {
      v63 = *&__src[2];
      __swift_project_boxed_opaque_existential_0(__src, *(&__src[1] + 1));
      OUTLINED_FUNCTION_16_0();
      v65 = v64(v62, v63);
      v67 = v66;
      __swift_destroy_boxed_opaque_existential_0(__src);
      v68 = v65 == v38 && v67 == v40;
      if (!v68 && (sub_1C6017860() & 1) == 0)
      {
        OUTLINED_FUNCTION_1_50();
        sub_1C5DB1340(v7 + 16, v118, v90, v91, v92, v93);
        if (v119)
        {
          __swift_project_boxed_opaque_existential_0(v118, v119);
          *&__src[0] = 0;
          *(&__src[0] + 1) = 0xE000000000000000;

          sub_1C6017540();

          OUTLINED_FUNCTION_89();
          *&__src[0] = 0xD00000000000001ELL;
          *(&__src[0] + 1) = v94;
          MEMORY[0x1C69534E0](v65, v67);
          *&v117[0] = v38;
          *(&v117[0] + 1) = v40;
          v117[1] = __src[0];
          sub_1C5D5CEC8(v117);
          memcpy(__src, v117, 0xD9uLL);
          sub_1C5DBBF0C();

          __swift_destroy_boxed_opaque_existential_0(v118);
        }

        else
        {
          OUTLINED_FUNCTION_0_58();
          sub_1C5DB13B0(v118, v108, v109, v110, v111);
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        v118[0] = 2;
        *&v117[0] = 0;
        *(&v117[0] + 1) = 0xE000000000000000;
        sub_1C6017540();

        *&v117[0] = 0x697469736E617254;
        *(&v117[0] + 1) = 0xEB00000000206E6FLL;
        MEMORY[0x1C69534E0](v65, v67);

        OUTLINED_FUNCTION_109();
        MEMORY[0x1C69534E0](0xD00000000000001DLL);
        MEMORY[0x1C69534E0](v38, v40);

        sub_1C6016880();
        _s3__C4CodeOMa_6();
        sub_1C5DB0894();
        OUTLINED_FUNCTION_26();
        v112 = sub_1C6017280();

        sub_1C5DAE024(v112);

LABEL_43:
        sub_1C5DB0BBC(v120, v117);
        type metadata accessor for PlayerItemTransitionTask();
        v113 = swift_allocObject();
        *(v113 + 16) = 0;
        sub_1C5C6BEFC(v117, v113 + 24);
        *(v7 + 120) = v113;

        if (*(v7 + 120))
        {

          sub_1C5DAF884(sub_1C5DB07D8, v12);
        }

        goto LABEL_45;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_58();
      sub_1C5DB13B0(__src, v69, v70, v71, v72);
    }

    v73 = *(v7 + 120);
    if (v73)
    {
      v114 = v7;
      v115 = v40;
      v75 = v73[6];
      v74 = v73[7];
      OUTLINED_FUNCTION_45(v73 + 3, v75);
      v76 = *(v74 + 8);

      v77 = v76(v75, v74);
      v79 = v78;

      if (v77 == v38 && v79 == v115)
      {
      }

      else
      {
        v81 = sub_1C6017860();

        if ((v81 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      sub_1C5DABCEC(__src);
      v82 = *(&__src[1] + 1);
      if (*(&__src[1] + 1))
      {
        v83 = *&__src[2];
        __swift_project_boxed_opaque_existential_0(__src, *(&__src[1] + 1));
        v84 = (*(v83 + 56))(v82, v83);
        v86 = v85;
        __swift_destroy_boxed_opaque_existential_0(__src);
        v87 = v86 >= 2;
        v7 = v114;
        v88 = v87 && v84 == 1;
        v89 = v38;
        if (v88)
        {
          goto LABEL_26;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_58();
        sub_1C5DB13B0(__src, v95, v96, v97, v98);
        v89 = v38;
      }

      OUTLINED_FUNCTION_1_50();
      sub_1C5DB1340(v7 + 16, v118, v99, v100, v101, v102);
      if (v119)
      {
        OUTLINED_FUNCTION_45(v118, v119);
        OUTLINED_FUNCTION_89();
        *&v117[0] = v89;
        *(&v117[0] + 1) = v115;
        *&v117[1] = 0xD00000000000003DLL;
        *(&v117[1] + 1) = v103;
        sub_1C5D5CEC8(v117);
        memcpy(__src, v117, 0xD9uLL);
        sub_1C5DBBF0C();

        __swift_destroy_boxed_opaque_existential_0(v118);
      }

      else
      {

        OUTLINED_FUNCTION_0_58();
        sub_1C5DB13B0(v118, v104, v105, v106, v107);
      }

LABEL_45:
      __swift_destroy_boxed_opaque_existential_0(v120);

      goto LABEL_46;
    }

LABEL_26:

    goto LABEL_43;
  }

  v19 = v17;
  OUTLINED_FUNCTION_1_50();
  sub_1C5DB1340(v13 + 16, v120, v20, v21, v22, v23);
  if (v121)
  {
    __swift_project_boxed_opaque_existential_0(v120, v121);
    v24 = *(&v117[1] + 1);
    v25 = *&v117[2];
    __swift_project_boxed_opaque_existential_0(v117, *(&v117[1] + 1));
    OUTLINED_FUNCTION_16_0();
    v26(v24, v25);
    OUTLINED_FUNCTION_89();
    *&__src[0] = v27;
    *(&__src[0] + 1) = v28;
    *&__src[1] = 0xD00000000000003ALL;
    *(&__src[1] + 1) = v29;
    sub_1C5D5CEC8(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v120);
  }

  else
  {
    OUTLINED_FUNCTION_0_58();
    sub_1C5DB13B0(v120, v46, v47, v48, v49);
  }

  v50 = *(&v117[1] + 1);
  v51 = *&v117[2];
  __swift_project_boxed_opaque_existential_0(v117, *(&v117[1] + 1));
  OUTLINED_FUNCTION_16_0();
  v53 = v52(v50, v51);
  v55 = v54;
  sub_1C5DB07E4();
  OUTLINED_FUNCTION_10_1();
  v56 = swift_allocError();
  *v57 = v53;
  *(v57 + 8) = v55;
  *(v57 + 16) = v19;
  *(v57 + 24) = 1;
  *&__src[0] = v56;
  BYTE8(__src[2]) = 1;
  sub_1C5D57DD8();
  sub_1C5DB0838(__src);
  __swift_destroy_boxed_opaque_existential_0(v117);

LABEL_46:

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5DAE024(uint64_t a1)
{
  v3 = *(v1 + 120);
  if (v3)
  {
    sub_1C5DB0BBC(v3 + 24, __dst);
    sub_1C5C6BEFC(__dst, v25);
    sub_1C5DB0BBC(v25, __src);
    sub_1C5C74680(0, qword_1ED7DE920, &protocol descriptor for PlayerItemTransition);
    if (swift_dynamicCast())
    {
      v4 = *&__dst[2];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_1_50();
      sub_1C5DB1340(v1 + 16, v23, v5, v6, v7, v8);
      if (v24)
      {
        __swift_project_boxed_opaque_existential_0(v23, v24);
        v9 = v26;
        v10 = v27;
        __swift_project_boxed_opaque_existential_0(v25, v26);
        OUTLINED_FUNCTION_16_0();
        v12 = v11(v9, v10);
        v14 = v13;
        *&__dst[0] = 0;
        *(&__dst[0] + 1) = 0xE000000000000000;
        sub_1C6017540();
        OUTLINED_FUNCTION_109();
        MEMORY[0x1C69534E0](0xD00000000000001ELL);
        __swift_project_boxed_opaque_existential_0(v25, v26);
        sub_1C6017830();
        MEMORY[0x1C69534E0](0x3A6E6F7361657220, 0xE800000000000000);
        swift_getErrorValue();
        sub_1C6017830();
        *&__src[0] = v12;
        *(&__src[0] + 1) = v14;
        __src[1] = __dst[0];
        sub_1C5D5CEC8(__src);
        memcpy(__dst, __src, 0xD9uLL);
        sub_1C5DBBF0C();

        __swift_destroy_boxed_opaque_existential_0(v23);
      }

      else
      {
        OUTLINED_FUNCTION_0_58();
        sub_1C5DB13B0(v23, v15, v16, v17, v18);
      }

      v19 = v26;
      v20 = v27;
      __swift_project_boxed_opaque_existential_0(v25, v26);
      (*(v20 + 104))(v19, v20);
      if (swift_unknownObjectWeakLoadStrong())
      {
        __swift_project_boxed_opaque_existential_0(v25, v26);
        sub_1C5DE88A8();
        swift_unknownObjectRelease();
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  return sub_1C5DAF9AC(a1);
}

uint64_t sub_1C5DAE2E8()
{
  v1 = v0;
  v2 = sub_1C6014A60();
  OUTLINED_FUNCTION_25();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v8 = v7 - v6;
  v9 = type metadata accessor for PlayerItemTransitionProvided(0);
  v10 = OUTLINED_FUNCTION_13_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_146();
  v13 = v12 - v11;
  sub_1C5DB12DC(v1, v12 - v11);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 2, v2);
  if (EnumTagSinglePayload)
  {
    return EnumTagSinglePayload != 1;
  }

  (*(v4 + 32))(v8, v13, v2);
  v16 = (*(v4 + 88))(v8, v2);
  if (v16 == *MEMORY[0x1E69E3BF8])
  {
    return 2;
  }

  if (v16 == *MEMORY[0x1E69E3BE0])
  {
    return 3;
  }

  if (v16 == *MEMORY[0x1E69E3BE8])
  {
    return 4;
  }

  if (v16 == *MEMORY[0x1E69E3BF0])
  {
    return 5;
  }

  (*(v4 + 8))(v8, v2);
  return 0;
}

uint64_t sub_1C5DAE4B8()
{
  OUTLINED_FUNCTION_3_37();
  sub_1C5DB08EC(0, v1, v2, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60379E0;
  *(inited + 32) = 0x6D69547472617473;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(inited + 56) = 0x7461527472617473;
  *(inited + 64) = 0xE900000000000065;
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *(inited + 72) = OUTLINED_FUNCTION_37_5(v4, v5);
  *(inited + 80) = 0x6C6F567472617473;
  *(inited + 88) = 0xEB00000000656D75;
  v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *(inited + 96) = OUTLINED_FUNCTION_37_5(v6, v7);
  *(inited + 104) = 0x6E6F697461727564;
  *(inited + 112) = 0xE800000000000000;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(inited + 128) = 0x656D6954646E65;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(inited + 152) = 0x65746152646E65;
  *(inited + 160) = 0xE700000000000000;
  v8 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *(inited + 168) = OUTLINED_FUNCTION_37_5(v8, v9);
  *(inited + 176) = 0x6D756C6F56646E65;
  *(inited + 184) = 0xE900000000000065;
  v10 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *(inited + 192) = OUTLINED_FUNCTION_37_5(v10, v11);
  sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
  return sub_1C6016880();
}

uint64_t sub_1C5DAE6C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = HIDWORD(a3);
  OUTLINED_FUNCTION_3_37();
  sub_1C5DB08EC(0, v9, v10, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6040BB0;
  OUTLINED_FUNCTION_89();
  *(v12 + 32) = 0xD00000000000001ELL;
  *(v12 + 40) = v13;
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  OUTLINED_FUNCTION_89();
  *(inited + 48) = v14;
  *(inited + 56) = 0xD000000000000023;
  *(inited + 64) = v15;
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  OUTLINED_FUNCTION_89();
  *(inited + 72) = v16;
  *(inited + 80) = 0xD000000000000023;
  *(inited + 88) = v17;
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  OUTLINED_FUNCTION_89();
  *(inited + 96) = v18;
  *(inited + 104) = 0xD00000000000001BLL;
  *(inited + 112) = v19;
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  OUTLINED_FUNCTION_89();
  *(inited + 120) = v20;
  *(inited + 128) = 0xD00000000000001FLL;
  *(inited + 136) = v21;
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  OUTLINED_FUNCTION_89();
  *(inited + 144) = v22;
  *(inited + 152) = 0xD00000000000001CLL;
  *(inited + 160) = v23;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
  return sub_1C6016880();
}

uint64_t sub_1C5DAE8AC()
{
  OUTLINED_FUNCTION_2_37();
  v37 = v2;
  v36 = MEMORY[0x1E69E6720];
  sub_1C5DB08EC(0, v3, v4, MEMORY[0x1E69E6720]);
  v6 = OUTLINED_FUNCTION_13_3(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17_19();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  OUTLINED_FUNCTION_3_37();
  sub_1C5DB08EC(0, v10, v11, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311C0;
  OUTLINED_FUNCTION_89();
  *(v13 + 32) = 0xD000000000000019;
  *(v13 + 40) = v14;
  MEMORY[0x1C69515E0]();
  OUTLINED_FUNCTION_23_14(objc_allocWithZone(MEMORY[0x1E696AD98]));
  OUTLINED_FUNCTION_89();
  *(inited + 48) = v15;
  *(inited + 56) = 0xD000000000000019;
  *(inited + 64) = v16;
  sub_1C6014B10();
  OUTLINED_FUNCTION_23_14(objc_allocWithZone(MEMORY[0x1E696AD98]));
  OUTLINED_FUNCTION_89();
  *(inited + 72) = v17;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = v18;
  v19 = type metadata accessor for SmartTransitionParameters(0);
  MEMORY[0x1C69515E0]();
  OUTLINED_FUNCTION_23_14(objc_allocWithZone(MEMORY[0x1E696AD98]));
  OUTLINED_FUNCTION_89();
  *(inited + 96) = v20;
  *(inited + 104) = 0xD000000000000017;
  *(inited + 112) = v21;
  sub_1C6014B10();
  OUTLINED_FUNCTION_23_14(objc_allocWithZone(MEMORY[0x1E696AD98]));
  OUTLINED_FUNCTION_89();
  *(inited + 120) = v22;
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = v23;
  v24 = *(v19 + 32);
  OUTLINED_FUNCTION_8_28();
  sub_1C5DB1340(v0 + v24, v9, &qword_1EC1AB750, v37, v36, v25);
  v26 = sub_1C6014B20();
  if (__swift_getEnumTagSinglePayload(v9, 1, v26) == 1)
  {
    OUTLINED_FUNCTION_2_37();
    sub_1C5DB13B0(v9, v27, v28, MEMORY[0x1E69E6720], sub_1C5DB08EC);
  }

  else
  {
    MEMORY[0x1C69515E0]();
    OUTLINED_FUNCTION_50_0();
    (*(v29 + 8))(v9, v26);
  }

  OUTLINED_FUNCTION_23_14(objc_allocWithZone(MEMORY[0x1E696AD98]));
  OUTLINED_FUNCTION_89();
  *(inited + 144) = v30;
  *(inited + 152) = 0xD000000000000016;
  *(inited + 160) = v31;
  sub_1C5DB1340(v0 + v24, v1, &qword_1EC1AB750, MEMORY[0x1E69E3C00], MEMORY[0x1E69E6720], sub_1C5DB08EC);
  if (__swift_getEnumTagSinglePayload(v1, 1, v26) == 1)
  {
    OUTLINED_FUNCTION_2_37();
    sub_1C5DB13B0(v1, v32, v33, MEMORY[0x1E69E6720], sub_1C5DB08EC);
  }

  else
  {
    sub_1C6014B10();
    OUTLINED_FUNCTION_50_0();
    (*(v34 + 8))(v1, v26);
  }

  *(inited + 168) = OUTLINED_FUNCTION_23_14(objc_allocWithZone(MEMORY[0x1E696AD98]));
  *(inited + 176) = 0x756F53746F766970;
  *(inited + 184) = 0xEF656D6954656372;
  MEMORY[0x1C69515E0]();
  *(inited + 192) = OUTLINED_FUNCTION_23_14(objc_allocWithZone(MEMORY[0x1E696AD98]));
  *(inited + 200) = 0x726154746F766970;
  *(inited + 208) = 0xEF656D6954746567;
  sub_1C6014B10();
  *(inited + 216) = OUTLINED_FUNCTION_23_14(objc_allocWithZone(MEMORY[0x1E696AD98]));
  *(inited + 224) = 0x5265676172657661;
  *(inited + 232) = 0xEB00000000657461;
  *(inited + 240) = OUTLINED_FUNCTION_23_14(objc_allocWithZone(MEMORY[0x1E696AD98]));
  sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
  return sub_1C6016880();
}

uint64_t sub_1C5DAED88()
{
  v2 = MEMORY[0x1E69E3C00];
  v3 = MEMORY[0x1E69E6720];
  sub_1C5DB08EC(0, &qword_1EC1AB750, MEMORY[0x1E69E3C00], MEMORY[0x1E69E6720]);
  v5 = OUTLINED_FUNCTION_13_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_21_20();
  type metadata accessor for SmartTransitionParameters(v6);
  OUTLINED_FUNCTION_8_28();
  sub_1C5DB1340(v0 + v7, v1, &qword_1EC1AB750, v2, v3, v8);
  v9 = sub_1C6014B20();
  if (__swift_getEnumTagSinglePayload(v1, 1, v9) == 1)
  {
    OUTLINED_FUNCTION_2_37();
    sub_1C5DB13B0(v1, v10, v11, MEMORY[0x1E69E6720], sub_1C5DB08EC);
    return 0;
  }

  else
  {
    sub_1C6014B10();
    v14 = v13;
    OUTLINED_FUNCTION_50_0();
    (*(v15 + 8))(v1, v9);
    return v14;
  }
}

id sub_1C5DAEF08(void *a1)
{
  v2 = [a1 durationInFrames];
  [a1 lastPacketsResync];
  [a1 encodingDelayInFrames];
  [a1 encodingDrainInFrames];
  [a1 heuristicInfo];
  swift_unknownObjectRelease();
  return v2;
}

double sub_1C5DAEFB4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 duration];
  v4 = v3;
  swift_unknownObjectRelease();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a2 + 24) = result;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  return result;
}

void sub_1C5DAF01C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  if (!a1 || !a2)
  {
    sub_1C5DB0B58();
    OUTLINED_FUNCTION_10_1();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    return;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (![a1 isAssetLoaded] || !objc_msgSend(a2, sel_isAssetLoaded))
  {
    sub_1C5DB0B58();
    OUTLINED_FUNCTION_10_1();
    swift_allocError();
    v30 = 1;
LABEL_16:
    *v29 = v30;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  v14 = [a1 avPlayerItem];
  if (!v14)
  {
LABEL_18:
    sub_1C5DB0B58();
    OUTLINED_FUNCTION_10_1();
    swift_allocError();
    v30 = 2;
    goto LABEL_16;
  }

  v71 = v14;
  v15 = [a2 avPlayerItem];
  if (!v15)
  {

    goto LABEL_18;
  }

  v70 = v15;
  if (!a4)
  {
LABEL_32:
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1C5DB292C(a1, a2, v78);
    a7[3] = &type metadata for UnmanagedPlayerItemTransition;
    a7[4] = &off_1F4544480;
    v65 = swift_allocObject();
    *a7 = v65;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v66 = v78[1];
    *(v65 + 16) = v78[0];
    *(v65 + 32) = v66;
    *(v65 + 48) = v78[2];
    *(v65 + 64) = v79;
    return;
  }

  v69 = a7;
  v16 = sub_1C5DE4028();
  if (v16)
  {
    v17 = v16;
    v18 = &selRef_hasCapability_;
    if (v16 != 1)
    {
      swift_unknownObjectRetain();
      if ([a1 shouldPerformOverlappingTransitionWith_])
      {
        sub_1C5DAEFB4(v17, v77);
        sub_1C5DB0BAC(v17);
        a7 = v69;
        if (sub_1C5DE3F1C())
        {
          [v71 currentTime];
          v19 = sub_1C6017220() + 0.1 + v77[0];
          v20 = [v71 asset];
          [v20 duration];

          if (v19 < sub_1C6017220())
          {
            OUTLINED_FUNCTION_1_50();
            sub_1C5DB1340(a3, v76, v21, v22, v23, v24);
            v25 = type metadata accessor for CrossFadePlayerItemTransition();
            swift_allocObject();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v26 = sub_1C5D97A10(a1, a2, v77, v76, a4, a5);
            v27 = &off_1F4543970;
            v69[3] = v25;
LABEL_23:
            a7[4] = v27;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            *a7 = v26;
            return;
          }
        }

        goto LABEL_32;
      }
    }
  }

  else
  {
    v17 = 0;
    v18 = &selRef_hasCapability_;
    if ([a1 shouldPerformOverlappingTransitionWith_])
    {
      a7 = v69;
      if (sub_1C5DE3F1C())
      {
        [v71 currentTime];
        v31 = sub_1C6017220() + 0.5;
        v32 = [v71 asset];
        [v32 duration];

        if (v31 < sub_1C6017220())
        {
          sub_1C5DB0BBC(a6, v76);
          __swift_mutable_project_boxed_opaque_existential_1(v76, v76[3]);
          v74 = &type metadata for TransitionProvider;
          v75 = &off_1F45443B8;
          v33 = type metadata accessor for SmartPlayerItemTransition(0);
          v34 = swift_allocObject();
          __swift_mutable_project_boxed_opaque_existential_1(&v72, &type metadata for TransitionProvider);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v26 = sub_1C5DB0C1C(a1, a2, a4, a5, v34);
          __swift_destroy_boxed_opaque_existential_0(&v72);
          __swift_destroy_boxed_opaque_existential_0(v76);
          v27 = &off_1F4543C58;
          v69[3] = v33;
          goto LABEL_23;
        }
      }

      goto LABEL_32;
    }
  }

  if (![a1 shouldPerformGaplessTransitionWith_] || (v35 = objc_msgSend(a1, sel_gaplessParameters)) == 0)
  {
    sub_1C5DB0BAC(v17);
    sub_1C5DB0BAC(v17);
    a7 = v69;
    goto LABEL_32;
  }

  v36 = sub_1C5DAEF08(v35);
  v67 = v37;
  v39 = v38;
  v68 = v40;
  sub_1C5DB0BAC(v17);
  sub_1C5DB0BAC(v17);
  OUTLINED_FUNCTION_1_50();
  sub_1C5DB1340(a3, v76, v41, v42, v43, v44);
  v69[3] = &type metadata for GaplessPlayerItemTransition;
  v69[4] = &off_1F4543B48;
  v45 = swift_allocObject();
  *v69 = v45;
  *(v45 + 16) = 0;
  if (([a1 v18[403]] & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (![a2 v18[403]])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v45 + 72) = v36;
  *(v45 + 80) = v67;
  *(v45 + 88) = v39;
  *(v45 + 96) = v68;
  *(v45 + 40) = a1;
  v46 = [swift_unknownObjectRetain() avPlayerItem];
  if (v46)
  {
    v47 = v46;
    swift_unknownObjectRelease();
    *(v45 + 48) = v47;
    *(v45 + 56) = a2;
    swift_unknownObjectRetain();
    v48 = v47;
    v49 = [a2 avPlayerItem];
    if (v49)
    {
      v50 = v49;
      swift_unknownObjectRelease();
      *(v45 + 64) = v50;
      OUTLINED_FUNCTION_1_50();
      sub_1C5DB1340(v76, v45 + 104, v51, v52, &protocol descriptor for EventReporting, v53);
      v54 = v50;
      v55 = [v48 description];
      v56 = sub_1C6016940();
      v58 = v57;

      v73 = v58;
      MEMORY[0x1C69534E0](0x2020988980F420, 0xA700000000000000);
      v59 = [v54 description];
      v60 = sub_1C6016940();
      v62 = v61;

      MEMORY[0x1C69534E0](v60, v62);

      v63 = v73;
      OUTLINED_FUNCTION_0_58();
      sub_1C5DB13B0(v76, &qword_1ED7DF410, qword_1ED7DF420, &protocol descriptor for EventReporting, v64);

      *(v45 + 24) = v56;
      *(v45 + 32) = v63;
      return;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

BOOL sub_1C5DAF7A0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      return *&a1 == *&a3;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      return *&a1 == *&a3;
    }

    return 0;
  }

  switch(a1)
  {
    case 1:
      if (a4 != 2 || a3 != 1)
      {
        return 0;
      }

      break;
    case 2:
      if (a4 != 2 || a3 != 2)
      {
        return 0;
      }

      break;
    case 3:
      if (a4 != 2 || a3 != 3)
      {
        return 0;
      }

      break;
    case 4:
      if (a4 != 2 || a3 != 4)
      {
        return 0;
      }

      break;
    case 5:
      if (a4 != 2 || a3 != 5)
      {
        return 0;
      }

      break;
    default:
      if (a4 != 2 || *&a3 != 0.0)
      {
        return 0;
      }

      break;
  }

  return 1;
}

uint64_t sub_1C5DAF884(uint64_t a1, uint64_t a2)
{
  sub_1C5DB08EC(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7 = OUTLINED_FUNCTION_13_3(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21_20();
  v8 = sub_1C6016C30();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  sub_1C5DB0BBC(v2 + 24, v12);
  OUTLINED_FUNCTION_34_10();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  sub_1C5C6BEFC(v12, (v9 + 4));
  v9[9] = a1;
  v9[10] = a2;

  OUTLINED_FUNCTION_34();
  sub_1C5E1161C();
  *(v2 + 16) = v10;
}

uint64_t sub_1C5DAF9AC(uint64_t a1)
{
  OUTLINED_FUNCTION_1_50();
  sub_1C5DB1340(v1 + 16, v19, v2, v3, v4, v5);
  if (v20)
  {
    __swift_project_boxed_opaque_existential_0(v19, v20);
    v6 = *(v1 + 120);
    if (v6)
    {
      sub_1C5DB0BBC(v6 + 24, __dst);
      v7 = __dst[3];
      v8 = __dst[4];
      __swift_project_boxed_opaque_existential_0(__dst, __dst[3]);
      OUTLINED_FUNCTION_16_0();
      v10 = v9(v7, v8);
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_0(__dst);
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    OUTLINED_FUNCTION_109();
    MEMORY[0x1C69534E0](0xD00000000000001ELL);
    swift_getErrorValue();
    sub_1C6017830();
    __src[0] = v10;
    __src[1] = v12;
    __src[2] = __dst[0];
    __src[3] = __dst[1];
    sub_1C5D5CEC8(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    OUTLINED_FUNCTION_0_58();
    sub_1C5DB13B0(v19, v13, v14, v15, v16);
  }

  if (*(v1 + 120))
  {

    sub_1C5DAFB80();
  }

  *(v1 + 120) = 0;
}