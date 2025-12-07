uint64_t sub_1BF0AE5FC(int *a1)
{
  v3 = sub_1BF17923C();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v1[4] = v4;
  v7 = (a1 + *a1);
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = sub_1BF0AE758;

  return v7(v4);
}

uint64_t sub_1BF0AE758()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF0AE854()
{
  OUTLINED_FUNCTION_13_2();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1BF1791DC();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_20_5();

  return v7(v4, v6);
}

uint64_t sub_1BF0AE8F4()
{
  OUTLINED_FUNCTION_13_2();
  if (qword_1EBDCAFE0 != -1)
  {
    OUTLINED_FUNCTION_1_15(&qword_1EBDCAFE0);
  }

  v1 = *(v0 + 48);
  v2 = sub_1BF1797FC();
  __swift_project_value_buffer(v2, qword_1EBDCCE48);
  v3 = v1;
  v4 = sub_1BF1797DC();
  v5 = sub_1BF17ACBC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = OUTLINED_FUNCTION_70();
    v8 = OUTLINED_FUNCTION_83();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BEFE0000, v4, v5, "Custom attachment exporter failed; error=%@", v7, 0xCu);
    OUTLINED_FUNCTION_0_17();
    sub_1BF0B216C(v8, v11);
    OUTLINED_FUNCTION_21_6();
    OUTLINED_FUNCTION_28();
  }

  swift_willThrow();

  OUTLINED_FUNCTION_9();

  return v12();
}

uint64_t sub_1BF0AEA50(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_14_7();
}

uint64_t sub_1BF0AEA64()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[3];
  OUTLINED_FUNCTION_15_5(v2, &qword_1ED8ECC00);
  v4 = v3;
  v5 = swift_allocObject();
  v0[5] = v5;
  swift_weakInit();
  v6 = swift_task_alloc();
  v0[6] = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  sub_1BF0B1D4C(0, &qword_1ED8EE9D0, MEMORY[0x1E69E62F8]);
  v8 = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  v0[7] = v9;
  *v9 = v10;
  v9[1] = sub_1BF0AEBA8;

  return MEMORY[0x1EEE6DBF8](v0 + 2, v4, v8, 0, 0, &unk_1BF180640, v6, v4);
}

uint64_t sub_1BF0AEBA8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF0AECE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_1BF00974C(0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF0AED80, 0, 0);
}

uint64_t sub_1BF0AED80()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v23 = **(v0 + 80);
    v3 = (v1 + 32);
    v4 = sub_1BF17A77C();
    do
    {
      v6 = *(v0 + 104);
      v5 = *(v0 + 112);
      v7 = *(v0 + 96);
      v8 = *v3;
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v4);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v7;
      v9[5] = v8;
      sub_1BF047B30(v5, v6);
      LODWORD(v6) = __swift_getEnumTagSinglePayload(v6, 1, v4);
      swift_retain_n();

      v10 = *(v0 + 104);
      if (v6 == 1)
      {
        OUTLINED_FUNCTION_13_8();
        sub_1BF0B216C(v10, v11);
      }

      else
      {
        sub_1BF17A76C();
        (*(*(v4 - 8) + 8))(v10, v4);
      }

      v12 = v4;
      if (v9[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v13 = sub_1BF17A6AC();
        v15 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      v16 = swift_allocObject();
      *(v16 + 16) = &unk_1BF180658;
      *(v16 + 24) = v9;
      sub_1BF0B1D4C(0, &qword_1ED8ECC00, MEMORY[0x1E69E6720]);

      if (v15 | v13)
      {
        v17 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v13;
        *(v0 + 40) = v15;
      }

      else
      {
        v17 = 0;
      }

      v4 = v12;
      v18 = *(v0 + 112);
      *(v0 + 48) = 1;
      *(v0 + 56) = v17;
      *(v0 + 64) = v23;
      swift_task_create();

      OUTLINED_FUNCTION_13_8();
      sub_1BF0B216C(v18, v19);
      --v2;
      ++v3;
    }

    while (v2);
  }

  v20 = **(v0 + 80);
  v21 = swift_task_alloc();
  *(v0 + 120) = v21;
  *v21 = v0;
  v21[1] = sub_1BF0AF0A0;

  return sub_1BF0AF618(v20);
}

void sub_1BF0AF0A0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_14();

    MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }
}

void sub_1BF0AF1B8()
{
  v1 = 0;
  v2 = *(v0 + 128);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (v2 + 40 + 16 * v1);
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v5 + 2;
    ++v1;
    v7 = *v5;
    v5 += 2;
    if (v7)
    {
      v8 = *(v6 - 3);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1BF0201A4();
        v4 = v11;
      }

      v9 = *(v4 + 16);
      if (v9 >= *(v4 + 24) >> 1)
      {
        sub_1BF0201A4();
        v4 = v12;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 16 * v9;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      goto LABEL_2;
    }
  }

  v13 = *(v0 + 72);

  *v13 = v4;

  OUTLINED_FUNCTION_9();

  v14();
}

uint64_t sub_1BF0AF308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF0AF32C, 0, 0);
}

uint64_t sub_1BF0AF32C()
{
  OUTLINED_FUNCTION_5();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v0[5] = v0[8];
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1BF0AF424;

    return sub_1BF0AC088(v0 + 5);
  }

  else
  {
    v4 = v0[6];
    *v4 = 0;
    v4[1] = 0;
    OUTLINED_FUNCTION_9();

    return v5();
  }
}

uint64_t sub_1BF0AF424()
{
  OUTLINED_FUNCTION_13_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  v7[11] = v0;

  if (!v0)
  {
    v7[12] = v3;
    v7[13] = v5;
  }

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BF0AF540()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[6];

  *v3 = v2;
  v3[1] = v1;
  OUTLINED_FUNCTION_9();

  return v4();
}

uint64_t sub_1BF0AF5AC()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  *v2 = 0;
  v2[1] = 0;
  OUTLINED_FUNCTION_9();

  return v3();
}

uint64_t sub_1BF0AF618(uint64_t a1)
{
  v1[4] = a1;
  sub_1BF0B20F8(0);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF0AF6D8, 0, 0);
}

uint64_t sub_1BF0AF6D8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_5(v1, &qword_1ED8ECC00);
  sub_1BF17A6FC();
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_12_7();
  sub_1BF0B2368(v2, v3, MEMORY[0x1E69E8598]);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 72) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_8_7(v4);
  OUTLINED_FUNCTION_28_4();

  return MEMORY[0x1EEE6D8C8](v6);
}

uint64_t sub_1BF0AF7A8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v3[10] = v0;

  if (v0)
  {
    (*(v3[6] + 8))(v3[7], v3[5]);
  }

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF0AF8C4()
{
  OUTLINED_FUNCTION_13_2();
  if (*(v0 + 24) == 1)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

    v1 = *(v0 + 8);
    v2 = *(v0 + 64);

    return v1(v2);
  }

  else
  {
    v16 = *(v0 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 64);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1BF0A6688();
      v5 = v14;
    }

    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    v8 = v16;
    if (v7 >= v6 >> 1)
    {
      OUTLINED_FUNCTION_31_4(v6);
      sub_1BF0A6688();
      v8 = v16;
      v5 = v15;
    }

    *(v5 + 16) = v7 + 1;
    *(v5 + 16 * v7 + 32) = v8;
    *(v0 + 64) = v5;
    OUTLINED_FUNCTION_12_7();
    sub_1BF0B2368(v9, v10, MEMORY[0x1E69E8598]);
    swift_task_alloc();
    OUTLINED_FUNCTION_7_1();
    *(v0 + 72) = v11;
    *v11 = v12;
    OUTLINED_FUNCTION_8_7(v11);
    OUTLINED_FUNCTION_28_4();

    return MEMORY[0x1EEE6D8C8](v13);
  }
}

uint64_t sub_1BF0AFA40()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_1BF0AFA9C()
{
  OUTLINED_FUNCTION_5();
  v0[3] = v1;
  sub_1BF0B2334(0);
  v0[4] = v2;
  OUTLINED_FUNCTION_29_4();
  v0[5] = v3;
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BF0AFB50()
{
  OUTLINED_FUNCTION_5();
  sub_1BF096DCC(0);
  sub_1BF17A6FC();
  *(v0 + 56) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11_6();
  sub_1BF0B2368(v1, v2, MEMORY[0x1E69E8598]);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 64) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_7_8(v3);
  OUTLINED_FUNCTION_28_4();

  return MEMORY[0x1EEE6D8C8](v5);
}

uint64_t sub_1BF0AFC1C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {
    (*(v3[5] + 8))(v3[6], v3[4]);
  }

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF0AFD38()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[2];
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = v0[7];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1BF0A69AC();
      v3 = v13;
    }

    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    if (v5 >= v4 >> 1)
    {
      OUTLINED_FUNCTION_31_4(v4);
      sub_1BF0A69AC();
      v3 = v14;
    }

    *(v3 + 16) = v5 + 1;
    *(v3 + 8 * v5 + 32) = v1;
    v0[7] = v3;
    OUTLINED_FUNCTION_11_6();
    sub_1BF0B2368(v6, v7, MEMORY[0x1E69E8598]);
    swift_task_alloc();
    OUTLINED_FUNCTION_7_1();
    v0[8] = v8;
    *v8 = v9;
    OUTLINED_FUNCTION_7_8(v8);
    OUTLINED_FUNCTION_28_4();

    return MEMORY[0x1EEE6D8C8](v10);
  }

  else
  {
    (*(v0[5] + 8))(v0[6], v0[4]);

    v11 = v0[1];
    v12 = v0[7];

    return v11(v12);
  }
}

uint64_t sub_1BF0AFEA0()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9();

  return v0();
}

void sub_1BF0AFEFC(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v138 = a3;
  v147[2] = *MEMORY[0x1E69E9840];
  v5 = sub_1BF1790EC();
  v139 = *(v5 - 1);
  v140 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF17912C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BF17923C();
  v143 = *(v14 - 8);
  v144 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v135 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v137 = &v132 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v136 = &v132 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v132 - v25;
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = &v132 - v30;
  v147[0] = a1;
  v147[1] = a2;
  (*(v10 + 104))(v13, *MEMORY[0x1E6968F58], v9, v29);
  sub_1BF013170();
  sub_1BF17922C();
  (*(v10 + 8))(v13, v9);
  sub_1BF049228(0, &qword_1EBDCA898, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF17DEF0;
  v33 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v34 = v33;
  sub_1BF0C95B4(inited);
  v142 = v31;
  v35 = v141;
  sub_1BF17914C();
  v36 = 0x1EBDCA000uLL;
  v37 = &selRef_arguments;
  v38 = &unk_1BF17E000;
  if (!v35)
  {
    v141 = 0;

    v52 = sub_1BF1790AC();
    (*(v139 + 8))(v8, v140);
    v54 = v143;
    v53 = v144;
    v41 = v142;
    if (v52 != 2)
    {
      if (qword_1EBDCAFE0 != -1)
      {
        swift_once();
      }

      v90 = sub_1BF1797FC();
      v91 = __swift_project_value_buffer(v90, qword_1EBDCCE48);
      v92 = v26;
      v139 = *(v54 + 16);
      v140 = (v54 + 16);
      (v139)(v26, v41, v53);
      v93 = sub_1BF1797DC();
      v94 = sub_1BF17AC9C();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v134 = v91;
        v96 = v92;
        v97 = v95;
        v98 = swift_slowAlloc();
        v147[0] = v98;
        *v97 = 136446210;
        sub_1BF0B2368(&qword_1EBDCBB30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v99 = sub_1BF17B6FC();
        v101 = v100;
        v102 = *(v54 + 8);
        v102(v96, v53);
        v103 = sub_1BF01A7AC(v99, v101, v147);
        v36 = 0x1EBDCA000;

        *(v97 + 4) = v103;
        _os_log_impl(&dword_1BEFE0000, v93, v94, "Clearing existing radar attachment zipped directory at %{public}s", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v98);
        v104 = v98;
        v37 = &selRef_arguments;
        MEMORY[0x1BFB547B0](v104, -1, -1);
        MEMORY[0x1BFB547B0](v97, -1, -1);
      }

      else
      {

        v102 = *(v54 + 8);
        v102(v92, v53);
      }

      v105 = objc_opt_self();
      v106 = [v105 v37[74]];
      v41 = v142;
      v107 = sub_1BF17916C();
      v147[0] = 0;
      v108 = [v106 removeItemAtURL:v107 error:v147];

      v109 = v147[0];
      if (!v108)
      {
        goto LABEL_45;
      }

      v133 = v105;
      v134 = v102;
      v110 = v136;
      v111 = v144;
      (v139)();
      v112 = v109;
      v113 = sub_1BF1797DC();
      v114 = sub_1BF17AC9C();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v147[0] = v140;
        *v115 = 136446210;
        sub_1BF0B2368(&qword_1EBDCBB30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v116 = sub_1BF17B6FC();
        v117 = v37;
        v119 = v118;
        v134(v110, v111);
        v120 = sub_1BF01A7AC(v116, v119, v147);
        v37 = v117;

        *(v115 + 4) = v120;
        _os_log_impl(&dword_1BEFE0000, v113, v114, "Creating directory at %{public}s", v115, 0xCu);
        v121 = v140;
        __swift_destroy_boxed_opaque_existential_1(v140);
        v41 = v142;
        MEMORY[0x1BFB547B0](v121, -1, -1);
        MEMORY[0x1BFB547B0](v115, -1, -1);
      }

      else
      {

        v134(v110, v111);
      }

      v127 = [v133 v37[74]];
      v128 = sub_1BF17916C();
      v147[0] = 0;
      v129 = [v127 createDirectoryAtURL:v128 withIntermediateDirectories:1 attributes:0 error:v147];

      v109 = v147[0];
      if (!v129)
      {
LABEL_45:
        v39 = v36;
        v131 = v109;
        v40 = sub_1BF17911C();

        swift_willThrow();
        v42 = v143;
        goto LABEL_3;
      }

      v130 = v147[0];
      v54 = v143;
      v53 = v144;
      v38 = &unk_1BF17E000;
    }

    v55 = v38;
    v56 = *(v36 + 4064);
    v57 = v137;
    if (v56 != -1)
    {
      swift_once();
    }

    v58 = sub_1BF1797FC();
    __swift_project_value_buffer(v58, qword_1EBDCCE48);
    (*(v54 + 16))(v57, v41, v53);
    v59 = sub_1BF1797DC();
    v60 = sub_1BF17AC9C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v147[0] = v62;
      *v61 = v55[383];
      sub_1BF0B2368(&qword_1EBDCBB30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v63 = sub_1BF17B6FC();
      v65 = v64;
      (*(v54 + 8))(v57, v53);
      v66 = sub_1BF01A7AC(v63, v65, v147);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_1BEFE0000, v59, v60, "Prepared zipped directory at %{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      v67 = v62;
      v41 = v142;
      MEMORY[0x1BFB547B0](v67, -1, -1);
      MEMORY[0x1BFB547B0](v61, -1, -1);
    }

    else
    {

      (*(v54 + 8))(v57, v53);
    }

    (*(v54 + 32))(v138, v41, v53);
    return;
  }

  v39 = 0x1EBDCA000uLL;

  v40 = v35;
  v41 = v142;
  v42 = v143;
LABEL_3:
  v147[0] = v40;
  v43 = v40;
  sub_1BEFF79E8();
  sub_1BEFF9AF8(0, &qword_1EBDCBB38, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {
LABEL_22:

    if (*(v39 + 4064) != -1)
    {
      swift_once();
    }

    v82 = sub_1BF1797FC();
    __swift_project_value_buffer(v82, qword_1EBDCCE48);
    v83 = v40;
    v84 = sub_1BF1797DC();
    v85 = sub_1BF17AC9C();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v86 = 138543362;
      v88 = v40;
      v89 = _swift_stdlib_bridgeErrorToNSError();
      *(v86 + 4) = v89;
      *v87 = v89;
      _os_log_impl(&dword_1BEFE0000, v84, v85, "Failed to prepare zipped directory for radar attachments with error %{public}@", v86, 0xCu);
      sub_1BF0B216C(v87, sub_1BF082F84);
      MEMORY[0x1BFB547B0](v87, -1, -1);
      MEMORY[0x1BFB547B0](v86, -1, -1);
    }

    swift_willThrow();
    (*(v42 + 8))(v41, v144);
    return;
  }

  v44 = v145;
  v45 = [v145 domain];
  v46 = sub_1BF17A0AC();
  v48 = v47;

  if (v46 == sub_1BF17A0AC() && v48 == v49)
  {
  }

  else
  {
    v51 = sub_1BF17B86C();

    if ((v51 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if ([v44 code] != 260)
  {
LABEL_21:

    goto LABEL_22;
  }

  if (*(v39 + 4064) != -1)
  {
    swift_once();
  }

  v68 = sub_1BF1797FC();
  __swift_project_value_buffer(v68, qword_1EBDCCE48);
  v69 = v135;
  v70 = v144;
  (*(v42 + 16))(v135, v41, v144);
  v71 = sub_1BF1797DC();
  v72 = sub_1BF17AC9C();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = v69;
    v74 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v146 = v141;
    *v74 = 136446210;
    sub_1BF0B2368(&qword_1EBDCBB30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v75 = sub_1BF17B6FC();
    v76 = v70;
    v78 = v77;
    v79 = *(v42 + 8);
    v79(v73, v76);
    v80 = sub_1BF01A7AC(v75, v78, &v146);

    *(v74 + 4) = v80;
    _os_log_impl(&dword_1BEFE0000, v71, v72, "See no directory, creating one at %{public}s", v74, 0xCu);
    v81 = v141;
    __swift_destroy_boxed_opaque_existential_1(v141);
    v41 = v142;
    MEMORY[0x1BFB547B0](v81, -1, -1);
    MEMORY[0x1BFB547B0](v74, -1, -1);
  }

  else
  {

    v79 = *(v42 + 8);
    v79(v69, v70);
  }

  v122 = [objc_opt_self() defaultManager];
  v123 = sub_1BF17916C();
  v146 = 0;
  v124 = [v122 createDirectoryAtURL:v123 withIntermediateDirectories:1 attributes:0 error:&v146];

  if (v124)
  {
    v125 = v146;

    (*(v143 + 32))(v138, v41, v144);
  }

  else
  {
    v126 = v146;
    sub_1BF17911C();

    swift_willThrow();
    v79(v41, v144);
  }
}

uint64_t sub_1BF0B0E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1BF17923C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF1791AC();
  v8 = [objc_opt_self() defaultManager];
  v9 = sub_1BF17916C();
  v15[0] = 0;
  v10 = [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:v15];

  if (v10)
  {
    v11 = v15[0];
    sub_1BF17938C();
  }

  else
  {
    v12 = v15[0];
    sub_1BF17911C();

    swift_willThrow();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1BF0B0FDC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BF178CEC();
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1BF178D3C();
  swift_allocObject();
  _s13TeaFoundation16ReferenceEncoderCACycfc_0();
  sub_1BF049228(0, &qword_1EBDCBB00, MEMORY[0x1E6967F78], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1BF1805A0;
  sub_1BF178CCC();
  sub_1BF178CBC();
  sub_1BF178CDC();
  sub_1BF0B2368(&qword_1EBDCBB08, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  sub_1BF0B21C0(0);
  sub_1BF0B2368(&qword_1EBDCBB18, sub_1BF0B21C0, MEMORY[0x1E69E6328]);
  sub_1BF17B0BC();
  sub_1BF178CFC();
  v4 = sub_1BF178D0C();

  return v4;
}

void sub_1BF0B1230(uint64_t a1, uint64_t a2, void **a3)
{
  v67 = a3;
  v74[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BF17923C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v71 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v65 - v15;
  if (qword_1EBDCAFE0 != -1)
  {
    swift_once();
  }

  v17 = sub_1BF1797FC();
  v18 = __swift_project_value_buffer(v17, qword_1EBDCCE48);
  v68 = v6[2];
  v68(v16, a2, v5);
  v69 = v18;
  v19 = sub_1BF1797DC();
  v20 = sub_1BF17AC9C();
  v21 = os_log_type_enabled(v19, v20);
  v73 = v6;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v72 = v5;
    v23 = v22;
    v65 = swift_slowAlloc();
    v66 = a1;
    v74[0] = v65;
    *v23 = 136446210;
    sub_1BF0B2368(&qword_1EBDCBB30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v24 = sub_1BF17B6FC();
    v25 = v9;
    v26 = a2;
    v28 = v27;
    v70 = v6[1];
    v70(v16, v72);
    v29 = sub_1BF01A7AC(v24, v28, v74);
    a2 = v26;
    v9 = v25;

    *(v23 + 4) = v29;
    _os_log_impl(&dword_1BEFE0000, v19, v20, "Removing item from %{public}s", v23, 0xCu);
    v30 = v65;
    __swift_destroy_boxed_opaque_existential_1(v65);
    a1 = v66;
    MEMORY[0x1BFB547B0](v30, -1, -1);
    v31 = v23;
    v5 = v72;
    MEMORY[0x1BFB547B0](v31, -1, -1);
  }

  else
  {

    v70 = v6[1];
    v70(v16, v5);
  }

  v32 = objc_opt_self();
  v33 = [v32 defaultManager];
  v34 = sub_1BF17916C();
  v74[0] = 0;
  v35 = [v33 removeItemAtURL:v34 error:v74];

  v36 = v71;
  if (v35)
  {
    v37 = v74[0];
  }

  else
  {
    v38 = v74[0];
    v39 = sub_1BF17911C();

    swift_willThrow();
  }

  v40 = v68;
  v68(v36, a1, v5);
  v40(v9, a2, v5);
  v41 = sub_1BF1797DC();
  v42 = sub_1BF17AC9C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v74[0] = v69;
    *v43 = 136446466;
    sub_1BF0B2368(&qword_1EBDCBB30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v72 = a2;
    LODWORD(v68) = v42;
    v44 = sub_1BF17B6FC();
    v46 = v45;
    v73 = v32;
    v47 = v70;
    v70(v36, v5);
    v48 = sub_1BF01A7AC(v44, v46, v74);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2082;
    v49 = sub_1BF17B6FC();
    v51 = v50;
    v47(v9, v5);
    v32 = v73;
    v52 = sub_1BF01A7AC(v49, v51, v74);

    *(v43 + 14) = v52;
    _os_log_impl(&dword_1BEFE0000, v41, v68, "Moving item from %{public}s to %{public}s", v43, 0x16u);
    v53 = v69;
    swift_arrayDestroy();
    MEMORY[0x1BFB547B0](v53, -1, -1);
    MEMORY[0x1BFB547B0](v43, -1, -1);
  }

  else
  {

    v54 = v70;
    v70(v9, v5);
    v54(v36, v5);
  }

  v55 = [v32 defaultManager];
  v56 = sub_1BF17916C();
  v57 = sub_1BF17916C();
  v74[0] = 0;
  v58 = [v55 moveItemAtURL:v56 toURL:v57 error:v74];

  v59 = v74[0];
  if (v58)
  {

    v60 = v59;
  }

  else
  {
    v73 = v74[0];
    v61 = v74[0];
    v62 = sub_1BF17911C();

    swift_willThrow();
    v63 = sub_1BF17910C();

    v64 = *v67;
    *v67 = v63;
  }
}

uint64_t sub_1BF0B1904(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BF17923C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_1BF1791BC();
  v8(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1BF0B19E8()
{
  v1 = OBJC_IVAR____TtC13TeaFoundation28DiagnosticAttachmentResolver_temporaryDirectory;
  sub_1BF17923C();
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1BF0B1A80(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF0B1B18;

  return sub_1BF0AC088(a1);
}

uint64_t sub_1BF0B1B18()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_10();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  OUTLINED_FUNCTION_20_5();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_13_0();
  }

  return v5(v4);
}

uint64_t sub_1BF0B1C08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF0ABF14;

  return sub_1BF0AEA50(a1);
}

uint64_t sub_1BF0B1CA0()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1BF035DD0;

  return sub_1BF0AECE0(v5, v3, v7, v6);
}

void sub_1BF0B1D4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BF0B1DA0(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1BF0B1E94;

  return v5(v2 + 16);
}

uint64_t sub_1BF0B1E94()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  *v5 = *(v2 + 16);
  OUTLINED_FUNCTION_9();

  return v8();
}

uint64_t sub_1BF0B1F90()
{
  OUTLINED_FUNCTION_13_2();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1BF035DD4;

  return sub_1BF0AF308(v3, v4, v5, v7, v6);
}

uint64_t sub_1BF0B2048()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1BF035DD4;

  return sub_1BF0B1DA0(v3, v4);
}

void sub_1BF0B20F8(uint64_t a1)
{
  if (!qword_1EBDCBAF0)
  {
    sub_1BF0B1D4C(255, &qword_1ED8ECC00, MEMORY[0x1E69E6720]);
    v1 = sub_1BF17A71C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCBAF0);
    }
  }
}

uint64_t sub_1BF0B216C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1BF0B21F4()
{
  result = qword_1EBDCBB20;
  if (!qword_1EBDCBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBB20);
  }

  return result;
}

unint64_t sub_1BF0B2248()
{
  result = qword_1EBDCBB28;
  if (!qword_1EBDCBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBB28);
  }

  return result;
}

void sub_1BF0B229C(uint64_t a1)
{
  sub_1BF17923C();
  OUTLINED_FUNCTION_29_4();
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BF0B1230(a1, v1 + v7, v8);
}

uint64_t sub_1BF0B2368(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for DiagnosticAttachmentResolver.Errors(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BF0B2460()
{
  result = qword_1EBDCBB50[0];
  if (!qword_1EBDCBB50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCBB50);
  }

  return result;
}

uint64_t Bidict.init()@<X0>(uint64_t *a5@<X8>)
{
  *a5 = sub_1BF179CEC();
  result = sub_1BF179CEC();
  a5[1] = result;
  return result;
}

uint64_t Bidict.subscript.getter(uint64_t a1, uint64_t *a2)
{
  return OUTLINED_FUNCTION_4_11(a1, a2, a2[2], a2[3], a2[4]);
}

{
  return OUTLINED_FUNCTION_4_11(a1, a2, a2[3], a2[2], a2[5]);
}

uint64_t sub_1BF0B2514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 8);
  v21 = *(a3 + a4 - 24);
  v8 = sub_1BF17AE6C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v21 - v11;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v21 - v16;
  (*(v18 + 16))(&v21 - v16, a3, v6, v15);
  (*(v9 + 16))(v12, a1, v8);
  v22 = v6;
  v23 = v21;
  v24 = v7;
  v19 = type metadata accessor for Bidict(0, &v22);
  return Bidict.subscript.setter(v12, v17, v19);
}

uint64_t Bidict.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 16);
  OUTLINED_FUNCTION_2_3();
  v81 = v9;
  v82 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  OUTLINED_FUNCTION_9_2();
  v75 = v11;
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v67 = v13;
  v68 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v79 = &v66 - v15;
  v16 = *(a3 + 24);
  OUTLINED_FUNCTION_2_3();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_1_16();
  v77 = v21;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_10_1();
  v78 = v24;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v25, v26);
  v66 = &v66 - v27;
  v28 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_1_16();
  v74 = v33;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_10_1();
  v72 = v36;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v66 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v66 - v43;
  v73 = v7;
  v45 = a2;
  v71 = sub_1BF179E9C();
  v84 = v4;
  sub_1BF179D7C();
  v46 = v30;
  v49 = *(v30 + 16);
  v47 = (v30 + 16);
  v48 = v49;
  v76 = v44;
  OUTLINED_FUNCTION_13_9();
  v49();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v16);
  v69 = v18;
  v70 = a3;
  v80 = v46;
  v83 = v45;
  if (EnumTagSinglePayload == 1)
  {
    (*(v46 + 8))(v40, v28);
    v51 = v73;
  }

  else
  {
    v52 = v66;
    (*(v18 + 32))(v66, v40, v16);
    v53 = v73;
    sub_1BF179E9C();
    v54 = v79;
    sub_1BF179D7C();
    (*(v67 + 8))(v54, v68);
    (*(v18 + 8))(v52, v16);
    v51 = v53;
  }

  v55 = v16;
  v56 = v81;
  v73 = *(v81 + 16);
  v73(v75, v83, v51);
  (v48)(v72, v82, v28);
  sub_1BF179EBC();
  v57 = v74;
  OUTLINED_FUNCTION_13_9();
  v48();
  if (__swift_getEnumTagSinglePayload(v57, 1, v55) == 1)
  {
    (*(v56 + 8))(v83, v51);
    v58 = OUTLINED_FUNCTION_2_14();
    v47(v58);
    (v47)(v76, v28);
    v59 = v57;
  }

  else
  {
    v60 = v55;
    v61 = v69;
    v62 = v78;
    (*(v69 + 32))(v78, v57, v60);
    (*(v61 + 16))(v77, v62, v60);
    v47 = v79;
    v63 = v83;
    v73(v79, v83, v51);
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v51);
    OUTLINED_FUNCTION_8_8();
    sub_1BF179E9C();
    sub_1BF179EBC();
    (*(v56 + 8))(v63, v51);
    v64 = OUTLINED_FUNCTION_2_14();
    v47(v64);
    (*(v61 + 8))(v78, v60);
    v59 = v76;
  }

  return (v47)(v59, v28);
}

{
  v77 = a1;
  v6 = *(a3 + 24);
  OUTLINED_FUNCTION_2_3();
  v70 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_9_2();
  v72 = v10;
  v66 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v63 = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v74 = &v62 - v14;
  v15 = *(a3 + 16);
  OUTLINED_FUNCTION_2_3();
  v76 = v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_1_16();
  v64 = v19;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_10_1();
  v73 = v22;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v62 - v25;
  OUTLINED_FUNCTION_8_8();
  v27 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_1_16();
  v69 = v32;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_10_1();
  v68 = v35;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v62 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v62 - v42;
  v44 = sub_1BF179E9C();
  v78 = v3;
  v79 = a2;
  v67 = v44;
  sub_1BF179D7C();
  v45 = v29;
  v46 = *(v29 + 16);
  v71 = v43;
  (v46)(v39, v43, v27);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v15);
  v65 = a3;
  v75 = v45;
  if (EnumTagSinglePayload == 1)
  {
    (*(v45 + 8))(v39, v27);
  }

  else
  {
    v48 = v76;
    (*(v76 + 32))(v26, v39, v15);
    OUTLINED_FUNCTION_8_8();
    sub_1BF179E9C();
    v49 = v74;
    sub_1BF179D7C();
    (*(v63 + 8))(v49, v66);
    (*(v48 + 8))(v26, v15);
  }

  v50 = v70;
  v51 = (v70 + 16);
  v63 = *(v70 + 16);
  (v63)(v72, v79, v6);
  v66 = v6;
  OUTLINED_FUNCTION_13_9();
  v46();
  sub_1BF179EBC();
  v52 = v69;
  OUTLINED_FUNCTION_13_9();
  v46();
  if (__swift_getEnumTagSinglePayload(v52, 1, v15) == 1)
  {
    (*(v50 + 8))(v79, v66);
    v53 = OUTLINED_FUNCTION_2_14();
    v51(v53);
    (v51)(v71, v27);
    v54 = v52;
  }

  else
  {
    v55 = v76;
    v56 = v73;
    (*(v76 + 32))(v73, v52, v15);
    (*(v55 + 16))(v64, v56, v15);
    v57 = v74;
    v58 = v79;
    v59 = v66;
    (v63)(v74, v79, v66);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v59);
    OUTLINED_FUNCTION_8_8();
    sub_1BF179E9C();
    sub_1BF179EBC();
    (*(v50 + 8))(v58, v59);
    v60 = OUTLINED_FUNCTION_2_14();
    v51(v60);
    (*(v55 + 8))(v73, v15);
    v54 = v71;
  }

  return (v51)(v54, v27);
}

void Bidict.subscript.modify()
{
  OUTLINED_FUNCTION_80();
  v3 = OUTLINED_FUNCTION_12_8();
  v4 = __swift_coroFrameAllocStub(v3);
  *v0 = v4;
  *v4 = v2;
  v4[1] = v1;
  v5 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_9_11(v5);
  v4[3] = v6;
  v8 = *(v7 + 64);
  v4[4] = __swift_coroFrameAllocStub(v8);
  v4[5] = __swift_coroFrameAllocStub(v8);
  v4[6] = *(v2 + 16);
  OUTLINED_FUNCTION_2_3();
  v4[7] = v9;
  v11 = *(v10 + 64);
  v4[8] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_14_8(v12);
  v14(v13);
  v15 = OUTLINED_FUNCTION_6_11();
  Bidict.subscript.getter(v15, v16);
  OUTLINED_FUNCTION_33();
}

{
  OUTLINED_FUNCTION_80();
  v3 = OUTLINED_FUNCTION_12_8();
  v4 = __swift_coroFrameAllocStub(v3);
  *v0 = v4;
  *v4 = v2;
  v4[1] = v1;
  v5 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_9_11(v5);
  v4[3] = v6;
  v8 = *(v7 + 64);
  v4[4] = __swift_coroFrameAllocStub(v8);
  v4[5] = __swift_coroFrameAllocStub(v8);
  v4[6] = *(v2 + 24);
  OUTLINED_FUNCTION_2_3();
  v4[7] = v9;
  v11 = *(v10 + 64);
  v4[8] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_14_8(v12);
  v14(v13);
  v15 = OUTLINED_FUNCTION_6_11();
  Bidict.subscript.getter(v15, v16);
  OUTLINED_FUNCTION_33();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1BF0B2DF0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = *(a2 + a3 - 16);
  v10[0] = *(a2 + a3 - 32);
  v10[1] = v7;
  v10[2] = v6;
  v8 = type metadata accessor for Bidict(0, v10);
  return a4(a2, v8);
}

uint64_t sub_1BF0B2E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 + a4;
  v7 = *(a3 + a4 - 32);
  v8 = *(a3 + a4 - 8);
  v9 = sub_1BF17AE6C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - v12;
  v22 = *(v6 - 24);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v22 - v17;
  (*(v19 + 16))(&v22 - v17, a3, v16);
  (*(v10 + 16))(v13, a1, v9);
  v23 = v7;
  v24 = v22;
  v25 = v8;
  v20 = type metadata accessor for Bidict(0, &v23);
  return Bidict.subscript.setter(v13, v18, v20);
}

void sub_1BF0B36D8()
{
  OUTLINED_FUNCTION_80();
  v1 = v0;
  v3 = *v2;
  v4 = (*v2)[8];
  v5 = (*v2)[9];
  if (v6)
  {
    v7 = v3[7];
    v9 = v3[4];
    v8 = v3[5];
    v10 = v3[2];
    v11 = v3[3];
    v12 = *v3;
    v15 = v3[6];
    (*(v11 + 16))(v9, v8, v10);
    (*(v7 + 32))(v4, v5, v15);
    v1(v9, v4, v12);
    (*(v11 + 8))(v8, v10);
  }

  else
  {
    v9 = v3[4];
    v8 = v3[5];
    v0(v8, v5, *v3);
  }

  free(v5);
  free(v4);
  free(v8);
  free(v9);
  OUTLINED_FUNCTION_33();

  free(v13);
}

Swift::Void __swiftcall Bidict.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  sub_1BF179E9C();
  sub_1BF179E8C();
  sub_1BF179E9C();
  sub_1BF179E8C();
}

uint64_t Bidict.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v7 = Bidict.startIndex.getter(a6);
  v9 = v8;
  v11 = v10 & 1;
  v12 = Bidict.endIndex.getter(a6);
  v14 = v13;
  v16 = v15 & 1;
  sub_1BF179DEC();
  swift_getWitnessTable();
  result = sub_1BF179FBC();
  if (result)
  {
    sub_1BF17AC8C();
    v18 = sub_1BF17AC7C();
    sub_1BF070BD4(v7, v9, v11);
    result = sub_1BF070BD4(v12, v14, v16);
    if (v18)
    {
      return sub_1BF179ECC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF0B3B00@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void (*sub_1BF0B3B34(uint64_t **a1, uint64_t a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v6 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v6;
  v8 = a3[2];
  v7 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6[4] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  v6[5] = v10;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v6[6] = v11;
  v12 = sub_1BF0B3D24(v6, *a2, *(a2 + 8), *(a2 + 16), a3);
  v14 = v13;
  v6[7] = v12;
  (*(*(v8 - 8) + 16))(v11);
  (*(*(v7 - 8) + 16))(&v11[*(TupleTypeMetadata2 + 48)], v14, v7);
  return sub_1BF0B3CAC;
}

void sub_1BF0B3CAC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_1BF0B3D24(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, void *a5))(void *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  a1[1] = v11;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  a1[2] = v12;
  Bidict.subscript.getter(v12, v12 + *(TupleTypeMetadata2 + 48), a2, a3, a4 & 1, a5);
  return sub_1BF04619C;
}

uint64_t sub_1BF0B3E44@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = Bidict.index(after:)(*a1, *(a1 + 8), *(a1 + 16), a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

uint64_t sub_1BF0B3E84(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = Bidict.index(after:)(*a1, v4, v5, a2);
  v8 = v7;
  v10 = v9;
  result = sub_1BF070BD4(v3, v4, v5);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  return result;
}

uint64_t sub_1BF0B3F00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  *a2 = *v2;
  *(a2 + 8) = v5;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = Bidict.startIndex.getter(a1);
  v8 = v7;
  v10 = v9;

  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10 & 1;
  return result;
}

uint64_t sub_1BF0B3F7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1BF0B3FD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1BF0B40BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *storeEnumTagSinglePayload for ReferenceCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF0B41F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BF17B57C();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF0B4268@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BF0B41F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1BF0B4298@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF056410(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BF0B42C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF0B41F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF0B42F8(uint64_t a1)
{
  v2 = sub_1BF0556D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF0B4334(uint64_t a1)
{
  v2 = sub_1BF0556D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BF0B4374()
{
  result = qword_1EBDCBBD8;
  if (!qword_1EBDCBBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBBD8);
  }

  return result;
}

uint64_t toKey(cls:name:)()
{
  OUTLINED_FUNCTION_0_18();
  swift_getMetatypeMetadata();
  v1 = objc_allocWithZone(TFKey);
  v9 = OUTLINED_FUNCTION_1_17(v1, v2, v3, v4, v5, v6, v7, v8, v0);
  v12 = sub_1BEFE82CC(v9, v10, v11);
  [v12 address];

  OUTLINED_FUNCTION_2_15();

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t toKey(protocol:name:)()
{
  OUTLINED_FUNCTION_0_18();
  sub_1BEFE8DAC();
  v1 = objc_allocWithZone(TFKey);
  v2 = v0;
  v10 = OUTLINED_FUNCTION_1_17(v2, v3, v4, v5, v6, v7, v8, v9, v0);
  v13 = sub_1BEFE82CC(v10, v11, v12);
  [v13 address];

  OUTLINED_FUNCTION_2_15();

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t Key.namespace.getter()
{
  v1 = *(v0 + 8);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t Key.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  if (v2)
  {
    sub_1BF179F3C();
  }

  return sub_1BF17BB9C();
}

uint64_t sub_1BF0B458C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1BF0B45E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t Safe.value.getter@<X0>(uint64_t a2@<X8>)
{
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t Safe.value.setter(uint64_t a1, uint64_t a2)
{
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 40);

  return v6(v2, a1, v4);
}

void sub_1BF0B472C(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_1ED8ED798 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF1797FC();
  __swift_project_value_buffer(v4, qword_1ED8F5268);
  v5 = a2;
  oslog = sub_1BF1797DC();
  v6 = sub_1BF17ACBC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    v10 = sub_1BF17BD4C();
    v12 = sub_1BF01A7AC(v10, v11, &v16);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    v13 = a2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_1BEFE0000, oslog, v6, "Unable to decode object=%{public}s, error=%{public}@", v7, 0x16u);
    sub_1BF085B60(v8);
    MEMORY[0x1BFB547B0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFB547B0](v9, -1, -1);
    MEMORY[0x1BFB547B0](v7, -1, -1);
  }
}

void KeyedDecodingContainer.decode<A>(_:forKey:onFailureDefaultTo:)()
{
  OUTLINED_FUNCTION_0_19();
  sub_1BF17B5FC();
  OUTLINED_FUNCTION_85_0();
}

uint64_t KeyedDecodingContainer.decodeSafeIfPresent<A>(_:forKey:orKey:)()
{
  OUTLINED_FUNCTION_0_19();
  sub_1BF17B5FC();
  OUTLINED_FUNCTION_6_12();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t KeyedDecodingContainer.decodeSafeArray<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  type metadata accessor for Safe(255, a4, a5, a4);
  sub_1BF17A65C();
  OUTLINED_FUNCTION_2_16();
  v10[1] = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  v7 = sub_1BF17B5FC();
  if (!v5)
  {
    MEMORY[0x1EEE9AC00](v7, v8);
    OUTLINED_FUNCTION_1_18(v10);
    swift_getWitnessTable();
    v6 = sub_1BF17A38C();
  }

  return v6;
}

void KeyedDecodingContainer.decode<A>(_:forKey:orKey:)()
{
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_19();
  sub_1BF17B5FC();
  if (v0)
  {
    OUTLINED_FUNCTION_8_9();
    sub_1BF17B5FC();
  }
}

uint64_t KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:orKey:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a3;
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v28 = v7;
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - v9;
  OUTLINED_FUNCTION_2_3();
  v27[1] = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_10_13();
  sub_1BF17B5FC();
  if (a2)
  {
    OUTLINED_FUNCTION_10_13();
    sub_1BF17B5BC();

    OUTLINED_FUNCTION_6_12();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    (*(v28 + 8))(v10, v29);
    OUTLINED_FUNCTION_6_12();
    return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_6_12();

    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }
}

uint64_t KeyedDecodingContainer.decodeSafeArray<A>(_:forKey:orKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_19();
  v16 = KeyedDecodingContainer.decodeSafeArray<A>(_:forKey:)(v11, v12, v13, v14, v15);
  if (!v6)
  {
    return v16;
  }

  v17 = KeyedDecodingContainer.decodeSafeArray<A>(_:forKey:)(v16, a3, a4, a5, a6);

  return v17;
}

void KeyedDecodingContainer.decodeSafeArrayIfPresent<A>(_:forKey:orKey:)()
{
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_19();
  KeyedDecodingContainer.decodeSafeArray<A>(_:forKey:)(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_85_0();
}

uint64_t SingleValueDecodingContainer.decodeSafe<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BF17B8DC();
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_85_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t OptionSet<>.elements()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v10 = &v13 - v9;
  sub_1BF17A44C();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  sub_1BF17BCAC();

  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_1BF0B519C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v43 = a5;
  v42 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v9 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v9, v10);
  v40 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v44 = &v36 - v14;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v36 - v18;
  v21 = v20;
  v22 = *(v20 + 16);
  v41 = a1;
  v38 = v22;
  v39 = v20 + 16;
  (v22)(&v36 - v18, a1, v9, v17);
  if (sub_1BF17AFEC())
  {
    if (sub_1BF17AFDC() < 64)
    {
      v23 = sub_1BF17AFCC();
      v24 = *(v21 + 8);
      v24(v19, v9);
      goto LABEL_12;
    }

    v45 = 0;
    sub_1BF0475B0();
    v29 = v44;
    sub_1BF17AF9C();
    v30 = sub_1BF17A05C();
    v24 = *(v21 + 8);
    v24(v29, v9);
    v24(v19, v9);
    if ((v30 & 1) == 0)
    {
      goto LABEL_17;
    }

    return __swift_storeEnumTagSinglePayload(v43, 1, 1, a2);
  }

  v37 = a2;
  v25 = sub_1BF17AFEC();
  v26 = sub_1BF17AFDC();
  if (v25)
  {
    if (v26 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      sub_1BF17BA5C();
      v27 = v44;
      sub_1BF17B83C();
      v28 = sub_1BF179F9C();
      v24 = *(v21 + 8);
      v24(v27, v9);
      a2 = v37;
      if ((v28 & 1) == 0)
      {
        v24(v19, v9);
        v29 = v44;
        goto LABEL_17;
      }

      v23 = sub_1BF17AFCC();
      v24(v19, v9);
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v26 >= 64)
  {
LABEL_14:
    v45 = 0;
    sub_1BF0475B0();
    v29 = v44;
    sub_1BF17AF9C();
    v31 = sub_1BF17A05C();
    v24 = *(v21 + 8);
    v24(v29, v9);
    v24(v19, v9);
    a2 = v37;
    if ((v31 & 1) == 0)
    {
      goto LABEL_17;
    }

    return __swift_storeEnumTagSinglePayload(v43, 1, 1, a2);
  }

  v23 = sub_1BF17AFCC();
  v24 = *(v21 + 8);
  v24(v19, v9);
  a2 = v37;
LABEL_12:
  v29 = v44;
  if (!v23)
  {
    return __swift_storeEnumTagSinglePayload(v43, 1, 1, a2);
  }

LABEL_17:
  v33 = sub_1BF17AFAC();
  v34 = 1 << v33;
  if (v33 >= 0x40)
  {
    v34 = 0;
  }

  if (v33 > 0x40)
  {
    v34 = 0;
  }

  v45 = v34;
  sub_1BF0475B0();
  v35 = v40;
  sub_1BF17B00C();
  sub_1BF17AFBC();
  v38(v29, v35, v9);
  sub_1BF17A45C();
  return (v24)(v35, v9);
}

uint64_t sub_1BF0B5704@<X0>(uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v29[0] = a4;
  v29[1] = a3;
  v4 = OUTLINED_FUNCTION_0_20();
  sub_1BF05E6C0(v4, v5, v6);
  v8 = OUTLINED_FUNCTION_68(v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v29 - v10;
  v12 = sub_1BF17B42C();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = type metadata accessor for ReferenceEncodingPool();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7CC0];
  *(v21 + 16) = MEMORY[0x1E69E7CC8];
  *(v21 + 24) = v22;
  OUTLINED_FUNCTION_1_19();
  sub_1BF17B41C();
  result = __swift_getEnumTagSinglePayload(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v19, v11, v12);
    v31[3] = v20;
    v31[0] = v21;

    v24 = sub_1BF178D1C();
    sub_1BF0AAB8C(v31, v19);
    v24(v30, 0);
    v25 = v31[5];
    v26 = sub_1BF178D0C();
    if (!v25)
    {
      v28 = v29[0];
      *v29[0] = v26;
      *(v28 + 8) = v27;
      *(v28 + 16) = v21;
    }

    sub_1BF0B5908();
  }

  return result;
}

uint64_t sub_1BF0B5908()
{
  sub_1BF05E6C0(0, &qword_1ED8ECBB0, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v18 - v2;
  v4 = sub_1BF17B42C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF17B41C();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v10 = sub_1BF178D1C();
    sub_1BF0827B4(v8, v11, v12, v13, v14, v15, v16, v17, v18[0], v18[1]);
    (*(v5 + 8))(v8, v4);
    sub_1BF0B5F54(v19);
    return v10(v18, 0);
  }

  return result;
}

uint64_t ReferenceEncoder.__deallocating_deinit()
{
  v0 = _s13TeaFoundation16ReferenceEncoderCfd_0();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1BF0B5B38@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v33 = a2;
  sub_1BF0B5EA4(0);
  v6 = OUTLINED_FUNCTION_68(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = OUTLINED_FUNCTION_0_20();
  sub_1BF05E6C0(v11, v12, v13);
  v15 = OUTLINED_FUNCTION_68(v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v31 - v17;
  v19 = sub_1BF17B42C();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  v31 = a3;
  v27 = sub_1BF17BC0C();
  OUTLINED_FUNCTION_1_19();
  sub_1BF17B41C();
  result = __swift_getEnumTagSinglePayload(v18, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v21 + 32))(v26, v18, v19);
    sub_1BF05316C(v27, &v35);

    (*(v21 + 8))(v26, v19);
    if (v36)
    {
      type metadata accessor for ReferenceEncodingPool();
      if (swift_dynamicCast())
      {
        v29 = v34;
        sub_1BF0556D0();
        sub_1BF17BC1C();
        return sub_1BF0D524C(v10, v29, v33, v32);
      }
    }

    else
    {
      sub_1BEFFD168(&v35);
    }

    sub_1BF0B5F00();
    swift_allocError();
    *v30 = 0u;
    *(v30 + 16) = 0u;
    *(v30 + 32) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t type metadata accessor for ReferenceEncoder(uint64_t a1)
{
  result = qword_1ED8EA7E8;
  if (!qword_1ED8EA7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF0B5EA4(uint64_t a1)
{
  if (!qword_1ED8E9B60)
  {
    sub_1BF0556D0();
    v1 = sub_1BF17B6CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8E9B60);
    }
  }
}

unint64_t sub_1BF0B5F00()
{
  result = qword_1EBDCAB88;
  if (!qword_1EBDCAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCAB88);
  }

  return result;
}

uint64_t sub_1BF0B5F54(uint64_t a1)
{
  sub_1BF05E6C0(0, &qword_1EBDCA880, sub_1BF083CF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF0B5FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_1BF17B86C();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

double sub_1BF0B6010@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1BEFE6A78(a1 + 40 * v2 - 8, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BF0B603C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1BF17A29C();
    OUTLINED_FUNCTION_0_21(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1BFB52040](15, a1 >> 16);
    OUTLINED_FUNCTION_0_21(v3);
    return v4 | 8;
  }
}

void *sub_1BF0B6098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1BF1765CC(*(a1 + 16), 0);
  v4 = sub_1BF176B80(&v7, v3 + 4, v1, a1);
  v5 = v7;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF003FE8(v5);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_1BF0B6154(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1BF0B603C(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BF0B61C4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1BF17B2FC();
          v5 = v12;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v9 = *(v6 - 1 + v5--) & 0xC0;
          }

          while (v9 == 128);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_1BF0B62E0()
{
  result = qword_1ED8ECA20;
  if (!qword_1ED8ECA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8ECA20);
  }

  return result;
}

uint64_t sub_1BF0B6334(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF0B6384(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1BF0B63D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF0B6400(void *a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_0_22(a1);
  swift_getMetatypeMetadata();
  v4 = objc_allocWithZone(TFKey);
  v12 = OUTLINED_FUNCTION_1_20(v4, v5, v6, v7, v8, v9, v10, v11, a2);
  [v12 address];

  sub_1BF0B64B4(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BF0B64B4(uint64_t a1)
{
  swift_beginAccess();
  sub_1BF00951C();
  swift_endAccess();

  sub_1BF0B6ACC(0, v3, v4, v5);
  *(swift_allocObject() + 16) = a1;
  swift_beginAccess();
  swift_unknownObjectRetain();
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 32);
  sub_1BEFF6344();
  *(v1 + 32) = v7;
  return swift_endAccess();
}

uint64_t sub_1BF0B6634(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_22(a1);
  swift_getMetatypeMetadata();
  v5 = objc_allocWithZone(TFKey);
  v13 = OUTLINED_FUNCTION_1_20(v5, v6, v7, v8, v9, v10, v11, v12, a2);
  [v13 address];

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_2_17();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BF0B67A8(void *a1, void *a2)
{
  v3 = OUTLINED_FUNCTION_0_22(a1);
  sub_1BEFE8DAC();
  v4 = objc_allocWithZone(TFKey);
  v5 = a2;
  v13 = OUTLINED_FUNCTION_1_20(v5, v6, v7, v8, v9, v10, v11, v12, a2);
  [v13 address];

  sub_1BF0B64B4(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BF0B68E4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_22(a1);
  sub_1BEFE8DAC();
  v5 = objc_allocWithZone(TFKey);
  v6 = a2;
  v14 = OUTLINED_FUNCTION_1_20(v6, v7, v8, v9, v10, v11, v12, v13, a2);
  [v14 address];

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_2_17();

  return swift_unknownObjectRelease();
}

void sub_1BF0B6ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1ED8EDCF0)
  {
    v4 = type metadata accessor for PoolObject(0, MEMORY[0x1E69E7C98] + 8, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1ED8EDCF0);
    }
  }
}

uint64_t sub_1BF0B6B20()
{
  sub_1BF17BB6C();
  sub_1BF00DD94();
  sub_1BF01A6B4();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0B6B88()
{
  sub_1BF17BB6C();
  sub_1BF00DD94();
  sub_1BF01A6B4();
  MEMORY[0x1BFB53950](*(v0 + 16));
  sub_1BF179F3C();
  sub_1BF01FC04(v2, *(v0 + 40));
  sub_1BF01A6B4();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0B6C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1BF17B86C(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1BF17B86C();
    }
  }

  return result;
}

uint64_t sub_1BF0B6CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BF179F3C();

  return sub_1BF179F3C();
}

uint64_t sub_1BF0B6CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BF17BB6C();
  sub_1BF179F3C();
  sub_1BF179F3C();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0B6D8C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_1BF17BB6C();
  sub_1BF0B6CAC(v7, v2, v3, v5, v4);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0B6E04()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BF0B6E3C(uint64_t a1, int a2)
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

uint64_t sub_1BF0B6E7C(uint64_t result, int a2, int a3)
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

unint64_t sub_1BF0B6EF0()
{
  result = qword_1EBDCBBE8;
  if (!qword_1EBDCBBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBBE8);
  }

  return result;
}

uint64_t sub_1BF0B6F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  do
  {
    while (1)
    {
      v4 = sub_1BF17A23C();
      if (!v5)
      {

        sub_1BF17A23C();
        v13 = v12;

        if (v13)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v6 = v4;
      v7 = v5;
      v8 = sub_1BF17A23C();
      if (!v9)
      {

        return 1;
      }

      if (v6 != v8 || v7 != v9)
      {
        break;
      }
    }

    v11 = sub_1BF17B86C();
  }

  while ((v11 & 1) != 0);

LABEL_15:

  return 0;
}

void sub_1BF0B7088(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_119:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_160;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_121:
      v99 = (v7 + 16);
      for (i = *(v7 + 2); i >= 2; *v99 = i)
      {
        if (!*a3)
        {
          goto LABEL_157;
        }

        v101 = &v7[16 * i];
        v102 = *v101;
        v103 = &v99[2 * i];
        v104 = *(v103 + 1);
        sub_1BF0B77B8((*a3 + 32 * *v101), (*a3 + 32 * *v103), (*a3 + 32 * v104), v4);
        if (v114)
        {
          break;
        }

        if (v104 < v102)
        {
          goto LABEL_145;
        }

        if (i - 2 >= *v99)
        {
          goto LABEL_146;
        }

        *v101 = v102;
        *(v101 + 1) = v104;
        v105 = *v99 - i;
        if (*v99 < i)
        {
          goto LABEL_147;
        }

        v114 = 0;
        i = *v99 - 1;
        sub_1BF1751C0(v103 + 16, v105, v103);
      }

LABEL_129:

      return;
    }

LABEL_154:
    v7 = sub_1BF1751AC(v7);
    goto LABEL_121;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    v112 = v7;
    if (v6 + 1 < v5)
    {
      v119 = v5;
      v10 = (*a3 + 32 * v9);
      v4 = v10[1];
      v11 = v10[2];
      v12 = v10[3];
      v108 = v6;
      v13 = (*a3 + 32 * v6);
      v14 = v13[2];
      v15 = v13[3];
      v16 = *v10 == *v13 && v4 == v13[1];
      if (v16 || (v17 = v10[2], v18 = sub_1BF17B86C(), v11 = v17, (v18)) && (v11 == v14 ? (v19 = v12 == v15) : (v19 = 0), v19))
      {
        v117 = 0;
      }

      else
      {
        v117 = sub_1BF17B86C();
      }

      v20 = v119;
      v9 = v108 + 2;
      v21 = v13 + 6;
      while (v9 < v20)
      {
        v4 = v21[2];
        v22 = v21[4];
        v23 = v21[5];
        v25 = *v21;
        v24 = v21[1];
        v26 = v4 == *(v21 - 2) && v21[3] == *(v21 - 1);
        if (v26 || (sub_1BF17B86C()) && (v22 == v25 ? (v27 = v23 == v24) : (v27 = 0), v27))
        {
          v7 = v112;
          v20 = v119;
          if (v117)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v28 = sub_1BF17B86C();
          v7 = v112;
          v20 = v119;
          if ((v117 ^ v28))
          {
            break;
          }
        }

        ++v9;
        v21 += 4;
      }

      if ((v117 & 1) == 0)
      {
        v8 = v108;
        goto LABEL_42;
      }

LABEL_33:
      v8 = v108;
      if (v9 < v108)
      {
        goto LABEL_151;
      }

      if (v108 < v9)
      {
        v29 = 32 * v9 - 16;
        v30 = 32 * v108 + 24;
        v31 = v9;
        v32 = v108;
        do
        {
          if (v32 != --v31)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_158;
            }

            v34 = (v33 + v30);
            v35 = (v33 + v29);
            v36 = *(v34 - 3);
            v37 = *(v34 - 1);
            v38 = *v34;
            v39 = *v35;
            *(v34 - 3) = *(v35 - 1);
            *(v34 - 1) = v39;
            *(v35 - 1) = v36;
            *v35 = v37;
            *(v35 + 1) = v38;
          }

          ++v32;
          v29 -= 32;
          v30 += 32;
        }

        while (v32 < v31);
      }
    }

LABEL_42:
    v40 = a3[1];
    if (v9 < v40)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_150;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_67:
    if (v9 < v8)
    {
      goto LABEL_149;
    }

    v116 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BF0A6798();
      v7 = v97;
    }

    v56 = *(v7 + 2);
    v57 = v56 + 1;
    if (v56 >= *(v7 + 3) >> 1)
    {
      sub_1BF0A6798();
      v7 = v98;
    }

    *(v7 + 2) = v57;
    v58 = v7 + 32;
    v59 = &v7[16 * v56 + 32];
    *v59 = v8;
    *(v59 + 1) = v116;
    v121 = *a1;
    if (!*a1)
    {
      goto LABEL_159;
    }

    if (v56)
    {
      while (1)
      {
        v60 = v57 - 1;
        v61 = &v58[16 * v57 - 16];
        v62 = &v7[16 * v57];
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v63 = *(v7 + 4);
          v64 = *(v7 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_87:
          if (v66)
          {
            goto LABEL_136;
          }

          v78 = *v62;
          v77 = *(v62 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_139;
          }

          v82 = *(v61 + 1);
          v83 = v82 - *v61;
          if (__OFSUB__(v82, *v61))
          {
            goto LABEL_142;
          }

          if (__OFADD__(v80, v83))
          {
            goto LABEL_144;
          }

          if (v80 + v83 >= v65)
          {
            if (v65 < v83)
            {
              v60 = v57 - 2;
            }

            goto LABEL_109;
          }

          goto LABEL_102;
        }

        if (v57 < 2)
        {
          goto LABEL_138;
        }

        v85 = *v62;
        v84 = *(v62 + 1);
        v73 = __OFSUB__(v84, v85);
        v80 = v84 - v85;
        v81 = v73;
LABEL_102:
        if (v81)
        {
          goto LABEL_141;
        }

        v87 = *v61;
        v86 = *(v61 + 1);
        v73 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v73)
        {
          goto LABEL_143;
        }

        if (v88 < v80)
        {
          goto LABEL_116;
        }

LABEL_109:
        if (v60 - 1 >= v57)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (!*a3)
        {
          goto LABEL_156;
        }

        v92 = &v58[16 * v60 - 16];
        v4 = *v92;
        v93 = &v58[16 * v60];
        v94 = *(v93 + 1);
        sub_1BF0B77B8((*a3 + 32 * *v92), (*a3 + 32 * *v93), (*a3 + 32 * v94), v121);
        if (v114)
        {
          goto LABEL_129;
        }

        if (v94 < v4)
        {
          goto LABEL_131;
        }

        v95 = v7;
        v7 = *(v7 + 2);
        if (v60 > v7)
        {
          goto LABEL_132;
        }

        *v92 = v4;
        *(v92 + 1) = v94;
        if (v60 >= v7)
        {
          goto LABEL_133;
        }

        v114 = 0;
        v57 = (v7 - 1);
        sub_1BF1751C0(v93 + 16, &v7[-v60 - 1], &v58[16 * v60]);
        *(v95 + 2) = v7 - 1;
        v96 = v7 > 2;
        v7 = v95;
        if (!v96)
        {
          goto LABEL_116;
        }
      }

      v67 = &v58[16 * v57];
      v68 = *(v67 - 8);
      v69 = *(v67 - 7);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_134;
      }

      v72 = *(v67 - 6);
      v71 = *(v67 - 5);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_135;
      }

      v74 = *(v62 + 1);
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_137;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_140;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = *(v61 + 1);
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_148;
        }

        if (v65 < v91)
        {
          v60 = v57 - 2;
        }

        goto LABEL_109;
      }

      goto LABEL_87;
    }

LABEL_116:
    v5 = a3[1];
    v6 = v116;
    if (v116 >= v5)
    {
      goto LABEL_119;
    }
  }

  v41 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_152;
  }

  if (v41 >= v40)
  {
    v41 = a3[1];
  }

  if (v41 < v8)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v9 == v41)
  {
    goto LABEL_67;
  }

  v120 = *a3;
  v42 = *a3 + 32 * v9 - 32;
  v109 = v41;
  v43 = v8 - v9;
LABEL_51:
  v115 = v9;
  v44 = (v120 + 32 * v9);
  v45 = *v44;
  v46 = v44[1];
  v47 = v44[2];
  v48 = v44[3];
  v110 = v43;
  v111 = v42;
  v49 = v42;
  while (1)
  {
    v50 = v49[2];
    v4 = v49[3];
    v51 = v45 == *v49 && v46 == v49[1];
    if (v51 || (v118 = v49[2], v52 = sub_1BF17B86C(), v50 = v118, (v52)) && (v47 == v50 ? (v53 = v48 == v4) : (v53 = 0), v53) || (sub_1BF17B86C() & 1) == 0)
    {
LABEL_65:
      v9 = v115 + 1;
      v42 = v111 + 32;
      v43 = v110 - 1;
      if (v115 + 1 == v109)
      {
        v9 = v109;
        v7 = v112;
        goto LABEL_67;
      }

      goto LABEL_51;
    }

    if (!v120)
    {
      break;
    }

    v45 = v49[4];
    v46 = v49[5];
    v47 = v49[6];
    v48 = v49[7];
    v54 = *(v49 + 1);
    *(v49 + 2) = *v49;
    *(v49 + 3) = v54;
    *v49 = v45;
    v49[1] = v46;
    v49[2] = v47;
    v49[3] = v48;
    v49 -= 4;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
}

uint64_t sub_1BF0B77B8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a2;
  v6 = a1;
  v7 = (a2 - a1) / 32;
  v44 = a3;
  v8 = (a3 - a2) / 32;
  if (v7 < v8)
  {
    sub_1BF0A90EC(a1, (a2 - a1) / 32, a4);
    v9 = &v4[32 * v7];
    for (i = v9; ; v9 = i)
    {
      if (v4 >= v9 || v5 >= v44)
      {
        v20 = v6;
        goto LABEL_45;
      }

      v11 = *(v5 + 2);
      v12 = *(v5 + 3);
      v42 = v5;
      v13 = *(v4 + 2);
      v14 = *(v4 + 3);
      v15 = *v5 == *v4 && *(v5 + 1) == *(v4 + 1);
      if (v15 || (sub_1BF17B86C()) && v11 == v13 && v12 == v14)
      {
        break;
      }

      if ((sub_1BF17B86C() & 1) == 0)
      {
        break;
      }

      v17 = v5;
      v5 += 32;
      if (v6 != v42)
      {
        goto LABEL_20;
      }

LABEL_21:
      v6 += 32;
    }

    v17 = v4;
    v15 = v6 == v4;
    v4 += 32;
    if (v15)
    {
      goto LABEL_21;
    }

LABEL_20:
    v18 = *(v17 + 1);
    *v6 = *v17;
    *(v6 + 1) = v18;
    goto LABEL_21;
  }

  sub_1BF0A90EC(a2, (a3 - a2) / 32, a4);
  v40 = &v4[32 * v8];
  v38 = v4;
  v47 = v6;
LABEL_23:
  v19 = 0;
  v20 = v5;
  v43 = v5 - 32;
  v39 = v5;
  while (1)
  {
    v9 = &v40[v19];
    if (&v40[v19] <= v4 || v20 <= v6)
    {
      break;
    }

    v41 = v19;
    v46 = &v40[v19];
    v23 = *(v9 - 4);
    v22 = *(v9 - 3);
    v24 = v9 - 32;
    v25 = *(v24 + 2);
    v26 = *(v24 + 3);
    v28 = *(v20 - 2);
    v27 = *(v20 - 1);
    v29 = v23 == *(v20 - 4) && v22 == *(v20 - 3);
    if (!v29 && (sub_1BF17B86C() & 1) == 0 || (v25 == v28 ? (v30 = v26 == v27) : (v30 = 0), !v30))
    {
      if (sub_1BF17B86C())
      {
        v5 -= 32;
        v33 = &v44[v41];
        v44 = &v44[v41 - 32];
        v40 += v41;
        v4 = v38;
        v6 = v47;
        if (v33 != v39)
        {
          v34 = *(v43 + 1);
          *v44 = *v43;
          *(v44 + 1) = v34;
        }

        goto LABEL_23;
      }
    }

    v31 = &v44[v41];
    v6 = v47;
    if (v46 != &v44[v41])
    {
      v32 = *(v24 + 1);
      *(v31 - 2) = *v24;
      *(v31 - 1) = v32;
    }

    v19 = v41 - 32;
    v4 = v38;
    v20 = v5;
  }

LABEL_45:
  v35 = (v9 - v4) / 32;
  if (v20 != v4 || v20 >= &v4[32 * v35])
  {
    memmove(v20, v4, 32 * v35);
  }

  return 1;
}

_BYTE *storeEnumTagSinglePayload for RouteMatchResult(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF0B7B60()
{
  result = qword_1EBDCBBF0;
  if (!qword_1EBDCBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBBF0);
  }

  return result;
}

void sub_1BF0B7BB4(uint64_t a1)
{
  v3 = sub_1BF179CDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF0B860C(&qword_1ED8E9CA0, MEMORY[0x1E69666B0], MEMORY[0x1E69666B8]);
  v8 = sub_1BF17A33C();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1BF00DD60();
  v9 = v36;
  (*(v4 + 16))(v7, a1, v3);
  sub_1BF17A32C();
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (v8)
    {
      v29[1] = v1;
      v10 = v35;
      v11 = *(v34 + 16);
      v32 = v34;
      *&v33 = v11;
      v31 = v34 + 32;
      v30 = xmmword_1BF17DEF0;
      v12 = v35;
      while (v33 != v10)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v10 >= *(v32 + 16))
        {
          goto LABEL_21;
        }

        v13 = *(v31 + v10);
        sub_1BF071C70(0);
        v14 = swift_allocObject();
        *(v14 + 16) = v30;
        *(v14 + 56) = MEMORY[0x1E69E7508];
        *(v14 + 64) = MEMORY[0x1E69E7558];
        *(v14 + 32) = v13;
        v15 = sub_1BF17A0FC();
        v17 = v16;
        v36 = v9;
        v18 = *(v9 + 16);
        if (v18 >= *(v9 + 24) >> 1)
        {
          sub_1BF00DD60();
          v9 = v36;
        }

        *(v9 + 16) = v18 + 1;
        v19 = v9 + 16 * v18;
        *(v19 + 32) = v15;
        *(v19 + 40) = v17;
        ++v10;
        if (!--v8)
        {
          v35 = v10;
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v20 = v34;
      v33 = xmmword_1BF17DEF0;
      while (1)
      {
        v21 = *(v20 + 16);
        if (v35 == v21)
        {

          return;
        }

        if (v35 >= v21)
        {
          break;
        }

        v22 = *(v20 + 32 + v35++);
        sub_1BF071C70(0);
        v23 = swift_allocObject();
        *(v23 + 16) = v33;
        *(v23 + 56) = MEMORY[0x1E69E7508];
        *(v23 + 64) = MEMORY[0x1E69E7558];
        *(v23 + 32) = v22;
        v24 = sub_1BF17A0FC();
        v26 = v25;
        v36 = v9;
        v27 = *(v9 + 16);
        if (v27 >= *(v9 + 24) >> 1)
        {
          sub_1BF00DD60();
          v9 = v36;
        }

        *(v9 + 16) = v27 + 1;
        v28 = v9 + 16 * v27;
        *(v28 + 32) = v24;
        *(v28 + 40) = v26;
      }

      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t DigestAlgo.hashValue.getter()
{
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](0);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0B7FD8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BF179CCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BF179CDC();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF0B860C(&qword_1ED8E9CA8, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
  sub_1BF179CBC();
  sub_1BF014DC0(a1, a2);
  sub_1BF0B8570(a1, a2);
  sub_1BF014E18(a1, a2);
  sub_1BF179CAC();
  (*(v5 + 8))(v8, v4);
  sub_1BF0B7BB4(v12);
  v18 = v13;
  sub_1BF02027C();
  sub_1BF0B860C(&qword_1ED8EE9C0, sub_1BF02027C, MEMORY[0x1E69E6310]);
  v14 = sub_1BF179F7C();

  (*(v9 + 8))(v12, v17);
  return v14;
}

unint64_t sub_1BF0B826C()
{
  result = qword_1EBDCBBF8;
  if (!qword_1EBDCBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBBF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DigestAlgo(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF0B83BC(uint64_t a1, uint64_t a2)
{
  sub_1BF179CCC();
  sub_1BF0B860C(&qword_1ED8E9CA8, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
  return sub_1BF179C9C();
}

uint64_t sub_1BF0B8490(uint64_t a1, uint64_t a2)
{
  result = sub_1BF178F3C();
  if (!result || (result = sub_1BF178F5C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1BF178F4C();
      sub_1BF179CCC();
      sub_1BF0B860C(&qword_1ED8E9CA8, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
      return sub_1BF179C9C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BF0B8570(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v5 = v6;
      goto LABEL_9;
    case 2uLL:
      v4 = *(a1 + 24);
      a1 = *(a1 + 16);
      v5 = v4;
LABEL_9:
      sub_1BF0B8490(a1, v5);
      if (v2)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v3 = 0;
      goto LABEL_5;
    default:
      v3 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_1BF0B83BC(a1, v3);
      if (v2)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_1BF0B860C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CodingSafeDictionary.wrappedValue.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CodingSafeDictionary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF17BBBC();
  if (!v10)
  {
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    v22[0] = a2;
    v22[1] = a3;
    v22[2] = a4;
    v22[3] = a5;
    v22[4] = a6;
    v22[5] = a7;
    v22[6] = a8;
    v22[7] = a10;
    type metadata accessor for SafeishDictionary(0, v22);
    swift_getWitnessTable();
    sub_1BF17B8DC();
    v16 = v23[6];
    __swift_destroy_boxed_opaque_existential_1(v23);
    *a9 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CodingSafeDictionary.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17BBFC();
  v5[6] = v3;
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1BF179E9C();
  swift_getWitnessTable();
  sub_1BF17B95C();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t SingleValueStore.__allocating_init(directoryURL:filename:log:)()
{
  v0 = swift_allocObject();
  SingleValueStore.init(directoryURL:filename:log:)();
  return v0;
}

uint64_t SingleValueStore.__allocating_init(directory:subdirectoryPath:filename:log:)()
{
  v0 = swift_allocObject();
  SingleValueStore.init(directory:subdirectoryPath:filename:log:)();
  return v0;
}

Swift::Void __swiftcall SingleValueStore.reset()()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BF179B5C();
  OUTLINED_FUNCTION_1();
  v38 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v37 = sub_1BF179BBC();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = *(v2 + 80);
  v18 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v36 - v23;
  UnfairLock.lock()();
  OUTLINED_FUNCTION_4_0();
  *(v1 + *(v25 + 160)) = 1;
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v17);
  OUTLINED_FUNCTION_4_0();
  v30 = *(v29 + 152);
  swift_beginAccess();
  (*(v20 + 40))(v1 + v30, v24, v18);
  swift_endAccess();
  v40[4] = sub_1BF0B9360;
  v40[5] = v1;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 1107296256;
  v40[2] = sub_1BF0058CC;
  v40[3] = &block_descriptor_3;
  v31 = _Block_copy(v40);

  sub_1BF179B8C();
  v39 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_7_10();
  sub_1BF00AEAC(v32, v33, MEMORY[0x1E69E7F70]);
  sub_1BF027D54(0);
  OUTLINED_FUNCTION_6_13();
  sub_1BF00AEAC(v34, v35, MEMORY[0x1E69E6328]);
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B50](0, v16, v9, v31);
  _Block_release(v31);
  (*(v38 + 8))(v9, v3);
  (*(v11 + 8))(v16, v37);

  sub_1BF05D9F8(v1);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF0B8DA8(uint64_t a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  sub_1BF028120(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1BF17923C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BF03BE14(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1BF00B048(v5, sub_1BF028120);
  }

  (*(v7 + 32))(v10, v5, v6);
  v12 = *(a1 + *(*a1 + 168));
  sub_1BF1791DC();
  v13 = sub_1BF17A07C();

  v14 = [v12 fileExistsAtPath_];

  if (v14)
  {
    v15 = sub_1BF1797DC();
    v16 = sub_1BF17ACDC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BEFE0000, v15, v16, "SingleValueStore resetting state", v17, 2u);
      MEMORY[0x1BFB547B0](v17, -1, -1);
    }

    v18 = sub_1BF17916C();
    v32[0] = 0;
    v19 = [v12 removeItemAtURL:v18 error:v32];

    if (v19)
    {
      v20 = *(v7 + 8);
      v21 = v32[0];
      return v20(v10, v6);
    }

    v22 = v32[0];
    v23 = sub_1BF17911C();

    swift_willThrow();
    v24 = v23;
    v25 = sub_1BF1797DC();
    v26 = sub_1BF17ACBC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      v29 = v23;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_1BEFE0000, v25, v26, "SingleValueStore failed to reset state with error: %{public}@", v27, 0xCu);
      sub_1BF00B048(v28, sub_1BF082F84);
      MEMORY[0x1BFB547B0](v28, -1, -1);
      MEMORY[0x1BFB547B0](v27, -1, -1);
    }

    else
    {
    }
  }

  return (*(v7 + 8))(v10, v6);
}

char *SingleValueStore.deinit()
{
  sub_1BF00B048(v0 + qword_1ED8EE210, sub_1BF028120);

  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 152);
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 176);
  sub_1BF1797FC();
  OUTLINED_FUNCTION_12();
  (*(v7 + 8))(v0 + v6);
  OUTLINED_FUNCTION_29();
  sub_1BF00B048(v0 + *(v8 + 184), sub_1BF027464);
  return v0;
}

uint64_t SingleValueStore.__deallocating_deinit()
{
  SingleValueStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void Reference.init(value:type:keyPath:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v45 = a3;
  v6 = *(*a3 + *MEMORY[0x1E69E77B0]);
  v7 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v42 - v12;
  OUTLINED_FUNCTION_2_3();
  v15 = v14;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v42 - v18;
  v22 = type metadata accessor for Reference(0, v6, v20, v21);
  OUTLINED_FUNCTION_1();
  v44 = v23;
  OUTLINED_FUNCTION_59();
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v42 - v27;
  v29 = *a2;
  v30 = a2[1];
  v43 = v29;
  v31 = *(v9 + 16);
  v46 = a1;
  v31(v13, a1, v7, v26);
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    v32 = *(v9 + 8);
    v33 = OUTLINED_FUNCTION_6_14();
    v32(v33);

    (v32)(v13, v7);
    v34 = 1;
    v35 = v47;
  }

  else
  {
    (*(v15 + 32))(v19, v13, v6);
    (*(v15 + 16))(v28, v19, v6);
    v36 = &v28[*(v22 + 32)];
    *v36 = v43;
    *(v36 + 1) = v30;
    swift_getAtKeyPath();

    v37 = OUTLINED_FUNCTION_6_14();
    v38(v37);
    (*(v15 + 8))(v19, v6);
    v39 = v49;
    v40 = &v28[*(v22 + 28)];
    *v40 = v48;
    *(v40 + 1) = v39;
    v40[16] = 0;
    v41 = v47;
    (*(v44 + 32))(v47, v28, v22);
    v34 = 0;
    v35 = v41;
  }

  __swift_storeEnumTagSinglePayload(v35, v34, 1, v22);
  OUTLINED_FUNCTION_26_2();
}

void Reference.init(value:type:identifier:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a3;
  v42 = a4;
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v20 = type metadata accessor for Reference(0, v19, v17, v18);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v39 - v25;
  v27 = a2[1];
  if (__swift_getEnumTagSinglePayload(a1, 1, a5) == 1)
  {

    v28 = sub_1BF17AE6C();
    (*(*(v28 - 8) + 8))(a1, v28);
    OUTLINED_FUNCTION_26_2();

    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  }

  else
  {
    v40 = *a2;
    v34 = *(v11 + 32);
    v34(v16, a1, a5);
    v34(v26, v16, a5);
    v35 = &v26[*(v20 + 32)];
    v36 = v41;
    *v35 = v40;
    *(v35 + 1) = v27;
    v37 = &v26[*(v20 + 28)];
    v38 = v42;
    *v37 = v36;
    *(v37 + 1) = v38;
    v37[16] = 0;
    (*(v22 + 32))(a6, v26, v20);
    __swift_storeEnumTagSinglePayload(a6, 0, 1, v20);
    OUTLINED_FUNCTION_26_2();
  }
}

uint64_t Reference<A>.init(value:type:elementKeyPath:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  OUTLINED_FUNCTION_2_3();
  v14 = v13;
  (*(v15 + 16))(a6, a1, v16);
  v19 = type metadata accessor for Reference(0, a4, v17, v18);
  v20 = (a6 + *(v19 + 32));
  *v20 = v11;
  v20[1] = v12;
  v25[2] = a4;
  v25[3] = a5;
  v25[4] = a3;
  v22 = sub_1BF03CFB4(sub_1BF0B9F10, v25, a4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], a5, MEMORY[0x1E69E7410], v21);

  result = (*(v14 + 8))(a1, a4);
  v24 = a6 + *(v19 + 28);
  *v24 = v22;
  *(v24 + 8) = 0;
  *(v24 + 16) = 1;
  return result;
}

void Reference<A>.init(value:type:elementKeyPath:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a5;
  v54 = a3;
  v55 = a6;
  v9 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v49 - v14;
  OUTLINED_FUNCTION_2_3();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  v25 = type metadata accessor for Reference(0, a4, v23, v24);
  OUTLINED_FUNCTION_1();
  v51 = v26;
  OUTLINED_FUNCTION_59();
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = &v49 - v30;
  v32 = *a2;
  v33 = a2[1];
  v50 = v32;
  v34 = *(v11 + 16);
  v53 = a1;
  v34(v15, a1, v9, v29);
  if (__swift_getEnumTagSinglePayload(v15, 1, a4) == 1)
  {
    v35 = *(v11 + 8);
    v36 = OUTLINED_FUNCTION_6_14();
    v35(v36);

    (v35)(v15, v9);
    v37 = 1;
    v38 = v55;
  }

  else
  {
    (*(v17 + 32))(v22, v15, a4);
    v39 = (*(v17 + 16))(v31, v22, a4);
    v49 = &v49;
    v40 = &v31[*(v25 + 32)];
    *v40 = v50;
    *(v40 + 1) = v33;
    MEMORY[0x1EEE9AC00](v39, v41);
    v42 = v52;
    *(&v49 - 4) = a4;
    *(&v49 - 3) = v42;
    *(&v49 - 2) = v54;
    v44 = sub_1BF03CFB4(sub_1BF0B9DAC, (&v49 - 6), a4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v42, MEMORY[0x1E69E7410], v43);

    v45 = OUTLINED_FUNCTION_6_14();
    v46(v45);
    (*(v17 + 8))(v22, a4);
    v47 = &v31[*(v25 + 28)];
    *v47 = v44;
    *(v47 + 1) = 0;
    v47[16] = 1;
    v48 = v55;
    (*(v51 + 32))(v55, v31, v25);
    v37 = 0;
    v38 = v48;
  }

  __swift_storeEnumTagSinglePayload(v38, v37, 1, v25);
  OUTLINED_FUNCTION_26_2();
}

uint64_t Reference.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v8 = *(a2 + 16);
  v9 = type metadata accessor for ReferenceEncodingContainer(0, v8, a3, a4);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v20 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1BF0B5B38(v8, v16, v15);
  if (!v5)
  {
    sub_1BF0D52D0(v6, v9, v18, v19);
    return (*(v11 + 8))(v15, v9);
  }

  return result;
}

uint64_t sub_1BF0B9F28(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1BF17A2EC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF0B9F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BF075098(a1);
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 1;
  }

  else
  {
    sub_1BF0BB164(result, v5, a1, a2);
    v7 = 0;
  }

  v8 = type metadata accessor for AuthToken(0);

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v8);
}

unint64_t sub_1BF0BA008(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    OUTLINED_FUNCTION_11_8();
    result = sub_1BF17A1EC();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_1BF17A31C();
      OUTLINED_FUNCTION_7_11();
      return OUTLINED_FUNCTION_10_15();
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall JSONPointer.append(_:)(TeaFoundation::JSONPointer::Component a1)
{
  v3 = *a1.unescapedValue._countAndFlagsBits;
  v2 = *(a1.unescapedValue._countAndFlagsBits + 8);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF071B6C();
  v4 = *(*v1 + 16);
  sub_1BF071DA8(v4);
  v5 = *v1;
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 16 * v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  *v1 = v5;
}

TeaFoundation::JSONPointer __swiftcall JSONPointer.appending(_:)(TeaFoundation::JSONPointer::Component a1)
{
  v3 = v1;
  v5 = *a1.unescapedValue._countAndFlagsBits;
  v4 = *(a1.unescapedValue._countAndFlagsBits + 8);
  *v1 = *v2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF071B6C();
  v6 = *(*v3 + 16);
  result.components._rawValue = sub_1BF071DA8(v6);
  v8 = *v3;
  *(v8 + 16) = v6 + 1;
  v9 = v8 + 16 * v6;
  *(v9 + 32) = v5;
  *(v9 + 40) = v4;
  return result;
}

uint64_t JSONPointer.rawValue.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = 47;
  if (!v2)
  {
    v3 = 0;
  }

  v15 = v3;
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1BF00DD60();
    sub_1BF013170();
    v4 = v1 + 40;
    do
    {
      OUTLINED_FUNCTION_0_25();
      sub_1BF17AF5C();
      OUTLINED_FUNCTION_0_25();
      v5 = sub_1BF17AF5C();
      v7 = v6;

      v8 = *(v14 + 16);
      if (v8 >= *(v14 + 24) >> 1)
      {
        sub_1BF00DD60();
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v7;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  sub_1BF02027C();
  sub_1BF01B738();
  v10 = sub_1BF179F7C();
  v12 = v11;

  MEMORY[0x1BFB52000](v10, v12);

  return v15;
}

uint64_t JSONPointer.Component.jsonEscaped.getter()
{
  v0 = sub_1BF013170();
  OUTLINED_FUNCTION_4_12(v0, v1, v2, v3, v4, v5, v6, v7, MEMORY[0x1E69E6158], v0, v0, v0, 12414, 0xE200000000000000, 126);
  OUTLINED_FUNCTION_0_25();
  v19 = sub_1BF17AF5C();
  OUTLINED_FUNCTION_4_12(v19, v8, v9, v10, v11, v12, v13, v14, v17, v18, v0, v0, 12670, 0xE200000000000000, 47);
  OUTLINED_FUNCTION_0_25();
  v15 = sub_1BF17AF5C();

  return v15;
}

TeaFoundation::JSONPointer_optional __swiftcall JSONPointer.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = sub_1BF0B9F28(rawValue._countAndFlagsBits, rawValue._object);
  if (!v6)
  {
LABEL_7:

    v11 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v11 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = 0;
LABEL_21:
      *v4 = v12;
      goto LABEL_23;
    }

LABEL_20:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  if (v5 == 47 && v6 == 0xE100000000000000)
  {
  }

  else
  {
    v8 = sub_1BF17B86C();

    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v13 = sub_1BF0BA008(1uLL, countAndFlagsBits, object);
  *&v47 = 47;
  *(&v47 + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v13, v14);
  v35 = &v47;
  v19 = sub_1BF01A1B0(0x7FFFFFFFFFFFFFFFLL, 0, sub_1BF01C1EC, &v33, v15, v16, v17, v18);
  v20 = *(v19 + 16);
  if (!v20)
  {

    goto LABEL_20;
  }

  v38 = v4;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1BF0705E8();
  v12 = v50;
  v21 = sub_1BF0BB054();
  v22 = sub_1BF013170();
  v37 = v19;
  v23 = (v19 + 56);
  v39 = v21;
  while (1)
  {
    v40 = v20;
    v24 = *(v23 - 1);
    v25 = *v23;
    v47 = *(v23 - 3);
    v48 = v24;
    v49 = v25;
    v45 = 47;
    v46 = 0xE100000000000000;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v26 = MEMORY[0x1E69E6158];
    v9 = sub_1BF17AF8C();
    if (v9)
    {
      break;
    }

    v44 = 0xE100000000000000;
    v45 = 12670;
    v46 = 0xE200000000000000;
    v43 = 47;
    v35 = v22;
    v36 = v22;
    v33 = v26;
    v34 = v21;
    OUTLINED_FUNCTION_0_25();
    v45 = sub_1BF17AF5C();
    v46 = v27;
    v42 = 0xE100000000000000;
    v43 = 12414;
    v44 = 0xE200000000000000;
    v41 = 126;
    v35 = v22;
    v36 = v22;
    v33 = v26;
    v34 = v22;
    OUTLINED_FUNCTION_0_25();
    v28 = sub_1BF17AF5C();
    v30 = v29;

    v50 = v12;
    v31 = *(v12 + 16);
    if (v31 >= *(v12 + 24) >> 1)
    {
      sub_1BF0705E8();
      v12 = v50;
    }

    *(v12 + 16) = v31 + 1;
    v32 = v12 + 16 * v31;
    *(v32 + 32) = v28;
    *(v32 + 40) = v30;
    v23 += 4;
    v21 = v39;
    v20 = v40 - 1;
    if (v40 == 1)
    {

      v4 = v38;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  result.value.components._rawValue = v9;
  result.is_nil = v10;
  return result;
}

uint64_t JSONPointer.Component.init<A>(jsonEscaped:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1BF013170();
  v9 = MEMORY[0x1E69E6158];
  result = sub_1BF17AF8C();
  if (result)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_25();
    v21 = sub_1BF17AF5C();
    OUTLINED_FUNCTION_4_12(v21, v11, v12, v13, v14, v15, v16, v17, v9, a3, v8, v8, 126, 0xE100000000000000, 126);
    OUTLINED_FUNCTION_0_25();
    v18 = sub_1BF17AF5C();
    v20 = v19;
    (*(*(a2 - 8) + 8))(a1, a2);

    *a4 = v18;
    a4[1] = v20;
  }

  return result;
}

uint64_t sub_1BF0BA894@<X0>(uint64_t *a1@<X8>)
{
  result = JSONPointer.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static JSONPointer.== infix(_:_:)()
{
  v0 = JSONPointer.rawValue.getter();
  v2 = v1;
  if (v0 == JSONPointer.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1BF17B86C();
  }

  return v5 & 1;
}

uint64_t JSONPointer.hash(into:)(uint64_t a1)
{
  JSONPointer.rawValue.getter();
  sub_1BF179F3C();
}

uint64_t JSONPointer.Component.unescapedValue.getter()
{
  v1 = *v0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t JSONPointer.Component.unescapedValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static JSONPointer.Component.index(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1BF17B6FC();
    *a2 = result;
    a2[1] = v3;
  }

  return result;
}

unint64_t JSONPointer.Component.index.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = HIBYTE(v1) & 0xF;
  v4 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v43 = *v0;
  v44 = v1;
  v45 = 0;
  v46 = v5;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  while (1)
  {
    v6 = sub_1BF17A23C();
    if (!v7)
    {

      v14 = v2 == 48 && v1 == 0xE100000000000000;
      if (v14 || (OUTLINED_FUNCTION_129(), OUTLINED_FUNCTION_9_14(), result = sub_1BF17B86C(), (result & 1) != 0) || (v15 = OUTLINED_FUNCTION_129(), result = sub_1BF0B9F28(v15, v16), !v17))
      {
        if (v5)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (result != 48 || v17 != 0xE100000000000000)
        {
          OUTLINED_FUNCTION_9_14();
          v19 = sub_1BF17B86C();

          result = 0;
          if ((v19 & 1) != 0 || !v5)
          {
            return result;
          }

LABEL_33:
          if ((v1 & 0x1000000000000000) != 0)
          {
            goto LABEL_106;
          }

          if ((v1 & 0x2000000000000000) != 0)
          {
            v43 = v2;
            v44 = v1 & 0xFFFFFFFFFFFFFFLL;
            if (v2 == 43)
            {
              if (v3)
              {
                if (v3 != 1)
                {
                  OUTLINED_FUNCTION_8_11();
                  while (1)
                  {
                    OUTLINED_FUNCTION_15();
                    if (!v10 & v22)
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_1_22();
                    if (!v10)
                    {
                      break;
                    }

                    v21 = v31 + v30;
                    if (__OFADD__(v31, v30))
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_44();
                    if (v10)
                    {
                      goto LABEL_99;
                    }
                  }
                }

                goto LABEL_98;
              }

LABEL_111:
              __break(1u);
              return result;
            }

            if (v2 != 45)
            {
              if (v3)
              {
                v21 = 0;
                v34 = &v43;
                while (1)
                {
                  v35 = *v34 - 48;
                  if (v35 > 9)
                  {
                    break;
                  }

                  v36 = 10 * v21;
                  if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                  {
                    break;
                  }

                  v21 = v36 + v35;
                  if (__OFADD__(v36, v35))
                  {
                    break;
                  }

                  ++v34;
                  if (!--v3)
                  {
                    goto LABEL_97;
                  }
                }
              }

              goto LABEL_98;
            }

            if (v3)
            {
              if (v3 != 1)
              {
                OUTLINED_FUNCTION_8_11();
                while (1)
                {
                  OUTLINED_FUNCTION_15();
                  if (!v10 & v22)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_1_22();
                  if (!v10)
                  {
                    break;
                  }

                  v21 = v27 - v26;
                  if (__OFSUB__(v27, v26))
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_44();
                  if (v10)
                  {
                    goto LABEL_99;
                  }
                }
              }

              goto LABEL_98;
            }
          }

          else
          {
            if ((v2 & 0x1000000000000000) != 0)
            {
              result = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              OUTLINED_FUNCTION_129();
              result = sub_1BF17B2FC();
              v4 = v42;
            }

            v20 = *result;
            if (v20 == 43)
            {
              if (v4 >= 1)
              {
                if (v4 != 1)
                {
                  v21 = 0;
                  if (result)
                  {
                    while (1)
                    {
                      OUTLINED_FUNCTION_15();
                      if (!v10 & v22)
                      {
                        goto LABEL_98;
                      }

                      OUTLINED_FUNCTION_1_22();
                      if (!v10)
                      {
                        goto LABEL_98;
                      }

                      v21 = v29 + v28;
                      if (__OFADD__(v29, v28))
                      {
                        goto LABEL_98;
                      }

                      OUTLINED_FUNCTION_44();
                      if (v10)
                      {
                        goto LABEL_99;
                      }
                    }
                  }

                  goto LABEL_97;
                }

                goto LABEL_98;
              }

              goto LABEL_110;
            }

            if (v20 != 45)
            {
              if (v4)
              {
                v21 = 0;
                if (result)
                {
                  while (1)
                  {
                    v32 = *result - 48;
                    if (v32 > 9)
                    {
                      goto LABEL_98;
                    }

                    v33 = 10 * v21;
                    if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                    {
                      goto LABEL_98;
                    }

                    v21 = v33 + v32;
                    if (__OFADD__(v33, v32))
                    {
                      goto LABEL_98;
                    }

                    ++result;
                    if (!--v4)
                    {
                      goto LABEL_97;
                    }
                  }
                }

                goto LABEL_97;
              }

LABEL_98:
              v21 = 0;
              v25 = 1;
              goto LABEL_99;
            }

            if (v4 >= 1)
            {
              if (v4 != 1)
              {
                v21 = 0;
                if (result)
                {
                  while (1)
                  {
                    OUTLINED_FUNCTION_15();
                    if (!v10 & v22)
                    {
                      goto LABEL_98;
                    }

                    OUTLINED_FUNCTION_1_22();
                    if (!v10)
                    {
                      goto LABEL_98;
                    }

                    v21 = v24 - v23;
                    if (__OFSUB__(v24, v23))
                    {
                      goto LABEL_98;
                    }

                    OUTLINED_FUNCTION_44();
                    if (v10)
                    {
                      goto LABEL_99;
                    }
                  }
                }

LABEL_97:
                v25 = 0;
LABEL_99:
                v37 = v25;
                goto LABEL_100;
              }

              goto LABEL_98;
            }

            __break(1u);
          }

          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

LABEL_50:
      }

      return 0;
    }

    v8 = v6;
    v9 = v7;
    OUTLINED_FUNCTION_9_14();
    if (sub_1BF17B86C())
    {
      break;
    }

    v10 = v8 == 48 && v9 == 0xE100000000000000;
    if (v10)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_9_14();
    if (sub_1BF17B86C())
    {

      goto LABEL_50;
    }

    if (v8 == 57 && v9 == 0xE100000000000000)
    {
    }

    else
    {
LABEL_16:
      v12 = sub_1BF17B86C();

      if (v12)
      {
        goto LABEL_50;
      }
    }
  }

  __break(1u);
LABEL_106:
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v38 = OUTLINED_FUNCTION_129();
  sub_1BF0750D8(v38, v39);
  v21 = v40;
  v37 = v41;

LABEL_100:
  if (v37)
  {
    return 0;
  }

  else
  {
    return v21;
  }
}

uint64_t static JSONPointer.Component.name(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t static JSONPointer.Component.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BF17B86C();
  }
}

unint64_t JSONPointer.debugDescription.getter()
{
  v1 = *v0;
  sub_1BF17B1EC();

  v2 = MEMORY[0x1BFB522D0](v1, &type metadata for JSONPointer.Component);
  MEMORY[0x1BFB52000](v2);

  MEMORY[0x1BFB52000](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_1BF0BB054()
{
  result = qword_1EBDCBC00;
  if (!qword_1EBDCBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBC00);
  }

  return result;
}

unint64_t sub_1BF0BB0AC()
{
  result = qword_1EBDCBC08;
  if (!qword_1EBDCBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBC08);
  }

  return result;
}

unint64_t sub_1BF0BB110()
{
  result = qword_1EBDCBC10;
  if (!qword_1EBDCBC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBC10);
  }

  return result;
}

uint64_t sub_1BF0BB164@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 56);
  v6 = v5 + *(*(type metadata accessor for AuthToken(0) - 8) + 72) * result;

  return sub_1BF0A8AC8(v6, a4);
}

uint64_t Promise.timeout(after:on:message:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v6 = *v4;
  sub_1BF041640();
  OUTLINED_FUNCTION_85();
  swift_allocObject();
  v7 = sub_1BF17A50C();
  v9 = v8;
  *v8 = v5;

  v9[1] = static Promise.timeout<A>(after:on:message:)();
  sub_1BF00CD7C(v7, v6);
  static Promise.race(_:)(v10);
  OUTLINED_FUNCTION_65();
  return v6;
}

void sub_1BF0BB304(void (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0x80000001BF18D3E0;
  }

  sub_1BF095D40();
  v7 = swift_allocError();
  *v8 = v5;
  *(v8 + 8) = v6;
  *(v8 + 16) = 0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  a1(v7);
}

uint64_t static Promise.timeout<A>(after:on:message:)()
{
  OUTLINED_FUNCTION_0_26();
  v4 = v3;
  v5 = sub_1BF179BEC();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v19 - v14;
  sub_1BF179BDC();
  sub_1BF179C6C();
  v16 = *(v7 + 8);
  v16(v11, v5);
  v17 = static Promise.timeout<A>(after:on:message:)(v15, v4, v2, v1, v0);
  v16(v15, v5);
  return v17;
}

uint64_t Promise.timeout(after:on:message:)()
{
  v4 = v1;
  OUTLINED_FUNCTION_0_26();
  v6 = v5;
  v7 = *v1;
  sub_1BF041640();
  OUTLINED_FUNCTION_85();
  swift_allocObject();
  v8 = sub_1BF17A50C();
  v10 = v9;
  *v9 = v4;
  v11 = *(v7 + 80);

  v10[1] = static Promise.timeout<A>(after:on:message:)(v6, v3, v2, v0, v11);
  sub_1BF00CD7C(v8, v7);
  static Promise.race(_:)(v12);
  OUTLINED_FUNCTION_65();
  return v7;
}

uint64_t static Promise.timeout<A>(after:on:promise:message:)()
{
  OUTLINED_FUNCTION_0_26();
  v4 = type metadata accessor for Promise(0, *(*v1 + 80), v2, v3);
  sub_1BF041640();
  OUTLINED_FUNCTION_85();
  swift_allocObject();
  v5 = sub_1BF17A50C();
  v7 = v6;
  *v6 = v0;

  v7[1] = static Promise.timeout<A>(after:on:message:)();
  sub_1BF00CD7C(v5, v4);
  static Promise.race(_:)(v8);
  OUTLINED_FUNCTION_65();
  return v4;
}

uint64_t URLHandlerPattern.init(scheme:host:path:fragment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = 0;
  sub_1BF0BB810();
  result = sub_1BF179DAC();
  a9[9] = result;
  return result;
}

void sub_1BF0BB810()
{
  if (!qword_1ED8EAE70)
  {
    v0 = sub_1BF17A65C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EAE70);
    }
  }
}

uint64_t sub_1BF0BB868(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BF0BB8A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BF0BB91C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 33))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0BB95C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t AuthToken.fetchDate.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1BF1794AC();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t AuthToken.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AuthToken(0) + 20);
  sub_1BF17923C();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t AuthToken.token.getter()
{
  v1 = *(v0 + *(type metadata accessor for AuthToken(0) + 24));
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t AuthToken.init(fetchDate:url:token:expirationUtc:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  sub_1BF1794AC();
  OUTLINED_FUNCTION_12();
  (*(v12 + 32))(a5, a1);
  v13 = type metadata accessor for AuthToken(0);
  v14 = v13[5];
  sub_1BF17923C();
  OUTLINED_FUNCTION_12();
  result = (*(v15 + 32))(a5 + v14, a2);
  v17 = (a5 + v13[6]);
  *v17 = a3;
  v17[1] = a4;
  *(a5 + v13[7]) = a6;
  return result;
}

BOOL AuthToken.isExpired.getter()
{
  v1 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = *(v0 + *(type metadata accessor for AuthToken(0) + 28));
  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  sub_1BF17944C();
  v11 = v10;
  (*(v3 + 8))(v8, v1);
  return v9 <= v11;
}

uint64_t sub_1BF0BBCB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446863746566 && a2 == 0xE900000000000065;
  if (v4 || (sub_1BF17B86C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7107189 && a2 == 0xE300000000000000;
    if (v6 || (sub_1BF17B86C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
      if (v7 || (sub_1BF17B86C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6974617269707865 && a2 == 0xED00006374556E6FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BF17B86C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1BF0BBE1C(char a1)
{
  result = 0x7461446863746566;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x6E656B6F74;
      break;
    case 3:
      result = 0x6974617269707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF0BBEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF0BBCB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF0BBED4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF0BBE14();
  *a1 = result;
  return result;
}

uint64_t sub_1BF0BBEFC(uint64_t a1)
{
  v2 = sub_1BF0BC1A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF0BBF38(uint64_t a1)
{
  v2 = sub_1BF0BC1A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthToken.encode(to:)(void *a1)
{
  sub_1BF0BC690(0, &qword_1ED8E9B58, MEMORY[0x1E69E6F58]);
  v4 = v3;
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v16[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF0BC1A8();
  sub_1BF17BC1C();
  v16[15] = 0;
  sub_1BF1794AC();
  OUTLINED_FUNCTION_2_18();
  sub_1BF0BC6F4(v11, v12, MEMORY[0x1E6969538]);
  OUTLINED_FUNCTION_7_12();
  sub_1BF17B69C();
  if (!v1)
  {
    type metadata accessor for AuthToken(0);
    v16[14] = 1;
    sub_1BF17923C();
    OUTLINED_FUNCTION_3_13();
    sub_1BF0BC6F4(v13, v14, MEMORY[0x1E6968FB8]);
    OUTLINED_FUNCTION_7_12();
    sub_1BF17B69C();
    v16[13] = 2;
    OUTLINED_FUNCTION_7_12();
    sub_1BF17B66C();
    v16[12] = 3;
    OUTLINED_FUNCTION_7_12();
    sub_1BF17B67C();
  }

  return (*(v6 + 8))(v10, v4);
}

unint64_t sub_1BF0BC1A8()
{
  result = qword_1ED8E9CD0;
  if (!qword_1ED8E9CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E9CD0);
  }

  return result;
}

uint64_t AuthToken.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  sub_1BF17923C();
  OUTLINED_FUNCTION_1();
  v47 = v4;
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3, v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v51 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_2_0();
  v52 = v14 - v13;
  sub_1BF0BC690(0, &qword_1ED8E9B80, MEMORY[0x1E69E6F48]);
  OUTLINED_FUNCTION_1();
  v49 = v16;
  v50 = v15;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v46 - v18;
  v20 = type metadata accessor for AuthToken(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF0BC1A8();
  v53 = v19;
  v26 = v54;
  sub_1BF17BBDC();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54 = v20;
  v27 = v51;
  v28 = v48;
  v58 = 0;
  OUTLINED_FUNCTION_2_18();
  sub_1BF0BC6F4(v29, v30, MEMORY[0x1E6969558]);
  sub_1BF17B5FC();
  v31 = *(v27 + 32);
  v32 = v25;
  v33 = v52;
  v52 = v9;
  v31(v25, v33, v9);
  v57 = 1;
  OUTLINED_FUNCTION_3_13();
  sub_1BF0BC6F4(v34, v35, MEMORY[0x1E6968FD0]);
  sub_1BF17B5FC();
  (*(v47 + 32))(v25 + *(v54 + 20), v8, v28);
  v56 = 2;
  v36 = sub_1BF17B5CC();
  v37 = a1;
  v38 = v54;
  v39 = (v32 + *(v54 + 24));
  *v39 = v36;
  v39[1] = v40;
  v55 = 3;
  sub_1BF17B5DC();
  v42 = v41;
  v43 = OUTLINED_FUNCTION_5_12();
  v44(v43);
  *(v32 + *(v38 + 28)) = v42;
  sub_1BF0A8AC8(v32, v46);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_1BF0A8B2C(v32);
}

void sub_1BF0BC690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BF0BC1A8();
    v7 = a3(a1, &type metadata for AuthToken.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BF0BC6F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for Scope(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AuthToken.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF0BC8FC()
{
  result = qword_1EBDCBC18;
  if (!qword_1EBDCBC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBC18);
  }

  return result;
}

unint64_t sub_1BF0BC954()
{
  result = qword_1ED8E9CC0;
  if (!qword_1ED8E9CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E9CC0);
  }

  return result;
}

unint64_t sub_1BF0BC9AC()
{
  result = qword_1ED8E9CC8;
  if (!qword_1ED8E9CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E9CC8);
  }

  return result;
}

uint64_t ReferenceDecodingPool.__allocating_init(references:)(uint64_t a1)
{
  OUTLINED_FUNCTION_19();
  v2 = swift_allocObject();
  ReferenceDecodingPool.init(references:)(a1);
  return v2;
}

void sub_1BF0BCB00(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v63 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v60 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v59 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v56 - v16;
  v19 = *a1;
  v18 = a1[1];
  v20 = *(a2 + 16);
  if (!v20)
  {
    *&v62[0] = MEMORY[0x1E69E7CC0];
    v21 = OUTLINED_FUNCTION_1_24();
    sub_1BF0BD690(v21, v22, v23);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_16_5(v17, 0);
      OUTLINED_FUNCTION_20();
      (*(v24 + 32))(a4, v17, a3);
      return;
    }

    OUTLINED_FUNCTION_16_5(v17, 1);
    (*(v60 + 8))(v17, v63);
  }

  swift_beginAccess();
  v25 = sub_1BF04FEBC(v19, v18, *(v4 + 16));
  if (v25)
  {
    v26 = v25;
    v56[0] = a4;
    v56[1] = v5;
    v57 = v19;
    v58 = v18;
    swift_endAccess();
    v27 = a2 + 40;
    v28 = MEMORY[0x1E69E7CC0];
    for (i = v20; i; --i)
    {
      if (*(v26 + 16))
      {
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        OUTLINED_FUNCTION_77_0();
        v30 = sub_1BF014CA8();
        if (v31)
        {
          sub_1BF0075BC(*(v26 + 56) + 32 * v30, v61);

          sub_1BEFF9A40(v61, v62);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1BF0A658C();
            v28 = v33;
          }

          v32 = *(v28 + 16);
          if (v32 >= *(v28 + 24) >> 1)
          {
            sub_1BF0A658C();
            v28 = v34;
          }

          *(v28 + 16) = v32 + 1;
          sub_1BEFF9A40(v62, (v28 + 32 * v32 + 32));
        }

        else
        {
        }
      }

      v27 += 16;
    }

    if (*(v28 + 16) == v20)
    {
      *&v62[0] = v28;
      v35 = OUTLINED_FUNCTION_1_24();
      sub_1BF0BD690(v35, v36, v37);
      v38 = v59;
      if (swift_dynamicCast())
      {

        OUTLINED_FUNCTION_16_5(v38, 0);
        OUTLINED_FUNCTION_20();
        (*(v39 + 32))(v56[0], v38, a3);
        return;
      }

      OUTLINED_FUNCTION_16_5(v38, 1);
      (*(v60 + 8))(v38, v63);
    }

    else
    {
    }

    v41 = 0;
    v42 = a2 + 40;
    v43 = MEMORY[0x1E69E7CC0];
LABEL_23:
    for (j = (v42 + 16 * v41); ; j += 2)
    {
      if (v20 == v41)
      {

        sub_1BF0B5F00();
        swift_allocError();
        v54 = v58;
        *v55 = v57;
        *(v55 + 8) = v54;
        *(v55 + 16) = v43;
        *(v55 + 24) = 0;
        *(v55 + 32) = 1;
        goto LABEL_36;
      }

      if (v41 >= v20)
      {
        break;
      }

      if (__OFADD__(v41, 1))
      {
        goto LABEL_38;
      }

      v46 = *(j - 1);
      v45 = *j;
      v47 = *(v26 + 16);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (!v47 || (OUTLINED_FUNCTION_8_13(), v48 = sub_1BF014CA8(), (v49 & 1) == 0))
      {
        memset(v62, 0, sizeof(v62));
        sub_1BEFFD168(v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_13_10();
          sub_1BF0201A4();
          v43 = v52;
        }

        v50 = *(v43 + 16);
        if (v50 >= *(v43 + 24) >> 1)
        {
          OUTLINED_FUNCTION_13_10();
          sub_1BF0201A4();
          v43 = v53;
        }

        *(v43 + 16) = v50 + 1;
        v51 = v43 + 16 * v50;
        *(v51 + 32) = v46;
        *(v51 + 40) = v45;
        ++v41;
        goto LABEL_23;
      }

      sub_1BF0075BC(*(v26 + 56) + 32 * v48, v62);

      sub_1BEFFD168(v62);
      ++v41;
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
    swift_endAccess();
    sub_1BF0B5F00();
    swift_allocError();
    *v40 = v19;
    *(v40 + 8) = v18;
    *(v40 + 16) = a2;
    *(v40 + 24) = 0;
    *(v40 + 32) = 1;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
LABEL_36:
    swift_willThrow();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t ReferenceDecodingPool.__allocating_init()()
{
  OUTLINED_FUNCTION_19();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ReferenceDecodingPool.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ReferenceDecodingPool.__allocating_init(references:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_19();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC8];
  ReferenceDecodingPool.insert(contentsOf:)(a1);

  return v2;
}

uint64_t ReferenceDecodingPool.init(references:)(Swift::OpaquePointer a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  ReferenceDecodingPool.insert(contentsOf:)(a1);

  return v1;
}

uint64_t ReferenceDecodingPool.insert<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Reference(0, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v15 - v9;
  (*(v11 + 16))(&v15 - v9, a1, v8);
  AnyReference.init<A>(reference:)(v10, a2, v12, v13, v16);
  ReferenceDecodingPool.insert(_:)(v16);
  return sub_1BF0BD19C(v16);
}

uint64_t ReferenceDecodingPool.insert<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Reference(0, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v20 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v19 - v12;
  OUTLINED_FUNCTION_77_0();
  v14 = sub_1BF17A4EC();
  v22 = v14;
  OUTLINED_FUNCTION_77_0();
  result = sub_1BF17A5AC();
  if (v14 != result)
  {
    do
    {
      OUTLINED_FUNCTION_77_0();
      v16 = sub_1BF17A58C();
      sub_1BF17A51C();
      if (v16)
      {
        (*(v8 + 16))(v13, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v6);
      }

      else
      {
        result = sub_1BF17B23C();
        if (v20 != 8)
        {
          __break(1u);
          return result;
        }

        v21 = result;
        (*(v8 + 16))(v13, &v21, v6);
        swift_unknownObjectRelease();
      }

      sub_1BF17A62C();
      ReferenceDecodingPool.insert<A>(_:)(v13, a2, v17, v18);
      (*(v8 + 8))(v13, v6);
      OUTLINED_FUNCTION_77_0();
      result = sub_1BF17A5AC();
      v14 = v22;
    }

    while (v22 != result);
  }

  return result;
}

unint64_t ReferenceDecodingPool.description.getter()
{
  sub_1BF17B1EC();

  swift_beginAccess();
  sub_1BF0BD5D0(0, &qword_1ED8EAE98, MEMORY[0x1E69E5E28]);
  sub_1BF0264F8();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF179D6C();

  v0 = OUTLINED_FUNCTION_77_0();
  MEMORY[0x1BFB52000](v0);

  MEMORY[0x1BFB52000](41, 0xE100000000000000);
  return 0xD000000000000021;
}

void sub_1BF0BD508(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_0_29(a1, a2, a3, a4, a5);
  v8 = (v7 + (v5 << 6));
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v11 = v9[3];
  v8[2] = v9[2];
  v8[3] = v11;
  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_17(v6, v14);
  }
}

void sub_1BF0BD55C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  *(v5[6] + 8 * v4) = v6;
  *(v5[7] + v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_13(v5, v10);
  }
}

void sub_1BF0BD594(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  *(v5[6] + 8 * v4) = v6;
  *(v5[7] + v4) = v7 & 1;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_13(v5, v10);
  }
}

void sub_1BF0BD5D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t dispatch thunk of ReferenceDecodingPool.__allocating_init(references:)()
{
  return (*(v0 + 96))();
}

{
  return (*(v0 + 104))();
}

void sub_1BF0BD690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA0] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t SyncObservable.__allocating_init<A>(initialValue:)(uint64_t a1)
{
  OUTLINED_FUNCTION_78();
  v2 = swift_allocObject();
  SyncObservable.init<A>(initialValue:)(a1);
  return v2;
}

uint64_t sub_1BF0BD720(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v21 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
    if (a5)
    {
      SyncObservable.uncheckedValue.getter();
      v20 = a5(v14, v18);
      (*(v12 + 8))(v14, a8);
    }

    else
    {
      v20 = 0;
    }

    SyncObservable.next(value:quiet:)(v18, v20 & 1);

    return (*(v12 + 8))(v18, a8);
  }

  return result;
}

uint64_t sub_1BF0BD8D4()
{
  sub_1BF17A75C();
  sub_1BF17B15C();

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BF0BD954()
{
  sub_1BF042FB8(v0 + 16);

  return v0;
}

uint64_t sub_1BF0BD97C()
{
  v0 = sub_1BF0BD954();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t static ApplicationStateLaunchOptionKey.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 0);
      v7 = 0;
      goto LABEL_34;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_27;
      }

      v8 = 1;
      v9 = OUTLINED_FUNCTION_0_31(*a1, 1uLL);
      sub_1BF0BDD2C(v9, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 2uLL);
      v7 = 2;
      goto LABEL_34;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 3uLL);
      v7 = 3;
      goto LABEL_34;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 4uLL);
      v7 = 4;
      goto LABEL_34;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 5uLL);
      v7 = 5;
      goto LABEL_34;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 6uLL);
      v7 = 6;
      goto LABEL_34;
    case 7uLL:
      if (v5 != 7)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 7uLL);
      v7 = 7;
      goto LABEL_34;
    case 8uLL:
      if (v5 != 8)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 8uLL);
      v7 = 8;
      goto LABEL_34;
    case 9uLL:
      if (v5 != 9)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 9uLL);
      v7 = 9;
      goto LABEL_34;
    case 0xAuLL:
      if (v5 != 10)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 0xAuLL);
      v7 = 10;
      goto LABEL_34;
    case 0xBuLL:
      if (v5 != 11)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 0xBuLL);
      v7 = 11;
      goto LABEL_34;
    default:
      if (v5 >= 0xC)
      {
        v15 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v17 = sub_1BF17B86C();
          sub_1BF0BDD18(v4, v5);
          v18 = OUTLINED_FUNCTION_1_25();
          sub_1BF0BDD18(v18, v19);
          v20 = OUTLINED_FUNCTION_1_25();
          v22 = OUTLINED_FUNCTION_0_31(v20, v21);
          sub_1BF0BDD2C(v22, v5);
          return v17 & 1;
        }

        sub_1BF0BDD18(v15, v3);
        v24 = OUTLINED_FUNCTION_1_25();
        sub_1BF0BDD18(v24, v25);
        v26 = OUTLINED_FUNCTION_1_25();
        sub_1BF0BDD2C(v26, v27);
        v6 = OUTLINED_FUNCTION_1_25();
LABEL_34:
        sub_1BF0BDD2C(v6, v7);
        return 1;
      }

      else
      {
LABEL_27:
        sub_1BF0BDD18(*a2, a2[1]);
        v10 = OUTLINED_FUNCTION_1_25();
        sub_1BF0BDD18(v10, v11);
        v12 = OUTLINED_FUNCTION_1_25();
        v14 = OUTLINED_FUNCTION_0_31(v12, v13);
        sub_1BF0BDD2C(v14, v5);
        return 0;
      }
  }
}

uint64_t sub_1BF0BDD18(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t sub_1BF0BDD2C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t ApplicationStateLaunchOptionKey.hash(into:)(uint64_t a1)
{
  switch(*(v1 + 8))
  {
    case 0:
      v2 = 0;
      goto LABEL_14;
    case 1:
      v2 = 1;
      goto LABEL_14;
    case 2:
      v2 = 2;
      goto LABEL_14;
    case 3:
      v2 = 3;
      goto LABEL_14;
    case 4:
      v2 = 4;
      goto LABEL_14;
    case 5:
      v2 = 5;
      goto LABEL_14;
    case 6:
      v2 = 6;
      goto LABEL_14;
    case 7:
      v2 = 7;
      goto LABEL_14;
    case 8:
      v2 = 8;
      goto LABEL_14;
    case 9:
      v2 = 9;
      goto LABEL_14;
    case 0xALL:
      v2 = 10;
      goto LABEL_14;
    case 0xBLL:
      v2 = 11;
LABEL_14:
      result = MEMORY[0x1BFB53950](v2);
      break;
    default:
      MEMORY[0x1BFB53950](12);

      result = sub_1BF179F3C();
      break;
  }

  return result;
}

uint64_t ApplicationStateLaunchOptionKey.hashValue.getter()
{
  v3 = *v0;
  sub_1BF17BB6C();
  ApplicationStateLaunchOptionKey.hash(into:)(v2);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0BDE8C(uint64_t a1)
{
  v4 = *v1;
  sub_1BF17BB6C();
  ApplicationStateLaunchOptionKey.hash(into:)(v3);
  return sub_1BF17BB9C();
}

uint64_t ApplicationStateManagerIOS.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ApplicationStateManagerIOS.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

void sub_1BF0BDF68(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF107154(v5);
    v5 = v10;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(type metadata accessor for ManualClock.WakeUp(0) - 8);
    v8 = *(v7 + 72);
    v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v8 * a1;
    sub_1BF0BE5BC(v9, a2);
    sub_1BF0A6F14(v9 + v8, v6 - 1 - a1, v9);
    *(v5 + 16) = v6 - 1;
    *v2 = v5;
  }
}

uint64_t sub_1BF0BE058(unint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, unint64_t))
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v9 - 1 - a1;
    v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v13 = *(v12 + 0x20);
    a3(v12 + 40, v11);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
    *v3 = v7;
    return v13;
  }

  return result;
}

uint64_t ApplicationStateManagerIOS.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1BF0BE14C()
{
  OUTLINED_FUNCTION_77();
  v5 = v4;
  OUTLINED_FUNCTION_2_20(v4, v6);
  v7 = *(v5 + 16);
  v8 = sub_1BEFE90AC(v7);
  if (v8)
  {
    v0 = v8;
    if (v8 < 1)
    {
      goto LABEL_26;
    }

    v2 = v7 & 0xC000000000000001;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v0; ++i)
    {
      if (v2)
      {
        OUTLINED_FUNCTION_8_14();
        v1 = v10;
      }

      else
      {
        OUTLINED_FUNCTION_3_15();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v1 + 24);
          ObjectType = swift_getObjectType();
          (*(v11 + 16))(ObjectType, v11);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC0];
  sub_1BEFE90AC(*(v5 + 16));
  OUTLINED_FUNCTION_7_14();
  for (j = 0; ; ++j)
  {
    if (v0 == j)
    {

      *(v5 + 16) = v14;

      OUTLINED_FUNCTION_76_0();
      return;
    }

    if (v2)
    {
      OUTLINED_FUNCTION_8_14();
    }

    else
    {
      if (j >= *(v3 + 16))
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_3_15();
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      OUTLINED_FUNCTION_4_13();
      sub_1BF17B36C();
      OUTLINED_FUNCTION_4_13();
      sub_1BF17B37C();
      sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t _s13TeaFoundation26ApplicationStateManagerIOSC6remove7monitoryAA0cD7Monitor_p_tF_0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = sub_1BEFE90AC(v3);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      swift_unknownObjectRelease();
      if (v8 == a1)
      {

        swift_beginAccess();
        sub_1BF0BE058(i, sub_1BF108F40, sub_1BF04D094);
        swift_endAccess();
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation31ApplicationStateLaunchOptionKeyO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF0BE470(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 16))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 >= 0xD)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF0BE4C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

uint64_t sub_1BF0BE5BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManualClock.WakeUp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RemoteNotificationFetchResult.hashValue.getter()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

uint64_t RemoteNotificationManager.__allocating_init()()
{
  OUTLINED_FUNCTION_0_1();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = v1;
  return result;
}

uint64_t RemoteNotificationManager.init()()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = v2;
  return result;
}

uint64_t RemoteNotificationManager.handleRemoteNotification(userInfo:)(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF0BE7F4(v1, a1, &v7);
  v3 = v7;
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  sub_1BF09E504(off_1ED8F0218, v3);
  sub_1BF099F10();
  v5 = v4;

  return v5;
}

uint64_t sub_1BF0BE7F4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  result = sub_1BEFE90AC(v4);
  if (!result)
  {
    goto LABEL_37;
  }

  v6 = result;
  if (result >= 1)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB53020](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          break;
        }
      }

LABEL_35:
      if (v6 == ++v7)
      {

LABEL_37:
        v18 = *(a1 + 16);
        v24[0] = MEMORY[0x1E69E7CC0];
        v19 = sub_1BEFE90AC(v18);
        result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        for (i = 0; ; ++i)
        {
          if (v19 == i)
          {

            *(a1 + 16) = v24[0];
          }

          if ((v18 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x1BFB53020](i, v18);
          }

          else
          {
            if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_50;
            }
          }

          if (__OFADD__(i, 1))
          {
            break;
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_unknownObjectRelease();
            sub_1BF17B32C();
            sub_1BF17B36C();
            sub_1BF17B37C();
            result = sub_1BF17B33C();
          }

          else
          {
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    v9 = v8[3];
    v10 = v8[5];
    if (!v10)
    {
      goto LABEL_32;
    }

    v22 = v8[4];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF17B14C();
    if (*(a2 + 16) && (v11 = sub_1BF082068(v24), (v12 & 1) != 0))
    {
      sub_1BF0075BC(*(a2 + 56) + 32 * v11, &v25);
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    sub_1BF083C34(v24);
    if (*(&v26 + 1))
    {
      sub_1BF008D6C();
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_30:

        swift_unknownObjectRelease();
        goto LABEL_35;
      }

      sub_1BF17B14C();
      if (MEMORY[0x737071] && (v13 = sub_1BF082068(v24), (v14 & 1) != 0))
      {
        sub_1BF0075BC(MEMORY[0x737099] + 32 * v13, &v25);
      }

      else
      {
        v25 = 0u;
        v26 = 0u;
      }

      sub_1BF083C34(v24);
      if (*(&v26 + 1))
      {
        if (swift_dynamicCast())
        {
          if (v22 == 0x79726F6765746163 && v10 == 0xE800000000000000)
          {

LABEL_32:
            ObjectType = swift_getObjectType();
            (*(v9 + 8))(a2, ObjectType, v9);
            MEMORY[0x1BFB52290]();
            if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BF17A53C();
            }

            sub_1BF17A59C();

            swift_unknownObjectRelease();

            goto LABEL_35;
          }

          v16 = sub_1BF17B86C();

          if (v16)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_30;
      }
    }

    sub_1BEFFD168(&v25);
    goto LABEL_30;
  }

LABEL_51:
  __break(1u);
  return result;
}

BOOL sub_1BF0BEC54@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BF0FCF04(1u, *a1);
  *a2 = result;
  return result;
}

uint64_t RemoteNotificationManager.deinit()
{

  return v0;
}

uint64_t RemoteNotificationManager.__deallocating_deinit()
{
  RemoteNotificationManager.deinit();
  v0 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF0BECFC()
{
  sub_1BF042FB8(v0 + 16);

  sub_1BF042FB8(v0 + 48);
  return v0;
}

uint64_t sub_1BF0BED2C()
{
  v0 = sub_1BF0BECFC();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

unint64_t sub_1BF0BEDA8()
{
  result = qword_1EBDCBC20;
  if (!qword_1EBDCBC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBC20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteNotificationFetchResult(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t SafeCollection.subscript.getter(uint64_t a1, uint64_t a2)
{
  if ((sub_1BF055C60(a1, a2) & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_26();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_2_21();
    v4 = sub_1BF17AC8C();
    if ((sub_1BF056074(a1 + *(v4 + 36), a2) & 0x8000000000000000) == 0)
    {
      sub_1BF17ABEC();
    }
  }

  OUTLINED_FUNCTION_1_26();
  swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_0_32();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

{
  if ((sub_1BF055C60(a1, a2) & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_26();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_2_21();
    v4 = sub_1BF17A04C();
    if (sub_1BF056074(a1 + *(v4 + 36), a2) >= 1)
    {
      swift_getWitnessTable();
      sub_1BF17AB9C();
    }
  }

  OUTLINED_FUNCTION_1_26();
  swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_0_32();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1BF0BF134(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1BF0BF270(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1BF0BF474()
{
  sub_1BEFF6E88();
  v0 = sub_1BF17AD5C();
  type metadata accessor for ThrottleScheduler();
  result = swift_allocObject();
  *(result + 16) = v0;
  *(result + 24) = 0;
  qword_1EBDCABD0 = result;
  return result;
}

uint64_t static ThrottleScheduler.main.getter()
{
  if (qword_1EBDCABC8 != -1)
  {
    swift_once();
  }
}

uint64_t ThrottleScheduler.__allocating_init(label:qos:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1BF17AD4C();
  OUTLINED_FUNCTION_1();
  v37 = v6;
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  OUTLINED_FUNCTION_2_0();
  v36 = v9 - v8;
  v35 = sub_1BF17AD1C();
  MEMORY[0x1EEE9AC00](v35, v10);
  OUTLINED_FUNCTION_2_0();
  v11 = sub_1BF179BBC();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = sub_1BF1794FC();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  if (!a2)
  {
    sub_1BF17B1EC();

    sub_1BF1794EC();
    v27 = sub_1BF1794BC();
    v28 = v11;
    v30 = v29;
    (*(v21 + 8))(v26, v19);
    MEMORY[0x1BFB52000](v27, v30);
    v11 = v28;
  }

  sub_1BEFF6E88();
  (*(v13 + 16))(v18, a3, v11);
  v31 = a3;
  v32 = MEMORY[0x1E69E8030];
  sub_1BF00AEF4(&qword_1ED8F0BE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1BF026E14(0, qword_1ED8F0BF0, v32);
  sub_1BF0BF8CC(&qword_1ED8F0BE8, qword_1ED8F0BF0, v32);
  sub_1BF17B0BC();
  (*(v37 + 104))(v36, *MEMORY[0x1E69E8090], v38);
  v33 = sub_1BF17AD9C();
  (*(v13 + 8))(v31, v11);
  result = swift_allocObject();
  *(result + 16) = v33;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1BF0BF8CC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1BF026E14(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ThrottleScheduler.precondition(block:)(void (*a1)(void *))
{
  v3 = *v1;
  v4 = sub_1BF179C5C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = v1[2];
  *(v10 - v9) = v12;
  (*(v6 + 104))(v10 - v9, *MEMORY[0x1E69E8020], v4);
  v13 = v12;
  LOBYTE(v12) = sub_1BF179C8C();
  result = (*(v6 + 8))(v11, v4);
  if (v12)
  {
    v15[3] = v3;
    v15[4] = &protocol witness table for ThrottleScheduler;
    v15[0] = v1;

    a1(v15);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ThrottleScheduler.schedule(delay:block:)(uint64_t a1, uint64_t a2, double a3)
{
  sub_1BF179BEC();
  OUTLINED_FUNCTION_1();
  v23 = v6;
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v22 - v12;
  v14 = sub_1BF179B5C();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_2_0();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_4;
  _Block_copy(aBlock);
  v25 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7F60];
  sub_1BF00AEF4(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BF026E14(0, &qword_1ED8EFBE0, v16);
  sub_1BF0BF8CC(&qword_1ED8EFBD0, &qword_1ED8EFBE0, v16);

  sub_1BF17B0BC();
  sub_1BF179C4C();
  swift_allocObject();
  v17 = sub_1BF179C2C();

  *(v22 + 24) = v17;

  sub_1BF179BDC();
  sub_1BF179C6C();
  v18 = *(v23 + 8);
  v19 = v9;
  v20 = v24;
  v18(v19, v24);
  sub_1BF17AD3C();

  return (v18)(v13, v20);
}

Swift::Void __swiftcall ThrottleScheduler.cancel()()
{
  if (*(v0 + 24))
  {

    sub_1BF179C3C();
  }
}

uint64_t ThrottleScheduler.__deallocating_deinit()
{
  ThrottleScheduler.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t NSURLSession.downloadData(from:completion:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = (v8 + 16);
  v10 = sub_1BF178C0C();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v8;
  v24[4] = sub_1BF0C023C;
  v24[5] = v11;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_1BF0C0248;
  v24[3] = &block_descriptor_5;
  v12 = _Block_copy(v24);

  v13 = [v4 dataTaskWithRequest:v10 completionHandler:v12];
  _Block_release(v12);

  swift_beginAccess();
  v14 = *(v8 + 16);
  *(v8 + 16) = v13;

  if (qword_1ED8EE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED8EE9F0);
  }

  v15 = sub_1BF1797FC();
  __swift_project_value_buffer(v15, qword_1ED8F5298);

  v16 = sub_1BF1797DC();
  v17 = sub_1BF17ACDC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134349056;
    if (!*v9)
    {
LABEL_13:

      __break(1u);
      return result;
    }

    *(v18 + 4) = [*v9 taskIdentifier];

    _os_log_impl(&dword_1BEFE0000, v16, v17, "Scheduling URLSession data task. id=%{public}ld", v18, 0xCu);
    MEMORY[0x1BFB547B0](v18, -1, -1);
  }

  else
  {
  }

  if (!*v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  [*v9 resume];
  v19 = *v9;
  if (*v9)
  {
    v20 = sub_1BF0C06AC();
    v21 = &protocol witness table for NSURLSessionTask;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  *a3 = v19;
  a3[3] = v20;
  a3[4] = v21;
  v22 = v19;
}

void sub_1BF0C0188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, id, uint64_t), uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v13 = *(a7 + 16);
  if (v13)
  {
    v14 = [v13 _incompleteTaskMetrics];
  }

  else
  {
    v14 = 0;
  }

  a5(a1, a2, a3, v14, a4);
}

uint64_t sub_1BF0C0248(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1BF17935C();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1BF00F5F4(v6, v10);
}

void NSURLSession.downloadData(from:operationID:earliestBeginDate:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v10 = sub_1BF1794AC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BF178C0C();
  v16 = [v5 downloadTaskWithRequest_];

  v17 = v16;
  v18 = sub_1BF1793FC();
  [v17 setEarliestBeginDate_];

  sub_1BF0C06F0(a1, a2, v17);
  if (qword_1ED8EE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED8EE9F0);
  }

  v19 = sub_1BF1797FC();
  __swift_project_value_buffer(v19, qword_1ED8F5298);
  (*(v11 + 16))(v14, a3, v10);
  v20 = v17;
  v21 = sub_1BF1797DC();
  v22 = sub_1BF17ACDC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = a4;
    v36 = v24;
    v25 = v24;
    *v23 = 134349570;
    *(v23 + 4) = [v20 taskIdentifier];
    *(v23 + 12) = 2082;
    v26 = sub_1BF17948C();
    v28 = v27;
    (*(v11 + 8))(v14, v10);
    v29 = sub_1BF01A7AC(v26, v28, &v36);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2082;

    v30 = sub_1BF083158(v20);
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v30 = 7104878;
      v32 = 0xE300000000000000;
    }

    v33 = sub_1BF01A7AC(v30, v32, &v36);

    *(v23 + 24) = v33;
    _os_log_impl(&dword_1BEFE0000, v21, v22, "Scheduling URLSession download task. id=%{public}ld, beginData=%{public}s, description=%{public}s", v23, 0x20u);
    swift_arrayDestroy();
    v34 = v25;
    a4 = v35;
    MEMORY[0x1BFB547B0](v34, -1, -1);
    MEMORY[0x1BFB547B0](v23, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  [v20 resume];
  a4[3] = sub_1BF0C06AC();
  a4[4] = &protocol witness table for NSURLSessionTask;

  *a4 = v20;
}

unint64_t sub_1BF0C06AC()
{
  result = qword_1ED8EDD28;
  if (!qword_1ED8EDD28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8EDD28);
  }

  return result;
}

void sub_1BF0C06F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BF17A07C();
  [a3 setTaskDescription_];
}

uint64_t sub_1BF0C0770()
{
  v0 = sub_1BF1797FC();
  __swift_allocate_value_buffer(v0, qword_1EBDCBC28);
  __swift_project_value_buffer(v0, qword_1EBDCBC28);
  v1 = [objc_opt_self() mainBundle];
  sub_1BF009264(v1);
  return sub_1BF1797EC();
}

uint64_t static Logger.networkActivities.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBDCAFD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF1797FC();
  v3 = __swift_project_value_buffer(v2, qword_1EBDCBC28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t StateMachineTransition.__allocating_init(state:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_22();
  v2 = swift_allocObject();
  StateMachineTransition.init(state:)(a1);
  return v2;
}

double StateMachineTransition.__allocating_init(states:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_22();
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 16) = a1;
  return result;
}

uint64_t StateMachineTransition.init(states:)(uint64_t a1)
{
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t StateMachineTransition.canTry(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v4 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  OUTLINED_FUNCTION_0_33(v5, v4);
}

uint64_t StateMachineTransition.willEnter(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  v4 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  OUTLINED_FUNCTION_0_33(v5, v4);
}

uint64_t StateMachineTransition.willEnterFailed(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  OUTLINED_FUNCTION_0_33(v5, v4);
}

uint64_t StateMachineTransition.willExit(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);
  v4 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  OUTLINED_FUNCTION_0_33(v5, v4);
}

uint64_t StateMachineTransition.willExitFailed(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);
  v4 = *(v2 + 112);
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  OUTLINED_FUNCTION_0_33(v5, v4);
}

uint64_t StateMachineTransition.didExit(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);
  v4 = *(v2 + 128);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  OUTLINED_FUNCTION_0_33(v5, v4);
}

uint64_t sub_1BF0C0B00(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!v2)
  {
    return 1;
  }

  LOBYTE(a1) = v2(a1);
  v4 = OUTLINED_FUNCTION_36();
  sub_1BEFE52DC(v4, v5);
  return a1 & 1;
}

uint64_t sub_1BF0C0B60(uint64_t result)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = result;

    v2(v3);
    v4 = OUTLINED_FUNCTION_36();
    return sub_1BEFE52DC(v4, v5);
  }

  return result;
}

uint64_t sub_1BF0C0BB8(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (v3)
  {
    v5 = result;

    v3(v5, a2);
    v6 = OUTLINED_FUNCTION_36();

    return sub_1BEFE52DC(v6, v7);
  }

  return result;
}

uint64_t sub_1BF0C0C2C(uint64_t result)
{
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = result;

    v2(v3);
    v4 = OUTLINED_FUNCTION_36();

    return sub_1BEFE52DC(v4, v5);
  }

  return result;
}

uint64_t sub_1BF0C0C98(uint64_t result)
{
  v2 = *(v1 + 88);
  if (v2)
  {
    v3 = result;

    v2(v3);
    v4 = OUTLINED_FUNCTION_36();
    return sub_1BEFE52DC(v4, v5);
  }

  return result;
}

uint64_t sub_1BF0C0CF0(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 104);
  if (v3)
  {
    v5 = result;

    v3(v5, a2);
    v6 = OUTLINED_FUNCTION_36();

    return sub_1BEFE52DC(v6, v7);
  }

  return result;
}

uint64_t sub_1BF0C0D64(uint64_t result)
{
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = result;

    v2(v3);
    v4 = OUTLINED_FUNCTION_36();

    return sub_1BEFE52DC(v4, v5);
  }

  return result;
}

uint64_t *StateMachineTransition.deinit()
{

  sub_1BEFE52DC(v0[3], v0[4]);
  sub_1BEFE52DC(v0[5], v0[6]);
  sub_1BEFE52DC(v0[7], v0[8]);
  sub_1BEFE52DC(v0[9], v0[10]);
  sub_1BEFE52DC(v0[11], v0[12]);
  sub_1BEFE52DC(v0[13], v0[14]);
  sub_1BEFE52DC(v0[15], v0[16]);
  return v0;
}

uint64_t StateMachineTransition.__deallocating_deinit()
{
  StateMachineTransition.deinit();
  v0 = OUTLINED_FUNCTION_2_22();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF0C0E94(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    sub_1BF014DC0(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  else
  {

    return sub_1BF014DC0(a1, a2);
  }
}

uint64_t Throttle.__allocating_init(delay:scheduler:)(uint64_t a1, double a2)
{
  v3 = swift_allocObject();
  Throttle.init(delay:scheduler:)(a2);
  return v3;
}

uint64_t Throttle.init(delay:scheduler:)(double a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 16) = a1;
  OUTLINED_FUNCTION_0();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(v2 + 120));
  return v1;
}

uint64_t Throttle.throttle(block:)()
{
  OUTLINED_FUNCTION_0();
  v7 = v0;
  v8 = v1;
  v9 = v2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0();
  return v4(sub_1BF0C11C8, &v6, *(v3 + 80));
}

uint64_t sub_1BF0C1040(void *a1, uint64_t *a2, void (*a3)(void), uint64_t a4)
{
  if (*(a2 + 24) == 1)
  {
    v5 = a2[4];
    v6 = a2[5];
    a2[4] = a3;
    a2[5] = a4;
    sub_1BEFE52DC(v5, v6);
  }

  else
  {
    v9 = *a2;
    *(a2 + 24) = 1;
    a3();
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = *(a2 + 2);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = *(v9 + 80);
    v14[3] = *(v9 + 88);
    v14[4] = v13;
    v15 = *(v11 + 8);

    v15(sub_1BF0C1530, v14, v10, v11, v12);
  }
}

uint64_t sub_1BF0C11D4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 32);
    *(result + 24) = 0;
    if (v2)
    {
      v3 = *(result + 40);
      *(result + 32) = 0;
      *(result + 40) = 0;
      Throttle.throttle(block:)();

      return sub_1BEFE52DC(v2, v3);
    }

    else
    {
    }
  }

  return result;
}

Swift::Void __swiftcall Throttle.reset()()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0();
  v0(sub_1BF0C1354);
}

uint64_t sub_1BF0C12F0(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 16))(v3, v4);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  result = sub_1BEFE52DC(v5, v6);
  *(a2 + 24) = 0;
  return result;
}

uint64_t *Throttle.deinit()
{
  v1 = *v0;
  sub_1BEFE52DC(v0[4], v0[5]);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t Throttle.__deallocating_deinit()
{
  Throttle.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF0C1434(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t ThreadsafeSet.isEmpty.getter()
{
  UnfairLock.lock()();
  OUTLINED_FUNCTION_1_27(v1);
  OUTLINED_FUNCTION_0_35();
  OUTLINED_FUNCTION_0_35();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v2 = sub_1BF17A96C();

  sub_1BEFF99D8(v0);
  return v2 & 1;
}

uint64_t ThreadsafeSet.__allocating_init()()
{
  v0 = swift_allocObject();
  ThreadsafeSet.init()();
  return v0;
}

void ThreadsafeSet.remove(_:)(uint64_t a1)
{
  UnfairLock.lock()();
  swift_beginAccess();
  sub_1BF17A9AC();
  sub_1BF17A95C();
  swift_endAccess();
  sub_1BEFF99D8(v1);
}

uint64_t ThreadsafeSet.deinit()
{

  return v0;
}

uint64_t ThreadsafeSet.__deallocating_deinit()
{
  ThreadsafeSet.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

id DiagnosticFileCollector.init(diagnosticDumpDir:diagnosticFileListURL:logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_1BF17923C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR___TFDiagnosticFileCollector_diagnosticFileProviders] = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR___TFDiagnosticFileCollector_lock;
  v29 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v3[v14] = UnfairLock.init(options:)(&v29);
  v15 = *(v10 + 16);
  v15(&v3[OBJC_IVAR___TFDiagnosticFileCollector_diagnosticDumpDir], a1, v9);
  v15(&v3[OBJC_IVAR___TFDiagnosticFileCollector_diagnosticFileListURL], a2, v9);
  v16 = [objc_opt_self() defaultManager];
  v17 = [v16 temporaryDirectory];

  sub_1BF1791BC();
  v18 = type metadata accessor for DiagnosticAttachmentResolver(0);
  v19 = swift_allocObject();
  (*(v10 + 32))(v19 + OBJC_IVAR____TtC13TeaFoundation28DiagnosticAttachmentResolver_temporaryDirectory, v13, v9);
  v20 = &v4[OBJC_IVAR___TFDiagnosticFileCollector_diagnosticAttachmentResolver];
  v20[3] = v18;
  v20[4] = &off_1F3DBBD78;
  *v20 = v19;
  v21 = OBJC_IVAR___TFDiagnosticFileCollector_logger;
  v22 = sub_1BF1797FC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v4[v21], a3, v22);
  v28.receiver = v4;
  v28.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v28, sel_init);
  (*(v23 + 8))(a3, v22);
  v25 = *(v10 + 8);
  v25(a2, v9);
  v25(a1, v9);
  return v24;
}

void DiagnosticFileCollector.add(diagnosticFileProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___TFDiagnosticFileCollector_lock);
  UnfairLock.lock()();
  v6 = OBJC_IVAR___TFDiagnosticFileCollector_diagnosticFileProviders;
  swift_beginAccess();
  sub_1BF071BCC();
  v7 = *(*(v2 + v6) + 16);
  sub_1BF071E08(v7);
  v8 = *(v2 + v6);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v2 + v6) = v8;
  swift_endAccess();
  v10 = *(v5 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v10);
}

void DiagnosticFileCollector.remove(diagnosticFileProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR___TFDiagnosticFileCollector_lock);
  UnfairLock.lock()();
  v6 = OBJC_IVAR___TFDiagnosticFileCollector_diagnosticFileProviders;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v7 = sub_1BF0C42EC((v3 + v6), a1);
  v8 = *(*(v3 + v6) + 16);
  if (v8 < v7)
  {
    __break(1u);
    swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_1BF0C403C(v7, v8);
    swift_endAccess();
    os_unfair_lock_unlock(*(v5 + 16));
  }
}

uint64_t DiagnosticFileCollector.collectDiagnosticFiles()()
{
  *(v1 + 48) = v0;
  v2 = OUTLINED_FUNCTION_13_3();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BF0C1C28()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[6];
  v2 = *(v1 + OBJC_IVAR___TFDiagnosticFileCollector_lock);
  UnfairLock.lock()();
  v3 = OBJC_IVAR___TFDiagnosticFileCollector_diagnosticFileProviders;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v0[7] = v4;
  v5 = *(v2 + 16);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  os_unfair_lock_unlock(v5);
  OUTLINED_FUNCTION_7_15();
  sub_1BF0C4AFC(0, v6, v7, MEMORY[0x1E69E62F8]);
  v9 = v8;
  v10 = swift_task_alloc();
  v0[8] = v10;
  *(v10 + 16) = v4;
  *(v10 + 24) = v1;
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_1BF0C1D84;

  return MEMORY[0x1EEE6DBF8](v0 + 5, v9, v9, 0, 0, &unk_1BF181F50, v10, v9);
}

uint64_t sub_1BF0C1D84()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF0C1EA0()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 40);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v2 = sub_1BF1797DC();
  v3 = sub_1BF17AC9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_1BEFE0000, v2, v3, "Collected %ld diagnostic files", v4, 0xCu);
    MEMORY[0x1BFB547B0](v4, -1, -1);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_1BF0C1FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[23] = a1;
  v4[24] = a2;
  sub_1BF0C4AFC(0, &qword_1ED8EF890, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF0C20A8, 0, 0);
}

uint64_t sub_1BF0C20A8()
{
  v3 = *(v0 + 200);
  v4 = *(v3 + 16);
  if (v4)
  {
    v87 = v0 + 48;
    v90 = v0 + 16;
    v84 = (v0 + 80);
    v100 = **(v0 + 192);
    v5 = (v3 + 32);
    v6 = sub_1BF17A77C();
    v93 = v6 - 8;
    do
    {
      v96 = v4;
      v8 = *(v0 + 248);
      v7 = *(v0 + 256);
      v108 = *v5;
      OUTLINED_FUNCTION_14_10(v7);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_3_16(v9, v10, v11, v12, v13, v14, v15, v16, v17, v84, v87, v90, v93, v96, v100, v103, v106, v18);
      sub_1BF047B30(v7, v8);
      OUTLINED_FUNCTION_19_6(v8);
      swift_unknownObjectRetain_n();
      v19 = *(v0 + 248);
      if (v8 == 1)
      {
        OUTLINED_FUNCTION_0_36();
        sub_1BF0C4848(v19, &qword_1ED8EF890, v20, MEMORY[0x1E69E6720]);
      }

      else
      {
        sub_1BF17A76C();
        OUTLINED_FUNCTION_13_11();
        (*(v21 + 8))(v19, v6);
      }

      if (*v1)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = sub_1BF17A6AC();
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      OUTLINED_FUNCTION_58();
      v25 = swift_allocObject();
      *(v25 + 16) = &unk_1BF181FC0;
      *(v25 + 24) = v2;
      sub_1BF0C4AFC(0, &qword_1ED8E9C68, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
      v104 = v26;

      if (v24 | v22)
      {
        v27 = v91;
        *v91 = 0;
        v91[1] = 0;
        *(v0 + 32) = v22;
        *(v0 + 40) = v24;
      }

      else
      {
        v27 = 0;
      }

      v28 = *(v0 + 256);
      v29 = *(v0 + 232);
      v30 = *(v0 + 240);
      v31 = *(v0 + 208);
      *(v0 + 112) = 1;
      *(v0 + 120) = v27;
      *(v0 + 128) = v101;
      v32 = swift_task_create();

      OUTLINED_FUNCTION_0_36();
      sub_1BF0C4848(v28, &qword_1ED8EF890, v33, MEMORY[0x1E69E6720]);
      OUTLINED_FUNCTION_14_10(v30);
      v34 = swift_allocObject();
      OUTLINED_FUNCTION_3_16(v34, v35, v36, v37, v38, v39, v40, v41, v42, v85, v88, v91, v94, v97, v101, v104, v108, v43);
      *(v44 + 48) = v31;
      sub_1BF047B30(v30, v29);
      OUTLINED_FUNCTION_19_6(v29);
      swift_unknownObjectRetain();
      v45 = v31;
      v46 = *(v0 + 232);
      if (v32 == 1)
      {
        OUTLINED_FUNCTION_0_36();
        sub_1BF0C4848(v46, &qword_1ED8EF890, v47, MEMORY[0x1E69E6720]);
      }

      else
      {
        sub_1BF17A76C();
        OUTLINED_FUNCTION_13_11();
        (*(v48 + 8))(v46, v6);
      }

      if (*v28)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v49 = sub_1BF17A6AC();
        v51 = v50;
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0;
        v51 = 0;
      }

      OUTLINED_FUNCTION_58();
      v52 = swift_allocObject();
      *(v52 + 16) = &unk_1BF181FD0;
      *(v52 + 24) = v2;

      if (v51 | v49)
      {
        v53 = v89;
        *v89 = 0;
        v89[1] = 0;
        *(v0 + 64) = v49;
        *(v0 + 72) = v51;
      }

      else
      {
        v53 = 0;
      }

      v54 = *(v0 + 240);
      v55 = *(v0 + 216);
      v56 = *(v0 + 224);
      v57 = *(v0 + 208);
      *(v0 + 136) = 1;
      *(v0 + 144) = v53;
      *(v0 + 152) = v102;
      v58 = swift_task_create();

      OUTLINED_FUNCTION_0_36();
      sub_1BF0C4848(v54, &qword_1ED8EF890, v59, MEMORY[0x1E69E6720]);
      OUTLINED_FUNCTION_14_10(v56);
      v60 = swift_allocObject();
      OUTLINED_FUNCTION_3_16(v60, v61, v62, v63, v64, v65, v66, v67, v68, v86, v89, v92, v95, v98, v102, v105, v107, v69);
      *(v70 + 48) = v57;
      sub_1BF047B30(v56, v55);
      OUTLINED_FUNCTION_19_6(v55);
      swift_unknownObjectRetain();
      v71 = v57;
      v72 = *(v0 + 216);
      if (v58 == 1)
      {
        OUTLINED_FUNCTION_0_36();
        sub_1BF0C4848(v72, &qword_1ED8EF890, v73, MEMORY[0x1E69E6720]);
      }

      else
      {
        sub_1BF17A76C();
        OUTLINED_FUNCTION_13_11();
        (*(v74 + 8))(v72, v6);
      }

      if (*v54)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v75 = sub_1BF17A6AC();
        v77 = v76;
        swift_unknownObjectRelease();
      }

      else
      {
        v75 = 0;
        v77 = 0;
      }

      OUTLINED_FUNCTION_58();
      v78 = swift_allocObject();
      *(v78 + 16) = &unk_1BF181FE0;
      *(v78 + 24) = v2;
      v1 = (v77 | v75);

      if (v77 | v75)
      {
        v79 = v84;
        *v84 = 0;
        v84[1] = 0;
        *(v0 + 96) = v75;
        *(v0 + 104) = v77;
      }

      else
      {
        v79 = 0;
      }

      v80 = *(v0 + 224);
      *(v0 + 160) = 1;
      *(v0 + 168) = v79;
      *(v0 + 176) = v100;
      swift_task_create();

      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_0_36();
      sub_1BF0C4848(v80, &qword_1ED8EF890, v81, MEMORY[0x1E69E6720]);
      ++v5;
      v4 = v99 - 1;
    }

    while (v99 != 1);
  }

  v82 = swift_task_alloc();
  *(v0 + 264) = v82;
  *v82 = v0;
  v82[1] = sub_1BF0C2780;

  return sub_1BF0AFA9C();
}

void sub_1BF0C2780()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 272) = v4;

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1BF0C2898, 0, 0);
  }
}

void sub_1BF0C2898()
{
  v1 = 0;
  v2 = *(v0 + 272);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v5 = *(v2 + 32 + 8 * v1);
    v6 = *(v5 + 16);
    v7 = *(v4 + 16);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      goto LABEL_22;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 24) >> 1)
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      sub_1BF0A6444(isUniquelyReferenced_nonNull_native, v10, 1, v4);
      v4 = v11;
    }

    if (*(v5 + 16))
    {
      v12 = (*(v4 + 24) >> 1) - *(v4 + 16);
      sub_1BF17923C();
      if (v12 < v6)
      {
        goto LABEL_24;
      }

      swift_arrayInitWithCopy();

      if (v6)
      {
        v13 = *(v4 + 16);
        v14 = __OFADD__(v13, v6);
        v15 = v13 + v6;
        if (v14)
        {
          goto LABEL_25;
        }

        *(v4 + 16) = v15;
      }
    }

    else
    {

      if (v6)
      {
        goto LABEL_23;
      }
    }

    ++v1;
  }

  v16 = *(v0 + 184);

  *v16 = v4;

  OUTLINED_FUNCTION_9();

  v17();
}

uint64_t sub_1BF0C2A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  ObjectType = swift_getObjectType();
  v10 = (*(a5 + 8) + **(a5 + 8));
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_1BF0C2BB0;

  return v10(ObjectType, a5);
}

uint64_t sub_1BF0C2BB0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}