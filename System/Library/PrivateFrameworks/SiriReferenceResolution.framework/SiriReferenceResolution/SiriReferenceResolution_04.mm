void sub_1DD2DC2D0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v11 = a2;
    v12 = sub_1DD335CB0();
    v13 = sub_1DD336940();
    if (os_log_type_enabled(v12, v13))
    {
      v31 = a1;
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34[0] = v30;
      *v14 = 136315138;
      v15 = [v11 description];
      v16 = sub_1DD3365D0();
      v29 = v11;
      v18 = v17;

      v19 = sub_1DD27DBF0(v16, v18, v34);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1DD27A000, v12, v13, "Current layout is %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E12ADA30](v30, -1, -1);
      v20 = v14;
      a1 = v31;
      MEMORY[0x1E12ADA30](v20, -1, -1);

      v21 = v29;
    }

    else
    {

      v21 = v11;
    }

    v24 = *(*a4 + 152);
    v25 = v21;
    v26 = v24(a2, a6);

    swift_beginAccess();
    v27 = *(a7 + 16);
    v28 = *(a7 + 24);
    *(a7 + 16) = v26;
    *(a7 + 24) = 0;
    sub_1DD2BED74(v27, v28);
    (*(*a4 + 216))(a1);
    [a1 invalidate];
    sub_1DD336A60();
  }

  else
  {
    osloga = sub_1DD335CB0();
    v22 = sub_1DD336950();
    if (os_log_type_enabled(osloga, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DD27A000, osloga, v22, "Current layout is nil!", v23, 2u);
      MEMORY[0x1E12ADA30](v23, -1, -1);
    }
  }
}

void sub_1DD2DC5B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  sub_1DD335860();
  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

void sub_1DD2DC650()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v104 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v104 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v14);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v104 - v16;
  sub_1DD336220();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v23 = v22 - v21;
  if (v5)
  {
    v121 = v17;
    v122 = v20;
    v119 = v3;
    v120 = v23;
    v116 = v19;
    v117 = v13;
    v118 = v9;
    v123 = v0;
    v24 = [v5 elements];
    sub_1DD27D80C(0, &qword_1EE027528, 0x1E699FAD8);
    v25 = sub_1DD336810();

    v26 = sub_1DD287354(v25);
    v27 = 0;
    v28 = v25 & 0xC000000000000001;
    v29 = 0x80000001DD33DAA0;
    while (1)
    {
      if (v26 == v27)
      {
        v39 = 0;
        v29 = 0;
        v40 = MEMORY[0x1E69E7CC0];
        v125 = MEMORY[0x1E69E7CC0];
        v126 = MEMORY[0x1E69E7CC0];
        v41 = v123;
        while (v26 != v39)
        {
          if (v28)
          {
            v42 = MEMORY[0x1E12ACA60](v39, v25);
          }

          else
          {
            if (v39 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_62;
            }

            v42 = *(v25 + 8 * v39 + 32);
          }

          v1 = v42;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_61;
          }

          v124 = v42;
          if (sub_1DD2DD0E0(&v124, v41))
          {
            sub_1DD336C50();
            sub_1DD336C70();
            sub_1DD336C80();
            sub_1DD336C60();
            v41 = v123;
          }

          else
          {
          }

          ++v39;
        }

        v43 = v125;
        v44 = sub_1DD287354(v125);
        if (v44)
        {
          v45 = v44;
          v125 = v40;
          sub_1DD2D7B18(0, v44 & ~(v44 >> 63), 0);
          if (v45 < 0)
          {
            goto LABEL_63;
          }

          v46 = 0;
          v47 = v125;
          do
          {
            if ((v43 & 0xC000000000000001) != 0)
            {
              v48 = MEMORY[0x1E12ACA60](v46, v43);
            }

            else
            {
              v48 = *(v43 + 8 * v46 + 32);
            }

            v49 = v48;
            v1 = sub_1DD2E3C3C(v48);
            v51 = v50;

            v125 = v47;
            v53 = *(v47 + 16);
            v52 = *(v47 + 24);
            if (v53 >= v52 >> 1)
            {
              v55 = OUTLINED_FUNCTION_45(v52);
              sub_1DD2D7B18(v55, v53 + 1, 1);
              v47 = v125;
            }

            ++v46;
            *(v47 + 16) = v53 + 1;
            v54 = v47 + 16 * v53;
            *(v54 + 32) = v1;
            *(v54 + 40) = v51;
          }

          while (v45 != v46);
        }

        else
        {

          v47 = MEMORY[0x1E69E7CC0];
        }

        sub_1DD2B2818(v47);
        v64 = v63;
        v65 = 0;
        v66 = v63 + 56;
        OUTLINED_FUNCTION_28_8();
        v69 = v68 & v67;
        v70 = OBJC_IVAR____TtC23SiriReferenceResolution18RRFrontBoardPuller_logger;
        v115 = (v71 + 63) >> 6;
        v110 = *MEMORY[0x1E69D2918];
        v109 = *MEMORY[0x1E69D27E8];
        v108 = v122 + 1;
        v111 = MEMORY[0x1E69E7CC0];
        *(&v72 + 1) = 2;
        v107 = xmmword_1DD339380;
        *&v72 = 136315138;
        v106 = v72;
        *&v72 = 136315394;
        v112 = v72;
        v113 = v73;
        v114 = OBJC_IVAR____TtC23SiriReferenceResolution18RRFrontBoardPuller_logger;
        while (v69)
        {
LABEL_49:
          v75 = __clz(__rbit64(v69));
          v69 &= v69 - 1;
          v76 = *(v64 + 48) + ((v65 << 10) | (16 * v75));
          v77 = *(v76 + 8);
          if (v77)
          {
            v78 = *v76;

            v122 = v78;
            sub_1DD2D6778();
            v79 = sub_1DD335E60();
            OUTLINED_FUNCTION_36_0(v121, v80, v81, v79);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
            v82 = sub_1DD335CE0();
            OUTLINED_FUNCTION_1_0();
            v84 = v83;
            v85 = OUTLINED_FUNCTION_53_5();
            *(v85 + 16) = v107;
            sub_1DD336130();
            OUTLINED_FUNCTION_1();
            (*(v86 + 104))(v85 + v70, v110);
            (*(v84 + 104))(v85 + v70, v109, v82);
            swift_bridgeObjectRetain_n();
            sub_1DD335860();
            OUTLINED_FUNCTION_69_4(v122, v77, v122, v77);
            v87 = sub_1DD336240();
            v88 = v117;
            OUTLINED_FUNCTION_36_0(v117, v89, v90, v87);
            v91 = sub_1DD336190();
            sub_1DD2DB2A4(v88);
            v92 = sub_1DD334830();
            OUTLINED_FUNCTION_1();
            v94 = v118;
            (*(v93 + 16))(v118, v119, v92);
            __swift_storeEnumTagSinglePayload(v94, 0, 1, v92);
            sub_1DD335EF0();
            v95 = v91;
            MEMORY[0x1E12AC640]();
            v96 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v96 >> 1)
            {
              OUTLINED_FUNCTION_45(v96);
              sub_1DD336830();
            }

            sub_1DD336860();
            v111 = v126;

            v70 = v114;
            v97 = sub_1DD335CB0();
            v1 = sub_1DD336930();

            if (os_log_type_enabled(v97, v1))
            {
              v98 = OUTLINED_FUNCTION_50();
              v105 = v95;
              v99 = v98;
              v100 = OUTLINED_FUNCTION_31_0();
              v125 = v100;
              v101 = OUTLINED_FUNCTION_70_3(*&v106);
              v122 = v97;
              v102 = v101;

              *(v99 + 4) = v102;
              v103 = v122;
              _os_log_impl(&dword_1DD27A000, v122, v1, "Pulled foreground app %s successfully", v99, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v100);
              v70 = v114;
              OUTLINED_FUNCTION_54();
              OUTLINED_FUNCTION_54();
            }

            else
            {
            }

            (v108->isa)(v120, v116);
            v64 = v113;
          }
        }

        while (1)
        {
          v74 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            goto LABEL_60;
          }

          if (v74 >= v115)
          {

            goto LABEL_57;
          }

          v69 = *(v66 + 8 * v74);
          ++v65;
          if (v69)
          {
            v65 = v74;
            goto LABEL_49;
          }
        }
      }

      if (v28)
      {
        v30 = MEMORY[0x1E12ACA60](v27, v25);
      }

      else
      {
        if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v30 = *(v25 + 8 * v27 + 32);
      }

      v1 = v30;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);

        __break(1u);
        return;
      }

      v31 = [v30 identifier];
      v32 = sub_1DD3365D0();
      v34 = v33;

      if (v32 == 0xD000000000000015 && 0x80000001DD33DAA0 == v34)
      {
        break;
      }

      v36 = OUTLINED_FUNCTION_26_5(v32, v34);

      ++v27;
      if (v36)
      {
        goto LABEL_39;
      }
    }

LABEL_39:

    v37 = sub_1DD335CB0();
    v56 = sub_1DD336940();
    if (!OUTLINED_FUNCTION_51(v56))
    {
      goto LABEL_41;
    }
  }

  else
  {
    v37 = sub_1DD335CB0();
    v38 = sub_1DD336940();
    if (!OUTLINED_FUNCTION_51(v38))
    {
      goto LABEL_41;
    }
  }

  v57 = OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_68(v57);
  OUTLINED_FUNCTION_55();
  _os_log_impl(v58, v59, v60, v61, v62, 2u);
  OUTLINED_FUNCTION_28_1();
LABEL_41:

LABEL_57:
  OUTLINED_FUNCTION_24_1();
}

BOOL sub_1DD2DD0E0(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1DD335CB0();
  v5 = sub_1DD336940();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315394;
    v8 = [v3 identifier];
    v9 = sub_1DD3365D0();
    v11 = v10;

    v12 = sub_1DD27DBF0(v9, v11, &v26);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    v13 = sub_1DD2E3C3C(v3);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v13 = 7104878;
      v15 = 0xE300000000000000;
    }

    v16 = sub_1DD27DBF0(v13, v15, &v26);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_1DD27A000, v4, v5, "Element id is %s, bundle id is %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12ADA30](v7, -1, -1);
    MEMORY[0x1E12ADA30](v6, -1, -1);
  }

  v17 = sub_1DD2E3C3C(v3);
  result = 0;
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    v21 = [v3 identifier];
    v22 = sub_1DD3365D0();
    v24 = v23;

    LOBYTE(v21) = (*(*a2 + 200))(v22, v24, v19, v20);

    if ((v21 & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1DD2DD330()
{
  OUTLINED_FUNCTION_4();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_1DD3357C0();
  v1[5] = v3;
  OUTLINED_FUNCTION_69_0(v3);
  v1[6] = v4;
  v1[7] = swift_task_alloc();
  v5 = sub_1DD335CA0();
  v1[8] = v5;
  OUTLINED_FUNCTION_69_0(v5);
  v1[9] = v6;
  v1[10] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_56_5();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD2DD430()
{
  if (qword_1EE027828 != -1)
  {
    OUTLINED_FUNCTION_16_5(&qword_1EE027828);
  }

  v1 = qword_1EE02A230;
  sub_1DD335C90();
  sub_1DD336A40();
  v2 = qword_1EE02A230;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_55_0();
  sub_1DD335C70();

  v0[11] = OBJC_IVAR____TtC23SiriReferenceResolution18RRFrontBoardPuller_logger;
  v3 = sub_1DD335CB0();
  v4 = sub_1DD336940();
  if (OUTLINED_FUNCTION_34(v4))
  {
    v5 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_68(v5);
    OUTLINED_FUNCTION_13_1();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_28_1();
  }

  v11 = v0[4];

  v15 = (*(*v11 + 168) + **(*v11 + 168));
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_1DD2DD63C;
  v13 = v0[3];

  return v15(v13);
}

uint64_t sub_1DD2DD63C()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  OUTLINED_FUNCTION_81();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v5 + 104) = v0;

  if (v0)
  {
    v9 = sub_1DD2DD874;
  }

  else
  {
    *(v5 + 112) = v3;
    v9 = sub_1DD2DD750;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DD2DD750()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[4];
  OUTLINED_FUNCTION_52();
  v7 = (*(v6 + 192))(v1);

  sub_1DD2DDA74(v5);
  sub_1DD336A30();
  v8 = qword_1EE02A230;
  OUTLINED_FUNCTION_55_0();
  sub_1DD335C80();

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_47_0();

  return v9(v7);
}

uint64_t sub_1DD2DD874()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
  if (swift_dynamicCast())
  {

    v3 = sub_1DD335CB0();
    v4 = sub_1DD336950();
    if (OUTLINED_FUNCTION_34(v4))
    {
      v5 = OUTLINED_FUNCTION_50();
      *v5 = 134217984;
      *(v5 + 4) = 0x3FC999999999999ALL;
      OUTLINED_FUNCTION_13_1();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
      OUTLINED_FUNCTION_28_1();
    }

    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v13 = *(v0 + 40);

    sub_1DD2B3F80();
    swift_allocError();
    swift_willThrow();
    (*(v12 + 8))(v11, v13);
  }

  else
  {
  }

  v15 = *(v0 + 72);
  v14 = *(v0 + 80);
  v16 = *(v0 + 64);
  sub_1DD2DDA74(*(v0 + 32));
  sub_1DD336A30();
  v17 = qword_1EE02A230;
  OUTLINED_FUNCTION_55_0();
  sub_1DD335C80();

  (*(v15 + 8))(v14, v16);

  v18 = *(v0 + 8);

  return v18();
}

void sub_1DD2DDA74(uint64_t a1)
{
  oslog = sub_1DD335CB0();
  v1 = sub_1DD336940();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DD27A000, oslog, v1, "Exiting RRFrontBoardPuller...", v2, 2u);
    MEMORY[0x1E12ADA30](v2, -1, -1);
  }
}

uint64_t sub_1DD2DDB20(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_14_9();
}

uint64_t sub_1DD2DDB34()
{
  OUTLINED_FUNCTION_4();
  sub_1DD335860();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v2 = sub_1DD27D80C(0, &qword_1EE027540, 0x1E699FAD0);
  *v1 = v0;
  v1[1] = sub_1DD2DDC10;
  v3 = *(v0 + 32);
  v4.n128_u64[0] = 0x3FC999999999999ALL;

  return MEMORY[0x1EEE40F70](v0 + 16, &unk_1DD33A328, v3, v2, v4);
}

uint64_t sub_1DD2DDC10()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    v7 = sub_1DD2DDFA4;
  }

  else
  {

    v7 = sub_1DD2DDD18;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DD2DDD18()
{
  OUTLINED_FUNCTION_48();
  v1 = v0[4];
  v2 = v0[2];
  v0[7] = v2;
  v3 = *(*v1 + 184);
  v4 = v2;
  v8 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1DD2DDE44;
  v6 = v0[3];

  return v8(v2, v6);
}

uint64_t sub_1DD2DDE44()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_12_0();
  *v2 = v1;
  v4 = *(v3 + 56);
  v5 = *v0;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v8 + 72) = v7;

  v9 = OUTLINED_FUNCTION_56_5();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD2DDF44()
{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_47_0();
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_1DD2DDFA4()
{
  OUTLINED_FUNCTION_4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD2DE004(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD2DE024, 0, 0);
}

uint64_t sub_1DD2DE024()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1DD2DE0C0;
  v2 = swift_continuation_init();
  sub_1DD2DE1C4(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DD2DE0C0()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_12_0();
  *v1 = v0;
  *v3 = *(v2 + 80);
  v4 = *(v0 + 8);

  return v4();
}

void sub_1DD2DE1C4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD69E0, &qword_1DD33A450);
  swift_allocObject();
  v4 = sub_1DD2E03BC(a1);
  v5 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  [v5 setNeedsUserInteractivePriority_];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v4;
  v9[4] = sub_1DD2E4424;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DD2DC5B0;
  v9[3] = &block_descriptor_27;
  v7 = _Block_copy(v9);
  sub_1DD335860();
  sub_1DD335860();

  [v5 setTransitionHandler_];
  _Block_release(v7);
  v8 = [objc_opt_self() monitorWithConfiguration_];
  (*(*a2 + 208))();
}

void sub_1DD2DE37C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v17 = a2;
    v6 = sub_1DD335CB0();
    v7 = sub_1DD336940();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      v10 = [v17 description];
      v11 = sub_1DD3365D0();
      v13 = v12;

      v14 = sub_1DD27DBF0(v11, v13, &v18);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_1DD27A000, v6, v7, "Current layout is %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1E12ADA30](v9, -1, -1);
      MEMORY[0x1E12ADA30](v8, -1, -1);
    }

    sub_1DD2E0404(v17);
    (*(*a4 + 216))(a1);
    [a1 invalidate];
  }

  else
  {
    v17 = sub_1DD335CB0();
    v15 = sub_1DD336950();
    if (os_log_type_enabled(v17, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DD27A000, v17, v15, "Current layout is nil!", v16, 2u);
      MEMORY[0x1E12ADA30](v16, -1, -1);
    }
  }
}

uint64_t sub_1DD2DE5B0(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return OUTLINED_FUNCTION_14_9();
}

id sub_1DD2DE5C4()
{
  v91 = v0;
  v1 = *(v0 + 104);
  if (!v1)
  {
    v52 = sub_1DD335CB0();
    v53 = sub_1DD336940();
    if (OUTLINED_FUNCTION_34(v53))
    {
      v54 = OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_68(v54);
      OUTLINED_FUNCTION_13_1();
      _os_log_impl(v55, v56, v57, v58, v59, 2u);
      OUTLINED_FUNCTION_28_1();
    }

    goto LABEL_41;
  }

  v2 = [v1 elements];
  sub_1DD27D80C(0, &qword_1EE027528, 0x1E699FAD8);
  v3 = sub_1DD336810();
  *(v0 + 120) = v3;

  *(v0 + 96) = MEMORY[0x1E69E7CC0];
  result = sub_1DD287354(v3);
  v5 = 0;
  v6 = OBJC_IVAR____TtC23SiriReferenceResolution18RRFrontBoardPuller_logger;
  *(v0 + 128) = result;
  *(v0 + 136) = v6;
  v7 = 0x80000001DD33DAA0;
  v8 = &selRef_createDirectoryAtURL_withIntermediateDirectories_attributes_error_;
  *&v9 = 136315394;
  v87 = v9;
  v89 = 0x80000001DD33DAA0;
  while (1)
  {
    v10 = *(v0 + 120);
    if (v5 == result)
    {

      sub_1DD2B260C(*(v0 + 96));
      sub_1DD2DF2C8(v60);

      goto LABEL_41;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E12ACA60](v5);
    }

    else
    {
      if (v5 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      result = *(v10 + 8 * v5 + 32);
    }

    v11 = result;
    *(v0 + 144) = result;
    *(v0 + 152) = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v12 = [result v8[65]];
    v13 = sub_1DD3365D0();
    v15 = v14;

    if (v13 == 0xD000000000000015 && v7 == v15)
    {

LABEL_38:

      v61 = sub_1DD335CB0();
      v62 = sub_1DD336940();
      if (OUTLINED_FUNCTION_34(v62))
      {
        v63 = OUTLINED_FUNCTION_69();
        OUTLINED_FUNCTION_68(v63);
        OUTLINED_FUNCTION_13_1();
        _os_log_impl(v64, v65, v66, v67, v68, 2u);
        OUTLINED_FUNCTION_28_1();
      }

LABEL_41:
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_41_5();

      __asm { BRAA            X2, X16 }
    }

    v17 = OUTLINED_FUNCTION_26_5(v13, v15);

    if (v17)
    {
      goto LABEL_38;
    }

    v18 = *(v0 + 112);
    v19 = v11;
    v20 = sub_1DD335CB0();
    v21 = sub_1DD336940();

    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_50_2();
      v22 = OUTLINED_FUNCTION_51_5();
      v30 = OUTLINED_FUNCTION_39_6(v22, v23, v24, v25, v26, v27, v28, v29, v87, v88, v89, v90);
      v31 = sub_1DD3365D0();

      v32 = OUTLINED_FUNCTION_85_0();
      sub_1DD27DBF0(v32, v33, v34);
      OUTLINED_FUNCTION_75_4();
      v35 = OUTLINED_FUNCTION_68_3();
      if (v36)
      {
        v18 = v36;
      }

      else
      {
        v35 = 7104878;
        v18 = 0xE300000000000000;
      }

      sub_1DD27DBF0(v35, v18, &v90);
      OUTLINED_FUNCTION_75_4();
      *(v12 + 14) = v31;
      v8 = &selRef_createDirectoryAtURL_withIntermediateDirectories_attributes_error_;
      _os_log_impl(&dword_1DD27A000, v20, v21, "Element id is %s, bundle id is %s", v12, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_54();
    }

    sub_1DD2E3C3C(v19);
    if (!v37)
    {
      goto LABEL_21;
    }

    v18 = OUTLINED_FUNCTION_52_4();
    v8 = sub_1DD3365D0();

    OUTLINED_FUNCTION_52();
    v38 = OUTLINED_FUNCTION_58_4();
    v40 = v39(v38);

    if (v40)
    {

      v8 = &selRef_createDirectoryAtURL_withIntermediateDirectories_attributes_error_;
LABEL_21:
      v41 = sub_1DD335CB0();
      v42 = sub_1DD336940();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_69();
        OUTLINED_FUNCTION_68(v43);
        _os_log_impl(&dword_1DD27A000, v41, v42, "Ignoring element", v18, 2u);
        OUTLINED_FUNCTION_28_1();
      }

      goto LABEL_31;
    }

    v44 = *(v0 + 96);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_50_4();
      v44 = v50;
    }

    OUTLINED_FUNCTION_60_4();
    if (v46)
    {
      v51 = OUTLINED_FUNCTION_45(v45);
      sub_1DD28541C(v51, v17, 1, v44);
    }

    OUTLINED_FUNCTION_23_6();
    if (v47)
    {
      OUTLINED_FUNCTION_77();
      v48 = sub_1DD28EFFC();
      if (v49)
      {
        OUTLINED_FUNCTION_38_6(v48);
        sub_1DD289CE4((v0 + 56), v0 + 16);

        v71 = sub_1DD335CB0();
        v72 = sub_1DD336940();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = OUTLINED_FUNCTION_50();
          v74 = OUTLINED_FUNCTION_31_0();
          v90 = v74;
          *v73 = 136315138;
          v75 = OUTLINED_FUNCTION_77();
          v78 = sub_1DD27DBF0(v75, v76, v77);

          *(v73 + 4) = v78;
          OUTLINED_FUNCTION_13_1();
          _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v74);
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_28_1();
        }

        else
        {
        }

        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        OUTLINED_FUNCTION_30_3();
        v84 = swift_task_alloc();
        *(v0 + 160) = v84;
        *v84 = v0;
        OUTLINED_FUNCTION_7_5(v84);
        OUTLINED_FUNCTION_41_5();

        __asm { BRAA            X2, X16 }
      }
    }

LABEL_31:
    v7 = v89;
    result = *(v0 + 128);
    ++v5;
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1DD2DEC24()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_12_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = v3;

  v4 = OUTLINED_FUNCTION_56_5();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DD2DED10()
{
  v80 = v0;
  v1 = *(v0 + 144);
  sub_1DD2AADF8(*(v0 + 168));

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = *(v0 + 152);
  v3 = 0x80000001DD33DAA0;
  v4 = &selRef_createDirectoryAtURL_withIntermediateDirectories_attributes_error_;
  *&v5 = 136315394;
  v76 = v5;
  v78 = 0x80000001DD33DAA0;
  while (1)
  {
    v6 = *(v0 + 120);
    if (v2 == *(v0 + 128))
    {

      sub_1DD2B260C(*(v0 + 96));
      sub_1DD2DF2C8(v49);

      goto LABEL_37;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E12ACA60](v2);
    }

    else
    {
      if (v2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v7 = *(v6 + 8 * v2 + 32);
    }

    v8 = v7;
    *(v0 + 144) = v7;
    *(v0 + 152) = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v9 = [v7 v4[65]];
    v10 = sub_1DD3365D0();
    v12 = v11;

    if (v10 == 0xD000000000000015 && v3 == v12)
    {

LABEL_34:

      v50 = sub_1DD335CB0();
      v51 = sub_1DD336940();
      if (OUTLINED_FUNCTION_34(v51))
      {
        v52 = OUTLINED_FUNCTION_69();
        OUTLINED_FUNCTION_68(v52);
        OUTLINED_FUNCTION_13_1();
        _os_log_impl(v53, v54, v55, v56, v57, 2u);
        OUTLINED_FUNCTION_28_1();
      }

LABEL_37:
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_41_5();

      __asm { BRAA            X2, X16 }
    }

    v14 = OUTLINED_FUNCTION_26_5(v10, v12);

    if (v14)
    {
      goto LABEL_34;
    }

    v15 = *(v0 + 112);
    v16 = v8;
    v17 = sub_1DD335CB0();
    v18 = sub_1DD336940();

    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_50_2();
      v19 = OUTLINED_FUNCTION_51_5();
      v27 = OUTLINED_FUNCTION_39_6(v19, v20, v21, v22, v23, v24, v25, v26, v76, v77, v78, v79);
      v28 = sub_1DD3365D0();

      v29 = OUTLINED_FUNCTION_85_0();
      sub_1DD27DBF0(v29, v30, v31);
      OUTLINED_FUNCTION_75_4();
      v32 = OUTLINED_FUNCTION_68_3();
      if (v33)
      {
        v15 = v33;
      }

      else
      {
        v32 = 7104878;
        v15 = 0xE300000000000000;
      }

      sub_1DD27DBF0(v32, v15, &v79);
      OUTLINED_FUNCTION_75_4();
      *(v9 + 14) = v28;
      v4 = &selRef_createDirectoryAtURL_withIntermediateDirectories_attributes_error_;
      _os_log_impl(&dword_1DD27A000, v17, v18, "Element id is %s, bundle id is %s", v9, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_54();
    }

    sub_1DD2E3C3C(v16);
    if (!v34)
    {
      goto LABEL_20;
    }

    v15 = OUTLINED_FUNCTION_52_4();
    v4 = sub_1DD3365D0();

    OUTLINED_FUNCTION_52();
    v35 = OUTLINED_FUNCTION_58_4();
    v37 = v36(v35);

    if (v37)
    {

      v4 = &selRef_createDirectoryAtURL_withIntermediateDirectories_attributes_error_;
LABEL_20:
      v38 = sub_1DD335CB0();
      v39 = sub_1DD336940();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_69();
        OUTLINED_FUNCTION_68(v40);
        _os_log_impl(&dword_1DD27A000, v38, v39, "Ignoring element", v15, 2u);
        OUTLINED_FUNCTION_28_1();
      }

      goto LABEL_30;
    }

    v41 = *(v0 + 96);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_50_4();
      v41 = v47;
    }

    OUTLINED_FUNCTION_60_4();
    if (v43)
    {
      v48 = OUTLINED_FUNCTION_45(v42);
      sub_1DD28541C(v48, v14, 1, v41);
    }

    OUTLINED_FUNCTION_23_6();
    if (v44)
    {
      OUTLINED_FUNCTION_77();
      v45 = sub_1DD28EFFC();
      if (v46)
      {
        OUTLINED_FUNCTION_38_6(v45);
        sub_1DD289CE4((v0 + 56), v0 + 16);

        v60 = sub_1DD335CB0();
        v61 = sub_1DD336940();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = OUTLINED_FUNCTION_50();
          v63 = OUTLINED_FUNCTION_31_0();
          v79 = v63;
          *v62 = 136315138;
          v64 = OUTLINED_FUNCTION_77();
          v67 = sub_1DD27DBF0(v64, v65, v66);

          *(v62 + 4) = v67;
          OUTLINED_FUNCTION_13_1();
          _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v63);
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_28_1();
        }

        else
        {
        }

        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        OUTLINED_FUNCTION_30_3();
        v73 = swift_task_alloc();
        *(v0 + 160) = v73;
        *v73 = v0;
        OUTLINED_FUNCTION_7_5(v73);
        OUTLINED_FUNCTION_41_5();

        __asm { BRAA            X2, X16 }
      }
    }

LABEL_30:
    v3 = v78;
    ++v2;
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_1DD2DF2C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD69D8, &unk_1DD33A440);
    v2 = sub_1DD336BE0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65F0, &qword_1DD3392F0);
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  if (v3 == MEMORY[0x1E69E6158])
  {
    sub_1DD335860();

    v22 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
LABEL_32:
      v7 &= v7 - 1;

      swift_dynamicCast();
      result = sub_1DD2E3630(v24, v25);
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v8)
      {
LABEL_34:

        return v2;
      }

      v7 = *(v4 + 8 * v23);
      ++v22;
      if (v7)
      {
        v22 = v23;
        goto LABEL_32;
      }
    }
  }

  else
  {
    v9 = v2 + 56;
    sub_1DD335860();

    v11 = 0;
    if (v7)
    {
      goto LABEL_13;
    }

    do
    {
LABEL_9:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v8)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
    }

    while (!v7);
    v11 = v12;
    while (1)
    {
LABEL_13:

      swift_dynamicCast();
      sub_1DD336EC0();
      sub_1DD336EE0();
      if (v27)
      {
        sub_1DD3366B0();
      }

      result = sub_1DD336EF0();
      v13 = -1 << *(v2 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v9 + 8 * (v14 >> 6))) == 0)
      {
        break;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v9 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      v7 &= v7 - 1;
      *(v9 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v21 = (*(v2 + 48) + 16 * v16);
      *v21 = v26;
      v21[1] = v27;
      ++*(v2 + 16);
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    v17 = 0;
    v18 = (63 - v13) >> 6;
    while (++v15 != v18 || (v17 & 1) == 0)
    {
      v19 = v15 == v18;
      if (v15 == v18)
      {
        v15 = 0;
      }

      v17 |= v19;
      v20 = *(v9 + 8 * v15);
      if (v20 != -1)
      {
        v16 = __clz(__rbit64(~v20)) + (v15 << 6);
        goto LABEL_24;
      }
    }

LABEL_36:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DD2DF5F0()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v68 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v58 - v13;
  v62 = sub_1DD336220();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v69 = v16 - v15;
  v71 = MEMORY[0x1E69E7CC0];
  v79 = MEMORY[0x1E69E7CC0];
  v76 = v4 + 56;
  OUTLINED_FUNCTION_28_8();
  v19 = v18 & v17;
  v77 = OBJC_IVAR____TtC23SiriReferenceResolution18RRFrontBoardPuller_logger;
  v75 = (v20 + 63) >> 6;
  v65 = *MEMORY[0x1E69D2918];
  v64 = *MEMORY[0x1E69D27E8];
  v61 = (v21 + 8);

  v22 = 0;
  *(&v23 + 1) = 2;
  v63 = xmmword_1DD339380;
  *&v23 = 136315138;
  v60 = v23;
  *&v23 = 136315394;
  v72 = v23;
  v73 = v4;
  v74 = v0;
  while (v19)
  {
LABEL_7:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = (*(v4 + 48) + ((v22 << 10) | (16 * v25)));
    v27 = v26[1];
    if (v27)
    {
      v28 = *v26;

      OUTLINED_FUNCTION_66();
      sub_1DD2D6778();
      v29 = sub_1DD335E60();
      OUTLINED_FUNCTION_36_0(v70, v30, v31, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
      v32 = sub_1DD335CE0();
      OUTLINED_FUNCTION_1_0();
      v34 = v33;
      v35 = OUTLINED_FUNCTION_53_5();
      *(v35 + 16) = v63;
      sub_1DD336130();
      OUTLINED_FUNCTION_1();
      (*(v36 + 104))(v35 + v1, v65);
      (*(v34 + 104))(v35 + v1, v64, v32);
      swift_bridgeObjectRetain_n();
      sub_1DD335860();
      v37 = OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_69_4(v37, v38, v28, v27);
      v39 = sub_1DD336240();
      v40 = v66;
      OUTLINED_FUNCTION_36_0(v66, v41, v42, v39);
      v43 = sub_1DD336190();
      sub_1DD2DB2A4(v40);
      v44 = sub_1DD334830();
      OUTLINED_FUNCTION_1();
      v46 = v67;
      (*(v45 + 16))(v67, v68, v44);
      __swift_storeEnumTagSinglePayload(v46, 0, 1, v44);
      sub_1DD335EF0();
      v47 = v43;
      MEMORY[0x1E12AC640]();
      v48 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v48 >> 1)
      {
        OUTLINED_FUNCTION_45(v48);
        sub_1DD336830();
      }

      sub_1DD336860();
      v71 = v79;

      v1 = v74;
      v49 = sub_1DD335CB0();
      v50 = sub_1DD336930();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = OUTLINED_FUNCTION_50();
        v59 = v47;
        v52 = v51;
        v53 = OUTLINED_FUNCTION_31_0();
        v78 = v53;
        *v52 = v60;
        v54 = OUTLINED_FUNCTION_66();
        v57 = sub_1DD27DBF0(v54, v55, v56);

        *(v52 + 4) = v57;
        _os_log_impl(&dword_1DD27A000, v49, v50, "Pulled foreground app %s successfully", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        v1 = v74;
        OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_54();
      }

      else
      {
      }

      (*v61)(v69, v62);
      v4 = v73;
    }
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v75)
    {

      OUTLINED_FUNCTION_24_1();
      return;
    }

    v19 = *(v76 + 8 * v24);
    ++v22;
    if (v19)
    {
      v22 = v24;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1DD2DFD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 == 0xD00000000000001CLL && 0x80000001DD33DAC0 == a2;
  if (v6 || (v7 = sub_1DD336E00(), (v7 & 1) != 0))
  {

    v8 = sub_1DD335CB0();
    v9 = sub_1DD336930();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_50();
      v11 = OUTLINED_FUNCTION_31_0();
      v17[0] = v11;
      *(v10 + 4) = OUTLINED_FUNCTION_72_3(4.8149e-34);
      v12 = "Skip %s as it is in picture-in-picture mode";
LABEL_8:
      _os_log_impl(&dword_1DD27A000, v8, v9, v12, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_54();
    }
  }

  else
  {
    v14 = qword_1EE0278D8;
    v17[0] = a3;
    v17[1] = a4;
    MEMORY[0x1EEE9AC00](v7);
    v16[2] = v17;

    v15 = sub_1DD2A8F28(sub_1DD2B4218, v16, v14);

    if (!v15)
    {
      return 0;
    }

    v8 = sub_1DD335CB0();
    v9 = sub_1DD336930();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_50();
      v11 = OUTLINED_FUNCTION_31_0();
      v17[0] = v11;
      *(v10 + 4) = OUTLINED_FUNCTION_72_3(4.8149e-34);
      v12 = "Skip %s";
      goto LABEL_8;
    }
  }

  return 1;
}

void sub_1DD2DFF10(void *a1)
{
  v3 = v1;
  sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v6 = *(v1 + OBJC_IVAR____TtC23SiriReferenceResolution18RRFrontBoardPuller_lock);
  sub_1DD3347C0();
  sub_1DD3347A0();
  v7 = OUTLINED_FUNCTION_67_4();
  v8(v7);
  v9 = [v6 lockBeforeDate_];

  if (v9)
  {
    OUTLINED_FUNCTION_57_2(v3 + OBJC_IVAR____TtC23SiriReferenceResolution18RRFrontBoardPuller_monitors);
    sub_1DD2E0844(&v19, a1);
    v10 = v19;
    swift_endAccess();

    [v6 unlock];
  }

  else
  {
    v11 = sub_1DD335CB0();
    v12 = sub_1DD336950();
    if (OUTLINED_FUNCTION_51(v12))
    {
      v13 = OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_68(v13);
      OUTLINED_FUNCTION_55();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_28_1();
    }
  }
}

void sub_1DD2E00A0(void *a1)
{
  v3 = v1;
  sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v6 = *(v1 + OBJC_IVAR____TtC23SiriReferenceResolution18RRFrontBoardPuller_lock);
  sub_1DD3347C0();
  sub_1DD3347A0();
  v7 = OUTLINED_FUNCTION_67_4();
  v8(v7);
  v9 = [v6 lockBeforeDate_];

  if (v9)
  {
    OUTLINED_FUNCTION_57_2(v3 + OBJC_IVAR____TtC23SiriReferenceResolution18RRFrontBoardPuller_monitors);
    v10 = sub_1DD2E37CC(a1);
    swift_endAccess();

    [v6 unlock];
  }

  else
  {
    v11 = sub_1DD335CB0();
    v12 = sub_1DD336950();
    if (OUTLINED_FUNCTION_51(v12))
    {
      v13 = OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_68(v13);
      OUTLINED_FUNCTION_55();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_28_1();
    }
  }
}

uint64_t RRFrontBoardPuller.deinit()
{

  v1 = OBJC_IVAR____TtC23SiriReferenceResolution18RRFrontBoardPuller_logger;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t RRFrontBoardPuller.__deallocating_deinit()
{
  RRFrontBoardPuller.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD2E0300()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD2DA43C;

  return sub_1DD2DD330();
}

uint64_t sub_1DD2E03BC(uint64_t a1)
{
  *(v1 + 16) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v1 + 24) = 0;
  *(v1 + 32) = a1;
  return v1;
}

id sub_1DD2E0404(void *a1)
{
  v3 = *(v1 + 16);
  [v3 lock];
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    **(*(*(v1 + 32) + 64) + 40) = a1;
    v4 = a1;
    swift_continuation_throwingResume();
  }

  return [v3 unlock];
}

uint64_t SingleCallableContinuation.__deallocating_deinit()
{
  SingleCallableContinuation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void sub_1DD2E04EC(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_1DD334830();
  OUTLINED_FUNCTION_69_0(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  v15 = *(v3 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1DD2DC2D0(a1, a2, a3, v13, v14, v3 + v12, v15);
}

id sub_1DD2E059C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

BOOL sub_1DD2E05A8()
{
  OUTLINED_FUNCTION_34_5();
  sub_1DD3366B0();
  sub_1DD336EF0();
  OUTLINED_FUNCTION_65_3();
  v7 = ~v6;
  while (1)
  {
    v8 = v5 & v7;
    v9 = (1 << (v5 & v7)) & *(v17 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    v10 = (*(v4 + 48) + 16 * v8);
    v11 = *v10 == v3 && v10[1] == v1;
    if (v11 || (sub_1DD336E00() & 1) != 0)
    {

      v12 = (*(v4 + 48) + 16 * v8);
      v13 = v12[1];
      *v0 = *v12;
      v0[1] = v13;

      return v9 == 0;
    }

    v5 = v8 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_71_5();
  v14 = OUTLINED_FUNCTION_85_0();
  sub_1DD2E1BBC(v14, v15, v8, v4);
  *v2 = v17[0];
  *v0 = v3;
  v0[1] = v1;
  return v9 == 0;
}

void sub_1DD2E06B8()
{
  OUTLINED_FUNCTION_23_0();
  v3 = sub_1DD335C10();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_13_8();
  v7 = sub_1DD295864(v5, v6, MEMORY[0x1E69A8FB0]);
  OUTLINED_FUNCTION_55_4(v7);
  OUTLINED_FUNCTION_15_6();
  do
  {
    OUTLINED_FUNCTION_20_7();
    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v13 = OUTLINED_FUNCTION_35_6();
      v14(v13);
      v15 = OUTLINED_FUNCTION_33_6();
      sub_1DD2E1D24(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_32_6();
      v19(v18);
      goto LABEL_7;
    }

    v9 = OUTLINED_FUNCTION_17_8();
    v2(v9);
    OUTLINED_FUNCTION_13_8();
    v11 = sub_1DD295864(&qword_1EE027A00, v10, MEMORY[0x1E69A8FB8]);
    OUTLINED_FUNCTION_54_5(v11);
    v12 = OUTLINED_FUNCTION_46_6();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  (v1)(v21, v3);
  v20 = OUTLINED_FUNCTION_27_5();
  v2(v20);
LABEL_7:
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD2E0844(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1DD336B70();

    if (v9)
    {

      sub_1DD27D80C(0, &qword_1EE027520, 0x1E699FAE0);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_1DD336B60();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_1DD2E0BB4(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_1DD2E169C(v17 + 1);
        }

        v18 = v8;
        sub_1DD2E1B38(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_1DD27D80C(0, &qword_1EE027520, 0x1E699FAE0);
    v11 = sub_1DD336A90();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_1DD2E1FD4(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_1DD336AA0();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

uint64_t sub_1DD2E0A68()
{
  OUTLINED_FUNCTION_34_5();
  sub_1DD336EE0();
  if (v1)
  {
    sub_1DD3366B0();
  }

  sub_1DD336EF0();
  OUTLINED_FUNCTION_65_3();
  v7 = v6 & ~v5;
  if (((*(v16 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_15:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_71_5();
    v13 = OUTLINED_FUNCTION_85_0();
    sub_1DD2E2138(v13, v14, v7, v4);
    *v2 = v16[0];
    *v0 = v3;
    v0[1] = v1;
    return 1;
  }

  v8 = ~v5;
  v9 = *(v4 + 48);
  while (1)
  {
    v10 = (v9 + 16 * v7);
    v11 = v10[1];
    if (v11)
    {
      break;
    }

    if (!v1)
    {
      goto LABEL_17;
    }

LABEL_14:
    v7 = (v7 + 1) & v8;
    if (((*(v16 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!v1)
  {
    goto LABEL_14;
  }

  v12 = *v10 == v3 && v11 == v1;
  if (!v12 && (sub_1DD336E00() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  *v0 = *(*(v4 + 48) + 16 * v7);

  return 0;
}

uint64_t sub_1DD2E0BB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD69D0, &qword_1DD33A438);
    v2 = sub_1DD336BD0();
    v15 = v2;
    sub_1DD336B50();
    while (1)
    {
      if (!sub_1DD336B80())
      {

        return v2;
      }

      sub_1DD27D80C(0, &qword_1EE027520, 0x1E699FAE0);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1DD2E169C(v3 + 1);
      }

      v2 = v15;
      result = sub_1DD336A90();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1DD2E0D90(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1DD335CE0();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD69C8, &qword_1DD33A430);
  result = sub_1DD336BC0();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1DD2E22F4(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_1DD295864(&qword_1EE0275E0, MEMORY[0x1E69D2800], MEMORY[0x1E69D2810]);
    result = sub_1DD336550();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DD2E10E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCD69F0, qword_1DD33A460);
  result = sub_1DD336BC0();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1DD2E22F4(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1DD336EC0();
    sub_1DD3366B0();
    result = sub_1DD336EF0();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DD2E1344(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1DD335C10();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD69E8, &qword_1DD33A458);
  result = sub_1DD336BC0();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1DD2E22F4(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_1DD295864(&qword_1EE027A08, MEMORY[0x1E69A8FA8], MEMORY[0x1E69A8FB0]);
    result = sub_1DD336550();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DD2E169C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD69D0, &qword_1DD33A438);
  result = sub_1DD336BC0();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1DD2E22F4(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_1DD336A90();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DD2E18C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD69D8, &unk_1DD33A440);
  result = sub_1DD336BC0();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1DD2E22F4(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v18 = *v16;
    v17 = v16[1];
    sub_1DD336EC0();
    sub_1DD336EE0();
    if (v17)
    {
      sub_1DD3366B0();
    }

    result = sub_1DD336EF0();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v18;
    v27[1] = v17;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1DD2E1B38(uint64_t a1, uint64_t a2)
{
  sub_1DD336A90();
  result = sub_1DD336B40();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1DD2E1BBC(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1DD2E10E8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1DD2E2C84(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1DD336EC0();
      sub_1DD3366B0();
      result = sub_1DD336EF0();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1DD336E00() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1DD2E2358();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1DD336E20();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1DD2E1D24(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_1DD335C10();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD2E1344(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_1DD2E2EB8(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_1DD295864(&qword_1EE027A08, MEMORY[0x1E69A8FA8], MEMORY[0x1E69A8FB0]);
      v13 = sub_1DD336550();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_1DD295864(&qword_1EE027A00, MEMORY[0x1E69A8FA8], MEMORY[0x1E69A8FB8]);
        v15 = sub_1DD336590();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1DD2E24B0();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_1DD336E20();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

unint64_t sub_1DD2E1FD4(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD2E169C(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1DD2E31D0(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = sub_1DD336A90();
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1DD27D80C(0, &qword_1EE027520, 0x1E699FAE0);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_1DD336AA0();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DD2E26C8();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_1DD336E20();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

uint64_t sub_1DD2E2138(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1DD2E18C0(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_1DD2E2818();
        goto LABEL_22;
      }

      sub_1DD2E33E0(v9 + 1);
    }

    v11 = *v4;
    sub_1DD336EC0();
    sub_1DD336EE0();
    if (a2)
    {
      sub_1DD3366B0();
    }

    result = sub_1DD336EF0();
    v12 = v11 + 56;
    v13 = -1 << *(v11 + 32);
    a3 = result & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      v15 = *(v11 + 48);
      do
      {
        v16 = (v15 + 16 * a3);
        v17 = v16[1];
        if (v17)
        {
          if (a2)
          {
            if (*v16 == v8 && v17 == a2)
            {
              goto LABEL_25;
            }

            result = sub_1DD336E00();
            if (result)
            {
              goto LABEL_25;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_25;
        }

        a3 = (a3 + 1) & v14;
      }

      while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_22:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65F0, &qword_1DD3392F0);
    result = sub_1DD336E20();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_1DD2E22F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1DD33A2D0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_1DD2E2358()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCD69F0, qword_1DD33A460);
  v2 = *v0;
  v3 = sub_1DD336BB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1DD2E24B0()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6(0);
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  v13 = *v0;
  v14 = sub_1DD336BB0();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v5;
    v16 = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || v16 >= v13 + 56 + 8 * v17)
    {
      memmove(v16, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v30 = v9 + 32;
    v31 = v9 + 16;
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v27 = *(v9 + 72) * (v24 | (v19 << 6));
      (*(v9 + 16))(v12, *(v13 + 48) + v27, v7);
      (*(v9 + 32))(*(v15 + 48) + v27, v12, v7);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v5 = v29;
        goto LABEL_21;
      }

      v26 = *(v13 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v15;
    OUTLINED_FUNCTION_24_1();
  }
}

id sub_1DD2E26C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD69D0, &qword_1DD33A438);
  v2 = *v0;
  v3 = sub_1DD336BB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DD2E2818()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD69D8, &unk_1DD33A440);
  v2 = *v0;
  v3 = sub_1DD336BB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DD2E296C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1DD335CE0();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD69C8, &qword_1DD33A430);
  v7 = sub_1DD336BC0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1DD295864(&qword_1EE0275E0, MEMORY[0x1E69D2800], MEMORY[0x1E69D2810]);
        result = sub_1DD336550();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1DD2E2C84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCD69F0, qword_1DD33A460);
  result = sub_1DD336BC0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1DD336EC0();

        sub_1DD3366B0();
        result = sub_1DD336EF0();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DD2E2EB8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1DD335C10();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD69E8, &qword_1DD33A458);
  v7 = sub_1DD336BC0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1DD295864(&qword_1EE027A08, MEMORY[0x1E69A8FA8], MEMORY[0x1E69A8FB0]);
        result = sub_1DD336550();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1DD2E31D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD69D0, &qword_1DD33A438);
  result = sub_1DD336BC0();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_1DD336A90();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v24;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DD2E33E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD69D8, &unk_1DD33A440);
  result = sub_1DD336BC0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v17 = *v15;
        v16 = v15[1];
        sub_1DD336EC0();
        sub_1DD336EE0();
        if (v16)
        {

          sub_1DD3366B0();
        }

        result = sub_1DD336EF0();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v17;
        v26[1] = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_27;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DD2E3630(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DD336EC0();
  sub_1DD336EE0();
  if (a2)
  {
    sub_1DD3366B0();
  }

  result = sub_1DD336EF0();
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  v10 = v9 >> 6;
  v11 = *(v5 + 56 + 8 * (v9 >> 6));
  v12 = 1 << v9;
  if (((1 << v9) & v11) != 0)
  {
    v13 = ~v8;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 16 * v9);
      v16 = v15[1];
      if (v16)
      {
        if (a2)
        {
          v17 = *v15 == a1 && v16 == a2;
          if (v17 || (result = sub_1DD336E00(), (result & 1) != 0))
          {
LABEL_18:
            *v15 = a1;
            v15[1] = a2;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_18;
      }

      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v7 + 8 * (v9 >> 6));
      v12 = 1 << v9;
    }

    while ((v11 & (1 << v9)) != 0);
  }

  if (*(v5 + 16) >= *(v5 + 24))
  {
    __break(1u);
  }

  else
  {
    *(v7 + 8 * v10) = v11 | v12;
    v18 = (*(v5 + 48) + 16 * v9);
    *v18 = a1;
    v18[1] = a2;
    v19 = *(v5 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      *(v5 + 16) = v21;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD2E37CC(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_1DD27D80C(0, &qword_1EE027520, 0x1E699FAE0);
    v9 = sub_1DD336A90();
    v10 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v4 + 48) + 8 * v11);
      v13 = sub_1DD336AA0();

      if (v13)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v2;
        v17 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DD2E26C8();
          v15 = v17;
        }

        v8 = *(*(v15 + 48) + 8 * v11);
        sub_1DD2E3AA8(v11);
        *v2 = v17;
        return v8;
      }

      v9 = v11 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = a1;
  v7 = sub_1DD336B90();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_1DD2E394C(v5, v6);

  return v8;
}

uint64_t sub_1DD2E394C(uint64_t a1, uint64_t a2)
{

  v2 = sub_1DD336B60();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1DD2E0BB4(v3, v2);
  v13 = v4;
  sub_1DD335860();
  v5 = sub_1DD336A90();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((*(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v5 & v6)) & 1) == 0)
    {
      break;
    }

    sub_1DD27D80C(0, &qword_1EE027520, 0x1E699FAE0);
    v8 = *(*(v4 + 48) + 8 * v7);
    v9 = sub_1DD336AA0();

    if (v9)
    {

      v10 = *(*(v4 + 48) + 8 * v7);
      sub_1DD2E3AA8(v7);
      if (sub_1DD336AA0())
      {
        *v12 = v13;
        return v10;
      }

      __break(1u);
      break;
    }

    v5 = v7 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD2E3AA8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_1DD335860();
    v8 = sub_1DD336B30();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1DD336A90();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1DD2E3C3C(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD3365D0();

  return v3;
}

uint64_t sub_1DD2E3CA0()
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_114_0(v3);
  *v4 = v5;
  v4[1] = sub_1DD2B4108;

  return sub_1DD2DE004(v2, v0);
}

uint64_t sub_1DD2E3D3C(uint64_t a1)
{
  result = sub_1DD335CD0();
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

uint64_t dispatch thunk of RRFrontBoardPuller.pull(at:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_114_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_63_4(v1);

  return v4(v3);
}

uint64_t dispatch thunk of RRFrontBoardPuller.getBundleIdsFromCurrentConfig(at:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_114_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_63_4(v1);

  return v4(v3);
}

uint64_t dispatch thunk of RRFrontBoardPuller.convertToAppBundleIds(layout:date:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_52();
  v9 = (*(v4 + 184) + **(v4 + 184));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_114_0(v5);
  *v6 = v7;
  v6[1] = sub_1DD2E4220;

  return v9(a1, a2);
}

uint64_t sub_1DD2E4220()
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_81();
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  OUTLINED_FUNCTION_47_0();

  return v5(v2);
}

uint64_t OUTLINED_FUNCTION_38_6(uint64_t a1)
{
  v4 = *(v1 + 56) + 40 * a1;

  return sub_1DD28191C(v4, v2 + 56);
}

uint64_t OUTLINED_FUNCTION_71_5()
{
}

uint64_t sub_1DD2E4480(uint64_t a1)
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

id *sub_1DD2E4524()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t sub_1DD2E45A4()
{
  sub_1DD2E4524();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD2E4614()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD2CFFB0;

  return RRPullerProtocol.pull(at:)();
}

uint64_t dispatch thunk of RRPullerProtocol.pull(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DD2E47E8;

  return v9(a1, a2, a3);
}

uint64_t sub_1DD2E47E8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t RRForegroundedAppPuller.__allocating_init()()
{
  v0 = swift_allocObject();
  RRForegroundedAppPuller.init()();
  return v0;
}

uint64_t RRForegroundedAppPuller.init()()
{
  v1 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v7 = v6 - v5;
  type metadata accessor for RRForegroundedAppPuller(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6A80, &unk_1DD33A500);
  sub_1DD336630();
  sub_1DD335CC0();
  (*(v3 + 32))(v0 + OBJC_IVAR____TtC23SiriReferenceResolution23RRForegroundedAppPuller_logger, v7, v1);
  return v0;
}

uint64_t type metadata accessor for RRForegroundedAppPuller(uint64_t a1)
{
  result = qword_1EE0283A0;
  if (!qword_1EE0283A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD2E4A90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1DD335CA0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD2E4B50, 0, 0);
}

uint64_t sub_1DD2E4B50()
{
  if (qword_1EE027810 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE02A218;
  sub_1DD335C90();
  sub_1DD336A40();
  v2 = qword_1EE02A218;
  sub_1DD335C70();

  v3 = sub_1DD335CB0();
  v4 = sub_1DD336940();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_4_8(&dword_1DD27A000, v5, v6, "Entering RRRunningBoardPuller...");
    OUTLINED_FUNCTION_54();
  }

  type metadata accessor for RRForegroundedAppPuller(0);
  v7 = sub_1DD2E4EF8();
  if (v7)
  {
    v8 = v7;
    v9 = v0[6];
    v10 = v0[3];
    v11 = (*(*v10 + 112))(v0[2], v7);

    sub_1DD2E4DCC(v10, v9);
  }

  else
  {
    v12 = sub_1DD335CB0();
    v13 = sub_1DD336940();
    if (os_log_type_enabled(v12, v13))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_4_8(&dword_1DD27A000, v14, v15, "No app in focus pulled");
      OUTLINED_FUNCTION_54();
    }

    v16 = v0[6];
    v17 = v0[3];

    sub_1DD2E4DCC(v17, v16);
    v11 = MEMORY[0x1E69E7CC0];
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v18 = v0[1];

  return v18(v11);
}

void sub_1DD2E4DCC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD335CB0();
  v3 = sub_1DD336940();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD27A000, v2, v3, "Exiting RRForegroundedAppPuller...", v4, 2u);
    MEMORY[0x1E12ADA30](v4, -1, -1);
  }

  sub_1DD336A30();
  if (qword_1EE027810 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE02A218;
  sub_1DD335C80();
}

void *sub_1DD2E4EF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &aBlock - v4;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v8 = [v7 InFocus];
  swift_unknownObjectRelease();
  v9 = sub_1DD334830();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  v10 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v11 = sub_1DD29AC8C(v5, v3, 1, 1, 0);
  v12 = [v8 publisherWithOptions_];

  v23 = nullsub_1;
  v24 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1DD2E5EF4;
  v22 = &block_descriptor_4;
  v13 = _Block_copy(&aBlock);
  v23 = sub_1DD2B4784;
  v24 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1DD2E5EF4;
  v22 = &block_descriptor_8;
  v14 = _Block_copy(&aBlock);
  sub_1DD335860();

  v15 = [v12 sinkWithCompletion:v13 receiveInput:v14];

  _Block_release(v14);
  _Block_release(v13);

  swift_beginAccess();
  v16 = *(v6 + 16);
  v17 = v16;

  return v16;
}

uint64_t sub_1DD2E51DC(uint64_t a1, void *a2)
{
  v89 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v88 = v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v87 = v82 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v82 - v9;
  v11 = sub_1DD336220();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v17 = v16 - v15;
  v18 = sub_1DD334C50();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_12();
  v24 = v23 - v22;
  v92 = MEMORY[0x1E69E7CC0];
  v25 = sub_1DD2E5CEC(a2);
  if (!v26)
  {
    goto LABEL_7;
  }

  v27 = v25;
  v28 = v26;
  v90 = v2;
  String.md5String.getter();
  if (!v30)
  {

LABEL_7:
    v40 = sub_1DD335CB0();
    v41 = sub_1DD336940();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1DD27A000, v40, v41, "Missing bundleId for foregrounded app, skipping", v42, 2u);
      OUTLINED_FUNCTION_54();
    }

    return MEMORY[0x1E69E7CC0];
  }

  v82[1] = v29;
  v83 = v17;
  v85 = v11;
  v86 = v30;
  v84 = v13;
  v31 = qword_1ECCD6A78;
  v91[0] = v27;
  v91[1] = v28;
  MEMORY[0x1EEE9AC00](v29);
  v81 = v91;

  v32 = sub_1DD2A8F28(sub_1DD2B4218, v80, v31);

  if (v32)
  {

    v33 = sub_1DD335CB0();
    v34 = sub_1DD336940();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v91[0] = v36;
      v37 = OUTLINED_FUNCTION_6_5(4.8149e-34);

      *(v35 + 4) = v37;
      OUTLINED_FUNCTION_5_4(&dword_1DD27A000, v38, v39, "Skipping running app: %s");
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_54();
    }

    else
    {
    }

LABEL_22:

    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD334E00();
  swift_allocObject();
  v43 = sub_1DD334DF0();
  swift_bridgeObjectRetain_n();
  sub_1DD334C30();
  sub_1DD334BA0();
  (*(v20 + 8))(v24, v18);
  v44 = MEMORY[0x1E12AABB0](v43);
  if (!v44)
  {

    v33 = sub_1DD335CB0();
    v73 = sub_1DD336950();

    if (os_log_type_enabled(v33, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v91[0] = v75;
      v76 = OUTLINED_FUNCTION_6_5(4.8149e-34);

      *(v74 + 4) = v76;
      OUTLINED_FUNCTION_5_4(&dword_1DD27A000, v77, v78, "Failed to convert running app %s to USO, skipping this one");
      __swift_destroy_boxed_opaque_existential_1(v75);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_54();
    }

    else
    {
    }

    goto LABEL_22;
  }

  v45 = v44;
  v46 = sub_1DD335E60();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
  v47 = sub_1DD335CE0();
  OUTLINED_FUNCTION_1_0();
  v49 = v48;
  v50 = v27;
  v51 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1DD339380;
  v53 = *MEMORY[0x1E69D28F0];
  sub_1DD336130();
  OUTLINED_FUNCTION_1();
  (*(v54 + 104))(v52 + v51, v53);
  v55 = v52 + v51;
  v56 = v50;
  (*(v49 + 104))(v55, *MEMORY[0x1E69D27E8], v47);

  sub_1DD335860();
  v80[1] = v10;
  v81 = v52;
  v80[0] = 0xF000000000000000;
  v57 = v83;
  v86 = v45;
  sub_1DD3361E0();
  v58 = sub_1DD336240();
  v59 = v87;
  __swift_storeEnumTagSinglePayload(v87, 1, 1, v58);
  v60 = sub_1DD336190();
  sub_1DD2DB2A4(v59);
  v61 = sub_1DD334830();
  OUTLINED_FUNCTION_1();
  v63 = v88;
  (*(v62 + 16))(v88, v89, v61);
  __swift_storeEnumTagSinglePayload(v63, 0, 1, v61);
  sub_1DD335F70();
  v64 = v60;
  MEMORY[0x1E12AC640]();
  if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DD336830();
  }

  sub_1DD336860();
  v65 = v92;

  v66 = sub_1DD335CB0();
  v67 = sub_1DD336930();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = v56;
    v71 = v69;
    v91[0] = v69;
    *v68 = 136315138;
    v72 = sub_1DD27DBF0(v70, v28, v91);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_1DD27A000, v66, v67, "Pulled running app %s successfully", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v71);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_54();
  }

  else
  {
  }

  (*(v84 + 8))(v57, v85);
  return v65;
}

uint64_t RRForegroundedAppPuller.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution23RRForegroundedAppPuller_logger;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t RRForegroundedAppPuller.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution23RRForegroundedAppPuller_logger;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1DD2E5B84(uint64_t a1)
{
  v6 = (*(**v1 + 104) + **(**v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD2CFFB0;

  return v6(a1);
}

uint64_t sub_1DD2E5CEC(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD3365D0();

  return v3;
}

uint64_t dispatch thunk of RRForegroundedAppPuller.pull(at:)(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD2E47E8;

  return v6(a1);
}

BOOL sub_1DD2E5EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DD336EC0();
  sub_1DD3366B0();
  v6 = sub_1DD336EF0();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_1DD336E00();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t RRRunningBoardPuller.__allocating_init()()
{
  v0 = swift_allocObject();
  RRRunningBoardPuller.init()();
  return v0;
}

uint64_t RRRunningBoardPuller.init()()
{
  v1 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v7 = v6 - v5;
  v8 = (v0 + OBJC_IVAR____TtC23SiriReferenceResolution20RRRunningBoardPuller_rbsProcessState);
  *v8 = sub_1DD27D80C(0, &qword_1EE027A50, 0x1E69C7618);
  v8[1] = &protocol witness table for RBSProcessState;
  type metadata accessor for RRRunningBoardPuller(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6A88, &unk_1DD33A560);
  sub_1DD336630();
  sub_1DD335CC0();
  (*(v3 + 32))(v0 + OBJC_IVAR____TtC23SiriReferenceResolution20RRRunningBoardPuller_logger, v7, v1);
  return v0;
}

uint64_t type metadata accessor for RRRunningBoardPuller(uint64_t a1)
{
  result = qword_1EE027C98;
  if (!qword_1EE027C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD2E61AC(uint64_t a1, void (*a2)(uint64_t, void))
{
  v3 = v2;
  v5 = sub_1DD335CA0();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  if (qword_1EE027810 != -1)
  {
    OUTLINED_FUNCTION_3_9(&qword_1EE027810);
  }

  v12 = qword_1EE02A218;
  sub_1DD335C90();
  sub_1DD336A40();
  v13 = qword_1EE02A218;
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_6_6();
  sub_1DD335C70();

  v14 = sub_1DD335CB0();
  v15 = sub_1DD336940();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_33_0();
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DD27A000, v14, v15, "Entering RRRunningBoardPuller...", v16, 2u);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  v17 = (*(*v3 + 144))();
  v18 = (*(*v3 + 152))(a1, v17);

  a2(v18, 0);

  v19 = sub_1DD335CB0();
  v20 = sub_1DD336940();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_33_0();
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DD27A000, v19, v20, "Exiting RRRunningBoardPuller...", v21, 2u);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  sub_1DD336A30();
  v22 = qword_1EE02A218;
  OUTLINED_FUNCTION_6_6();
  sub_1DD335C80();

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_1DD2E64D4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1DD335CA0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD2E6594, 0, 0);
}

uint64_t sub_1DD2E6594()
{
  if (qword_1EE027810 != -1)
  {
    OUTLINED_FUNCTION_3_9(&qword_1EE027810);
  }

  v1 = qword_1EE02A218;
  sub_1DD335C90();
  sub_1DD336A40();
  v2 = qword_1EE02A218;
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_6_6();
  sub_1DD335C70();

  v3 = sub_1DD335CB0();
  v4 = sub_1DD336940();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_33_0();
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DD27A000, v3, v4, "Entering RRRunningBoardPuller...", v5, 2u);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  OUTLINED_FUNCTION_52();
  v7 = (*(v6 + 144))();
  v9 = v0[5];
  v8 = v0[6];
  v11 = v0[3];
  v10 = v0[4];
  v12 = (*(*v11 + 152))(v0[2], v7);

  sub_1DD2E6814(v11, v8);
  (*(v9 + 8))(v8, v10);

  v13 = v0[1];

  return v13(v12);
}

void sub_1DD2E6814(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD335CB0();
  v3 = sub_1DD336940();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD27A000, v2, v3, "Exiting RRRunningBoardPuller...", v4, 2u);
    MEMORY[0x1E12ADA30](v4, -1, -1);
  }

  sub_1DD336A30();
  if (qword_1EE027810 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE02A218;
  sub_1DD335C80();
}

void sub_1DD2E6940(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1DD335CB0();
  v4 = sub_1DD336940();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_33_0();
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DD27A000, v3, v4, "Pulling apps that are running and visible", v5, 2u);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69C7630]) init];
  sub_1DD2E7FCC(&unk_1F589A9B0, v6);
  v7 = [objc_opt_self() predicateMatchingProcessTypeApplication];
  v8 = *(v2 + OBJC_IVAR____TtC23SiriReferenceResolution20RRRunningBoardPuller_rbsProcessState);
  v9 = *(v2 + OBJC_IVAR____TtC23SiriReferenceResolution20RRRunningBoardPuller_rbsProcessState + 8);
  v10 = *(v9 + 32);
  v11 = v6;
  v59 = v7;
  v12 = v10(v7, v6, v8, v9);
  if (v63)
  {

    v13 = v63;
    v14 = sub_1DD335CB0();
    v15 = sub_1DD336950();

    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_34_0();
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_26();
      v17 = swift_slowAlloc();
      v65[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_1DD336E40();
      v20 = sub_1DD27DBF0(v18, v19, v65);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1DD27A000, v14, v15, "Failed to pull running and visible apps, error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    swift_willThrow();
  }

  else
  {
    v21 = v12;
    v58 = v11;

    v22 = 0;
    v62 = v21 + 32;
    v64 = *(v21 + 16);
    v60 = MEMORY[0x1E69E7CC0];
    v23 = v21;
    v61 = v21;
    while (v22 != v64)
    {
      if (v22 >= *(v23 + 16))
      {
        __break(1u);
        return;
      }

      v24 = v22 + 1;
      sub_1DD28191C(v62 + 40 * v22, &v68);
      v25 = v69;
      v26 = v70;
      __swift_project_boxed_opaque_existential_1(&v68, v69);
      v27 = (*(v26 + 24))(v25, v26);
      if (!v27)
      {
        goto LABEL_28;
      }

      v28 = v27;
      if (*(v27 + 16))
      {
        sub_1DD336EC0();
        sub_1DD3366B0();
        v29 = sub_1DD336EF0();
        v30 = ~(-1 << *(v28 + 32));
        do
        {
          v31 = v29 & v30;
          v32 = (1 << (v29 & v30)) & *(v28 + 56 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8));
          v33 = v32 == 0;
          if (!v32)
          {
            break;
          }

          v34 = (*(v28 + 48) + 16 * v31);
          if (*v34 == 0xD00000000000001FLL && 0x80000001DD33CEA0 == v34[1])
          {
            break;
          }

          v36 = sub_1DD336E00();
          v29 = v31 + 1;
        }

        while ((v36 & 1) == 0);
      }

      else
      {
        v33 = 1;
      }

      v37 = v69;
      v38 = v70;
      __swift_project_boxed_opaque_existential_1(&v68, v69);
      v39 = (*(v38 + 16))(v37, v38);
      v23 = v61;
      if (!v33 && v39 == 4)
      {
        sub_1DD289CE4(&v68, v65);
        v40 = v60;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v60;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DD2D7AD8(0, *(v60 + 16) + 1, 1);
          v40 = v71;
        }

        v43 = *(v40 + 16);
        v42 = *(v40 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1DD2D7AD8(v42 > 1, v43 + 1, 1);
        }

        v44 = v66;
        v45 = v67;
        v46 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
        MEMORY[0x1EEE9AC00](v46);
        OUTLINED_FUNCTION_12();
        v49 = v48 - v47;
        (*(v50 + 16))(v48 - v47);
        sub_1DD2E8038(v43, v49, &v71, v44, v45);
        __swift_destroy_boxed_opaque_existential_1(v65);
        v60 = v71;
        v22 = v24;
        v23 = v61;
      }

      else
      {
LABEL_28:
        __swift_destroy_boxed_opaque_existential_1(&v68);
        v22 = v24;
      }
    }

    v51 = *(v60 + 16);
    if (v51)
    {
      type metadata accessor for RRRunningBoardPuller(0);
      v52 = v60 + 32;
      v53 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1DD28191C(v52, v65);
        if (sub_1DD2E6FC4(v65))
        {
          __swift_destroy_boxed_opaque_existential_1(v65);
        }

        else
        {
          sub_1DD28191C(v65, &v68);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD2BBEBC(0, v53[2] + 1, 1, v53);
            v53 = v56;
          }

          v55 = v53[2];
          v54 = v53[3];
          if (v55 >= v54 >> 1)
          {
            sub_1DD2BBEBC(v54 > 1, v55 + 1, 1, v53);
            v53 = v57;
          }

          __swift_destroy_boxed_opaque_existential_1(v65);
          v53[2] = v55 + 1;
          sub_1DD289CE4(&v68, &v53[5 * v55 + 4]);
        }

        v52 += 40;
        --v51;
      }

      while (v51);
    }

    v11 = v58;
  }
}

id sub_1DD2E6FC4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = OUTLINED_FUNCTION_7_6();
  v2(v1);
  if (!v25)
  {
    v19 = &unk_1ECCD6A90;
    v20 = &unk_1DD33A598;
    v21 = v24;
LABEL_11:
    sub_1DD296084(v21, v19, v20);
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(v24, v25);
  v3 = OUTLINED_FUNCTION_7_6();
  v4(v3);
  if (!v27)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    v19 = &unk_1ECCD6A98;
    v20 = &unk_1DD33A5A0;
    v21 = v26;
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(v26, v27);
  v5 = OUTLINED_FUNCTION_7_6();
  v7 = v6(v5);
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v24);
  if (v9)
  {
    sub_1DD27D80C(0, &qword_1ECCD6AA0, 0x1E69635E0);
    v10 = sub_1DD2E7218(v7, v9);
    if (v10)
    {
      v11 = v10;
      v12 = sub_1DD2E7F10(v10);
      if (v12)
      {
        v13 = v12;
        v14 = sub_1DD2E7F68(v11);
        v9 = v15;
        if (!v15)
        {

          goto LABEL_15;
        }

        v26[0] = 0x6E6564646968;
        v26[1] = 0xE600000000000000;
        MEMORY[0x1EEE9AC00](v14);
        v23[2] = v26;
        v16 = sub_1DD2A8F28(sub_1DD2E8358, v23, v13);

        if (v16)
        {
          v17 = sub_1DD3365A0();

          v18 = *MEMORY[0x1E69635A8];
          v9 = [v17 isEqual_];

LABEL_15:
          return v9;
        }
      }
    }

    return 0;
  }

  return v9;
}

id sub_1DD2E7218(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1DD3365A0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() applicationProxyForIdentifier_];

  return v3;
}

uint64_t sub_1DD2E7288(uint64_t a1, uint64_t a2)
{
  v84 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = &v74 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v82 = &v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v81 = &v74 - v8;
  v80 = sub_1DD336220();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v89 = v13 - v12;
  v14 = sub_1DD334C50();
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = MEMORY[0x1E69E7CC0];
  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = (a2 + 32);
    v86 = (v15 + 8);
    v77 = (v10 + 8);
    v87 = MEMORY[0x1E69E7CC0];
    v90 = OBJC_IVAR____TtC23SiriReferenceResolution20RRRunningBoardPuller_logger;
    v76 = *MEMORY[0x1E69D2918];
    v75 = *MEMORY[0x1E69D27E8];
    *&v17 = 136315138;
    v85 = v17;
    v74 = xmmword_1DD339380;
    v79 = v14;
    v78 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      v21 = OUTLINED_FUNCTION_8_6();
      v22(v21);
      if (!v92)
      {
        break;
      }

      __swift_project_boxed_opaque_existential_1(v91, v92);
      v23 = OUTLINED_FUNCTION_8_6();
      v24(v23);
      if (!v94)
      {
        __swift_destroy_boxed_opaque_existential_1(v91);
        v39 = v93;
        v40 = &unk_1ECCD6A98;
        v41 = &unk_1DD33A5A0;
        goto LABEL_11;
      }

      __swift_project_boxed_opaque_existential_1(v93, v94);
      v25 = OUTLINED_FUNCTION_8_6();
      v26(v25);
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_1(v93);
      __swift_destroy_boxed_opaque_existential_1(v91);
      if (v28)
      {
        OUTLINED_FUNCTION_52();
        v29 = OUTLINED_FUNCTION_66();
        if (v30(v29))
        {

          v31 = sub_1DD335CB0();
          v32 = sub_1DD336940();

          if (os_log_type_enabled(v31, v32))
          {
            OUTLINED_FUNCTION_34_0();
            v33 = swift_slowAlloc();
            OUTLINED_FUNCTION_26();
            v34 = swift_slowAlloc();
            v93[0] = v34;
            *v33 = v85;
            v35 = OUTLINED_FUNCTION_66();
            v38 = sub_1DD27DBF0(v35, v36, v37);

            *(v33 + 4) = v38;
            _os_log_impl(&dword_1DD27A000, v31, v32, "Skipping running app: %s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v34);
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
          }

          else
          {
          }
        }

        else
        {
          sub_1DD334E00();
          swift_allocObject();
          v42 = sub_1DD334DF0();
          swift_bridgeObjectRetain_n();
          OUTLINED_FUNCTION_66();
          sub_1DD334C30();
          sub_1DD334BA0();
          (*v86)(v18, v14);
          if (MEMORY[0x1E12AABB0](v42))
          {
            v88 = v42;
            v43 = sub_1DD335E60();
            __swift_storeEnumTagSinglePayload(v81, 1, 1, v43);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
            v44 = sub_1DD335CE0();
            OUTLINED_FUNCTION_1_0();
            v46 = v45;
            v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
            v48 = swift_allocObject();
            *(v48 + 16) = v74;
            sub_1DD336130();
            OUTLINED_FUNCTION_1();
            (*(v49 + 104))(v48 + v47, v76);
            (*(v46 + 104))(v48 + v47, v75, v44);
            swift_bridgeObjectRetain_n();
            sub_1DD335860();
            OUTLINED_FUNCTION_66();
            sub_1DD3361E0();
            v50 = sub_1DD336240();
            v51 = v82;
            __swift_storeEnumTagSinglePayload(v82, 1, 1, v50);
            v52 = sub_1DD336190();
            sub_1DD296084(v51, &qword_1ECCD6348, &unk_1DD338E20);
            v53 = sub_1DD334830();
            OUTLINED_FUNCTION_1();
            v55 = v83;
            (*(v54 + 16))(v83, v84, v53);
            __swift_storeEnumTagSinglePayload(v55, 0, 1, v53);
            sub_1DD335EF0();
            v56 = v52;
            MEMORY[0x1E12AC640]();
            if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1DD336830();
            }

            sub_1DD336860();
            v87 = v95;

            v57 = sub_1DD335CB0();
            v58 = sub_1DD336930();

            if (os_log_type_enabled(v57, v58))
            {
              OUTLINED_FUNCTION_34_0();
              v59 = swift_slowAlloc();
              OUTLINED_FUNCTION_26();
              v60 = swift_slowAlloc();
              v93[0] = v60;
              *v59 = v85;
              v61 = OUTLINED_FUNCTION_66();
              v64 = sub_1DD27DBF0(v61, v62, v63);

              *(v59 + 4) = v64;
              _os_log_impl(&dword_1DD27A000, v57, v58, "Pulled running app %s successfully", v59, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v60);
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();
            }

            else
            {
            }

            (*v77)(v89, v80);
            v14 = v79;
            v18 = v78;
            goto LABEL_25;
          }

          v31 = sub_1DD335CB0();
          v65 = sub_1DD336950();

          if (os_log_type_enabled(v31, v65))
          {
            OUTLINED_FUNCTION_34_0();
            v66 = swift_slowAlloc();
            v88 = v42;
            v67 = v66;
            OUTLINED_FUNCTION_26();
            v68 = swift_slowAlloc();
            v93[0] = v68;
            *v67 = v85;
            v69 = OUTLINED_FUNCTION_66();
            v72 = sub_1DD27DBF0(v69, v70, v71);

            *(v67 + 4) = v72;
            _os_log_impl(&dword_1DD27A000, v31, v65, "Failed to convert running app %s to USO, skipping this one", v67, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v68);
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
          }

          else
          {
          }
        }
      }

LABEL_25:
      v20 += 5;
      if (!--v19)
      {
        return v87;
      }
    }

    v39 = v91;
    v40 = &unk_1ECCD6A90;
    v41 = &unk_1DD33A598;
LABEL_11:
    sub_1DD296084(v39, v40, v41);
    goto LABEL_25;
  }

  return MEMORY[0x1E69E7CC0];
}

BOOL sub_1DD2E7C40(uint64_t a1, uint64_t a2)
{
  v2 = qword_1EE0278D8;
  v6[0] = a1;
  v6[1] = a2;
  v5[2] = v6;

  v3 = sub_1DD2A8F28(sub_1DD2B4218, v5, v2);

  return v3;
}

uint64_t RRRunningBoardPuller.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution20RRRunningBoardPuller_logger;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t RRRunningBoardPuller.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution20RRRunningBoardPuller_logger;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1DD2E7DA8(uint64_t a1)
{
  v6 = (*(**v1 + 136) + **(**v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD2CFFB0;

  return v6(a1);
}

uint64_t sub_1DD2E7F10(void *a1)
{
  v1 = [a1 appTags];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD336810();

  return v3;
}

uint64_t sub_1DD2E7F68(void *a1)
{
  v1 = [a1 applicationType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD3365D0();

  return v3;
}

void sub_1DD2E7FCC(uint64_t a1, void *a2)
{
  v3 = sub_1DD336800();

  [a2 setEndowmentNamespaces_];
}

uint64_t sub_1DD2E8038(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1DD289CE4(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1DD2E80D8(uint64_t a1)
{
  result = sub_1DD335CD0();
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

uint64_t dispatch thunk of RRRunningBoardPuller.pull(at:)(uint64_t a1)
{
  OUTLINED_FUNCTION_52();
  v6 = (*(v3 + 136) + **(v3 + 136));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DD2E47E8;

  return v6(a1);
}

uint64_t sub_1DD2E8374(void *a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v106 = a3;
  v107 = a2;
  v94 = a1;
  sub_1DD3363A0();
  OUTLINED_FUNCTION_1_0();
  v101 = v6;
  v102 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v98 = (v8 - v7);
  OUTLINED_FUNCTION_31_1();
  sub_1DD336420();
  OUTLINED_FUNCTION_1_0();
  v99 = v10;
  v100 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v96 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v86 - v13;
  OUTLINED_FUNCTION_31_1();
  v93 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_31_1();
  v91 = sub_1DD334890();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_12();
  v24 = v23 - v22;
  sub_1DD335CA0();
  OUTLINED_FUNCTION_1_0();
  v104 = v26;
  v105 = v25;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_12();
  v29 = v28 - v27;
  if (qword_1ECCD6258 != -1)
  {
    OUTLINED_FUNCTION_5_5(&qword_1ECCD6258);
  }

  v30 = qword_1ECCD7298;
  sub_1DD335C90();
  sub_1DD336A40();
  v31 = qword_1ECCD7298;
  v32 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_9();
  sub_1DD335C70();

  v103 = OBJC_IVAR____TtC23SiriReferenceResolution28RRIntelligencePlatformPuller_logger;
  v33 = sub_1DD335CB0();
  v34 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v34))
  {
    v35 = OUTLINED_FUNCTION_69();
    *v35 = 0;
    _os_log_impl(&dword_1DD27A000, v33, v34, "Entering IntelligencePlatformPuller...", v35, 2u);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  v36 = swift_allocObject();
  *(v36 + 16) = v32;
  v95 = v36 + 16;
  *(v36 + 24) = 0;
  v37 = sub_1DD2EA314();
  if (v37)
  {
    v90 = v29;
    v89 = v37;
    v38 = dispatch_semaphore_create(0);
    v39 = [objc_allocWithZone(MEMORY[0x1E69AE370]) init];
    sub_1DD334880();
    v88 = sub_1DD334840();
    v87 = v40;
    (*(v20 + 8))(v24, v91);
    v91 = *(v4 + OBJC_IVAR____TtC23SiriReferenceResolution28RRIntelligencePlatformPuller_mediaAnalysisService);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6930, &qword_1DD339930);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DD339E80;
    *(v41 + 32) = v39;
    sub_1DD27D80C(0, &qword_1ECCD6AF0, 0x1E69AE3B8);
    v42 = v4;
    v43 = v39;
    v44 = sub_1DD336800();

    v45 = v92;
    v46 = v93;
    (*(v15 + 16))(v92, v94, v93);
    v47 = (*(v15 + 80) + 48) & ~*(v15 + 80);
    v48 = swift_allocObject();
    *(v48 + 2) = v38;
    *(v48 + 3) = v42;
    *(v48 + 4) = v36;
    *(v48 + 5) = v43;
    (*(v15 + 32))(&v48[v47], v45, v46);
    aBlock[4] = sub_1DD2EC560;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DD2E8FA0;
    aBlock[3] = &block_descriptor_21_0;
    v49 = _Block_copy(aBlock);
    v94 = v43;
    v50 = v38;
    sub_1DD335860();
    sub_1DD335860();

    v51 = v89;
    sub_1DD2EC470(v44, v89, 1, v88, v87, v49, v91);

    _Block_release(v49);

    v52 = v96;
    sub_1DD336410();
    v53 = v98;
    *v98 = 500;
    v55 = v101;
    v54 = v102;
    (*(v101 + 104))(v53, *MEMORY[0x1E69E7F38], v102);
    v56 = v97;
    MEMORY[0x1E12AC2C0](v52, v53);
    (*(v55 + 8))(v53, v54);
    v57 = v100;
    v58 = *(v99 + 8);
    v58(v52, v100);
    sub_1DD336A50();
    v58(v56, v57);
    if (sub_1DD3363B0())
    {
      v59 = sub_1DD335CB0();
      v60 = sub_1DD336950();
      if (OUTLINED_FUNCTION_21_0(v60))
      {
        v61 = OUTLINED_FUNCTION_50();
        *v61 = 134217984;
        *(v61 + 4) = 500;
        OUTLINED_FUNCTION_15_7();
        _os_log_impl(v62, v63, v64, v65, v61, 0xCu);
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
      }

      sub_1DD2B3F80();
      v66 = swift_allocError();
      swift_beginAccess();
      v67 = *(v36 + 16);
      v68 = *(v36 + 24);
      *(v36 + 16) = v66;
      *(v36 + 24) = 1;
      sub_1DD2BED74(v67, v68);
    }

    v69 = sub_1DD335CB0();
    v70 = sub_1DD336940();
    v71 = OUTLINED_FUNCTION_21_0(v70);
    v29 = v90;
    if (v71)
    {
      v72 = OUTLINED_FUNCTION_69();
      *v72 = 0;
      OUTLINED_FUNCTION_15_7();
      _os_log_impl(v73, v74, v75, v76, v72, 2u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    swift_beginAccess();
    v77 = *(v36 + 16);
    v78 = *(v36 + 24);
    sub_1DD2E059C(v77, *(v36 + 24));
    v107(v77, v78);
    sub_1DD2BED74(v77, v78);
  }

  else
  {
    v79 = sub_1DD335CB0();
    v80 = sub_1DD336950();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = OUTLINED_FUNCTION_69();
      *v81 = 0;
      _os_log_impl(&dword_1DD27A000, v79, v80, "Failed to take a screenshot", v81, 2u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    v82 = *(v36 + 16);
    v83 = *(v36 + 24);
    sub_1DD2E059C(v82, *(v36 + 24));
    v107(v82, v83);
    sub_1DD2BED74(v82, v83);
  }

  sub_1DD336A30();
  v84 = qword_1ECCD7298;
  OUTLINED_FUNCTION_9_9();
  sub_1DD335C80();

  return (*(v104 + 8))(v29, v105);
}

uint64_t sub_1DD2E8CC4(int a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (a2)
  {
    v9 = a2;
    v11 = a2;
    v12 = sub_1DD335CB0();
    v13 = sub_1DD336950();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26[0] = v15;
      *v14 = 67109378;
      *(v14 + 4) = a1;
      *(v14 + 8) = 2080;
      swift_getErrorValue();
      v16 = sub_1DD336E40();
      v18 = sub_1DD27DBF0(v16, v17, v26);

      *(v14 + 10) = v18;
      _os_log_impl(&dword_1DD27A000, v12, v13, "Failed to get person identification from MAD, requestId: %d, error: %s", v14, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1E12ADA30](v15, -1, -1);
      MEMORY[0x1E12ADA30](v14, -1, -1);
    }

    v19 = 1;
  }

  else
  {
    v24 = sub_1DD2EC4F0(a6);
    if (!v24)
    {
      return sub_1DD336A60();
    }

    v25 = sub_1DD2EAD58(v24, 0xD00000000000001BLL, 0x80000001DD33D4D0, a7, *(a4 + OBJC_IVAR____TtC23SiriReferenceResolution28RRIntelligencePlatformPuller_viewService));

    v19 = 0;
    v9 = v25;
  }

  swift_beginAccess();
  v20 = *(a5 + 16);
  v21 = *(a5 + 24);
  *(a5 + 16) = v9;
  *(a5 + 24) = v19;
  sub_1DD2BED74(v20, v21);
  return sub_1DD336A60();
}

void sub_1DD2E8FA0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1DD335860();
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1DD2E9018()
{
  OUTLINED_FUNCTION_4();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_1DD3357C0();
  v1[6] = v3;
  OUTLINED_FUNCTION_69_0(v3);
  v1[7] = v4;
  v1[8] = OUTLINED_FUNCTION_71();
  v5 = sub_1DD334830();
  v1[9] = v5;
  OUTLINED_FUNCTION_69_0(v5);
  v1[10] = v6;
  v1[11] = *(v7 + 64);
  v1[12] = OUTLINED_FUNCTION_71();
  v8 = sub_1DD334890();
  v1[13] = v8;
  OUTLINED_FUNCTION_69_0(v8);
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_71();
  v10 = sub_1DD335CA0();
  v1[16] = v10;
  OUTLINED_FUNCTION_69_0(v10);
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DD2E91AC()
{
  if (qword_1ECCD6258 != -1)
  {
    OUTLINED_FUNCTION_5_5(&qword_1ECCD6258);
  }

  v1 = qword_1ECCD7298;
  sub_1DD335C90();
  sub_1DD336A40();
  v2 = qword_1ECCD7298;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_9();
  sub_1DD335C70();

  v0[19] = OBJC_IVAR____TtC23SiriReferenceResolution28RRIntelligencePlatformPuller_logger;
  v3 = sub_1DD335CB0();
  v4 = sub_1DD336940();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_69();
    *v5 = 0;
    _os_log_impl(&dword_1DD27A000, v3, v4, "Entering IntelligencePlatformPuller...", v5, 2u);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  v6 = sub_1DD2EA314();
  v0[20] = v6;
  if (v6)
  {
    v7 = v6;
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[12];
    v11 = v0[13];
    v12 = v0[10];
    v13 = v0[9];
    v33 = v0[5];
    v32 = v0[4];
    v14 = [objc_allocWithZone(MEMORY[0x1E69AE370]) init];
    v0[21] = v14;
    sub_1DD334880();
    v15 = sub_1DD334840();
    v31 = v16;
    (*(v9 + 8))(v8, v11);
    (*(v12 + 16))(v10, v32, v13);
    v17 = (*(v12 + 80) + 56) & ~*(v12 + 80);
    v18 = swift_allocObject();
    v0[22] = v18;
    *(v18 + 2) = v33;
    *(v18 + 3) = v14;
    *(v18 + 4) = v7;
    *(v18 + 5) = v15;
    *(v18 + 6) = v31;
    (*(v12 + 32))(&v18[v17], v10, v13);
    sub_1DD335860();
    v19 = v14;
    v20 = v7;
    v21 = swift_task_alloc();
    v0[23] = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A8, "be");
    *v21 = v0;
    v21[1] = sub_1DD2E95D0;
    v23.n128_u64[0] = 0.5;

    return MEMORY[0x1EEE40F70](v0 + 2, &unk_1DD33A6C0, v18, v22, v23);
  }

  else
  {
    v24 = sub_1DD335CB0();
    v25 = sub_1DD336950();
    if (OUTLINED_FUNCTION_17_0(v25))
    {
      v26 = OUTLINED_FUNCTION_69();
      *v26 = 0;
      _os_log_impl(&dword_1DD27A000, v24, v25, "Failed to take a screenshot", v26, 2u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    sub_1DD336A30();
    v27 = qword_1ECCD7298;
    OUTLINED_FUNCTION_9_9();
    sub_1DD335C80();

    (*(v0[17] + 8))(v0[18], v0[16]);

    v28 = v0[1];
    v29 = MEMORY[0x1E69E7CC0];

    return v28(v29);
  }
}

uint64_t sub_1DD2E95D0()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v3 + 192) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DD2E96D8()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 16);
  sub_1DD336A30();
  v3 = qword_1ECCD7298;
  OUTLINED_FUNCTION_9_9();
  sub_1DD335C80();

  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_1DD2E97E0()
{
  v1 = *(v0 + 192);

  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
  if (swift_dynamicCast())
  {

    v3 = sub_1DD335CB0();
    v4 = sub_1DD336950();
    if (OUTLINED_FUNCTION_17_0(v4))
    {
      v5 = OUTLINED_FUNCTION_50();
      *v5 = 134217984;
      *(v5 + 4) = 0x3FE0000000000000;
      _os_log_impl(&dword_1DD27A000, v3, v4, "Pulling on-screen content from MAD and IntelligencePlatform has timed out after %f seconds", v5, 0xCu);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 48);

    sub_1DD2B3F80();
    swift_allocError();
    swift_willThrow();

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v11 = *(v0 + 160);
  }

  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v14 = *(v0 + 128);
  sub_1DD336A30();
  v15 = qword_1ECCD7298;
  OUTLINED_FUNCTION_9_9();
  sub_1DD335C80();

  (*(v13 + 8))(v12, v14);

  OUTLINED_FUNCTION_3_5();

  return v16();
}

uint64_t sub_1DD2E9A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD2E9A50, 0, 0);
}

uint64_t sub_1DD2E9A50()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 56);
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A8, "be");
  *v5 = v0;
  v5[1] = sub_1DD2E9B64;
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, 0xE900000000000029, v10, v3, v11);
}

uint64_t sub_1DD2E9B64()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_30_0();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  else
  {

    OUTLINED_FUNCTION_3_5();

    return v9();
  }
}

uint64_t sub_1DD2E9C88()
{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_3_5();

  return v0();
}

void sub_1DD2E9CE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a7;
  v37 = a5;
  v38 = a6;
  v36 = a4;
  v30 = a2;
  v32 = a1;
  v33 = sub_1DD334830();
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v35 = *(a2 + OBJC_IVAR____TtC23SiriReferenceResolution28RRIntelligencePlatformPuller_mediaAnalysisService);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6930, &qword_1DD339930);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DD339E80;
  *(v16 + 32) = a3;
  sub_1DD27D80C(0, &qword_1ECCD6AF0, 0x1E69AE3B8);
  v29 = a3;
  v31 = sub_1DD336800();

  (*(v12 + 16))(v15, v32, v11);
  v17 = v33;
  (*(v9 + 16))(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v33);
  v18 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v9 + 80) + v19 + 8) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  (*(v12 + 32))(v21 + v18, v15, v11);
  v22 = v28;
  v23 = v29;
  *(v21 + v19) = v29;
  (*(v9 + 32))(v21 + v20, v22, v17);
  aBlock[4] = sub_1DD2EC378;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD2E8FA0;
  aBlock[3] = &block_descriptor_5;
  v24 = _Block_copy(aBlock);
  v25 = v23;
  sub_1DD335860();

  v26 = v31;
  sub_1DD2EC470(v31, v36, 1, v37, v38, v24, v35);
  _Block_release(v24);
}

uint64_t sub_1DD2EA034(int a1, id a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a2)
  {
    v9 = a2;
    v10 = sub_1DD335CB0();
    v11 = sub_1DD336950();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 67109378;
      *(v12 + 4) = a1;
      *(v12 + 8) = 2080;
      swift_getErrorValue();
      v14 = sub_1DD336E40();
      v16 = sub_1DD27DBF0(v14, v15, v19);

      *(v12 + 10) = v16;
      _os_log_impl(&dword_1DD27A000, v10, v11, "Failed to get person identification from MAD, requestId: %d, error: %s", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1E12ADA30](v13, -1, -1);
      MEMORY[0x1E12ADA30](v12, -1, -1);
    }

    v19[0] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
    return sub_1DD3368A0();
  }

  else
  {
    result = sub_1DD2EC4F0(a5);
    if (result)
    {
      sub_1DD2EAD58(result, 0xD00000000000001BLL, 0x80000001DD33D4D0, a6, *(a3 + OBJC_IVAR____TtC23SiriReferenceResolution28RRIntelligencePlatformPuller_viewService));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
      return sub_1DD3368B0();
    }
  }

  return result;
}

id sub_1DD2EA314()
{
  v95 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() mainDisplay];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  [v0 bounds];
  Width = CGRectGetWidth(v96);
  [v1 bounds];
  Height = CGRectGetHeight(v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6AC8, &qword_1DD33A698);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD339380;
  sub_1DD336C00();

  pixelBufferOut = 0xD000000000000016;
  v94 = 0x80000001DD33DC90;
  v5 = sub_1DD3368F0();
  MEMORY[0x1E12AC540](v5);

  MEMORY[0x1E12AC540](0x67696568202C7870, 0xEC000000203A7468);
  v6 = sub_1DD3368F0();
  MEMORY[0x1E12AC540](v6);

  MEMORY[0x1E12AC540](30832, 0xE200000000000000);
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 32) = 0xD000000000000016;
  *(v4 + 40) = 0x80000001DD33DC90;
  sub_1DD336E90();

  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  if (Width >= 9.22337204e18)
  {
    goto LABEL_31;
  }

  v7 = Width % 16;
  if (v7)
  {
    v8 = (16 - v7);
  }

  else
  {
    v8 = 0.0;
  }

  v9 = Width + v8;
  v91 = v1;
  v10 = sub_1DD335CB0();
  v11 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v11))
  {
    v12 = OUTLINED_FUNCTION_50();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_1DD27A000, v10, v11, "Image row-alignment %f", v12, 0xCu);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  v13 = sub_1DD27D80C(0, &qword_1ECCD6AD0, 0x1E696CDE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6AD8, &qword_1DD33A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33A610;
  v15 = *MEMORY[0x1E696CDE0];
  v16 = MEMORY[0x1E69E7DE0];
  *(inited + 32) = *MEMORY[0x1E696CDE0];
  *(inited + 40) = v9;
  v17 = *MEMORY[0x1E696CD90];
  *(inited + 64) = v16;
  *(inited + 72) = v17;
  *(inited + 80) = Height;
  v18 = *MEMORY[0x1E696CD80];
  *(inited + 104) = v16;
  *(inited + 112) = v18;
  *(inited + 120) = v9 * 4.0;
  v19 = *MEMORY[0x1E696CD70];
  *(inited + 144) = v16;
  *(inited + 152) = v19;
  v20 = MEMORY[0x1E696CD78];
  *(inited + 160) = Height * (v9 * 4.0);
  v21 = *v20;
  *(inited + 184) = v16;
  *(inited + 192) = v21;
  v22 = MEMORY[0x1E69E6530];
  *(inited + 200) = 4;
  v23 = *MEMORY[0x1E696CDA0];
  *(inited + 224) = v22;
  *(inited + 232) = v23;
  *(inited + 264) = MEMORY[0x1E69E7668];
  *(inited + 240) = 1111970369;
  type metadata accessor for IOSurfacePropertyKey(0);
  v24 = v15;
  v25 = v17;
  v26 = v18;
  v27 = v19;
  v28 = v21;
  v29 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6AE0, &qword_1DD33A6A8);
  sub_1DD2EC208();
  v30 = sub_1DD336530();
  v31 = sub_1DD2EACB8(v30);
  if (!v31)
  {
    v74 = sub_1DD335CB0();
    v75 = sub_1DD336950();
    if (OUTLINED_FUNCTION_21_0(v75))
    {
      v76 = OUTLINED_FUNCTION_69();
      *v76 = 0;
      OUTLINED_FUNCTION_15_7();
      _os_log_impl(v77, v78, v79, v80, v76, 2u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    return 0;
  }

  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6AE8, &qword_1DD33A6B0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1DD33A620;
  sub_1DD3365D0();
  v34 = MEMORY[0x1E69E6158];
  sub_1DD336BA0();
  v35 = sub_1DD3365D0();
  *(v33 + 96) = v34;
  *(v33 + 72) = v35;
  *(v33 + 80) = v36;
  sub_1DD3365D0();
  OUTLINED_FUNCTION_6_7();
  *(v33 + 168) = v13;
  *(v33 + 144) = v32;
  sub_1DD3365D0();
  v89 = v32;
  OUTLINED_FUNCTION_6_7();
  v37 = [v1 name];
  v38 = sub_1DD3365D0();
  v40 = v39;

  *(v33 + 240) = v34;
  *(v33 + 216) = v38;
  *(v33 + 224) = v40;
  sub_1DD3365D0();
  OUTLINED_FUNCTION_6_7();
  [v1 bounds];
  v41 = MEMORY[0x1E69E7DE0];
  *(v33 + 312) = MEMORY[0x1E69E7DE0];
  *(v33 + 288) = v42;
  sub_1DD3365D0();
  OUTLINED_FUNCTION_6_7();
  [v1 bounds];
  *(v33 + 384) = v41;
  *(v33 + 360) = v43;
  sub_1DD3365D0();
  OUTLINED_FUNCTION_6_7();
  v44 = MEMORY[0x1E69E6370];
  *(v33 + 456) = MEMORY[0x1E69E6370];
  *(v33 + 432) = 1;
  pixelBufferOut = sub_1DD3365D0();
  v94 = v45;
  OUTLINED_FUNCTION_6_7();
  *(v33 + 528) = v44;
  *(v33 + 504) = 1;
  sub_1DD336530();
  v46 = sub_1DD336500();

  LOBYTE(v33) = CARenderServerSnapshot();

  if ((v33 & 1) == 0)
  {
    v47 = sub_1DD335CB0();
    v48 = sub_1DD336950();
    if (OUTLINED_FUNCTION_17_0(v48))
    {
      v49 = OUTLINED_FUNCTION_69();
      *v49 = 0;
      _os_log_impl(&dword_1DD27A000, v47, v48, "Display failed to render.", v49, 2u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }
  }

  v50 = v89;
  [(__IOSurface *)v89 lockWithOptions:1 seed:0, v89];
  pixelBufferOut = 0;
  CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v50, 0, &pixelBufferOut);
  v51 = sub_1DD335CB0();
  v52 = sub_1DD336940();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_50();
    v54 = swift_slowAlloc();
    v92 = v54;
    *v53 = 136315138;
    v55 = sub_1DD336DC0();
    v57 = sub_1DD27DBF0(v55, v56, &v92);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_1DD27A000, v51, v52, "cvBufferResult %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  v58 = pixelBufferOut;
  if (!pixelBufferOut)
  {
    v81 = sub_1DD335CB0();
    v82 = sub_1DD336950();
    if (OUTLINED_FUNCTION_21_0(v82))
    {
      v83 = OUTLINED_FUNCTION_69();
      *v83 = 0;
      OUTLINED_FUNCTION_15_7();
      _os_log_impl(v84, v85, v86, v87, v83, 2u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    return 0;
  }

  v59 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
  v60 = sub_1DD335CB0();
  v61 = sub_1DD336940();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_50();
    v63 = swift_slowAlloc();
    v92 = v63;
    *v62 = 136315138;
    v64 = v59;
    v65 = [v64 description];
    v66 = sub_1DD3365D0();
    v68 = v67;

    v69 = sub_1DD27DBF0(v66, v68, &v92);

    *(v62 + 4) = v69;
    OUTLINED_FUNCTION_15_7();
    _os_log_impl(v70, v71, v72, v73, v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  return v59;
}

id sub_1DD2EACB8(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for IOSurfacePropertyKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6AE0, &qword_1DD33A6A8);
  sub_1DD2EC208();
  v2 = sub_1DD336500();

  v3 = [v1 initWithProperties_];

  return v3;
}

uint64_t sub_1DD2EAD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v76[2] = *MEMORY[0x1E69E9840];
  v9 = sub_1DD2EB5D4(a1);
  v76[0] = 0;
  v74 = [a5 visualIdentifierViewWithError_];
  if (v74)
  {
    v65 = a2;
    v66 = a3;
    v64 = a4;
    v68 = MEMORY[0x1E69E7CC0];
    v75 = MEMORY[0x1E69E7CC0];
    v10 = v9 + 64;
    v11 = 1 << *(v9 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v9 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v76[0];
    v16 = 0;
    v69 = v9;
    v70 = v9 + 64;
    v72 = v14;
LABEL_5:
    while (2)
    {
      while (2)
      {
        v17 = v16;
        if (!v13)
        {
          goto LABEL_7;
        }

        while (1)
        {
          v16 = v17;
LABEL_10:
          v18 = __clz(__rbit64(v13));
          v13 &= v13 - 1;
          v19 = (*(v9 + 48) + 16 * (v18 | (v16 << 6)));
          v20 = *v19;
          v21 = v19[1];

          v22 = sub_1DD3365A0();
          v23 = [v74 personForIdentifier_];

          if (!v23)
          {

            goto LABEL_5;
          }

          v24 = [v23 contactIdentifiers];
          v25 = sub_1DD336810();

          if (v25[2])
          {
            break;
          }

          v17 = v16;
          v14 = v72;
          if (!v13)
          {
LABEL_7:
            while (1)
            {
              v16 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                break;
              }

              if (v16 >= v14)
              {

                swift_unknownObjectRelease();
                return v68;
              }

              v13 = *(v10 + 8 * v16);
              ++v17;
              if (v13)
              {
                goto LABEL_10;
              }
            }

            __break(1u);
            goto LABEL_39;
          }
        }

        v71 = v23;
        v26 = v25[4];
        v27 = v25[5];
        swift_bridgeObjectRetain_n();

        v28 = sub_1DD335CB0();
        v29 = sub_1DD336940();

        v67 = v26;
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v76[0] = swift_slowAlloc();
          *v30 = 136315394;
          *(v30 + 4) = sub_1DD27DBF0(v26, v27, v76);
          *(v30 + 12) = 2080;
          v31 = sub_1DD27DBF0(v20, v21, v76);

          *(v30 + 14) = v31;
          _os_log_impl(&dword_1DD27A000, v28, v29, "Received contact %s from IntelligencePlatform Person View with person identifier %s", v30, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();
        }

        else
        {
        }

        v14 = v72;
        v32 = [v71 phoneNumbers];
        v33 = sub_1DD336810();

        v9 = v69;
        v10 = v70;
        if (!*(v33 + 16))
        {

          continue;
        }

        break;
      }

      v34 = [v71 names];
      v35 = sub_1DD336810();

      if (*(v35 + 16))
      {

        v36 = v27;
        v37 = v67;
      }

      else
      {

        v38 = 0xE000000000000000;
        v76[0] = 0;
        v76[1] = 0xE000000000000000;
        v39 = [v71 nameComponents];
        v40 = [v39 givenNames];

        v41 = sub_1DD336810();
        if (v41[2])
        {
          v42 = v41[4];
          v38 = v41[5];
        }

        else
        {
          v42 = 0;
        }

        MEMORY[0x1E12AC540](v42, v38);

        MEMORY[0x1E12AC540](32, 0xE100000000000000);
        v43 = [v71 nameComponents];
        v44 = [v43 familyNames];

        v45 = sub_1DD336810();
        v37 = v67;
        if (v45[2])
        {
          v47 = v45[4];
          v46 = v45[5];
        }

        else
        {
          v47 = 0;
          v46 = 0xE000000000000000;
        }

        MEMORY[0x1E12AC540](v47, v46);

        v9 = v69;
        v36 = v27;
      }

      v48 = v36;
      sub_1DD2D0230();
      if (!v73)
      {
        v50 = v49;

        v51 = v48;
        v52 = sub_1DD2EBA78(v37, v48, v65, v66, v50, v64);
        MEMORY[0x1E12AC640]();
        if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD336830();
        }

        sub_1DD336860();
        v68 = v75;

        sub_1DD335860();
        v53 = sub_1DD335CB0();
        v54 = sub_1DD336930();

        v63 = v54;
        v55 = os_log_type_enabled(v53, v54);
        v10 = v70;
        if (v55)
        {
          v56 = swift_slowAlloc();
          v76[0] = swift_slowAlloc();
          *v56 = 136315394;
          v57 = sub_1DD27DBF0(v67, v51, v76);

          *(v56 + 4) = v57;
          *(v56 + 12) = 2080;
          v58 = sub_1DD335700();
          v60 = sub_1DD27DBF0(v58, v59, v76);

          *(v56 + 14) = v60;
          v9 = v69;
          _os_log_impl(&dword_1DD27A000, v53, v63, "Pulled on-screen person %s of type %s successfully", v56, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();
        }

        else
        {
        }

        v14 = v72;
        continue;
      }

      break;
    }

LABEL_39:

    swift_unknownObjectRelease();
  }

  else
  {
    v62 = v76[0];

    sub_1DD334670();

    return swift_willThrow();
  }
}

uint64_t sub_1DD2EB5D4(uint64_t a1)
{
  type metadata accessor for CGRect(0);
  v2 = sub_1DD336530();
  v3 = sub_1DD287354(a1);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v47 = a1 & 0xC000000000000001;
    v42 = a1 + 32;
    v43 = a1 & 0xFFFFFFFFFFFFFF8;
    v6 = &selRef_createDirectoryAtURL_withIntermediateDirectories_attributes_error_;
    v44 = v3;
    v45 = a1;
    while (1)
    {
      if (v47)
      {
        v7 = MEMORY[0x1E12ACA60](v5, a1);
      }

      else
      {
        if (v5 >= *(v43 + 16))
        {
          goto LABEL_42;
        }

        v7 = *(v42 + 8 * v5);
      }

      v8 = v7;
      v9 = __OFADD__(v5++, 1);
      if (v9)
      {
        break;
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = [v10 resultItems];
        sub_1DD27D80C(0, &qword_1ECCD6AB8, 0x1E69AE380);
        v12 = sub_1DD336810();

        if (v12 >> 62)
        {
          v13 = sub_1DD336B60();
          if (v13)
          {
LABEL_11:
            v46 = v5;
            v14 = 0;
            v15 = v12 & 0xC000000000000001;
            v48 = v12 & 0xFFFFFFFFFFFFFF8;
            v49 = v12 & 0xC000000000000001;
            v51 = v12;
            v52 = v8;
            v50 = v13;
            while (1)
            {
              if (v15)
              {
                v16 = MEMORY[0x1E12ACA60](v14, v12);
              }

              else
              {
                if (v14 >= *(v48 + 16))
                {
                  goto LABEL_39;
                }

                v16 = *(v12 + 8 * v14 + 32);
              }

              v17 = v16;
              v18 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                break;
              }

              [v16 v6[88]];
              if (v19 >= 0.45)
              {
                v20 = [v17 personIdentifier];
                v21 = sub_1DD3365D0();
                v23 = v22;

                [v17 boundingBox];
                swift_isUniquelyReferenced_nonNull_native();
                v53 = v2;
                v24 = sub_1DD28EFFC();
                if (__OFADD__(*(v2 + 16), (v25 & 1) == 0))
                {
                  goto LABEL_38;
                }

                v26 = v24;
                v27 = v25;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6AC0, &qword_1DD33A690);
                if (sub_1DD336CC0())
                {
                  v28 = sub_1DD28EFFC();
                  if ((v27 & 1) != (v29 & 1))
                  {
                    goto LABEL_43;
                  }

                  v26 = v28;
                }

                if (v27)
                {

                  v2 = v53;
                  OUTLINED_FUNCTION_22_7();
                }

                else
                {
                  v2 = v53;
                  v53[(v26 >> 6) + 8] |= 1 << v26;
                  v30 = (*(v2 + 48) + 16 * v26);
                  *v30 = v21;
                  v30[1] = v23;
                  OUTLINED_FUNCTION_22_7();
                  v31 = *(v2 + 16);
                  v9 = __OFADD__(v31, 1);
                  v32 = v31 + 1;
                  if (v9)
                  {
                    goto LABEL_40;
                  }

                  *(v2 + 16) = v32;
                }

                v6 = &selRef_createDirectoryAtURL_withIntermediateDirectories_attributes_error_;
                v12 = v51;
                v8 = v52;
                v15 = v49;
                v13 = v50;
              }

              else
              {
              }

              ++v14;
              if (v18 == v13)
              {

                v4 = v44;
                a1 = v45;
                v5 = v46;
                goto LABEL_33;
              }
            }

            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            break;
          }
        }

        else
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v13)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
      }

LABEL_33:
      if (v5 == v4)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    result = sub_1DD336E30();
    __break(1u);
  }

  else
  {
LABEL_34:
    v33 = sub_1DD335CB0();
    v34 = sub_1DD336940();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_50();
      v36 = swift_slowAlloc();
      v53 = v36;
      *v35 = 136315138;

      v37 = sub_1DD336520();
      v39 = v38;

      v40 = sub_1DD27DBF0(v37, v39, &v53);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1DD27A000, v33, v34, "Received person identifiers %s from MAD", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    return v2;
  }

  return result;
}

uint64_t sub_1DD2EBA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v51 = a5;
  v48 = a2;
  v49 = a4;
  v53 = a1;
  v54 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v52 = sub_1DD336220();
  OUTLINED_FUNCTION_1_0();
  v50 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_12();
  v46 = v19 - v18;
  OUTLINED_FUNCTION_31_1();
  v20 = sub_1DD335CE0();
  v21 = *(v20 - 8);
  v22 = v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v46 - v26;
  v57.origin.x = OUTLINED_FUNCTION_1_7();
  CGRectGetMinX(v57);
  v58.origin.x = OUTLINED_FUNCTION_1_7();
  CGRectGetMinY(v58);
  v59.origin.x = OUTLINED_FUNCTION_1_7();
  CGRectGetWidth(v59);
  v60.origin.x = OUTLINED_FUNCTION_1_7();
  CGRectGetHeight(v60);
  sub_1DD336140();
  v28 = *(v21 + 104);
  v28(v27, *MEMORY[0x1E69D27F0], v20);
  v29 = *MEMORY[0x1E69D2918];
  sub_1DD336130();
  OUTLINED_FUNCTION_1();
  (*(v30 + 104))(v25, v29);
  v28(v25, *MEMORY[0x1E69D27E8], v20);
  v31 = sub_1DD335E60();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
  v32 = *(v21 + 72);
  v33 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1DD3391F0;
  v35 = v34 + v33;
  v36 = *(v22 + 16);
  v36(v35, v27, v20);
  v36(v35 + v32, v25, v20);

  sub_1DD335860();
  v37 = v46;
  sub_1DD3361E0();
  v38 = sub_1DD336240();
  v39 = v47;
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v38);
  v40 = sub_1DD336190();
  sub_1DD2DB2A4(v39);
  v41 = sub_1DD334830();
  OUTLINED_FUNCTION_1();
  v43 = v55;
  (*(v42 + 16))(v55, v56, v41);
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v41);
  sub_1DD335EF0();
  (*(v50 + 8))(v37, v52);
  v44 = *(v22 + 8);
  v44(v25, v20);
  v44(v27, v20);
  return v40;
}

uint64_t sub_1DD2EBF88()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution28RRIntelligencePlatformPuller_logger;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1DD2EC000()
{
  sub_1DD2EBF88();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for RRIntelligencePlatformPuller(uint64_t a1)
{
  result = qword_1ECCD6AA8;
  if (!qword_1ECCD6AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD2EC0AC(uint64_t a1)
{
  result = sub_1DD335CD0();
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

uint64_t sub_1DD2EC14C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD2B2DD0;

  return sub_1DD2E9018();
}

unint64_t sub_1DD2EC208()
{
  result = qword_1ECCD63B8;
  if (!qword_1ECCD63B8)
  {
    type metadata accessor for IOSurfacePropertyKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD63B8);
  }

  return result;
}

uint64_t sub_1DD2EC260(uint64_t a1)
{
  v4 = sub_1DD334830();
  OUTLINED_FUNCTION_36(v4);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DD2BE86C;

  return sub_1DD2E9A24(a1, v7, v8, v9, v10, v11, v1 + v6);
}

uint64_t sub_1DD2EC378(int a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  OUTLINED_FUNCTION_69_0(v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = sub_1DD334830();
  OUTLINED_FUNCTION_36(v10);
  v12 = *(v2 + 16);
  v13 = *(v2 + v9);
  v14 = v2 + ((v9 + *(v11 + 80) + 8) & ~*(v11 + 80));

  return sub_1DD2EA034(a1, a2, v12, v2 + v7, v13, v14);
}

id sub_1DD2EC470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_1DD3365A0();
  v13 = [a7 performRequests:a1 onCIImage:a2 withOrientation:a3 andIdentifier:v12 completionHandler:a6];

  return v13;
}

uint64_t sub_1DD2EC4F0(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DD27D80C(0, qword_1ECCD6AF8, 0x1E69AE3C0);
  v3 = sub_1DD336810();

  return v3;
}

uint64_t sub_1DD2EC560(int a1, void *a2)
{
  v5 = sub_1DD334830();
  OUTLINED_FUNCTION_36(v5);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return sub_1DD2E8CC4(a1, a2, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD2EC5EC()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

uint64_t sub_1DD2EC694()
{
  sub_1DD2EC5EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD2EC6EC()
{
  v1 = *v0;
  if (*v0)
  {
    *v0 = *(v1 + *(*v1 + 104));
    sub_1DD335860();
  }

  return v1;
}

uint64_t sub_1DD2EC734@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD2EC6EC();
  *a1 = result;
  return result;
}

uint64_t sub_1DD2EC764()
{

  return v0;
}

uint64_t sub_1DD2EC78C()
{
  sub_1DD2EC764();
  v0 = OUTLINED_FUNCTION_0_11();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1DD2EC7B8()
{
  OUTLINED_FUNCTION_0_11();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_1DD2EC7DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DD2EC75C();

  *a1 = v2;
  return result;
}

uint64_t sub_1DD2EC828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DoublyLinkList(0, *(a1 + 80), a3, a4);

  return MEMORY[0x1EEE69170](v5, a2);
}

void sub_1DD2EC868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DoublyLinkList(0, *(a4 + 80), a3, a4);

  JUMPOUT(0x1E12AC5F0);
}

uint64_t RRCache.__allocating_init(capacity:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_11();
  v2 = swift_allocObject();
  RRCache.init(capacity:)(a1, v3, v4, v5);
  return v2;
}

uint64_t *RRCache.init(capacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v4[2] = a1;
  v6 = *(v5 + 88);
  type metadata accessor for DoublyLinkList(0, v6, a3, a4);
  v4[3] = sub_1DD2EC7B8();
  type metadata accessor for Node(255, v6, v7, v8);
  swift_getTupleTypeMetadata2();
  sub_1DD336840();
  v4[4] = sub_1DD336530();
  return v4;
}

uint64_t RRCache.deinit()
{

  return v0;
}

uint64_t RRCache.__deallocating_deinit()
{
  RRCache.deinit();
  v0 = OUTLINED_FUNCTION_0_11();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD2ECAD4(uint64_t a1)
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

uint64_t sub_1DD2ECC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DD2ECCE0(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1DD2ECD34(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD2ECDA0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD3365D0();
  v4 = v3;
  if (v2 == sub_1DD3365D0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DD336E00();
  }

  return v7 & 1;
}

uint64_t RRNowPlayingMediaPuller.__allocating_init()()
{
  v0 = swift_allocObject();
  RRNowPlayingMediaPuller.init()();
  return v0;
}

uint64_t RRNowPlayingMediaPuller.init()()
{
  v1 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v7 = v6 - v5;
  type metadata accessor for RRNowPlayingMediaPuller(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D00, &unk_1DD33A8A0);
  sub_1DD336630();
  sub_1DD335CC0();
  (*(v3 + 32))(v0 + OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_logger, v7, v1);
  v8 = [objc_opt_self() localDestination];
  v9 = [objc_allocWithZone(MEMORY[0x1E69B0A90]) initWithDestination_];

  [v9 setRequestPlaybackQueue_];
  [v9 setRequestPlaybackState_];
  [v9 setRequestClientProperties_];
  v10 = [objc_allocWithZone(MEMORY[0x1E69B0A88]) initWithConfiguration_];

  *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_controller) = v10;
  return v0;
}

uint64_t type metadata accessor for RRNowPlayingMediaPuller(uint64_t a1)
{
  result = qword_1EE028D70;
  if (!qword_1EE028D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD2ED070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v38 = a3;
  v36 = a1;
  v5 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD335CA0();
  OUTLINED_FUNCTION_1_0();
  v39 = v12;
  v40 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v15 = v14 - v13;
  if (qword_1EE0277E0 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_1EE0277E0);
  }

  v16 = qword_1EE02A200;
  sub_1DD335C90();
  sub_1DD336A40();
  v17 = qword_1EE02A200;
  v18 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5();
  sub_1DD335C70();

  v35 = OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_logger;
  v19 = sub_1DD335CB0();
  v20 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v20))
  {
    v21 = OUTLINED_FUNCTION_69();
    *v21 = 0;
    _os_log_impl(&dword_1DD27A000, v19, v20, "Entering RRNowPlayingMediaPuller...", v21, 2u);
    OUTLINED_FUNCTION_54();
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  v23 = *(v4 + OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_controller);
  (*(v7 + 16))(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v5);
  v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v4;
  (*(v7 + 32))(v25 + v24, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v26 = (v25 + ((v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = v38;
  *v26 = v37;
  v26[1] = v27;
  aBlock[4] = sub_1DD2ED5BC;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD2B5F58;
  aBlock[3] = &block_descriptor_6;
  v28 = _Block_copy(aBlock);
  v29 = v23;
  sub_1DD335860();
  sub_1DD335860();
  sub_1DD335860();

  [v29 performRequestWithCompletion_];
  _Block_release(v28);

  v30 = sub_1DD335CB0();
  v31 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v31))
  {
    v32 = OUTLINED_FUNCTION_69();
    *v32 = 0;
    _os_log_impl(&dword_1DD27A000, v30, v31, "Exiting RRNowPlayingMediaPuller...", v32, 2u);
    OUTLINED_FUNCTION_54();
  }

  sub_1DD336A30();
  v33 = qword_1EE02A200;
  sub_1DD335C80();

  return (*(v39 + 8))(v15, v40);
}

uint64_t sub_1DD2ED498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void))
{
  if (a1)
  {
    v10 = sub_1DD2ED668();
    if (v10)
    {
      v11 = v10;
      v12 = sub_1DD2ED728();
      if (v13)
      {
        v14 = sub_1DD2EDE28(v11, [a1 playbackState], v12, v13, a5);

        swift_beginAccess();
        *(a3 + 16) = v14;
      }

      else
      {
      }
    }
  }

  swift_beginAccess();

  a6(v15, 0);
}

uint64_t sub_1DD2ED5BC(void *a1, uint64_t a2)
{
  v5 = sub_1DD334830();
  OUTLINED_FUNCTION_69_0(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DD2ED498(a1, a2, v11, v12, v2 + v10, v13);
}

uint64_t sub_1DD2ED668()
{
  v1 = [v0 playbackQueue];
  if (!v1)
  {
    return 0;
  }

  v2 = sub_1DD2F0600(v1);
  v3 = v2;
  if (v2)
  {
    if (sub_1DD287354(v2))
    {
      sub_1DD2A34A0();
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1E12ACA60](0, v3);
      }

      else
      {
        v4 = *(v3 + 32);
      }

      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v3 = [v5 metadata];
  }

  return v3;
}

id sub_1DD2ED728()
{
  result = [v0 playerPath];
  if (result)
  {
    v2 = result;
    v3 = [result client];

    if (v3)
    {
      return sub_1DD2F0668(v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD2ED798()
{
  OUTLINED_FUNCTION_4();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_1DD335CA0();
  v1[5] = v3;
  OUTLINED_FUNCTION_69_0(v3);
  v1[6] = v4;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD2ED84C, 0, 0);
}

uint64_t sub_1DD2ED84C()
{
  if (qword_1EE0277E0 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_1EE0277E0);
  }

  v1 = qword_1EE02A200;
  sub_1DD335C90();
  sub_1DD336A40();
  v2 = qword_1EE02A200;
  OUTLINED_FUNCTION_5();
  sub_1DD335C70();

  v3 = sub_1DD335CB0();
  v4 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v4))
  {
    v5 = OUTLINED_FUNCTION_69();
    *v5 = 0;
    _os_log_impl(&dword_1DD27A000, v3, v4, "Entering RRNowPlayingMediaPuller...", v5, 2u);
    OUTLINED_FUNCTION_54();
  }

  v10 = *(v0 + 24);

  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v6[1] = vextq_s8(v10, v10, 8uLL);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A8, "be");
  *v7 = v0;
  v7[1] = sub_1DD2833B4;

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0x3A7461286C6C7570, 0xE900000000000029, sub_1DD2F03E4, v6, v8);
}

void sub_1DD2EDA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D10, &unk_1DD33A940);
  v17 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = sub_1DD334830();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_controller);
  (*(v9 + 16))(v11, v18, v8);
  (*(v5 + 16))(v7, v19, v4);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = (v10 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  (*(v9 + 32))(v14 + v12, v11, v8);
  (*(v5 + 32))(v14 + v13, v7, v17);
  aBlock[4] = sub_1DD2F06D8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD2B5F58;
  aBlock[3] = &block_descriptor_22_0;
  v15 = _Block_copy(aBlock);
  v16 = v20;
  sub_1DD335860();

  [v16 performRequestWithCompletion_];
  _Block_release(v15);
}

void sub_1DD2EDD14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = sub_1DD2ED668();
    if (v6)
    {
      v7 = v6;
      v8 = sub_1DD2ED728();
      if (v9)
      {
        sub_1DD2EDE28(v7, [a1 playbackState], v8, v9, a4);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D10, &unk_1DD33A940);
        sub_1DD3368B0();

        return;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D10, &unk_1DD33A940);
  sub_1DD3368B0();
}

uint8_t *sub_1DD2EDE28(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v338 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D08, &unk_1DD33A910);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6_1(v12);
  v334 = sub_1DD335130();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v299 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v299 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6780, &unk_1DD339730);
  OUTLINED_FUNCTION_36(v21);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_30();
  v317 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6788, &unk_1DD33A920);
  OUTLINED_FUNCTION_36(v24);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6_1(v26);
  v316 = sub_1DD334C10();
  OUTLINED_FUNCTION_1_0();
  v315 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_1(v30 - v29);
  v323 = sub_1DD334C50();
  OUTLINED_FUNCTION_1_0();
  v322 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_1(v34 - v33);
  v324 = sub_1DD3350F0();
  OUTLINED_FUNCTION_1_0();
  v313 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v38);
  v321 = sub_1DD3350E0();
  OUTLINED_FUNCTION_1_0();
  v326 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_32_1();
  v309 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67C8, &unk_1DD339830);
  v44 = OUTLINED_FUNCTION_36(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_32_1();
  v342 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67D0, &unk_1DD33A930);
  v49 = OUTLINED_FUNCTION_36(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_32_1();
  v341 = v54;
  v347 = MEMORY[0x1E69E7CC0];
  v55 = sub_1DD2F0088(a1);
  v330 = v20;
  v329 = a5;
  v339 = v5;
  if (!v56)
  {
    v55 = sub_1DD2BAB88(a1, &selRef_contentIdentifier);
    if (!v56)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  v57 = v55;
  v58 = v56;
  v306 = v18;
  v340 = a4;
  v335 = v14;
  type metadata accessor for RRNowPlayingMediaPuller(0);
  v59 = v341;
  sub_1DD2EFA94(a1);
  v327 = sub_1DD2D340C(v57, v58);
  v331 = v60;
  v61 = v342;
  sub_1DD2F0130(a2 | ((HIDWORD(a2) & 1) << 32));
  v336 = sub_1DD2BAB88(a1, &selRef_title);
  v63 = v62;
  v64 = sub_1DD2BAB88(a1, &selRef_contentIdentifier);
  v66 = v65;
  v67 = sub_1DD2F0088(a1);
  v68 = a1;
  v69 = v67;
  v71 = v70;
  v337 = v68;
  v72 = sub_1DD2BAB88(v68, &selRef_brandIdentifier);
  v328 = v57;
  v332 = v58;
  sub_1DD2D38B8(v57, v58, v338, v340, v59, v61, v336, v63, v64, v66, v69, v71, v72, v73, 0, 0, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310);
  v75 = v74;

  sub_1DD335860();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_29_4();
  sub_1DD2EFCBC(v76, v77, v78, v79, v80, v81);
  v336 = 0;

  v327 = v75;

  MEMORY[0x1E12AC640](v117);
  OUTLINED_FUNCTION_26_6();
  v120 = *(v118 + 16);
  v119 = *(v118 + 24);
  v121 = &unk_1EE02A000;
  if (v120 >= v119 >> 1)
  {
    OUTLINED_FUNCTION_45(v119);
    sub_1DD336830();
  }

  sub_1DD336860();
  v100 = v347;
  v300 = OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_logger;
  v122 = sub_1DD335CB0();
  v123 = sub_1DD336930();
  v124 = OUTLINED_FUNCTION_51(v123);
  v101 = v335;
  if (v124)
  {
    v125 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_122(v125);
    OUTLINED_FUNCTION_37(&dword_1DD27A000, v126, v127, "Pulled media item successfully");
    OUTLINED_FUNCTION_54();
  }

  v128 = OUTLINED_FUNCTION_31();
  v129 = sub_1DD2F009C(v128);
  if (v130)
  {
    v301 = v129;
    v305 = v130;
    v299 = sub_1DD2D340C(v129, v130);
    v302 = v131;
    v132 = v326;
    v133 = v325;
    v134 = v321;
    (*(v326 + 104))(v325, *MEMORY[0x1E69D1FF0], v321);
    v135 = OUTLINED_FUNCTION_5_6();
    __swift_storeEnumTagSinglePayload(v135, v136, v137, v134);
    v138 = OUTLINED_FUNCTION_31();
    v331 = sub_1DD2BAB88(v138, v139);
    v304 = v140;
    v141 = sub_1DD335260();
    OUTLINED_FUNCTION_51_1(v141);
    v142 = sub_1DD335250();
    v143 = v133;
    v144 = v318;
    sub_1DD27F164(v143, v318, &qword_1ECCD67D0, &unk_1DD33A930);
    v145 = OUTLINED_FUNCTION_64();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v145, v146, v134);
    v148 = v324;
    v303 = v142;
    if (EnumTagSinglePayload == 1)
    {
      sub_1DD296084(v144, &qword_1ECCD67D0, &unk_1DD33A930);
    }

    else
    {
      v161 = v309;
      (*(v132 + 32))(v309, v144, v134);
      v162 = sub_1DD335560();
      OUTLINED_FUNCTION_51_1(v162);
      sub_1DD335550();
      sub_1DD335540();
      sub_1DD335860();
      sub_1DD335220();
      OUTLINED_FUNCTION_44_4();
      (*(v326 + 8))(v161, v134);
    }

    v163 = v319;
    sub_1DD27F164(v342, v319, &qword_1ECCD67C8, &unk_1DD339830);
    v164 = OUTLINED_FUNCTION_64();
    if (__swift_getEnumTagSinglePayload(v164, v165, v148) == 1)
    {
      sub_1DD296084(v163, &qword_1ECCD67C8, &unk_1DD339830);
    }

    else
    {
      v166 = v313;
      OUTLINED_FUNCTION_36_6();
      v142 = v310;
      v167(v310, v163, v148);
      v168 = sub_1DD335590();
      OUTLINED_FUNCTION_51_1(v168);
      sub_1DD335580();
      sub_1DD335570();
      sub_1DD335860();
      sub_1DD335230();
      OUTLINED_FUNCTION_44_4();
      (*(v166 + 8))(v142, v148);
    }

    v169 = v303;
    if (v304)
    {
      sub_1DD335240();
    }

    OUTLINED_FUNCTION_17_9();
    sub_1DD334C30();
    sub_1DD334BA0();
    (*(v322 + 8))(v142, v323);
    v170 = v169;
    if (qword_1EE0275F0 != -1)
    {
      OUTLINED_FUNCTION_4_1(&qword_1EE0275F0);
    }

    v331 = v100;
    sub_1DD28191C(&unk_1EE02A1A8, &v343);
    v171 = v344;
    v172 = v345;
    __swift_project_boxed_opaque_existential_1(&v343, v344);
    LOBYTE(v171) = (*(v172 + 40))(v171, v172);
    __swift_destroy_boxed_opaque_existential_1(&v343);
    v101 = v335;
    if (v171)
    {
      sub_1DD334BF0();
      v100 = v314;
      OUTLINED_FUNCTION_24();
      __swift_storeEnumTagSinglePayload(v173, v174, v175, v176);
      sub_1DD3356D0();
      OUTLINED_FUNCTION_24();
      __swift_storeEnumTagSinglePayload(v177, v178, v179, v180);
      v181 = v305;

      OUTLINED_FUNCTION_16_6();
      v302 = v181;
      v170 = v303;
      OUTLINED_FUNCTION_15_8();
      sub_1DD334C00();
      sub_1DD334BB0();
      (*(v315 + 8))(1, v316);
    }

    v182 = MEMORY[0x1E12AABB0](v170);
    if (!v182)
    {
      sub_1DD2BAF38();
      v190 = swift_allocError();
      OUTLINED_FUNCTION_41_6(v190, v191);
      OUTLINED_FUNCTION_56();

      sub_1DD296084(v325, &qword_1ECCD67D0, &unk_1DD33A930);
      goto LABEL_48;
    }

    v100 = v182;

    sub_1DD296084(v325, &qword_1ECCD67D0, &unk_1DD33A930);

    OUTLINED_FUNCTION_29_4();
    v183 = v336;
    sub_1DD2EFCBC(v184, v185, v186, v187, v188, v189);
    OUTLINED_FUNCTION_56();
    v336 = v183;
    if (v183)
    {

      v101 = v336;
LABEL_48:
      v336 = 0;
      OUTLINED_FUNCTION_27_6();
      OUTLINED_FUNCTION_32_7();
      goto LABEL_4;
    }

    MEMORY[0x1E12AC640](v192);
    OUTLINED_FUNCTION_26_6();
    v195 = *(v193 + 16);
    v194 = *(v193 + 24);
    if (v195 >= v194 >> 1)
    {
      OUTLINED_FUNCTION_45(v194);
      sub_1DD336830();
    }

    sub_1DD336860();
    v196 = v347;
    v197 = sub_1DD335CB0();
    v198 = sub_1DD336930();
    if (OUTLINED_FUNCTION_51(v198))
    {
      v199 = OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_122(v199);
      OUTLINED_FUNCTION_37(&dword_1DD27A000, v200, v201, "Pulled album media item successfully");
      OUTLINED_FUNCTION_54();
    }

    v103 = v333;
    v100 = v196;
  }

  else
  {
    v103 = v333;
  }

  v202 = v324;
  v203 = OUTLINED_FUNCTION_31();
  v204 = sub_1DD2F00B0(v203);
  if (v205)
  {
    v206 = v205;
    v331 = v100;
    v335 = v101;
    v325 = v204;
    v324 = sub_1DD2D340C(v204, v205);
    v208 = v207;
    v209 = v326;
    v210 = v320;
    v211 = v321;
    (*(v326 + 104))(v320, *MEMORY[0x1E69D2008], v321);
    v212 = OUTLINED_FUNCTION_5_6();
    __swift_storeEnumTagSinglePayload(v212, v213, v214, v211);
    v215 = OUTLINED_FUNCTION_31();
    v319 = sub_1DD2BAB88(v215, v216);
    v218 = v217;
    v219 = sub_1DD335260();
    OUTLINED_FUNCTION_51_1(v219);
    v100 = sub_1DD335250();
    v220 = v210;
    v221 = v311;
    sub_1DD27F164(v220, v311, &qword_1ECCD67D0, &unk_1DD33A930);
    v222 = OUTLINED_FUNCTION_64();
    if (__swift_getEnumTagSinglePayload(v222, v223, v211) == 1)
    {
      sub_1DD296084(v221, &qword_1ECCD67D0, &unk_1DD33A930);
    }

    else
    {
      OUTLINED_FUNCTION_36_6();
      v318 = v208;
      v224 = v218;
      v225 = v307;
      v226(v307, v221, v211);
      v227 = sub_1DD335560();
      OUTLINED_FUNCTION_51_1(v227);
      sub_1DD335550();
      sub_1DD335540();
      sub_1DD335860();
      sub_1DD335220();
      OUTLINED_FUNCTION_44_4();
      v228 = v225;
      v218 = v224;
      (*(v209 + 8))(v228, v211);
    }

    v229 = v312;
    sub_1DD27F164(v342, v312, &qword_1ECCD67C8, &unk_1DD339830);
    v230 = OUTLINED_FUNCTION_64();
    if (__swift_getEnumTagSinglePayload(v230, v231, v202) == 1)
    {
      sub_1DD296084(v229, &qword_1ECCD67C8, &unk_1DD339830);
    }

    else
    {
      v232 = v313;
      OUTLINED_FUNCTION_36_6();
      v233 = v308;
      v234(v308, v229, v202);
      v235 = sub_1DD335590();
      OUTLINED_FUNCTION_51_1(v235);
      sub_1DD335580();
      sub_1DD335570();
      sub_1DD335860();
      sub_1DD335230();
      OUTLINED_FUNCTION_44_4();
      (*(v232 + 8))(v233, v202);
    }

    v236 = v325;
    if (v218)
    {
      sub_1DD335240();
    }

    OUTLINED_FUNCTION_17_9();
    sub_1DD334C30();
    sub_1DD334BA0();
    (*(v322 + 8))(v202, v323);
    if (qword_1EE0275F0 != -1)
    {
      OUTLINED_FUNCTION_4_1(&qword_1EE0275F0);
    }

    sub_1DD28191C(&unk_1EE02A1A8, &v343);
    v237 = v344;
    v101 = v345;
    __swift_project_boxed_opaque_existential_1(&v343, v344);
    LOBYTE(v237) = (*(v101 + 40))(v237, v101);
    __swift_destroy_boxed_opaque_existential_1(&v343);
    if (v237)
    {
      sub_1DD334BF0();
      OUTLINED_FUNCTION_24();
      __swift_storeEnumTagSinglePayload(v238, v239, v240, v241);
      sub_1DD3356D0();
      v101 = v317;
      OUTLINED_FUNCTION_24();
      __swift_storeEnumTagSinglePayload(v242, v243, v244, v245);

      OUTLINED_FUNCTION_16_6();
      v305 = v236;
      v306 = v206;
      OUTLINED_FUNCTION_15_8();
      sub_1DD334C00();
      sub_1DD334BB0();
      (*(v315 + 8))(1, v316);
    }

    if (MEMORY[0x1E12AABB0](v100))
    {

      sub_1DD296084(v320, &qword_1ECCD67D0, &unk_1DD33A930);

      OUTLINED_FUNCTION_32_7();
      OUTLINED_FUNCTION_29_4();
      v246 = v336;
      sub_1DD2EFCBC(v247, v248, v249, v250, v251, v252);
      v121 = &unk_1EE02A000;
      v336 = v246;
      if (!v246)
      {

        MEMORY[0x1E12AC640](v283);
        OUTLINED_FUNCTION_26_6();
        v286 = *(v284 + 16);
        v285 = *(v284 + 24);
        if (v286 >= v285 >> 1)
        {
          OUTLINED_FUNCTION_45(v285);
          sub_1DD336830();
        }

        sub_1DD336860();
        v100 = v347;
        v287 = sub_1DD335CB0();
        v288 = sub_1DD336930();
        if (OUTLINED_FUNCTION_51(v288))
        {
          v289 = OUTLINED_FUNCTION_69();
          OUTLINED_FUNCTION_122(v289);
          OUTLINED_FUNCTION_37(&dword_1DD27A000, v290, v291, "Pulled artist media item successfully");
          OUTLINED_FUNCTION_54();
        }

        OUTLINED_FUNCTION_56();

        sub_1DD296084(v342, &qword_1ECCD67C8, &unk_1DD339830);
        sub_1DD296084(v341, &qword_1ECCD67D0, &unk_1DD33A930);
        goto LABEL_13;
      }

      v101 = v336;
      v336 = 0;
      OUTLINED_FUNCTION_27_6();
    }

    else
    {
      sub_1DD2BAF38();
      v253 = swift_allocError();
      OUTLINED_FUNCTION_41_6(v253, v254);

      OUTLINED_FUNCTION_56();

      sub_1DD296084(v320, &qword_1ECCD67D0, &unk_1DD33A930);
      v336 = 0;
      OUTLINED_FUNCTION_32_7();
      OUTLINED_FUNCTION_27_6();
      v121 = &unk_1EE02A000;
    }

LABEL_4:
    sub_1DD296084(v342, &qword_1ECCD67C8, &unk_1DD339830);
    sub_1DD296084(v341, &qword_1ECCD67D0, &unk_1DD33A930);
    v343 = v101;
    v82 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
    if (swift_dynamicCast() && v346 == 1)
    {

      v83 = sub_1DD335CB0();
      v84 = sub_1DD336950();
      if (OUTLINED_FUNCTION_51(v84))
      {
        v85 = OUTLINED_FUNCTION_69();
        OUTLINED_FUNCTION_122(v85);
        OUTLINED_FUNCTION_37(&dword_1DD27A000, v86, v87, "Failed to convert media item to USO");
        OUTLINED_FUNCTION_54();
      }

      v88 = v343;
    }

    else
    {

      v89 = v101;
      v90 = sub_1DD335CB0();
      v91 = sub_1DD336950();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = v100;
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v343 = v94;
        *v93 = 136315138;
        swift_getErrorValue();
        v95 = sub_1DD336E40();
        v97 = sub_1DD27DBF0(v95, v96, &v343);

        *(v93 + 4) = v97;
        OUTLINED_FUNCTION_40_7(&dword_1DD27A000, v98, v99, "Failed to build RRAnnotatedEntity from media item. Error: %s");
        __swift_destroy_boxed_opaque_existential_1(v94);
        OUTLINED_FUNCTION_54();
        v100 = v92;
        OUTLINED_FUNCTION_54();

LABEL_13:
        v101 = v335;
        v102 = v334;
        v103 = v333;
        goto LABEL_14;
      }

      v88 = v101;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_56();

  sub_1DD296084(v342, &qword_1ECCD67C8, &unk_1DD339830);
  sub_1DD296084(v341, &qword_1ECCD67D0, &unk_1DD33A930);
  v102 = v334;
  OUTLINED_FUNCTION_32_7();
LABEL_14:
  sub_1DD2EFBAC(v337);
  v104 = OUTLINED_FUNCTION_64();
  if (__swift_getEnumTagSinglePayload(v104, v105, v102) == 1)
  {

    sub_1DD296084(v103, &qword_1ECCD6D08, &unk_1DD33A910);
  }

  else
  {
    OUTLINED_FUNCTION_36_6();
    v106 = v330;
    v107(v330, v103, v102);
    v108 = v336;
    sub_1DD2D4960();
    if (v108)
    {
      (*(v101 + 8))(v106, v102);

      v343 = v108;
      v263 = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
      v264 = swift_dynamicCast();
      v265 = v339;
      if (v264 && v346 == 1)
      {

        v266 = v265 + v121[188];
        v267 = sub_1DD335CB0();
        v268 = sub_1DD336950();
        if (OUTLINED_FUNCTION_51(v268))
        {
          v269 = OUTLINED_FUNCTION_69();
          *v269 = 0;
          _os_log_impl(&dword_1DD27A000, v267, v266, "Failed to convert attachment to USO", v269, 2u);
          OUTLINED_FUNCTION_54();
        }

        v270 = v343;
      }

      else
      {

        v271 = v108;
        v272 = sub_1DD335CB0();
        v273 = sub_1DD336950();

        if (os_log_type_enabled(v272, v273))
        {
          v274 = v100;
          v275 = swift_slowAlloc();
          v276 = swift_slowAlloc();
          v343 = v276;
          *v275 = 136315138;
          swift_getErrorValue();
          v277 = sub_1DD336E40();
          v279 = sub_1DD27DBF0(v277, v278, &v343);

          *(v275 + 4) = v279;
          OUTLINED_FUNCTION_40_7(&dword_1DD27A000, v280, v281, "Failed to build RRAnnotatedEntity from attachment. Error: %s");
          __swift_destroy_boxed_opaque_existential_1(v276);
          OUTLINED_FUNCTION_54();
          v100 = v274;
          OUTLINED_FUNCTION_54();

          return v100;
        }

        v270 = v108;
      }

      return v100;
    }

    v110 = v109;
    OUTLINED_FUNCTION_29_4();
    sub_1DD2EFCBC(v111, v112, v113, v114, v115, v116);
    v342 = v110;

    MEMORY[0x1E12AC640](v149);
    OUTLINED_FUNCTION_26_6();
    v100 = *(v150 + 16);
    v151 = *(v150 + 24);
    if (v100 >= v151 >> 1)
    {
      OUTLINED_FUNCTION_45(v151);
      sub_1DD336830();
    }

    sub_1DD336860();
    v331 = v347;
    v152 = OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_logger;
    v153 = v339 + OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_logger;
    v154 = sub_1DD335CB0();
    v155 = sub_1DD336930();
    v156 = OUTLINED_FUNCTION_51(v155);
    v157 = v337;
    if (v156)
    {
      v100 = OUTLINED_FUNCTION_69();
      *v100 = 0;
      _os_log_impl(&dword_1DD27A000, v154, v153, "Pulled attachment successfully", v100, 2u);
      OUTLINED_FUNCTION_54();
    }

    sub_1DD2F009C(v157);
    if (v158)
    {
      v341 = v152;
      v159 = v306;
      v160 = v334;
      (*(v101 + 104))(v306, *MEMORY[0x1E69D20C0], v334);
      sub_1DD2D4960();
      v255 = v159;
      v256 = *(v101 + 8);
      v256(v255, v160);
      OUTLINED_FUNCTION_29_4();
      sub_1DD2EFCBC(v257, v258, v259, v260, v261, v262);

      MEMORY[0x1E12AC640](v292);
      OUTLINED_FUNCTION_26_6();
      v295 = *(v293 + 16);
      v294 = *(v293 + 24);
      if (v295 >= v294 >> 1)
      {
        OUTLINED_FUNCTION_45(v294);
        sub_1DD336830();
      }

      sub_1DD336860();
      v100 = v347;
      v296 = sub_1DD335CB0();
      v297 = sub_1DD336930();
      if (OUTLINED_FUNCTION_17_0(v297))
      {
        v298 = OUTLINED_FUNCTION_69();
        *v298 = 0;
        _os_log_impl(&dword_1DD27A000, v296, v297, "Pulled attachment successfully", v298, 2u);
        OUTLINED_FUNCTION_54();
      }

      v256(v330, v334);
    }

    else
    {
      (*(v101 + 8))(v330, v334);

      OUTLINED_FUNCTION_27_6();
    }
  }

  return v100;
}

uint64_t sub_1DD2EFA94(void *a1)
{
  if (OUTLINED_FUNCTION_42_6(a1) == 1 || OUTLINED_FUNCTION_25_2() == 4 || OUTLINED_FUNCTION_25_2() == 6 || OUTLINED_FUNCTION_25_2() == 2 || OUTLINED_FUNCTION_25_2() == 3 || [v1 mediaType] == 2)
  {
    v2 = sub_1DD3350E0();
    OUTLINED_FUNCTION_1();
    v3 = OUTLINED_FUNCTION_23_7();
    v4(v3);
    v5 = OUTLINED_FUNCTION_5_6();
    v8 = v2;
  }

  else
  {
    sub_1DD3350E0();
    v5 = OUTLINED_FUNCTION_10_7();
  }

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1DD2EFBAC(void *a1)
{
  if (OUTLINED_FUNCTION_42_6(a1) == 1 || OUTLINED_FUNCTION_25_2() == 4 || OUTLINED_FUNCTION_25_2() == 2 || OUTLINED_FUNCTION_25_2() == 3 || [v1 mediaType] == 2 || OUTLINED_FUNCTION_25_2())
  {
    v2 = sub_1DD335130();
    OUTLINED_FUNCTION_1();
    v3 = OUTLINED_FUNCTION_23_7();
    v4(v3);
    v5 = OUTLINED_FUNCTION_5_6();
    v8 = v2;
  }

  else
  {
    sub_1DD335130();
    v5 = OUTLINED_FUNCTION_10_7();
  }

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

char *sub_1DD2EFCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a6;
  v49 = a4;
  v50 = a5;
  v51 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_30();
  v47 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v44 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v14);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  sub_1DD336220();
  OUTLINED_FUNCTION_1_0();
  v45 = v19;
  v46 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v22 = v21 - v20;
  v52 = a1;
  v53 = a2;
  sub_1DD335E60();
  OUTLINED_FUNCTION_24();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
  v27 = sub_1DD335CE0();
  OUTLINED_FUNCTION_1_0();
  v29 = v28;
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1DD339380;
  v32 = *MEMORY[0x1E69D2908];
  sub_1DD336130();
  OUTLINED_FUNCTION_1();
  (*(v33 + 104))(v31 + v30, v32);
  (*(v29 + 104))(v31 + v30, *MEMORY[0x1E69D27E8], v27);
  swift_bridgeObjectRetain_n();

  sub_1DD335860();
  v34 = v54;
  sub_1DD3361B0();
  if (!v34)
  {
    sub_1DD336240();
    v35 = v44;
    OUTLINED_FUNCTION_24();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
    v17 = sub_1DD336190();
    sub_1DD296084(v35, &qword_1ECCD6348, &unk_1DD338E20);
    v40 = sub_1DD334830();
    OUTLINED_FUNCTION_1();
    v42 = v47;
    (*(v41 + 16))(v47, v48, v40);
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v40);
    sub_1DD335F50();
    (*(v45 + 8))(v22, v46);
  }

  return v17;
}

uint64_t sub_1DD2F00C4(void *a1, SEL *a2, SEL *a3)
{
  if (![a1 *a2])
  {
    return 0;
  }

  [a1 *a3];
  return sub_1DD336DC0();
}

uint64_t sub_1DD2F0130(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
LABEL_3:
    sub_1DD3350F0();
    v1 = OUTLINED_FUNCTION_10_7();
  }

  else
  {
    switch(a1)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        v5 = sub_1DD3350F0();
        OUTLINED_FUNCTION_1();
        v6 = OUTLINED_FUNCTION_23_7();
        v7(v6);
        v1 = OUTLINED_FUNCTION_5_6();
        v4 = v5;
        break;
      default:
        goto LABEL_3;
    }
  }

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t RRNowPlayingMediaPuller.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_logger;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t RRNowPlayingMediaPuller.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution23RRNowPlayingMediaPuller_logger;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1DD2F0328()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD2836AC;

  return sub_1DD2ED798();
}

uint64_t sub_1DD2F03F4(uint64_t a1)
{
  result = sub_1DD335CD0();
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

uint64_t dispatch thunk of RRNowPlayingMediaPuller.pull(at:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD29B568;

  return v6(a1);
}

uint64_t sub_1DD2F0600(void *a1)
{
  v2 = [a1 contentItems];

  if (!v2)
  {
    return 0;
  }

  sub_1DD2F07C0();
  v3 = sub_1DD336810();

  return v3;
}

uint64_t sub_1DD2F0668(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD3365D0();

  return v3;
}

void sub_1DD2F06D8(void *a1, uint64_t a2)
{
  v5 = sub_1DD334830();
  OUTLINED_FUNCTION_69_0(v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D10, &unk_1DD33A940);
  OUTLINED_FUNCTION_36(v8);
  v9 = *(v2 + 16);

  sub_1DD2EDD14(a1, a2, v9, v2 + v7);
}

unint64_t sub_1DD2F07C0()
{
  result = qword_1EE027558;
  if (!qword_1EE027558)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE027558);
  }

  return result;
}

uint64_t sub_1DD2F0810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DD336350();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1DD2F08B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D18, &qword_1DD33A960);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD33A950;
  if (qword_1EE028488 != -1)
  {
    swift_once();
  }

  v1 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v1, qword_1EE02A388);
  *(v0 + 56) = v1;
  *(v0 + 64) = OUTLINED_FUNCTION_6_8(&qword_1EE0283C0);
  __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v2();
  if (qword_1EE028480 != -1)
  {
    swift_once();
  }

  v3 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v3, qword_1EE02A370);
  *(v0 + 96) = v3;
  *(v0 + 104) = OUTLINED_FUNCTION_6_8(&qword_1EE0283B8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 72));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v4();
  if (qword_1EE0284C0 != -1)
  {
    swift_once();
  }

  v5 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v5, qword_1EE02A400);
  *(v0 + 136) = v5;
  *(v0 + 144) = OUTLINED_FUNCTION_6_8(&qword_1EE0283E8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v6();
  if (qword_1EE0284C8 != -1)
  {
    swift_once();
  }

  v7 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v7, qword_1EE02A418);
  *(v0 + 176) = v7;
  *(v0 + 184) = OUTLINED_FUNCTION_6_8(&qword_1EE0283F0);
  __swift_allocate_boxed_opaque_existential_1((v0 + 152));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v8();
  if (qword_1EE0284B0 != -1)
  {
    swift_once();
  }

  v9 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v9, qword_1EE02A3D0);
  *(v0 + 216) = v9;
  *(v0 + 224) = OUTLINED_FUNCTION_6_8(&qword_1EE0283D8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 192));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v10();
  if (qword_1EE0284B8 != -1)
  {
    swift_once();
  }

  v11 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v11, qword_1EE02A3E8);
  *(v0 + 256) = v11;
  *(v0 + 264) = OUTLINED_FUNCTION_6_8(&qword_1EE0283E0);
  __swift_allocate_boxed_opaque_existential_1((v0 + 232));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v12();
  if (qword_1EE0281F0 != -1)
  {
    swift_once();
  }

  v13 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v13, qword_1EE02A2B0);
  *(v0 + 296) = v13;
  *(v0 + 304) = OUTLINED_FUNCTION_6_8(&qword_1EE0281C0);
  __swift_allocate_boxed_opaque_existential_1((v0 + 272));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v14();
  if (qword_1EE0281F8 != -1)
  {
    swift_once();
  }

  v15 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v15, qword_1EE02A2C8);
  *(v0 + 336) = v15;
  *(v0 + 344) = OUTLINED_FUNCTION_6_8(&qword_1EE0281C8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 312));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v16();
  if (qword_1EE028498 != -1)
  {
    swift_once();
  }

  v17 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v17, qword_1EE02A3A0);
  *(v0 + 376) = v17;
  *(v0 + 384) = OUTLINED_FUNCTION_6_8(&qword_1EE0283C8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 352));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v18();
  if (qword_1EE0284A0 != -1)
  {
    swift_once();
  }

  v19 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v19, qword_1EE02A3B8);
  *(v0 + 416) = v19;
  *(v0 + 424) = OUTLINED_FUNCTION_6_8(&qword_1EE0283D0);
  __swift_allocate_boxed_opaque_existential_1((v0 + 392));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v20();
  if (qword_1EE0284D0 != -1)
  {
    swift_once();
  }

  v21 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v21, qword_1EE02A430);
  *(v0 + 456) = v21;
  *(v0 + 464) = OUTLINED_FUNCTION_6_8(&qword_1EE0283F8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 432));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v22();
  if (qword_1EE0284D8 != -1)
  {
    swift_once();
  }

  v23 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v23, qword_1EE02A448);
  *(v0 + 496) = v23;
  *(v0 + 504) = OUTLINED_FUNCTION_6_8(&qword_1EE028400);
  __swift_allocate_boxed_opaque_existential_1((v0 + 472));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v24();
  if (qword_1EE028528 != -1)
  {
    swift_once();
  }

  v25 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v25, qword_1EE02A4F0);
  *(v0 + 536) = v25;
  *(v0 + 544) = OUTLINED_FUNCTION_6_8(&qword_1EE028438);
  __swift_allocate_boxed_opaque_existential_1((v0 + 512));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v26();
  if (qword_1EE0284F8 != -1)
  {
    swift_once();
  }

  v27 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v27, qword_1EE02A490);
  *(v0 + 576) = v27;
  *(v0 + 584) = OUTLINED_FUNCTION_6_8(&qword_1EE028418);
  __swift_allocate_boxed_opaque_existential_1((v0 + 552));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v28();
  if (qword_1EE028550 != -1)
  {
    swift_once();
  }

  v29 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v29, qword_1EE02A538);
  *(v0 + 616) = v29;
  *(v0 + 624) = OUTLINED_FUNCTION_6_8(&qword_1EE028450);
  __swift_allocate_boxed_opaque_existential_1((v0 + 592));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v30();
  if (qword_1EE0284E0 != -1)
  {
    swift_once();
  }

  v31 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v31, qword_1EE02A460);
  *(v0 + 656) = v31;
  *(v0 + 664) = OUTLINED_FUNCTION_6_8(&qword_1EE028408);
  __swift_allocate_boxed_opaque_existential_1((v0 + 632));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v32();
  if (qword_1EE028218 != -1)
  {
    swift_once();
  }

  v33 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v33, qword_1EE02A310);
  *(v0 + 696) = v33;
  *(v0 + 704) = OUTLINED_FUNCTION_6_8(&qword_1EE0281E0);
  __swift_allocate_boxed_opaque_existential_1((v0 + 672));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v34();
  if (qword_1EE028200 != -1)
  {
    swift_once();
  }

  v35 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v35, qword_1EE02A2E0);
  *(v0 + 736) = v35;
  *(v0 + 744) = OUTLINED_FUNCTION_6_8(&qword_1EE0281D0);
  __swift_allocate_boxed_opaque_existential_1((v0 + 712));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v36();
  if (qword_1EE028558 != -1)
  {
    swift_once();
  }

  v37 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v37, qword_1EE02A550);
  *(v0 + 776) = v37;
  *(v0 + 784) = OUTLINED_FUNCTION_6_8(&qword_1EE028458);
  __swift_allocate_boxed_opaque_existential_1((v0 + 752));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v38();
  if (qword_1EE028510 != -1)
  {
    swift_once();
  }

  v39 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v39, qword_1EE02A4C0);
  *(v0 + 816) = v39;
  *(v0 + 824) = OUTLINED_FUNCTION_6_8(&qword_1EE028428);
  __swift_allocate_boxed_opaque_existential_1((v0 + 792));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v40();
  if (qword_1EE028568 != -1)
  {
    swift_once();
  }

  v41 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v41, qword_1EE02A580);
  *(v0 + 856) = v41;
  *(v0 + 864) = OUTLINED_FUNCTION_6_8(&qword_1EE028468);
  __swift_allocate_boxed_opaque_existential_1((v0 + 832));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v42();
  if (qword_1EE028520 != -1)
  {
    swift_once();
  }

  v43 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v43, qword_1EE02A4D8);
  *(v0 + 896) = v43;
  *(v0 + 904) = OUTLINED_FUNCTION_6_8(&qword_1EE028430);
  __swift_allocate_boxed_opaque_existential_1((v0 + 872));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v44();
  if (qword_1EE028578 != -1)
  {
    swift_once();
  }

  v45 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v45, qword_1EE02A598);
  *(v0 + 936) = v45;
  *(v0 + 944) = OUTLINED_FUNCTION_6_8(&qword_1EE028470);
  __swift_allocate_boxed_opaque_existential_1((v0 + 912));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v46();
  if (qword_1EE028500 != -1)
  {
    swift_once();
  }

  v47 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v47, qword_1EE02A4A8);
  *(v0 + 976) = v47;
  *(v0 + 984) = OUTLINED_FUNCTION_6_8(&qword_1EE028420);
  __swift_allocate_boxed_opaque_existential_1((v0 + 952));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v48();
  if (qword_1EE028588 != -1)
  {
    swift_once();
  }

  v49 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v49, qword_1EE02A5B0);
  *(v0 + 1016) = v49;
  *(v0 + 1024) = OUTLINED_FUNCTION_6_8(&qword_1EE028478);
  __swift_allocate_boxed_opaque_existential_1((v0 + 992));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v50();
  if (qword_1EE028560 != -1)
  {
    swift_once();
  }

  v51 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v51, qword_1EE02A568);
  *(v0 + 1056) = v51;
  *(v0 + 1064) = OUTLINED_FUNCTION_6_8(&qword_1EE028460);
  __swift_allocate_boxed_opaque_existential_1((v0 + 1032));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v52();
  if (qword_1EE028228 != -1)
  {
    swift_once();
  }

  v53 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v53, qword_1EE02A328);
  *(v0 + 1096) = v53;
  *(v0 + 1104) = OUTLINED_FUNCTION_6_8(&qword_1EE0281E8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 1072));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v54();
  if (qword_1EE028210 != -1)
  {
    swift_once();
  }

  v55 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v55, qword_1EE02A2F8);
  *(v0 + 1136) = v55;
  *(v0 + 1144) = OUTLINED_FUNCTION_6_8(&qword_1EE0281D8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 1112));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v56();
  if (qword_1EE0284F0 != -1)
  {
    swift_once();
  }

  v57 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v57, qword_1EE02A478);
  *(v0 + 1176) = v57;
  *(v0 + 1184) = OUTLINED_FUNCTION_6_8(&qword_1EE028410);
  __swift_allocate_boxed_opaque_existential_1((v0 + 1152));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v58();
  if (qword_1EE028548 != -1)
  {
    swift_once();
  }

  v59 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v59, qword_1EE02A520);
  *(v0 + 1216) = v59;
  *(v0 + 1224) = OUTLINED_FUNCTION_6_8(&qword_1EE028448);
  __swift_allocate_boxed_opaque_existential_1((v0 + 1192));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  v60();
  if (qword_1EE028538 != -1)
  {
    swift_once();
  }

  v61 = OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_4_9(v61, qword_1EE02A508);
  *(v0 + 1256) = v61;
  *(v0 + 1264) = OUTLINED_FUNCTION_6_8(&qword_1EE028440);
  __swift_allocate_boxed_opaque_existential_1((v0 + 1232));
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_10();
  result = v62();
  qword_1EE02A360 = v0;
  return result;
}

uint64_t sub_1DD2F1B08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D20, &qword_1DD33A968);
  __swift_allocate_value_buffer(v0, qword_1EE02A388);
  __swift_project_value_buffer(v0, qword_1EE02A388);
  sub_1DD336350();
  sub_1DD336310();
  return sub_1DD335790();
}

uint64_t sub_1DD2F1B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = v36 - v4;
  v5 = sub_1DD336280();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v42 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DD336350();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v46 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v36 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v36 - v14;
  v16 = *(v8 + 16);
  v16(v36 - v14, a1, v7);
  v17 = *(v8 + 88);
  if (v17(v15, v7) == *MEMORY[0x1E69DAE58])
  {
    (*(v8 + 96))(v15, v7);
LABEL_3:
    v18 = sub_1DD336310();
    v19 = swift_projectBox();
    (*(*(v18 - 8) + 16))(v47, v19, v18);
  }

  v37 = *MEMORY[0x1E69DAE58];
  v39 = *(v8 + 8);
  v39(v15, v7);
  v40 = v16;
  v41 = a1;
  v16(v13, a1, v7);
  v38 = v17;
  if (v17(v13, v7) == *MEMORY[0x1E69DAE18])
  {
    v36[1] = v8 + 8;
    v36[2] = v8 + 16;
    v21 = *(v8 + 96);
    v21(v13, v7);
    v22 = swift_projectBox();
    v23 = v42;
    v24 = v43;
    v25 = v44;
    (*(v43 + 16))(v42, v22, v44);

    v26 = sub_1DD336270();
    v27 = v45;
    sub_1DD2F0810(v26, v45);

    (*(v24 + 8))(v23, v25);
    if (__swift_getEnumTagSinglePayload(v27, 1, v7) == 1)
    {
      sub_1DD2825F0(v27, &qword_1ECCD6608, &qword_1DD339310);
      v29 = v40;
      v28 = v41;
    }

    else
    {
      v30 = v38(v27, v7);
      v29 = v40;
      v28 = v41;
      if (v30 == v37)
      {
        v21(v27, v7);
        goto LABEL_3;
      }

      v39(v27, v7);
    }
  }

  else
  {
    v39(v13, v7);
    v29 = v40;
    v28 = v41;
  }

  v31 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
  swift_allocError();
  v33 = v32;
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1DD336C00();
  MEMORY[0x1E12AC540](0xD000000000000037, 0x80000001DD33E510);
  v29(v46, v28, v7);
  v34 = sub_1DD336630();
  MEMORY[0x1E12AC540](v34);

  v35 = v49;
  *v33 = v48;
  v33[1] = v35;
  (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69D3640], v31);
  return swift_willThrow();
}

uint64_t sub_1DD2F210C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D28, &qword_1DD33A970);
  __swift_allocate_value_buffer(v0, qword_1EE02A370);
  __swift_project_value_buffer(v0, qword_1EE02A370);
  sub_1DD336350();
  sub_1DD336330();
  return sub_1DD335790();
}

uint64_t sub_1DD2F219C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1DD336350();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = sub_1DD336340();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = *(v4 + 16);
  v32 = a1;
  v17 = a1;
  v18 = v16;
  v16(v8, v17, v3);
  if ((*(v4 + 88))(v8, v3) == *MEMORY[0x1E69DAE70])
  {
    (*(v4 + 96))(v8, v3);
    v19 = swift_projectBox();
    (*(v10 + 16))(v15, v19, v9);

    (*(v10 + 32))(v13, v15, v9);
    if ((*(v10 + 88))(v13, v9) == *MEMORY[0x1E69DADE8])
    {
      (*(v10 + 96))(v13, v9);
      v20 = sub_1DD336330();
      return (*(*(v20 - 8) + 32))(v28, v13, v20);
    }

    (*(v10 + 8))(v13, v9);
  }

  else
  {
    (*(v4 + 8))(v8, v3);
  }

  v22 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
  swift_allocError();
  v24 = v23;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1DD336C00();
  MEMORY[0x1E12AC540](0xD000000000000046, 0x80000001DD33E4C0);
  v18(v29, v32, v3);
  v25 = sub_1DD336630();
  MEMORY[0x1E12AC540](v25);

  v26 = v31;
  *v24 = v30;
  v24[1] = v26;
  (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69D3640], v22);
  return swift_willThrow();
}

uint64_t sub_1DD2F25C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D48, &qword_1DD33A990);
  __swift_allocate_value_buffer(v0, qword_1EE02A3E8);
  __swift_project_value_buffer(v0, qword_1EE02A3E8);
  sub_1DD336310();
  sub_1DD335660();
  return sub_1DD335790();
}

uint64_t sub_1DD2F2650@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v3 = sub_1DD336310();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1DD336340();
  v57 = *(v60 - 8);
  v5 = MEMORY[0x1EEE9AC00](v60);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - v11;
  v13 = sub_1DD334C50();
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DD336370();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DD336290();
  v52 = v21;
  v53 = v20;
  v22 = a1;
  sub_1DD3362A0();
  sub_1DD336360();
  (*(v17 + 8))(v19, v16);
  v23 = v12;
  sub_1DD3362D0();

  sub_1DD335660();
  swift_allocObject();
  v24 = sub_1DD335650();
  sub_1DD334C30();
  sub_1DD334BA0();
  (*(v54 + 8))(v15, v55);
  v25 = sub_1DD3362D0();
  sub_1DD2AAFF4(v25, v12);

  v26 = sub_1DD336350();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v26);
  v28 = MEMORY[0x1E69DAE70];
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD2825F0(v12, &qword_1ECCD6608, &qword_1DD339310);
    v29 = v60;
    v31 = v56;
    v30 = v57;
  }

  else
  {
    v32 = *(v26 - 8);
    v33 = (*(v32 + 88))(v12, v26);
    v31 = v56;
    if (v33 == *v28)
    {
      (*(v32 + 96))(v23, v26);
      v34 = swift_projectBox();
      v30 = v57;
      v35 = v48;
      v29 = v60;
      (*(v57 + 16))(v48, v34, v60);
      if ((*(v30 + 88))(v35, v29) == *MEMORY[0x1E69DADF0])
      {
        goto LABEL_11;
      }

      (*(v30 + 8))(v35, v29);
    }

    else
    {
      (*(v32 + 8))(v23, v26);
      v29 = v60;
      v30 = v57;
    }
  }

  v36 = sub_1DD3362D0();
  sub_1DD2AAFF4(v36, v31);

  if (__swift_getEnumTagSinglePayload(v31, 1, v26) != 1)
  {
    v37 = *(v26 - 8);
    if ((*(v37 + 88))(v31, v26) != *v28)
    {
      (*(v37 + 8))(v31, v26);
      goto LABEL_14;
    }

    (*(v37 + 96))(v31, v26);
    v38 = swift_projectBox();
    v35 = v46;
    (*(v30 + 16))(v46, v38, v29);
    if ((*(v30 + 88))(v35, v29) != *MEMORY[0x1E69DADF0])
    {
      (*(v30 + 8))(v35, v29);

      goto LABEL_14;
    }

LABEL_11:
    (*(v30 + 96))(v35, v29);

    sub_1DD335640();

    *v47 = v24;
    return result;
  }

  sub_1DD2825F0(v31, &qword_1ECCD6608, &qword_1DD339310);
LABEL_14:
  v40 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
  swift_allocError();
  v42 = v41;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1DD336C00();
  MEMORY[0x1E12AC540](0xD000000000000041, 0x80000001DD33E330);
  (*(v50 + 16))(v49, v22, v51);
  v43 = sub_1DD336630();
  MEMORY[0x1E12AC540](v43);

  v44 = v59;
  *v42 = v58;
  v42[1] = v44;
  (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69D3640], v40);
  swift_willThrow();
}