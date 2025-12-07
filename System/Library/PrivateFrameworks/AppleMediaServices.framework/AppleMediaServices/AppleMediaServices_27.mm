uint64_t sub_192CF6274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_192CF3BA4;

  return sub_192CF6320(a4, a5);
}

uint64_t sub_192CF6320(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return MEMORY[0x1EEE6DFA0](sub_192CF633C, a2, 0);
}

uint64_t sub_192CF633C()
{
  OUTLINED_FUNCTION_3();
  *(v0 + 136) = sub_192CF7328();
  *(v0 + 49) = v1;
  v2 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_192CF63A0()
{
  OUTLINED_FUNCTION_120();
  if (v0[3].n128_u8[1])
  {
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
    }

    v1 = qword_1ED6DDB30;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v3 = OUTLINED_FUNCTION_47(v2);
    OUTLINED_FUNCTION_50(v3, xmmword_192FBCD50);
    OUTLINED_FUNCTION_68_10();
    v5._countAndFlagsBits = v4 + 38;
    v5._object = (v6 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v5);
    sub_192F96E3C();
    OUTLINED_FUNCTION_165();
    if (!os_log_type_enabled(v1, v7))
    {
      goto LABEL_23;
    }

    v8 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 == -1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v9 = v0[7].n128_u64[1];
    if (*(v9 + 16))
    {
      if (qword_1ED6DDB28 != -1)
      {
        OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
      }

      v10 = qword_1ED6DDB30;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
      v3 = OUTLINED_FUNCTION_47(v11);
      OUTLINED_FUNCTION_50(v3, xmmword_192FBCD50);
      OUTLINED_FUNCTION_68_10();
      v13._countAndFlagsBits = v12 + 46;
      v13._object = (v14 | 0x8000000000000000);
      LogInterpolation.init(stringLiteral:)(v13);
      sub_192F96E5C();
      OUTLINED_FUNCTION_165();
      if (!os_log_type_enabled(v10, v15))
      {
        goto LABEL_23;
      }

      v8 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 == -1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v16 = v0[8].n128_i64[1];
      if (v16 >= *(v9 + 8))
      {
LABEL_24:
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_71_0();

        __asm { BRAA            X2, X16 }
      }

      if (qword_1ED6DDB28 != -1)
      {
        OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
        v16 = v0[8].n128_i64[1];
      }

      v17 = qword_1ED6DDB30;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
      v3 = OUTLINED_FUNCTION_47(v18);
      OUTLINED_FUNCTION_50(v3, xmmword_192FBCD50);
      sub_19287AEE0();
      v60 = v19;
      OUTLINED_FUNCTION_45_12();
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
      v0[5].n128_u64[0] = MEMORY[0x1E69E6530];
      v0[3].n128_u64[1] = v16;
      sub_1928F9518(&v0[3].n128_i64[1], &v0[5].n128_i64[1], &unk_1EAE131B0, &qword_192FBD860);
      v0[1] = 0u;
      v0[2] = 0u;
      sub_19286D180(&v0[5].n128_i64[1], &v0[1]);
      OUTLINED_FUNCTION_70_6();
      if ((OUTLINED_FUNCTION_103(v21, v22, v23, v24, v25, v26, v27, v28, v57, v58, v59, v60) & 1) == 0)
      {
        OUTLINED_FUNCTION_7_0();
      }

      OUTLINED_FUNCTION_24();
      if (v29)
      {
        OUTLINED_FUNCTION_142();
      }

      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_14_28(v30, v0[1], v0[2]);
      sub_1928FC07C(&v0[3].n128_i64[1], &unk_1EAE131B0, &qword_192FBD860);
      OUTLINED_FUNCTION_45_12();
      v31._countAndFlagsBits = 0xD000000000000016;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
      v3[2].n128_u64[0] = v61;
      sub_192F96E5C();
      OUTLINED_FUNCTION_165();
      if (!os_log_type_enabled(v17, v32))
      {
LABEL_23:

        goto LABEL_24;
      }

      v8 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 == -1)
      {
LABEL_22:
        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_71();
        v33 = swift_allocObject();
        v34 = OUTLINED_FUNCTION_116(v33);
        v0[1].n128_u64[0] = v3;
        v0[1].n128_u64[1] = sub_192BB97CC;
        v0[2].n128_u64[0] = v34;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
        v35 = sub_1928FD924();
        v38 = OUTLINED_FUNCTION_106(v35, v36, v37, v35);
        v40 = v39;

        objc_autoreleasePoolPop(v8);
        v41 = objc_autoreleasePoolPush();
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
        v43 = OUTLINED_FUNCTION_90(v42);
        OUTLINED_FUNCTION_29_0(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
        *(v53 + 56) = MEMORY[0x1E69E6158];
        v43[4].n128_u64[0] = sub_1928FDB30();
        v43[2].n128_u64[0] = v38;
        v43[2].n128_u64[1] = v40;
        OUTLINED_FUNCTION_60();
        sub_192F9622C(v54);

        objc_autoreleasePoolPop(v41);
        goto LABEL_23;
      }
    }
  }

  OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
  goto LABEL_22;
}

uint64_t sub_192CF687C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_192CF6924;

  return StoreReviewGatingController.canPrompt()();
}

uint64_t sub_192CF6924()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_6();
  *v7 = v6;

  v4[2](v4, v2 & 1);
  _Block_release(v4);
  OUTLINED_FUNCTION_43();

  return v8();
}

id StoreReviewGatingController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StoreReviewGatingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192CF6BAC()
{
  OUTLINED_FUNCTION_65();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_9_0(v8);
  *v9 = v10;
  v9[1] = sub_192919C40;

  return sub_192CF3358(v4, v2, v5, v6, v7);
}

uint64_t sub_192CF6C90()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_39(v1);

  return v4(v3);
}

uint64_t sub_192CF6D20()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_39(v1);

  return v4(v3);
}

uint64_t sub_192CF6DB0()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_39(v1);

  return v4(v3);
}

uint64_t sub_192CF6E40()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_58_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_34(v1);

  return sub_192CF3AF8(v3, v4, v5, v6, v7);
}

uint64_t sub_192CF6ED4()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_58_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_34(v1);

  return sub_192CF48FC(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_46Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_74_7();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_192CF6FAC()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_58_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_34(v1);

  return sub_192CF6274(v3, v4, v5, v6, v7);
}

uint64_t sub_192CF7040(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_192CF7134;

  return v5(v2 + 32);
}

uint64_t sub_192CF7134()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_6();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_192CF7230()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_0(v4);
  *v5 = v6;
  v5[1] = sub_192919C44;

  return sub_192CF7040(v2, v3);
}

uint64_t OUTLINED_FUNCTION_77_10()
{

  return sub_1928F9518(v0 + 240, v0 + 272, v1, v2);
}

uint64_t OUTLINED_FUNCTION_78_10()
{
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  return sub_19286D180(v0 + 336, v0 + 96);
}

uint64_t sub_192CF7328()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15A50, &unk_192FCE930);
  OUTLINED_FUNCTION_142_0(v1);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_29_19();
  sub_192927884();
  sub_19292894C(v0);

  v4 = type metadata accessor for StoreReviewGatingLedger.StateData(0);
  OUTLINED_FUNCTION_14(v0);
  if (v5)
  {
    sub_1928FB988(v0, &qword_1EAE15A50, &unk_192FCE930);
    return 0;
  }

  else
  {
    v6 = *(v0 + *(v4 + 20));
    sub_19292146C(v0);
  }

  return v6;
}

uint64_t sub_192CF7400()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10, &qword_192FBCDA0);
  OUTLINED_FUNCTION_142_0(v3);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_29_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15A50, &unk_192FCE930);
  OUTLINED_FUNCTION_142_0(v6);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_30_18();
  v9 = type metadata accessor for StoreReviewGatingLedger.StateData(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  sub_192927884();
  sub_19292894C(v2);

  OUTLINED_FUNCTION_87(v2, 1, v9);
  if (v15)
  {
    v16 = sub_192F95CFC();
    OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    v20 = v14 + *(v9 + 20);
    *v20 = 0;
    *(v20 + 8) = 1;
    OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
    OUTLINED_FUNCTION_87(v2, 1, v9);
    if (!v15)
    {
      sub_1928FB988(v2, &qword_1EAE15A50, &unk_192FCE930);
    }
  }

  else
  {
    sub_192929410(v2, v14);
  }

  sub_192F95CEC();
  sub_192F95CFC();
  OUTLINED_FUNCTION_34_18();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  sub_1928FDBFC(v0, v14 + *(v9 + 24), &qword_1EAE12E10, &qword_192FBCDA0);
  v28 = *(v1 + 120);
  v29 = *(v1 + 128);

  sub_192CF7A00(v14, v28, v29);

  return sub_19292146C(v14);
}

void sub_192CF7604()
{
  OUTLINED_FUNCTION_168();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15A50, &unk_192FCE930);
  OUTLINED_FUNCTION_142_0(v6);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v44[-v9 - 16];
  v11 = type metadata accessor for StoreReviewGatingLedger.StateData(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  sub_19292894C(v10);
  OUTLINED_FUNCTION_87(v10, 1, v11);
  if (v17)
  {
    sub_1928FB988(v10, &qword_1EAE15A50, &unk_192FCE930);
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v19 = OUTLINED_FUNCTION_47(v18);
    v43 = xmmword_192FBCD50;
    *(v19 + 16) = xmmword_192FBCD50;
    sub_19287AEE0();
    v49 = v20;
    v21._countAndFlagsBits = 0xD000000000000025;
    v21._object = 0x80000001930250D0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
    v22 = MEMORY[0x1E69E6158];
    v48[3] = MEMORY[0x1E69E6158];
    v48[0] = v3;
    v48[1] = v1;
    sub_1928F94C8(v48, v44, &unk_1EAE131B0, &qword_192FBD860);
    v45 = 0u;
    v46 = 0u;

    sub_1928FDBFC(v44, &v45, &unk_1EAE131B0, &qword_192FBD860);
    v47 = 3;
    v23 = v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v23 = v41;
      v49 = v41;
    }

    v24 = *(v23 + 16);
    if (v24 >= *(v23 + 24) >> 1)
    {
      OUTLINED_FUNCTION_142();
      v23 = v42;
    }

    *(v23 + 16) = v24 + 1;
    OUTLINED_FUNCTION_11_2((v23 + 40 * v24), v45, v46);
    v49 = v23;
    sub_1928FB988(v48, &unk_1EAE131B0, &qword_192FBD860);
    v25._object = 0x8000000193025100;
    v25._countAndFlagsBits = 0xD000000000000011;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    *(v19 + 32) = v49;
    v26 = sub_192F96E3C();
    if (OUTLINED_FUNCTION_26_22(v26))
    {
      v27 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v28 = swift_allocObject();
      *(v28 + 16) = &v49;
      v45.n128_u64[0] = v19;
      v45.n128_u64[1] = sub_192BB97CC;
      v46.n128_u64[0] = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_61();
      sub_192F9674C();
      OUTLINED_FUNCTION_136_0();

      objc_autoreleasePoolPop(v27);
      v29 = objc_autoreleasePoolPush();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v31 = OUTLINED_FUNCTION_90(v30);
      *(v31 + 16) = v43;
      *(v31 + 56) = v22;
      v32 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v32);
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_37_16(v33, v34, v35, v36);

      objc_autoreleasePoolPop(v29);
    }

    sub_192F95CFC();
    OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  }

  else
  {
    sub_192929410(v10, v16);
    sub_1928F94C8(v16 + *(v11 + 24), v5, &qword_1EAE12E10, &qword_192FBCDA0);
    sub_19292146C(v16);
  }

  OUTLINED_FUNCTION_166();
}

void sub_192CF7A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v82 = *MEMORY[0x1E69E9840];
  sub_192F9549C();
  swift_allocObject();
  sub_192F9548C();
  type metadata accessor for StoreReviewGatingLedger.StateData(0);
  sub_19292902C(&qword_1ED6DDB50, type metadata accessor for StoreReviewGatingLedger.StateData, &unk_192FCE9DC);
  sub_192F9547C();

  v7 = objc_opt_self();
  OUTLINED_FUNCTION_40_13();
  v8 = sub_192F95B5C();
  v80.n128_u64[0] = 0;
  v9 = [v7 JSONObjectWithData:v8 options:0 error:&v80];

  v10 = v80.n128_u64[0];
  if (v9)
  {
    sub_192F9715C();
    v11 = OUTLINED_FUNCTION_40_13();
    sub_19290CA6C(v11, v12);
    swift_unknownObjectRelease();
    sub_1928FA5CC(&v78);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131E0, &unk_192FBEF80);
    if (swift_dynamicCast())
    {
      v14 = v77[0];
      OUTLINED_FUNCTION_62_0();
      v78.n128_u64[0] = 0xD00000000000001CLL;
      v78.n128_u64[1] = v15;
      MEMORY[0x193B10CE0](a2, a3);
      v16 = v78;
      if (qword_1ED6DDB28 != -1)
      {
        OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
      }

      oslogb = qword_1ED6DDB30;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
      v18 = OUTLINED_FUNCTION_47(v17);
      *(v18 + 16) = xmmword_192FBCD50;
      sub_19287AEE0();
      v76[0] = v19;
      v20._countAndFlagsBits = 0xD00000000000002CLL;
      v20._object = 0x80000001930250A0;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
      v81 = MEMORY[0x1E69E6158];
      v80 = v16;
      v21 = &unk_1EAE131B0;
      sub_1928F94C8(&v80, v77, &unk_1EAE131B0, &qword_192FBD860);
      v78 = 0u;
      v79 = 0u;

      v22 = sub_1928FDBFC(v77, &v78, &unk_1EAE131B0, &qword_192FBD860);
      if ((OUTLINED_FUNCTION_45_13(v22, v23, v24, v25, v26, v27, v28, v29, 1, 2, v71, oslogb, v76[0]) & 1) == 0)
      {
        OUTLINED_FUNCTION_7_0();
        v21 = v62;
        v76[0] = v62;
      }

      v31 = v21[2];
      v30 = v21[3];
      if (v31 >= v30 >> 1)
      {
        v63 = OUTLINED_FUNCTION_43_1(v30);
        OUTLINED_FUNCTION_67(v63, v31 + 1);
        v21 = v64;
      }

      v21[2] = v31 + 1;
      OUTLINED_FUNCTION_11_2(&v21[5 * v31], v78, v79);
      v76[0] = v21;
      sub_1928FB988(&v80, &unk_1EAE131B0, &qword_192FBD860);
      v32 = v76;
      v33._countAndFlagsBits = 2112032;
      v33._object = 0xE300000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
      v81 = v13;
      v80.n128_u64[0] = v14;
      sub_1928F94C8(&v80, v77, &unk_1EAE131B0, &qword_192FBD860);
      v78 = 0u;
      v79 = 0u;

      v34 = sub_1928FDBFC(v77, &v78, &unk_1EAE131B0, &qword_192FBD860);
      if ((OUTLINED_FUNCTION_45_13(v34, v35, v36, v37, v38, v39, v40, v41, v68, v70, v72, oslog, v76[0]) & 1) == 0)
      {
        OUTLINED_FUNCTION_7_0();
        v32 = v65;
        v76[0] = v65;
      }

      v43 = v32[2];
      v42 = v32[3];
      if (v43 >= v42 >> 1)
      {
        v66 = OUTLINED_FUNCTION_43_1(v42);
        OUTLINED_FUNCTION_67(v66, v43 + 1);
        v32 = v67;
      }

      v32[2] = v43 + 1;
      OUTLINED_FUNCTION_11_2(&v32[5 * v43], v78, v79);
      v76[0] = v32;
      sub_1928FB988(&v80, &unk_1EAE131B0, &qword_192FBD860);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v44);
      *(v18 + 32) = v76[0];
      v45 = sub_192F96E3C();
      if (os_log_type_enabled(osloga, v45))
      {
        v46 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
        }

        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_71();
        v47 = swift_allocObject();
        *(v47 + 16) = v76;
        v78.n128_u64[0] = v18;
        v78.n128_u64[1] = sub_1928FA5C4;
        v79.n128_u64[0] = v47;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
        sub_1928FD924();
        OUTLINED_FUNCTION_61();
        v48 = sub_192F9674C();
        v50 = v49;

        objc_autoreleasePoolPop(v46);
        v51 = objc_autoreleasePoolPush();
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
        v53 = OUTLINED_FUNCTION_90(v52);
        *(v53 + 16) = v69;
        *(v53 + 56) = MEMORY[0x1E69E6158];
        *(v53 + 64) = sub_1928FDB30();
        *(v53 + 32) = v48;
        *(v53 + 40) = v50;
        OUTLINED_FUNCTION_60();
        sub_192F9622C(v54);

        objc_autoreleasePoolPop(v51);
      }

      v55 = *(v4 + 112);
      v56 = sub_192F9667C();

      v57 = sub_192F9679C();

      [v55 setObject:v56 forKey:v57];
    }
  }

  else
  {
    v58 = v10;
    v59 = sub_192F958DC();

    swift_willThrow();
    v60 = OUTLINED_FUNCTION_40_13();
    sub_19290CA6C(v60, v61);
  }
}

unint64_t sub_192CF8078()
{
  v0 = sub_192F9750C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_192CF80C4()
{
  OUTLINED_FUNCTION_168();
  v1 = v0;
  v3 = v2;
  v4 = sub_192F95CFC();
  OUTLINED_FUNCTION_4_0();
  v63 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_15();
  v59 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10, &qword_192FBCDA0);
  v11 = OUTLINED_FUNCTION_142_0(v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_21();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12B70, &qword_192FBCDA8);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_21();
  v60 = v23 - v24;
  OUTLINED_FUNCTION_33();
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v58 - v28;
  v30 = *(v27 + 48);
  v61 = v3;
  sub_1928F94C8(v3, &v58 - v28, &qword_1EAE12E10, &qword_192FBCDA0);
  v62 = v1;
  sub_1928F94C8(v1, &v29[v30], &qword_1EAE12E10, &qword_192FBCDA0);
  OUTLINED_FUNCTION_14(v29);
  if (!v31)
  {
    sub_1928F94C8(v29, v19, &qword_1EAE12E10, &qword_192FBCDA0);
    OUTLINED_FUNCTION_14(&v29[v30]);
    if (!v31)
    {
      v33 = v63;
      v34 = *(v63 + 32);
      v58 = v15;
      v35 = v59;
      v34(v59, &v29[v30], v4);
      OUTLINED_FUNCTION_2_54();
      sub_19292902C(v36, v37, MEMORY[0x1E6969550]);
      v38 = sub_192F9677C();
      v39 = *(v33 + 8);
      v40 = v35;
      v15 = v58;
      v39(v40, v4);
      v39(v19, v4);
      sub_1928FB988(v29, &qword_1EAE12E10, &qword_192FBCDA0);
      if ((v38 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    (*(v63 + 8))(v19, v4);
LABEL_9:
    v32 = v29;
LABEL_10:
    sub_1928FB988(v32, &qword_1EAE12B70, &qword_192FBCDA8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14(&v29[v30]);
  if (!v31)
  {
    goto LABEL_9;
  }

  sub_1928FB988(v29, &qword_1EAE12E10, &qword_192FBCDA0);
LABEL_13:
  v41 = type metadata accessor for StoreReviewGatingLedger.StateData(0);
  v42 = *(v41 + 20);
  v43 = v62;
  v44 = (v61 + v42);
  v45 = *(v61 + v42 + 8);
  v46 = (v62 + v42);
  v47 = *(v62 + v42 + 8);
  if (v45)
  {
    v48 = v60;
    if (!v47)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  if (*v44 != *v46)
  {
    LOBYTE(v47) = 1;
  }

  v48 = v60;
  if ((v47 & 1) == 0)
  {
LABEL_19:
    v49 = *(v41 + 24);
    v50 = *(v20 + 48);
    sub_1928F94C8(v61 + v49, v48, &qword_1EAE12E10, &qword_192FBCDA0);
    sub_1928F94C8(v43 + v49, v48 + v50, &qword_1EAE12E10, &qword_192FBCDA0);
    OUTLINED_FUNCTION_14(v48);
    if (v31)
    {
      OUTLINED_FUNCTION_14(v48 + v50);
      if (v31)
      {
        sub_1928FB988(v48, &qword_1EAE12E10, &qword_192FBCDA0);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1928F94C8(v48, v15, &qword_1EAE12E10, &qword_192FBCDA0);
      OUTLINED_FUNCTION_14(v48 + v50);
      if (!v51)
      {
        v52 = v15;
        v53 = v63;
        (*(v63 + 32))(v59, v48 + v50, v4);
        OUTLINED_FUNCTION_2_54();
        sub_19292902C(v54, v55, MEMORY[0x1E6969550]);
        sub_192F9677C();
        v56 = *(v53 + 8);
        v57 = OUTLINED_FUNCTION_40_13();
        v56(v57);
        (v56)(v52, v4);
        sub_1928FB988(v48, &qword_1EAE12E10, &qword_192FBCDA0);
        goto LABEL_11;
      }

      (*(v63 + 8))(v15, v4);
    }

    v32 = v48;
    goto LABEL_10;
  }

LABEL_11:
  OUTLINED_FUNCTION_166();
}

uint64_t sub_192CF8588(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15A68, &qword_192FCEA08);
  OUTLINED_FUNCTION_4_0();
  v8 = v7;
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_30_18();
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192928FD8();
  sub_192F9799C();
  v17 = 0;
  sub_192F95CFC();
  OUTLINED_FUNCTION_2_54();
  sub_19292902C(v11, v12, MEMORY[0x1E6969538]);
  OUTLINED_FUNCTION_38_11(v4, &v17);
  if (!v2)
  {
    v13 = type metadata accessor for StoreReviewGatingLedger.StateData(0);
    v16[1] = 1;
    sub_192F9767C();
    v14 = *(v13 + 24);
    v16[0] = 2;
    OUTLINED_FUNCTION_38_11(v4 + v14, v16);
  }

  return (*(v8 + 8))(v3, v6);
}

void sub_192CF8738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_168();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v24 = sub_192F95CFC();
  OUTLINED_FUNCTION_4_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_15();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10, &qword_192FBCDA0);
  v33 = OUTLINED_FUNCTION_142_0(v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_21();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &a9 - v40;
  sub_1928F94C8(v23, &a9 - v40, &qword_1EAE12E10, &qword_192FBCDA0);
  OUTLINED_FUNCTION_87(v41, 1, v24);
  if (v42)
  {
    sub_192F978BC();
  }

  else
  {
    (*(v26 + 32))(v31, v41, v24);
    sub_192F978BC();
    OUTLINED_FUNCTION_2_54();
    v45 = sub_19292902C(v43, v44, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_47_13(v45);
    (*(v26 + 8))(v31, v24);
  }

  v46 = type metadata accessor for StoreReviewGatingLedger.StateData(0);
  v47 = v23 + *(v46 + 20);
  if (*(v47 + 8) == 1)
  {
    sub_192F978BC();
  }

  else
  {
    v48 = *v47;
    sub_192F978BC();
    MEMORY[0x193B11C90](v48);
  }

  sub_1928F94C8(v23 + *(v46 + 24), v37, &qword_1EAE12E10, &qword_192FBCDA0);
  OUTLINED_FUNCTION_87(v37, 1, v24);
  if (v42)
  {
    sub_192F978BC();
  }

  else
  {
    (*(v26 + 32))(v31, v37, v24);
    sub_192F978BC();
    OUTLINED_FUNCTION_2_54();
    v51 = sub_19292902C(v49, v50, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_47_13(v51);
    (*(v26 + 8))(v31, v24);
  }

  OUTLINED_FUNCTION_166();
}

uint64_t sub_192CF89E0()
{
  sub_192F9789C();
  sub_192CF8738(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_192F978DC();
}

unint64_t sub_192CF8A44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CF8078();
  *a1 = result;
  return result;
}

uint64_t sub_192CF8A74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19292907C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_192CF8AA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CF8078();
  *a1 = result;
  return result;
}

uint64_t sub_192CF8AC8(uint64_t a1)
{
  v2 = sub_192928FD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CF8B04(uint64_t a1)
{
  v2 = sub_192928FD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192CF8B60(uint64_t a1)
{
  sub_192F9789C();
  sub_192CF8738(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_192F978DC();
}

uint64_t sub_192CF8BA0()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_192CF8BD0()
{
  sub_192CF8BA0();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_192CF8BFC()
{
  result = qword_1EAE15A58;
  if (!qword_1EAE15A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAE15A58);
  }

  return result;
}

unint64_t sub_192CF8C8C()
{
  result = qword_1EAE15A78;
  if (!qword_1EAE15A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15A78);
  }

  return result;
}

uint64_t NSString.ams_splitKeyPathStringKeepingEnclosedParts()()
{
  v0 = sub_192F967CC();
  v2 = sub_192CF8E0C(v0, v1);

  v3 = *(v2 + 16);
  if (v3)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_192F9735C();
    v4 = v2 + 40;
    do
    {
      v5 = objc_allocWithZone(MEMORY[0x1E696AEC0]);

      v6 = sub_192F9679C();

      [v5 initWithString_];

      sub_192F9733C();
      sub_192F9736C();
      sub_192F9737C();
      sub_192F9734C();
      v4 += 16;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_192CF8E0C(void *a1, void *a2)
{
  v4 = sub_192F966CC();
  v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v6 = sub_192CFE254(0x292A2E287B5C7B5CLL, 0xEC0000007D5C7D5CLL, 0);
  v51 = 0;
  v58 = v4;
  v62 = a1;
  v63 = a2;

  v7 = sub_192F9679C();
  v8 = [v6 matchesInString:v7 options:0 range:{0, MEMORY[0x193B10D50](a1, a2)}];

  sub_192874CD0(0, &qword_1ED6DE608, 0x1E696AEF8);
  v9 = sub_192F96B0C();

  if (v9 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_192F971FC())
  {
    v50 = v6;
    if (i)
    {
      v11 = 0;
      v12 = v9 & 0xC000000000000001;
      v54 = v9 + 32;
      v55 = v9 & 0xFFFFFFFFFFFFFF8;
      v13 = &selRef_initWithRequest_cachedResponse_client_;
      v52 = v9 & 0xC000000000000001;
      v53 = v9;
      while (1)
      {
        if (__OFSUB__(i--, 1))
        {
          __break(1u);
LABEL_26:

          goto LABEL_28;
        }

        if (v12)
        {
          v15 = MEMORY[0x193B116C0](i, v9);
        }

        else
        {
          if ((i & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          if (i >= *(v55 + 16))
          {
            goto LABEL_40;
          }

          v15 = *(v54 + 8 * i);
        }

        v16 = v15;
        [v15 v13[71]];
        v17 = sub_192F96E1C();
        if (v18 & 1) != 0 || (v8 = v17, [v16 rangeAtIndex_], sub_192F96E1C(), (v19))
        {

          if (!i)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v9 = a1;
          a1 = a2;
          v20 = sub_192F969EC();
          v21 = MEMORY[0x193B10C70](v20);
          v56 = v22;
          v57 = v21;

          v59 = v11;
          v60 = 31611;
          v61 = 0xE200000000000000;
          v23 = sub_192F9771C();
          v6 = v11;
          MEMORY[0x193B10CE0](v23);

          MEMORY[0x193B10CE0](32125, 0xE200000000000000);
          v24 = v60;
          a2 = v61;
          v25 = v58;
          swift_isUniquelyReferenced_nonNull_native();
          v60 = v25;
          sub_192C9A100();
          v58 = v60;
          v60 = v24;
          v61 = a2;
          sub_192CB0FC4();
          sub_192F9689C();

          v11 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            __break(1u);
            goto LABEL_44;
          }

          a2 = a1;
          a1 = v9;
          v12 = v52;
          v9 = v53;
          v13 = &selRef_initWithRequest_cachedResponse_client_;
          if (!i)
          {
LABEL_17:

            a1 = v62;
            a2 = v63;
            goto LABEL_18;
          }
        }
      }
    }

LABEL_18:
    v60 = 46;
    v61 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v26, v27);
    v49[2] = &v60;

    v6 = sub_192CF9420(0x7FFFFFFFFFFFFFFFLL, 0, sub_1929250EC, v49, a1, a2);
    v28 = v6[2];
    v12 = v58;
    if (!v28)
    {
      break;
    }

    v57 = a2;
    v60 = MEMORY[0x1E69E7CC0];
    sub_19290BCE0(0, v28, 0);
    v9 = 0;
    v8 = v60;
    a2 = v6 + 7;
    while (v9 < v6[2])
    {
      a1 = MEMORY[0x193B10C70](*(a2 - 3), *(a2 - 2), *(a2 - 1), *a2);
      v30 = v29;
      v60 = v8;
      v32 = v8[2];
      v31 = v8[3];
      if (v32 >= v31 >> 1)
      {
        sub_19290BCE0((v31 > 1), v32 + 1, 1);
        v8 = v60;
      }

      ++v9;
      v8[2] = v32 + 1;
      v33 = &v8[2 * v32];
      v33[4] = a1;
      v33[5] = v30;
      a2 += 4;
      v12 = v58;
      if (v28 == v9)
      {
        goto LABEL_26;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v34 = v8[2];
  if (v34)
  {
    v35 = v8 + 5;
    v36 = MEMORY[0x1E69E7CC0];
    do
    {
      v37 = *(v35 - 1);
      v38 = *v35;
      v39 = *(v12 + 16);

      if (v39)
      {
        v40 = sub_1929225DC(v37, v38);
        if (v41)
        {
          v42 = v40;

          v43 = (*(v12 + 56) + 16 * v42);
          v37 = *v43;
          v38 = v43[1];
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_113();
        sub_1928FE290();
        v36 = v46;
      }

      v44 = *(v36 + 16);
      if (v44 >= *(v36 + 24) >> 1)
      {
        sub_1928FE290();
        v36 = v47;
      }

      *(v36 + 16) = v44 + 1;
      v45 = v36 + 16 * v44;
      *(v45 + 32) = v37;
      *(v45 + 40) = v38;
      v35 += 2;
      --v34;
    }

    while (v34);
  }

  else
  {
LABEL_41:
    v36 = MEMORY[0x1E69E7CC0];
  }

  return v36;
}

id sub_192CF93AC(void *a1)
{
  v1 = a1;
  NSString.ams_splitKeyPathStringKeepingEnclosedParts()();

  sub_192874CD0(0, &qword_1ED6DE9F0, 0x1E696AEC0);
  v2 = sub_192F96AFC();

  return v2;
}

uint64_t sub_192CF9420(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v43 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_192F969EC();
    OUTLINED_FUNCTION_2_55();
    sub_192BC4A74();
    v15 = v29;
    v8 = *(v29 + 16);
    v30 = *(v29 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v30 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v31 = (v15 + 32 * v8);
      v31[4] = v6;
      v31[5] = v10;
      v31[6] = v11;
      v31[7] = v12;
      return v15;
    }

LABEL_41:
    sub_192BC4A74();
    v15 = v32;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v41 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v39 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v39;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_1_62();
      v17 = sub_192F969CC();
      v11 = v18;
      v42[0] = v17;
      v42[1] = v18;
      v19 = v43(v42);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_1_62();
      v16 = sub_192F968DC();
    }

    v22 = (v39 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v39 >> 14)
    {
      break;
    }

    v40 = sub_192F969EC();
    v35 = v24;
    v36 = v23;
    v34 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_113();
      sub_192BC4A74();
      v41 = v27;
    }

    v12 = *(v41 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v41 + 24) >> 1)
    {
      sub_192BC4A74();
      v41 = v28;
    }

    *(v41 + 16) = v11;
    v26 = (v41 + 32 * v12);
    v26[4] = v40;
    v26[5] = v36;
    v26[6] = v35;
    v26[7] = v34;
LABEL_20:
    OUTLINED_FUNCTION_1_62();
    v16 = sub_192F968DC();
    if ((v22 & 1) == 0 && *(v41 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v41;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_192F969EC();
        OUTLINED_FUNCTION_2_55();
        v15 = v41;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v30 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      OUTLINED_FUNCTION_113();
      sub_192BC4A74();
      v15 = v33;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Date.utcGregorianTimestamp(year:month:day:hour:minute:second:millisecond:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a6;
  v50 = a7;
  v47 = a4;
  v48 = a5;
  v45 = a2;
  v46 = a3;
  v43 = a8;
  v44 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131D0, &qword_192FBF430);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14808, qword_192FC8688);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v41 - v14;
  v42 = sub_192F956DC();
  OUTLINED_FUNCTION_4_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  v23 = sub_192F95D7C();
  OUTLINED_FUNCTION_4_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_15();
  v30 = v29 - v28;
  v31 = sub_192F95DFC();
  OUTLINED_FUNCTION_4_0();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_15();
  v38 = v37 - v36;
  (*(v25 + 104))(v30, *MEMORY[0x1E6969868], v23);
  sub_192F95D8C();
  (*(v25 + 8))(v30, v23);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v31);
  v39 = sub_192F95E3C();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v39);
  sub_192F956AC();
  (*(v33 + 16))(v15, v38, v31);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v31);
  sub_192F956BC();
  sub_192F95E1C();
  sub_192F956CC();
  sub_192F9566C();
  sub_192F9567C();
  sub_192F9564C();
  sub_192F9565C();
  sub_192F9568C();
  result = sub_192F9569C();
  if ((v50 * 1000) >> 64 == (1000 * v50) >> 63)
  {
    result = 1000000 * v50;
    if ((1000 * v50 * 1000) >> 64 == (1000000 * v50) >> 63)
    {
      sub_192F9563C();
      sub_192F95DBC();
      (*(v17 + 8))(v22, v42);
      return (*(v33 + 8))(v38, v31);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id (*sub_192CF9C2C(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = [v3 autoSyncDisabledForTSDataSync];
  return sub_192CF9C80;
}

uint64_t sub_192CF9CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_isUniquelyReferenced_nonNull_native();
  v20 = *v4;
  v9 = sub_1929225DC(a3, a4);
  if (__OFADD__(*(v20 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15A80, &qword_192FCEBC8);
  if (sub_192F9741C())
  {
    v13 = sub_1929225DC(a3, a4);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_11:
    result = sub_192F977CC();
    __break(1u);
    return result;
  }

LABEL_5:
  *v4 = v20;
  if ((v12 & 1) == 0)
  {
    sub_192C9AB5C(v11, a3, a4, MEMORY[0x1E69E7CC0], v20);
  }

  v15 = *(v20 + 56) + 8 * v11;
  sub_192BC487C();
  v16 = *(*v15 + 16);
  sub_192BC4894(v16);
  v17 = *v15;
  *(v17 + 16) = v16 + 1;
  v18 = v17 + 16 * v16;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
}

uint64_t sub_192CF9E3C()
{
  v0 = sub_192F9550C();
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE142B0, &unk_192FC8490);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v37 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131F0, &unk_192FBF450);
  v42 = sub_192F966CC();
  sub_192F9558C();
  sub_192CFA4D8(v14, v11);
  v15 = sub_192F955BC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1)
  {

    sub_1928FC07C(v11, &qword_1EAE142B0, &unk_192FC8490);
LABEL_20:
    v35 = sub_192F966CC();
    goto LABEL_21;
  }

  v16 = sub_192F9556C();
  (*(*(v15 - 8) + 8))(v11, v15);
  if (!v16)
  {

    goto LABEL_20;
  }

  v38 = v14;
  v39 = v16;
  v17 = *(v16 + 16);
  if (v17)
  {
    v20 = *(v2 + 16);
    v18 = v2 + 16;
    v19 = v20;
    v21 = v39 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v22 = *(v18 + 56);
    v40 = v0;
    v41 = v22;
    v23 = (v18 - 8);
    do
    {
      v19(v6, v21, v0);
      v24 = sub_192F954EC();
      v26 = v25;

      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        v28 = sub_192F954FC();
        if (v29)
        {
          v30 = v28;
          v31 = v29;
          v32 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v32 = v28 & 0xFFFFFFFFFFFFLL;
          }

          if (!v32)
          {
            (*v23)(v6, v0);

            goto LABEL_15;
          }

          v33 = sub_192F954EC();
          sub_192CF9CD4(v30, v31, v33, v34);

          v0 = v40;
        }
      }

      (*v23)(v6, v0);
LABEL_15:
      v21 += v41;
      --v17;
    }

    while (v17);
  }

  v35 = v42;
  v14 = v38;
LABEL_21:
  sub_1928FC07C(v14, &qword_1EAE142B0, &unk_192FC8490);
  return v35;
}

uint64_t sub_192CFA1D0@<X0>(uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_192F955BC();
  OUTLINED_FUNCTION_4_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0, &unk_192FC78B0);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v30 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE142B0, &unk_192FC8490);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v30 - v23;
  sub_192F9558C();
  if (!__swift_getEnumTagSinglePayload(v24, 1, v6))
  {

    sub_192F955AC();
  }

  if (__swift_getEnumTagSinglePayload(v24, 1, v6))
  {
    v25 = sub_192F95A8C();
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v25);
  }

  else
  {
    (*(v8 + 16))(v12, v24, v6);
    sub_192F9559C();
    (*(v8 + 8))(v12, v6);
  }

  sub_192C56500(v20, v17);
  v26 = sub_192F95A8C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v26);
  v28 = *(v26 - 8);
  if (EnumTagSinglePayload == 1)
  {
    (*(v28 + 16))(a3, v4, v26);
    if (__swift_getEnumTagSinglePayload(v17, 1, v26) != 1)
    {
      sub_1928FC07C(v17, &unk_1EAE144B0, &unk_192FC78B0);
    }
  }

  else
  {
    (*(v28 + 32))(a3, v17, v26);
  }

  return sub_1928FC07C(v24, &qword_1EAE142B0, &unk_192FC8490);
}

uint64_t sub_192CFA4D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE142B0, &unk_192FC8490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static URL.ams_paymentSheetsUIDirectory.getter(char *a1@<X8>)
{
  v122 = *MEMORY[0x1E69E9840];
  v2 = sub_192F95A8C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v101 - v9;
  v11 = [objc_opt_self() ams_paymentSheetsUIDirectory];
  if (v11)
  {
    v12 = v11;
    sub_192F959AC();

    v13 = *(v3 + 32);
    v13(v10, v7, v2);
    v14 = objc_opt_self();
    v15 = [v14 defaultManager];
    sub_192F959FC();
    v16 = sub_192F9679C();

    v17 = [v15 fileExistsAtPath_];

    if (v17)
    {
      v13(a1, v10, v2);
    }

    else
    {
      v105 = v13;
      v106 = v3 + 32;
      v107 = a1;
      if (qword_1ED6DF160 != -1)
      {
        OUTLINED_FUNCTION_1_2(&qword_1ED6DF160);
      }

      v109 = qword_1ED6DF140;
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
      v40 = swift_allocObject();
      v103 = xmmword_192FBCD90;
      *(v40 + 16) = xmmword_192FBCD90;
      v41 = AMSSetLogKeyIfNeeded();
      v42 = sub_192F967CC();
      v44 = v43;

      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
      v45 = OUTLINED_FUNCTION_90(v102);
      v108 = xmmword_192FBCD50;
      *(v45 + 16) = xmmword_192FBCD50;
      v115 = 0x5B203A4C5255;
      v116 = 0xE600000000000000;
      MEMORY[0x193B10CE0](v42, v44);

      MEMORY[0x193B10CE0](93, 0xE100000000000000);
      v118 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_1_63(v115);
      *(v45 + 64) = 0;
      *(v40 + 32) = v45;
      sub_19287AEE0();
      v113 = v46;
      v47._object = 0x8000000193025430;
      v47._countAndFlagsBits = 0xD000000000000014;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v47);
      v121 = v2;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v120);
      (*(v3 + 16))(boxed_opaque_existential_0, v10, v2);
      sub_192878268(v120, v114);
      OUTLINED_FUNCTION_11_38();
      v119 = 0;
      v49 = v113;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_0();
        v49 = v99;
      }

      v50 = v109;
      if (*(v49 + 16) >= *(v49 + 24) >> 1)
      {
        OUTLINED_FUNCTION_3_13();
      }

      OUTLINED_FUNCTION_4_57();
      sub_1928FC07C(v120, &unk_1EAE131B0, &qword_192FBD860);
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v51);
      *(v40 + 40) = v113;
      v52 = sub_192F96E4C();
      if (os_log_type_enabled(v50, v52))
      {
        v53 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
        }

        v54 = byte_1ED6DE5D8;
        v55 = swift_allocObject();
        *(v55 + 16) = v54;
        v115 = v40;
        v116 = sub_192BB97CC;
        v117 = v55;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
        sub_1928FD924();
        OUTLINED_FUNCTION_3_59();
        v56 = sub_192F9674C();
        v58 = v57;

        objc_autoreleasePoolPop(v53);
        v59 = objc_autoreleasePoolPush();
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
        v61 = OUTLINED_FUNCTION_90(v60);
        OUTLINED_FUNCTION_6_45(v61);
        *(v62 + 56) = MEMORY[0x1E69E6158];
        v61[4].n128_u64[0] = sub_1928FDB30();
        v61[2].n128_u64[0] = v56;
        v61[2].n128_u64[1] = v58;
        sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v50, v52, v61);

        objc_autoreleasePoolPop(v59);
      }

      v63 = [v14 defaultManager];
      v64 = sub_192F9596C();
      v115 = 0;
      v65 = [v63 createDirectoryAtURL:v64 withIntermediateDirectories:1 attributes:0 error:&v115];

      *&v110 = v115;
      if (v65)
      {
        v66 = OUTLINED_FUNCTION_5_44();
        v105(v66);
        v67 = v110;

        v68 = v67;
      }

      else
      {
        v69 = v110;
        v70 = sub_192F958DC();

        swift_willThrow();
        v71 = swift_allocObject();
        *(v71 + 16) = v103;
        v72 = AMSSetLogKeyIfNeeded();
        v73 = sub_192F967CC();
        v75 = v74;

        v76 = OUTLINED_FUNCTION_90(v102);
        v77 = OUTLINED_FUNCTION_6_45(v76);
        v115 = 0x5B203A4C5255;
        v116 = 0xE600000000000000;
        MEMORY[0x193B10CE0](v73, v75, v77);

        MEMORY[0x193B10CE0](93, 0xE100000000000000);
        v118 = MEMORY[0x1E69E6158];
        OUTLINED_FUNCTION_1_63(v115);
        v76[4].n128_u8[0] = 0;
        *(v71 + 32) = v76;
        sub_19287AEE0();
        v113 = v78;
        v79._countAndFlagsBits = 0xD00000000000001CLL;
        v79._object = 0x8000000193025450;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v79);
        swift_getErrorValue();
        v80 = v111;
        v81 = v112;
        v121 = v112;
        v82 = __swift_allocate_boxed_opaque_existential_0(v120);
        (*(*(v81 - 8) + 16))(v82, v80, v81);
        sub_192878268(v120, v114);
        OUTLINED_FUNCTION_11_38();
        v119 = 0;
        v83 = v113;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = v105;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_7_0();
          v83 = v100;
          v113 = v100;
        }

        if (*(v83 + 16) >= *(v83 + 24) >> 1)
        {
          OUTLINED_FUNCTION_3_13();
        }

        OUTLINED_FUNCTION_4_57();
        sub_1928FC07C(v120, &unk_1EAE131B0, &qword_192FBD860);
        v86._countAndFlagsBits = 0;
        v86._object = 0xE000000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v86);
        *(v71 + 40) = v113;
        v87 = sub_192F96E5C();
        if (os_log_type_enabled(v50, v87))
        {
          v88 = objc_autoreleasePoolPush();
          if (qword_1ED6DF1A0 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
          }

          v89 = byte_1ED6DE5D8;
          v90 = swift_allocObject();
          *(v90 + 16) = v89;
          v115 = v71;
          v116 = sub_192BB97CC;
          v117 = v90;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
          sub_1928FD924();
          OUTLINED_FUNCTION_3_59();
          v91 = sub_192F9674C();
          v93 = v92;

          objc_autoreleasePoolPop(v88);
          v94 = objc_autoreleasePoolPush();
          v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
          v96 = OUTLINED_FUNCTION_90(v95);
          OUTLINED_FUNCTION_6_45(v96);
          *(v97 + 56) = MEMORY[0x1E69E6158];
          v96[4].n128_u64[0] = sub_1928FDB30();
          v96[2].n128_u64[0] = v91;
          v96[2].n128_u64[1] = v93;
          sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v109, v87, v96);

          objc_autoreleasePoolPop(v94);
        }

        v98 = OUTLINED_FUNCTION_5_44();
        v85(v98);
      }
    }
  }

  else
  {
    if (qword_1ED6DF160 != -1)
    {
      OUTLINED_FUNCTION_1_2(&qword_1ED6DF160);
    }

    v18 = qword_1ED6DF140;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_192FBCD90;
    v20 = AMSSetLogKeyIfNeeded();
    v21 = sub_192F967CC();
    v23 = v22;

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v25 = OUTLINED_FUNCTION_90(v24);
    v110 = xmmword_192FBCD50;
    *(v25 + 16) = xmmword_192FBCD50;
    v115 = 0x5B203A4C5255;
    v116 = 0xE600000000000000;
    MEMORY[0x193B10CE0](v21, v23);

    MEMORY[0x193B10CE0](93, 0xE100000000000000);
    v26 = MEMORY[0x1E69E6158];
    v118 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_1_63(v115);
    *(v25 + 64) = 0;
    *(v19 + 32) = v25;
    v27._countAndFlagsBits = 0xD000000000000047;
    v27._object = 0x80000001930253E0;
    LogInterpolation.init(stringLiteral:)(v27);
    v28 = sub_192F96E5C();
    if (os_log_type_enabled(v18, v28))
    {
      v29 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      v30 = byte_1ED6DE5D8;
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      v115 = v19;
      v116 = sub_1928FA5C4;
      v117 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_3_59();
      v32 = sub_192F9674C();
      v34 = v33;

      objc_autoreleasePoolPop(v29);
      v35 = objc_autoreleasePoolPush();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v37 = OUTLINED_FUNCTION_90(v36);
      *(v37 + 16) = v110;
      *(v37 + 56) = v26;
      *(v37 + 64) = sub_1928FDB30();
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v18, v28, v37);

      objc_autoreleasePoolPop(v35);
    }

    v38 = [objc_opt_self() defaultManager];
    v39 = [v38 temporaryDirectory];

    sub_192F959AC();
  }
}

uint64_t URL.modifiedDate.getter@<X0>(uint64_t a1@<X8>)
{

  return sub_192CFB23C(a1);
}

uint64_t URL.createdDate.getter@<X0>(uint64_t a1@<X8>)
{

  return sub_192CFB23C(a1);
}

uint64_t sub_192CFB23C@<X0>(uint64_t a1@<X8>)
{
  v32[4] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10, &qword_192FBCDA0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v32[-1] - v4;
  sub_192F959BC();
  v6 = [objc_opt_self() defaultManager];
  sub_192F959FC();
  v7 = sub_192F9679C();

  v32[0] = 0;
  v8 = [v6 attributesOfItemAtPath:v7 error:v32];

  v9 = v32[0];
  if (!v8)
  {
    v20 = v32[0];
    v21 = sub_192F958DC();

    swift_willThrow();
    v19 = sub_192F95CFC();
    v16 = a1;
    v17 = 1;
    v18 = 1;
    goto LABEL_6;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_192CFB520();
  sub_192F9669C();
  v10 = v9;

  sub_192BD2D38();

  if (v32[3])
  {
    v11 = sub_192F95CFC();
    swift_dynamicCast();
    OUTLINED_FUNCTION_10_35();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    if (__swift_getEnumTagSinglePayload(v5, 1, v11) != 1)
    {
      (*(*(v11 - 8) + 32))(a1, v5, v11);
      OUTLINED_FUNCTION_10_35();
LABEL_6:
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
      return sub_192F9599C();
    }
  }

  else
  {
    sub_1928FC07C(v32, &unk_1EAE131B0, &qword_192FBD860);
    v11 = sub_192F95CFC();
    OUTLINED_FUNCTION_10_35();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }

  sub_192F95CFC();
  OUTLINED_FUNCTION_10_35();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  if (__swift_getEnumTagSinglePayload(v5, 1, v11) != 1)
  {
    sub_1928FC07C(v5, &qword_1EAE12E10, &qword_192FBCDA0);
  }

  return sub_192F9599C();
}

unint64_t sub_192CFB520()
{
  result = qword_1EAE11858;
  if (!qword_1EAE11858)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11858);
  }

  return result;
}

uint64_t sub_192CFB5C4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CFB5D8()
{
  OUTLINED_FUNCTION_5();
  swift_getObjectType();
  v1 = sub_192CFC144();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_192CFB690;

  return sub_1928F6B4C(v1);
}

uint64_t sub_192CFB690()
{
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;
  *(v4 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_192CFB7A4, 0, 0);
}

uint64_t sub_192CFB7A4()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[6];
  v2 = sub_192CFC1D8(v0[2]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t static URLParserInternal.type(for:bag:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CFB844()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[6];
  type metadata accessor for URLParser();
  inited = swift_initStackObject();
  v0[7] = inited;
  *(inited + 16) = v1;
  swift_unknownObjectRetain();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_192CFB908;
  v4 = v0[5];

  return sub_192CFB5C4(v4);
}

uint64_t sub_192CFB908()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v4 + 72) = v0;

  if (v0)
  {
    v7 = sub_192CFBA8C;
  }

  else
  {
    *(v4 + 80) = v3;
    v7 = sub_192CFBA24;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_192CFBA24()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_192CFBA8C()
{
  OUTLINED_FUNCTION_3();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_192CFBBA8(uint64_t a1, uint64_t a2, const void *a3)
{
  v3[2] = a2;
  v6 = sub_192F95A8C();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a3);
  sub_192F959AC();
  swift_unknownObjectRetain();
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_192CFBCD8;

  return static URLParserInternal.type(for:bag:)(v7, a2);
}

uint64_t sub_192CFBCD8(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  OUTLINED_FUNCTION_6();
  *v7 = v6;
  v8 = *v2;
  *v7 = *v2;

  v9 = v5[6];
  (*(v5[4] + 8))(v5[5], v5[3]);
  swift_unknownObjectRelease();
  if (v3)
  {
    v10 = sub_192F958CC();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1, 0);
  }

  _Block_release(v6[6]);

  v11 = v8[1];

  return v11();
}

id URLParserInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id URLParserInternal.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLParserInternal();
  return objc_msgSendSuper2(&v2, sel_init);
}

id URLParserInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLParserInternal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192CFBF9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_192CFC05C;

  return sub_192CFBBA8(v2, v3, v4);
}

uint64_t sub_192CFC05C()
{
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_192CFC144()
{
  sub_1928F6488();
  v1 = *(v0 + 16);
  if (v1 >= *(v0 + 24) >> 1)
  {
    sub_1928F6488();
  }

  OUTLINED_FUNCTION_62_0();
  *(v2 + 16) = v1 + 1;
  v3 = v2 + 24 * v1;
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = v4;
  *(v3 + 48) = 6;
  return v2;
}

void *sub_192CFC1D8(uint64_t a1)
{
  type metadata accessor for URLParserError(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_15();
  v7 = (v6 - v5);
  v8 = sub_192F9592C();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = sub_192C65E7C();
    if (!v1)
    {
      v7 = sub_192CFC994(a1, v12, v13, v14);
      v16 = v15;

      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200);
        swift_willThrowTypedImpl();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_62_0();
    *v7 = 0x74204C5255206F4ELL;
    v7[1] = 0xEF686374616D206FLL;
    v7[2] = 0xD000000000000027;
    v7[3] = v17;
    v7[4] = 2;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_64();
    sub_192CFE5FC(v18, v19);
    swift_allocError();
    sub_192CFCB9C(v7, v20);
    swift_willThrow();
    sub_192CFCC00(v7);
  }

  return v7;
}

uint64_t type metadata accessor for URLParserError(uint64_t a1)
{
  result = qword_1EAE11A50;
  if (!qword_1EAE11A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_192CFC3F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  type metadata accessor for URLParserError(0);
  OUTLINED_FUNCTION_10();
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v65 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15AD8, &qword_192FCEEA0);
  OUTLINED_FUNCTION_62();
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v65 - v23;
  v25 = (&v65 + *(v22 + 56) - v23);
  sub_192CFCB9C(a1, &v65 - v23);
  sub_192CFCB9C(a2, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_192CFCB9C(v24, v16);
    v27 = *v16;
    v26 = v16[1];
    v29 = v16[2];
    v28 = v16[3];
    v30 = v16[4];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = *v25;
      v32 = v25[1];
      v34 = v25[2];
      v33 = v25[3];
      v74 = v25[4];
      if (v27 == v31 && v26 == v32)
      {
      }

      else
      {
        v36 = sub_192F9775C();

        if ((v36 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if (v29 == v34 && v28 == v33)
      {
      }

      else
      {
        OUTLINED_FUNCTION_77();
        v56 = sub_192F9775C();

        if ((v56 & 1) == 0)
        {
LABEL_30:
          sub_192CFCC00(v24);
          return 0;
        }
      }

      v59 = v30 == v74;
      goto LABEL_43;
    }

LABEL_12:
    sub_1928FB988(v24, &qword_1EAE15AD8, &qword_192FCEEA0);
    return 0;
  }

  v73 = v11;
  v74 = v4;
  sub_192CFCB9C(v24, v19);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15A90, &unk_192FCEC48);
  v38 = v37[12];
  v39 = *&v19[v38];
  v40 = *&v19[v38 + 8];
  v41 = v37[16];
  v42 = *&v19[v41 + 8];
  v71 = *&v19[v41];
  v72 = v39;
  v43 = v37[20];
  v70 = *&v19[v43];
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    (*(v6 + 8))(v19, v74);
    goto LABEL_12;
  }

  v68 = v40;
  v69 = v42;
  v44 = *(v25 + v38);
  v45 = *(v25 + v38 + 8);
  v46 = *(v25 + v41 + 8);
  v66 = *(v25 + v41);
  v67 = v44;
  v65 = *(v25 + v43);
  v47 = v74;
  (*(v6 + 32))(v73, v25, v74);
  v48 = sub_192F9598C();
  v49 = *(v6 + 8);
  v49(v19, v47);
  if ((v48 & 1) == 0)
  {
    v57 = OUTLINED_FUNCTION_77();
    (v49)(v57);

    goto LABEL_29;
  }

  v50 = v46;
  v51 = v72 == v67 && v68 == v45;
  v52 = v69;
  if (v51)
  {
  }

  else
  {
    v53 = sub_192F9775C();

    if ((v53 & 1) == 0)
    {
      v54 = OUTLINED_FUNCTION_77();
      (v49)(v54);
LABEL_20:

LABEL_29:

      goto LABEL_30;
    }
  }

  if (v71 == v66 && v52 == v50)
  {

    v63 = OUTLINED_FUNCTION_77();
    (v49)(v63);
  }

  else
  {
    v61 = sub_192F9775C();

    v62 = OUTLINED_FUNCTION_77();
    (v49)(v62);
    if ((v61 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v59 = v70 == v65;
LABEL_43:
  v58 = v59;
  sub_192CFCC00(v24);
  return v58;
}

uint64_t sub_192CFC8D8(uint64_t a1)
{
  v2 = sub_192CFE5FC(&qword_1EAE15A98, &unk_192FCED20);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_192CFC930(uint64_t a1)
{
  v2 = sub_192CFE5FC(&qword_1EAE15A98, &unk_192FCED20);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_192CFC994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  sub_192CFCC5C(a1, v14 - v13);
  if (a2 && (sub_192CFD020(v15, a2) & 1) != 0)
  {
    v16 = 0;
  }

  else if (a4 && (sub_192CFD020(v15, a4) & 1) != 0)
  {
    v16 = 2;
  }

  else if (a3 && (sub_192CFD020(v15, a3) & 1) != 0)
  {
    v16 = 1;
  }

  else
  {
    type metadata accessor for URLParserError(0);
    OUTLINED_FUNCTION_1_64();
    sub_192CFE5FC(v17, v18);
    v16 = swift_allocError();
    v20 = v19;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15A90, &unk_192FCEC48);
    v22 = (v20 + v21[12]);
    v23 = (v20 + v21[16]);
    v24 = v21[20];
    (*(v10 + 16))(v20, a1, v8);
    OUTLINED_FUNCTION_62_0();
    *v22 = 0xD000000000000012;
    v22[1] = v25;
    OUTLINED_FUNCTION_62_0();
    *v23 = v26 | 0x24;
    v23[1] = v27;
    *(v20 + v24) = 7;
    swift_storeEnumTagMultiPayload();
  }

  v28 = OUTLINED_FUNCTION_48();
  v29(v28);
  return v16;
}

uint64_t sub_192CFCB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLParserError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192CFCC00(uint64_t a1)
{
  v2 = type metadata accessor for URLParserError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192CFCC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0, &unk_192FC78B0);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v38 - v6;
  v8 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v10 = v9;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v39 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v40 = &v38 - v16;
  v41 = v10;
  v38 = *(v10 + 16);
  v38(a2, a1, v8);
  sub_192CF9E3C();
  v17 = sub_192BD5670();
  if (!v17 || (v18 = sub_192C949F0(v17), v20 = v19, , !v20))
  {

    v18 = 0;
    v20 = 0xE000000000000000;
  }

  v21 = sub_192BD5670();

  if (!v21 || (v22 = sub_192C949F0(v21), v24 = v23, , !v24))
  {

    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

    goto LABEL_17;
  }

  if (v18 != 0x746E756F636361 || v20 != 0xE700000000000000)
  {
    v27 = sub_192F9775C();

    if (v27)
    {
      goto LABEL_19;
    }

LABEL_17:

    v28 = v41;
    goto LABEL_24;
  }

LABEL_19:
  sub_192F95A3C();

  v28 = v41;
  v29 = OUTLINED_FUNCTION_12_30();
  v30(v29);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    v31 = v40;
    v38(v40, a1, v8);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_1928FB988(v7, &unk_1EAE144B0, &unk_192FC78B0);
    }
  }

  else
  {
    v31 = v40;
    (*(v28 + 32))(v40, v7, v8);
  }

  (*(v28 + 32))(a2, v31, v8);
LABEL_24:
  result = sub_192F95A1C();
  if (v33)
  {
    v34 = sub_192F9699C();

    if ((v34 & 1) == 0)
    {
      v35 = v39;
      sub_192CFA1D0(v39);
      v36 = OUTLINED_FUNCTION_12_30();
      v37(v36);
      return (*(v28 + 32))(a2, v35, v8);
    }
  }

  return result;
}

uint64_t sub_192CFD020(uint64_t a1, uint64_t a2)
{
  sub_192F9592C();
  v13 = MEMORY[0x193B10D50]();
  v3 = *(a2 + 16);
  if (v3)
  {
    v12 = 0x80000001930255B0;
    v4 = (a2 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = objc_allocWithZone(MEMORY[0x1E696AE70]);

      v8 = sub_192CFE254(v6, v5, 1);
      v9 = sub_192F9679C();
      v10 = [v8 numberOfMatchesInString:v9 options:2 range:{0, v13, v12}];

      if (v10 >= 1)
      {
        break;
      }

      v4 += 2;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    return 1;
  }

  else
  {
LABEL_5:

    return 0;
  }
}

BOOL sub_192CFD538()
{
  v0 = sub_192F9750C();

  return v0 != 0;
}

unint64_t sub_192CFD59C()
{
  v0 = sub_192F9750C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_192CFD5E8(char a1)
{
  if (!a1)
  {
    return 0x702D6C72752D3276;
  }

  if (a1 == 1)
  {
    return 0x747461702D6C7275;
  }

  return 0xD000000000000014;
}

uint64_t sub_192CFD658()
{
  OUTLINED_FUNCTION_14_29();
  if (v4)
  {
    if (!v5 || (sub_192C1C680(v4, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v3)
  {
    if (!v2 || (sub_192C1C680(v3, v2) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  if (v1)
  {
    if (v0)
    {
      v6 = OUTLINED_FUNCTION_48();
      if (sub_192C1C680(v6, v7))
      {
        return 1;
      }
    }
  }

  else if (!v0)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_192CFD6E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15B08, &qword_192FCF150);
  OUTLINED_FUNCTION_4_0();
  v10 = v9;
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192CFEA9C();
  sub_192F9799C();
  v18 = a2;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131F0, &unk_192FBF450);
  sub_1929245BC(&qword_1EAE133F8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  OUTLINED_FUNCTION_3_60();
  if (!v4)
  {
    v18 = v16;
    v17 = 1;
    OUTLINED_FUNCTION_3_60();
    v18 = a4;
    v17 = 2;
    OUTLINED_FUNCTION_3_60();
  }

  return (*(v10 + 8))(v14, v8);
}

void sub_192CFD884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_192F978BC();
    sub_192C1E504();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_192F978BC();
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_192F978BC();
    return;
  }

  sub_192F978BC();
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_192F978BC();
  sub_192C1E504();
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_192F978BC();
  OUTLINED_FUNCTION_48();

  sub_192C1E504();
}

uint64_t sub_192CFD938(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15B00, &unk_192FCF140);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v3, v4);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192CFEA9C();
  sub_192F9797C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131F0, &unk_192FBF450);
  sub_1929245BC(&qword_1ED6DE860, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  OUTLINED_FUNCTION_2_56();
  sub_192F9759C();
  OUTLINED_FUNCTION_2_56();
  sub_192F9759C();
  OUTLINED_FUNCTION_2_56();
  sub_192F9759C();
  v5 = OUTLINED_FUNCTION_31_1();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_192CFDB6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15AC8, &qword_192FCEE98);
  OUTLINED_FUNCTION_4_0();
  v10 = v9;
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v16 - v13;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192CFE698();
  sub_192F9799C();
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = a4;
  sub_192CFE740();
  sub_192F976CC();
  return (*(v10 + 8))(v14, v8);
}

uint64_t sub_192CFDCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_192F9789C();
  sub_192CFD884(v7, a1, a2, a3);
  return sub_192F978DC();
}

void *sub_192CFDD1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15AC0, &qword_192FCEE90);
  OUTLINED_FUNCTION_4_0();
  v5 = v4;
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v12 - v8;
  v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192CFE698();
  sub_192F9797C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    sub_192CFE6EC();
    sub_192F975EC();
    (*(v5 + 8))(v9, v3);
    v10 = v12[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v10;
}

BOOL sub_192CFDE94@<W0>(_BYTE *a1@<X8>)
{
  result = sub_192CFD538();
  *a1 = result;
  return result;
}

unint64_t sub_192CFDEC8@<X0>(void *a1@<X8>)
{
  result = sub_192CFD580();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

BOOL sub_192CFDF18@<W0>(_BYTE *a1@<X8>)
{
  result = sub_192CFD538();
  *a1 = result;
  return result;
}

uint64_t sub_192CFDF58(uint64_t a1)
{
  v2 = sub_192CFE698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CFDF94(uint64_t a1)
{
  v2 = sub_192CFE698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_192CFDFF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CFD59C();
  *a1 = result;
  return result;
}

uint64_t sub_192CFE024@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192CFD5E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_192CFE058@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CFD59C();
  *a1 = result;
  return result;
}

uint64_t sub_192CFE090(uint64_t a1)
{
  v2 = sub_192CFEA9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CFE0CC(uint64_t a1)
{
  v2 = sub_192CFEA9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192CFE108@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_192CFD938(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void *sub_192CFE17C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_192CFDD1C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_192CFE1D8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_192F9789C();
  sub_192CFD884(v6, v2, v3, v4);
  return sub_192F978DC();
}

id sub_192CFE254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_192F9679C();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_192F958DC();

    swift_willThrow();
  }

  return v6;
}

void sub_192CFE340(uint64_t a1, uint64_t a2)
{
  sub_192CFE3B4(319, a2);
  if (v2 <= 0x3F)
  {
    sub_192CFE4BC(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_192CFE3B4(uint64_t a1, uint64_t a2)
{
  if (!qword_1EAE11B00)
  {
    MEMORY[0x1EEE9AC00](0, a2);
    sub_192F95A8C();
    type metadata accessor for Code(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EAE11B00);
    }
  }
}

void sub_192CFE4BC(uint64_t a1)
{
  if (!qword_1EAE11870)
  {
    type metadata accessor for Code(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EAE11870);
    }
  }
}

uint64_t sub_192CFE52C(void *a1)
{
  a1[1] = sub_192CFE5FC(&qword_1EAE15A98, &unk_192FCED20);
  a1[2] = sub_192CFE5FC(&qword_1EAE15AA0, &unk_192FCECD8);
  result = sub_192CFE5FC(&qword_1EAE15AA8, &unk_192FCECB0);
  a1[3] = result;
  return result;
}

uint64_t sub_192CFE5B8(uint64_t a1)
{
  result = sub_192CFE5FC(&qword_1EAE15AB0, &unk_192FCED60);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_192CFE5FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLParserError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_192CFE644()
{
  result = qword_1EAE15AB8;
  if (!qword_1EAE15AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15AB8);
  }

  return result;
}

unint64_t sub_192CFE698()
{
  result = qword_1EAE11AB0;
  if (!qword_1EAE11AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11AB0);
  }

  return result;
}

unint64_t sub_192CFE6EC()
{
  result = qword_1EAE11A80;
  if (!qword_1EAE11A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11A80);
  }

  return result;
}

unint64_t sub_192CFE740()
{
  result = qword_1EAE15AD0;
  if (!qword_1EAE15AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15AD0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for URLParserBag.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t sub_192CFE840(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_192CFE894(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_192CFE8FC()
{
  result = qword_1EAE15AE0;
  if (!qword_1EAE15AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15AE0);
  }

  return result;
}

unint64_t sub_192CFE998()
{
  result = qword_1EAE15AF8;
  if (!qword_1EAE15AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15AF8);
  }

  return result;
}

unint64_t sub_192CFE9F0()
{
  result = qword_1EAE11AA0;
  if (!qword_1EAE11AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11AA0);
  }

  return result;
}

unint64_t sub_192CFEA48()
{
  result = qword_1EAE11AA8;
  if (!qword_1EAE11AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11AA8);
  }

  return result;
}

unint64_t sub_192CFEA9C()
{
  result = qword_1EAE11A98;
  if (!qword_1EAE11A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11A98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for URLParserBag.CommerceUIURLs.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_192CFEC14()
{
  result = qword_1ED6DE628;
  if (!qword_1ED6DE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6DE628);
  }

  return result;
}

unint64_t sub_192CFEC6C()
{
  result = qword_1EAE11A88;
  if (!qword_1EAE11A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11A88);
  }

  return result;
}

unint64_t sub_192CFECC4()
{
  result = qword_1EAE11A90;
  if (!qword_1EAE11A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11A90);
  }

  return result;
}

uint64_t URLRequest.ams_fpdiDataToSign(signedAction:fpdiBag:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0, &unk_192FC78B0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v13 - v4;
  v13[1] = *(a1 + 72);
  sub_192F953CC();
  v6 = sub_192F95A8C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  sub_192CFEEB0(v5);
  if (EnumTagSinglePayload == 1)
  {
    return 0;
  }

  v9 = sub_192F9539C();
  v10 = [v9 ams_cookies];

  sub_192F9669C();
  sub_192CAC248();
  v8 = v11;

  return v8;
}

uint64_t sub_192CFEEB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0, &unk_192FC78B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id URLSentry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id URLSentry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLSentry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of URLSentry.isTrusted(url:)()
{
  OUTLINED_FUNCTION_5();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38(v2);
  *v3 = v4;
  v3[1] = sub_192BCA814;
  v5 = OUTLINED_FUNCTION_49_0();

  return v7(v5);
}

uint64_t sub_192CFF144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DE0, &qword_192FBD930);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v23 - v11;
  sub_192CFF3E0(a3, v23 - v11);
  v13 = sub_192F96C6C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_19290736C(v12);
  }

  else
  {
    sub_192F96C5C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_192F96B7C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_192F9687C() + 32;
      v18 = swift_allocObject();
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;

      if (v16 | v14)
      {
        v24[0] = 0;
        v24[1] = 0;
        v19 = v24;
        v24[2] = v14;
        v24[3] = v16;
      }

      else
      {
        v19 = 0;
      }

      v23[1] = 7;
      v23[2] = v19;
      v23[3] = v17;
      v21 = swift_task_create();

      sub_19290736C(a3);

      return v21;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19290736C(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_192CFF3E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DE0, &qword_192FBD930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192CFF450()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_12(v1);

  return v4(v3);
}

uint64_t sub_192CFF4E8()
{
  v0 = sub_192F9750C();

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

uint64_t sub_192CFF53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_192C1C680(a1, a3))
  {
    if (a2)
    {
      if (a4)
      {
        v6 = OUTLINED_FUNCTION_48();
        if (sub_192C1C680(v6, v7))
        {
          return 1;
        }
      }
    }

    else if (!a4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_192CFF590(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15B28, &qword_192FCF468);
  OUTLINED_FUNCTION_4_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19294D830();
  sub_192F9799C();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131F0, &unk_192FBF450);
  sub_1929245BC(&qword_1EAE133F8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  OUTLINED_FUNCTION_1_65();
  sub_192F976CC();
  if (!v3)
  {
    v17 = a3;
    v16 = 1;
    OUTLINED_FUNCTION_1_65();
    sub_192F9768C();
  }

  return (*(v9 + 8))(v13, v7);
}

void sub_192CFF720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_192C1E504();
  if (a3)
  {
    sub_192F978BC();
    OUTLINED_FUNCTION_48();

    sub_192C1E504();
  }

  else
  {
    sub_192F978BC();
  }
}

uint64_t sub_192CFF77C(uint64_t a1, uint64_t a2)
{
  sub_192F9789C();
  sub_192C1E504();
  sub_192F978BC();
  if (a2)
  {
    sub_192C1E504();
  }

  return sub_192F978DC();
}

uint64_t sub_192CFF814@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CFF4E8();
  *a1 = result;
  return result;
}

uint64_t sub_192CFF844@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19294D88C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_192CFF870@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CFF4E8();
  *a1 = result;
  return result;
}

uint64_t sub_192CFF8AC(uint64_t a1)
{
  v2 = sub_19294D830();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CFF8E8(uint64_t a1)
{
  v2 = sub_19294D830();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192CFF950(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_192F9789C();
  sub_192C1E504();
  sub_192F978BC();
  if (v2)
  {
    sub_192C1E504();
  }

  return sub_192F978DC();
}

unint64_t sub_192CFF9EC()
{
  result = qword_1ED6DE620;
  if (!qword_1ED6DE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6DE620);
  }

  return result;
}

unint64_t sub_192CFFA44()
{
  result = qword_1ED6DE300;
  if (!qword_1ED6DE300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE15B30, qword_192FCF4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6DE300);
  }

  return result;
}

unint64_t sub_192CFFAAC()
{
  result = qword_1EAE123D8;
  if (!qword_1EAE123D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE123D8);
  }

  return result;
}

void aslgmuibau()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = qword_1E73B2810[((-3 * (dword_1EAE15B78 ^ 0x8A ^ dword_1EAE15B50)) ^ byte_192FD0080[byte_192FCFD60[(-3 * (dword_1EAE15B78 ^ 0x8A ^ dword_1EAE15B50))] ^ 7]) + 16];
  v1 = *(v0 - 4);
  v2 = qword_1E73B2810[(byte_192FCFA68[(byte_192FCF75C[(-3 * (v1 ^ dword_1EAE15B50 ^ 0x8A)) - 12] ^ 0xC3) - 8] ^ (-3 * (v1 ^ dword_1EAE15B50 ^ 0x8A))) - 58];
  v3 = v1 - &v8 + *v2;
  v4 = 1543604477 * v3 + 0x6D4BA15110163F62;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v4;
  *v2 = v5;
  v6 = qword_1E73B2810[((-3 * ((dword_1EAE15B50 - dword_1EAE15B78) ^ 0x8A)) ^ byte_192FCF650[byte_192FD01D0[(-3 * ((dword_1EAE15B50 - dword_1EAE15B78) ^ 0x8A))] ^ 0xE2]) - 111] - 12;
  v7 = *(v6 + 8 * ((60 * ((*(v6 + 8 * ((byte_192FCF658[(byte_192FD01D0[(-3 * ((v5 + *(v0 - 4)) ^ 0x8A))] ^ 0x80) - 8] ^ (-3 * ((v5 + *(v0 - 4)) ^ 0x8A))) + 2697)))(24, 0x1010040E2407E0ALL) != 0)) | 0x682u));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192CFFCEC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x78D94BCC6DAD3D9BLL;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((459 * (v3 != 0)) ^ 0x4FDu)))();
}

uint64_t sub_192CFFE3C()
{
  v5 = *(v3 + 8) + 1822127336;
  v6 = ((v2 - 31) ^ 0x616F660B) + ((v2 - 294191445) & 0x1188FFFDu) + v0 > v5;
  if (v1 > 0x25B74D78 != v5 < 0xDA48B283)
  {
    v6 = v1 > 0x25B74D78;
  }

  return (*(v4 + 8 * (((2 * !v6) | (8 * !v6)) ^ v2)))();
}

void sub_192CFFED0()
{
  v8 = v3 ^ (v6 + 851);
  v9 = *v4;
  *(*v4 + v2) = 0;
  *(v9 + (v8 - 1289608258 + v1)) = 0;
  v10 = v1 - 2027506636;
  *(v9 + (v10 + 3)) = 1;
  *(v9 + (v10 + 2)) = 0;
  *v0 += 4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_192D003FC()
{
  v6 = *(v3 + 8) - 1523222835 + v4 + (v0 ^ 0x6B0) - 2015;
  v7 = v2 > 0x1918BB1C;
  v8 = v1 + 1846409495 > v6;
  if (v7 != v6 < 0xE6E744DF)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((1289 * v8) ^ v0)))();
}

uint64_t sub_192D00884(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v8 + 12);
  *(a6 + 8) = v8 + 12;
  return (*(v10 + 8 * ((((v11 + v7) < 0xFFFFFFFC) * (a2 + v6 - 586 + v9 + v6 - 972 + 740)) ^ v6)))(a1);
}

uint64_t sub_192D008CC()
{
  v5 = *(v3 + 8) - 780318865;
  v6 = v1 > ((v0 - 144781323) & 0xDCA5BEFF) - 321852806;
  v7 = v2 - 967755454 > v5;
  if (v5 < 0x3F2A850A == v6)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((v6 * (v0 ^ 0x67D)) ^ v0)))();
}

uint64_t sub_192D00D58@<X0>(int a1@<W1>, uint64_t a2@<X5>, int a3@<W8>)
{
  v7 = *(v4 + 12);
  *(a2 + 40) = v4 + 12;
  return (*(v6 + 8 * ((2654 * (v7 + v3 < ((6 * ((a3 - 903) ^ 0x271)) ^ (a1 - 725)) + ((a3 - 903) ^ (v5 + 410)))) ^ (a3 - 903))))();
}

uint64_t sub_192D00DB4()
{
  v6 = *(v3 + 8) - 1439124990;
  v7 = v1 > 0xE81A105A;
  v8 = v2 - 1626561575 > v6;
  if (v7 == v6 < 0x17E5EF9D)
  {
    v7 = v8;
  }

  return (*(v5 + 8 * ((v7 * (((v0 - 1811644490) | 0x40001037) - v4 + 17)) | v0)))();
}

uint64_t sub_192D00F54@<X0>(int a1@<W8>)
{
  v6 = ((2 * (v2 + 2 * a1)) & 0xFBDFFF3C) + ((v2 + 2 * a1) ^ 0xFDEFFF9F);
  if (v1 > 0x6F87E38C != v6 - 1836573492 < 0x90781C6B)
  {
    v7 = v6 - 1836573492 < 0x90781C6B;
  }

  else
  {
    v7 = v6 - 1836573492 > v3;
  }

  return (*(v5 + 8 * (v4 ^ (2045 * v7))))();
}

uint64_t sub_192D012F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  (*(v34 + 8 * (v33 ^ 0xEFC)))(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(v34 + 8 * (v33 ^ 0xECB)))();
  v43 = (*(v34 + 8 * (v33 ^ 0xEF5)))(a12, 0);
  return (*(v34 + 8 * ((19 * (((v33 + 1) ^ (v43 == 0)) & 1)) ^ v33)))(v43, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_192D01420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  (*(v38 + 8 * (v35 + 712)))(a1, qword_1E73B2810[v35 - 2212] - 12, a3, a4, a5, a6, a7, a8);
  (*(v38 + 8 * (v35 ^ 0x336)))(a1);
  (*(v38 + 8 * (v35 + 750)))(a1, v37);
  v40 = (*(v38 + 8 * (v35 ^ 0x32A)))();
  return (*(v38 + 8 * (((v40 == qword_1E73B2810[v35 - 2202] - 12) * ((((2 * v35) ^ 0x19DC) - 1969) ^ 0x30A)) ^ v35)))(v40, v41, v42, v43, v44, v45, v46, v47, a9, v36, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_192D01514()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 ^ 0xAC8)))() == v1;
  return (*(v4 + 8 * ((v5 * (((v0 - 329) | 0x101) + 131 * (v0 ^ 0x140) - 651)) ^ v0)))();
}

uint64_t sub_192D015C4()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 ^ 0xAC8)))() == v1;
  return (*(v4 + 8 * ((v5 * ((v0 - 22) ^ (v0 - 72))) ^ v0)))();
}

uint64_t sub_192D0165C()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 + 2632)))();
  return (*(v4 + 8 * (((v5 == v1) * (((v0 ^ 0x15B) + 816) ^ (21 * (v0 ^ 0x15B)))) ^ v0)))(v5);
}

uint64_t sub_192D01714()
{
  (*(v4 + 8 * (v0 + 2640)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 + 2632)))() == v1;
  return (*(v4 + 8 * ((v5 * (((v0 - 303) | 0x891) + ((v0 + 649812861) & 0x5944ABFB) - 1433)) ^ v0)))();
}

uint64_t sub_192D0178C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v44 = (v42 - 120) | 0x2A0;
  (*(v43 + 8 * (v44 + 59)))(a41, a2, a3, a4, a5);
  (*(v43 + 8 * (v44 ^ 0x1DF)))(a42);
  return (*(v43 + 8 * (((a40 == 0) * ((v44 ^ 0xD4049A85) + 1475796767 + ((v44 - 29915003) & 0xD5CCFCFF))) ^ v44)))(a40, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_192D020F8@<X0>(int a1@<W8>)
{
  v3 = a1 - 235;
  v4 = (*(v2 + 8 * (a1 + 2222)))();
  return (*(v2 + 8 * ((((((v3 + 726) ^ (v1 == -45004)) & 1) == 0) * (v3 - 392)) ^ v3)))(v4);
}

uint64_t sub_192D02140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  a18 = 0;
  a20 = 0;
  v23 = (*(v22 + 8 * (v21 + 1803)))(*qword_1E73B2810[v21 ^ 0x478], *v20, *(v20 + 12) + (v21 ^ 0x8726B05E), &a18, &a20, a6, a7, a8);
  v24 = ((v21 + 1409547257) | 0x80009014) + (v23 ^ 0x5F796EFD) + ((2 * v23) & 0xBEF2DDFA) == 1132330871;
  return (*(v22 + 8 * (v24 | (4 * v24) | v21)))(v23, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11);
}

uint64_t sub_192D02284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v27 = (*(v25 + 8 * (v22 + 1803)))(*v23, *v20, (*(v20 + 12) - 2027506636), &a18, &a20, a6, a7, a8);
  v35 = (v27 ^ ((v22 ^ (v24 + 934)) + 1668486274)) - 556171400 + ((2 * v27) & 0x6EEF49F2);
  if (v35 == 374416497)
  {
    v36 = (*(v25 + 8 * ((v21 - 10) ^ 0xD4049077)))(24, 0x1010040E2407E0ALL) != 0;
    return (*(v25 + 8 * ((37 * v36) ^ 0x78C)))();
  }

  else if (v35 == 642851956)
  {
    return (*(v25 + 4792))(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  else
  {
    v38 = 946232179 * ((v26 - 108) ^ 0x907B3CCF);
    *(v26 - 104) = v38 ^ 0x638;
    *(v26 - 100) = v35 - v38 + 962804850;
    v39 = (*(v25 + 8 * ((v21 - 29) ^ 0xD4049077)))(v26 - 108);
    return (*(v25 + 8 * ((3280 * (*(v26 - 108) != 1181123576)) ^ 0x4AD)))(v39);
  }
}

uint64_t sub_192D0289C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  v16 = (a1 + 1458843159) & 0x4F8E;
  (*(v15 + 8 * (a1 ^ 0x26Cu)))(v13);
  v16 ^= 0x321u;
  v17 = (*(v15 + 8 * (v16 + 1760)))(**(v14 + 8 * (v16 - 1195)), a11, a13);
  return (*(v15 + 8 * v16))(v17);
}

void sub_192D028F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, _DWORD *a50, uint64_t a51, uint64_t a52)
{
  v54 = *(a6 + 144);
  (*(v53 + 8 * (v52 + 737901331)))(*(v54 - 0x1729FABDC6538B0), a2, a3, a4, a5);
  *(v54 - 0x1729FABDC6538B0) = a52;
  *a50 = a15;
  JUMPOUT(0x192D02954);
}

uint64_t sub_192D02B88(uint64_t a1)
{
  v5 = (a1 + v1 - 16);
  v6 = (v3 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((((v2 - 42) ^ 0xFFFFFF65) & v1) != 32) * ((1249 * ((v2 - 42) ^ 0x87)) ^ 0x9E8)) ^ (v2 - 42))))();
}

uint64_t sub_192D02C80(uint64_t a1)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFE91 ^ (v3 - 2076)) + v1;
  *(a1 - 7 + v6) = *(v4 - 7 + v6);
  return (*(v5 + 8 * ((791 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_192D02D50(uint64_t a1)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * ((50 * (v5 != (v2 ^ 0x32u) - 737900046 - 3557068919)) ^ v2 ^ 0x32)))();
}

uint64_t sub_192D02D9C(uint64_t a1)
{
  v8 = v4 - 1;
  *(a1 + v8) = *(v6 + v8);
  return (*(v7 + 8 * (((v8 != v3 + v5) * v1) ^ v2)))();
}

void sub_192D02DD0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(a23 - 0x1729FABDC6538A8) = a20 - 1361886286 - (((a2 + v23 + 56) ^ 0x5DA685EB) & (2 * a20));
  *(a23 - 0x1729FABDC6538A4) = 1786714870;
  JUMPOUT(0x192D02F64);
}

uint64_t sub_192D03290()
{
  v6 = v0 - 284;
  *(v3 - 0x1729FABDC6538B0) = 0;
  *(v3 - 0x1729FABDC6538A8) = v1;
  *(v3 - 0x1729FABDC6538A4) = 1786714870;
  v7 = (*(v5 + 8 * (v0 + 2071)))(v3 - 0x1729FABDC6538B0);
  return (*(v5 + 8 * (((((v2 == 0) ^ (v4 + 2 * (v6 ^ 0x1F))) & 1) * (2 * (v6 ^ 0x71F) - 2670)) | (2 * (v6 ^ 0x71F)))))(v7);
}

void sub_192D033A4(int a1@<W8>)
{
  (*(v3 + 8 * (a1 + 1257)))();
  *v1 = 0;
  *(v1 + 8) = 1840070043;
  *(v1 + 12) = v2;
  JUMPOUT(0x192D033D0);
}

void fm23w5mn5o()
{
  v0 = qword_1E73B2810[((-3 * (qword_1EAE15B48 ^ 0x8A ^ dword_1EAE15B50)) ^ byte_192FCF650[byte_192FD01D0[(-3 * (qword_1EAE15B48 ^ 0x8A ^ dword_1EAE15B50))] ^ 0x8E]) - 41];
  v1 = 1543604477 * ((*v0 + qword_1EAE15B48) ^ &v2 ^ 0x45EA3381FA58338ALL);
  qword_1EAE15B48 = v1;
  *v0 = v1;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D0353C()
{
  (*(v1 + 23632))();
  *(v0 + 8) = 0;
  return (*(v1 + 8 * ((188 * (((*(v0 + 24) == 0) ^ 0x45) & 1)) ^ 0x27Cu)))();
}

uint64_t sub_192D03588()
{
  (*(v1 + 8 * (v2 ^ 0x9F6u)))();
  *(v0 + 24) = 0;
  *(v0 + 36) = 0;
  *v0 = 0;
  return (*(v1 + 8 * (((*(v0 + 48) == 0) * ((v2 ^ 0x139) - 423 + (((v2 ^ 0x139) + 1549308985) & 0xBF3) - 1241)) ^ v2 ^ 0x139)))();
}

uint64_t sub_192D03668@<X0>(int a1@<W8>)
{
  v3 = a1 - 468;
  (*(v2 + 8 * (a1 + 2072)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * (((*(v1 + 64) == 0) * ((v3 ^ 0x1A0F9FEF) + v3 + 14 - 437231595)) ^ v3)))();
}

uint64_t sub_192D036C0@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2526)))();
  *(v1 + 64) = 0;
  *(v1 + 76) = 0;
  *(v1 + 40) = 0;
  return 0;
}

void tn46gtiuhw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v7 = a5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v10 = v7 || a6 == 0 || a7 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D037B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _DWORD *a19)
{
  *a4 = 0;
  *a19 = 0;
  *a6 = 0;
  *a7 = 0;
  return (*(v19 + 8 * ((49 * (unk_1EAE31C78 == 0)) ^ 0x215u)))();
}

uint64_t sub_192D0384C()
{
  *(v2 + 36) = 0;
  *v2 = 0;
  return (*(v1 + 8 * (((*(v2 + 48) == 0) * ((v0 - 2388) ^ 0x14 ^ (81 * (v0 ^ 0xB7E)))) ^ v0)))();
}

uint64_t sub_192D03954@<X0>(int a1@<W8>)
{
  v4 = a1 - 25;
  (*(v1 + 8 * (a1 + 2395)))();
  *(v2 + 64) = 0;
  *(v2 + 76) = 0;
  *(v2 + 40) = 0;
  v5 = (*(v1 + 8 * (v4 + 2414)))(24, 0x1010040E2407E0ALL);
  return (*(v1 + 8 * (((v5 == 0) * (((6 * (v4 ^ 0x337)) ^ 0x543542CF) + (v4 ^ (v3 + 534)))) ^ v4)))(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_192D03A48(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0xFEE00FC579CDB96;
  *(a1 + 16) = 0;
  v3 = (*(v2 + 8 * (v1 ^ 0xD42)))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((((v1 + 1633413135) & 0x9EA41B7E) + 164) ^ (v1 + 1065))) ^ v1)))(v3, v4, v5, v6);
}

void qi864985u0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = v5 || a4 == 0 || a5 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D087B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, uint64_t a29, uint64_t a30, uint64_t a31, _DWORD *a32, uint64_t a33, void *a34, void *a35, uint64_t a36, unsigned int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, unsigned int a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  *a35 = 0;
  *a32 = 0;
  *a34 = 0;
  *a28 = 0;
  return (*(v50 + 8 * ((200 * (a33 != 0)) ^ 0x26Au)))(a1, a2, 551906117, a4, a5, a6, a7, a8, "com.apple.adid", 0x1EAE31CC4, 0x1EAE31CC8, a12, a13, a14, a15, a16, a17, a18, 0x1EAE31CCCLL, a20, a21, a22, a23, 0x1EAE31CD0, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, 0x1EAE31C70, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_192D088BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int *a10, unsigned int *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if ((a33 + 6) < 5)
  {
    goto LABEL_2;
  }

  if (a33 == -1)
  {
    v61 = a3 + v54;
    v62 = a3 + v54 - 600;
    v63 = (*(v53 + 8 * (v54 + 551908262)))(*a10, &a48) != 0;
    return (*(v53 + 8 * ((v63 * (v61 - 763)) ^ v62)))();
  }

  else
  {
    if (a33 == -8)
    {
LABEL_2:
      v55 = a3 + v54 - 600;
      v56 = (v54 + 13) ^ ((*(v53 + 8 * (v54 + 551908262)))(*a19, &a53) == ((v54 - 686759667) ^ 0xB62B78EF));
      return (*(v53 + 8 * ((44 * (v56 & 1)) ^ v55)))();
    }

    v58 = a3 + v54;
    v59 = a3 + v54 - 189;
    v60 = (*(v53 + 8 * (v54 ^ (v54 + 1160))))(*a11, &a38) == (v54 ^ (v54 - 225)) - 227;
    return (*(v53 + 8 * ((v60 * (v58 + 892)) ^ v59)))();
  }
}

uint64_t sub_192D08BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = (*(v37 + 8 * (v38 + 415)))(v39 - 144, 0, a3, a4, a5, a6, a7, a8);
  if (v40 >= 0)
  {
    a31 = *(v39 - 144);
  }

  v48 = a31 / (((v38 - 512) | 0x40u) ^ 0x856);
  v49 = *(a36 + 40 * v36 + 36);
  v51 = v49 >= v48;
  v50 = v49 - v48;
  v51 = !v51 || v50 >= 0x12C;
  v52 = !v51;
  return (*(v37 + 8 * ((35 * v52) | v38)))(v40, v41, 551906117, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_192D08C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t *a35)
{
  v39 = (*(v37 + 8 * (v38 + 828)))(*(v35 + 40 * v36 + 16), 0x100004077774924, a3, a4, a5, a6, a7, a8);
  *a35 = v39;
  return (*(v37 + 8 * (((v39 == 0) * ((v38 + 464) ^ v38 ^ 0x240)) | v38)))();
}

uint64_t sub_192D08CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34)
{
  v38 = (*(v36 + 8 * ((v37 - 551) ^ 0xDA5)))(*(v34 + 40 * v35 + 32), 0x100004077774924, a3, a4, a5, a6, a7, a8);
  *a34 = v38;
  return (*(v36 + 8 * (((v38 == 0) * ((((4 * (v37 - 551)) ^ 0x1814) + 1655999399) & 0x9D4B7BFC ^ 0x82F)) ^ (v37 - 551))))(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_192D08D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  v37 = (*(v35 + 8 * (v36 ^ 0xB1A)))(*a35, a2, a3, a4, a5, a6, a7, a8);
  *a35 = 0;
  return sub_192D08B28(v37, v38, 551906117);
}

void sub_192D08E30()
{
  v3 = (((v0 + 276668541) & 0xEF8258EA ^ 0x2B2) - 460) | 0x103;
  __asm { BRAA            X14, X17 }
}

uint64_t sub_192D0D7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v50 = v45 ^ (v49 - 1721);
  *(v46 - 0x2F9FA99D07A4AD62) = 0;
  *(v46 - 0x2F9FA99D07A4AD5ALL) = -1317876224;
  *(v46 - 0x2F9FA99D07A4AD56) = 0;
  v51 = (*(v47 + 8 * (v45 ^ (v49 + 1158))))(v46 - 0x2F9FA99D07A4AD62, a2, a3, a4, a5, a6, a7, a8);
  return (*(v47 + 8 * ((((((v50 - 281) ^ (a45 == v48)) & 1) == 0) * (((v50 - 537224937) & 0xFF1FF7FF) + 551905353)) ^ v50)))(v51);
}

void sub_192D0D8EC()
{
  (*(v3 + 8 * ((v0 & 0xDFBFD7E2) + 551908264)))();
  *v4 = 0;
  *(v1 - 0x63E5E14B55EA7FF6) = v2;
  *(v1 - 0x63E5E14B55EA7FF2) = 223807700;
  JUMPOUT(0x192D0D958);
}

uint64_t sub_192D0D9AC()
{
  (*(v2 + 8 * (v1 + 1164)))(v4, v3);
  v5 = (*(v2 + 8 * (v1 + 1156)))() == v0;
  return (*(v2 + 8 * ((v5 * (((v1 - 630840386) & 0x2599DF2D) + 824)) ^ v1)))();
}

uint64_t sub_192D0DA4C()
{
  (*(v2 + 8 * (v1 ^ 0xCB4)))(v4, v3);
  v5 = (*(v2 + 8 * (v1 + 1156)))() == v0;
  return (*(v2 + 8 * ((v5 * (v1 + 1764)) ^ v1)))();
}

uint64_t sub_192D0DAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v43 = (*(v41 + 8 * (v40 ^ 0x202)))(a1, 0x100004077774924);
  *(v42 - 232) = v43;
  return (*(v41 + 8 * (((v43 != 0) * (v40 + ((2 * v40) ^ 0x1324) - 2467)) ^ v40)))(v43, v44, 551906117, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

void y1rKtVxYz7()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = qword_1E73B2810[((-3 * (dword_1EAE15B58 ^ 0x8A ^ dword_1EAE15B50)) ^ byte_192FCFB60[byte_192FCF850[(-3 * (dword_1EAE15B58 ^ 0x8A ^ dword_1EAE15B50))] ^ 0xE6]) - 36];
  v1 = -3 * (*v0 ^ dword_1EAE15B50 ^ 0x8A);
  v2 = qword_1E73B2810[(byte_192FCFC68[(byte_192FCF958[v1 - 8] ^ 0x6B) - 8] ^ v1) - 20];
  v3 = &v8[*v0 + *v2];
  v4 = 1543604477 * v3 + 0x45EA3381FA58338ALL;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *v0 = v4;
  *v2 = v5;
  LOBYTE(v2) = -3 * ((v5 + *v0) ^ 0x8A);
  v6 = qword_1E73B2810[((-3 * ((dword_1EAE15B50 + dword_1EAE15B58) ^ 0x8A)) ^ byte_192FD02D0[byte_192FCFF80[(-3 * ((dword_1EAE15B50 + dword_1EAE15B58) ^ 0x8A))] ^ 0xEA]) - 199] - 12;
  v7 = *(v6 + 8 * ((225 * ((*(v6 + 8 * ((byte_192FD02D4[(byte_192FCFF8C[v2 - 12] ^ 0xEA) - 4] ^ v2) + 2739)))(24, 0x1010040E2407E0ALL) != 0)) ^ 0x672u));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D0DD70(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x6F0AC1E1369E4B09;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((56 * (v3 != 0)) ^ 0x7DAu)))();
}

uint64_t sub_192D0DEB0()
{
  v5 = *(v3 + 8) - 1887993249;
  v6 = ((v2 - 1710) | 0x24) + ((v2 + 1576307951) & 0xA20B6EFF ^ 0x570B09FA) + v0 > v5;
  if (v1 > 0x39EA3293 != v5 < 0xC615CD68)
  {
    v6 = v1 > 0x39EA3293;
  }

  return (*(v4 + 8 * ((461 * !v6) ^ v2)))();
}

void sub_192D0DF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = v15 + v11;
  v17 = *v12;
  *(*v12 + v10) = 0;
  *(v17 + v9 + ((v16 - 687) ^ 0x50750E82u)) = 0;
  *(v17 + (v9 - 1862975966)) = 1;
  *(v17 + (v9 - 1862975967)) = 0;
  *v8 += 4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_192D0E45C()
{
  v5 = *(v3 + 8) + 1570186821;
  v6 = v1 > 0x6BCA8EAD;
  v7 = v6 ^ (v5 < 0x9435714E);
  v8 = ((v0 - 204706424) & 0xCCB3BEFE ^ 0xE5AA9FD3) + v2 > v5;
  if (v7)
  {
    v8 = v6;
  }

  return (*(v4 + 8 * ((58 * v8) ^ v0)))();
}

uint64_t sub_192D0E618@<X0>(int a1@<W8>)
{
  v6 = ((2 * ((a1 << (v4 - 114)) + v2)) & 0x6FFDD6F0) + (v4 ^ 0xB7FEEF0A ^ ((a1 << (v4 - 114)) + v2));
  if (v1 > 0x26199F4 != v6 + 1168079502 < 0xFD9E6607)
  {
    v7 = v6 + 1168079502 < 0xFD9E6607;
  }

  else
  {
    v7 = v6 + 1168079502 > v3;
  }

  return (*(v5 + 8 * ((247 * !v7) ^ v4)))();
}

uint64_t sub_192D0E734@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  HIDWORD(a10) = a1;
  v27 = (*(v18 + 8 * (v17 + 1957)))((v17 ^ (v19 + 731)) + (((v17 - 990) | 0x6C) ^ 0x8780E388) + v16, 0x100004077774924);
  return (*(v18 + 8 * ((1984 * (v27 == 0)) ^ v17)))(v27, v20, v21, v22, v23, v24, v25, 1065341128, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_192D0E804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30, int a31, int a32, uint64_t a33)
{
  v37 = (*(v34 + 8 * (v36 + v35)))(*v33, a2, a3, a4, a5, a6, a7, a8);
  *v33 = a33;
  *a30 = a18;
  return (*(v34 + 8 * ((3760 * (a32 == 0)) ^ (v36 + v35 - 1112))))(v37);
}

void sub_192D0E878(_DWORD *a1@<X8>)
{
  v3 = *v2;
  v4 = *a1 + v1;
  *(*v2 + v4 + 1) = -24;
  *(v3 + v4 + 2) = -110;
  *(v3 + v4) = 118;
  *(v3 + v4 + 3) = 16;
  *a1 += 4;
  JUMPOUT(0x192D0E8C0);
}

uint64_t sub_192D0E9BC()
{
  v6 = ((v0 + 189) ^ (v5 + 379) ^ 0x7989D80) + *(v3 + 8);
  v7 = v1 > 0x24907D0;
  v8 = v2 - 1901316530 > v6;
  if (v7 == v6 < 0xFDB6F82B)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((28 * !v7) ^ v0)))();
}

uint64_t sub_192D0EA3C@<X0>(int a1@<W7>, _DWORD *a2@<X8>)
{
  v7 = *v3;
  v8 = *a2 + v2;
  *(*v3 + v8 + 3) = 1;
  *(v7 + v8 + 1) = 0;
  *(v7 + v8) = 0;
  *(v7 + v8 + 2) = 0;
  *a2 += 4;
  return (*(v5 + 8 * ((((v6 + v4 - 1412033483) & 0x5429E8E6) + 423) ^ (v4 + a1))))();
}

uint64_t sub_192D0EEFC()
{
  v5 = *(v3 + 8) + 290418297;
  v6 = v1 > ((v0 - 626445980) & 0xE5D6FAA6 ^ 0x789276DB);
  v7 = v2 - 656214107 > v5;
  if (v6 == v5 < ((v0 + 565057358) & 0xDE51E6FE) + 1206761118)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((4007 * v6) ^ v0)))();
}

uint64_t sub_192D0F3A8@<X0>(int a1@<W8>)
{
  v3 = a1 + 848;
  v11 = (*(v2 + 8 * (a1 + 2948)))(12, 0x100004077774924);
  *(v11 + 10) = *(*(v1 + 8 * (v3 ^ 0x34D)) + 10);
  return (*(v2 + 8 * ((((v3 ^ 0x350) == 10) | (8 * ((v3 ^ 0x350) == 10))) ^ v3)))(v11, v4, v5, v6, v7, v8, v9, 1065341128);
}

uint64_t sub_192D0F480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v45 = (v44 - 160 + v41);
  *v45 = *(v42 + 12);
  v45[1] = 1862975980;
  v45[2] = 1862975973;
  return (*(v43 + 8 * (((((v45 == 0) ^ (v40 - 120)) & 1) * ((v40 - 577) ^ 0x176)) ^ v40)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v42 + 12);
}

uint64_t sub_192D0F520()
{
  v6 = *(v3 + 8) - 874318352;
  v7 = v2 > 0xFD7EBEF7;
  v8 = v0 - 1820950745 > v6;
  if (v7 != v6 < (((v1 ^ 0xC33) - 2810) ^ (v5 + 2) ^ 0xC201705B))
  {
    v8 = v7;
  }

  return (*(v4 + 8 * ((77 * ((((v1 ^ 0x33) - 1) ^ v8) & 1)) | v1 ^ 0xC33)))();
}

uint64_t sub_192D0F5B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unint64_t a40, _DWORD *a41)
{
  v46 = (v45 + v41 - 630) | 0x241;
  v47 = *v42;
  v48 = *a8;
  v49 = *a8 - 1862975969;
  *(*v42 + v49) = 0;
  *(v47 + v49 + 1) = 0;
  *(v47 + v48 + (v46 ^ 0x90F53574)) = 0;
  *(v47 + v49 + 3) = 11;
  *a8 += 4;
  v50 = *v42 + (*a41 - 1862975969);
  return (*(v44 + 8 * (((a40 <= v50) * (((31 * (v46 ^ 0xB08) - 2202) | 0x502) - 1950)) ^ v46)))(v50, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, v43, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_192D0F688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  HIDWORD(a43) = -45007;
  HIDWORD(a45) = -45007;
  return (*(v46 + 8 * (v45 ^ 0x5F5)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_192D0F71C@<X0>(int a1@<W8>)
{
  v6 = (((v4 | 0x2A2) + 1836946254) & (2 * (v2 + 2 * a1))) + ((v2 + 2 * a1) ^ 0xB6BECB1B);
  if (v1 > 0x44054D84 != v6 + 87811921 < ((v4 + 776718232) & 0xD1B43FB7) - 1141200168)
  {
    v7 = v6 + 87811921 < ((v4 + 776718232) & 0xD1B43FB7) - 1141200168;
  }

  else
  {
    v7 = v6 + 87811921 > v3;
  }

  return (*(v5 + 8 * ((2032 * v7) ^ v4)))();
}

uint64_t sub_192D0F908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, _DWORD *a42, int a43, int a44, uint64_t a45)
{
  v49 = v48 + a8;
  v50 = (*(v46 + 8 * (v48 + v47)))(*v45, a2, a3, a4, a5, a6, a7);
  *v45 = a45;
  *a42 = a13;
  return (*(v46 + 8 * ((2861 * (a44 == v49 - 362)) ^ (v49 + 577))))(v50);
}

uint64_t sub_192D0FAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  (*(v40 + 8 * (v41 + 306)))(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(v40 + 8 * (v41 ^ 0x1C1)))();
  v50 = (*(v40 + 8 * (v41 + 315)))(*(v39 + 8 * (v41 - 2649)), 0);
  return (*(v40 + 8 * (((v50 == 0) * ((((v41 + 941014372) & 0xC7E93A7F) - 152) ^ 0x175)) ^ v41)))(v50, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_192D0FC0C(uint64_t a1)
{
  (*(v3 + 8 * (v4 + 1243)))(a1, *(v1 + 8 * (v4 - 1681)) - 12);
  (*(v3 + 8 * (v4 ^ 0xD25)))(a1);
  *(v5 - 256) = (*(v3 + 8 * (v4 ^ 0xD01)))(a1, v2);
  v7 = (*(v3 + 8 * (v4 + 1273)))() == *(v1 + 8 * (v4 - 1671)) - 12;
  return (*(v3 + 8 * ((v7 * ((v4 + 1410) ^ (v4 - 1100))) ^ v4)))();
}

uint64_t sub_192D0FCE8()
{
  v9 = v0;
  (*(v4 + 8 * ((v1 + 97) ^ 0x914)))(v3, v2);
  v5 = (*(v4 + 8 * ((v1 + 97) ^ 0x92C)))();
  return (*(v4 + 8 * (((v5 == v9) * (v1 ^ 0xC58 ^ (212 * ((v1 + 97) ^ 0x2BD)))) ^ (v1 + 97))))(v5, v6, v7);
}

uint64_t sub_192D0FDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(v13 + 8 * (v14 ^ 0x914)))(v12, v11, a3, a4, a5, a6, a7, a8);
  v15 = (*(v13 + 8 * (v14 + 2276)))() == a11;
  return (*(v13 + 8 * ((v15 * ((v14 + 1003) ^ 0x498 ^ (298 * (v14 ^ 0x2B7)))) ^ v14)))();
}

uint64_t sub_192D0FE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(v13 + 8 * (v14 + 2284)))(v12, v11, a3, a4, a5, a6, a7, a8);
  v15 = (*(v13 + 8 * (v14 ^ 0x92C)))() == a11;
  return (*(v13 + 8 * ((v15 * (((v14 + 2101928954) & 0x82B71FF0) + ((v14 - 97) ^ 0xFFFFFFB0))) ^ v14)))();
}

uint64_t sub_192D0FF08()
{
  v5 = v1 - 596;
  v6 = (v1 - 385) | 8;
  v7 = v3;
  v8 = v2;
  v9 = v0;
  v10 = v1;
  (*(v4 + 8 * (v1 ^ 0x9F5)))(v7, v8);
  v11 = (*(v4 + 8 * (v10 ^ 0x9CD)))() == v9;
  return (*(v4 + 8 * (((((v5 ^ v11) & 1) == 0) * (v6 ^ 0x3A)) ^ v10)))();
}

uint64_t sub_192D0FF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  v27 = (v22 + 63928535) & 0xFC3089EF;
  *(v26 - 256) = v23;
  v28 = (*(v25 + 8 * (v27 ^ 0x2CD)))(v23, v24, va, a4, a5, a6, a7, a8);
  *(v26 - 248) = v28;
  return (*(v25 + 8 * (((v28 == 0) * (((v27 - 1939) ^ 0xFFFFF92F) + v27 - 599)) ^ v27)))(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11);
}

uint64_t sub_192D1008C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 495030071;
  *(a1 + 12) = -1179748465;
  *(a1 + 16) = 0;
  v3 = (*(v2 + 8 * ((v1 | 0x480) ^ 0xF15)))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v2 + 8 * (((v3 != 0) * ((((v1 | 0x480) - 65) ^ 0xFFFFFD5C) + (v1 | 0x480) + 662)) ^ (v1 | 0x480))))(v3, v4, v5);
}

uint64_t sub_192D10118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{
  *(v23 + 8) = 495034167;
  *(v27 - 240) = v25;
  return (*(v26 + 8 * (((a23 > 0x1000) * (v24 ^ 0x894 ^ ((v24 - 995) | 0x10))) ^ v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v25);
}

uint64_t sub_192D10620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = v48 + 1475;
  *(v49 - 0x60E31FD2FE548731) = 0;
  *(v49 - 0x60E31FD2FE548729) = 495030071;
  *(v49 - 0x60E31FD2FE548725) = -1179748465;
  (*(v50 + 8 * (v48 + 2621)))(v49 - 0x60E31FD2FE548731, a2, a3, a4, a5, a6, a7, a8);
  (*(v50 + 8 * (v51 + 1053)))(a47);
  (*(v50 + 8 * (v51 + 1053)))(a48);
  return (*(v50 + 8 * (((a46 == 0) * ((((v51 - 1839001745) & 0x6D9CEFDB) + 85) ^ v51 ^ 0x1AB)) | v51)))();
}

void sub_192D106AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  *(a20 - 0x60E31FD2FE548729) = a23 + 495030071 - ((v23 + v24 + 990057188) & (2 * a23));
  *(a20 - 0x60E31FD2FE548725) = -1179748465;
  JUMPOUT(0x192D10718);
}

uint64_t sub_192D1080C@<X0>(int a1@<W8>)
{
  v3 = 6 * (a1 ^ 0x99);
  v4 = (*(v2 + 8 * (a1 ^ 0xBD5)))();
  return (*(v2 + 8 * ((45 * (((v1 == -45004) ^ (v3 - 69)) & 1)) ^ v3)))(v4);
}

uint64_t sub_192D10870@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12)
{
  a7 = 0;
  a11 = 0;
  v16 = (*(v14 + 8 * ((a1 | 0x800020A2) ^ 0xC0803BD7)))(**(v13 + 8 * ((a1 | 0x800020A2) + 1065340784)), *v12, (*(v12 + 12) - 1862975969), &a7, &a11);
  if (v16)
  {
    if (v16 == 268435459)
    {
      a12 = 0x60E31FD2FE548731;
      return (*(v14 + 2896))(v16, v17, v18, v19, v20, v21, v22, v23, a2, a3, a4);
    }

    else
    {
      v33 = 946232179 * ((((2 * (v15 - 108)) | 0xD1772250) - (v15 - 108) - 1757122856) ^ 0xF8C0ADE7);
      *(v15 - 104) = v33 ^ 0x638;
      *(v15 - 100) = ((2 * v16) & 0xBF6DDBF6) - v33 + (v16 ^ 0xDFB6EDFB) + 1878881000;
      v34 = (*(v14 + 23736))(v15 - 108);
      return (*(v14 + 8 * ((474 * (*(v15 - 108) != 1181123576)) ^ 0x4FF)))(v34);
    }
  }

  else
  {
    v24 = (*(v14 + 23584))(24, 0x1010040E2407E0ALL);
    return (*(v14 + 8 * ((114 * (((v24 == 0) ^ 0x31) & 1)) ^ 0x6B8)))(v24, v25, v26, v27, v28, v29, v30, v31, a2);
  }
}

uint64_t sub_192D10EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18)
{
  v23 = 8 * (v21 ^ 0x428);
  v24 = v23 ^ 0x247;
  (*(v22 + 8 * (v23 ^ 0xD32)))(v20, a2, a3, a4, a5, a6, a7, a8);
  v25 = (*(v22 + 8 * (v24 ^ 0xF72)))(**(v18 + 8 * (v24 - 1277)), a14, a18);
  return (*(v22 + 8 * (((v19 == 0) * (v24 - 805)) ^ v24)))(v25);
}

void sub_192D10ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v26 = *(v24 - 208);
  (*(v23 + 8 * (v25 ^ 0xC0803B28)))(*(v26 - 0x60E31FD2FE548731), a2, a3, a4, a5, a6, a7, a8);
  *(v26 - 0x60E31FD2FE548731) = *(v24 - 184);
  **(v24 - 200) = a23;
  JUMPOUT(0x192D10F34);
}

uint64_t sub_192D11104(uint64_t a1)
{
  v5 = *(v3 + v1 - 1 - 31);
  v6 = a1 + v1 - 1;
  *(v6 - 15) = *(v3 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((28 * (((v2 - 1915683267) & 0x722F01EE) - 196 != (((v2 - 20) ^ 0xFFFFFF44) & v1))) ^ (v2 - 20))))();
}

void sub_192D1132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  *(a15 - 0x60E31FD2FE548729) = a18 + 495030071 - ((2 * a18) & 0x3B031E6E);
  *(a15 - 0x60E31FD2FE548725) = -1179748465;
  JUMPOUT(0x192D11528);
}

uint64_t sub_192D11824@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = (a1 - 1296381823) & 0x4D453FDF;
  v17 = a1 + 2592;
  (*(v13 + 8 * (a1 + 2592)))();
  *(v10 - 0x60E31FD2FE548731) = 0;
  *(v10 + v12) = 495030071;
  *(v10 + v11) = v15;
  (*(v13 + 8 * v17))(v10 - 0x60E31FD2FE548731);
  v18 = (*(v13 + 8 * (v16 + 447)))(a9);
  return (*(v13 + 8 * (((((v16 - 2147481931) | 0x40802022) + (v16 ^ 0x2E ^ (v14 - 15))) * (v9 == 0)) ^ v16)))(v18);
}

void sub_192D11928(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2450)))();
  *v1 = 0;
  *(v1 + 8) = 916343561;
  *(v1 + 12) = 1862975969;
  JUMPOUT(0x192D11964);
}

void uv5t6nhkui()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = qword_1E73B2810[(byte_192FCFB60[byte_192FCF850[(-3 * ((dword_1EAE15B50 - dword_1EAE15B38) ^ 0x8A))] ^ 6] ^ (-3 * ((dword_1EAE15B50 - dword_1EAE15B38) ^ 0x8A))) - 53];
  v1 = qword_1E73B2810[((-3 * ((dword_1EAE15B50 + *v0) ^ 0x8A)) ^ byte_192FCFB60[byte_192FCF850[(-3 * ((dword_1EAE15B50 + *v0) ^ 0x8A))] ^ 6]) - 62];
  v2 = (*v1 ^ *v0) - &v7;
  v3 = 1543604477 * v2 - 0x45EA3381FA58338ALL;
  v4 = 1543604477 * (v2 ^ 0x45EA3381FA58338ALL);
  *v0 = v3;
  *v1 = v4;
  LOBYTE(v1) = -3 * (*v0 ^ 0x8A ^ v4);
  v5 = qword_1E73B2810[((-3 * ((dword_1EAE15B50 + dword_1EAE15B38) ^ 0x8A)) ^ byte_192FCF650[byte_192FD01D0[(-3 * ((dword_1EAE15B50 + dword_1EAE15B38) ^ 0x8A))] ^ 0xEC]) - 178] - 12;
  v6 = *(v5 + 8 * ((32 * ((*(v5 + 8 * ((byte_192FD02D4[(byte_192FCFF8C[v1 - 12] ^ 0xB0) - 4] ^ v1) + 2848)))(24, 0x1010040E2407E0ALL) == 0)) | 0xACAu));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D11B94(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x210BB38616FB3631;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  if (v3)
  {
    v4 = 1422;
  }

  else
  {
    v4 = 1423;
  }

  return (*(v1 + 8 * v4))();
}

void p435tmhbla()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = qword_1E73B2810[((-3 * (dword_1EAE15B40 ^ 0x8A ^ dword_1EAE15B50)) ^ byte_192FCFA60[byte_192FCF750[(-3 * (dword_1EAE15B40 ^ 0x8A ^ dword_1EAE15B50))] ^ 0x42]) - 166];
  v1 = *(v0 - 4);
  v2 = qword_1E73B2810[((-3 * ((dword_1EAE15B50 - v1) ^ 0x8A)) ^ byte_192FCF650[byte_192FD01D0[(-3 * ((dword_1EAE15B50 - v1) ^ 0x8A))] ^ 0x8E]) - 41];
  v3 = v1 ^ &v8 ^ *v2;
  v4 = 1543604477 * v3 - 0x45EA3381FA58338ALL;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v4;
  *v2 = v5;
  v6 = qword_1E73B2810[((-3 * ((dword_1EAE15B50 - dword_1EAE15B40) ^ 0x8A)) ^ byte_192FD0080[byte_192FCFD60[(-3 * ((dword_1EAE15B50 - dword_1EAE15B40) ^ 0x8A))] ^ 7]) - 6] - 12;
  v7 = (*(v6 + 8 * ((byte_192FCF658[(byte_192FD01D0[(-3 * ((v5 - *(v0 - 4)) ^ 0x8A))] ^ 0x78) - 8] ^ (-3 * ((v5 - *(v0 - 4)) ^ 0x8A))) + 2718)))(24, 0x1010040E2407E0ALL) != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D16568(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x241C090D09BF22FCLL;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((23 * (v3 == 0)) ^ 0x645u)))();
}

void fy34trz2st()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = qword_1E73B2810[((-3 * (dword_1EAE15B70 ^ 0x8A ^ dword_1EAE15B50)) ^ byte_192FD02D0[byte_192FCFF80[(-3 * (dword_1EAE15B70 ^ 0x8A ^ dword_1EAE15B50))] ^ 0xEA]) - 198];
  v1 = -3 * ((dword_1EAE15B50 + *v0) ^ 0x8A);
  v2 = qword_1E73B2810[(byte_192FCFC68[(byte_192FCF958[v1 - 8] ^ 0x6B) - 8] ^ v1) - 20];
  v3 = (*v2 ^ *v0) - &v8;
  v4 = 1543604477 * v3 + 0x6D4BA15110163F62;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *v0 = v4;
  *v2 = v5;
  v6 = qword_1E73B2810[((-3 * ((dword_1EAE15B50 - dword_1EAE15B70) ^ 0x8A)) ^ byte_192FD02D0[byte_192FCFF80[(-3 * ((dword_1EAE15B50 - dword_1EAE15B70) ^ 0x8A))] ^ 0xB0]) - 90] - 12;
  v7 = *(v6 + 8 * ((29 * ((*(v6 + 8 * ((byte_192FCFB64[(byte_192FCF850[(-3 * ((v5 + *v0) ^ 0x8A))] ^ 0xE6) - 4] ^ (-3 * ((v5 + *v0) ^ 0x8A))) + 2890)))(24, 0x1010040E2407E0ALL) == 0)) ^ 0x7CDu));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D1A41C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 987097956;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((13 * (v3 == 0)) ^ 0x4F7u)))();
}

uint64_t sub_192D1D8A0@<X0>(int a1@<W8>)
{
  v4 = 109 * (a1 ^ 0x71D);
  (*(v2 + 8 * (a1 + 1137)))();
  return (*(v2 + 8 * ((120 * (((v4 ^ (*(v1 + 32 * v3 + 24) == 0)) & 1) == 0)) ^ v4)))();
}

void rsegvyrt87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || a6 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D1DAF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  *a4 = 0;
  *a5 = 0;
  v6 = (*(v5 + 23584))(24, 0x1010040E2407E0ALL) == 0;
  return (*(v5 + 8 * ((85 * v6) ^ 0x427u)))();
}

uint64_t sub_192D1DB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a1 = 0;
  *(a1 + 8) = 0x724731B45C318D7ALL;
  *(a1 + 16) = 0;
  v12 = (*(v10 + 23584))(4096, 0x100004077774924, a3, a4, a5, a6, a7, a8);
  *a1 = v12;
  return (*(v10 + 8 * ((169 * (v12 != 0)) ^ 0x576)))(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_192D1DD0C()
{
  v5 = *(v3 + 8) - 1720123901;
  v6 = v0 - 2090640947 > v5;
  if (v1 > 0xA55747E != v5 < ((v2 + 578) | 0x118) - 173373531)
  {
    v6 = v1 > 0xA55747E;
  }

  return (*(v4 + 8 * ((208 * v6) ^ v2)))();
}

uint64_t sub_192D1E294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = *(v9 - 0x2B7CC17BA9FDC7DELL) + 1385189627 + v10 + (v6 ^ (a6 - 239)) - 1492;
  v13 = v7 > 0x513E1BD0;
  v14 = v8 + 1014674043 > v12;
  if (v13 == v12 < 0xAEC1E42B)
  {
    v13 = v14;
  }

  return (*(v11 + 8 * ((114 * !v13) ^ v6)))(a1, a2, a3, a4, a5);
}

uint64_t sub_192D1E328@<X0>(_DWORD *a1@<X8>)
{
  v5 = *(v1 - 0x2B7CC17BA9FDC7E6);
  v6 = *a1 - 1917268404;
  *(v5 + (*a1 - 1917268403)) = 107;
  *(v5 + v6 + 2) = -40;
  *(v5 + v6) = 113;
  *(v5 + v6 + 3) = 108;
  *a1 += 4;
  return (*(v4 + 8 * (((((v2 + v3 - 2886) | 0x521) == 1381) * ((v3 ^ 0xBA7B9EC4) - 1558)) ^ (v2 + v3 - 1916))))();
}

uint64_t sub_192D1E840()
{
  v5 = *(v3 - 0x2B7CC17BA9FDC7DELL) - 603694859;
  v6 = (v2 ^ 0xC5EEB151) + v0 > v5;
  if (v1 > 0xC7CA198C != v5 < ((v2 + 1723021841) & 0x994CC6BF ^ 0x3835E0D0))
  {
    v6 = v1 > 0xC7CA198C;
  }

  return (*(v4 + 8 * ((1018 * !v6) ^ v2)))();
}

uint64_t sub_192D1E8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = v9 ^ 0x2BF;
  v14 = *(v10 - 0x2B7CC17BA9FDC7E6);
  *(v14 + v8) = 0;
  *(v14 + (v7 - 1917268403)) = 0;
  v15 = a6 + v13 - 1873;
  *(v14 + (v7 - 1917268402)) = 0;
  *(v14 + v7 + (v15 ^ 0x37C3572Eu)) = 1;
  *v6 += 4;
  return (*(v12 + 8 * ((v11 + v15 - 1377) ^ 0x60D ^ (v11 + v15 - 1916))))(a1, a2, a3, a4, a5);
}

uint64_t sub_192D1EA28@<X0>(int a1@<W8>)
{
  v9 = ((2 * ((a1 << ((v7 ^ v3) - 40)) + v2)) & 0xFF7B3EF4) + (((a1 << ((v7 ^ v3) - 40)) + v2) ^ 0x7FBD9F7B);
  if (v1 > v6 != v9 - 1559314134 < (v7 ^ v3) * v4 + 583818568)
  {
    v10 = v9 - 1559314134 < (v7 ^ v3) * v4 + 583818568;
  }

  else
  {
    v10 = v9 - 1559314134 > v5;
  }

  return (*(v8 + 8 * ((2428 * v10) ^ v7)))();
}

uint64_t sub_192D1EB14@<X0>(int a1@<W1>, int a2@<W2>, char a3@<W5>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v34 = a1 + 461;
  v35 = (a1 - 51) ^ (a3 + 54);
  v36 = a1 + 65;
  HIDWORD(a25) = a4;
  v44 = (*(v33 + 8 * ((a1 + 461) ^ 0xA72u)))((a2 - 2143133563), 0x100004077774924);
  return (*(v33 + 8 * ((((v35 ^ (v44 == 0)) & 1) * (v36 ^ 0x62)) | v34)))(v44, v37, v38, v39, v40, 3128662369, v41, v42, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_192D1EBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, _DWORD *a44, int a45, int a46, uint64_t a47)
{
  v49 = a6 ^ 0xBA7B9F75;
  v50 = a6 + v47;
  v51 = a6 + v47 - 2837;
  v52 = (*(v48 + 8 * v50))(*(a42 - 0x2B7CC17BA9FDC7E6), a2, a3, a4, a5);
  *(a42 - 0x2B7CC17BA9FDC7E6) = a47;
  *a44 = a30;
  return (*(v48 + 8 * (((a46 == 0) * (v49 ^ 0x6FD)) ^ v51)))(v52);
}

uint64_t sub_192D1EE04()
{
  v5 = *(v3 - 0x2B7CC17BA9FDC7DELL) + 165424830;
  v6 = v2 - 205092212 > v5;
  if (v0 > 0x99F243BF != v5 < 0x660DBC38)
  {
    v6 = v0 > 0x99F243BF;
  }

  return (*(v4 + 8 * ((474 * (((v1 + 119) ^ 0xC1 ^ v6) & 1)) ^ v1)))();
}

uint64_t sub_192D1EE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = v13 ^ (a6 - 125);
  v18 = a11 - ((2 * a11) & 0x32A2E7DBEA424B78) - 0x66AE8C120ADEDA44;
  v19 = (((2 * v12) & 0xD6C19B7E) + *(v14 - 0x2B7CC17BA9FDC7E6) + 0x10292E00949F3241 + (v17 ^ v12 ^ 0xEFD6D1FFD11B54DELL));
  *v19 = HIBYTE(v18) ^ 0x99;
  v19[1] = BYTE6(v18) ^ 0x51;
  v19[2] = BYTE5(v18) ^ 0x73;
  v19[3] = BYTE4(v18) ^ 0xED;
  v19[4] = ((a11 - ((2 * a11) & 0xEA424B78) - 182377028) >> 24) ^ 0xF5;
  v19[5] = BYTE2(v18) ^ 0x21;
  v19[6] = BYTE1(v18) ^ 0x25;
  v19[7] = v18 ^ 0xBC;
  *v11 += 8;
  return (*(v16 + 8 * (((173 * (v17 ^ (a6 + 7)) == 1557) * ((19 * (v17 ^ (a6 - 91))) ^ 0x7EA)) ^ (v15 + v17 - 1615))))(a1, a2, a3, a4, a5);
}

uint64_t sub_192D1F458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v56 = (v55 - 240 + v51);
  *v56 = *(v53 - 0x2B7CC17BA9FDC7DALL);
  v56[1] = (HIDWORD(a15) ^ 0xFBFFB1FE) + ((2 * HIDWORD(a15)) & 0xF7FF63FC) + 1984397238;
  v56[2] = 1917268408;
  return (*(v54 + 8 * (((v56 != 0) | (4 * (v56 != 0))) ^ v52)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, v53 - 0x2B7CC17BA9FDC7DALL);
}

uint64_t sub_192D1F560()
{
  v4 = (v0 ^ 0xC61CBD83) + v1;
  v5 = ((v0 - 75523240) & 0xBEFBFB7F ^ 0xD390A8ED) + *(v2 - 0x2B7CC17BA9FDC7DELL);
  v6 = v1 > 0x39E340F5;
  v7 = v4 > v5;
  if (v6 == v5 < 0xC61CBF06)
  {
    v6 = v7;
  }

  return (*(v3 + 8 * ((37 * !v6) ^ v0)))();
}

uint64_t sub_192D1F604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v54 = v51 + v49;
  v55 = *(v52 - 0x2B7CC17BA9FDC7E6);
  v56 = HIDWORD(a15) - (v50 & 0xA4C9E4D2) - 765136279;
  v57 = *v48 - 1917268404;
  *(v55 + v57) = (v56 >> (v54 - 114)) ^ 0xD2;
  *(v55 + v57 + 1) = BYTE2(v56) ^ 0x64;
  v58 = v54 - 1641;
  *(v55 + v57 + 2) = BYTE1(v56) ^ 0xF2;
  *(v55 + v57 + 3) = v56 ^ 0x69;
  v59 = *v48 + 4;
  *v48 = v59;
  v60 = *(v52 - 0x2B7CC17BA9FDC7E6) + (v59 - 1917268404);
  return (*(v53 + 8 * ((8 * (a18 <= v60)) | (16 * (a18 <= v60)) | v58)))(v60, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_192D1FC28()
{
  v3 = (v0 - 1211) | 0x441;
  (*(v2 + 8 * (v0 ^ 0xD37u)))();
  *(v1 + 8) = 0;
  return (*(v2 + 8 * (v3 ^ (4 * ((((((v3 - 796) | 0x98) - 675) ^ (*(v1 + 24) == 0)) & 1) == 0)))))();
}

uint64_t sub_192D1FC8C@<X0>(int a1@<W8>)
{
  v3 = a1 - 675;
  (*(v2 + 8 * (a1 ^ 0x835)))();
  *(v1 + 24) = 0;
  *(v1 + 36) = 0;
  *v1 = 0;
  return (*(v2 + 8 * ((54 * ((((v3 + 210) ^ (*(v1 + 48) == 0)) & 1) == 0)) ^ v3)))();
}

uint64_t sub_192D1FCE4()
{
  (*(v2 + 8 * (v0 + 2670)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * ((998 * (((*(v1 + 64) == 0) ^ (v0 - 83)) & 1)) ^ (v0 + 210))))();
}

uint64_t sub_192D1FD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v53 = (v50 + 146) | 0x849;
  v54 = (*(v52 + 8 * (v50 + 2460)))(a1, a2, a3, a4, a5, a6, a7, a8);
  *(v51 + 64) = 0;
  *(v51 + 76) = 0;
  *(v51 + 40) = 0;
  (*(v52 + 8 * (v53 ^ 0x15D)))(v54);
  (*(v52 + 8 * (v53 + 218)))();
  v63 = (*(v52 + 8 * (v53 + 212)))(a16, 0);
  return (*(v52 + 8 * (((v63 == 0) * (((v53 - 1709) | 0x140) - 1353)) ^ v53)))(v63, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_192D1FF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  (*(v54 + 8 * (v52 ^ 0x98B)))(a1, qword_1E73B2810[v52 ^ 0x2FF] - 12, a3, a4, a5, a6, a7, a8);
  (*(v54 + 8 * (v52 ^ 0x975)))(a1);
  (*(v54 + 8 * (v52 ^ 0x951)))(a1, v53);
  v56 = (*(v54 + 8 * (v52 ^ 0x969)))();
  return (*(v54 + 8 * (((v56 == qword_1E73B2810[v52 - 727] - 12) * (3 * (v52 ^ 0x226) + 2199)) ^ v52)))(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_192D20044()
{
  v8 = v0;
  (*(v4 + 8 * (v1 ^ 0x8D9)))(v2, v3);
  v5 = (*(v4 + 8 * (v1 + 2081)))();
  return (*(v4 + 8 * (((v5 == v8) * (3 * (v1 ^ 0x3AE) + ((v1 - 136) ^ 0x649))) ^ v1)))(v5, v6);
}

uint64_t sub_192D200F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0x8D9)))(v10, v11, a3, a4, a5, a6, a7, a8);
  v13 = (*(v12 + 8 * (v9 ^ 0x8E1)))();
  return (*(v12 + 8 * (((v13 == a9) * ((v9 - 246) ^ 0x272)) ^ v9)))(v13, v14);
}

uint64_t sub_192D201A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0x8D9)))(v10, v11, a3, a4, a5, a6, a7, a8);
  v13 = (*(v12 + 8 * (v9 + 2081)))();
  return (*(v12 + 8 * (((v13 == a9) * ((v9 ^ 0x1FA) + (v9 ^ 0x188) + 923)) ^ v9)))(v13, v14);
}

uint64_t sub_192D2025C()
{
  (*(v4 + 8 * (v0 + 2089)))(v2, v3);
  v5 = (*(v4 + 8 * (v0 + 2081)))();
  return (*(v4 + 8 * (((v5 == v1) * (((v0 - 376) | 0xF0) ^ ((v0 - 336) | 0xC4) ^ 0x602)) ^ v0)))(v5, v6);
}

uint64_t sub_192D202D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v61 = v59 + 889;
  v62 = (v59 - 1436905963) | 0x10210860;
  v63 = v59 - 1166305675;
  (*(v60 + 8 * (v59 + 2113)))(a58, a2, a3, a4, a5);
  (*(v60 + 8 * (v61 ^ 0xD48)))(a59);
  return (*(v60 + 8 * (((a57 == 0) * (v63 ^ v62 ^ 0x12)) | v61)))(a57, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_192D20D08@<X0>(int a1@<W8>)
{
  v3 = a1 - 1011;
  v4 = v3 + 2167;
  (*(v2 + 8 * (v3 + 2630)))();
  *(v1 + 8) = 0;
  return (*(v2 + 8 * (((((3 * (v4 ^ 0x88E) - 839) | 0x425) ^ 0x415) * (*(v1 + 24) == 0)) ^ v4)))();
}

uint64_t sub_192D20D6C()
{
  *(v1 + 36) = 0;
  *v1 = 0;
  return (*(v2 + 8 * (((*(v1 + 48) == 0) * (v0 + 359 + v0 + 3 - 2407)) ^ v0)))();
}

uint64_t sub_192D20DA4()
{
  v3 = v0 ^ 0x164;
  (*(v2 + 8 * (v0 ^ 0xF0A)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * (((*(v1 + 64) == 0) * (((v3 + 63) ^ 0xFFFFFBBF) + v3 + 80)) ^ v3)))();
}

uint64_t sub_192D20DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  *(v33 + 76) = 0;
  *(v33 + 40) = 0;
  v36 = (*(v35 + 8 * (v32 ^ 0xD56)))(**(v34 + 8 * (v32 ^ 0x631)), *(v30 - 0x2B7CC17BA9FDC7E6), *(v30 - 0x2B7CC17BA9FDC7DALL) + ((v32 - v31 + 1383) ^ 0x37C3572Du), &a27, va, a6, a7, a8);
  return (*(v35 + 8 * ((15 * ((v36 ^ 0xFCFF6EBC) + 2147137512 + ((2 * v36) & 0xF9FEDD78) != v32 - 1929764732)) ^ v32)))();
}

uint64_t sub_192D2101C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
{
  v37 = (*(v35 + 8 * (v34 ^ 0xD59)))(*v33, *(v31 - 0x2B7CC17BA9FDC7E6), *(v31 - 0x2B7CC17BA9FDC7DALL) + ((v34 - v32 + 1374) ^ 0x37C3572Du), &a27, &a31, a6, a7, a8);
  v45 = (v37 ^ 0xFEFE6FE6) + 2113648318 + ((2 * v37) & 0xFDFCDFCC);
  if (v45 == -1929763161)
  {
    v48 = -45017;
  }

  else
  {
    if (v45 == 2096768676)
    {
      v46 = (*(v35 + 8 * (v32 - 1166304933)))(24, 0x1010040E2407E0ALL) != 0;
      return (*(v35 + 8 * ((v46 * (((v32 - 1166307785) ^ 0xFFFFFFD7) + ((v32 - 1166307785) | 1))) ^ (v32 - 1166305952))))();
    }

    v49 = 946232179 * ((((v36 - 108) ^ 0xCCAC8659 | 0xE433420F) - ((v36 - 108) ^ 0xCCAC8659) + (((v36 - 108) ^ 0xCCAC8659) & 0x1BCCBDF0)) ^ 0xB8E4F899);
    *(v36 - 104) = (v32 - 1166306289) ^ v49;
    *(v36 - 100) = v45 - v49 - 759547329;
    v37 = (*(v35 + 8 * (v32 - 1166304914)))(v36 - 108);
    if (*(v36 - 108) == 1181123576)
    {
      v48 = -45016;
    }

    else
    {
      v48 = 0;
    }
  }

  a28 = 0x5C8F431131299E9FLL;
  return (*(v35 + 8 * ((3185 * (v48 == ((169 * (((((v32 - 1166306849) | 6) - 105) | 0x400) ^ 0x7AE)) ^ 0x743))) ^ ((v32 - 1166306849) | 6))))(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_192D21B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v6 - 0x5C8F431131299E9FLL);
  v9 = (((v5 ^ 0x9FD) - 307763077) ^ v3) + ((2 * v3) & 0xDB4FE376) + 307760709;
  v10 = (*(v8 + v9) << 24) | (*(v8 + v9 + 1) << 16) | (*(v8 + v9 + 2) << 8) | *(v8 + v9 + 3);
  *(v6 + a3) = v4;
  return (*(v7 + 8 * ((1215 * (v10 == 0)) ^ v5)))();
}

void sub_192D21EB4(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  *(v9 + a1) = v8;
  *(v12 - 244) = 0;
  *a8 = (*(v11 + 8 * (a2 ^ 0xB19)))(v10, 0x100004077774924);
  JUMPOUT(0x192D21F94);
}

uint64_t sub_192D22004()
{
  v4 = (((v2 + 846304775) & 0xCD8E6AEE) + 2581527331) ^ v0;
  v6 = v1 < 0x20 || v4 < 8;
  return (*(v3 + 8 * ((19 * v6) ^ v2)))();
}

uint64_t sub_192D220A4(uint64_t a1)
{
  v5 = (a1 + v1 - 16);
  v6 = *(v3 + v1 - 16);
  *(v5 - 1) = *(v3 + v1 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * (((v2 + 1219) | 0x302) - 152)) ^ v2)))();
}

uint64_t sub_192D222A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, _DWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *a12 = a25;
  *a13 = a19;
  return (*(v29 + 8 * ((25 * (a29 == 0x5C8F431131299E9FLL)) | 0x522)))(a1, 0x5C8F431131299E9FLL, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_192D223C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v24 - 0x5C8F431131299E9FLL) = 0;
  *(v24 - 0x5C8F431131299E97) = 1237259409;
  *(v24 - 0x5C8F431131299E93) = 0;
  v26 = (*(v25 + 8 * (v22 ^ 0xEB1)))(v24 - 0x5C8F431131299E9FLL, a2, a3, a4, a5, a6, a7, a8);
  return (*(v25 + 8 * (((a22 == 0x2B7CC17BA9FDC7E6) * (v23 + (((v22 ^ 0x29E) - 406) ^ 0xBA7B9F6E) - 2930)) ^ v22 ^ 0x29E)))(v26);
}

void sub_192D224CC(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 1403)))();
  *(v1 - 0x2B7CC17BA9FDC7E6) = 0;
  *(v1 - 0x2B7CC17BA9FDC7DELL) = 1546751354;
  *(v1 - 0x2B7CC17BA9FDC7DALL) = 1917268404;
  JUMPOUT(0x192D22538);
}

uint64_t gJa8aF901k(uint64_t a1)
{
  if (a1 + 8) <= 6 && ((0x7Du >> (a1 + 8)))
  {
    v1 = off_1F06FFAE0[40 * ((*(&unk_1F06FFAEC + 23572))(24, 0x1010040E2407E0ALL) == 0) + 2369];
    __asm { BRAA            X8, X17 }
  }

  return 4294922295;
}

uint64_t sub_192D22BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, int a29, int a30, uint64_t a31)
{
  (*(v32 + 8 * (v33 ^ 0xF7BCACFC)))(*v31, a2, a3, a4, a5, a6, a7, a8);
  *v31 = a31;
  *a28 = a21;
  return (*(v32 + 8 * ((1170 * (a30 == (v33 ^ (v33 - 775)) - 793)) ^ (v34 + v33 - 2359))))();
}

uint64_t sub_192D22D84()
{
  v5 = *(v3 + 8) + 1843760272;
  v6 = v1 > 0x740256CA;
  v7 = v2 + 1052898664 > v5;
  if (v6 == v5 < (((v0 - 2135940658) | 0x770C8502) ^ 0x7C410E47u))
  {
    LOBYTE(v6) = v7;
  }

  return (*(v4 + 8 * ((119 * ((v0 ^ 0x49 ^ v6) & 1)) ^ v0)))();
}

uint64_t sub_192D22E1C@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  v6 = *(a1 - 0x2E52CFE8A53EA7A5);
  v7 = *a2 - 1295758285;
  *(v6 + v7 + 1) = 43;
  *(v6 + v7 + 2) = -115;
  *(v6 + v7) = 99;
  *(v6 + v7 + 3) = 110;
  *a2 += 4;
  return (*(v2 + 8 * (((v4 == v3) * ((v4 + 1418907529) & 0xB3B08FDD ^ 0xD0)) ^ (v5 + v4 - 2370))))(0);
}

uint64_t sub_192D232C0()
{
  v6 = *(v2 + 12);
  *(v3 + 32) = v2 + 12;
  return (*(v4 + 8 * (((((v0 + 891706627) & 0xCAD99EE5 ^ (v1 + 708)) + v6 > 0xFFFFFFFB) * (v0 ^ (v5 - 1481) ^ (v5 - 6))) ^ v0)))(4294922289);
}

uint64_t sub_192D23320()
{
  v6 = *(v3 + 8) - 1490089906;
  v7 = v1 > 0x3AB8DB0C;
  v8 = v2 + (v0 ^ 0xAEEu) + v5 + v0 - 708 - 2142322298 > v6;
  if (v7 == v6 < 0xC54724EF)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((1620 * v7) ^ v0)))();
}

uint64_t sub_192D237D8()
{
  v5 = *(v2 + 12);
  *(v3 + 72) = v2 + 12;
  return (*(v4 + 8 * ((49 * ((((v5 + v1) > 0xFFFFFFF7) ^ (v0 - 86)) & 1)) ^ v0)))(4294922289);
}

uint64_t sub_192D2382C()
{
  v7 = (((v0 - 195) | 0x91D) ^ 0xCBC5EDE3) + *(v3 + 8);
  v8 = v1 > 0x1621FE5A;
  v9 = v2 - 1667084840 > v7;
  if (v8 == v7 < 0xE9DE019D)
  {
    v8 = v9;
  }

  return (*(v4 + 8 * ((v8 * ((v0 - v6 + 2757) ^ (v5 - 12))) ^ v0)))();
}

uint64_t sub_192D239F0@<X0>(int a1@<W8>)
{
  v7 = (((v2 + 2 * a1) << (((v5 - 34) ^ 0x8D) - 88)) & 0x3F7FFF60) + ((v2 + 2 * a1) ^ 0x1FBFFFB1);
  if (v1 > v4 != (v7 - 1803469259) < 0xB4413DE6)
  {
    v8 = (v7 - 1803469259) < 0xB4413DE6;
  }

  else
  {
    v8 = v7 - 1803469259 > v3;
  }

  return (*(v6 + 8 * ((324 * v8) ^ v5)))();
}

uint64_t sub_192D23DAC()
{
  v6 = *(v2 + 12);
  *(v3 + 112) = v2 + 12;
  return (*(v4 + 8 * ((45 * (((v5 + (v0 ^ 0xF6) + 61) ^ ((v6 + v1) > 0xFFFFFFF7)) & 1)) ^ v0)))(4294922289);
}

uint64_t sub_192D23E00()
{
  v6 = *(v3 + 8) - 595448546;
  v7 = v1 > ((v0 - 1515455313) | 0x5210A600u) - v5 + 90551864;
  v8 = v2 - 1386310150 > v6;
  if (v6 < 0xFA9A49BF == v7)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((3530 * v7) ^ v0)))();
}

uint64_t sub_192D23FAC@<X0>(int a1@<W8>)
{
  v7 = (a1 << (((v5 - 35) ^ 0x65) + 5)) + v2;
  v8 = ((2 * v7) & 0xFCBBF95C) + (v7 ^ 0xFE5DFCAF);
  if (v1 > v4 != v8 - 1485663003 < 0xA5D09194)
  {
    v9 = v8 - 1485663003 < 0xA5D09194;
  }

  else
  {
    v9 = v8 - 1485663003 > v3;
  }

  return (*(v6 + 8 * ((3276 * v9) ^ v5)))();
}

uint64_t sub_192D24338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 144) = (*(v15 + 8 * (v16 ^ 0x25E)))(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(v15 + 8 * (v16 ^ 0x269)))();
  v17 = (*(v15 + 8 * (v16 ^ 0x257)))(a14, 0);
  *(v14 + 152) = v17;
  return (*(v15 + 8 * (((v17 == 0) * (125 * (v16 ^ 0x9D9) - 2327)) | v16)))(4294922293, v17);
}

uint64_t sub_192D243F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = (*(v16 + 8 * (v15 ^ 0x2EF)))(a14, a2, 0, a4, a5, a6, a7, a8);
  *(v14 + 160) = v17;
  return (*(v16 + 8 * (((v17 == 0) * (((137 * (v15 ^ 0x94B)) ^ 0x695) - 218)) ^ v15)))(4294922293);
}

uint64_t sub_192D24454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  (*(v45 + 8 * (v46 ^ 0xD17)))(v48, qword_1E73B2810[v46 - 1629] - 12, a3, a4, a5, a6, a7, a8);
  (*(v45 + 8 * (v46 + 1305)))(v48);
  (*(v45 + 8 * (v46 ^ 0xDCD)))(v48, v47);
  v49 = (*(v45 + 8 * (v46 ^ 0xDF5)))();
  return (*(v45 + 8 * (((v49 == qword_1E73B2810[v46 ^ 0x675] - 12) * ((v46 + 77) ^ (v46 - 905) ^ 0xB78)) ^ v46)))(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_192D2455C()
{
  v8 = v0;
  (*(v1 + 8 * (v2 + 2705)))(v4, v3);
  v5 = (*(v1 + 8 * (v2 + 2697)))();
  return (*(v1 + 8 * (((v5 == v8) * ((v2 ^ 0x3F3) + 1622)) ^ v2)))(v5, v6);
}

uint64_t sub_192D245EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v9 + 8 * (v10 + 2705)))(v12, v11, a3, a4, a5, a6, a7, a8);
  v13 = (*(v9 + 8 * (v10 | 0xA89)))() == a9;
  return (*(v9 + 8 * ((v13 * ((((v10 ^ 0x11C) + 727) ^ 0xFFFFFB2F) + 137 * (v10 ^ 0x11C))) ^ v10)))();
}

uint64_t sub_192D24694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v9 + 8 * (v10 ^ 0xAB1)))(v12, v11, a3, a4, a5, a6, a7, a8);
  v13 = (*(v9 + 8 * (v10 ^ 0xA89)))() == a9;
  return (*(v9 + 8 * ((v13 * ((v10 - 92070189) & 0x57CE2FF ^ (v10 - 695402915) & 0x297306FE ^ 0xD94)) ^ v10)))();
}

uint64_t sub_192D2476C()
{
  v5 = v0;
  (*(v1 + 8 * (v2 + 2705)))(v4, v3);
  v6 = (*(v1 + 8 * (v2 + 2697)))() == v5;
  return (*(v1 + 8 * ((v6 * ((v2 + 1372) ^ 0x59F)) ^ v2)))();
}

uint64_t sub_192D247D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  (*(v53 + 8 * (v52 + 1838)))(a51, a2, a3, a4, a5, a6, a7, a8);
  (*(v53 + 8 * ((v52 - 160) ^ 0x872)))(a52);
  return (*(v53 + 8 * ((46 * ((((v52 - 379) ^ (a50 == 0)) & 1) == 0)) ^ (v52 - 160))))(a50, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_192D2505C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v27 = v26 ^ 0x250;
  a19 = 0;
  a24 = 0;
  v28 = (*(v25 + 8 * (v27 + 2252)))(*qword_1E73B2810[v26 ^ 0xEB], *v24, ((v27 - 4279082) & 0xF7FDEFF6) + *(v24 + 12) - 1157126979, &a19, &a24, a6, a7, a8);
  return (*(v25 + 8 * ((2511 * ((v28 ^ 0xE7DF7FBE) + 1072954862 + ((((v27 - 417) | 0xC3) - 809566799) & (2 * v28)) == 936607151)) ^ v27)))(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_192D251C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v30 = (*(v26 + 8 * (v25 ^ 0x9DC)))(*v27, *v24, (v25 - 1295758285 + *(v24 + 12) - 681), &a19, &a24, a6, a7, a8);
  v31 = (v30 ^ 0x27F3FFED) - 2130497 + ((2 * v30) & 0x4FE7FFDA);
  if (v31 == 668171692)
  {
    v32 = (*(v26 + 8 * (v28 - 138631312)))(24, 0x1010040E2407E0ALL) == 0;
    return (*(v26 + 8 * ((v32 * ((v28 - 138630772) ^ (v28 - 138631575))) ^ (v28 - 138633243))))();
  }

  else if (v31 == 936607151)
  {
    return (*(v26 + 8 * ((211 * (35 * ((v28 - 138633676) ^ 0x247) == -44492)) ^ (v28 - 138633676))))(4294922279);
  }

  else
  {
    v34 = 946232179 * ((1523044408 - ((v29 - 108) | 0x5AC7D038) + ((v29 - 108) | 0xA5382FC7)) ^ 0x35431308);
    *(v29 - 104) = (v28 - 138632668) ^ v34;
    *(v29 - 100) = v31 - v34 + 669049655;
    (*(v26 + 23736))(v29 - 108);
    return (*(v26 + 8 * ((1045 * (*(v29 - 108) != 1181123576)) ^ (v28 - 138633785))))(4294922280);
  }
}

uint64_t sub_192D255E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = (*(v19 + 8 * (v17 ^ 0xCBE)))(a1, 0x100004077774924, a3, a4, a5, a6, a7, a8);
  *(v18 + 240) = v20;
  return (*(v19 + 8 * (((v20 != 0) * ((v17 - 1385195606) & 0x529063BF ^ (v17 - 218373316) & 0xD0415BD ^ 0x2D8)) ^ v17)))(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_192D257F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, unsigned int a24)
{
  (*(v24 + 8 * (v25 + 1445)))(v26, a2, a3, a4, a5, a6, a7, a8);
  (*(v24 + 8 * ((4 * (v25 ^ 0x5A5)) ^ 0xA8D)))(*qword_1E73B2810[(4 * (v25 ^ 0x5A5)) ^ 0x102], a19, a24);
  return (*(v24 + 8 * ((1045 * (v27 + ((((4 * (v25 ^ 0x5A5)) ^ 0xDB) - 134371933) & 0xFFBEFFF7) == -42049)) ^ (4 * (v25 ^ 0x5A5)) ^ 0xDB)))(4294922293);
}

void sub_192D25844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26)
{
  v29 = *(v26 + 216);
  (*(v27 + 8 * (v28 ^ 0xF7BCACFC)))(*(v29 - 0x78520B45E1B54CDELL), a2, a3, a4, a5, a6, a7, a8);
  *(v29 - 0x78520B45E1B54CDELL) = *(v26 + 240);
  **(v26 + 224) = a26;
  JUMPOUT(0x192D258A0);
}

uint64_t sub_192D25B14@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v1 - 16);
  v6 = (v4 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v3 + 8 * (((((((v2 - 1368) | 0x509u) + 4294965399) & v1) != 32) * (((((v2 - 1368) | 0x509) - 1344311958) & 0x50208F7F) - 866)) ^ ((v2 - 1368) | 0x509))))(32);
}

uint64_t sub_192D25C0C@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFF5A7 ^ (v3 - 1258913336) & 0x4B097E7B) + v1;
  *(a1 - 7 + v6) = *(v5 - 7 + v6);
  return (*(v4 + 8 * ((297 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

void sub_192D25CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  *(a16 - 0x78520B45E1B54CD6) = a24 - 1172238684 - ((v25 + v24 + 1950486974) & (2 * a24));
  *(a16 - 0x78520B45E1B54CD2) = -267630515;
  JUMPOUT(0x192D25EE4);
}

uint64_t sub_192D260F0@<X0>(int a1@<W8>)
{
  v6 = a1 - 2200;
  v7 = (a1 - 1973414721) & 0x759FE87D;
  v8 = *(v3 - 0x78520B45E1B54CDELL);
  v9 = ((2 * v1) & 0xEFEFE5DE ^ 0xE008809A) + (v1 ^ 0x7FBBAA2);
  v10 = (*(v8 + (v7 ^ 0x8080509) + v9) << ((v6 - 72) & 0x3D ^ 0x21)) | (*(v8 + v9 + 134745362) << 16) | (*(v8 + v9 + 134745363) << 8) | *(v8 + v9 + 134745364);
  *(v3 + v4) = v2;
  return (*(v5 + 8 * (v6 ^ (11 * (v3 == 0x78520B45E1B54CDELL)))))(v10);
}

uint64_t sub_192D261DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(v6 + 8 * (v7 + 2385)))(a2);
  *(v3 - 0x78520B45E1B54CDELL) = 0;
  *(v3 + v5) = -1172238684;
  *(v3 + v4) = v8;
  (*(v6 + 8 * (v7 ^ 0x9B3)))(v3 - 0x78520B45E1B54CDELL);
  return (*(v6 + 8 * ((((v9 + ((((v7 + 1479) | 0x18) - 138496025) & 0xFFFDE776) - 2855) ^ ((v7 + 1479) | 0x18) ^ 0x87D) * (v2 == 0)) | (v7 + 1479) | 0x18)))(a1);
}

void sub_192D262C0()
{
  *v0 = 0;
  *(v0 + 8) = 504896673;
  *(v0 + 12) = v1;
  (*(v3 + 8 * (v2 ^ 0x8EA)))(v0);
  JUMPOUT(0x192D228F4);
}

uint64_t jkag7Bg01u(uint64_t a1, uint64_t a2)
{
  if (a1 + 8) <= 6 && ((0x7Du >> (a1 + 8)))
  {
    __asm { BRAA            X8, X17 }
  }

  return 4294922295;
}

uint64_t sub_192D269F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _DWORD *a27, int a28, int a29, uint64_t a30)
{
  v33 = a5 + a4 - 322;
  (*(v32 + 8 * (a4 + v31)))(*v30, a2, a3);
  *v30 = a30;
  *a27 = a16;
  return (*(v32 + 8 * ((1760 * (a29 == 0)) ^ v33)))();
}

uint64_t sub_192D26BCC()
{
  v5 = *(v3 + 8) - 748115895;
  v6 = v1 > ((v0 + 857) ^ 0xBAE3162F);
  v7 = v2 + 1189952448 + ((v0 - 1601795400) | 0x1411018Au) > v5;
  if (v6 == v5 < 0x451CE12D)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((1003 * v6) ^ v0)))();
}

uint64_t sub_192D26D64@<X0>(int a1@<W8>)
{
  v6 = (a1 << (((v4 - 33) | 0x41) + 62)) + ((v4 + 479) ^ 0x4A4 ^ (v2 + 230));
  v7 = ((2 * v6) & 0xF76FFDFC) + (v6 ^ 0x7BB7FEFE);
  if (v1 > 0x24ACDCE0 != v7 + 1604002845 < 0xDB53231B)
  {
    v8 = v7 + 1604002845 < 0xDB53231B;
  }

  else
  {
    v8 = v7 + 1604002845 > v3;
  }

  return (*(v5 + 8 * ((104 * v8) ^ v4)))();
}

uint64_t sub_192D270F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v8 + 12);
  *(a6 + 16) = v8 + 12;
  return (*(v9 + 8 * ((125 * (((a4 + v6 - 2106) ^ (a4 + 969) ^ (v7 - 1113)) + v10 > 0xFFFFFFFB)) ^ v6)))(4294922289, a2, a3);
}

uint64_t sub_192D2713C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *(v8 + 8) + 1736112910;
  v11 = v7 > 0x26D0CC09;
  v12 = v6 - 1885921201 > v10;
  if (v11 != v10 < ((a5 + ((v5 + 604175601) | 0x90949080) - 391) ^ 0xD92F3321))
  {
    v12 = v11;
  }

  return (*(v9 + 8 * ((v12 | (2 * v12)) ^ v5)))(a1, a2, a3, a4);
}

uint64_t sub_192D272F8@<X0>(int a1@<W8>)
{
  v7 = ((((v5 + 1490577244) & 0xA7279E77) - 201429150) & (2 * (v2 + 2 * a1))) + ((v2 + 2 * a1) ^ 0xF9FF3CE4);
  if (v1 > v4 != v7 - 172588860 < 0xEFB5BDA8)
  {
    v8 = v7 - 172588860 < 0xEFB5BDA8;
  }

  else
  {
    v8 = v7 - 172588860 > v3;
  }

  return (*(v6 + 8 * ((15 * v8) ^ v5)))();
}

uint64_t sub_192D2764C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v8 + 12);
  *(a6 + 56) = v8 + 12;
  return (*(v9 + 8 * ((63 * ((v10 + v7) < 0xFFFFFFF8)) ^ v6)))(4294922289, a2, a3, a4, a5);
}

uint64_t sub_192D27698(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = (((a5 + a4 + v5 - 975 - 186 - 434) | 0x310) ^ 0xBF92BAD8) + *(v8 + 8);
  v11 = v6 > 0xCEB90DB3;
  v12 = v7 - 407970139 > v10;
  if (v11 == v10 < 0x3146F244)
  {
    v11 = v12;
  }

  return (*(v9 + 8 * (((32 * v11) | (v11 << 6)) ^ (v5 - 975))))(a1, a2, a3);
}

uint64_t sub_192D27C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(v13 + 8 * (v12 + 2414)))(a1, a2, a3, a4);
  (*(v13 + 8 * (v12 + 2429)))();
  v15 = (*(v13 + 8 * (v12 ^ 0x9BB)))(a12, 0);
  return (*(v13 + 8 * (v12 | (8 * (v15 == 0)))))(4294922293, v15);
}

uint64_t sub_192D27DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  (*(v43 + 8 * (v40 + 2724)))(v42, qword_1E73B2810[(v40 + 1979) ^ 0x89D] - 12, a3, a4, a5, a6, a7, a8);
  (*(v43 + 8 * (v40 + 2734)))(v42);
  (*(v43 + 8 * ((v40 + 1979) ^ 0x333)))(v42, v41);
  v44 = (*(v43 + 8 * ((v40 + 1979) ^ 0x30B)))();
  return (*(v43 + 8 * (((v44 == qword_1E73B2810[(v40 + 1979) ^ 0x88B] - 12) * (((v40 + 1459144467) & 0xA9073F7D ^ 0xFFFFFC95) + ((v40 + 2135594790) & 0x80B56C4F))) ^ (v40 + 1979))))(v44, v45, v46, v47, v48, v49, v50, v51, a9, v39, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_192D27ED8()
{
  v7 = v0;
  (*(v4 + 8 * (v1 ^ 0xA7D)))(v3, v2);
  v5 = (*(v4 + 8 * (v1 + 2493)))();
  return (*(v4 + 8 * (((v5 == v7) * (v1 + 1718 + v1 + 625 - 988)) ^ v1)))(v5);
}

uint64_t sub_192D27F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0xA7Du)))(v11, v10, a3, a4, a5, a6, a7, a8);
  v13 = (*(v12 + 8 * (v9 + 2493)))() == a9;
  return (*(v12 + 8 * ((v13 * (((v9 ^ 0x94E) - 2007) ^ 0x255)) ^ v9)))();
}

uint64_t sub_192D28034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0xA7D)))(v11, v10, a3, a4, a5, a6, a7, a8);
  v13 = (*(v12 + 8 * (v9 + 2493)))() == a9;
  return (*(v12 + 8 * ((v13 * ((11 * (v9 ^ 0x1CD) + 272272676) & 0xEFC57AB2 ^ 0xBCF)) ^ v9)))();
}

uint64_t sub_192D280F4()
{
  v5 = v0;
  (*(v4 + 8 * ((v1 + 289) ^ 0xA7D)))(v3, v2);
  v6 = (*(v4 + 8 * ((v1 + 289) ^ 0xA45)))() == v5;
  return (*(v4 + 8 * ((v6 * (((v1 - 2065532648) & 0x7B1D8EBE) - 769)) ^ (v1 + 289))))();
}

uint64_t sub_192D28174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v48 = 5 * (v46 ^ 0x4DB);
  (*(v47 + 8 * (v48 ^ 0x298)))(a45, a2, a3, a4, a5);
  (*(v47 + 8 * (v48 + 376)))(a46);
  return (*(v47 + 8 * (((a44 == 0) * ((((v48 + 335837067) | 0xA093108A) ^ 0xFFFFFF88) + v48 - 1265137643)) ^ v48)))(a44, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_192D28C10(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a19 = 0;
  a16 = 0;
  v23 = (*(v22 + 8 * (v21 ^ 0xC76)))(*qword_1E73B2810[v21 ^ 0x711], *v20, v19 + *(v20 + 12) + ((v21 - 1265136953) ^ (a2 - 284)) - 356, &a19, &a16, a6, a7, a8);
  return (*(v22 + 8 * ((134 * ((v23 ^ 0x3733C776) - 84018724 + ((2 * v23) & 0x6E678EEC) != 1110557013)) ^ v21)))(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11);
}

uint64_t sub_192D28D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  v27 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v22 = (*(v20 + 8 * (v16 + 1008)))(*v18, *v14, (*(v14 + 12) + v15), va1, va, a6, a7);
  v23 = (v22 ^ 0xF235DB53) + 1073473023 + (((v16 - 1265137083) ^ 0x50FC276C) & (2 * v22));
  if (v23 == 842121554)
  {
    v24 = (*(v20 + 23584))(24, 0x1010040E2407E0ALL) != 0;
    return (*(v20 + 8 * ((v24 * (11 * (v19 ^ 0xB4979086) - 327)) ^ 0x73C)))();
  }

  else if (v23 == 1110557013)
  {
    v30 = v17;
    return (*(v20 + 4816))(4294922279);
  }

  else
  {
    v26 = 946232179 * ((((2 * (v21 - 108)) | 0xAD5392EC) - (v21 - 108) - 1453967734) ^ 0xC6D2F5B9);
    *(v21 - 104) = v26 ^ 0x638;
    *(v21 - 100) = v23 - v26 + 495099793;
    (*(v20 + 23736))(v21 - 108);
    return (*(v20 + 8 * ((173 * (*(v21 - 108) != 1181123576)) ^ 0x164)))(4294922280);
  }
}

uint64_t sub_192D29398@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = a1 ^ 0x9B4;
  (*(v13 + 8 * (a1 + 368)))(v12);
  v15 = (v14 - 618) | 0x20;
  (*(v13 + 8 * (v15 + 2601)))(*qword_1E73B2810[v15 - 354], a12, a9);
  return (*(v13 + 8 * ((173 * ((((v15 + 805797662) | 0x84901148) ^ 0xB49791CA) == -45003)) ^ v15)))(4294922293);
}

void sub_192D293D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, _DWORD *a55, uint64_t a56, uint64_t a57)
{
  v59 = *(a6 + 160);
  (*(v58 + 8 * (a4 ^ v57)))(*(v59 - 0x161D22D60BEDB2F3), a2, a3);
  *(v59 - 0x161D22D60BEDB2F3) = a57;
  *a55 = a18;
  JUMPOUT(0x192D29430);
}

uint64_t sub_192D295F4(uint64_t a1)
{
  v5 = *(v3 + v1 - 1 - 31);
  v6 = a1 + v1 - 1;
  *(v6 - 15) = *(v3 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((3128 * ((v2 ^ 0x17Cu) - 1228 == (v1 & 0xFFFFFFE0))) ^ v2)))();
}

uint64_t sub_192D29688(uint64_t a1)
{
  *(a1 + v1) = *(v5 + v1);
  v7 = ((v1 + 1) ^ v3) != (v2 ^ 0x2D496C09);
  return (*(v6 + 8 * (((v7 << 6) | (v7 << 7)) ^ v4)))();
}

void sub_192D29814(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(a20 - 0x161D22D60BEDB2EBLL) = ((a5 + a4 + 1250) ^ 0x7878E419) + a16 - ((2 * a16) & 0xF0F1C64A);
  *(a20 - 0x161D22D60BEDB2E7) = -499228505;
  JUMPOUT(0x192D29A00);
}

uint64_t sub_192D29C2C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *(v7 - 0x161D22D60BEDB2F3);
  v12 = ((2 * v5) & 0xFFDFE97E ^ 0xC45CC14E) + (v5 ^ 0x1DD19418) + 1051457;
  v13 = (*(v11 + v12) << 24) | (*(v11 + v12 + 1) << 16) | (*(v11 + v12 + 2) << 8);
  v14 = *(v11 + v12 + 3);
  *(v7 + v9) = v6;
  if (!(v13 | v14))
  {
    return (*(v10 + 8 * ((((a2 ^ (a2 + 493)) - 407) * (v7 == v8)) ^ (a5 + a2 + 27))))(4294922294);
  }

  if ((v13 | v14) == 0xFFFF4FFB)
  {
    return (*(v10 + 8 * (((*(qword_1E73B2810[a5 - 602 + a2] - 4) == 0) * (((a5 + a2 - 1727431518) & 0x66F68BBF) - 2568)) ^ (a5 + a2 + 527))))();
  }

  return (*(v10 + 8 * ((16 * (((v7 == v8) ^ (((-77 - a2) ^ 0x2F) + 1)) & 1)) | 0x7AC)))();
}

uint64_t sub_192D2A120@<X0>(int a1@<W8>)
{
  v8 = (a1 - 1387687271) & 0x52B66EFA;
  (*(v7 + 8 * (a1 ^ 0xB4C)))();
  *(v2 - 0x161D22D60BEDB2F3) = 0;
  *(v2 + v6) = 2021188389;
  *(v2 + v4) = v5;
  (*(v7 + 8 * (v8 + 2352)))(v2 - 0x161D22D60BEDB2F3);
  return (*(v7 + 8 * (((((((v8 + 718) | 0x2C1) + 806746591) | 0x84819002) + 1265135760 + 354 * (((v8 + 718) | 0x2C1) ^ 0x7EE) - 3057) * (v1 == 0)) ^ ((v8 + 718) | 0x2C1))))(v3);
}

void sub_192D2A248()
{
  *v0 = 0;
  *(v0 + 8) = 1907636452;
  *(v0 + 12) = v1;
  (*(v3 + 8 * (v2 ^ 0xA4E)))(v0);
  JUMPOUT(0x192D26504);
}

void asabc800ag(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D2A328(uint64_t a1, _DWORD *a2)
{
  *v2 = 0;
  *a2 = 0;
  v4 = (*(v3 + 23584))(24, 0x1010040E2407E0ALL) == 0;
  return (*(v3 + 8 * (v4 | (4 * v4) | 0x542u)))(4294922293);
}

uint64_t sub_192D2ADEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, _DWORD *a34, int a35, unsigned int a36, uint64_t a37)
{
  v39 = 2 * (a5 ^ (a5 - 167));
  v40 = v38 + a5 - 2045;
  (*(v37 + 8 * (a5 ^ (a5 - 2422))))(*a11, a2, a3, a4);
  *a11 = a37;
  *a34 = a26;
  return (*(v37 + 8 * (((a36 == 0) * (v39 ^ 0xC50)) ^ v40)))(a36, v41, v42, v43, 2932264581, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_192D2AF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, _DWORD *a40, int a41, unsigned int a42, uint64_t a43)
{
  v45 = a5 ^ (a5 + 168);
  v46 = a5 + v44 - 1924;
  (*(v43 + 8 * (a5 + v44)))(*(a38 - 0x1A8CA07156B7B2ABLL), a2, a3, a4);
  *(a38 - 0x1A8CA07156B7B2ABLL) = a43;
  *a40 = a31;
  return (*(v43 + 8 * (((a42 == 0) * (v45 ^ 0x163)) ^ v46)))(a42, v47, v48, v49, 2932264581, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_192D2B188()
{
  v4 = *(v2 - 0x1A8CA07156B7B2A3) - 1579938237 + ((v1 - 531815500) & 0x1FB2DF3F);
  if (v0 > 0x572430B != v4 < 0xFA8DBCF0)
  {
    v5 = v0 > 0x572430B;
  }

  else
  {
    v5 = v0 - 91374841 + v1 - 62 > v4;
  }

  return (*(v3 + 8 * ((27 * !v5) ^ v1)))();
}

uint64_t sub_192D2B228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *(v8 - 0x1A8CA07156B7B2ABLL);
  v12 = ((2 * v6) & 0xFD37F77A) + (v6 ^ 0xFE9BFBBD);
  *(v11 + v12 + 23331908) = 0;
  v13 = a5 + v7 - 493;
  *(v11 + v12 + 23331907) = 0;
  *(v11 + v12 + 23331909) = 0;
  *(v11 + v12 + (v13 ^ 0xAFA2CAC3)) = 1;
  *v5 += 4;
  return (*(v9 + 8 * ((690 * (((a5 + v7 + 1561448301) ^ 0xBD89E42) + ((a5 + v7 + 1561448301) & 0xF42766F7) == 2164)) ^ (v10 + v13 - 2775))))(0, a2, a3, a4);
}

uint64_t sub_192D2B710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(v13 + 8 * (v12 + 2426)))(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(v13 + 8 * (v12 + 2441)))();
  v15 = (*(v13 + 8 * (v12 + 2435)))(a12, 0);
  return (*(v13 + 8 * (((((v12 - 67) ^ (v15 == 0)) & 1) * ((v12 - 528963) & 0xAECEDEAD ^ 0xAEC6CEB3)) ^ v12)))(4294922293, v15);
}

uint64_t sub_192D2B7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = v13 ^ v12 ^ (a5 - 99);
  v17 = (*(v14 + 8 * ((v13 ^ v12) + 513)))(a12, a2, 0, a4);
  *(v15 - 256) = v17;
  return (*(v14 + 8 * ((((v16 ^ (v17 == 0)) & 1) * ((((v13 ^ v12) - 2374) | 0x210) ^ 0x265)) ^ v13 ^ v12)))(4294922293);
}

uint64_t sub_192D2B870()
{
  (*(v1 + 8 * (v0 ^ 0x90A)))(v2, qword_1E73B2810[v0 - 610] - 12);
  (*(v1 + 8 * (v0 ^ 0x9F4)))(v2);
  *(v4 - 248) = (*(v1 + 8 * (v0 ^ 0x9D0)))(v2, v3);
  v5 = (*(v1 + 8 * (v0 ^ 0x9E8)))();
  return (*(v1 + 8 * (((v5 == qword_1E73B2810[v0 ^ 0x268] - 12) * (v0 ^ 0x36E ^ ((v0 + 399) | 0x3B2))) ^ v0)))(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_192D2B974(uint64_t a1)
{
  v4 = (v1 - 1359520148) & 0x5108A6FB;
  *(v3 - 248) = a1;
  (*(v2 + 8 * (v4 + 1074)))();
  (*(v2 + 8 * (v4 + 1074)))(*(v3 - 256));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D2C598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v31 = v28 + 1187;
  v32 = (v28 - 1126878) & 0xAED7FFAF;
  a19 = 0;
  a28 = 0;
  a27 = v30;
  v33 = (*(v29 + 8 * (v28 + 2754)))(*qword_1E73B2810[v28 - 161], *(a24 - 0x1A8CA07156B7B2ABLL), *(a24 - 0x1A8CA07156B7B29FLL), &a19, &a28, a6, a7, a8);
  return (*(v29 + 8 * ((13 * ((v33 ^ (v32 - 1325847814)) - 44073024 + ((2 * v33) & 0xBF7FF2FE) == 1830779202)) ^ v31)))(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_192D2C6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v37 = (*(v32 + 8 * (v29 + 1567)))(*v33, *(v30 + v31), *(v30 - 0x1A8CA07156B7B29FLL), &a19, &a28, a6, a7, a8);
  v43 = (v37 ^ 0x7F9FF9FF) - 578846912 + ((v37 << ((v29 - 113) & 0x9F ^ (v35 - 1))) & 0xFF3FF3FE);
  if (v43 == v28)
  {
    v46 = 4294922279;
    v47 = v34;
  }

  else
  {
    if (v43 == 1562343743)
    {
      v44 = (*(v32 + 23584))(24, 0x1010040E2407E0ALL) != 0;
      return (*(v32 + 8 * ((115 * v44) ^ 0x391)))();
    }

    v48 = 946232179 * ((((v36 - 108) | 0x211FEA39) - ((v36 - 108) & 0x211FEA39)) ^ 0xB164D6F6);
    *(v36 - 104) = v48 ^ 0x638;
    *(v36 - 100) = v43 - v48 - 225122396;
    (*(v32 + 23736))(v36 - 108);
    if (*(v36 - 108) == 1181123576)
    {
      v46 = 4294922280;
    }

    else
    {
      v46 = 0;
    }

    v47 = v34;
  }

  if (v46)
  {
    v49 = v34;
  }

  else
  {
    v49 = v47;
  }

  a20 = v49;
  return (*(v32 + 8 * ((2576 * (v46 == 0)) ^ 0xB3)))(v46, 4130263200, v38, v39, 2932264581, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_192D2CA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28)
{
  *(v30 + 8) = v32 - 4096;
  *(v33 - 200) = v31;
  return (*(v29 + 8 * (((a28 <= 0x1000) * (v28 - 777)) ^ v28)))(a1, a2, a3, a4, 2932264581, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v31);
}

uint64_t sub_192D2CAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int w8_0@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *(v33 - 192) = v29;
  HIDWORD(a29) = w8_0;
  return (*(v31 + 8 * (((((((v30 + 2117117659) & 0x81CF5FB6) - 1948) | 4) - 506) * (v32 != 0)) ^ (v30 + 2117117659) & 0x81CF5FB6)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_192D2CB9C()
{
  *(v4 - 180) = -45007;
  *(v4 - 164) = -45007;
  return (*(v1 + 8 * (((v2 == v3) * (((v0 + 338) ^ 0x664) + ((v0 + 338) ^ 0xFFFFFD87))) ^ (v0 + 338))))();
}

void sub_192D2CE1C()
{
  (*(v4 + 8 * (v1 ^ (v0 - 2422))))();
  *(v5 + v2) = 0;
  *(v5 - 0x71166887D0A76934) = v6;
  *(v5 + v3) = 164704100;
  (*(v4 + 8 * (v1 ^ 0xAEC6C50F)))(v5 + v2);
  sub_192D2D0B8();
}

uint64_t sub_192D2CEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29)
{
  v32 = 163 * (a5 ^ (a5 + 1));
  v33 = a5 + v31 - 2863;
  v34 = *(v30 - 200);
  v35 = (*(v29 + 8 * (a5 + v31)))(*(v34 - 0x71166887D0A7693CLL), a2, a3, a4);
  *(v34 - 0x71166887D0A7693CLL) = *(v30 - 176);
  **(v30 - 192) = a29;
  v36 = *(v30 - 180);
  *(v30 - 164) = v36;
  return (*(v29 + 8 * ((204 * (v36 != (v32 ^ 0x1E9))) ^ v33)))(v35);
}

void sub_192D2D040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  *(a27 - 0x71166887D0A76934) = (a5 ^ (a5 - 369)) + 524352999 + a28 - ((2 * a28) & 0x3E81FBCE) - 913;
  *(a27 - 0x71166887D0A76930) = 164704100;
  sub_192D2D0B8();
}

uint64_t sub_192D2D298(uint64_t a1, int a2)
{
  v8 = *(v6 - 0x71166887D0A7693CLL);
  v9 = (*(v8 + v5) << ((v4 ^ 0x2A) + 13)) | (*(v8 + (a2 + v3 - 3)) << 16) | (*(v8 + (a2 + v3 - 2)) << 8) | *(v8 + (a2 + v3 - 1));
  *(v6 - 0x71166887D0A76930) = v2 + 1509109630;
  return (*(v7 + 8 * ((1085 * (v9 == 261 * (v4 ^ 0x22A) - 2871)) ^ v4)))();
}

uint64_t sub_192D2D418@<X0>(uint64_t a1@<X8>)
{
  v8 = (*(a1 + v3) << (((v4 - 32) & 0x3F) - 31)) | (*(a1 + (v1 + 1)) << 16) | (*(a1 + (v1 + 2)) << ((v4 - 120) & 0x7D ^ 0x15)) | *(a1 + (v1 + 3));
  *(v5 - 0x71166887D0A76930) = v2 - 908234881;
  return (*(v6 + 8 * ((978 * (v8 != 0)) ^ (v4 - 342))))(0);
}

uint64_t sub_192D2D4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = (*(v8 + 8 * (v7 ^ 0x999)))(v6 << (((-67 * (v7 ^ 0x1E)) ^ 0xB7u) + a5 + v7 - 29), 0x1010040F32E1FD2, a3, a4);
  v12 = v5 == v9 || v10 == 0;
  return (*(v8 + 8 * ((60 * v12) ^ v7)))(4294922294);
}

uint64_t sub_192D2D664@<X0>(int a1@<W4>, int a2@<W5>, int *a3@<X8>)
{
  v16 = bswap64(*(*(v10 + v9) + (((a2 - 4) << ((a1 ^ v5) + 118)) & ((a1 - 1455) + v7)) + ((a2 - 4) ^ v6) + v3));
  *(a3 - 3) = (v16 + v4 - (v8 & (2 * v16))) ^ v4;
  LODWORD(v16) = *(v10 + v12);
  *(v10 + v12) = v16 + 8;
  v17 = *(v10 + v9);
  *(a3 - 1) = (*(v17 + (v14 + v16 + 4)) << 24) | (*(v17 + (v14 + v16 + 5)) << 16) | (*(v17 + (v14 + v16 + 6)) << 8) | *(v17 + (v14 + v16 + 7));
  LODWORD(v16) = *(v10 + v12);
  *(v10 + v12) = v16 + 4;
  v18 = *(v10 + v9);
  *a3 = (*(v18 + (v16 + v14)) << 24) | (*(v18 + (v16 + v14 + 1)) << 16) | (*(v18 + (v16 + v14 + 2)) << 8) | *(v18 + (v16 + v14 + 3));
  LODWORD(v16) = *(v10 + v12);
  *(v10 + v12) = v16 + 4;
  return (*(v13 + 8 * (a1 | (2 * (v16 + v14 + *(a3 - 1) + *a3 > (*(v10 + v11) ^ v15))))))();
}

uint64_t sub_192D2D77C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, int a4@<W5>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>)
{
  *(a7 + 4) = *(v9 + v8) + a5;
  v13 = *(v9 + v10) + a4;
  *(v9 + v10) = v13;
  *(a7 + 12) = *(v9 + v8) + (a6 + v13 - 4);
  *(v9 + v10) += *a7;
  return (*(v11 + 8 * (((v12 + ((a3 + a1) | a2) - 2894) * (v7 == 0)) ^ a3)))();
}

uint64_t sub_192D2D890@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 < v5;
  *(v2 + v3) = 0;
  if (v7 == (v3 + 1) > 0xFFFFFFFFFA44B07CLL)
  {
    v7 = a1 + v3 + (v1 + 1329) + 411 < v4;
  }

  return (*(v6 + 8 * ((3224 * v7) ^ v1)))(4294922262);
}

uint64_t sub_192D2D8F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  *(v28 - 160) = a22;
  *(v28 - 148) = a27;
  return (*(v27 + 8 * ((((7 * (((a4 - 645) | 0x148) ^ 0x77D)) ^ 0x109) * (a22 != 0)) ^ (a4 + 564))))(0, a2, a3);
}

uint64_t sub_192D2D948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  v21 = (*(v20 + 8 * (v17 ^ 0xAE1)))(32 * v18, 0x1010040F32E1FD2, a3, a4, a5, a6, a7, a8);
  *a17 = v21;
  return (*(v20 + 8 * (((v21 == 0) * (((v17 - 95) | 0x648) - 1850)) ^ v17)))(v19);
}

uint64_t sub_192D2D9A8()
{
  *(v3 - 137) = v1 != 0;
  *(v3 - 144) = 0;
  return (*(v2 + 8 * (((((v0 - 28) ^ (v1 != 0)) & 1) * ((v0 + 996) ^ 0x54E)) ^ (v0 + 996))))();
}

uint64_t sub_192D2D9F4@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *(v12 - 160);
  v14 = 32 * a1;
  *(*a10 + v14) = *(v13 + v14);
  v16 = (v13 + v14 + 8);
  v15 = *v16;
  *(v12 - 136) = a1;
  *(v12 - 128) = v16;
  *(*a10 + v14 + 8) = v15;
  v17 = *(v13 + v14 + 12);
  *(v12 - 120) = v13 + v14 + 12;
  *(*a10 + v14 + 12) = v17;
  *(*a10 + v14 + 16) = 0;
  *(*a10 + v14 + 24) = 0;
  *(*a10 + v14 + 16) = (*(v11 + 8 * (v10 ^ 0xE57)))(*v16, 0x100004077774924);
  return (*(v11 + 8 * (((*(*a10 + v14 + 16) == 0) * (v10 - 1432 + ((v10 - 315706908) & 0x12D14A6F) - 601)) ^ v10)))();
}

uint64_t sub_192D2DCA8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 329;
  v6 = (v1 - 16 + a1);
  v7 = *(v4 + v1 - 16);
  *(v6 - 1) = *(v4 + v1 - 16 - 16);
  *v6 = v7;
  return (*(v3 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * ((v5 + 181761835) & 0xF52A87AD ^ 0x43E)) ^ v5)))((v1 & 0xFFFFFFE0) - 32);
}

uint64_t sub_192D2DEAC@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v9 = v3 - 1;
  *(a2 + v9) = *(v8 + v9);
  return (*(v7 + 8 * (((v9 == ((v2 + v4) | v5) + a1) * v6) ^ v2)))();
}

uint64_t sub_192D2DEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int *a15, uint64_t a16, void *a17)
{
  v19 = 7 * ((v18 + a5 - 1176) ^ 0x6F9);
  v20 = v18 + a5 - 793;
  *(*a17 + 32 * a7 + 24) = (*(v17 + 8 * (v18 + a5 - 6)))(*a15, 0x100004077774924, a3, a4);
  return (*(v17 + 8 * (((*(*a17 + 32 * a7 + 24) == 0) * (v19 ^ 0xB6)) ^ v20)))();
}

uint64_t sub_192D2DFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = 451 * (a5 ^ (a5 + 1));
  v27 = *(v25 - 148);
  v28 = v26 + *(v25 - 144) - 1352;
  *(v25 - 144) = v28;
  LOBYTE(v27) = v28 < v27;
  *(v25 - 137) = v27;
  return (*(v24 + 8 * ((((v26 ^ v27) & 1) * (v26 ^ 0x54E)) ^ v26)))(a1, a2, a3, a4);
}

uint64_t sub_192D2E060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v29 = 11 * (v27 ^ 0x74);
  (*(v28 + 8 * ((v27 ^ 0x63F) + 1084)))(a22, a2, a3, a4, a5, a6, a7, a8);
  *a10 = a27;
  return (*(v28 + 8 * (((a20 == 0x71166887D0A7693CLL) * ((((v29 - 1782) | 0x296) + 521) ^ 0x888)) ^ v29)))(0);
}

uint64_t sub_192D2E34C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = (a1 - 2253) | 0xA0;
  (*(v20 + 8 * (a1 + 682)))();
  *(v18 + v19) = 0;
  *(v18 - 0x71166887D0A76934) = v21;
  *(v18 - 0x71166887D0A76930) = 164704100;
  (*(v20 + 8 * (v22 + 2775)))(v18 + v19);
  return (*(v20 + 8 * (((((((v22 + 76) & 0xD7) + 68) ^ (a17 == 0x1A8CA07156B7B2ABLL)) & 1) * (((v22 + 2121187148) & 0x819146D7 ^ 0xAEC6C852) + 1362702777)) ^ (v22 + 2121187148) & 0x819146D7)))(v17);
}

void sub_192D2E46C()
{
  *(v1 + v2) = 0;
  *(v1 - 0x1A8CA07156B7B2A3) = 1488562574;
  *(v1 - 0x1A8CA07156B7B29FLL) = 0;
  (*(v3 + 8 * ((v0 ^ 0x1098) + 1756)))(v1 + v2);
  sub_192D2A37C();
}

void Gg9q7vHg34(unint64_t a1, uint64_t a2)
{
  v3 = a1 > 0xFFFFFFFFFFFFFFEFLL && a2 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D2E620(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = (*(v3 + 23584))(24, 0x1010040E2407E0ALL) != 0;
  return (*(v3 + 8 * ((39 * v4) ^ v2)))(4294922293);
}

uint64_t sub_192D2E670()
{
  *v0 = 0;
  *(v0 + 8) = 0x205585D268BFA235;
  *(v0 + 16) = 0;
  v2 = (*(v1 + 23584))(4096, 0x100004077774924);
  *v0 = v2;
  return (*(v1 + 8 * ((20 * (v2 == 0)) ^ 0x801)))();
}

uint64_t sub_192D31F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v20 = -191875503 * (v19 ^ 1) - 2 * v19 + 5;
  *(&a19 + 16 * &a19 - 144 * ((&a9 - 0x36F214C141B3E0BELL) / 9) - 0x6F214C141B3E10D1) = *(qword_1E73B2950[v20 + 6] + 8) ^ *(a2 + 15) ^ 0xD1 ^ *(qword_1E73B2950[v20 + 1] + 13) ^ *(qword_1E73B2950[v20 + 5] + 14);
  return (*(a5 + 8 * v20))();
}

uint64_t xtiKg(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v16 = *MEMORY[0x1E69E9840];
  qword_1EAE16938 = 1000671541 * ((qword_1EAE16938 - &v7 + qword_1EAE16918) ^ 0x25209C7892F2405CLL);
  qword_1EAE16918 = qword_1EAE16938;
  v5 = 398132233 * ((2 * (&v8 & 0x130F2ADC81DB4528) - &v8 - 0x130F2ADC81DB4529) ^ 0x1D6B4662CA30F771);
  v8 = a2;
  v14 = -601934099 - v5;
  v10 = a1;
  v9 = v5 ^ a5;
  v12 = v5 ^ a3;
  v13 = a4;
  v15 = off_1F070E440 - v5;
  (*(&off_1F070E080 + (unk_193010A3C ^ 0xCu) + 1929))(&v8);
  return v11;
}

uint64_t ZyNF2D9(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = (qword_1EAE16918 ^ qword_1EAE16940) - &v5;
  qword_1EAE16940 = 1000671541 * v1 + 0x78D52D199FB68F0CLL;
  qword_1EAE16918 = 1000671541 * (v1 ^ 0x25209C7892F2405CLL);
  v2 = 1614251083 * (((&v6 | 0xBCC87CDF8A18F0EFLL) - &v6 + (&v6 & 0x4337832075E70F10)) ^ 0x8E2A700E2019D0FLL);
  v6 = v2 ^ 0x9405E0C4;
  v3 = byte_193010800[byte_193010700[(53 * ((qword_1EAE16918 - qword_1EAE16940) ^ 0x5C))] ^ 0x20];
  v9 = v2 + qword_1F070E2E8;
  v7 = a1;
  (*(&off_1F070E080 + ((53 * ((qword_1EAE16918 - qword_1EAE16940) ^ 0x5C)) ^ v3) + 2185))(&v6);
  return v8;
}

uint64_t ewFHQ(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = qword_1EAE16928 - &v5 + qword_1EAE16918;
  qword_1EAE16928 = (1000671541 * v1) ^ 0x25209C7892F2405CLL;
  qword_1EAE16918 = 1000671541 * (v1 ^ 0x25209C7892F2405CLL);
  v2 = 1614251083 * ((2 * (&v6 & 0x5BC954F4024B22D0) - &v6 - 0x5BC954F4024B22D4) ^ 0x101C70D495ADB0CCLL);
  v6 = v2 ^ 0x9405E0C4;
  LOBYTE(v1) = 53 * ((53 * v1) ^ qword_1EAE16918);
  v3 = byte_193010800[byte_193010700[v1] ^ 0x6A];
  v7 = a1;
  v9 = off_1F070E3B8 + v2;
  (*(&off_1F070E080 + (v1 ^ v3) + 2031))(&v6);
  return v8;
}

uint64_t qSCskg(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = qword_1EAE16918 - qword_1EAE16920 - &v15;
  qword_1EAE16920 = 1000671541 * (v7 - 0x25209C7892F2405CLL);
  qword_1EAE16918 = 1000671541 * (v7 ^ 0x25209C7892F2405CLL);
  v10[0] = qword_1F070E3F8;
  v10[1] = a1;
  v11 = a3;
  v10[2] = a2;
  v10[3] = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v17 = v10;
  v8 = byte_193010600[byte_193010500[(53 * ((qword_1EAE16918 + qword_1EAE16920) ^ 0x5C))] ^ 0xE2];
  v16[1] = (923786993 * ((((&vars0 - 24) | 0x369D7D4) - (&vars0 - 24) + ((&vars0 - 24) & 0xFC962828)) ^ 0x698E6B9B)) ^ 0x6294CF9;
  (*(&off_1F070E080 + ((53 * ((qword_1EAE16918 + qword_1EAE16920) ^ 0x5C)) ^ v8) + 1891))(v16);
  return v16[0];
}

uint64_t SwZuQte6Dm(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  qword_1EAE16930 = 1000671541 * ((qword_1EAE16918 - qword_1EAE16930 - &v8) ^ 0x25209C7892F2405CLL);
  qword_1EAE16918 = qword_1EAE16930;
  v6[0] = off_1F070E3A0;
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = a3;
  v7 = a4;
  v9[1] = (923786993 * ((2 * ((&vars0 - 24) & 0x63FDC6F8) - (&vars0 - 24) + 469907714) ^ 0x76E5854D)) ^ 0x6294CF9;
  v4 = byte_193010C00[byte_193010B00[(53 * ((2 * qword_1EAE16930) ^ 0x5C))] ^ 0x5A];
  v10 = v6;
  (*(&off_1F070E080 + ((53 * ((2 * qword_1EAE16930) ^ 0x5C)) ^ v4) + 1823))(v9);
  return v9[0];
}

uint64_t get_aks_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_153);
  return get_aks_client_connection_connection;
}

void __get_aks_client_connection_block_invoke()
{
  if (!get_aks_client_connection_connection)
  {
    get_aks_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

dispatch_queue_t __get_aks_client_dispatch_queue_block_invoke()
{
  result = dispatch_queue_create("aks-client-queue", 0);
  get_aks_client_dispatch_queue_connection_queue = result;
  return result;
}

uint64_t _copy_aks_client_connection(char *path, const char *a2)
{
  connect = 0;
  v3 = *MEMORY[0x1E696CD68];
  v4 = IORegistryEntryFromPath(*MEMORY[0x1E696CD68], path);
  v5 = MEMORY[0x1E69E9A60];
  if (!v4 || (v6 = v4, v7 = IOServiceOpen(v4, *MEMORY[0x1E69E9A60], 0, &connect), IOObjectRelease(v6), v7))
  {
    v8 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(v3, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      IOServiceOpen(MatchingService, *v5, 0, &connect);
      IOObjectRelease(v10);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

char *aks_copy_packed_data(_DWORD *a1, const void *a2, int a3)
{
  v3 = a1 + 1;
  if (a2)
  {
    *a1 = a3;
    memcpy(a1 + 1, a2, a3);
    v3 = (v3 + a3);
    v5 = -a3;
    v6 = -a3 & 3;
    if ((v5 & 3) != 0)
    {
      __s = 0;
      memset_s(&__s, 4uLL, 0, 4uLL);
      memcpy(v3, &__s, v6);
      return v3 + v6;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

char *aks_pack_data(char **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 4;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = v21;
      v21 += 2;
      v12 += *(v14 + 2) + (-*(v14 + 2) & 3) + 4;
      --v13;
    }

    while (v13);
  }

  result = calloc(1uLL, v12);
  v16 = result;
  v22 = &a9;
  v17 = 0;
  if (a3)
  {
    v18 = 4;
    do
    {
      v19 = v22;
      v20 = *v22;
      v22 += 2;
      result = aks_copy_packed_data(&v16[v18], v20, *(v19 + 2));
      v18 = result - v16;
      ++v17;
    }

    while (a3 != v17);
  }

  *v16 = v17;
  *a1 = v16;
  *a2 = v12;
  return result;
}

uint64_t sldksmfm1n(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 + dword_1EAE16A68) ^ 0x88)) ^ byte_193012CC0[byte_1930115B0[(127 * ((dword_1EAE16A30 + dword_1EAE16A68) ^ 0x88))] ^ 0x4F]) - 74);
  v2 = *(v1 - 4);
  v3 = *(&off_1E73B2A80 + (byte_193012CC0[byte_1930115B0[(127 * (v2 ^ dword_1EAE16A30 ^ 0x88))] ^ 0x11] ^ (127 * (v2 ^ dword_1EAE16A30 ^ 0x88))));
  v4 = &v9[*v3 ^ v2];
  *(v1 - 4) = 2140301951 * v4 + 0x3D3AC77DA7219688;
  *v3 = 2140301951 * (v4 ^ 0x3D3AC77DA7219688);
  v5 = *(&off_1E73B2A80 + ((127 * (dword_1EAE16A68 ^ 0x88 ^ dword_1EAE16A30)) ^ byte_193016030[byte_193015040[(127 * (dword_1EAE16A68 ^ 0x88 ^ dword_1EAE16A30))] ^ 0x2D]) - 161);
  v6 = 663017543 * ((-2 - ((~&v10 | 0x6CA43041D842A3C3) + (&v10 | 0x935BCFBE27BD5C3CLL))) ^ 0x752850828552FEE7);
  v7 = *(v5 + 1624) - v6;
  v10 = 1231722968 - v6;
  v11 = a1;
  v12 = v7;
  (*(v5 + 8 * (((127 * ((*v3 - *(v1 - 4)) ^ 0x88)) ^ byte_193012CC0[byte_1930115B0[(127 * ((*v3 - *(v1 - 4)) ^ 0x88))] ^ 0x4E]) + 2636)))(&v10);
  return v13;
}

uint64_t koqa938msd8(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 - dword_1EAE16AF0) ^ 0x88)) ^ byte_193016030[byte_193015040[(127 * ((dword_1EAE16A30 - dword_1EAE16AF0) ^ 0x88))] ^ 0x6B]) - 88);
  v3 = *(v2 - 4);
  v4 = *(&off_1E73B2A80 + (byte_193012BC4[(byte_1930114BC[(127 * ((dword_1EAE16A30 + v3) ^ 0x88)) - 12] ^ 0x66) - 4] ^ (127 * ((dword_1EAE16A30 + v3) ^ 0x88))) + 28);
  v5 = (*v4 + v3) ^ &v10;
  *(v2 - 4) = 2140301951 * v5 + 0x3D3AC77DA7219688;
  *v4 = 2140301951 * (v5 ^ 0x3D3AC77DA7219688);
  v6 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 - dword_1EAE16AF0) ^ 0x88)) ^ byte_193012CC0[byte_1930115B0[(127 * ((dword_1EAE16A30 - dword_1EAE16AF0) ^ 0x88))] ^ 0x12]) - 132);
  v7 = 398614211 * (&v11 ^ 0x5365D0A976C72DABLL);
  v11 = *(v6 + 1208) + v7;
  v12 = v7 ^ a2;
  v13 = v7 ^ 0xD19B2ADA;
  v15 = a1;
  v8 = 127 * ((*v4 + *(v2 - 4)) ^ 0x88);
  (*(v6 + 8 * ((byte_193016038[(byte_193015048[v8 - 8] ^ 0x2D) - 8] ^ v8) + 2453)))(&v11);
  return v14;
}

uint64_t RXm4IJLE3xR(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 - dword_1EAE16990) ^ 0x88)) ^ byte_193012CC0[byte_1930115B0[(127 * ((dword_1EAE16A30 - dword_1EAE16990) ^ 0x88))] ^ 0x11]) + 18);
  v5 = *(&off_1E73B2A80 + ((127 * (*v4 ^ dword_1EAE16A30 ^ 0x88)) ^ byte_1930129C0[byte_1930111B0[(127 * (*v4 ^ dword_1EAE16A30 ^ 0x88))] ^ 0x27]) - 143);
  v6 = *v4 - &v12 + *v5;
  *v4 = (2140301951 * v6) ^ 0x3D3AC77DA7219688;
  *v5 = 2140301951 * (v6 ^ 0x3D3AC77DA7219688);
  HIDWORD(v13) = 407104343 * ((392479340 - (&v13 | 0x1764C26C) + (&v13 | 0xE89B3D93)) ^ 0xAA0A763B) + 1644606322;
  LOBYTE(v6) = 127 * (*v4 ^ 0x88 ^ *v5);
  v7 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 - dword_1EAE16990) ^ 0x88)) ^ byte_193012CC0[byte_1930115B0[(127 * ((dword_1EAE16A30 - dword_1EAE16990) ^ 0x88))] ^ 0x12]) - 132);
  (*(v7 + 8 * ((byte_193012CC4[(byte_1930115B4[v6 - 4] ^ 0x23) - 4] ^ v6) + 2468)))(&v13);
  v8 = *(v7 + 1744);
  v9 = 398614211 * (((&v13 | 0x2740C0D24AF117E3) - (&v13 & 0x2740C0D24AF117E3)) ^ 0x7425107B3C363A48);
  v17 = a1;
  v13 = v8 + v9;
  v14 = v9 ^ ((a2 ^ 0xFFFB9B61) + 1056960416 + ((2 * a2) & 0xFFF736C2));
  v15 = v9 ^ 0xD19B2ADA;
  v10 = 127 * (*v4 ^ 0x88 ^ *v5);
  (*(v7 + 8 * ((byte_193012BC4[(byte_1930114BC[v10 - 12] ^ 0x66) - 4] ^ v10) + 2681)))(&v13);
  return (v16 - 335305226);
}

uint64_t g9000sds9(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 - dword_1EAE16AC8) ^ 0x88)) ^ byte_193012AC0[byte_1930112B0[(127 * ((dword_1EAE16A30 - dword_1EAE16AC8) ^ 0x88))] ^ 0xF9]) - 176);
  v6 = *(v5 - 4);
  v7 = *(&off_1E73B2A80 + (byte_193012ACC[(byte_1930112BC[(127 * ((dword_1EAE16A30 + v6) ^ 0x88)) - 12] ^ 0xF9) - 12] ^ (127 * ((dword_1EAE16A30 + v6) ^ 0x88))) - 170);
  v8 = (*v7 ^ v6) - &v14;
  *(v5 - 4) = 2140301951 * v8 - 0x2DAA06A0DC720288;
  *v7 = 2140301951 * (v8 ^ 0x3D3AC77DA7219688);
  v9 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 + dword_1EAE16AC8) ^ 0x88)) ^ byte_193012CC0[byte_1930115B0[(127 * ((dword_1EAE16A30 + dword_1EAE16AC8) ^ 0x88))] ^ 0x4E]) - 18);
  v10 = *(v9 + 1440);
  v11 = 1704084847 * (((v15 | 0xCEC0B4E2C6878310) - (v15 | 0x313F4B1D39787CEFLL) + 0x313F4B1D39787CEFLL) ^ 0x836378271B3C6227);
  v19 = v11 ^ a3;
  v20 = a4;
  v15[1] = a2;
  v15[2] = a1;
  v17 = v11 - 535688854;
  v18 = v10 - v11;
  v15[0] = a5;
  v12 = 127 * ((*v7 + *(v5 - 4)) ^ 0x88);
  (*(v9 + 8 * ((byte_193012CC4[(byte_1930115B4[v12 - 4] ^ 0x4F) - 4] ^ v12) + 2657)))(v15);
  return v16;
}

uint64_t sdfspp103e9rf(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 - dword_1EAE16970) ^ 0x88)) ^ byte_193012BC0[byte_1930114B0[(127 * ((dword_1EAE16A30 - dword_1EAE16970) ^ 0x88))] ^ 0xBE]) - 48);
  v6 = *(&off_1E73B2A80 + (byte_193016030[byte_193015040[(127 * ((dword_1EAE16A30 + *v5) ^ 0x88))] ^ 0x2D] ^ (127 * ((dword_1EAE16A30 + *v5) ^ 0x88))) - 200);
  v7 = 2140301951 * (*v5 ^ &v12 ^ 0x3D3AC77DA7219688 ^ *v6);
  *v5 = v7;
  *v6 = v7;
  v8 = *(&off_1E73B2A80 + ((127 * (dword_1EAE16970 ^ 0x88 ^ dword_1EAE16A30)) ^ byte_1930129C0[byte_1930111B0[(127 * (dword_1EAE16970 ^ 0x88 ^ dword_1EAE16A30))] ^ 0x27]) - 104);
  v9 = *(v8 + 1096);
  v10 = 1704084847 * (v13 ^ 0x4DA3CCC5DDBBE137);
  v18 = a4;
  v13[1] = a2;
  v13[2] = a1;
  v17 = v10 ^ a3;
  v16 = v9 - v10;
  v15 = v10 - 535688854;
  v13[0] = a5;
  (*(v8 + 8 * (((127 * ((*v6 + *v5) ^ 0x88)) ^ byte_193016030[byte_193015040[(127 * ((*v6 + *v5) ^ 0x88))] ^ 0xC0]) + 2658)))(v13);
  return v14;
}

uint64_t fdf324tt5(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1E73B2A80 + ((127 * (dword_1EAE16A08 ^ 0x88 ^ dword_1EAE16A30)) ^ byte_193012CC0[byte_1930115B0[(127 * (dword_1EAE16A08 ^ 0x88 ^ dword_1EAE16A30))] ^ 0x4E]) - 10);
  v2 = 127 * (*v1 ^ dword_1EAE16A30 ^ 0x88);
  v3 = *(&off_1E73B2A80 + (byte_193012BC4[(byte_1930114BC[v2 - 12] ^ 0xBE) - 4] ^ v2) - 85);
  v4 = *v1 ^ &v10 ^ *v3;
  *v1 = (2140301951 * v4) ^ 0x3D3AC77DA7219688;
  *v3 = 2140301951 * (v4 ^ 0x3D3AC77DA7219688);
  v5 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 + dword_1EAE16A08) ^ 0x88)) ^ byte_193016030[byte_193015040[(127 * ((dword_1EAE16A30 + dword_1EAE16A08) ^ 0x88))] ^ 0x2D]) - 161);
  v6 = *(v5 + 1184);
  v7 = 663017543 * ((&v11 - 2 * (&v11 & 0xA6B16BB7FDEA1E87) - 0x594E94480215E179) ^ 0xBF3D0B74A0FA43A3);
  v11 = 1231722968 - v7;
  v12 = a1;
  v13 = v6 - v7;
  v8 = 127 * (*v1 ^ 0x88 ^ *v3);
  (*(v5 + 8 * ((byte_193012CC4[(byte_1930115B4[v8 - 4] ^ 0x23) - 4] ^ v8) + 2551)))(&v11);
  return v14;
}

void plsicnq9qs(int a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 + dword_1EAE16AE8) ^ 0x88)) ^ byte_193016030[byte_193015040[(127 * ((dword_1EAE16A30 + dword_1EAE16AE8) ^ 0x88))] ^ 0x2D]) - 219);
  v3 = 127 * (*v2 ^ dword_1EAE16A30 ^ 0x88);
  v4 = *(&off_1E73B2A80 + (byte_193016038[(byte_193015048[v3 - 8] ^ 0x6B) - 8] ^ v3) - 114);
  v5 = 2140301951 * ((*v4 + *v2) ^ &v8 ^ 0x3D3AC77DA7219688);
  *v2 = v5;
  *v4 = v5;
  v20 = 407104343 * (((v19 | 0x978A4CBE) - (v19 & 0x978A4CBE)) ^ 0xD51B0716) + 1644606322;
  v6 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 - dword_1EAE16AE8) ^ 0x88)) ^ byte_193012CC0[byte_1930115B0[(127 * ((dword_1EAE16A30 - dword_1EAE16AE8) ^ 0x88))] ^ 0x4F]) + 10);
  (*(v6 + 8 * ((byte_193012CC0[byte_1930115B0[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0x23] ^ (127 * ((*v4 + *v2) ^ 0x88))) + 2468)))(v19);
  v9 = 0x23EBEE970F30E96ELL;
  v11 = 0;
  v12 = 0xB2C8811167FCF552;
  v13 = 0xABCF1EB1C778095;
  v14 = 0x23EBEE970F30E96ELL;
  v10 = -1874706694;
  v15 = a1 - ((2 * a1) & 0x42087B1C) - 1593557618;
  v16 = 0;
  v17 = 0xB2C8811141DDBF59;
  v18 = 0xABCF1EB1C778095;
  v7 = *(v6 + 8 * ((43 * ((*(v6 + 8 * (((127 * (*v2 ^ 0x88 ^ *v4)) ^ byte_193012CC0[byte_1930115B0[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x12]) + 2474)))(128) != 0)) ^ 0xA55u));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_192D3748C(uint64_t a1)
{
  *a1 = 0x551AB9ED161FA3A6;
  *(a1 + 8) = 0x1717171717171717;
  *(a1 + 16) = 0x1717171717171717;
  *(a1 + 24) = 0x1717171717171717;
  *(a1 + 32) = 0x1717171717171717;
  *(a1 + 40) = 0x1717171717171717;
  *(a1 + 48) = 0x1717171717171717;
  *(a1 + 56) = 0x1717171717171717;
  *(a1 + 64) = 0x1717171717171717;
  qmemcpy((a1 + 72), "EhMFEhMFp/", 10);
  *(a1 + 84) = -1792230792;
  *(a1 + 104) = 114237931;
  *(a1 + 88) = 0x1717171717171717;
  *(a1 + 96) = 0x1717171717171717;
  *(a1 + 108) = 75;
  if (v1)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  return (*(v2 + 8 * ((1926 * v4) ^ 0x3F9)))();
}

uint64_t sub_192D37534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 + 16) = *a1;
  *(v36 + 88) = *(a1 + 72);
  *(v36 + 92) = *(a1 + 76);
  *(v36 + 96) = *(a1 + 80);
  *(v36 + 97) = *(a1 + 81);
  *(v36 + 120) = *(a1 + 104);
  *(v36 + 100) = *(a1 + 84);
  *(v36 + 124) = *(a1 + 108) & 1 | 0x28;
  return (*(v37 + 8 * v35))(a1, v36 + 24, -3917399019, -888267117, 0xFFFFFFFFLL, a6, 57, (v35 - 671), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_192D375E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v54 = v52 + a4;
  *(a2 + v54) = (127 * (v54 & 0xF)) ^ *(*(v48 + 8 * a8) + (v54 & 0xF)) ^ *((v54 & 0xF) + *(v48 + 8 * v50)) ^ *((v54 & 0xF) + *(v48 + 8 * v49) - 4 + 5) ^ (v46 + ((*(v45 + v52 + a4) ^ 0x44) - ((a5 ^ (2 * *(v45 + v52 + a4))) & 0x88)) * a7);
  return (*(a44 + 8 * (((((v53 + v44 - 681) ^ a3) + v52 == v47) * v51) ^ v44)))(a1);
}

uint64_t sub_192D3773C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  *(a43 + 119) = *(a1 + 103);
  *(a43 + 118) = *(a1 + 102);
  *(a43 + 117) = *(a1 + 101);
  *(a43 + 116) = *(a1 + 100);
  *(a43 + 115) = *(a1 + 99);
  *(a43 + 114) = *(a1 + 98);
  *(a43 + 113) = *(a1 + 97);
  *(a43 + 112) = *(a1 + 96);
  *(a43 + 111) = *(a1 + 95);
  *(a43 + 110) = *(a1 + 94);
  *(a43 + 109) = *(a1 + 93);
  *(a43 + 108) = *(a1 + 92);
  *(a43 + 107) = *(a1 + 91);
  *(a43 + 106) = *(a1 + 90);
  *(a43 + 105) = *(a1 + 89);
  *(a43 + 104) = *(a1 + 88);
  v46 = *(a1 + 4);
  *(a43 + 20) = v46;
  return (*(v45 + 8 * ((101 * (v46 == v44 + ((v43 + 404415438) & 0x27E51D37) + 1805380828)) ^ v43)))();
}

uint64_t sub_192D37970(void *a1)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *(v1 + 8) = a1 + v2;
  return (*(v4 + 8 * (((3 * (((v3 + 875) | 0x22C) ^ 0x60B) + (((v3 + 875) | 0x22C) ^ 0xFFFFF988)) * (v1 == 0)) ^ ((v3 + 875) | 0x22C))))();
}

uint64_t sub_192D37A54(void *a1)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *v1 = a1 + v3;
  return (*(v7 + 8 * ((((v4 + ((v2 - 1806) ^ (v5 + 9)) - 623) ^ ((v2 - 1806) | 0x22)) * (v6 == 192)) ^ v2)))();
}

uint64_t sub_192D37D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  *(v45 - 104) = v44 - 36 - 2138855791 * ((-1190335241 - ((v45 - 112) | 0xB90CECF7) + ((v45 - 112) | 0x46F31308)) ^ 0x49452B89) + 2111;
  v47 = (*(v46 + 8 * (v44 + 2556)))(v45 - 112, a2, a3, a4, a5, a6, a7, a8);
  return (*(a44 + 8 * ((v44 - 36) | 0x37E)))(v47);
}

uint64_t sub_192D37EA4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v53 = v49 + 54;
  v54 = (v49 + 54) ^ (v50 - 185);
  v55 = (v49 - 101) | 0x329;
  a45 = *(v52 + 8 * (v49 + 54));
  a47 = a1;
  a49 = a27;
  *(v51 - 112) = &a45;
  *(v51 - 104) = v49 + 54 - 385730383 * (((v51 - 112) & 0x380A9227 | ~((v51 - 112) | 0x380A9227)) ^ 0xBE640609) - 1310139384;
  v56 = (*(v52 + 8 * (v49 + 2526)))(v51 - 112);
  return (*(a37 + 8 * ((1377 * (*(v51 - 100) == v55 - 346023524)) ^ ((v54 ^ (v50 - 620)) + v53))))(v56);
}

uint64_t sub_192D3819C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  LODWORD(a26) = v34;
  HIDWORD(a15) = v38;
  HIDWORD(v42) = a1 - 1096719702;
  LODWORD(v42) = v39 - 1995336735;
  return (*(v40 + 8 * v35))(a1, 11975039, 0x4E57CE6D5C1D29D7, 0x4D7C3013B6750271, 0x4B876952F452CECFLL, 0x3283CFEC498AFD8ELL, a7, 0x1380784254EB2752, a9, a10, a11, a12, a2 + (((v35 - 1325) | 0x181u) ^ 0x1D0C208B337C3B9ALL), a14, a15, a16, a17, v42, a19, a20, v36, a22, v37, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_192D38EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unint64_t a43)
{
  v47 = v44 + v45 + 1278;
  v48 = (v43 ^ 0x80B6B977) + a31;
  v53 = v48 + 10;
  v48 -= 0x3B0F042835DE8A4ALL;
  v49 = v48 < 0xA0242A49;
  v50 = v48 > a43;
  if (a43 < 0xA0242A49 != v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = v50;
  }

  return (*(v46 + 8 * (v47 ^ (112 * !v51))))(a1, a2, a3, a4, a5, a6, 3917399018, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v53);
}

uint64_t sub_192D39508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  *(v43 + v41) = a16;
  *(v43 - 0xF2C67B766E067CBLL) = a16;
  return (*(v44 + 8 * v42))(a1, a2, a41, a4, a5, a6, a7, a8);
}

uint64_t sub_192D3997C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  (*(v47 + 8 * (v45 ^ 0xE5E)))(v46 - 0xF2C67B766E067CBLL, a2, a3, a4, a5, a6, a7, a8);
  *v44 = 0xF2C67B766E067CBLL;
  return (*(a44 + 8 * v45))(a43);
}

uint64_t sub_192D39AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v47 = (*(v46 + 8 * (v45 + 2107066806)))(a1, a2, a3, a4, a5, a6, a7, a8);
  *(v44 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a44 + 8 * (((((v45 + 2107064351) | 0x454) ^ 0x7D974672) + v45) ^ (3153 * (v45 < 0x40B41D18)))))(v47);
}

uint64_t sub_192D3A610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v55 = v37;
  LODWORD(a13) = v36;
  LODWORD(a33) = v38;
  v54 = v34;
  v56 = v39;
  v41 = v35 + 1215;
  v42 = v35 + 359;
  v43 = v35 + 498;
  v57 = (*(v40 + 8 * ((v35 + 1215) ^ 0xC81)))(32, a2, a3, a4, a5, a6, a7, a8);
  return (*(v40 + 8 * (((((v43 ^ (v57 == 0)) & 1) == 0) * (v42 ^ 0x2A1)) ^ v41)))(v57, v44, v45, v46, v47, v48, v49, v50, a9, a4, a11, a1, a13, a14, a15, v57 + 0x785FEF64C8799D66, a17, a18, a19, a20, a21, a22, a23, v54, a25, a26, v55, a28, a29, a30, a31, v56, a33, a34);
}

uint64_t sub_192D3A6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  *a37 = 0x785FEF64C8799D66;
  *(a37 + 8) = 0x785FEF64C8799D66;
  *(a37 + 16) = a39 + 119306422 + ((v39 - 683) | 0x220);
  v42 = (*(v41 + 8 * (v39 ^ 0x9B4)))((v40 + a39 + 10), a2, a3, a4, a5, a6, a7, a8);
  *(a37 + 24) = v42;
  return (*(v41 + 8 * ((114 * (v42 == 0)) ^ v39)))();
}

uint64_t sub_192D3A774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v46 = (*(v45 + 8 * (v44 ^ 0x841)))(a1, a2, a3, a4, a5, a6, a7, a8);
  *(a16 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a44 + 8 * v44))(v46);
}

uint64_t sub_192D3AB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40, int a41)
{
  HIDWORD(a9) = 2 * a39;
  LODWORD(a21) = a39 - ((2 * a39 - 955187490) & 0x9F9621CC) + 861114453;
  LODWORD(v45) = a26 ^ 0xEECF2D68;
  HIDWORD(v45) = (-25953 * a41 - ((13630 * a41 + 23278) & 0x51CA) + 22108) ^ 0xE5;
  return (*(v43 + 8 * (v41 + 975)))(0x74F472E448216F49, 0x5D587E53351E1BD7, a13 - ((((v41 - 667 - v42 + 517) ^ 0x943C06BE) + 2 * a13) & 0x9F9621CC) + 241988496, 0x7C4FE0556218D93DLL, 0xFE5951FB672C4BC9, a37, 0xE13500AF98B0C0DCLL, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v45, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_192D3AD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, unsigned int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, char a28)
{
  v37 = *(a6 + 24);
  v38 = (__ROR8__((v37 + 4) & 0xFFFFFFFFFFFFFFF8, 8) + ((v30 - 771) ^ 0x705)) & 0xF9FFFFFFFFFFFFFFLL;
  v39 = v38 ^ 0x1E4559FE42F2471ELL;
  v38 ^= 0x8A5B269C0EA5AB6FLL;
  v40 = (__ROR8__(v39, 8) + v38) ^ v32;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v29;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v36;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v34;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v28;
  v49 = __ROR8__(v48, 8);
  v50 = v48 ^ __ROR8__(v47, 61);
  v51 = (((2 * (v49 + v50)) & 0xAAAA746556851DE8) - (v49 + v50) - 0x55553A32AB428EF5) ^ 0x62A31B5EE627EDADLL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  *(v37 + 4) = (((((2 * (v53 + v52)) | 0xC5585AB08F272530) - (v53 + v52) - 0x62AC2D5847939298) ^ 0x867CC8E265EDDE38) >> (8 * ((v37 + 4) & 7))) ^ a28 ^ 0xA8;
  v54 = __ROR8__((v37 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v55 = (v54 + v30) ^ 0x885B269C0EA5AB6FLL;
  v56 = (__ROR8__((v54 + v30) ^ 0x1C4559FE42F2471ELL, 8) + v55) ^ v32;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ v29;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (v60 + v59 - ((2 * (v60 + v59)) & 0xAADD75A8558035C0) - 0x2A91452BD53FE520) ^ 0x2872CFE705BF1667;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ v34;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ v28;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (0x964AD0183F74BFF6 - ((v67 + v66) | 0x964AD0183F74BFF6) + ((v67 + v66) | 0x69B52FE7C08B4009)) ^ 0xA1BCF1747211DCAFLL;
  *(v37 + 5) = a19 ^ (((__ROR8__(v68, 8) + (v68 ^ __ROR8__(v66, 61))) ^ v31) >> (8 * ((v37 + 5) & 7)));
  return (*(v33 + 8 * (v35 + 377570200)))(a1, a2, a22, a4, a5);
}

uint64_t sub_192D3AFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = *(a6 + 24) + v15 - 0x1E06D87D68ADC517;
  v21 = __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = ((v21 + v10) | 0x7E054FB39FC80770) - ((v21 + v10) | v19) + v19;
  v23 = __ROR8__(v22 ^ 0x6240164DDD3A406ELL, 8);
  v22 ^= 0xF65E692F916DAC1FLL;
  v24 = (v23 + v22) ^ a7;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v9;
  v27 = *(v16 + 8 * v14);
  v28 = v26 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v26, 8) + v28) ^ v18;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v17;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v8;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v13;
  *v20 = (((__ROR8__(v35, 8) + (v35 ^ __ROR8__(v34, 61))) ^ v11) >> (8 * (v20 & 7u))) ^ HIBYTE(a3) ^ 0x4F;
  v36 = __ROR8__((v20 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v37 = ((0x4D7C3013B6750271 - v36) & 0x7C0A1F12C3784FEDLL) + v36 + v10 - ((v36 + v10) & 0x7A0A1F12C3784FEDLL);
  v38 = v37 ^ 0x624F46EC818A08F3;
  v37 ^= 0xF651398ECDDDE482;
  v39 = __ROR8__(v38, 8);
  v40 = (a1 - ((v39 + v37) | a1) + ((v39 + v37) | 0x8B0B8D1BB7DE90B6)) ^ 0x6A3E8DB42F6E506ALL;
  v41 = v40 ^ __ROR8__(v37, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (a2 - ((v42 + v41) | a2) + ((v42 + v41) | 0xA2A781ACCAE1E428)) ^ 0xA637A4AEF958011ALL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (a5 - ((v45 + v44) | a5) + ((v45 + v44) | 0x1A6AE0498D3B436)) ^ 0xFCBADB37B7ACB8B1;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (v48 + v47 - ((2 * (v48 + v47)) & 0x21AE5081A9A9FA1ELL) - 0x6F28D7BF2B2B02F1) ^ 0x6CC29349FD1D259FLL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = __ROR8__((v51 + v50 - ((2 * (v51 + v50)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL, 8);
  v53 = (v51 + v50 - ((2 * (v51 + v50)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL ^ __ROR8__(v50, 61);
  *(v20 + 1) = (((__ROR8__((v52 + v53) ^ v13, 8) + ((v52 + v53) ^ v13 ^ __ROR8__(v53, 61))) ^ v11) >> (8 * ((v20 + 1) & 7))) ^ BYTE2(a3) ^ 0xCB;
  v54 = __ROR8__((v20 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v55 = v54 - ((2 * v54 + 0x65079FD89315FB1CLL) & 0x706B8D24AA79CEEALL) + 0x6AB9967E9EC7E503;
  v56 = __ROR8__(v55 ^ 0x24709F6C17CEA06BLL, 8);
  v55 ^= 0xB06EE00E5B994C1ALL;
  v57 = (((2 * (v56 + v55)) | 0x84A35F8B8F02A07ELL) - (v56 + v55) - 0x4251AFC5C781503FLL) ^ 0xA364AF6A5F3190E3;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (((2 * (v59 + v58)) | 0x5AE37AFB8B700D10) - (v59 + v58) + 0x528E42823A47F978) ^ 0xA9E1987FF601E3BALL;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = __ROR8__(v60, 8);
  v63 = __ROR8__((((2 * (v62 + v61)) | 0xA0645171747853D8) - (v62 + v61) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL, 8);
  v64 = (((2 * (v62 + v61)) | 0xA0645171747853D8) - (v62 + v61) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL ^ __ROR8__(v61, 61);
  v65 = (((2 * (v63 + v64)) & 0xC0FA970E03639268) - (v63 + v64) - 0x607D4B8701B1C935) ^ 0x63970F71D787EE5BLL;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (((2 * (v67 + v66)) & 0x3F1A3AC322107E48) - (v67 + v66) - 0x1F8D1D6191083F25) ^ 0xABF58BCC9AA50E14;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (((2 * (v70 + v69)) | 0xA1336988A728D0CALL) - (v70 + v69) - 0x5099B4C453946865) ^ 0x98906A57E10EF4C3;
  v72 = __ROR8__(v71, 8);
  v73 = __ROR8__(v69, 61);
  *(v20 + 2) = (((a4 - ((v72 + (v71 ^ v73)) | a4) + ((v72 + (v71 ^ v73)) | 0x83B01FAA9DE726C2)) ^ 0x6760FA10BF996A62) >> (8 * ((v20 + 2) & 7))) ^ BYTE1(a3) ^ 0x10;
  v74 = __ROR8__((v20 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = v74 - ((2 * v74 + 0x65079FD89315FB1CLL) & 0xA7469D16E9FCA87ALL) + 0x6271E77BE8951CBLL;
  v76 = v75 ^ 0xCFE61775360C1323;
  v75 ^= 0x5BF868177A5BFF52uLL;
  v77 = __ROR8__(v76, 8);
  v78 = (((2 * (v77 + v75)) & 0x3185DFB098D2C9E8) - (v77 + v75) - 0x18C2EFD84C6964F5) ^ 0x60810882B265BD7;
  v79 = v78 ^ __ROR8__(v75, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ v9;
  v81 = __ROR8__(v80, 8);
  v82 = v80 ^ __ROR8__(v79, 61);
  v83 = (a8 - ((v81 + v82) | a8) + ((v81 + v82) | 0xBD3AA96CA92701DDLL)) ^ 0x4026DC5F86580D5ALL;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (((2 * (v85 + v84)) & 0xDC1EDE556F26AEE8) - (v85 + v84) - 0x6E0F6F2AB7935775) ^ 0x6DE52BDC61A5701BLL;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ v8;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ v13;
  *(v20 + 3) = a3 ^ v12 ^ (((__ROR8__(v90, 8) + (v90 ^ __ROR8__(v89, 61))) ^ v11) >> (8 * ((v20 + 3) & 7)));
  return v27();
}

uint64_t sub_192D3B9A4@<X0>(uint64_t a1@<X6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v38 = (a2 - 8393862) & 0xE9FED7FE;
  v39 = *(a31 + 24);
  v40 = a4 - (((v38 ^ 0x382822D108E0EECELL) + 2 * a4) & 0x2C65C7A2CEED3AA6) - 0xDB90AC5A7BA4C1BLL;
  v41 = __ROR8__((v39 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = ((v41 + v32) | 0x8EF30571B3E03BF9) - ((v41 + v32) | 0x710CFA8E4C1FC406) + 0x710CFA8E4C1FC406;
  v43 = v42 ^ 0x92B65C8FF1127CE7;
  v42 ^= 0x6A823EDBD459096uLL;
  v44 = (__ROR8__(v43, 8) + v42) ^ a1;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v31;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((v48 + v47) | 0x6257A18AC6AFEA71) - ((v48 + v47) | 0x9DA85E753950158ELL) - 0x6257A18AC6AFEA72) ^ 0x9F4BD4B9E9D0E6F6;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xFC15BB0929C9D890;
  v52 = __ROR8__(v51, 8);
  v53 = v51 ^ __ROR8__(v50, 61);
  v54 = (((2 * (v52 + v53)) | 0x73433184586818C6) - (v52 + v53) - 0x39A198C22C340C63) ^ 0x7226F190D866C2ACLL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (((2 * (v56 + v55)) & 0x2E6D9124F850C1CLL) - (v56 + v55) - 0x1736C8927C2860FLL) ^ 0x36854DE56AA7E557;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  v39[10] = (((((v59 + v58) ^ 0x925E7C0EFFCC6FF1 | 0xFC3CC5473DDD44E5) - ((v59 + v58) ^ 0x925E7C0EFFCC6FF1 | 0x3C33AB8C222BB1ALL) + 0x3C33AB8C222BB1ALL) ^ 0x8AB25CF3E06F67B4) >> (8 * ((v39 + 10) & 7u))) ^ HIBYTE(v40) ^ 0x16;
  v60 = __ROR8__((v39 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v61 = ((v60 + v32) & 0x5914460E7C6C43D9 ^ 0x4100000418440108) + ((v60 + v32) & 0xA0EBB9F18393BC26 ^ 0x4A3312100820427) - 1;
  v62 = v61 ^ 0x5BE668DB5A344230;
  v61 ^= 0xCFF817B91663AE41;
  v63 = (__ROR8__(v62, 8) + v61) ^ a1;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ v31;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ v37;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (v69 + v68 - ((2 * (v69 + v68)) & 0x3B57AD3684D86B7ALL) - 0x62542964BD93CA43) ^ 0x61BE6D926BA5ED2DLL;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (v72 + v71 - ((2 * (v72 + v71)) & 0x6EEDA84EBE2C2B7ELL) - 0x48892BD8A0E9EA41) ^ 0xFCF1BD75AB44DB70;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((2 * (v75 + v74)) | 0xFED65BFA7285710) - (v75 + v74) - 0x7F6B2DFD3942B88) ^ 0xCFFF6C4C610EB72ELL;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = __ROR8__(v76, 8);
  v39[11] = (((((v78 + v77) | 0x21983AC56B0BB129) - ((v78 + v77) | 0xDE67C53A94F44ED6) - 0x21983AC56B0BB12ALL) ^ 0xC548DF7F4975FD89) >> (8 * ((v39 + 11) & 7u))) ^ BYTE6(v40) ^ 0x32;
  v79 = __ROR8__((v39 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v80 = -2 - (((0xD7C3013B6750271 - v79) | 0xEFC9086FACD320D4) + ((v79 + v32) | 0x1036F790532CDF2BLL));
  v81 = v80 ^ 0xF38C5191EE2167CALL;
  v80 ^= 0x67922EF3A2768BBBuLL;
  v82 = (__ROR8__(v81, 8) + v80) ^ a1;
  v83 = __ROR8__(v82, 8);
  v84 = v82 ^ __ROR8__(v80, 61);
  v85 = (((2 * (v83 + v84)) & 0xA44BB63E2DDF8B52) - (v83 + v84) - 0x5225DB1F16EFC5AALL) ^ 0xA94A01E2DAA9DF64;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ v37;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0xFC15BB0929C9D890;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((v91 + v90) | 0xD2E383F95083B686) - ((v91 + v90) | 0x2D1C7C06AF7C4979) + 0x2D1C7C06AF7C4979) ^ 0x9964EAABA4D17849;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ v34;
  v39[12] = (((__ROR8__(v94, 8) + (v94 ^ __ROR8__(v93, 61))) ^ v33) >> (8 * ((v39 + 12) & 7u))) ^ BYTE5(v40) ^ 0xE3;
  v95 = __ROR8__((v39 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v96 = ((2 * (v95 + v32)) | 0xA4234159906F106ALL) - (v95 + v32) + 0x2DEE5F5337C877CBLL;
  v97 = v96 ^ 0xCE54F9528AC5CF2BLL;
  v96 ^= 0x5A4A8630C692235AuLL;
  v98 = __ROR8__(v97, 8);
  v99 = (((v98 + v96) | 0xD738201BC43E983BLL) - ((v98 + v96) | 0x28C7DFE43BC167C4) + 0x28C7DFE43BC167C4) ^ 0x360D20B45C8E58E7;
  v100 = v99 ^ __ROR8__(v96, 61);
  v101 = __ROR8__(v99, 8);
  v102 = (((v101 + v100) ^ 0x70783716B7118F26) - ((2 * ((v101 + v100) ^ 0x70783716B7118F26)) & 0xBAA694FE21B0C1B2) + 0x5D534A7F10D860D9) ^ 0x29BB586B94700ACDLL;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ v37;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (v106 + v105 - ((2 * (v106 + v105)) & 0x17A08F8C8FAF1288) - 0x742FB839B82876BCLL) ^ 0x77C5FCCF6E1E51D4;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ v35;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ v34;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = __ROR8__(v111, 8);
  v39[13] = (((v113 + v112 - ((2 * (v113 + v112)) & 0xB495371DE105E9CELL) - 0x25B564710F7D0B19) ^ 0x3E9A7E34D2FCB847) >> (8 * ((v39 + 13) & 7u))) ^ BYTE4(v40) ^ 0xD1;
  v114 = __ROR8__((v39 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v115 = (0xCD7C3013B6750271 - v114) & 0xF050E761A6289A68 | (v114 + 0x283CFEC498AFD8ELL) & 0x9AF189E59D76597;
  v116 = v115 ^ 0xEE15BE9FE4DADD76;
  v115 ^= 0x7A0BC1FDA88D3107uLL;
  v117 = (__ROR8__(v116, 8) + v115) ^ a1;
  v118 = v117 ^ __ROR8__(v115, 61);
  v119 = __ROR8__(v117, 8);
  v120 = (((v119 + v118) | 0x349C4C6A3E574525) - ((v119 + v118) | 0xCB63B395C1A8BADALL) - 0x349C4C6A3E574526) ^ 0x300C69680DEEA017;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ v37;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ 0xFC15BB0929C9D890;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ v35;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = __ROR8__(v126, 8);
  v129 = (((2 * (v128 + v127)) | 0x749128A0D39CA49CLL) - (v128 + v127) + 0x45B76BAF9631ADB2) ^ 0x72414AC3DB54CEE8;
  v39[14] = (((__ROR8__(v129, 8) + (v129 ^ __ROR8__(v127, 61))) ^ v33) >> (8 * ((v39 + 14) & 7u))) ^ ((a4 - (((v38 ^ 0x8E0EECE) + 2 * a4) & 0xCEED3AA6) + 1480963045) >> 24) ^ 0x67;
  v130 = __ROR8__((v39 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v131 = (0x57C3013B6750271 - v130) & 0x5D98955B3706B30 | (v130 + v32) & 0xFA2676AA4C8F94CFLL;
  v132 = v131 ^ 0x199CD0ABF1822C2ELL;
  v131 ^= 0x8D82AFC9BDD5C05FLL;
  v133 = (__ROR8__(v132, 8) + v131) ^ a1;
  v134 = v133 ^ __ROR8__(v131, 61);
  v135 = __ROR8__(v133, 8);
  v136 = (((2 * (v135 + v134)) | 0x86D73428622BDA3ALL) - (v135 + v134) - 0x436B9A143115ED1DLL) ^ 0x47FBBF1602AC082FLL;
  v137 = v136 ^ __ROR8__(v134, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ v37;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = __ROR8__(v138, 8);
  v141 = (((2 * (v140 + v139)) & 0x407F7AAF3D2F06C8) - (v140 + v139) - 0x203FBD579E978365) ^ 0x23D5F9A148A1A40BLL;
  v142 = v141 ^ __ROR8__(v139, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ v35;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ v34;
  v39[15] = (((__ROR8__(v145, 8) + (v145 ^ __ROR8__(v144, 61))) ^ v33) >> (8 * ((v39 + 15) & 7u))) ^ BYTE2(v40) ^ 0x76;
  v146 = __ROR8__((v39 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v147 = ((2 * v146 + 0x65079FD89315FB1CLL) & 0xE66464AD44856B92) - v146 + 0x5649FDBD14324CA8;
  v148 = v147 ^ 0x948894571F4F0D28;
  v147 ^= 0x96EB355318E159uLL;
  v149 = __ROR8__(v148, 8);
  v150 = (((2 * (v149 + v147)) & 0xA1738BF9A2E70742) - (v149 + v147) + 0x2F463A032E8C7C5ELL) ^ 0xCE733AACB63CBC82;
  v151 = v150 ^ __ROR8__(v147, 61);
  v152 = (__ROR8__(v150, 8) + v151) ^ v31;
  v153 = v152 ^ __ROR8__(v151, 61);
  v154 = __ROR8__(v152, 8);
  v155 = (((2 * (v154 + v153)) & 0x2D730DB5B3BDACF8) - (v154 + v153) - 0x16B986DAD9DED67DLL) ^ 0x145A0C16095E2504;
  v156 = v155 ^ __ROR8__(v153, 61);
  v157 = __ROR8__(v155, 8);
  v158 = (((2 * (v157 + v156)) | 0x4D17F792C6A75DEALL) - (v157 + v156) - 0x268BFBC96353AEF5) ^ 0xDA9E40C04A9A7665;
  v159 = v158 ^ __ROR8__(v156, 61);
  v160 = __ROR8__(v158, 8);
  v161 = (((2 * (v160 + v159)) & 0x305CE5312BE34172) - (v160 + v159) + 0x67D18D676A0E5F46) ^ 0x2C56E4359E5C9189;
  v162 = __ROR8__(v159, 61);
  v163 = (__ROR8__(v161, 8) + (v161 ^ v162)) ^ v34;
  v164 = v163 ^ __ROR8__(v161 ^ v162, 61);
  v165 = __ROR8__(v163, 8);
  v39[16] = (((v165 + v164 - ((2 * (v165 + v164)) & 0x20DC9317F93159D8) - 0x6F91B67403675314) ^ 0x74BEAC31DEE6E04CuLL) >> (8 * ((v39 + 16) & 7u))) ^ BYTE1(v40) ^ 0x9D;
  v166 = __ROR8__((v39 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v167 = ((2 * ((v166 + v32) ^ 0x2CEA70879027C9CDLL)) & 0x2D388CE61C45146ALL) - ((v166 + v32) ^ 0x2CEA70879027C9CDLL) - 0x169C46730E228A36;
  v168 = v167 ^ 0xD9CC90F52308FB19;
  v167 ^= 0x4DD2EF976F5F1768uLL;
  v169 = __ROR8__(v168, 8);
  v170 = (((2 * (v169 + v167)) | 0xC93FF3953A26D81ALL) - (v169 + v167) + 0x1B60063562EC93F3) ^ 0x5AAF96505A3ACD1;
  v171 = __ROR8__(v167, 61);
  v172 = (__ROR8__(v170, 8) + (v170 ^ v171)) ^ v31;
  v173 = v172 ^ __ROR8__(v170 ^ v171, 61);
  v174 = (__ROR8__(v172, 8) + v173) ^ v37;
  v175 = v174 ^ __ROR8__(v173, 61);
  v176 = __ROR8__(v174, 8);
  v177 = (((2 * (v176 + v175)) | 0x9AD9A558F1F83E32) - (v176 + v175) - 0x4D6CD2AC78FC1F19) ^ 0xB17969A55135C789;
  v178 = v177 ^ __ROR8__(v175, 61);
  v179 = (__ROR8__(v177, 8) + v178) ^ v35;
  v180 = v179 ^ __ROR8__(v178, 61);
  v181 = __ROR8__(v179, 8);
  v182 = (v181 + v180 - ((2 * (v181 + v180)) & 0x8BC8E87C0324D542) + 0x45E4743E01926AA1) ^ 0x8DEDAAADB308F607;
  v39[17] = (((__ROR8__(v182, 8) + (v182 ^ __ROR8__(v180, 61))) ^ v33) >> (8 * ((v39 + 17) & 7u))) ^ (a4 - ((((a2 + 122) & 0xFE ^ 0xCE) + 2 * a4) & 0xA6) - 27) ^ 0x53;
  return (*(v36 + 8 * a2))();
}

uint64_t sub_192D3C8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  v42 = a40 - ((((v40 - 1994475049) ^ 0x606001A0) + 1401072670) & (a10 + 118554334)) - 2113325197;
  v43 = (((v40 - 1994475049) | 0x606001A0) ^ 0x2463C43B ^ v42) - 1074792449 + ((2 * v42) & 0xA73B7FAA ^ 0x25017008) == 328054740;
  return (*(v41 + 8 * ((v43 | (4 * v43)) ^ v40)))(377568950, a2);
}

uint64_t sub_192D3CA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = (v11 - 1);
  v25 = v24 == v21;
  v26 = (v24 | ((v24 < v21) << 32)) + a1;
  v27 = v26 + v12 + 10;
  v28 = __ROR8__(v27 & 0xFFFFFFFFFFFFFFF8, 8) + v10;
  v29 = v22;
  v30 = __ROR8__(v28 ^ 0x1C4559FE42F2471ELL, 8);
  v28 ^= 0x885B269C0EA5AB6FLL;
  v31 = (((v30 + v28) & a2 ^ a4) + ((v30 + v28) & a5 ^ a6) - 1) ^ a7;
  v32 = v31 ^ __ROR8__(v28, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v9;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v29;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xFC15BB0929C9D890;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v8;
  v40 = __ROR8__(v39, 8);
  v41 = v39 ^ __ROR8__(v38, 61);
  v42 = (((v40 + v41) & v13 ^ v16) + ((v40 + v41) ^ a8) - (((v40 + v41) ^ a8) & v13)) ^ v17;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  *v27 = ((((v18 & (2 * (v44 + v43))) - (v44 + v43) + v19) ^ v23) >> (8 * (v27 & 7u))) ^ *(v15 + v26);
  v45 = !v25;
  return (*(v20 + 8 * ((62 * v45) ^ (v14 + 831))))();
}

void mgEO6xAoal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || a4 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D3CD00()
{
  *(v1 - 108) = 407104343 * ((((v1 - 112) | 0x474D29A8) - (v1 - 112) + ((v1 - 112) & 0xB8B2D650)) ^ 0x5DC6200) + 1644606322;
  v4 = v0;
  v2 = (*(v0 + 21240))(v1 - 112);
  return (*(v4 + 5552))(v2);
}

uint64_t sub_192D3CF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, _DWORD *a16)
{
  *a15 = 1;
  *a16 = 13;
  return (*(v17 + 8 * v16))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_192D3D054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  (*(v60 + 8 * (v61 ^ 0x91E)))(v62 - 152, 0, 24, a4, a5, a6, a7, a8);
  *(v62 - 144) = 1168152686;
  *(v62 - 128) = 0x1269E57FCLL;
  *(v62 - 120) = 0x200000004;
  *(v62 - 220) = 0;
  v63 = (*(a60 + 8 * (v61 ^ 0x91B)))(128);
  return (*(a60 + 8 * (((v63 == 0) * (((v61 + 1131) | 0x170) ^ 0x92E)) ^ v61)))(v63, v64, v65, v66);
}

uint64_t sub_192D3D190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0x551AB9ED161FA3A6;
  *(a1 + 8) = 0x1717171717171717;
  *(a1 + 16) = 0x1717171717171717;
  *(a1 + 24) = 0x1717171717171717;
  *(a1 + 32) = 0x1717171717171717;
  *(a1 + 40) = 0x1717171717171717;
  *(a1 + 48) = 0x1717171717171717;
  *(a1 + 56) = 0x1717171717171717;
  *(a1 + 64) = 0x1717171717171717;
  qmemcpy((a1 + 72), "EhMFEhMFp/", 10);
  *(a1 + 84) = -1792230792;
  *(a1 + 104) = 114237931;
  *(a1 + 88) = 0x1717171717171717;
  *(a1 + 96) = 0x1717171717171717;
  *(a1 + 108) = 75;
  if (v6)
  {
    v7 = a1 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  return (*(v4 + 8 * (((126 * (v5 ^ 0x22A) + 1242) * v8) ^ v5)))(a1, a2, a3, a4);
}

uint64_t sub_192D3D23C(uint64_t a1)
{
  *(v3 + 16) = *a1;
  *(v3 + 88) = *(a1 + 72);
  *(v3 + 92) = *(a1 + 76);
  *(v3 + 96) = *(a1 + 80);
  *(v3 + 97) = *(a1 + 81);
  *(v3 + 120) = *(a1 + 104);
  *(v3 + 100) = *(a1 + 84);
  *(v3 + 124) = *(a1 + 108) & 1 | 0x28;
  return (*(v1 + 8 * (v2 ^ 0x456)))();
}

uint64_t sub_192D3D2D8(uint64_t a1, char a2, char a3, uint64_t a4, char a5, int a6, uint64_t a7, int a8)
{
  v17 = (v9 - 1) & 0xF;
  *(v11 + v9) = (127 * v17) ^ *(*(a7 + 8 * a6) + v17) ^ *(v17 + *(a7 + 8 * a8) - 4 + 5) ^ *(v17 + *(a7 + 8 * v13)) ^ (v8 + ((*(v12 + v9) ^ 0x44) - (v10 ^ (v16 + 25) ^ a3 ^ a2 & (2 * *(v12 + v9)))) * a5);
  return (*(v15 + 8 * (((v9 == -31) * v14) ^ v10)))(a1);
}

uint64_t sub_192D3D414(uint64_t a1)
{
  *(v4 + 119) = *(a1 + 103);
  *(v4 + 118) = *(a1 + 102);
  *(v4 + 117) = *(a1 + 101);
  *(v4 + 116) = *(a1 + 100);
  *(v4 + 115) = *(a1 + 99);
  *(v4 + 114) = *(a1 + 98);
  *(v4 + 113) = *(a1 + 97);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 111) = *(a1 + 95);
  *(v4 + 110) = *(a1 + 94);
  *(v4 + 109) = *(a1 + 93);
  *(v4 + 108) = *(a1 + 92);
  *(v4 + 107) = *(a1 + 91);
  *(v4 + 106) = *(a1 + 90);
  *(v4 + 105) = *(a1 + 89);
  *(v4 + 104) = *(a1 + 88);
  v5 = *(a1 + 4);
  *(v4 + 20) = v5;
  return (*(v3 + 8 * ((2051 * (v5 == ((v1 - v2 + 15) ^ 0x8587C35E))) ^ v1)))();
}

uint64_t sub_192D3D5FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *(v6 + 8) = a1 + v7;
  return (*(v4 + 8 * (((v6 != 0) * (((v5 - 400225947) & 0x17DAF17E) - 301)) ^ v5)))(a1, a2, a3, a4);
}

uint64_t sub_192D3D664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v62 = (v61 + 2135785633) & 0x80B27FFE;
  v63 = (*(v60 + 8 * (v62 ^ 0xDB4)))(16, a2, a3, a4, a5, a6, a7, a8);
  return (*(a60 + 8 * ((67 * (((v63 == 0) ^ (((v61 - 95) & 0xFE) - 28 + ((v61 - 95) & 0xFE) - 114 + 1)) & 1)) ^ v62)))(v63, v64, v65, v66);
}

uint64_t sub_192D3D6F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *v13 = a1 + v14;
  return (*(v11 + 8 * (v12 | 2)))(a1, 2818255062, 1476712926, 696634820, 1476712926, a6, a7, 1179498539, a9, a10, a11, v15 - 152);
}

uint64_t sub_192D3D774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  HIDWORD(a39) = v48;
  HIDWORD(a47) = 1476712926;
  return (*(v49 + 8 * (((v52 + (v47 ^ 0x7EC) + ((v47 - 543197091) & 0xF0FDFBBF) + 2984) * (v51 == -346022651)) ^ v47)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, v50, a41, a42, a43, a44, a6, a46, a47);
}

uint64_t sub_192D3D868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  HIDWORD(a39) = v48;
  HIDWORD(a47) = -1772082043;
  return (*(v49 + 8 * ((((5 * (v47 ^ 0x23A)) ^ 0xAF9) * (v51 == -346022651)) ^ v47)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, v50, a41, a42, a43, a44, a6, a46, a47);
}

uint64_t sub_192D3D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  *(v62 - 104) = v61 - 2138855791 * ((~((v62 - 112) | 0x87D4437D) + ((v62 - 112) & 0x87D4437D)) ^ 0x779D8403) + 1165;
  v63 = (*(v60 + 8 * (v61 + 1646)))(v62 - 112, a2, a3, a4, a5, a6, a7, a8);
  return (*(a60 + 8 * v61))(v63);
}

uint64_t sub_192D3DA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  HIDWORD(a48) = a5;
  HIDWORD(a52) = 1156529542;
  return (*(v52 + 8 * ((423 * (v54 != ((27 * (a9 ^ 0xF5)) ^ 0xEB601C7F))) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v53, a42, a43, a44, a45, a6, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_192D3DBC4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  *(v55 - 216) = *(v53 + 8 * v54);
  *(v55 - 200) = a1;
  *(v55 - 184) = a37;
  *(v55 - 104) = v54 - 385730383 * ((~((v55 - 112) | 0x1F2CDD75) + ((v55 - 112) & 0x1F2CDD75)) ^ 0x9942495B) - 1310139384;
  *(v55 - 112) = v55 - 216;
  v56 = (*(v53 + 8 * (v54 ^ 0xA58)))(v55 - 112);
  return (*(a53 + 8 * (v54 ^ 0x1A1 ^ (206 * (*(v55 - 100) == (v54 ^ 0x3BFD676D ^ ((v54 - 1072607305) | 0x108C2A21)))))))(v56);
}

uint64_t sub_192D3DCF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  LODWORD(a57) = v66 + 2;
  HIDWORD(a52) = a9;
  HIDWORD(a43) = v65;
  return (*(v63 + 8 * v64))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a20, a57, a58, a59, a60, a61, a62, v62);
}

uint64_t sub_192D3DEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, _DWORD *a16)
{
  *a15 = *(v18 - 224);
  *a16 = *(v18 - 240);
  return (*(v17 + 8 * v16))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_192D3E1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  (*(v60 + 8 * (v63 + 643)))(v62 - 0xF2C67B766E067CBLL, a2, a3, a4, a5, a6, a7, a8);
  *v61 = 0xF2C67B766E067CBLL;
  return (*(a60 + 8 * v63))(a59);
}

uint64_t sub_192D3E2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = (*(v60 + 8 * (v61 ^ 0xFF9)))(a1, a2, a3, a4, a5, a6, a7, a8);
  *(v62 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a60 + 8 * v61))(v63);
}

uint64_t sub_192D3E6EC(uint64_t a1)
{
  v8 = *(v4 + 8 * v1);
  v9 = *v3;
  *(v7 - 232) = 0x785FEF64C8799D66;
  v11 = v9 == v6 || a1 == 0x1043AE88C2650F0FLL;
  return (*(v4 + 8 * (v2 | (32 * ((((v2 ^ 0xFB) - v5 + 1) ^ v11) & 1)))))(a1, v8, 0xF90A6CB98EB39A9);
}

uint64_t sub_192D3F6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unint64_t a59)
{
  v63 = (v61 ^ a31) + a49 - 0xF90A6CB95755C05;
  v64 = v63 < 0x375DD9A;
  v65 = v63 > a59;
  if (a59 < 0x375DD9A != v64)
  {
    v66 = v64;
  }

  else
  {
    v66 = v65;
  }

  return (*(v60 + 8 * ((46 * !v66) ^ (v62 + v59 + 1464))))(a1, a2);
}

uint64_t sub_192D3FBB4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v21 - 248);
  v23 = *(v22 - 0x785FEF64C8799D5ELL);
  *(a20 - 0x785FEF64C8799D5ELL) = v23;
  *(a20 - 0x785FEF64C8799D66) = *(v22 - 0x785FEF64C8799D66);
  return (*(v20 + 8 * (((v23 == 0x785FEF64C8799D66) * (((3 * (a1 ^ 0x268) + 1168123388) & 0xBA5FDDDE) - 1218)) ^ a1 ^ 0x3EF)))();
}

uint64_t sub_192D3FE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = (*(v60 + 8 * (v62 ^ 0x33A)))(a1, a2, a3, a4, a5, a6, a7, a8);
  *(v61 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a60 + 8 * v62))(v63);
}

uint64_t sub_192D3FEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v64 = (*(v60 + 8 * (v61 ^ 0xBCB)))(v62 - 0x785FEF64C8799D66, a2, a3, a4, a5, a6, a7, a8);
  *(v63 - 248) = 0x785FEF64C8799D66;
  return (*(a60 + 8 * v61))(v64);
}

uint64_t sub_192D40384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v29 + v27) = a27;
  *(v29 - 0xF2C67B766E067CBLL) = a27;
  return (*(v30 + 8 * v28))(a1, a2, a3, a4, a5, a6, a7, 1179498539);
}

uint64_t sub_192D403F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v28 - 0x785FEF64C8799D66) = a27;
  *(a27 - 0x785FEF64C8799D5ELL) = *(v29 + v27);
  *(v29 + v27) = a27;
  return (*(v30 + 8 * a8))(a1, a2, a3, a4, a5, a6, a7, 1179498539);
}

uint64_t sub_192D40C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  LODWORD(a33) = a2;
  v53 = v49;
  v54 = (*(v49 + 8 * (v50 ^ 0x88A)))(32, a2, a3, a4, a5, a6, a7, a8);
  return (*(v53 + 8 * (((v54 == 0) * (((v50 - 426) | 0x800) ^ 0x86F)) | v50)))(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v54 + 0x785FEF64C8799D66, a28, a29, a30, a3, a4, a33, a34, a35, v52, a37, a38, a39, v51, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_192D40D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58)
{
  *a1 = 0x785FEF64C8799D66;
  *(a1 + 8) = 0x785FEF64C8799D66;
  *(a1 + 16) = a58 + 122401862 + v58 - 138;
  v61 = (*(v59 + 8 * (v58 ^ 0x2DC)))((a58 - 474496974), a2, a3, a4, a5, a6, a7, a8);
  *(a1 + 24) = v61;
  return (*(v59 + 8 * (((v61 != 0) * ((v58 - 1998) ^ 0x49)) ^ v58)))();
}

uint64_t sub_192D40D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58)
{
  HIDWORD(a30) = 2 * a58;
  HIDWORD(a35) = a58 - ((2 * a58 - 948993968) & 0x9F9621CC) + 864211214;
  LODWORD(a34) = v59 ^ 0x37BA0884;
  return (*(v61 + 8 * (v58 | 0x22F)))(230, v60, 0x3185DFB098D2C9E8, 0xE73D1027B3969B0BLL, 0x60810882B265BD7, 0xBD3AA96CA92701DDLL, 0xDC1EDE556F26AEE8, 0x4026DC5F86580D5ALL, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_192D40EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, char a60)
{
  v66 = *(a2 + 24);
  v67 = (__ROR8__((v66 + 4) & 0xFFFFFFFFFFFFFFF8, 8) + 0x3283CFEC498AFD8ELL) & 0xF9FFFFFFFFFFFFFFLL;
  v68 = v67 ^ 0x1E4559FE42F2471ELL;
  v67 ^= 0x8A5B269C0EA5AB6FLL;
  v69 = (__ROR8__(v68, 8) + v67) ^ 0xE13500AF98B0C0DCLL;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ v64;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ v61;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ v62;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ v60;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (((2 * (v79 + v78)) & 0xAAAA746556851DE8) - (v79 + v78) - 0x55553A32AB428EF5) ^ 0x62A31B5EE627EDADLL;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = __ROR8__(v80, 8);
  *(v66 + 4) = (((((2 * (v82 + v81)) | 0xC5585AB08F272530) - (v82 + v81) - 0x62AC2D5847939298) ^ 0x867CC8E265EDDE38) >> (8 * ((v66 + 4) & 7))) ^ a60 ^ 0xCF;
  v83 = __ROR8__((v66 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v84 = (v83 + 0x3283CFEC498AFD8ELL) ^ 0x885B269C0EA5AB6FLL;
  v85 = (__ROR8__((v83 + 0x3283CFEC498AFD8ELL) ^ 0x1C4559FE42F2471ELL, 8) + v84) ^ 0xE13500AF98B0C0DCLL;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ v64;
  v88 = __ROR8__(v87, 8);
  v89 = v87 ^ __ROR8__(v86, 61);
  v90 = (v88 + v89 - ((2 * (v88 + v89)) & 0xAADD75A8558035C0) - 0x2A91452BD53FE520) ^ 0x2872CFE705BF1667;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ v62;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ v60;
  v95 = __ROR8__(v94, 8);
  v96 = v94 ^ __ROR8__(v93, 61);
  v97 = (0x964AD0183F74BFF6 - ((v95 + v96) | 0x964AD0183F74BFF6) + ((v95 + v96) | 0x69B52FE7C08B4009)) ^ 0xA1BCF1747211DCAFLL;
  *(v66 + 5) = v63 ^ (((__ROR8__(v97, 8) + (v97 ^ __ROR8__(v96, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v66 + 5) & 7)));
  return (*(v65 + 8992))(a1);
}

uint64_t sub_192D411FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a2 + 24) + v14 - 0x1E06D87D68ADC517;
  v18 = __ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = ((v18 + 0x3283CFEC498AFD8ELL) | 0x7E054FB39FC80770) - ((v18 + 0x3283CFEC498AFD8ELL) | 0x81FAB04C6037F88FLL) - 0x7E054FB39FC80771;
  v20 = __ROR8__(v19 ^ 0x6240164DDD3A406ELL, 8);
  v19 ^= 0xF65E692F916DAC1FLL;
  v21 = (v20 + v19) ^ 0xE13500AF98B0C0DCLL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ v10;
  v24 = *(v15 + 8 * v11);
  v25 = v23 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v23, 8) + v25) ^ v8;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v9;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x4B876952F452CECFLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xC809DE93B29A9CA6;
  *v17 = (((__ROR8__(v32, 8) + (v32 ^ __ROR8__(v31, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * (v17 & 7u))) ^ HIBYTE(v12) ^ 0x4F;
  v33 = __ROR8__((v17 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = ((0x4D7C3013B6750271 - v33) & 0x7C0A1F12C3784FEDLL) + v33 + 0x3283CFEC498AFD8ELL - ((v33 + 0x3283CFEC498AFD8ELL) & 0x7A0A1F12C3784FEDLL);
  v35 = v34 ^ 0x624F46EC818A08F3;
  v34 ^= 0xF651398ECDDDE482;
  v36 = __ROR8__(v35, 8);
  v37 = (0x74F472E448216F49 - ((v36 + v34) | 0x74F472E448216F49) + ((v36 + v34) | 0x8B0B8D1BB7DE90B6)) ^ 0x6A3E8DB42F6E506ALL;
  v38 = v37 ^ __ROR8__(v34, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (0x5D587E53351E1BD7 - ((v39 + v38) | 0x5D587E53351E1BD7) + ((v39 + v38) | 0xA2A781ACCAE1E428)) ^ 0xA637A4AEF958011ALL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (0xFE5951FB672C4BC9 - ((v42 + v41) | 0xFE5951FB672C4BC9) + ((v42 + v41) | 0x1A6AE0498D3B436)) ^ 0xFCBADB37B7ACB8B1;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (v45 + v44 - ((2 * (v45 + v44)) & 0x21AE5081A9A9FA1ELL) - 0x6F28D7BF2B2B02F1) ^ 0x6CC29349FD1D259FLL;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = __ROR8__((v48 + v47 - ((2 * (v48 + v47)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL, 8);
  v50 = (v48 + v47 - ((2 * (v48 + v47)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL ^ __ROR8__(v47, 61);
  *(v17 + 1) = (((__ROR8__((v49 + v50) ^ 0xC809DE93B29A9CA6, 8) + ((v49 + v50) ^ 0xC809DE93B29A9CA6 ^ __ROR8__(v50, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v17 + 1) & 7))) ^ BYTE2(v12) ^ 0xCB;
  v51 = __ROR8__((v17 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v52 = v51 - ((2 * v51 + 0x65079FD89315FB1CLL) & 0x706B8D24AA79CEEALL) + 0x6AB9967E9EC7E503;
  v53 = __ROR8__(v52 ^ 0x24709F6C17CEA06BLL, 8);
  v52 ^= 0xB06EE00E5B994C1ALL;
  v54 = (((2 * (v53 + v52)) | 0x84A35F8B8F02A07ELL) - (v53 + v52) - 0x4251AFC5C781503FLL) ^ 0xA364AF6A5F3190E3;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (((2 * (v56 + v55)) | 0x5AE37AFB8B700D10) - (v56 + v55) + 0x528E42823A47F978) ^ 0xA9E1987FF601E3BALL;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  v60 = __ROR8__((((2 * (v59 + v58)) | 0xA0645171747853D8) - (v59 + v58) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL, 8);
  v61 = (((2 * (v59 + v58)) | 0xA0645171747853D8) - (v59 + v58) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL ^ __ROR8__(v58, 61);
  v62 = (((2 * (v60 + v61)) & 0xC0FA970E03639268) - (v60 + v61) - 0x607D4B8701B1C935) ^ 0x63970F71D787EE5BLL;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((2 * (v64 + v63)) & 0x3F1A3AC322107E48) - (v64 + v63) - 0x1F8D1D6191083F25) ^ 0xABF58BCC9AA50E14;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (((2 * (v67 + v66)) | 0xA1336988A728D0CALL) - (v67 + v66) - 0x5099B4C453946865) ^ 0x98906A57E10EF4C3;
  v69 = __ROR8__(v68, 8);
  v70 = __ROR8__(v66, 61);
  *(v17 + 2) = (((0x7C4FE0556218D93DLL - ((v69 + (v68 ^ v70)) | 0x7C4FE0556218D93DLL) + ((v69 + (v68 ^ v70)) | 0x83B01FAA9DE726C2)) ^ 0x6760FA10BF996A62) >> (8 * ((v17 + 2) & 7))) ^ BYTE1(v12) ^ 0x10;
  v71 = __ROR8__((v17 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v72 = v71 - ((2 * v71 + 0x65079FD89315FB1CLL) & 0xA7469D16E9FCA87ALL) + 0x6271E77BE8951CBLL;
  v73 = v72 ^ 0xCFE61775360C1323;
  v72 ^= 0x5BF868177A5BFF52uLL;
  v74 = __ROR8__(v73, 8);
  v75 = ((a3 & (2 * (v74 + v72))) - (v74 + v72) + a4) ^ a5;
  v76 = v75 ^ __ROR8__(v72, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ v10;
  v78 = __ROR8__(v77, 8);
  v79 = v77 ^ __ROR8__(v76, 61);
  v80 = (0x42C5569356D8FE22 - ((v78 + v79) | 0x42C5569356D8FE22) + ((v78 + v79) | a6)) ^ a8;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = __ROR8__(v80, 8);
  v83 = ((a7 & (2 * (v82 + v81))) - (v82 + v81) + v13) ^ v16;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0x4B876952F452CECFLL;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0xC809DE93B29A9CA6;
  *(v17 + 3) = v12 ^ a1 ^ (((__ROR8__(v87, 8) + (v87 ^ __ROR8__(v86, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v17 + 3) & 7)));
  return v24();
}

uint64_t sub_192D41D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v23 = (v10 - 1);
  v24 = v23 == v20;
  v25 = (v23 | ((v23 < v20) << 32)) + v14;
  v26 = v25 + v11 + 10;
  v27 = __ROR8__(v26 & 0xFFFFFFFFFFFFFFF8, 8) + ((v9 - 794987398) ^ v15);
  v28 = v27 ^ 0x1C4559FE42F2471ELL;
  v27 ^= 0x885B269C0EA5AB6FLL;
  v29 = __ROR8__(v28, 8);
  v30 = __ROR8__((((v29 + v27) & v16 ^ a1) + ((v29 + v27) & a2 ^ a3) - 1) ^ a4, 8);
  v31 = (((v29 + v27) & v16 ^ a1) + ((v29 + v27) & a2 ^ a3) - 1) ^ a4 ^ __ROR8__(v27, 61);
  v32 = (v30 + v31) ^ a9;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xFD1C75332F7F0C87;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xFC15BB0929C9D890;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v22;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = __ROR8__((((v40 + v39) & v12 ^ a6) + ((v40 + v39) ^ a5) - (((v40 + v39) ^ a5) & v12)) ^ a7, 8) + ((((v40 + v39) & v12 ^ a6) + ((v40 + v39) ^ a5) - (((v40 + v39) ^ a5) & v12)) ^ a7 ^ __ROR8__(v39, 61));
  *v26 = ((((a8 & (2 * v41)) - v41 + v17) ^ v18) >> (8 * (v26 & 7u))) ^ *(v13 + v25);
  v42 = v24;
  return (*(v21 + 8 * ((v42 * v19) ^ v9)))();
}

uint64_t sub_192D41F18@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v26 = *(a1 + 24);
  v27 = 0x9D9E81BF939E40DDLL * a25 - ((0x3B3D037F273C81BALL * a25 + 0x237B623A3F47106) & 0x2C65C7A2CEED3AA6) + (a2 ^ 0xF74EBEE33970D368);
  v28 = __ROR8__((v26 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = ((v28 + 0x3283CFEC498AFD8ELL) | 0x8EF30571B3E03BF9) - ((v28 + 0x3283CFEC498AFD8ELL) | 0x710CFA8E4C1FC406) + 0x710CFA8E4C1FC406;
  v30 = v29 ^ 0x92B65C8FF1127CE7;
  v29 ^= 0x6A823EDBD459096uLL;
  v31 = (__ROR8__(v30, 8) + v29) ^ 0xE13500AF98B0C0DCLL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x490250233B9E532;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((v35 + v34) | 0x6257A18AC6AFEA71) - ((v35 + v34) | 0x9DA85E753950158ELL) - 0x6257A18AC6AFEA72) ^ 0x9F4BD4B9E9D0E6F6;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xFC15BB0929C9D890;
  v39 = __ROR8__(v38, 8);
  v40 = v38 ^ __ROR8__(v37, 61);
  v41 = (((2 * (v39 + v40)) | 0x73433184586818C6) - (v39 + v40) - 0x39A198C22C340C63) ^ 0x7226F190D866C2ACLL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * (v43 + v42)) & 0x2E6D9124F850C1CLL) - (v43 + v42) - 0x1736C8927C2860FLL) ^ 0x36854DE56AA7E557;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v26[10] = (((((v46 + v45) ^ 0x925E7C0EFFCC6FF1 | 0xFC3CC5473DDD44E5) - ((v46 + v45) ^ 0x925E7C0EFFCC6FF1 | 0x3C33AB8C222BB1ALL) + 0x3C33AB8C222BB1ALL) ^ 0x8AB25CF3E06F67B4) >> (8 * ((v26 + 10) & 7u))) ^ HIBYTE(v27) ^ 0x16;
  v47 = __ROR8__((v26 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v48 = ((v47 + 0x3283CFEC498AFD8ELL) & 0x5914460E7C6C43D9 ^ 0x4100000418440108) + ((v47 + 0x3283CFEC498AFD8ELL) & 0xA0EBB9F18393BC26 ^ 0x4A3312100820427) - 1;
  v49 = v48 ^ 0x5BE668DB5A344230;
  v48 ^= 0xCFF817B91663AE41;
  v50 = (__ROR8__(v49, 8) + v48) ^ 0xE13500AF98B0C0DCLL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x490250233B9E532;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0xFD1C75332F7F0C87;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (v56 + v55 - ((2 * (v56 + v55)) & 0x3B57AD3684D86B7ALL) - 0x62542964BD93CA43) ^ 0x61BE6D926BA5ED2DLL;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (v59 + v58 - ((2 * (v59 + v58)) & 0x6EEDA84EBE2C2B7ELL) - 0x48892BD8A0E9EA41) ^ 0xFCF1BD75AB44DB70;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (((2 * (v62 + v61)) | 0xFED65BFA7285710) - (v62 + v61) - 0x7F6B2DFD3942B88) ^ 0xCFFF6C4C610EB72ELL;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  v26[11] = (((((v65 + v64) | 0x21983AC56B0BB129) - ((v65 + v64) | 0xDE67C53A94F44ED6) - 0x21983AC56B0BB12ALL) ^ 0xC548DF7F4975FD89) >> (8 * ((v26 + 11) & 7u))) ^ BYTE6(v27) ^ 0x32;
  v66 = __ROR8__((v26 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v67 = -2 - (((0xD7C3013B6750271 - v66) | 0xEFC9086FACD320D4) + ((v66 + 0x3283CFEC498AFD8ELL) | 0x1036F790532CDF2BLL));
  v68 = v67 ^ 0xF38C5191EE2167CALL;
  v67 ^= 0x67922EF3A2768BBBuLL;
  v69 = (__ROR8__(v68, 8) + v67) ^ 0xE13500AF98B0C0DCLL;
  v70 = __ROR8__(v69, 8);
  v71 = v69 ^ __ROR8__(v67, 61);
  v72 = (((2 * (v70 + v71)) & 0xA44BB63E2DDF8B52) - (v70 + v71) - 0x5225DB1F16EFC5AALL) ^ 0xA94A01E2DAA9DF64;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0xFD1C75332F7F0C87;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0xFC15BB0929C9D890;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (((v78 + v77) | 0xD2E383F95083B686) - ((v78 + v77) | 0x2D1C7C06AF7C4979) + 0x2D1C7C06AF7C4979) ^ 0x9964EAABA4D17849;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xC809DE93B29A9CA6;
  v26[12] = (((__ROR8__(v81, 8) + (v81 ^ __ROR8__(v80, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v26 + 12) & 7u))) ^ BYTE5(v27) ^ 0xE3;
  v82 = __ROR8__((v26 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v83 = ((2 * (v82 + 0x3283CFEC498AFD8ELL)) | 0xA4234159906F106ALL) - (v82 + 0x3283CFEC498AFD8ELL) + 0x2DEE5F5337C877CBLL;
  v84 = v83 ^ 0xCE54F9528AC5CF2BLL;
  v83 ^= 0x5A4A8630C692235AuLL;
  v85 = __ROR8__(v84, 8);
  v86 = (((v85 + v83) | 0xD738201BC43E983BLL) - ((v85 + v83) | 0x28C7DFE43BC167C4) + 0x28C7DFE43BC167C4) ^ 0x360D20B45C8E58E7;
  v87 = v86 ^ __ROR8__(v83, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (((v88 + v87) ^ 0x70783716B7118F26) - ((2 * ((v88 + v87) ^ 0x70783716B7118F26)) & 0xBAA694FE21B0C1B2) + 0x5D534A7F10D860D9) ^ 0x29BB586B94700ACDLL;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0xFD1C75332F7F0C87;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = __ROR8__(v91, 8);
  v94 = (v93 + v92 - ((2 * (v93 + v92)) & 0x17A08F8C8FAF1288) - 0x742FB839B82876BCLL) ^ 0x77C5FCCF6E1E51D4;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0x4B876952F452CECFLL;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ 0xC809DE93B29A9CA6;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = __ROR8__(v98, 8);
  v26[13] = (((v100 + v99 - ((2 * (v100 + v99)) & 0xB495371DE105E9CELL) - 0x25B564710F7D0B19) ^ 0x3E9A7E34D2FCB847) >> (8 * ((v26 + 13) & 7u))) ^ BYTE4(v27) ^ 0xD1;
  v101 = __ROR8__((v26 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v102 = (0xCD7C3013B6750271 - v101) & 0xF050E761A6289A68 | (v101 + 0x283CFEC498AFD8ELL) & 0x9AF189E59D76597;
  v103 = v102 ^ 0xEE15BE9FE4DADD76;
  v102 ^= 0x7A0BC1FDA88D3107uLL;
  v104 = (__ROR8__(v103, 8) + v102) ^ 0xE13500AF98B0C0DCLL;
  v105 = __ROR8__(v104, 8);
  v106 = v104 ^ __ROR8__(v102, 61);
  v107 = (((v105 + v106) | 0x349C4C6A3E574525) - ((v105 + v106) | 0xCB63B395C1A8BADALL) - 0x349C4C6A3E574526) ^ 0x300C69680DEEA017;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ 0xFD1C75332F7F0C87;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ 0xFC15BB0929C9D890;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0x4B876952F452CECFLL;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = __ROR8__(v113, 8);
  v116 = (((2 * (v115 + v114)) | 0x749128A0D39CA49CLL) - (v115 + v114) + 0x45B76BAF9631ADB2) ^ 0x72414AC3DB54CEE8;
  v26[14] = (((__ROR8__(v116, 8) + (v116 ^ __ROR8__(v114, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v26 + 14) & 7u))) ^ ((-1818345251 * a25 - ((658276794 * a25 - 1544261370) & 0xCEED3AA6) + (a2 ^ 0x3970D368)) >> 24) ^ 0x67;
  v117 = __ROR8__((v26 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v118 = (0x57C3013B6750271 - v117) & 0x5D98955B3706B30 | (v117 + 0x3283CFEC498AFD8ELL) & 0xFA2676AA4C8F94CFLL;
  v119 = v118 ^ 0x199CD0ABF1822C2ELL;
  v118 ^= 0x8D82AFC9BDD5C05FLL;
  v120 = (__ROR8__(v119, 8) + v118) ^ 0xE13500AF98B0C0DCLL;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = __ROR8__(v120, 8);
  v123 = (((2 * (v122 + v121)) | 0x86D73428622BDA3ALL) - (v122 + v121) - 0x436B9A143115ED1DLL) ^ 0x47FBBF1602AC082FLL;
  v124 = v123 ^ __ROR8__(v121, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0xFD1C75332F7F0C87;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = __ROR8__(v125, 8);
  v128 = __ROR8__((((2 * (v127 + v126)) & 0x407F7AAF3D2F06C8) - (v127 + v126) - 0x203FBD579E978365) ^ 0x23D5F9A148A1A40BLL, 8);
  v129 = (((2 * (v127 + v126)) & 0x407F7AAF3D2F06C8) - (v127 + v126) - 0x203FBD579E978365) ^ 0x23D5F9A148A1A40BLL ^ __ROR8__(v126, 61);
  v130 = (v128 + v129) ^ 0x4B876952F452CECFLL;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ 0xC809DE93B29A9CA6;
  v26[15] = (((__ROR8__(v132, 8) + (v132 ^ __ROR8__(v131, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v26 + 15) & 7u))) ^ ((-1818345251 * a25 - ((658276794 * a25 - 1544261370) & 0xCEED3AA6) + (a2 ^ 0x3970D368)) >> 16) ^ 0x76;
  v133 = __ROR8__((v26 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v134 = ((2 * v133 + 0x65079FD89315FB1CLL) & 0xE66464AD44856B92) - v133 + 0x5649FDBD14324CA8;
  v135 = v134 ^ 0x948894571F4F0D28;
  v134 ^= 0x96EB355318E159uLL;
  v136 = __ROR8__(v135, 8);
  v137 = (((2 * (v136 + v134)) & 0xA1738BF9A2E70742) - (v136 + v134) + 0x2F463A032E8C7C5ELL) ^ 0xCE733AACB63CBC82;
  v138 = v137 ^ __ROR8__(v134, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ 0x490250233B9E532;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = __ROR8__(v139, 8);
  v142 = (((2 * (v141 + v140)) & 0x2D730DB5B3BDACF8) - (v141 + v140) - 0x16B986DAD9DED67DLL) ^ 0x145A0C16095E2504;
  v143 = v142 ^ __ROR8__(v140, 61);
  v144 = __ROR8__(v142, 8);
  v145 = __ROR8__((((2 * (v144 + v143)) | 0x4D17F792C6A75DEALL) - (v144 + v143) - 0x268BFBC96353AEF5) ^ 0xDA9E40C04A9A7665, 8);
  v146 = (((2 * (v144 + v143)) | 0x4D17F792C6A75DEALL) - (v144 + v143) - 0x268BFBC96353AEF5) ^ 0xDA9E40C04A9A7665 ^ __ROR8__(v143, 61);
  v147 = (((2 * (v145 + v146)) & 0x305CE5312BE34172) - (v145 + v146) + 0x67D18D676A0E5F46) ^ 0x2C56E4359E5C9189;
  v148 = v147 ^ __ROR8__(v146, 61);
  v149 = (__ROR8__(v147, 8) + v148) ^ 0xC809DE93B29A9CA6;
  v150 = v149 ^ __ROR8__(v148, 61);
  v151 = __ROR8__(v149, 8);
  v26[16] = (((v151 + v150 - ((2 * (v151 + v150)) & 0x20DC9317F93159D8) - 0x6F91B67403675314) ^ 0x74BEAC31DEE6E04CLL) >> (8 * ((v26 + 16) & 7u))) ^ BYTE1(v27) ^ 0x9D;
  v152 = __ROR8__((v26 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v153 = ((2 * ((v152 + 0x3283CFEC498AFD8ELL) ^ 0x2CEA70879027C9CDLL)) & 0x2D388CE61C45146ALL) - ((v152 + 0x3283CFEC498AFD8ELL) ^ 0x2CEA70879027C9CDLL) - 0x169C46730E228A36;
  v154 = __ROR8__(v153 ^ 0xD9CC90F52308FB19, 8);
  v153 ^= 0x4DD2EF976F5F1768uLL;
  v155 = (((2 * (v154 + v153)) | 0xC93FF3953A26D81ALL) - (v154 + v153) + 0x1B60063562EC93F3) ^ 0x5AAF96505A3ACD1;
  v156 = v155 ^ __ROR8__(v153, 61);
  v157 = (__ROR8__(v155, 8) + v156) ^ 0x490250233B9E532;
  v158 = v157 ^ __ROR8__(v156, 61);
  v159 = (__ROR8__(v157, 8) + v158) ^ 0xFD1C75332F7F0C87;
  v160 = v159 ^ __ROR8__(v158, 61);
  v161 = __ROR8__(v159, 8);
  v162 = (((2 * (v161 + v160)) | 0x9AD9A558F1F83E32) - (v161 + v160) - 0x4D6CD2AC78FC1F19) ^ 0xB17969A55135C789;
  v163 = v162 ^ __ROR8__(v160, 61);
  v164 = (__ROR8__(v162, 8) + v163) ^ 0x4B876952F452CECFLL;
  v165 = v164 ^ __ROR8__(v163, 61);
  v166 = __ROR8__(v164, 8);
  v26[17] = (((__ROR8__((v166 + v165 - ((2 * (v166 + v165)) & 0x8BC8E87C0324D542) + 0x45E4743E01926AA1) ^ 0x8DEDAAADB308F607, 8) + ((v166 + v165 - ((2 * (v166 + v165)) & 0x8BC8E87C0324D542) + 0x45E4743E01926AA1) ^ 0x8DEDAAADB308F607 ^ __ROR8__(v165, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v26 + 17) & 7u))) ^ (-35 * a25 - ((-70 * a25 + 6) & 0xA6) + (a2 ^ 0x68)) ^ 0x53;
  return (*(v25 + 8 * a2))();
}

uint64_t sub_192D42F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = 2 * (v61 ^ 0x49D);
  v64 = (*(v60 + 8 * (v63 ^ 0xC32)))(a1, a2, a3, a4, a5, a6, a7, a8);
  *(v62 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a60 + 8 * v63))(v64);
}

uint64_t sub_192D430DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  HIDWORD(a51) = v58;
  HIDWORD(a47) = a5;
  return (*(v59 + 8 * (((v60 - 1944) ^ 0x664) + v60 - 2165)))(a1, HIDWORD(a21), 0x93110A554F8E721, 0x27DB1ED5A73C4037, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a6, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

void d2234hmbdf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = !v4 && a4 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D432F8(uint64_t a1, uint64_t a2)
{
  STACK[0x218] = &STACK[0x1D89DE2B680DD389];
  STACK[0x220] = v3 + 0x5128F3C4919EC5A8;
  STACK[0x290] = &STACK[0x5128F3C4919EC9E8];
  STACK[0x228] = &STACK[0x5128F3C4919EC868];
  *(v4 - 172) = 407104343 * ((-106825906 - ((v4 - 176) | 0xF9A1F74E) + ((v4 - 176) | 0x65E08B1)) ^ 0x44CF4319) + 1644606322;
  v6 = *(v2 + 21240);
  STACK[0x298] = v2;
  v7 = v6(v4 - 176);
  return (*(STACK[0x298] + 8 * ((1106 * (a2 == 0)) ^ 0x2CDu)))(v7);
}

uint64_t sub_192D4347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[45] = *(a6 + 1616);
  v7[47] = &STACK[0x2E0];
  v7[63] = &STACK[0x490];
  *(v8 - 168) = -1310139165 - 385730383 * ((1430786968 - ((v8 - 176) | 0x55481398) + ((v8 - 176) | 0xAAB7EC67)) ^ 0xD32687B6);
  v9 = (*(a6 + 21528))(v8 - 176, a2, a3, a4, a5);
  v10 = *(v8 - 164) == v6 - 1474212029;
  return (*(STACK[0x298] + 8 * (((2 * v10) | (16 * v10)) ^ 0x621u)))(v9);
}

uint64_t sub_192D4357C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  LOBYTE(STACK[0x42B]) = v4 == 0;
  v8[53] = v5;
  v8[55] = 0;
  *(v10 - 248) = -28192457;
  *(v10 - 232) = -2089713703;
  *(v10 - 228) = v6;
  v8[58] = v5;
  *(v10 - 224) = v9;
  *(v10 - 220) = 1517382207;
  *(v10 - 208) = 542555936;
  v8[60] = a2;
  *(v10 - 192) = 310171382;
  *(v10 - 188) = v6 - 2;
  *(v10 - 184) = v9 + 28;
  *(v10 - 180) = 1517382207;
  v8[26] = v10 - 256 + v2;
  LODWORD(STACK[0x40C]) = 0;
  v11 = (*(a1 + 8 * (v7 + v3 + 2208)))(128);
  v12 = STACK[0x298];
  v8[11] = v11 + 0x4BCC923D0A7CA640;
  return (*(v12 + 8 * (((((v7 + v3 + 107) ^ (v11 == 0)) & 1) * (((v3 - 2042653574) & 0xD19F1E77) - 1034)) ^ (v7 + v3 + 2133))))();
}

uint64_t sub_192D43698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 8 * (v6 + 1643)))(112, a2, a3, a4, a5);
  v9 = STACK[0x298];
  *(v7 + 96) = v8 + 0xE81173800FA8871;
  return (*(v9 + 8 * (((v8 == 0) * (((v6 - 723) | 0x10) - 332)) | v6)))();
}

uint64_t sub_192D43774@<X0>(void *a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  *a1 = 0x551AB9ED161FA3A6;
  a1[1] = 0x1717171717171717;
  a1[2] = 0x1717171717171717;
  a1[3] = 0x1717171717171717;
  a1[4] = 0x1717171717171717;
  a1[5] = 0x1717171717171717;
  a1[6] = 0x1717171717171717;
  a1[7] = 0x1717171717171717;
  a1[8] = 0x1717171717171717;
  qmemcpy(a1 + 9, "EhMFEhMFp/", 10);
  v5 = *(v4 + 88);
  v6 = *(v4 + 96);
  *(v6 - 0xE81173800FA881DLL) = -1792230792;
  *(v6 - 0xE81173800FA8809) = 114237931;
  *(v6 - 0xE81173800FA8819) = 0x1717171717171717;
  *(v6 - 0xE81173800FA8811) = 0x1717171717171717;
  *(v6 - 0xE81173800FA8805) = 75;
  v8 = v6 != a3 && v5 != 0x4BCC923D0A7CA640;
  return (*(a2 + 8 * ((v8 * ((((v3 - 4) | 4) - 217) ^ (v3 + 55687585) & 0xFCAE47DB)) ^ (v3 + 923))))();
}

uint64_t sub_192D43898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 - 0x4BCC923D0A7CA630) = *(v6 - 0xE81173800FA8871);
  *(a1 - 0x4BCC923D0A7CA5E8) = *(v6 - 0xE81173800FA8829);
  *(a1 - 0x4BCC923D0A7CA5E4) = *(v6 - 0xE81173800FA8825);
  *(a1 - 0x4BCC923D0A7CA5E0) = *(v6 - 0xE81173800FA8821);
  *(a1 - 0x4BCC923D0A7CA5DFLL) = *(v6 - 0xE81173800FA8820);
  *(a1 - 0x4BCC923D0A7CA5C8) = *(v6 + v7);
  *(a1 - 0x4BCC923D0A7CA5DCLL) = *(v6 + v8);
  *(a1 - 0x4BCC923D0A7CA5C4) = *(v6 + v10) & 1 | 0x28;
  return (*(a6 + 8 * v9))(4294967176, 232, v9 ^ 0x2DBu, &off_1E73B2A80, (v9 - 624), v9 ^ 0x28Au, 312);
}

uint64_t sub_192D43A20(char a1, char a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v14 = (v12 - 1) & 0xF;
  *(v8 + v12) = (127 * v14) ^ *(*(a4 + 8 * a3) + v14) ^ *(v14 + *(a4 + 8 * a5) - 4 + 5) ^ *(v14 + *(a4 + 8 * a6)) ^ (v13 + ((*(v10 + v12) ^ 0x44) - ((v9 - 113) ^ a2 ^ a1 & (2 * *(v10 + v12)))) * v7);
  return (*(v11 + 8 * (((v12 == -31) * a7) ^ v9)))();
}

uint64_t sub_192D43AF4(uint64_t a1, char a2, char a3, char a4, int a5)
{
  v12 = (v8 - 1) & 0xF;
  v13 = STACK[0x298];
  *(v5 + v8) = *(v12 + v6 + 5) ^ *(v11 + v12) ^ (127 * v12) ^ *(v12 + v7 + 4) ^ (v9 + (((v10 - 102) ^ a3 ^ *(a1 + v8)) - ((a2 ^ (2 * *(a1 + v8))) & 0x88)) * a4);
  return (*(v13 + 8 * (((v8 == -31) * a5) ^ v10)))();
}

uint64_t sub_192D43B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v7;
  *(v7 - 0x4BCC923D0A7CA5C9) = *(v6 - 0xE81173800FA880ALL);
  *(v7 - 0x4BCC923D0A7CA5CALL) = *(v6 - 0xE81173800FA880BLL);
  *(v7 - 0x4BCC923D0A7CA5CBLL) = *(v6 - 0xE81173800FA880CLL);
  *(v7 - 0x4BCC923D0A7CA5CCLL) = *(v6 - 0xE81173800FA880DLL);
  *(v7 - 0x4BCC923D0A7CA5CDLL) = *(v6 - 0xE81173800FA880ELL);
  *(v7 - 0x4BCC923D0A7CA5CELL) = *(v6 - 0xE81173800FA880FLL);
  *(v7 - 0x4BCC923D0A7CA5CFLL) = *(v6 - 0xE81173800FA8810);
  *(v7 - 0x4BCC923D0A7CA5D0) = *(v6 + v8);
  *(v7 - 0x4BCC923D0A7CA5D1) = *(v6 - 0xE81173800FA8812);
  *(v7 - 0x4BCC923D0A7CA5D2) = *(v6 - 0xE81173800FA8813);
  *(v7 - 0x4BCC923D0A7CA5D3) = *(v6 - 0xE81173800FA8814);
  *(v7 - 0x4BCC923D0A7CA5D4) = *(v6 - 0xE81173800FA8815);
  *(v7 - 0x4BCC923D0A7CA5D5) = *(v6 - 0xE81173800FA8816);
  *(v7 - 0x4BCC923D0A7CA5D6) = *(v6 - 0xE81173800FA8817);
  *(v7 - 0x4BCC923D0A7CA5D7) = *(v6 - 0xE81173800FA8818);
  *(v7 - 0x4BCC923D0A7CA5D8) = *(v6 - 0xE81173800FA8819);
  v11 = *(v6 - 0xE81173800FA886DLL);
  *(v10 - 0x4BCC923D0A7CA62CLL) = v11;
  return (*(a6 + 8 * (((v11 != 1427814893) * (((v9 + 55) | 6) - 595)) ^ v9)))(a1, a2, a3, a4, a5);
}

uint64_t sub_192D43FB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *(v9 - 0x4BCC923D0A7CA638) = a1 + a8;
  return (*(a6 + 8 * (((7 * (v8 ^ 0x867) + 68 * (v8 ^ 0x8FF) - 949) * (v9 != 0x4BCC923D0A7CA640)) ^ v8)))();
}

uint64_t sub_192D440A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *v8 = a1 + a8;
  return (*(a6 + 8 * (((*(v11 + 208) == 0x47C897C46C26D327) * (((v9 + 134232014) | 0xA0211005) ^ (v10 - 35))) ^ v9)))();
}

uint64_t sub_192D441FC@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v9 = *v5;
  v8[17] = *(a1 + 8 * v3);
  v8[36] = v9;
  LODWORD(STACK[0x344]) = v4;
  v8[2] = v2;
  return (*(a1 + 8 * (((v2 == 0x47C897C46C26D327) * ((2 * (a2 ^ (v7 + 165))) ^ 0x2F4)) ^ (v6 + a2 - 39))))();
}

uint64_t sub_192D442CC@<X0>(uint64_t a1@<X5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v64 + 40) = *(v65 - 0x4BCC923D0A7CA638);
  LODWORD(STACK[0x3E4]) = 1399420443;
  *(v64 + 144) = a63;
  LODWORD(STACK[0x42C]) = 1580434300;
  return (*(a1 + 8 * (v63 + a2 + 1019)))();
}

uint64_t sub_192D443C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v8 - 168) = v6 - 2138855791 * ((((v8 - 176) | 0x9C46E313) - (v8 - 176) + ((v8 - 176) & 0x63B91CE8)) ^ 0x93F0DB92) + 2030;
  v9 = (*(a6 + 8 * (v6 + 2511)))(v8 - 176, a2, a3, a4, a5);
  v10 = STACK[0x298];
  v11 = (v6 + 1631) ^ *(v8 - 176) ^ 0xD3EEAFA5;
  STACK[0x2E8] = *(*(v7 + 88) - 0x4BCC923D0A7CA638);
  LODWORD(STACK[0x35C]) = 1399420443;
  LODWORD(STACK[0x3D4]) = v11;
  LODWORD(STACK[0x37C]) = 1604909828;
  return (*(v10 + 8 * v6))(v9);
}

uint64_t sub_192D4461C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v9[35];
  v9[45] = *(a6 + 8 * v7);
  v9[47] = v11;
  v9[49] = STACK[0x228];
  *(v10 - 168) = -1310139384 - 385730383 * ((2 * ((v10 - 176) & 0x6BA5C020) - (v10 - 176) + 341458906) ^ 0x6DCB540B) + v7;
  v9[63] = &STACK[0x490];
  v12 = (*(a6 + 8 * (v7 ^ 0xA58)))(v10 - 176, a2, a3, a4, a5);
  return (*(STACK[0x298] + 8 * ((((v6 ^ (*(v10 - 164) == v8)) & 1) * (((v7 - 299704924) & 0x11DD21CE) + 923)) ^ (v7 + 1305))))(v12);
}

uint64_t sub_192D447E8@<X0>(uint64_t a1@<X5>, unint64_t a2@<X8>)
{
  *(v7 + 216) = *(a1 + 8 * v5);
  LODWORD(STACK[0x3C4]) = v4;
  *(v7 + 104) = v2;
  STACK[0x2D8] = a2;
  v9 = v2 == 0x52C24C17146331D3 || a2 == 0x4BCC923D0A7CA640;
  return (*(a1 + 8 * ((v9 * (v3 - 1474212592 + (((v3 + 5) | 0x158) ^ (v6 - 1407)) - 107)) | v3)))();
}

uint64_t sub_192D4486C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  *(v5 + 40) = *(a2 - 0x4BCC923D0A7CA638);
  LODWORD(STACK[0x3E4]) = v4;
  *(v5 + 144) = v2;
  LODWORD(STACK[0x42C]) = -1345158841;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_192D448E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x2C0];
  STACK[0x2B0] = STACK[0x2C0];
  return (*(a6 + 8 * ((27 * ((((241 * ((v6 + 1655771469) & 0x9D4EE8E7 ^ 0x60)) ^ (v7 == 0x4BCC923D0A7CA640)) & 1) == 0)) ^ v6)))(a1, a2, a3, a4, a5);
}

uint64_t sub_192D44A0C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X7>, int a3@<W8>)
{
  v7 = *(a1 + 8 * a3);
  v8 = *v4;
  *(v6 + 272) = v7;
  return (*(a1 + 8 * (((v8 == a2) * (v3 ^ 0xFF6 ^ (v5 + 909) ^ (v3 - 131731503) & 0xAFFB57AF)) ^ v3)))();
}

uint64_t sub_192D44A68@<X0>(uint64_t a1@<X5>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  *(v4 + 296) = 0x785FEF64C8799D66;
  STACK[0x2F8] = 0;
  *(v4 + 160) = 0xBA9E7370BFF99ELL;
  return (*(a1 + 8 * ((((v3 ^ 0x161) - 1629) * (a3 == a2)) ^ v3)))();
}

uint64_t sub_192D44BD8@<X0>(uint64_t a1@<X5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a64 = LODWORD(STACK[0x2A4]);
  *a65 = *(v66 + 232);
  *a66 = ((a2 + 20291) | 0xA8210000) ^ LODWORD(STACK[0x3F0]) ^ 0x2897E852;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_192D44C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LOBYTE(STACK[0x3AB]) = v6;
  LODWORD(STACK[0x2BC]) = v8;
  return (*(a6 + 8 * (v9 + v7 - 336 + ((v7 - 1644307752) & 0xB9E0DCDF) - 1547)))(a1, a2, a3, STACK[0x228], a5);
}

uint64_t sub_192D44C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 8 * v6);
  LODWORD(STACK[0x288]) = -1474215931;
  return v7(640, 961, 123, a4, 2077);
}

uint64_t sub_192D44D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (v6 + 2232) | LODWORD(STACK[0x288]);
  v10 = *(a4 - 0x5128F3C4919EC5A8);
  *(v8 + 240) = v10;
  return (*(a6 + 8 * (v6 ^ (4 * (((v10 == 0x4BCC923D0A7CA640) ^ (v7 + v9 + 61)) & 1)))))(a1, a2, a3);
}

uint64_t sub_192D44D90@<X0>(unint64_t a1@<X3>, uint64_t a2@<X5>, int a3@<W8>)
{
  STACK[0x270] = a1;
  STACK[0x308] = v3 - 0x4BCC923D0A7CA638;
  LODWORD(STACK[0x3F4]) = 1442154710;
  return (*(a2 + 8 * a3))();
}

uint64_t sub_192D44DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x308] = *(v8 + 240) - 0x4BCC923D0A7CA640;
  LODWORD(STACK[0x3F4]) = v7;
  return (*(a6 + 8 * v6))(a1, a2, a3, a4, a5);
}

uint64_t sub_192D44E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *v9;
  *(v10 + 112) = *v9;
  return (*(a6 + 8 * (((v12 == a8) * (((v8 - 1950) | v11) ^ 0xDB8)) ^ v8)))(a1, a2, a3, a4, a5);
}

uint64_t sub_192D44FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 8 * (v7 ^ 0xA53FA8DB)))(a1, a2, a3, a4, a5);
  v9 = STACK[0x298];
  *(v6 - 0x785FEF64C8799D4ELL) = 0;
  return (*(v9 + 8 * (v7 ^ 0xA53FA5EC ^ v7 ^ 0xA53FA4CD ^ (1366 * (v7 != 675491132)))))(v8);
}

uint64_t sub_192D45074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 8 * (v7 ^ 0xE06)))(v6 - 0xF2C67B766E067CBLL, a2, a3, a4, a5);
  v9 = STACK[0x298];
  *v8 = 0xF2C67B766E067CBLL;
  return (*(v9 + 8 * v7))(640, 961, 123);
}

uint64_t sub_192D451F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6 - 165;
  v9 = (v6 - 1476331305) | 0x205005;
  v10 = (v6 - 2013202216) | 0x20205004;
  (*(a6 + 8 * (v6 + 599)))(*(v7 + 240) - 0x4BCC923D0A7CA640, a2, a3, a4, a5);
  return (*(STACK[0x298] + 8 * ((((v9 + 27) ^ v10) * (STACK[0x270] == 0x5128F3C4919EC5A8)) ^ v8)))(640, 961, 123);
}

uint64_t sub_192D453D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[45] = *(a6 + 8 * v6);
  v7[47] = &STACK[0x2E0];
  *(v8 - 168) = -1310139384 - 385730383 * ((-891990692 - ((v8 - 176) | 0xCAD54D5C) + ((v8 - 176) | 0x352AB2A3)) ^ 0x4CBBD972) + v6 + 34;
  v7[63] = &STACK[0x490];
  v9 = (*(a6 + 8 * (v6 + 2506)))(v8 - 176, a2, a3, a4, a5);
  return (*(STACK[0x298] + 8 * ((1823 * (((9 * (v6 ^ 0x6E)) ^ 0xEC48866C) + v6 > 0xE0EABF6B)) ^ (v6 + 391))))(v9);
}

uint64_t sub_192D45538@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v4 = v2 + 39;
  v6 = (*(a1 + 8 * (a2 ^ (v3 + 2656))))();
  return (*(a1 + 8 * v4))(v6);
}

uint64_t sub_192D4564C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v7[13];
  v7[5] = *(STACK[0x2D8] - 0x4BCC923D0A7CA640);
  LODWORD(STACK[0x3E4]) = STACK[0x3C4];
  v7[18] = v8;
  LODWORD(STACK[0x42C]) = 211060145;
  return (*(a6 + 8 * v6))(a1, a2, a3, a4, a5);
}

uint64_t sub_192D456B4@<X0>(uint64_t a1@<X5>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  *(v6 + 264) = v3;
  STACK[0x2D0] = 0x785FEF64C8799D66;
  LODWORD(STACK[0x324]) = -2135508617;
  *(v6 + 72) = 0x58410583CA653C4DLL;
  v8 = a3 != a2 && v3 != 0x52C24C17146331D3;
  return (*(a1 + 8 * ((v8 * ((v5 + ((v4 - 911) | 2) - 40) ^ (v4 - 1171170336) & 0xEDEFF1A5)) ^ v4)))();
}

uint64_t sub_192D457F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  *(v10 + 32) = *v6;
  return (*(a6 + 8 * (((v11 == 0x785FEF64C8799D66) * (143 * (v7 ^ (v9 - 5)) + ((v8 + v7 - 437) | 0x42) - 801)) ^ (v8 + v7 + 1773))))(a1, a2, a3, a4, a5);
}

uint64_t sub_192D458D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(STACK[0x2D0] - 0x785FEF64C8799D4ELL);
  STACK[0x2C8] = v8;
  return (*(a6 + 8 * (((v8 == 0) * ((v6 - 1474212823) ^ (v7 + 405) ^ 0x251)) ^ v6)))(a1, a2, a3, a4, a5);
}

uint64_t sub_192D45948@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v4 = (v2 | ((v2 < 0x2393FBE8) << 32)) + 0x310502E61A8144BELL;
  v5 = v3[9];
  v3[41] = v4;
  v3[42] = v5;
  return (*(a1 + 8 * ((1379 * (v4 - v5 + 0x273C029D8C4FFB9DLL < (a2 - 858) - 2820755828 + (a2 - 1474212474))) ^ a2)))();
}

uint64_t sub_192D45A78@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v3 = *(*(v2 + 296) - 0x785FEF64C8799D4ELL);
  *(v2 + 192) = v3;
  return (*(a1 + 8 * (a2 ^ (2 * (((v3 == 0) ^ (a2 - 11)) & 1u)))))();
}

uint64_t sub_192D45ADC@<X0>(uint64_t a1@<X5>, unsigned int a2@<W8>)
{
  v4 = (v2 | ((v2 < 0x2393FBE8) << 32)) + 0x4ECB063D75ACD7CCLL;
  v5 = v3[20];
  v3[43] = v4;
  v3[44] = v5;
  return (*(a1 + 8 * ((3913 * (v4 - v5 - 0x4E1067CA2880DA20 < ((a2 - 1468) ^ a2 ^ 0x11F ^ 0xFFFFFFFFFFFFF8B5))) ^ a2)))();
}

uint64_t sub_192D45C4C()
{
  v2 = *(v1 + 8);
  v3 = *(v2 - 0x785FEF64C8799D5ELL);
  v4 = *(v1 + 64);
  *(v4 - 0x785FEF64C8799D5ELL) = v3;
  *(v4 - 0x785FEF64C8799D66) = *(v2 - 0x785FEF64C8799D66);
  return (*(STACK[0x298] + 8 * (((v3 == 0x785FEF64C8799D66) * ((v0 ^ 0xD8E) + ((v0 - 224393863) & 0xD5FF7F7) - 2801)) ^ v0)))();
}

uint64_t sub_192D45ED8()
{
  v3 = (*(v0 + 8 * (v1 + 1506)))();
  v4 = STACK[0x298];
  *(*(v2 + 8) - 0x785FEF64C8799D4ELL) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_192D45F60@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x298];
  v4 = (*(STACK[0x298] + 8 * (v1 ^ 0x91D)))(a1 - 0x785FEF64C8799D66);
  *(v2 + 8) = 0x785FEF64C8799D66;
  return (*(v3 + 8 * ((2918 * (LODWORD(STACK[0x458]) == ((v1 + 1504) ^ 0xEB601498))) ^ v1)))(v4);
}

uint64_t sub_192D4602C@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v4 = *(v3 + 352) - 0xBA9E7370C000C7;
  STACK[0x288] = ((*(v3 + 352) - 0xBA9E7370BFF99ALL) ^ ((a2 - v2 - 1317) + 0x7FAD3B7D379BEE92)) + ((2 * (*(v3 + 352) - 0xBA9E7370BFF99ALL)) & 0xFF5A76FBBF7A7F6ELL) - 0x1124200C9C392022;
  v5 = *(v3 + 336);
  STACK[0x270] = v5;
  STACK[0x260] = ((v5 - 0x58410583CA653C49) ^ 0xFED9FB77F3A6DFFFLL) + 0x6FAF1FF94FDD3F96 + ((2 * (v5 - 0x58410583CA653C49)) & 0xFDB3F6EFE74DBFFELL);
  STACK[0x250] = ((v4 + 1839) ^ 0x7A1B35FC2D7FFFFFLL) - 0x2200114824011149 + ((2 * (v4 + 1839)) & 0xF4366BF85AFFFFFELL);
  STACK[0x240] = ((v5 - 0x58410583CA653C47) ^ 0x7DBB37B4B9FFFEF7) - 0x25A01300B0811041 + ((2 * (v5 - 0x58410583CA653C47)) & 0xFB766F6973FFFDEELL);
  STACK[0x230] = ((v5 - 0x58410583CA653C43) ^ 0xFF9BFDB65F7EFEB7) + 0x587F26FDA9FFEFFFLL + ((2 * (v5 - 0x58410583CA653C43)) & 0xFF37FB6CBEFDFD6ELL);
  return (*(a1 + 8 * a2))(LOWORD(STACK[0x45E]), -2, 0x4E57CE6D5C1D29D7, 0x4D7C3013B6750271, 0x4B876952F452CECFLL, 0x3283CFEC498AFD8ELL, 0x1380784254EB2752, 0x12BED15EDE5DCB03);
}

uint64_t sub_192D4696C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (v6 ^ 0x80B6B977) + STACK[0x270];
  STACK[0x460] = v8 + 10;
  v8 -= 0x584105839B30B152;
  v9 = v8 < 0x2F348AF1;
  v10 = v8 > v5;
  if (v5 < 0x2F348AF1 != v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  return (*(v7 + 8 * ((1975 * v11) ^ 0x3A2)))(a1, a2, a3, a4, a5, 0x3283CFEC498AFD8ELL);
}

uint64_t sub_192D47044@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = v2;
  *(a1 - 0xF2C67B766E067CBLL) = v2;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_192D4716C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x488] + (v7 ^ 0x80B6B977) - 0xBA9E7287FD0DA0;
  v10 = STACK[0x480] - 0x4ECB063CB07DE7C0;
  v11 = (v9 < 0xE8C2EBF4) ^ (v10 < 0xE8C2EBF4);
  v12 = v9 > v10;
  if (v11)
  {
    v12 = v9 < 0xE8C2EBF4;
  }

  return (*(v8 + 8 * ((21 * v12) | 0x742)))(a1, a2, a3, a4, a5, v8, a7, 0xF2C67B766E067CBLL);
}

uint64_t sub_192D47240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 232) = 0;
  LODWORD(STACK[0x3F0]) = -2135508617;
  return (*(a6 + 8 * v6))(a1, a2, a3, a4, a5);
}

uint64_t sub_192D47700@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 0x785FEF64C8799D66) = v2;
  *(v2 - 0x785FEF64C8799D5ELL) = *(a1 + v1);
  *(a1 + v1) = v2;
  return (*(v5 + 8 * v3))();
}

uint64_t sub_192D47810@<X0>(uint64_t a1@<X5>, unsigned __int16 a2@<W8>)
{
  *(v5 + 160) = v2;
  LODWORD(STACK[0x3F0]) = v4;
  return (*(a1 + 8 * ((1656 * (a2 == (((97 * (v3 ^ 0x26C)) ^ 0x196) - 19993))) ^ v3)))();
}

uint64_t sub_192D47948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (LODWORD(STACK[0x3F0]) ^ 0x80B6B977) - (((LODWORD(STACK[0x3F0]) ^ 0x80B6B977) << (((v6 + 121) | 0x31) ^ 0x32)) & 0x4B145DA4) + 629812946;
  v8 = ((v7 << (((v6 + 121) ^ 0xEF) + 20)) & 0xBF73FB92 ^ 0xB105980) + (v7 ^ 0x7A33D31B) - 1107349824;
  return (*(a6 + 8 * ((84 * (((v8 - v6) | (v6 - v8)) >> 31)) ^ (v6 - 498673109))))(a1);
}

uint64_t sub_192D47A18(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v10 = v8 - a1 < 0x10 || (v7 + a5 - 1606024649) < 8;
  v11 = *(a6 + 8 * ((((v10 ^ (v6 + 18)) & 1) * ((v6 - 1946226286) & 0xFF57FBEF ^ 0x8B56F36C)) ^ v6));
  STACK[0x288] = a1;
  return v11();
}

uint64_t sub_192D47B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v36 = *(a6 + 8 * v32);
  *&STACK[0x250] = vdupq_n_s64(0x38uLL);
  *&STACK[0x260] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x230] = vdupq_n_s64(0x1C4559FE42F2471EuLL);
  *&STACK[0x240] = vdupq_n_s64(v34);
  *&STACK[0x200] = vdupq_n_s64(0x885B269C0EA5AB6FLL);
  v49 = vdupq_n_s64(0xC809DE93B29A9CA6);
  v48 = vdupq_n_s64(0xC3A45B3224F8E4BDLL);
  v38 = vdupq_n_s64(v35);
  v37 = vdupq_n_s64(0x490250233B9E532uLL);
  v40 = vdupq_n_s64(0xF2478EF55D5677EuLL);
  v39 = vdupq_n_s64(0x1714E4FD2C290A36uLL);
  v42 = vdupq_n_s64(0x847878817CDC94D0);
  v41 = vdupq_n_s64(0x786DC38855154C40uLL);
  v44 = vdupq_n_s64(0x8A81072F436C2241);
  v43 = vdupq_n_s64(0x3172E8D0BC90C0AEuLL);
  v45 = vdupq_n_s64(0xE136266DBFBEAC04);
  v46 = vdupq_n_s64(0x2774BE880686A81DuLL);
  return v36(a1, (v33 + a5 - 1606024656), (v33 + a5 - 1606024655), (v33 + a5 - 1606024654), (v33 + a5 - 1606024653), (v33 + a5 - 1606025086), (v33 + a5 - 1606024651), (v33 + a5 - 1606024650), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, v48.i64[0], v48.i64[1], v46.i64[0], v46.i64[1], v49.i64[0], v49.i64[1], v45.i64[0], v45.i64[1], v44.i64[0], v44.i64[1], v43.i64[0], v43.i64[1], v42.i64[0], v42.i64[1], v41.i64[0], v41.i64[1], v40.i64[0], v40.i64[1], v39.i64[0], v39.i64[1], v38.i64[0], v38.i64[1], v37.i64[0], v37.i64[1]);
}

uint64_t sub_192D47D64(double a1, double a2, int8x16_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, int a10, int a11, int a12, int a13, int a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v89 = (a16 + v68 + 8);
  v90.i64[0] = v72 + v89;
  v90.i64[1] = v72 + (a15 + v68 + 8);
  v91.i64[0] = v72 + (a14 + v68 + v69 + 8);
  v92.i64[0] = v72 + (a12 + v68 + 8);
  v92.i64[1] = v72 + (a11 + v68 + 8);
  v91.i64[1] = v72 + (a13 + v68 + 8);
  v93.i64[0] = v72 + (a10 + v68 + 8);
  v93.i64[1] = v72 + (v70 + v68 + 8);
  v94 = vandq_s8(v93, *&STACK[0x260]);
  v95 = vandq_s8(v92, *&STACK[0x260]);
  v96 = vandq_s8(v90, *&STACK[0x260]);
  v97 = vandq_s8(v91, *&STACK[0x260]);
  v98 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  *&STACK[0x270] = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), a5);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), a5);
  v101 = veorq_s8(v100, v73);
  v102 = veorq_s8(v99, v73);
  v103 = veorq_s8(v99, a6);
  v104 = veorq_s8(v100, a6);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v104);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v106, v106), v75), v106), v76), v77);
  v108 = vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), v75), v105), v76), v77);
  v111 = veorq_s8(v110, v109);
  v112 = veorq_s8(v107, v108);
  v113 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v112);
  v115 = veorq_s8(vaddq_s64(v113, v111), v78);
  v116 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v117 = veorq_s8(v114, v78);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v119 = veorq_s8(v115, v116);
  v120 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v119);
  v122 = vaddq_s64(v120, v118);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v121, v79), vorrq_s8(v121, a7)), a7), v80);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v122, v79), vorrq_s8(v122, a7)), a7), v80);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v126 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v126);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v128, v128), v81), v128), v82), v83);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), v81), v127), v82), v83);
  v131 = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v132 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v133 = veorq_s8(v129, v131);
  v134 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v133);
  v136 = vaddq_s64(v134, v132);
  v137 = veorq_s8(v136, v84);
  v138 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v136, a8), v85), v137), vandq_s8(v137, a8));
  v139 = veorq_s8(v135, v84);
  v140 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v135, a8), v85), v139), vandq_s8(v139, a8)), v86);
  v141 = veorq_s8(v138, v86);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v143 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142), v87);
  v145 = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v143), v87);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v148 = veorq_s8(v144, v145);
  v149 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v151 = vaddq_s64(v98, a5);
  v152 = vaddq_s64(v150, v148);
  v153 = vaddq_s64(v149, v147);
  v194.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v153, v88), vorrq_s8(v153, v74)), v74), a4), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), a3)));
  v194.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v152, v88), vorrq_s8(v152, v74)), v74), a4), vnegq_s64(vandq_s8(vshlq_n_s64(v92, 3uLL), a3)));
  v154 = veorq_s8(v151, v73);
  v155 = veorq_s8(v151, a6);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v156, v156), v75), v156), v76), v77);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), v78);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v161, v79), vorrq_s8(v161, a7)), a7), v80);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v164, v164), v81), v164), v82), v83);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(v167, v84);
  v169 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v167, a8), v85), v168), vandq_s8(v168, a8)), v86);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v87);
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL)));
  v173 = vaddq_s64(*&STACK[0x270], a5);
  v194.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v172, v88), vorrq_s8(v172, v74)), v74), a4), vnegq_s64(vandq_s8(vshlq_n_s64(v90, 3uLL), a3)));
  v174 = veorq_s8(v173, v73);
  v175 = veorq_s8(v173, a6);
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v176, v176), v75), v176), v76), v77);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v78);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v181, v79), vorrq_s8(v181, a7)), a7), v80);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183);
  v185 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v184, v184), v81), v184), v82), v83);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186);
  v188 = veorq_s8(v187, v84);
  v189 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v187, a8), v85), v188), vandq_s8(v188, a8)), v86);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v87);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL)));
  v194.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192, v88), vorrq_s8(v192, v74)), v74), a4), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), a3)));
  *(v66 + v89) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v194, a65)), *(v72 + v89 - 7));
  return (*(v71 + 8 * (((4 * (v67 == v68)) | (32 * (v67 == v68))) ^ v65)))(a9);
}

uint64_t sub_192D483F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v11 = v6 - 163;
  v12 = ((5 * (v11 ^ 0x441)) ^ 0xFFFFFAB1) & v9;
  v13 = *(a6 + 8 * v11);
  *&STACK[0x230] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x200] = vdupq_n_s64(0x38uLL);
  *&STACK[0x270] = vdupq_n_s64(v10);
  return v13(a1 - 15, a2, (v8 + a5 + v7 - 1), (v8 + a5 + v7 + 1), (v8 + a5 + v7 + 2), (v8 + a5 + v7 + 3), v12);
}

uint64_t sub_192D48658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int8x16_t a16, int8x16_t a17, int8x16_t a18, int64x2_t a19, int8x16_t a20, int8x16_t a21, uint64_t a22, uint64_t a23, int8x16_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int8x16_t a29, int8x16_t a30, uint64_t a31, uint64_t a32, int8x16_t a33, int64x2_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int8x16_t a39, int8x16_t a40, int8x16_t a41, int8x16_t a42, int8x16_t a43, int8x16_t a44, int8x16_t a45, int64x2_t a46)
{
  v59.i64[0] = v55 + (v48 + v50 + 16);
  v59.i64[1] = v55 + (v46 + v50 + 16);
  v60.i64[0] = v55 + (a6 + v50 + 16);
  v60.i64[1] = v55 + (a5 + v50 + 16);
  v61.i64[0] = v55 + (a4 + v50 + 16);
  v61.i64[1] = v55 + (v47 + v50 + 16);
  v62 = (v49 + v50 + 16);
  v63.i64[0] = v55 + (a3 + v50 + 16);
  v63.i64[1] = v55 + (v56 + v50 + 16);
  *&STACK[0x260] = v63;
  v63.i64[0] = v55 + (v52 + v50 + 16);
  v63.i64[1] = v55 + (HIDWORD(a23) + v50 + 16);
  *&STACK[0x250] = v63;
  v63.i64[0] = v55 + v62;
  v63.i64[1] = v55 + a2 + v50 + (v51 ^ (a9 + 862)) + 16;
  v64 = v63;
  v226 = v63;
  v65 = vandq_s8(v61, *&STACK[0x230]);
  v66 = vandq_s8(v60, *&STACK[0x230]);
  v67 = vandq_s8(v59, *&STACK[0x230]);
  v68 = vandq_s8(v64, *&STACK[0x230]);
  v69 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v227 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), a34);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), a34);
  v72 = veorq_s8(v71, a33);
  v73 = veorq_s8(v70, a33);
  v74 = veorq_s8(v70, a30);
  v75 = veorq_s8(v71, a30);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v75);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v74);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v77, v77), a29), v77), a46), a24);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v76, v76), a29), v76), a46), a24);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v80), a21);
  v83 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v81), a21);
  v85 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v86 = veorq_s8(v82, v83);
  v87 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v86);
  v89 = vaddq_s64(v87, v85);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v88, *&STACK[0x270]), vorrq_s8(v88, a39)), a39), a45);
  v91 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v89, *&STACK[0x270]), vorrq_s8(v89, a39)), a39), a45);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v94 = veorq_s8(v90, v91);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v94);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v96, v96), a20), v96), a19), a18);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v95, v95), a20), v95), a19), a18);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v100 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v101 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v100);
  v103 = vaddq_s64(v101, v99);
  v104 = veorq_s8(v103, a17);
  v105 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v103, v58), a44), v104), vandq_s8(v104, v58));
  v106 = veorq_s8(v102, a17);
  v107 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v102, v58), a44), v106), vandq_s8(v106, v58)), a43);
  v108 = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v110 = veorq_s8(v105, a43);
  v111 = veorq_s8(v110, v109);
  v112 = veorq_s8(v107, v108);
  v113 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v112);
  v115 = veorq_s8(vaddq_s64(v113, v111), a42);
  v116 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v117 = veorq_s8(v114, a42);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v119 = veorq_s8(v115, v116);
  v120 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v115.i64[0] = v55 + (HIDWORD(a26) + v50 + 16);
  v115.i64[1] = v55 + (a27 + v50 + 16);
  *&STACK[0x240] = v115;
  v122 = vaddq_s64(v69, a34);
  v123 = vaddq_s64(v121, v119);
  v124 = vaddq_s64(v120, v118);
  v228.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, a41), vorrq_s8(v124, v57)), v57), a16), vnegq_s64(vandq_s8(vshlq_n_s64(v61, 3uLL), *&STACK[0x200])));
  v228.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v123, a41), vorrq_s8(v123, v57)), v57), a16), vnegq_s64(vandq_s8(vshlq_n_s64(v60, 3uLL), *&STACK[0x200])));
  v125 = veorq_s8(v122, a33);
  v126 = veorq_s8(v122, a30);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v127, v127), a29), v127), a46), a24);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), a21);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v132, *&STACK[0x270]), vorrq_s8(v132, a39)), a39), a45);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v135, v135), a20), v135), a19), a18);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137);
  v139 = veorq_s8(v138, a17);
  v140 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v138, v58), a44), v139), vandq_s8(v139, v58)), a43);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141), a42);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v141.i64[0] = v55 + (a31 + v50 + 16);
  v141.i64[1] = v55 + (v54 + v50 + 16);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143);
  v145 = vandq_s8(v141, *&STACK[0x230]);
  v146 = vaddq_s64(v227, a34);
  v228.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v144, a41), vorrq_s8(v144, v57)), v57), a16), vnegq_s64(vandq_s8(vshlq_n_s64(v59, 3uLL), *&STACK[0x200])));
  v147 = veorq_s8(v146, a33);
  v148 = veorq_s8(v146, a30);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v149, v149), a29), v149), a46), a24);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), a21);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153);
  v155 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v154, *&STACK[0x270]), vorrq_s8(v154, a39)), a39), a45);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156);
  v158 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v157, v157), a20), v157), a19), a18);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = veorq_s8(v160, a17);
  v162 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v160, v58), a44), v161), vandq_s8(v161, v58)), a43);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), a42);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v167 = vandq_s8(*&STACK[0x240], *&STACK[0x230]);
  v168 = vaddq_s64(v166, v165);
  v169 = vandq_s8(*&STACK[0x250], *&STACK[0x230]);
  v228.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v168, a41), vorrq_s8(v168, v57)), v57), a16), vnegq_s64(vandq_s8(vshlq_n_s64(v226, 3uLL), *&STACK[0x200])));
  v170 = vandq_s8(*&STACK[0x260], *&STACK[0x230]);
  v171 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), a34);
  v174 = vaddq_s64(v172, a34);
  v227.i64[0] = vqtbl4q_s8(v228, a40).u64[0];
  v228.val[0] = veorq_s8(v174, a33);
  v228.val[1] = veorq_s8(v173, a33);
  v228.val[2] = veorq_s8(v173, a30);
  v228.val[3] = veorq_s8(v174, a30);
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL), v228.val[3]);
  v228.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v228.val[2]);
  v228.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v228.val[1], v228.val[1]), a29), v228.val[1]), a46), a24);
  v228.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v228.val[0], v228.val[0]), a29), v228.val[0]), a46), a24);
  v175 = vsraq_n_u64(vshlq_n_s64(v228.val[2], 3uLL), v228.val[2], 0x3DuLL);
  v228.val[2] = veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v228.val[3], 3uLL), v228.val[3], 0x3DuLL));
  v228.val[3] = veorq_s8(v228.val[1], v175);
  v176 = vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL);
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v228.val[3]);
  v228.val[1] = veorq_s8(vaddq_s64(v176, v228.val[2]), a21);
  v177 = vsraq_n_u64(vshlq_n_s64(v228.val[2], 3uLL), v228.val[2], 0x3DuLL);
  v228.val[0] = veorq_s8(v228.val[0], a21);
  v228.val[2] = veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v228.val[3], 3uLL), v228.val[3], 0x3DuLL));
  v228.val[3] = veorq_s8(v228.val[1], v177);
  v178 = vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL);
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v228.val[3]);
  v228.val[1] = vaddq_s64(v178, v228.val[2]);
  v228.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228.val[0], *&STACK[0x270]), vorrq_s8(v228.val[0], a39)), a39), a45);
  v228.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228.val[1], *&STACK[0x270]), vorrq_s8(v228.val[1], a39)), a39), a45);
  v228.val[2] = veorq_s8(v228.val[1], vsraq_n_u64(vshlq_n_s64(v228.val[2], 3uLL), v228.val[2], 0x3DuLL));
  v228.val[3] = veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v228.val[3], 3uLL), v228.val[3], 0x3DuLL));
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL), v228.val[3]);
  v228.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v228.val[2]);
  v228.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v228.val[1], v228.val[1]), a20), v228.val[1]), a19), a18);
  v179 = vsraq_n_u64(vshlq_n_s64(v228.val[2], 3uLL), v228.val[2], 0x3DuLL);
  v228.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v228.val[0], v228.val[0]), a20), v228.val[0]), a19), a18);
  v228.val[2] = veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v228.val[3], 3uLL), v228.val[3], 0x3DuLL));
  v228.val[3] = veorq_s8(v228.val[1], v179);
  v180 = vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL);
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v228.val[3]);
  v228.val[1] = vaddq_s64(v180, v228.val[2]);
  v181 = veorq_s8(v228.val[1], a17);
  v228.val[1] = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v228.val[1], v58), a44), v181), vandq_s8(v181, v58));
  v182 = veorq_s8(v228.val[0], a17);
  v228.val[0] = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v228.val[0], v58), a44), v182), vandq_s8(v182, v58)), a43);
  v228.val[1] = veorq_s8(v228.val[1], a43);
  v228.val[2] = veorq_s8(v228.val[1], vsraq_n_u64(vshlq_n_s64(v228.val[2], 3uLL), v228.val[2], 0x3DuLL));
  v228.val[3] = veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v228.val[3], 3uLL), v228.val[3], 0x3DuLL));
  v228.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v228.val[2]), a42);
  v183 = vsraq_n_u64(vshlq_n_s64(v228.val[2], 3uLL), v228.val[2], 0x3DuLL);
  v228.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL), v228.val[3]), a42);
  v228.val[2] = veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v228.val[3], 3uLL), v228.val[3], 0x3DuLL));
  v228.val[3] = veorq_s8(v228.val[1], v183);
  v184 = vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL);
  v185 = vaddq_s64(v171, a34);
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v228.val[3]);
  v228.val[1] = vaddq_s64(v184, v228.val[2]);
  v228.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228.val[1], a41), vorrq_s8(v228.val[1], v57)), v57), a16), vnegq_s64(vandq_s8(vshlq_n_s64(v141, 3uLL), *&STACK[0x200])));
  v228.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228.val[0], a41), vorrq_s8(v228.val[0], v57)), v57), a16), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x240], 3uLL), *&STACK[0x200])));
  v186 = veorq_s8(v185, a33);
  v187 = veorq_s8(v185, a30);
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v188, v188), a29), v188), a46), a24);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), a21);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v193 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192);
  v194 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v193, *&STACK[0x270]), vorrq_s8(v193, a39)), a39), a45);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195);
  v197 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v196, v196), a20), v196), a19), a18);
  v198 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v198);
  v200 = veorq_s8(v199, a17);
  v201 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v199, v58), a44), v200), vandq_s8(v200, v58)), a43);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v203 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202), a42);
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL)));
  v205 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), a34);
  v228.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v204, a41), vorrq_s8(v204, v57)), v57), a16), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x250], 3uLL), *&STACK[0x200])));
  v206 = veorq_s8(v205, a33);
  v207 = veorq_s8(v205, a30);
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v207);
  v209 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v208, v208), a29), v208), a46), a24);
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v211 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210), a21);
  v212 = veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v212);
  v214 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v213, *&STACK[0x270]), vorrq_s8(v213, a39)), a39), a45);
  v215 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL));
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215);
  v217 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v216, v216), a20), v216), a19), a18);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL));
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218);
  v220 = veorq_s8(v219, a17);
  v221 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v219, v58), a44), v220), vandq_s8(v220, v58)), a43);
  v222 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v222), a42);
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL)));
  v228.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v224, a41), vorrq_s8(v224, v57)), v57), a16), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x260], 3uLL), *&STACK[0x200])));
  v228.val[0].i64[0] = vqtbl4q_s8(v228, a40).u64[0];
  v228.val[1].i64[0] = v227.i64[0];
  v228.val[1].i64[1] = v228.val[0].i64[0];
  v228.val[1] = vrev64q_s8(v228.val[1]);
  *(a1 + v62) = veorq_s8(vextq_s8(v228.val[1], v228.val[1], 8uLL), *(v55 + v62 - 15));
  return (*(v53 + 8 * ((13 * (a7 + v50 != 0)) ^ a8)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16.i64[0], a16.i64[1], a17.i64[0], a17.i64[1], a18.i64[0], a18.i64[1], a19.i64[0], a19.i64[1], a20.i64[0], a20.i64[1], a21.i64[0], a21.i64[1], a22, a23, a24.i64[0], a24.i64[1], a25, a26, a27, a28, a29.i64[0], a29.i64[1], a30.i64[0], a30.i64[1], a31, a32);
}

uint64_t sub_192D49420@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v16 = (v3 + v15);
  v17 = __ROR8__((v14 + v16) & 0xFFFFFFFFFFFFFFF8, 8) + v11;
  v18 = __ROR8__(a1 ^ v17, 8);
  v19 = v17 ^ v6;
  v20 = ((v10 | (2 * (v18 + v19))) - (v18 + v19) + v12) ^ a3;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x490250233B9E532;
  v23 = __ROR8__(v22, 8);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = (v7 - ((v23 + v24) | v7) + ((v23 + v24) | v13)) ^ 0x1714E4FD2C290A36;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0xF2478EF55D5677ELL) - (v27 + v26) + 0x786DC38855154C40) ^ 0x847878817CDC94D0;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((v30 + v29) & v5 ^ 0x8A81072F436C2241) + ((v30 + v29) ^ 0x3172E8D0BC90C0AELL) - (((v30 + v29) ^ 0x3172E8D0BC90C0AELL) & v5)) ^ 0xE136266DBFBEAC04;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xC809DE93B29A9CA6;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = STACK[0x298];
  *(STACK[0x288] + v16) = (((v4 - ((v35 + v34) | v4) + ((v35 + v34) | 0x2774BE880686A81DLL)) ^ 0xC3A45B3224F8E4BDLL) >> (8 * ((v14 + v3 + v15) & 7))) ^ *(v14 + v16);
  return (*(v36 + 8 * (((v3 - 1 == a2) * v9) ^ v8)))();
}

uint64_t sub_192D497DC@<X0>(int a1@<W2>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v9 = v7 ^ 0x77A;
  v10 = *(v6 + v5);
  v11 = *(v4 + 40 * v3 + 24);
  *(v8 + 248) = a3;
  LODWORD(STACK[0x200]) = v11;
  LODWORD(STACK[0x378]) = v11;
  LODWORD(STACK[0x270]) = 34523;
  LOWORD(STACK[0x322]) = -31013;
  LODWORD(STACK[0x2A8]) = a1 + 4;
  LODWORD(STACK[0x2AC]) = 542555936;
  STACK[0x250] = v10;
  STACK[0x318] = v10;
  STACK[0x240] = 0x27DB1ED5A73C4037;
  *(v8 + 176) = 0x27DB1ED5A73C4037;
  LODWORD(STACK[0x300]) = -834235651;
  return (*(a2 + 8 * v9))();
}

uint64_t sub_192D498DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v7 + 40 * v6;
  v11 = *(v10 + 24);
  v12 = *(v10 + 8);
  STACK[0x2E8] = *(v9 + 288);
  LODWORD(STACK[0x35C]) = v11;
  LODWORD(STACK[0x3D4]) = v12;
  LODWORD(STACK[0x37C]) = -1985697501;
  return (*(a6 + 8 * v8))(a1, a2, a3, a4, a5);
}

uint64_t sub_192D49A14@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v7 = v3 + 40 * v2;
  v8 = *(v7 + 32);
  v9 = v5 + 0x27DB1ED5A73C4037;
  LODWORD(v7) = *(v7 + 24);
  *(v6 + 248) = a2;
  LODWORD(STACK[0x200]) = v7;
  LODWORD(STACK[0x378]) = v7;
  LODWORD(STACK[0x270]) = 56045;
  LOWORD(STACK[0x322]) = -9491;
  LODWORD(STACK[0x2A8]) = v8;
  LODWORD(STACK[0x2AC]) = 542555936;
  STACK[0x318] = 0x4D110E80B61FDFECLL;
  STACK[0x240] = v9;
  *(v6 + 176) = v9;
  LODWORD(STACK[0x300]) = 805052907;
  v10 = *(a1 + 8 * (v4 + 169));
  STACK[0x250] = 0x4D110E80B61FDFECLL;
  return v10();
}

uint64_t sub_192D49C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x200]) = STACK[0x378];
  LODWORD(STACK[0x270]) = LOWORD(STACK[0x322]);
  STACK[0x250] = STACK[0x318];
  STACK[0x240] = *(v7 + 176);
  return (*(a6 + 8 * (v6 ^ 0xB1BB4143 ^ (561 * (v6 >= v6 - 662876772)))))(a1, a2, a3, a4, a5);
}

uint64_t sub_192D49C8C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  *(v5 + 56) = a3;
  LODWORD(STACK[0x288]) = v4;
  v7 = a3 != a2 && v4 + (((v3 - 412) | 0x6A8) ^ 0xFB0062DB) < 0xFFFFFFF6;
  return (*(a1 + 8 * (v7 | (32 * v7) | v3)))();
}

uint64_t sub_192D49CD8()
{
  v2 = v0 + 2030;
  v3 = v0 + 1;
  v4 = STACK[0x298];
  v5 = (*(STACK[0x298] + 8 * (v0 + 2278)))(32);
  *(v1 + 64) = v5 + 0x785FEF64C8799D66;
  STACK[0x260] = v5;
  return (*(v4 + 8 * ((((v3 ^ (v5 == 0)) & 1) * (v2 ^ 0x9AA)) ^ v2)))();
}

uint64_t sub_192D49D60()
{
  v1 = STACK[0x260];
  *v1 = 0x785FEF64C8799D66;
  *(v1 + 8) = 0x785FEF64C8799D66;
  v2 = STACK[0x288];
  *(v1 + 16) = ((((v0 ^ 0xA37) - 553) | 0x809) ^ 0x1E9469F8) + LODWORD(STACK[0x288]);
  v3 = STACK[0x298];
  v4 = (*(STACK[0x298] + 8 * (v0 ^ 0x308)))(((6 * (v0 ^ 0x997)) ^ 0xFB0064D3) + v2);
  *(v1 + 24) = v4;
  return (*(v3 + 8 * ((1982 * (v4 != 0)) ^ v0 ^ 0xA37)))();
}

uint64_t sub_192D49E14()
{
  v1 = LODWORD(STACK[0x200]) - ((2 * LODWORD(STACK[0x200]) + 1180282950) & 0x9F9621CC) + 1255577572 + ((v0 - 2013180042) | 0x20200101);
  v2 = *(STACK[0x298] + 8 * (v0 + 37));
  LODWORD(STACK[0x230]) = ((10458 * LODWORD(STACK[0x270]) + 26743) | 0xFFFFAE35) + 27539 * LODWORD(STACK[0x270]) + 13482;
  return v2(0x74F472E448216F49, 0x91F090D5486CA88BLL, v1, 0xFE5951FB672C4BC9, 0xE13500AF98B0C0DCLL);
}

uint64_t sub_192D4A004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, unsigned int a63)
{
  v72 = *(v67 + 24);
  v73 = (__ROR8__((v72 + 4) & 0xFFFFFFFFFFFFFFF8, 8) + v65) & 0xF9FFFFFFFFFFFFFFLL;
  v74 = v73 ^ 0x1E4559FE42F2471ELL;
  v73 ^= 0x8A5B269C0EA5AB6FLL;
  v75 = (__ROR8__(v74, 8) + v73) ^ a5;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ v64;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ v71;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ v68;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ v63;
  v84 = __ROR8__(v83, 8);
  v85 = v83 ^ __ROR8__(v82, 61);
  v86 = (((2 * (v84 + v85)) & 0xAAAA746556851DE8) - (v84 + v85) - 0x55553A32AB428EF5) ^ 0x62A31B5EE627EDADLL;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  *(v72 + 4) = (((((2 * (v88 + v87)) | 0xC5585AB08F272530) - (v88 + v87) - 0x62AC2D5847939298) ^ 0x867CC8E265EDDE38) >> (8 * ((v72 + 4) & 7))) ^ BYTE1(LODWORD(STACK[0x230])) ^ 0xA8;
  v89 = __ROR8__((v72 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v90 = (v89 + v65) ^ 0x885B269C0EA5AB6FLL;
  v91 = (__ROR8__((v89 + v65) ^ 0x1C4559FE42F2471ELL, 8) + v90) ^ a5;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ v64;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = __ROR8__(v93, 8);
  v96 = (v95 + v94 - ((2 * (v95 + v94)) & 0xAADD75A8558035C0) - 0x2A91452BD53FE520) ^ 0x2872CFE705BF1667;
  v97 = v96 ^ __ROR8__(v94, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ v68;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ v63;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (0x964AD0183F74BFF6 - ((v102 + v101) | 0x964AD0183F74BFF6) + ((v102 + v101) | 0x69B52FE7C08B4009)) ^ 0xA1BCF1747211DCAFLL;
  *(v72 + 5) = a61 ^ (((__ROR8__(v103, 8) + (v103 ^ __ROR8__(v101, 61))) ^ v66) >> (8 * ((v72 + 5) & 7)));
  return (*(STACK[0x298] + 8 * ((v69 + v70 - 328) ^ 0x22B ^ (1993 * (((v69 + v70 - 328) ^ 0x2EC2FF48u) > 0x400AE256)))))(a1, a2, a63, a4);
}

uint64_t sub_192D4A2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v21 = *(v14 + 24) + v17 - 0x1E06D87D68ADC517;
  v22 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = ((v22 + v10) | 0x7E054FB39FC80770) - ((v22 + v10) | a7) + a7;
  v24 = __ROR8__(v23 ^ 0x6240164DDD3A406ELL, 8);
  v23 ^= 0xF65E692F916DAC1FLL;
  v25 = (v24 + v23) ^ a5;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v9;
  v28 = *(STACK[0x298] + 8 * v16);
  v29 = v27 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v27, 8) + v29) ^ v19;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v18;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v8;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v13;
  *v21 = (((__ROR8__(v36, 8) + (v36 ^ __ROR8__(v35, 61))) ^ v11) >> (8 * (v21 & 7u))) ^ HIBYTE(a3) ^ 0x4F;
  v37 = __ROR8__((v21 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v38 = ((0x4D7C3013B6750271 - v37) & 0x7C0A1F12C3784FEDLL) + v37 + v10 - ((v37 + v10) & 0x7A0A1F12C3784FEDLL);
  v39 = v38 ^ 0x624F46EC818A08F3;
  v38 ^= 0xF651398ECDDDE482;
  v40 = __ROR8__(v39, 8);
  v41 = (a1 - ((v40 + v38) | a1) + ((v40 + v38) | 0x8B0B8D1BB7DE90B6)) ^ 0x6A3E8DB42F6E506ALL;
  v42 = v41 ^ __ROR8__(v38, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (a6 - ((v43 + v42) | a6) + ((v43 + v42) | 0xA2A781ACCAE1E428)) ^ 0xA637A4AEF958011ALL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (a4 - ((v46 + v45) | a4) + ((v46 + v45) | 0x1A6AE0498D3B436)) ^ 0xFCBADB37B7ACB8B1;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (v49 + v48 - ((2 * (v49 + v48)) & 0x21AE5081A9A9FA1ELL) - 0x6F28D7BF2B2B02F1) ^ 0x6CC29349FD1D259FLL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = __ROR8__(v50, 8);
  v53 = __ROR8__((v52 + v51 - ((2 * (v52 + v51)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL, 8);
  v54 = (v52 + v51 - ((2 * (v52 + v51)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL ^ __ROR8__(v51, 61);
  *(v21 + 1) = (((__ROR8__((v53 + v54) ^ v13, 8) + ((v53 + v54) ^ v13 ^ __ROR8__(v54, 61))) ^ v11) >> (8 * ((v21 + 1) & 7))) ^ BYTE2(a3) ^ 0xCB;
  v55 = __ROR8__((v21 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v56 = v55 - ((2 * v55 + 0x65079FD89315FB1CLL) & 0x706B8D24AA79CEEALL) + 0x6AB9967E9EC7E503;
  v57 = __ROR8__(v56 ^ 0x24709F6C17CEA06BLL, 8);
  v56 ^= 0xB06EE00E5B994C1ALL;
  v58 = (((2 * (v57 + v56)) | 0x84A35F8B8F02A07ELL) - (v57 + v56) - 0x4251AFC5C781503FLL) ^ 0xA364AF6A5F3190E3;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (((2 * (v60 + v59)) | 0x5AE37AFB8B700D10) - (v60 + v59) + 0x528E42823A47F978) ^ 0xA9E1987FF601E3BALL;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = __ROR8__(v61, 8);
  v64 = __ROR8__((((2 * (v63 + v62)) | 0xA0645171747853D8) - (v63 + v62) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL, 8);
  v65 = (((2 * (v63 + v62)) | 0xA0645171747853D8) - (v63 + v62) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL ^ __ROR8__(v62, 61);
  v66 = (((2 * (v64 + v65)) & 0xC0FA970E03639268) - (v64 + v65) - 0x607D4B8701B1C935) ^ 0x63970F71D787EE5BLL;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((2 * (v68 + v67)) & 0x3F1A3AC322107E48) - (v68 + v67) - 0x1F8D1D6191083F25) ^ 0xABF58BCC9AA50E14;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (((2 * (v71 + v70)) | 0xA1336988A728D0CALL) - (v71 + v70) - 0x5099B4C453946865) ^ 0x98906A57E10EF4C3;
  v73 = __ROR8__(v72, 8);
  v74 = __ROR8__(v70, 61);
  *(v21 + 2) = (((v20 - ((v73 + (v72 ^ v74)) | v20) + ((v73 + (v72 ^ v74)) | 0x83B01FAA9DE726C2)) ^ 0x6760FA10BF996A62) >> (8 * ((v21 + 2) & 7))) ^ BYTE1(a3) ^ 0x10;
  v75 = __ROR8__((v21 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v76 = v75 - ((2 * v75 + 0x65079FD89315FB1CLL) & 0xA7469D16E9FCA87ALL) + 0x6271E77BE8951CBLL;
  v77 = v76 ^ 0xCFE61775360C1323;
  v76 ^= 0x5BF868177A5BFF52uLL;
  v78 = __ROR8__(v77, 8);
  v79 = (((2 * (v78 + v76)) & 0x3185DFB098D2C9E8) - (v78 + v76) - 0x18C2EFD84C6964F5) ^ 0x60810882B265BD7;
  v80 = v79 ^ __ROR8__(v76, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ v9;
  v82 = __ROR8__(v81, 8);
  v83 = v81 ^ __ROR8__(v80, 61);
  v84 = (a8 - ((v82 + v83) | a8) + ((v82 + v83) | 0xBD3AA96CA92701DDLL)) ^ 0x4026DC5F86580D5ALL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (((2 * (v86 + v85)) & 0xDC1EDE556F26AEE8) - (v86 + v85) + a2) ^ v15;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ v8;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ v13;
  *(v21 + 3) = a3 ^ v12 ^ (((__ROR8__(v91, 8) + (v91 ^ __ROR8__(v90, 61))) ^ v11) >> (8 * ((v21 + 3) & 7)));
  return v28();
}

uint64_t sub_192D4AC44@<X0>(uint64_t a1@<X4>, int a2@<W8>)
{
  v10 = *(*(v8 + 64) - 0x785FEF64C8799D4ELL);
  v11 = 0xDF474C4232143659 * STACK[0x250] - (((((a2 - 1149406622) & 0xECA3DD3D) + 0x3E8E9883BC071B8DLL) * STACK[0x250] + 0x3A791F88BE7EBDE8) & 0x2C65C7A2CEED3AA6) + 0x536F7395C6B5FC47;
  v12 = __ROR8__((v10 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = ((v12 + v4) | 0x8EF30571B3E03BF9) - ((v12 + v4) | 0x710CFA8E4C1FC406) + 0x710CFA8E4C1FC406;
  v14 = v13 ^ 0x92B65C8FF1127CE7;
  v13 ^= 0x6A823EDBD459096uLL;
  v15 = (__ROR8__(v14, 8) + v13) ^ a1;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ v3;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((v19 + v18) | 0x6257A18AC6AFEA71) - ((v19 + v18) | 0x9DA85E753950158ELL) - 0x6257A18AC6AFEA72) ^ 0x9F4BD4B9E9D0E6F6;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ v7;
  v23 = __ROR8__(v22, 8);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = (((2 * (v23 + v24)) | 0x73433184586818C6) - (v23 + v24) - 0x39A198C22C340C63) ^ 0x7226F190D866C2ACLL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0x2E6D9124F850C1CLL) - (v27 + v26) - 0x1736C8927C2860FLL) ^ 0x36854DE56AA7E557;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v10[10] = (((((v30 + v29) ^ 0x925E7C0EFFCC6FF1 | 0xFC3CC5473DDD44E5) - ((v30 + v29) ^ 0x925E7C0EFFCC6FF1 | 0x3C33AB8C222BB1ALL) + 0x3C33AB8C222BB1ALL) ^ 0x8AB25CF3E06F67B4) >> (8 * ((v10 + 10) & 7u))) ^ HIBYTE(v11) ^ 0x16;
  v31 = __ROR8__((v10 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = ((v31 + v4) & 0x5914460E7C6C43D9 ^ 0x4100000418440108) + ((v31 + v4) & 0xA0EBB9F18393BC26 ^ 0x4A3312100820427) - 1;
  v33 = v32 ^ 0x5BE668DB5A344230;
  v32 ^= 0xCFF817B91663AE41;
  v34 = (__ROR8__(v33, 8) + v32) ^ a1;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v3;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v9;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v40 + v39 - ((2 * (v40 + v39)) & 0x3B57AD3684D86B7ALL) - 0x62542964BD93CA43) ^ 0x61BE6D926BA5ED2DLL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (v43 + v42 - ((2 * (v43 + v42)) & 0x6EEDA84EBE2C2B7ELL) - 0x48892BD8A0E9EA41) ^ 0xFCF1BD75AB44DB70;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((2 * (v46 + v45)) | 0xFED65BFA7285710) - (v46 + v45) - 0x7F6B2DFD3942B88) ^ 0xCFFF6C4C610EB72ELL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v10[11] = (((((v49 + v48) | 0x21983AC56B0BB129) - ((v49 + v48) | 0xDE67C53A94F44ED6) - 0x21983AC56B0BB12ALL) ^ 0xC548DF7F4975FD89) >> (8 * ((v10 + 11) & 7u))) ^ BYTE6(v11) ^ 0x32;
  v50 = __ROR8__((v10 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v51 = -2 - (((0xD7C3013B6750271 - v50) | 0xEFC9086FACD320D4) + ((v50 + v4) | 0x1036F790532CDF2BLL));
  v52 = v51 ^ 0xF38C5191EE2167CALL;
  v51 ^= 0x67922EF3A2768BBBuLL;
  v53 = (__ROR8__(v52, 8) + v51) ^ a1;
  v54 = __ROR8__(v53, 8);
  v55 = v53 ^ __ROR8__(v51, 61);
  v56 = (((2 * (v54 + v55)) & 0xA44BB63E2DDF8B52) - (v54 + v55) - 0x5225DB1F16EFC5AALL) ^ 0xA94A01E2DAA9DF64;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ v9;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ v7;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (((v62 + v61) | 0xD2E383F95083B686) - ((v62 + v61) | 0x2D1C7C06AF7C4979) + 0x2D1C7C06AF7C4979) ^ 0x9964EAABA4D17849;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ v6;
  v10[12] = (((__ROR8__(v65, 8) + (v65 ^ __ROR8__(v64, 61))) ^ v5) >> (8 * ((v10 + 12) & 7u))) ^ BYTE5(v11) ^ 0xE3;
  v66 = __ROR8__((v10 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v67 = ((2 * (v66 + v4)) | 0xA4234159906F106ALL) - (v66 + v4) + 0x2DEE5F5337C877CBLL;
  v68 = v67 ^ 0xCE54F9528AC5CF2BLL;
  v67 ^= 0x5A4A8630C692235AuLL;
  v69 = __ROR8__(v68, 8);
  v70 = (((v69 + v67) | 0xD738201BC43E983BLL) - ((v69 + v67) | 0x28C7DFE43BC167C4) + 0x28C7DFE43BC167C4) ^ 0x360D20B45C8E58E7;
  v71 = v70 ^ __ROR8__(v67, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (((v72 + v71) ^ 0x70783716B7118F26) - ((2 * ((v72 + v71) ^ 0x70783716B7118F26)) & 0xBAA694FE21B0C1B2) + 0x5D534A7F10D860D9) ^ 0x29BB586B94700ACDLL;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ v9;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (v77 + v76 - ((2 * (v77 + v76)) & 0x17A08F8C8FAF1288) - 0x742FB839B82876BCLL) ^ 0x77C5FCCF6E1E51D4;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ v2;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ v6;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = __ROR8__(v82, 8);
  v10[13] = (((v84 + v83 - ((2 * (v84 + v83)) & 0xB495371DE105E9CELL) - 0x25B564710F7D0B19) ^ 0x3E9A7E34D2FCB847) >> (8 * ((v10 + 13) & 7u))) ^ BYTE4(v11) ^ 0xD1;
  v85 = __ROR8__((v10 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v86 = (0xCD7C3013B6750271 - v85) & 0xF050E761A6289A68 | (v85 + 0x283CFEC498AFD8ELL) & 0x9AF189E59D76597;
  v87 = v86 ^ 0xEE15BE9FE4DADD76;
  v86 ^= 0x7A0BC1FDA88D3107uLL;
  v88 = (__ROR8__(v87, 8) + v86) ^ a1;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((v90 + v89) | 0x349C4C6A3E574525) - ((v90 + v89) | 0xCB63B395C1A8BADALL) - 0x349C4C6A3E574526) ^ 0x300C69680DEEA017;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ v9;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ v7;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = (__ROR8__(v95, 8) + v96) ^ v2;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = __ROR8__(v97, 8);
  v100 = (((2 * (v99 + v98)) | 0x749128A0D39CA49CLL) - (v99 + v98) + 0x45B76BAF9631ADB2) ^ 0x72414AC3DB54CEE8;
  v10[14] = (((__ROR8__(v100, 8) + (v100 ^ __ROR8__(v98, 61))) ^ v5) >> (8 * ((v10 + 14) & 7u))) ^ BYTE3(v11) ^ 0x67;
  v101 = __ROR8__((v10 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v102 = (0x57C3013B6750271 - v101) & 0x5D98955B3706B30 | (v101 + v4) & 0xFA2676AA4C8F94CFLL;
  v103 = v102 ^ 0x199CD0ABF1822C2ELL;
  v102 ^= 0x8D82AFC9BDD5C05FLL;
  v104 = (__ROR8__(v103, 8) + v102) ^ a1;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (((2 * (v106 + v105)) | 0x86D73428622BDA3ALL) - (v106 + v105) - 0x436B9A143115ED1DLL) ^ 0x47FBBF1602AC082FLL;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ v9;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = __ROR8__(v109, 8);
  v112 = (((2 * (v111 + v110)) & 0x407F7AAF3D2F06C8) - (v111 + v110) - 0x203FBD579E978365) ^ 0x23D5F9A148A1A40BLL;
  v113 = v112 ^ __ROR8__(v110, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ v2;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ v6;
  v10[15] = (((__ROR8__(v116, 8) + (v116 ^ __ROR8__(v115, 61))) ^ v5) >> (8 * ((v10 + 15) & 7u))) ^ BYTE2(v11) ^ 0x76;
  v117 = __ROR8__((v10 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v118 = ((2 * v117 + 0x65079FD89315FB1CLL) & 0xE66464AD44856B92) - v117 + 0x5649FDBD14324CA8;
  v119 = v118 ^ 0x948894571F4F0D28;
  v118 ^= 0x96EB355318E159uLL;
  v120 = __ROR8__(v119, 8);
  v121 = (((2 * (v120 + v118)) & 0xA1738BF9A2E70742) - (v120 + v118) + 0x2F463A032E8C7C5ELL) ^ 0xCE733AACB63CBC82;
  v122 = v121 ^ __ROR8__(v118, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ v3;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = __ROR8__(v123, 8);
  v126 = (((2 * (v125 + v124)) & 0x2D730DB5B3BDACF8) - (v125 + v124) - 0x16B986DAD9DED67DLL) ^ 0x145A0C16095E2504;
  v127 = v126 ^ __ROR8__(v124, 61);
  v128 = __ROR8__(v126, 8);
  v129 = (((2 * (v128 + v127)) | 0x4D17F792C6A75DEALL) - (v128 + v127) - 0x268BFBC96353AEF5) ^ 0xDA9E40C04A9A7665;
  v130 = v129 ^ __ROR8__(v127, 61);
  v131 = __ROR8__(v129, 8);
  v132 = (((2 * (v131 + v130)) & 0x305CE5312BE34172) - (v131 + v130) + 0x67D18D676A0E5F46) ^ 0x2C56E4359E5C9189;
  v133 = __ROR8__(v130, 61);
  v134 = (__ROR8__(v132, 8) + (v132 ^ v133)) ^ v6;
  v135 = v134 ^ __ROR8__(v132 ^ v133, 61);
  v136 = __ROR8__(v134, 8);
  v10[16] = (((v136 + v135 - ((2 * (v136 + v135)) & 0x20DC9317F93159D8) - 0x6F91B67403675314) ^ 0x74BEAC31DEE6E04CuLL) >> (8 * ((v10 + 16) & 7u))) ^ BYTE1(v11) ^ 0x9D;
  v137 = __ROR8__((v10 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v138 = ((2 * ((v137 + v4) ^ 0x2CEA70879027C9CDLL)) & 0x2D388CE61C45146ALL) - ((v137 + v4) ^ 0x2CEA70879027C9CDLL) - 0x169C46730E228A36;
  v139 = v138 ^ 0xD9CC90F52308FB19;
  v138 ^= 0x4DD2EF976F5F1768uLL;
  v140 = __ROR8__(v139, 8);
  v141 = (((2 * (v140 + v138)) | 0xC93FF3953A26D81ALL) - (v140 + v138) + 0x1B60063562EC93F3) ^ 0x5AAF96505A3ACD1;
  v142 = __ROR8__(v138, 61);
  v143 = (__ROR8__(v141, 8) + (v141 ^ v142)) ^ v3;
  v144 = v143 ^ __ROR8__(v141 ^ v142, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ v9;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = __ROR8__(v145, 8);
  v148 = (((2 * (v147 + v146)) | 0x9AD9A558F1F83E32) - (v147 + v146) - 0x4D6CD2AC78FC1F19) ^ 0xB17969A55135C789;
  v149 = v148 ^ __ROR8__(v146, 61);
  v150 = (__ROR8__(v148, 8) + v149) ^ v2;
  v151 = v150 ^ __ROR8__(v149, 61);
  v152 = __ROR8__(v150, 8);
  v153 = (v152 + v151 - ((2 * (v152 + v151)) & 0x8BC8E87C0324D542) + 0x45E4743E01926AA1) ^ 0x8DEDAAADB308F607;
  v10[17] = (((__ROR8__(v153, 8) + (v153 ^ __ROR8__(v151, 61))) ^ v5) >> (8 * ((v10 + 17) & 7u))) ^ v11 ^ 0x53;
  return (*(STACK[0x298] + 8 * a2))();
}

uint64_t sub_192D4BD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, unint64_t a8@<X8>)
{
  v23 = (v11 - 1);
  v24 = (v23 | ((v23 < v22) << 32)) + a1;
  v25 = v24 + v12 + 10;
  v26 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8) + v10;
  v27 = __ROR8__(v26 ^ 0x1C4559FE42F2471ELL, 8);
  v26 ^= 0x885B269C0EA5AB6FLL;
  v28 = (((v27 + v26) & a2 ^ a3) + ((v27 + v26) & a4 ^ a5) - 1) ^ a6;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v9;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v21;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v20;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v8;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = __ROR8__((((v38 + v37) & v13 ^ v16) + ((v38 + v37) ^ a7) - (((v38 + v37) ^ a7) & v13)) ^ v17, 8) + ((((v38 + v37) & v13 ^ v16) + ((v38 + v37) ^ a7) - (((v38 + v37) ^ a7) & v13)) ^ v17 ^ __ROR8__(v37, 61));
  *v25 = ((((v18 & (2 * v39)) - v39 + v19) ^ a8) >> (8 * (v25 & 7u))) ^ *(v15 + v24);
  return (*(STACK[0x298] + 8 * ((4095 * (v23 == v22)) ^ v14)))();
}

uint64_t sub_192D4BEA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = v65 + a3 - 431;
  *(v66 + 8) = 0x785FEF64C8799D66;
  v68 = STACK[0x298];
  STACK[0x2F0] = *(STACK[0x298] + 8 * v67);
  return (*(v68 + 8 * (v67 + ((a3 - 1622919846) & 0xB89A7BCD) + 66)))(a65, a2);
}

uint64_t sub_192D4BF94@<X0>(int a1@<W8>)
{
  v3 = a1 & 0xA3F30EFF;
  v4 = (*(v1 + 8 * ((a1 & 0xA3F30EFF) + 930)))();
  v5 = STACK[0x298];
  *(v2 - 0x785FEF64C8799D4ELL) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_192D4C01C()
{
  v2 = STACK[0x298];
  v3 = (*(STACK[0x298] + 8 * (v1 + 602)))(v0 - 0x785FEF64C8799D66);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_192D4C368@<X0>(int a1@<W2>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  *(v7 + 248) = a3;
  LODWORD(STACK[0x200]) = v4;
  LODWORD(STACK[0x378]) = v4;
  LODWORD(STACK[0x270]) = 13153;
  LOWORD(STACK[0x322]) = 13153;
  LODWORD(STACK[0x2A8]) = a1;
  LODWORD(STACK[0x2AC]) = v6;
  STACK[0x318] = v5;
  STACK[0x240] = 0x27DB1ED5A73C4037;
  *(v7 + 176) = 0x27DB1ED5A73C4037;
  STACK[0x250] = v5;
  LODWORD(STACK[0x300]) = 2132892276;
  return (*(a2 + 8 * v3))();
}

uint64_t sub_192D4C45C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v44 = a3;
  *(v43 - 108) = 407104343 * ((((v43 - 112) | 0x95A36244) - ((v43 - 112) & 0x95A36244)) ^ 0xD73229EC) + 1644606322;
  v46 = a1 + 353013743 - ((2 * a1) & 0x2A151FDE);
  v56 = v41;
  (*(v41 + 21240))(v43 - 112, a2, a3, a4, a5, a6, a7, a8);
  *(v43 - 232) = 0xDDBE10913B6226BELL;
  *(v43 - 216) = 0;
  *(v43 - 224) = 1322271599;
  *(v43 - 208) = 807257560;
  *(v43 - 200) = 0x13773EB605DB3FC9;
  *(v43 - 192) = 0xDDBE10913B6226BELL;
  *(v43 - 204) = 2032989188;
  *(v43 - 184) = v46;
  *(v43 - 176) = 0;
  *(v43 - 168) = -455185764;
  *(v43 - 164) = 2032989188;
  *(v43 - 160) = 0x13773EB605DB3FC9;
  *(v43 - 152) = 0xDDBE10913B6226BELL;
  *(v43 - 136) = a2;
  *(v43 - 128) = 0x792CF406FD699315;
  *(v43 - 144) = 353013743;
  *(v43 - 120) = ((2 * v44) & 0x7BF7FFBE) + (v44 ^ 0x3DFBFFDF) - 941670426;
  *(v43 - 116) = 326581942;
  v47 = (*(v56 + 21520))(128);
  HIDWORD(a30) = v42 - 2;
  return (*(v56 + 8 * ((467 * (v47 != 0)) ^ 0x2B2u)))(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, &STACK[0x192C4C9FBB13CC5D], a22, a23, a24, &STACK[0x192C4C9FBB13CC45], a26, a27, a28, a29, a30, a31, a32, a33, a34, v43 + 0x2463A67169D8FE7FLL, &STACK[0x5128F3C4919EC710], a37, &STACK[0x5128F3C4919EC708], a39, a40, a41);
}

uint64_t sub_192D4C6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  *a1 = 0x551AB9ED161FA3A6;
  *(a1 + 8) = 0x1717171717171717;
  *(a1 + 16) = 0x1717171717171717;
  *(a1 + 24) = 0x1717171717171717;
  *(a1 + 32) = 0x1717171717171717;
  *(a1 + 40) = 0x1717171717171717;
  *(a1 + 48) = 0x1717171717171717;
  *(a1 + 56) = 0x1717171717171717;
  *(a1 + 64) = 0x1717171717171717;
  qmemcpy((a1 + 72), "EhMFEhMFp/", 10);
  *(a1 + 84) = -1792230792;
  *(a1 + 104) = 114237931;
  *(a1 + 88) = 0x1717171717171717;
  *(a1 + 96) = 0x1717171717171717;
  *(a1 + 108) = 75;
  if (a47)
  {
    v49 = a1 == 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = !v49;
  return (*(v48 + 8 * ((((v47 ^ 0x2A1) + ((v47 - 462) | 0x109) - 420) * v50) ^ v47)))();
}

uint64_t sub_192D4C78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  *(a47 + 16) = *a1;
  *(a47 + 88) = *(a1 + 72);
  *(a47 + 92) = *(a1 + 76);
  *(a47 + 96) = *(a1 + 80);
  *(a47 + 97) = *(a1 + 81);
  *(a47 + 120) = *(a1 + 104);
  *(a47 + 100) = *(a1 + 84);
  *(a47 + 124) = ((v47 - 79) & 0x7D) + (*(a1 + 108) & 1) - 68;
  return (*(v48 + 8 * v47))();
}

uint64_t sub_192D4C870(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, char a6, int a7, uint64_t a8)
{
  v14 = (v9 - 1) & 0xF;
  *(v10 + v9) = (127 * v14) ^ *(*(a8 + 8 * a7) + v14) ^ *(v14 + *(a8 + 8 * (a7 + 87)) - 4 + 5) ^ *(v14 + *(a8 + 8 * (a7 + 81))) ^ (v8 + ((*(v11 + v9) ^ 0x44) - (a2 ^ a5 & (2 * *(v11 + v9)) ^ 0xE)) * a6);
  return (*(v13 + 8 * (((((a4 + v9) | a3) >= 0) * v12) ^ (a7 + 307))))(a1);
}

uint64_t sub_192D4C958(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v13 = (v10 + v6 + 85) & 0xF;
  *(a3 + v6) = *(v13 + v8 + 5) ^ *(v7 + v13) ^ *(v13 + v9 + 4) ^ (127 * v13) ^ (v5 + ((*(a2 + v10) ^ 0x44) - ((a4 ^ (2 * *(a2 + v10))) & 0x88)) * a5);
  return (*(v12 + 8 * (((v10 != -31) | (8 * (v10 != -31))) ^ (v11 + 1950))))(a1);
}

uint64_t sub_192D4C9D4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *(v3 + 119) = *(a1 + 103);
  *(v3 + 118) = *(a1 + 102);
  *(v3 + 117) = *(a1 + 101);
  *(v3 + 116) = *(a1 + 100);
  *(v3 + 115) = *(a1 + 99);
  *(v3 + 114) = *(a1 + 98);
  *(v3 + 113) = *(a1 + 97);
  *(v3 + 112) = *(a1 + 96);
  *(v3 + 111) = *(a1 + 95);
  *(v3 + 110) = *(a1 + 94);
  *(v3 + 109) = *(a1 + 93);
  *(v3 + 108) = *(a1 + 92);
  *(v3 + 107) = *(a1 + 91);
  *(v3 + 106) = *(a1 + 90);
  *(v3 + 105) = *(a1 + 89);
  *(v3 + 104) = *(a1 + 88);
  v5 = *(a1 + 4);
  *(v3 + 20) = v5;
  return (*(v4 + 8 * (((v5 == a2) * ((v2 + 115894325) & 0xF91799BE ^ 0x920)) ^ v2)))();
}

uint64_t sub_192D4CBA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *(a47 + 8) = a1 + v48;
  return (*(v49 + 8 * ((((v47 - 1611708497) & 0x6010B7FD ^ 0x6E6) * (a47 == 0)) ^ v47)))();
}

uint64_t sub_192D4CC64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *a47 = a1 + v49;
  return (*(v51 + 8 * ((((((((v47 - 1737) | 0x323) - 1616971953) & 0xEE77D7F7) - v48 + 96) ^ 8) * (v50 != 232)) ^ ((v47 - 1737) | 0x323))))();
}

uint64_t sub_192D4CF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  *(v49 - 104) = v48 - 2138855791 * (((v49 - 112) & 0x33C1E0AE | ~((v49 - 112) | 0x33C1E0AE)) ^ 0xC38827D0) + 774;
  v51 = (*(v50 + 8 * (v48 ^ 0xF1B)))(v49 - 112, a2, a3, a4, a5, a6, a7, a8);
  return (*(a48 + 8 * v48))(v51);
}

uint64_t sub_192D4D114@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  a49 = *(v57 + 8 * v53);
  a51 = a1;
  a53 = a31;
  *(v56 - 112) = &a49;
  *(v56 - 104) = v53 - 385730383 * (((v56 - 112) & 0x5B49292B | ~((v56 - 112) | 0x5B49292B)) ^ 0xDD27BD05) - 1310139384;
  v58 = (*(v57 + 8 * (v53 ^ 0xA58)))(v56 - 112);
  return (*(a41 + 8 * ((1286 * (*(v56 - 100) == -346022651)) ^ (v53 + v55 + (v53 ^ (v54 - 41)) + 379 - 219))))(v58);
}

uint64_t sub_192D4D1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, char a53, uint64_t a54)
{
  if (&a53)
  {
    v58 = a54 == v56;
  }

  else
  {
    v58 = 1;
  }

  v59 = v58;
  return (*(v57 + 8 * ((((((v55 + v54 - 640) ^ v59) & 1) == 0) * (v54 - 622)) | v54)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a54);
}

uint64_t sub_192D4D36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v54 = *v50;
  v56 = v51 == 0x192C4C9FBB13CB01 || v54 == 0xF2C67B766E067CBLL;
  return (*(v53 + 8 * ((v56 * (((v49 - 1978368208) | 0x4025002) ^ (v52 + 43))) ^ v49)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v51, a43, a44, a45, a46, a47, a48, a49, 0x785FEF64C8799D66);
}

uint64_t sub_192D4D6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  (*(v51 + 8 * (v50 + 1620)))(v49 - 0xF2C67B766E067CBLL, a2, a3, a4, a5, a6, a7, a8);
  *v48 = 0xF2C67B766E067CBLL;
  return (*(a48 + 8 * v50))(a47);
}

uint64_t sub_192D4D82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = (*(v50 + 8 * (v49 ^ 0xE7F)))(a1, a2, a3, a4, a5, a6, a7, a8);
  *(v48 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a48 + 8 * v49))(v51);
}

uint64_t sub_192D4E750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v30 = (v28 ^ 0x80B6B977) + a27 - 0xB9AEDA92530F523;
  v31 = v30 < 0xAA88105C;
  v32 = v30 > a24;
  if (a24 < 0xAA88105C != v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  return (*(v29 + 8 * ((a1 + v27 + 866) ^ (233 * v33))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_192D4EB3C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v45 = *(a44 - 0x785FEF64C8799D5ELL);
  *(a25 - 0x785FEF64C8799D5ELL) = v45;
  *(a25 - 0x785FEF64C8799D66) = *(a44 - 0x785FEF64C8799D66);
  return (*(v44 + 8 * ((29 * (v45 != 0x785FEF64C8799D66)) ^ a1)))();
}

uint64_t sub_192D4EDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = (*(v50 + 8 * (v49 + 621)))(a1, a2, a3, a4, a5, a6, a7, a8);
  *(v48 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a48 + 8 * v49))(v51);
}

uint64_t sub_192D4EE5C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v43 = a1 + 973;
  v44 = (*(v42 + 8 * (a1 + 2459)))(v41 - 0x785FEF64C8799D66);
  return (*(a41 + 8 * v43))(v44);
}

uint64_t sub_192D4EF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *(v35 - 0x785FEF64C8799D66) = a32;
  *(a32 - 0x785FEF64C8799D5ELL) = *(v36 + v34);
  *(v36 + v34) = a32;
  return (*(v37 + 8 * (v33 ^ v32 ^ ((((v33 + 1899705001) | 0x86124204) ^ 0x8E16DFFF) * (v33 == -293625109)))))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_192D4F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *(v34 + v32) = a32;
  *(v34 - 0xF2C67B766E067CBLL) = a32;
  return (*(v35 + 8 * (v33 - 412)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_192D4F1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unsigned int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  *(a43 - 0x192C4C9FBB13CB01) = v47 ^ (a9 - 568919666) & 0xAFFFD7F6 ^ 0xEA06BF1;
  HIDWORD(a47) = 32544;
  return (*(v48 + 8 * a9))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t sub_192D4F8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  LODWORD(a22) = a2;
  v54 = v40;
  LODWORD(a24) = v41;
  HIDWORD(a26) = v39;
  v44 = (*(v43 + 8 * (v42 + 173)))(32, a2, a3, a4, a5, a6, a7, a8);
  return (*(v43 + 8 * ((853 * (((v42 + 57) ^ 0x79 ^ (v44 == 0)) & 1)) ^ v42)))(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a1, v54, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, v44 + 0x785FEF64C8799D66, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_192D4F968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24)
{
  *a1 = 0x785FEF64C8799D66;
  *(a1 + 8) = 0x785FEF64C8799D66;
  *(a1 + 16) = a24 + 498646061;
  v28 = (*(v26 + 8 * (v24 + 372)))((a24 - 98256946 + v25), a2, a3, a4, a5, a6, a7, a8);
  *(a1 + 24) = v28;
  return (*(v26 + 8 * (((v28 == 0) * (((v24 - 2301) | 0x24) - 18)) ^ v24)))();
}

uint64_t sub_192D4FA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = (*(v50 + 8 * (v49 ^ 0x2D7)))(a1, a2, a3, a4, a5, a6, a7, a8);
  *(v48 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a48 + 8 * v49))(v51);
}

uint64_t sub_192D4FAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v50 = v48 - 416;
  v51 = (*(v49 + 8 * (v50 + 1902)))(a32 - 0x785FEF64C8799D66, a2, a3, a4, a5, a6, a7, a8);
  return (*(a48 + 8 * v50))(v51);
}

uint64_t sub_192D4FB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, uint64_t a23, int a24)
{
  HIDWORD(a10) = 2 * a24;
  HIDWORD(v30) = a24 - ((2 * a24 - 196509578) & 0x9F9621CC) + 1240453409;
  LODWORD(v29) = v24 ^ 0x5AC19F09;
  LODWORD(v30) = ((v25 + 1963076974) & 0xFCE709EF) - 20706;
  LODWORD(a18) = a22 - ((2 * a22 + 15594) & 0x51CA) - 30886;
  HIDWORD(v29) = a18 ^ 0xE5;
  return (*(v27 + 8 * ((1409 * ((v26 ^ 0x46517E2Au) < 0xB0F57D4B)) ^ (v26 + 548))))(0x5D587E53351E1BD7, 0x42C5569356D8FE22, 0x74F472E448216F49, 0xFE5951FB672C4BC9, 2383860358, a6, 0xFC15BB0929C9D890, 0x81FAB04C6037F88FLL, a9, a10, a11, a12, a13, v29, v30, a16, a17, a18, a19);
}

uint64_t sub_192D4FD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char a20)
{
  v27 = *(v24 + 24);
  v28 = (__ROR8__((v27 + 4) & 0xFFFFFFFFFFFFFFF8, 8) + v23) & 0xF9FFFFFFFFFFFFFFLL;
  v29 = v28 ^ 0x1E4559FE42F2471ELL;
  v28 ^= 0x8A5B269C0EA5AB6FLL;
  v30 = (__ROR8__(v29, 8) + v28) ^ a6;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v21;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ a7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v25;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v20;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((2 * (v40 + v39)) & 0xAAAA746556851DE8) - (v40 + v39) - 0x55553A32AB428EF5) ^ 0x62A31B5EE627EDADLL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  *(v27 + 4) = (((((2 * (v43 + v42)) | 0xC5585AB08F272530) - (v43 + v42) - 0x62AC2D5847939298) ^ 0x867CC8E265EDDE38) >> (8 * ((v27 + 4) & 7))) ^ a20 ^ 0xA8;
  v44 = __ROR8__((v27 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v45 = (v44 + v23) ^ 0x885B269C0EA5AB6FLL;
  v46 = (__ROR8__((v44 + v23) ^ 0x1C4559FE42F2471ELL, 8) + v45) ^ a6;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v21;
  v49 = __ROR8__(v48, 8);
  v50 = v48 ^ __ROR8__(v47, 61);
  v51 = (v49 + v50 - ((2 * (v49 + v50)) & 0xAADD75A8558035C0) - 0x2A91452BD53FE520) ^ 0x2872CFE705BF1667;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ v25;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ v20;
  v56 = __ROR8__(v55, 8);
  v57 = v55 ^ __ROR8__(v54, 61);
  v58 = 0x964AD0183F74BFF6 - ((v56 + v57) | 0x964AD0183F74BFF6) + ((v56 + v57) | 0x69B52FE7C08B4009);
  *(v27 + 5) = a15 ^ (((__ROR8__(v58 ^ 0xA1BCF1747211DCAFLL, 8) + (v58 ^ 0xA1BCF1747211DCAFLL ^ __ROR8__(v57, 61))) ^ v22) >> (8 * ((v27 + 5) & 7)));
  return (*(v26 + 8 * (a5 + 1911107540)))(a1, a2, a3, a4);
}

uint64_t sub_192D50074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *(v16 + 24) + v17 - 0x1E06D87D68ADC517;
  v25 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((v25 + v12) | 0x7E054FB39FC80770) - ((v25 + v12) | a8) + a8;
  v27 = __ROR8__(v26 ^ 0x6240164DDD3A406ELL, 8);
  v26 ^= 0xF65E692F916DAC1FLL;
  v28 = (v27 + v26) ^ v18;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v9;
  v31 = __ROR8__(v30, 8);
  v32 = *(v21 + 8 * v20);
  v33 = v30 ^ __ROR8__(v29, 61);
  v34 = (v31 + v33) ^ v19;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ a7;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v8;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v13;
  *v24 = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ v10) >> (8 * (v24 & 7u))) ^ HIBYTE(v22) ^ 0x4F;
  v41 = __ROR8__((v24 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = ((0x4D7C3013B6750271 - v41) & 0x7C0A1F12C3784FEDLL) + v41 + v12 - ((v41 + v12) & 0x7A0A1F12C3784FEDLL);
  v43 = v42 ^ 0x624F46EC818A08F3;
  v42 ^= 0xF651398ECDDDE482;
  v44 = __ROR8__(v43, 8);
  v45 = (a3 - ((v44 + v42) | a3) + ((v44 + v42) | 0x8B0B8D1BB7DE90B6)) ^ 0x6A3E8DB42F6E506ALL;
  v46 = v45 ^ __ROR8__(v42, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (a1 - ((v47 + v46) | a1) + ((v47 + v46) | 0xA2A781ACCAE1E428)) ^ 0xA637A4AEF958011ALL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (a4 - ((v50 + v49) | a4) + ((v50 + v49) | 0x1A6AE0498D3B436)) ^ 0xFCBADB37B7ACB8B1;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (v53 + v52 - ((2 * (v53 + v52)) & 0x21AE5081A9A9FA1ELL) - 0x6F28D7BF2B2B02F1) ^ 0x6CC29349FD1D259FLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = __ROR8__((v56 + v55 - ((2 * (v56 + v55)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL, 8);
  v58 = (v56 + v55 - ((2 * (v56 + v55)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL ^ __ROR8__(v55, 61);
  *(v24 + 1) = (((__ROR8__((v57 + v58) ^ v13, 8) + ((v57 + v58) ^ v13 ^ __ROR8__(v58, 61))) ^ v10) >> (8 * ((v24 + 1) & 7))) ^ BYTE2(v22) ^ 0xCB;
  v59 = __ROR8__((v24 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v60 = v59 - ((2 * v59 + 0x65079FD89315FB1CLL) & 0x706B8D24AA79CEEALL) + 0x6AB9967E9EC7E503;
  v61 = __ROR8__(v60 ^ 0x24709F6C17CEA06BLL, 8);
  v60 ^= 0xB06EE00E5B994C1ALL;
  v62 = (((2 * (v61 + v60)) | 0x84A35F8B8F02A07ELL) - (v61 + v60) - 0x4251AFC5C781503FLL) ^ 0xA364AF6A5F3190E3;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((2 * (v64 + v63)) | 0x5AE37AFB8B700D10) - (v64 + v63) + 0x528E42823A47F978) ^ 0xA9E1987FF601E3BALL;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = __ROR8__(v65, 8);
  v68 = __ROR8__((((2 * (v67 + v66)) | 0xA0645171747853D8) - (v67 + v66) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL, 8);
  v69 = (((2 * (v67 + v66)) | 0xA0645171747853D8) - (v67 + v66) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL ^ __ROR8__(v66, 61);
  v70 = (((2 * (v68 + v69)) & 0xC0FA970E03639268) - (v68 + v69) - 0x607D4B8701B1C935) ^ 0x63970F71D787EE5BLL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (((2 * (v72 + v71)) & 0x3F1A3AC322107E48) - (v72 + v71) - 0x1F8D1D6191083F25) ^ 0xABF58BCC9AA50E14;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((2 * (v75 + v74)) | 0xA1336988A728D0CALL) - (v75 + v74) - 0x5099B4C453946865) ^ 0x98906A57E10EF4C3;
  v77 = __ROR8__(v76, 8);
  v78 = __ROR8__(v74, 61);
  *(v24 + 2) = (((v23 - ((v77 + (v76 ^ v78)) | v23) + ((v77 + (v76 ^ v78)) | 0x83B01FAA9DE726C2)) ^ 0x6760FA10BF996A62) >> (8 * ((v24 + 2) & 7))) ^ BYTE1(v22) ^ 0x10;
  v79 = __ROR8__((v24 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v80 = v79 - ((2 * v79 + 0x65079FD89315FB1CLL) & 0xA7469D16E9FCA87ALL) + 0x6271E77BE8951CBLL;
  v81 = v80 ^ 0xCFE61775360C1323;
  v80 ^= 0x5BF868177A5BFF52uLL;
  v82 = __ROR8__(v81, 8);
  v83 = (((2 * (v82 + v80)) & 0x3185DFB098D2C9E8) - (v82 + v80) - 0x18C2EFD84C6964F5) ^ 0x60810882B265BD7;
  v84 = v83 ^ __ROR8__(v80, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ v9;
  v86 = __ROR8__(v85, 8);
  v87 = v85 ^ __ROR8__(v84, 61);
  v88 = (a2 - ((v86 + v87) | a2) + ((v86 + v87) | 0xBD3AA96CA92701DDLL)) ^ 0x4026DC5F86580D5ALL;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((2 * (v90 + v89)) & 0xDC1EDE556F26AEE8) - (v90 + v89) + v11) ^ v14;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ v8;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ v13;
  *(v24 + 3) = v22 ^ v15 ^ (((__ROR8__(v95, 8) + (v95 ^ __ROR8__(v94, 61))) ^ v10) >> (8 * ((v24 + 3) & 7)));
  return v32();
}

uint64_t sub_192D509DC@<X0>(uint64_t a1@<X6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v13 = *(v11 + 24);
  v14 = __ROR8__((v13 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = ((v14 + v9) | 0x8EF30571B3E03BF9) - ((v14 + v9) | 0x710CFA8E4C1FC406) + 0x710CFA8E4C1FC406;
  v16 = v15 ^ 0x92B65C8FF1127CE7;
  v15 ^= 0x6A823EDBD459096uLL;
  v17 = (__ROR8__(v16, 8) + v15) ^ 0xE13500AF98B0C0DCLL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ v7;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((v21 + v20) | 0x6257A18AC6AFEA71) - ((v21 + v20) | 0x9DA85E753950158ELL) - 0x6257A18AC6AFEA72) ^ 0x9F4BD4B9E9D0E6F6;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xFC15BB0929C9D890;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = __ROR8__((((2 * (v26 + v25)) | 0x73433184586818C6) - (v26 + v25) - 0x39A198C22C340C63) ^ 0x7226F190D866C2ACLL, 8);
  v28 = (((2 * (v26 + v25)) | 0x73433184586818C6) - (v26 + v25) - 0x39A198C22C340C63) ^ 0x7226F190D866C2ACLL ^ __ROR8__(v25, 61);
  v29 = (((2 * (v27 + v28)) & 0x2E6D9124F850C1CLL) - (v27 + v28) - 0x1736C8927C2860FLL) ^ 0x36854DE56AA7E557;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v13[10] = (((((v31 + v30) ^ 0x925E7C0EFFCC6FF1 | 0xFC3CC5473DDD44E5) - ((v31 + v30) ^ 0x925E7C0EFFCC6FF1 | 0x3C33AB8C222BB1ALL) + 0x3C33AB8C222BB1ALL) ^ 0x8AB25CF3E06F67B4) >> (8 * ((v13 + 10) & 7u))) ^ (a6 >> ((a2 - 61) & 0xA6 ^ 0xBEu)) ^ 0xDD;
  v32 = __ROR8__((v13 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v33 = ((v32 + v9) & 0x5914460E7C6C43D9 ^ 0x4100000418440108) + ((v32 + v9) & 0xA0EBB9F18393BC26 ^ 0x4A3312100820427) - 1;
  v34 = v33 ^ 0x5BE668DB5A344230;
  v33 ^= 0xCFF817B91663AE41;
  v35 = (__ROR8__(v34, 8) + v33) ^ 0xE13500AF98B0C0DCLL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v7;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ a1;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (v41 + v40 - ((2 * (v41 + v40)) & 0x3B57AD3684D86B7ALL) - 0x62542964BD93CA43) ^ 0x61BE6D926BA5ED2DLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (v44 + v43 - ((2 * (v44 + v43)) & 0x6EEDA84EBE2C2B7ELL) - 0x48892BD8A0E9EA41) ^ 0xFCF1BD75AB44DB70;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (((2 * (v47 + v46)) | 0xFED65BFA7285710) - (v47 + v46) - 0x7F6B2DFD3942B88) ^ 0xCFFF6C4C610EB72ELL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v13[11] = (((((v50 + v49) | 0x21983AC56B0BB129) - ((v50 + v49) | 0xDE67C53A94F44ED6) - 0x21983AC56B0BB12ALL) ^ 0xC548DF7F4975FD89) >> (8 * ((v13 + 11) & 7u))) ^ BYTE6(a6) ^ 0xBE;
  v51 = __ROR8__((v13 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v52 = -2 - (((0xD7C3013B6750271 - v51) | 0xEFC9086FACD320D4) + ((v51 + v9) | 0x1036F790532CDF2BLL));
  v53 = v52 ^ 0xF38C5191EE2167CALL;
  v52 ^= 0x67922EF3A2768BBBuLL;
  v54 = (__ROR8__(v53, 8) + v52) ^ 0xE13500AF98B0C0DCLL;
  v55 = __ROR8__(v54, 8);
  v56 = v54 ^ __ROR8__(v52, 61);
  v57 = (((2 * (v55 + v56)) & 0xA44BB63E2DDF8B52) - (v55 + v56) - 0x5225DB1F16EFC5AALL) ^ 0xA94A01E2DAA9DF64;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ a1;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xFC15BB0929C9D890;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((v63 + v62) | 0xD2E383F95083B686) - ((v63 + v62) | 0x2D1C7C06AF7C4979) + 0x2D1C7C06AF7C4979) ^ 0x9964EAABA4D17849;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ v10;
  v13[12] = (((__ROR8__(v66, 8) + (v66 ^ __ROR8__(v65, 61))) ^ v8) >> (8 * ((v13 + 12) & 7u))) ^ BYTE5(a6) ^ 0x10;
  v67 = __ROR8__((v13 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v68 = ((2 * (v67 + v9)) | 0xA4234159906F106ALL) - (v67 + v9) + 0x2DEE5F5337C877CBLL;
  v69 = v68 ^ 0xCE54F9528AC5CF2BLL;
  v68 ^= 0x5A4A8630C692235AuLL;
  v70 = __ROR8__(v69, 8);
  v71 = (((v70 + v68) | 0xD738201BC43E983BLL) - ((v70 + v68) | 0x28C7DFE43BC167C4) + 0x28C7DFE43BC167C4) ^ 0x360D20B45C8E58E7;
  v72 = v71 ^ __ROR8__(v68, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (((v73 + v72) ^ 0x70783716B7118F26) - ((2 * ((v73 + v72) ^ 0x70783716B7118F26)) & 0xBAA694FE21B0C1B2) + 0x5D534A7F10D860D9) ^ 0x29BB586B94700ACDLL;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ a1;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (v78 + v77 - ((2 * (v78 + v77)) & 0x17A08F8C8FAF1288) - 0x742FB839B82876BCLL) ^ 0x77C5FCCF6E1E51D4;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ v6;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ v10;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v13[13] = (((v85 + v84 - ((2 * (v85 + v84)) & 0xB495371DE105E9CELL) - 0x25B564710F7D0B19) ^ 0x3E9A7E34D2FCB847) >> (8 * ((v13 + 13) & 7u))) ^ BYTE4(a6) ^ 0x91;
  v86 = __ROR8__((v13 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v87 = (0xCD7C3013B6750271 - v86) & 0xF050E761A6289A68 | (v86 + 0x283CFEC498AFD8ELL) & 0x9AF189E59D76597;
  v88 = v87 ^ 0xEE15BE9FE4DADD76;
  v87 ^= 0x7A0BC1FDA88D3107uLL;
  v89 = (__ROR8__(v88, 8) + v87) ^ 0xE13500AF98B0C0DCLL;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((v91 + v90) | 0x349C4C6A3E574525) - ((v91 + v90) | 0xCB63B395C1A8BADALL) - 0x349C4C6A3E574526) ^ 0x300C69680DEEA017;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ a1;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0xFC15BB0929C9D890;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ v6;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = __ROR8__(v98, 8);
  v101 = (((2 * (v100 + v99)) | 0x749128A0D39CA49CLL) - (v100 + v99) + 0x45B76BAF9631ADB2) ^ 0x72414AC3DB54CEE8;
  v13[14] = (((__ROR8__(v101, 8) + (v101 ^ __ROR8__(v99, 61))) ^ v8) >> (8 * ((v13 + 14) & 7u))) ^ BYTE3(a6) ^ 0x3B;
  v102 = __ROR8__((v13 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v103 = (0x57C3013B6750271 - v102) & 0x5D98955B3706B30 | (v102 + v9) & 0xFA2676AA4C8F94CFLL;
  v104 = v103 ^ 0x199CD0ABF1822C2ELL;
  v103 ^= 0x8D82AFC9BDD5C05FLL;
  v105 = (__ROR8__(v104, 8) + v103) ^ 0xE13500AF98B0C0DCLL;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (((2 * (v107 + v106)) | 0x86D73428622BDA3ALL) - (v107 + v106) - 0x436B9A143115ED1DLL) ^ 0x47FBBF1602AC082FLL;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = (__ROR8__(v108, 8) + v109) ^ a1;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = __ROR8__(v110, 8);
  v113 = (((2 * (v112 + v111)) & 0x407F7AAF3D2F06C8) - (v112 + v111) - 0x203FBD579E978365) ^ 0x23D5F9A148A1A40BLL;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ v6;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ v10;
  v13[15] = (((__ROR8__(v117, 8) + (v117 ^ __ROR8__(v116, 61))) ^ v8) >> (8 * ((v13 + 15) & 7u))) ^ BYTE2(a6) ^ 0x62;
  v118 = __ROR8__((v13 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v119 = ((2 * v118 + 0x65079FD89315FB1CLL) & 0xE66464AD44856B92) - v118 + 0x5649FDBD14324CA8;
  v120 = v119 ^ 0x948894571F4F0D28;
  v119 ^= 0x96EB355318E159uLL;
  v121 = __ROR8__(v120, 8);
  v122 = (((2 * (v121 + v119)) & 0xA1738BF9A2E70742) - (v121 + v119) + 0x2F463A032E8C7C5ELL) ^ 0xCE733AACB63CBC82;
  v123 = v122 ^ __ROR8__(v119, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ v7;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = __ROR8__(v124, 8);
  v127 = (((2 * (v126 + v125)) & 0x2D730DB5B3BDACF8) - (v126 + v125) - 0x16B986DAD9DED67DLL) ^ 0x145A0C16095E2504;
  v128 = v127 ^ __ROR8__(v125, 61);
  v129 = __ROR8__(v127, 8);
  v130 = (((2 * (v129 + v128)) | 0x4D17F792C6A75DEALL) - (v129 + v128) - 0x268BFBC96353AEF5) ^ 0xDA9E40C04A9A7665;
  v131 = v130 ^ __ROR8__(v128, 61);
  v132 = __ROR8__(v130, 8);
  v133 = __ROR8__((((2 * (v132 + v131)) & 0x305CE5312BE34172) - (v132 + v131) + 0x67D18D676A0E5F46) ^ 0x2C56E4359E5C9189, 8);
  v134 = (((2 * (v132 + v131)) & 0x305CE5312BE34172) - (v132 + v131) + 0x67D18D676A0E5F46) ^ 0x2C56E4359E5C9189 ^ __ROR8__(v131, 61);
  v135 = (v133 + v134) ^ v10;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = __ROR8__(v135, 8);
  v13[16] = (((v137 + v136 - ((2 * (v137 + v136)) & 0x20DC9317F93159D8) - 0x6F91B67403675314) ^ 0x74BEAC31DEE6E04CuLL) >> (8 * ((v13 + 16) & 7u))) ^ BYTE1(a6) ^ 0x26;
  v138 = __ROR8__((v13 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v139 = ((2 * ((v138 + v9) ^ 0x2CEA70879027C9CDLL)) & 0x2D388CE61C45146ALL) - ((v138 + v9) ^ 0x2CEA70879027C9CDLL) - 0x169C46730E228A36;
  v140 = v139 ^ 0xD9CC90F52308FB19;
  v139 ^= 0x4DD2EF976F5F1768uLL;
  v141 = __ROR8__(v140, 8);
  v142 = (((2 * (v141 + v139)) | 0xC93FF3953A26D81ALL) - (v141 + v139) + 0x1B60063562EC93F3) ^ 0x5AAF96505A3ACD1;
  v143 = __ROR8__(v139, 61);
  v144 = (__ROR8__(v142, 8) + (v142 ^ v143)) ^ v7;
  v145 = v144 ^ __ROR8__(v142 ^ v143, 61);
  v146 = (__ROR8__(v144, 8) + v145) ^ a1;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = __ROR8__(v146, 8);
  v149 = (((2 * (v148 + v147)) | 0x9AD9A558F1F83E32) - (v148 + v147) - 0x4D6CD2AC78FC1F19) ^ 0xB17969A55135C789;
  v150 = v149 ^ __ROR8__(v147, 61);
  v151 = (__ROR8__(v149, 8) + v150) ^ v6;
  v152 = v151 ^ __ROR8__(v150, 61);
  v153 = __ROR8__(v151, 8);
  v154 = (v153 + v152 - ((2 * (v153 + v152)) & 0x8BC8E87C0324D542) + 0x45E4743E01926AA1) ^ 0x8DEDAAADB308F607;
  v13[17] = (((__ROR8__(v154, 8) + (v154 ^ __ROR8__(v152, 61))) ^ v8) >> (8 * ((v13 + 17) & 7u))) ^ a6 ^ 0xBE;
  return (*(v12 + 8 * a2))();
}

uint64_t sub_192D51AA0(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = (v10 - 1);
  v25 = v24 == a1;
  v26 = (v24 | ((v24 < a1) << 32)) + a2;
  v27 = __ROR8__((v26 + v11 + 10) & 0xFFFFFFFFFFFFFFF8, 8) + ((v15 | 0x2120200u) ^ 0x3283CFECC79C2F08);
  v28 = v27 ^ 0x1C4559FE42F2471ELL;
  v27 ^= 0x885B269C0EA5AB6FLL;
  v29 = __ROR8__(v28, 8);
  v30 = __ROR8__((((v29 + v27) & 0x1A10D85A16CC1CF5 ^ a5) + ((v29 + v27) & a6 ^ a4) - 1) ^ a8, 8);
  v31 = (((v29 + v27) & 0x1A10D85A16CC1CF5 ^ a5) + ((v29 + v27) & a6 ^ a4) - 1) ^ a8 ^ __ROR8__(v27, 61);
  v32 = (v30 + v31) ^ v9;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ a7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xFC15BB0929C9D890;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v8;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((v40 + v39) & v12 ^ v17) + ((v40 + v39) ^ v16) - (((v40 + v39) ^ v16) & v12)) ^ v18;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  *(v26 + v11 + 10) = ((((v19 & (2 * (v43 + v42))) - (v43 + v42) + v20) ^ v21) >> (8 * ((v26 + v11 + 10) & 7))) ^ *(v14 + v26);
  v44 = !v25;
  return (*(v23 + 8 * ((v44 * v22) ^ v13)))(328054740);
}

uint64_t pspdoawubd0(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1E73B2A80 + ((127 * (dword_1EAE16A60 ^ 0x88 ^ dword_1EAE16A30)) ^ byte_193012CC0[byte_1930115B0[(127 * (dword_1EAE16A60 ^ 0x88 ^ dword_1EAE16A30))] ^ 0x4F]) - 68);
  v2 = *(v1 - 4);
  v3 = *(&off_1E73B2A80 + (byte_193016038[(byte_193015048[(127 * ((dword_1EAE16A30 + v2) ^ 0x88)) - 8] ^ 0x2D) - 8] ^ (127 * ((dword_1EAE16A30 + v2) ^ 0x88))) - 200);
  v4 = &v10[v2 + *v3];
  *(v1 - 4) = 2140301951 * (v4 - 0x3D3AC77DA7219688);
  *v3 = 2140301951 * (v4 ^ 0x3D3AC77DA7219688);
  v5 = *(&off_1E73B2A80 + ((127 * (dword_1EAE16A60 ^ 0x88 ^ dword_1EAE16A30)) ^ byte_193012BC0[byte_1930114B0[(127 * (dword_1EAE16A60 ^ 0x88 ^ dword_1EAE16A30))] ^ 0x72]) - 160);
  v6 = 663017543 * (&v11 ^ 0x198C60C35D105D24);
  v7 = *(v5 + 1736) - v6;
  v12 = a1;
  v13 = v7;
  v11 = 1231722968 - v6;
  v8 = 127 * ((*v3 + *(v1 - 4)) ^ 0x88);
  (*(v5 + 8 * ((byte_1930113B8[(byte_193015F34[v8 - 4] ^ 0x30) - 8] ^ v8) + 2607)))(&v11);
  return v14;
}

uint64_t jsf09djfs0df(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 - dword_1EAE16AE0) ^ 0x88)) ^ byte_193016030[byte_193015040[(127 * ((dword_1EAE16A30 - dword_1EAE16AE0) ^ 0x88))] ^ 0x6B]) - 80);
  v2 = 127 * (*v1 ^ dword_1EAE16A30 ^ 0x88);
  v3 = *(&off_1E73B2A80 + (byte_193012BC4[(byte_1930114BC[v2 - 12] ^ 0x72) - 4] ^ v2) - 199);
  v4 = &v10[*v3 ^ *v1];
  *v1 = 2140301951 * v4 + 0x3D3AC77DA7219688;
  *v3 = 2140301951 * (v4 ^ 0x3D3AC77DA7219688);
  v5 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 - dword_1EAE16AE0) ^ 0x88)) ^ byte_193012CC0[byte_1930115B0[(127 * ((dword_1EAE16A30 - dword_1EAE16AE0) ^ 0x88))] ^ 0x4F]) + 10);
  v6 = *(v5 + 1504);
  v7 = 663017543 * (((&v11 | 0xF50935832F1B73D7) - (&v11 | 0xAF6CA7CD0E48C28) + 0xAF6CA7CD0E48C28) ^ 0xEC855540720B2EF3);
  v11 = 1231722968 - v7;
  v12 = a1;
  v13 = v6 - v7;
  v8 = 127 * (*v1 ^ 0x88 ^ *v3);
  (*(v5 + 8 * ((byte_193012CC4[(byte_1930115B4[v8 - 4] ^ 0x4F) - 4] ^ v8) + 2664)))(&v11);
  return v14;
}

void sub_192D54920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __destructor_8_s0_s8_s16(va);
  _Unwind_Resume(a1);
}

void __destructor_8_s0_s8_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void sub_192D593F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  __destructor_8_s0_s8_s16(va);
  _Unwind_Resume(a1);
}

void sub_192D5A954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192D60930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192D62F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_192D6677C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

AMSPromise *AMSCookieDatabasePath(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(AMSPromise);
  v3 = v1;
  v4 = +[AMSCookieService sharedService];
  v5 = [(AMSPromise *)v2 completionHandlerAdapter];
  [v4 getCookieDatabasePathForAccount:v3 withCompletion:v5];

  return v2;
}

void sub_192D698B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192D6A490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192D6AEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192D6D8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

AMSMutableBinaryPromise *AMSSaveAccount(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = objc_alloc_init(AMSMutableBinaryPromise);
  v8 = [(AMSBinaryPromise *)v7 completionHandlerAdapter];
  [v5 saveAccount:v6 withDataclassActions:0 doVerify:a3 completion:v8];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __AMSSaveAccount_block_invoke;
  v12[3] = &unk_1E73B32F0;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  [(AMSBinaryPromise *)v7 addErrorBlock:v12];

  return v7;
}

void __AMSSaveAccount_block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = objc_opt_class();
  AMSCheckErrorForUnitTestAccess(v5, v4);
  v6 = +[AMSLogConfig sharedAccountsConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = v10;
    if (v8)
    {
      v2 = AMSLogKey();
      [v9 stringWithFormat:@"%@: [%@] ", v11, v2];
    }

    else
    {
      [v9 stringWithFormat:@"%@: ", v10];
    }
    v12 = ;
    v13 = AMSHashIfNeeded(*(a1 + 40));
    v14 = AMSLogableError(v4);
    *buf = 138543874;
    v16 = v12;
    v17 = 2114;
    v18 = v13;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to save an account. account = %{public}@ | error = %{public}@", buf, 0x20u);
    if (v8)
    {

      v12 = v2;
    }
  }
}

uint64_t AMSSaveVerifiedAccount(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v23 = 0;
  v7 = [v5 saveVerifiedAccount:v6 error:&v23];
  v8 = v23;
  if ((v7 & 1) == 0)
  {
    v9 = objc_opt_class();
    AMSCheckErrorForUnitTestAccess(v9, v8);
    v10 = +[AMSLogConfig sharedAccountsConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v22 = a3;
      v12 = AMSLogKey();
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      v15 = v14;
      if (v12)
      {
        v21 = AMSLogKey();
        [v13 stringWithFormat:@"%@: [%@] ", v15, v21];
      }

      else
      {
        [v13 stringWithFormat:@"%@: ", v14];
      }
      v16 = ;
      v17 = AMSHashIfNeeded(v6);
      v18 = AMSLogableError(v8);
      *buf = 138543874;
      v25 = v16;
      v26 = 2114;
      v27 = v17;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to save a verified account. account = %{public}@ | error = %{public}@", buf, 0x20u);
      if (v12)
      {

        v16 = v21;
      }

      a3 = v22;
    }

    if (a3)
    {
      v19 = v8;
      *a3 = v8;
    }
  }

  return v7;
}

AMSMutablePromise *AMSFetchAccountWithIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(AMSMutablePromise);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __AMSFetchAccountWithIdentifier_block_invoke;
  v12[3] = &unk_1E73B3770;
  v6 = v5;
  v13 = v6;
  v14 = v4;
  v15 = v3;
  v7 = v3;
  v8 = v4;
  [v7 accountWithIdentifier:v8 completion:v12];
  v9 = v15;
  v10 = v6;

  return v6;
}

void __AMSFetchAccountWithIdentifier_block_invoke(void *a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v11 = v5;
  if (a2 | v5)
  {
    v9 = [a2 copy];
    [v6 finishWithResult:v9 error:v11];

    v10 = objc_opt_class();
    AMSCheckErrorForUnitTestAccess(v10, v11);
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ACAccountStore+AMS: No account was found for identifier %@. No error returned either", a1[5]];
    v8 = AMSError(7, v7, 0, 0);
    [v6 finishWithError:v8];
  }
}

id AMSAccountWithIdentifier(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v14 = 0;
  v8 = [v5 accountWithIdentifier:v6 error:&v14];
  v9 = v14;
  v10 = [v8 copy];
  v11 = objc_opt_class();
  AMSCheckErrorForUnitTestAccess(v11, v9);

  objc_autoreleasePoolPop(v7);
  if (a3 && !v10)
  {
    v12 = v9;
    *a3 = v9;
  }

  return v10;
}

id AMSAlliTunesAccounts(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = *MEMORY[0x1E6959938];
  v26[0] = *MEMORY[0x1E6959930];
  v26[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = AMSAccountsWithAccountTypeIdentifierAndClassification(v1, v9, 1, 1, 0);
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [v2 addObject:*(*(&v17 + 1) + 8 * j)];
            }

            v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }

  v15 = [v2 copy];

  return v15;
}

void sub_192D71678(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_192D7215C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __OnBoardingKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_192D752A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_192D76F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAppleIDAuthenticationAppleIDSettingsTokenIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED6E2718)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppleIDSSOAuthenticationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E73B39F0;
    v7 = 0;
    qword_1ED6E2718 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1ED6E2718;
    if (qword_1ED6E2718)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1ED6E2718;
LABEL_5:
  result = dlsym(v2, "AppleIDAuthenticationAppleIDSettingsTokenIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED6E2710 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleIDSSOAuthenticationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED6E2718 = result;
  return result;
}

void sub_192D7E954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192D85B78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_192D86EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192D8E084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192D902F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  (*(v36 + 16))(v36);
  (*(a15 + 16))();
  _Unwind_Resume(a1);
}

void sub_192D90F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192D91B54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_192D94D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192D94E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192D97960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192D98A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192D98BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromBagValueType(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E73B4BE8[a1];
  }
}

__CFString *AMSBagKeyForPurchaseType(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E73B4C20[a1];
  }
}

void sub_192D9FBD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_192DA0BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBiometricKitIdentityClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBiometricKitIdentityClass_softClass;
  v7 = getBiometricKitIdentityClass_softClass;
  if (!getBiometricKitIdentityClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getBiometricKitIdentityClass_block_invoke;
    v3[3] = &unk_1E73B3880;
    v3[4] = &v4;
    __getBiometricKitIdentityClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_192DA1264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DA44D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DA4800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBiometricKitClass_block_invoke(uint64_t a1)
{
  BiometricKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BiometricKit");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBiometricKitClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "BiometricKit");
    BiometricKitLibrary();
  }
}

void BiometricKitLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!BiometricKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __BiometricKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E73B51B8;
    v3 = 0;
    BiometricKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (BiometricKitLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __BiometricKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BiometricKitLibraryCore_frameworkLibrary = result;
  return result;
}

AMSBiometricsIdentityMapChangeTask *__getBiometricKitIdentityClass_block_invoke(uint64_t a1)
{
  BiometricKitLibrary();
  result = objc_getClass("BiometricKitIdentity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBiometricKitIdentityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "BiometricKitIdentity");
    return [(AMSBiometricsIdentityMapChangeTask *)v3 initWithAccount:v4 session:v5 task:v6, v7];
  }

  return result;
}

void sub_192DA6334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DA6714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DA6ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DA6D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DA8AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DAB29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DACCAC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    v12 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = AMSHashIfNeeded(v11);
      LODWORD(buf) = 138543618;
      *(&buf + 4) = v15;
      WORD6(buf) = 2112;
      *(&buf + 14) = v16;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@Error parsing buyParams string: %@", &buf, 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x192DACBC8);
  }

  _Unwind_Resume(a1);
}

void sub_192DAD748(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    v5 = +[AMSUnitTests isRunningUnitTests];
    v6 = *(v2 + 3552);
    if (v5)
    {
      v7 = [v6 sharedPurchaseConfig];
      if (!v7)
      {
        v7 = [*(v2 + 3552) sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = AMSHashIfNeeded(v4);
        *(v3 - 128) = 138543618;
        v12 = v3 - 128;
        *(v12 + 4) = v10;
        *(v3 - 116) = 2112;
        *(v12 + 14) = v11;
        _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Exception parsing buyParams string: %@", (v3 - 128), 0x16u);
      }

      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      v14 = [*(v2 + 3552) sharedPurchaseConfig];
      [v13 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v14 userInfo:0];
    }

    else
    {
      v13 = [v6 sharedPurchaseConfig];
      if (!v13)
      {
        v13 = [*(v2 + 3552) sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = AMSHashIfNeeded(v4);
        *(v3 - 128) = 138543618;
        v18 = v3 - 128;
        *(v18 + 4) = v16;
        *(v3 - 116) = 2112;
        *(v18 + 14) = v17;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_FAULT, "%{public}@: Exception parsing buyParams string: %@", (v3 - 128), 0x16u);
      }
    }

    objc_end_catch();
    JUMPOUT(0x192DAD704);
  }

  _Unwind_Resume(exception_object);
}

id AMSBagKeyBuyProductOverrideForProductType(void *a1)
{
  v1 = a1;
  if (qword_1ED6E27E0 != -1)
  {
    dispatch_once(&qword_1ED6E27E0, &__block_literal_global_319);
  }

  v2 = [qword_1ED6E27E8 objectForKeyedSubscript:v1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __AMSBagKeyBuyProductOverrideForProductType_block_invoke()
{
  v3[12] = *MEMORY[0x1E69E9840];
  v2[0] = @"A";
  v2[1] = @"ASB";
  v3[0] = @"buyAddOn";
  v3[1] = @"buyAppSalableBundle";
  v2[2] = @"C";
  v2[3] = @"B";
  v3[2] = @"buyApplication";
  v3[3] = @"buyBooklet";
  v2[4] = @"W";
  v2[5] = @"P";
  v3[4] = @"buyPiece";
  v3[5] = @"buyPlayList";
  v2[6] = @"PUB";
  v2[7] = @"PC";
  v3[6] = @"buyPublication";
  v3[7] = @"buyPublicationChapter";
  v2[8] = @"Q";
  v2[9] = @"G";
  v3[8] = @"buySeasonPass";
  v3[9] = @"buySoftware";
  v2[10] = @"S";
  v2[11] = @"V";
  v3[10] = @"buySong";
  v3[11] = @"buyVideo";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:12];
  v1 = qword_1ED6E27E8;
  qword_1ED6E27E8 = v0;
}

void sub_192DAE46C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_192DAF124(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_192DAF60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initPKPaymentRequest()
{
  if (qword_1EAE31B60 != -1)
  {
    dispatch_once(&qword_1EAE31B60, &__block_literal_global_23);
  }

  result = objc_getClass("PKPaymentRequest");
  _MergedGlobals_4 = result;
  _MergedGlobals_3 = PKPaymentRequestFunction;
  return result;
}

void *__PassKitCoreLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/PassKitCore.framework/PassKitCore", 2);
  PassKitCoreLibrary_sLib = result;
  return result;
}

Class initPKPaymentMerchantSession()
{
  if (qword_1EAE31B60 != -1)
  {
    dispatch_once(&qword_1EAE31B60, &__block_literal_global_23);
  }

  result = objc_getClass("PKPaymentMerchantSession");
  qword_1EAE31B68 = result;
  off_1ED6DF150 = PKPaymentMerchantSessionFunction;
  return result;
}

Class initPKPaymentSummaryItem()
{
  if (qword_1EAE31B60 != -1)
  {
    dispatch_once(&qword_1EAE31B60, &__block_literal_global_23);
  }

  result = objc_getClass("PKPaymentSummaryItem");
  qword_1EAE31B70 = result;
  off_1ED6DF158 = PKPaymentSummaryItemFunction;
  return result;
}

Class initPKPaymentAuthorizationController()
{
  if (qword_1EAE31B80 != -1)
  {
    dispatch_once(&qword_1EAE31B80, &__block_literal_global_295);
  }

  result = objc_getClass("PKPaymentAuthorizationController");
  qword_1EAE31B78 = result;
  getPKPaymentAuthorizationControllerClass = PKPaymentAuthorizationControllerFunction;
  return result;
}

void *__PassKitUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/PassKitUI.framework/PassKitUI", 2);
  PassKitUILibrary_sLib = result;
  return result;
}

Class initPKPaymentAuthorizationResult()
{
  if (qword_1EAE31B60 != -1)
  {
    dispatch_once(&qword_1EAE31B60, &__block_literal_global_23);
  }

  result = objc_getClass("PKPaymentAuthorizationResult");
  qword_1EAE31B88 = result;
  getPKPaymentAuthorizationResultClass_0 = PKPaymentAuthorizationResultFunction;
  return result;
}

void sub_192DB3ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DB45C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DB4A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DB506C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPKAuthenticatorClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED6E2818)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PassKitUIFoundationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E73B5800;
    v6 = 0;
    qword_1ED6E2818 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED6E2818)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PKAuthenticator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "PKAuthenticator");
  }

  _MergedGlobals_93 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PassKitUIFoundationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED6E2818 = result;
  return result;
}

void __getPKInAppPaymentServiceClass_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKInAppPaymentService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKInAppPaymentServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "PKInAppPaymentService");
    PassKitCoreLibrary();
  }
}

void PassKitCoreLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PassKitCoreLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E73B5818;
    v3 = 0;
    PassKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (PassKitCoreLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __PassKitCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PassKitCoreLibraryCore_frameworkLibrary = result;
  return result;
}

AMSCardEnrollmentEligibilityTask *__getPKPaymentServiceClass_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary();
  result = objc_getClass("PKPaymentService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPaymentServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "PKPaymentService");
    return [(AMSCardEnrollmentEligibilityTask *)v3 initWithBag:v4, v5];
  }

  return result;
}

void sub_192DB76F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPKPassLibraryClass_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKPassLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_1_4 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "PKPassLibrary");
    PassKitCoreLibrary_0();
  }
}

void PassKitCoreLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PassKitCoreLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PassKitCoreLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E73B5940;
    v3 = 0;
    PassKitCoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v0 = v1[0];
    if (PassKitCoreLibraryCore_frameworkLibrary_0)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __PassKitCoreLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  PassKitCoreLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getPKPaymentPassClass_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary_0();
  result = objc_getClass("PKPaymentPass");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED6E1E08 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "PKPaymentPass");
    return [(AMSCardEnrollmentPaymentSessionService *)v3 performSilentEnrollmentWithRequest:v4 logKey:v5, v6];
  }

  return result;
}

void sub_192DB9430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DBA35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DBA560(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __getSSSilentEnrollmentContextClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SSSilentEnrollmentContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSSilentEnrollmentContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "SSSilentEnrollmentContext");
    StoreServicesLibrary();
  }
}

void StoreServicesLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!StoreServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __StoreServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E73B59A8;
    v3 = 0;
    StoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (StoreServicesLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __StoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  StoreServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSSSilentEnrollmentPaymentSessionClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary();
  result = objc_getClass("SSSilentEnrollmentPaymentSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSSilentEnrollmentPaymentSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "SSSilentEnrollmentPaymentSession");
    return __getPKPaymentMerchantSessionClass_block_invoke(v3);
  }

  return result;
}

Class __getPKPaymentMerchantSessionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED6E2828)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PassKitCoreLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E73B59C0;
    v6 = 0;
    qword_1ED6E2828 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED6E2828)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PKPaymentMerchantSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "PKPaymentMerchantSession");
  }

  _MergedGlobals_94 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PassKitCoreLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED6E2828 = result;
  return result;
}

void sub_192DBBAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DBBBF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __getSSSilentEnrollmentContextClass_block_invoke_0(uint64_t a1)
{
  StoreServicesLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SSSilentEnrollmentContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSSilentEnrollmentContextClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "SSSilentEnrollmentContext");
    StoreServicesLibrary_0();
  }
}

void StoreServicesLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!StoreServicesLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __StoreServicesLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E73B59D8;
    v3 = 0;
    StoreServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v0 = v1[0];
    if (StoreServicesLibraryCore_frameworkLibrary_0)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __StoreServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  StoreServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

AMSCardMetadataRegistrationResult *__getSSSilentEnrollmentVerificationClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary_0();
  result = objc_getClass("SSSilentEnrollmentVerification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSSilentEnrollmentVerificationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "SSSilentEnrollmentVerification");
    return [(AMSCardMetadataRegistrationResult *)v3 init];
  }

  return result;
}

void sub_192DBCB54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_192DBCFF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class initPKInAppPaymentService()
{
  if (qword_1ED6E24D8 != -1)
  {
    dispatch_once(&qword_1ED6E24D8, &__block_literal_global_26);
  }

  result = objc_getClass("PKInAppPaymentService");
  _MergedGlobals_3_2 = result;
  getPKInAppPaymentServiceClass = PKInAppPaymentServiceFunction;
  return result;
}

void *__PassKitCoreLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/PassKitCore.framework/PassKitCore", 2);
  PassKitCoreLibrary_sLib_0 = result;
  return result;
}

void sub_192DC3B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192DC6648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DC9770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DCB63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getICMusicSubscriptionStatusControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED6E1E78)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __iTunesCloudLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E73B5DB8;
    v6 = 0;
    qword_1ED6E1E78 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED6E1E78)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ICMusicSubscriptionStatusController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "ICMusicSubscriptionStatusController");
  }

  qword_1ED6E1E70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iTunesCloudLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED6E1E78 = result;
  return result;
}

void sub_192DCCA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_192DCCFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DCD12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DCF78C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_192DD146C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DD16DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DD1BAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  _Unwind_Resume(a1);
}

void sub_192DD4370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DD6174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DD8F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DD9A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AMSCookieDatabaseColumnForNSHTTPCookiePropertyKey(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E695AAF0]])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695AB20]])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695AAF8]])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695AB28]])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695AAD0]])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695AB00]])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695AB18]])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695AAD8]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695AAB8]])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695AAC0]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695AAC8]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695AAE8]])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695AB08]])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695AB10]])
  {
    v2 = 10;
  }

  else
  {
    v2 = 14;
  }

  return v2;
}

__CFString *AMSTypeForAMSCookieDatabaseColumn(unint64_t a1)
{
  if (a1 >= 0xE)
  {
    return 0;
  }

  else
  {
    return @"TEXT";
  }
}

void sub_192DDA56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void HandleCookiesChangedNotification(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    objc_opt_class();
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      v2 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, v2];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Received a CookiesChanged notification, clearing caches.", &buf, 0xCu);
    if (v6)
    {

      v10 = v2;
    }
  }

  v11 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_14;
  }

  v12 = v11;

  if (v12)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __HandleCookiesChangedNotification_block_invoke;
    v17[3] = &unk_1E73B3680;
    v12 = v12;
    v18 = v12;
    v13 = v17;
    v14 = AMSLogKey();
    v15 = dispatch_get_global_queue(0, 0);
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v20 = __AMSDispatchAsyncGlobal_block_invoke;
    v21 = &unk_1E73B36D0;
    v22 = v14;
    v23 = v13;
    v16 = v14;
    dispatch_async(v15, &buf);

    v11 = v18;
LABEL_14:
  }
}

void sub_192DDF47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose((v28 - 176), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DDFA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AMSDispatchAsyncGlobal_block_invoke(uint64_t a1)
{
  v2 = AMSSetLogKey(*(a1 + 32));
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_192DE1070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DE14DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_192DE2204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_192DE29F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_192DE3FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id -[AMSDaemonConnectionErrorForwardingProxy _blockToInvokeWithErrorForwardingForInvocation:errorArgumentIndex:](AMSDaemonConnectionErrorForwardingProxy *self, SEL a2, id a3, unint64_t *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 methodSignature];
  v8 = [v7 numberOfArguments];

  if (v8 >= 3 && (-[AMSDaemonConnectionErrorForwardingProxy interface](self, "interface"), v9 = objc_claimAutoreleasedReturnValue(), [v9 replyBlockSignatureForSelector:{objc_msgSend(v6, "selector")}], v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
  {
    v53 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:{objc_msgSend(v10, "UTF8String")}];
    v11 = [v53 numberOfArguments];
    v12 = v11 - 1;
    if (v11 != 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = [(AMSDaemonConnectionErrorForwardingProxy *)self interface];
        v17 = [v16 classForSelector:objc_msgSend(v6 argumentIndex:"selector") ofReply:{v15, 1}];

        v18 = objc_opt_class();
        if (((v17 == v18) & v14) == 1)
        {
          v22 = +[AMSUnitTests isRunningUnitTests];
          v23 = +[AMSLogConfig sharedConfig];
          v24 = v23;
          if (v22)
          {
            if (!v23)
            {
              v24 = +[AMSLogConfig sharedConfig];
            }

            v25 = [v24 OSLogObject];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = objc_opt_class();
              v27 = AMSLogKey();
              *buf = 138543618;
              v56 = v26;
              v57 = 2114;
              v58 = v27;
              _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Multiple NSError arguments found in reply handler. Only one was expected.", buf, 0x16u);
            }

            v28 = [MEMORY[0x1E696AD88] defaultCenter];
            v29 = +[AMSLogConfig sharedConfig];
            [v28 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v29 userInfo:0];
          }

          else
          {
            if (!v23)
            {
              v24 = +[AMSLogConfig sharedConfig];
            }

            v30 = [v24 OSLogObject];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
            {
              v31 = objc_opt_class();
              v32 = AMSLogKey();
              *buf = 138543618;
              v56 = v31;
              v57 = 2114;
              v58 = v32;
              _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] Multiple NSError arguments found in reply handler. Only one was expected.", buf, 0x16u);
            }
          }

          goto LABEL_24;
        }

        if (v17 == v18)
        {
          v13 = v15;
        }

        v14 |= v17 == v18;
        ++v15;
      }

      while (v12 != v15);
      if ((v14 & 1) == 0)
      {
        goto LABEL_24;
      }

      v54 = 0;
      v19 = [v6 methodSignature];
      v20 = [v19 numberOfArguments] - 1;

      [v6 getArgument:&v54 atIndex:v20];
      if (v54)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *a4 = v13;
          v21 = [v54 copy];
          goto LABEL_25;
        }

        v41 = +[AMSUnitTests isRunningUnitTests];
        v42 = +[AMSLogConfig sharedConfig];
        v35 = v42;
        if (v41)
        {
          if (!v42)
          {
            v35 = +[AMSLogConfig sharedConfig];
          }

          v36 = [v35 OSLogObject];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v43 = objc_opt_class();
            v44 = AMSLogKey();
            v45 = AMSHashIfNeeded(v54);
            *buf = 138543874;
            v56 = v43;
            v57 = 2114;
            v58 = v44;
            v59 = 2114;
            v60 = v45;
            _os_log_impl(&dword_192869000, v36, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Reply handler object isn't a block. object = %{public}@", buf, 0x20u);
          }

LABEL_31:

          v39 = [MEMORY[0x1E696AD88] defaultCenter];
          v40 = +[AMSLogConfig sharedConfig];
          [v39 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v40 userInfo:0];

          goto LABEL_24;
        }

        if (!v42)
        {
          v35 = +[AMSLogConfig sharedConfig];
        }

        v46 = [v35 OSLogObject];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
        {
          v49 = objc_opt_class();
          v50 = AMSLogKey();
          v51 = AMSHashIfNeeded(v54);
          *buf = 138543874;
          v56 = v49;
          v57 = 2114;
          v58 = v50;
          v59 = 2114;
          v60 = v51;
          _os_log_impl(&dword_192869000, v46, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] Reply handler object isn't a block. object = %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v33 = +[AMSUnitTests isRunningUnitTests];
        v34 = +[AMSLogConfig sharedConfig];
        v35 = v34;
        if (v33)
        {
          if (!v34)
          {
            v35 = +[AMSLogConfig sharedConfig];
          }

          v36 = [v35 OSLogObject];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = objc_opt_class();
            v38 = AMSLogKey();
            *buf = 138543618;
            v56 = v37;
            v57 = 2114;
            v58 = v38;
            _os_log_impl(&dword_192869000, v36, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Reply handler block unexpectedly nil.", buf, 0x16u);
          }

          goto LABEL_31;
        }

        if (!v34)
        {
          v35 = +[AMSLogConfig sharedConfig];
        }

        v46 = [v35 OSLogObject];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
        {
          v47 = objc_opt_class();
          v48 = AMSLogKey();
          *buf = 138543618;
          v56 = v47;
          v57 = 2114;
          v58 = v48;
          _os_log_impl(&dword_192869000, v46, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] Reply handler block unexpectedly nil.", buf, 0x16u);
        }
      }
    }

LABEL_24:
    v21 = 0;
LABEL_25:
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void _handleNotification(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 observerBlock];
    if (v2)
    {
      v3 = v2;
      v2[2]();
      v2 = v3;
    }
  }
}

BOOL AMSDefaultsNewFeaturesEnabled()
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.AppleMediaServices");
  return CFPreferencesGetAppBooleanValue(@"AMSNewFeaturesEnabled", @"com.apple.AppleMediaServices", &keyExistsAndHasValidFormat) || keyExistsAndHasValidFormat == 0;
}

void sub_192DEF710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192DEFDE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_192DF1780(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_192DF32D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_192DF70D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192DF8738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNFHardwareManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNFHardwareManagerClass_softClass;
  v7 = getNFHardwareManagerClass_softClass;
  if (!getNFHardwareManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNFHardwareManagerClass_block_invoke;
    v3[3] = &unk_1E73B3880;
    v3[4] = &v4;
    __getNFHardwareManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_192DFC260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED6E28D8 = result;
  return result;
}

void __getNFSecureElementClass_block_invoke(uint64_t a1)
{
  NearFieldLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NFSecureElement");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNFSecureElementClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "NFSecureElement");
    NearFieldLibrary();
  }
}

void NearFieldLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!NearFieldLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __NearFieldLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E73B6BE0;
    v3 = 0;
    NearFieldLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (NearFieldLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __NearFieldLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NearFieldLibraryCore_frameworkLibrary = result;
  return result;
}

AMSDeviceAccountPrivacyAcknowledgementTask *__getNFHardwareManagerClass_block_invoke(uint64_t a1)
{
  NearFieldLibrary();
  result = objc_getClass("NFHardwareManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNFHardwareManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "NFHardwareManager");
    return [(AMSDeviceAccountPrivacyAcknowledgementTask *)v3 initWithAccount:v4 bag:v5, v6];
  }

  return result;
}

void sub_192DFF120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192DFFA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192E013C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_192E058EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E089B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E093C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED6E2908)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MobileKeyBagLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E73B70B8;
    v7 = 0;
    qword_1ED6E2908 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1ED6E2908;
    if (qword_1ED6E2908)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1ED6E2908;
LABEL_5:
  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_103 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED6E2908 = result;
  return result;
}

void sub_192E104E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E12134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_192E134D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E150B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_192E1A7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E1AD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E1B1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E1C758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E1C9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E1D848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _handleClearCachesNotification()
{
  v0 = +[AMSEngagementClientData _sharedQueue];
  dispatch_async(v0, &__block_literal_global_79);
}

void ___handleClearCachesNotification_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = +[AMSLogConfig sharedEngagementConfig];
  if (!v0)
  {
    v0 = +[AMSLogConfig sharedConfig];
  }

  v1 = [v0 OSLogObject];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 138543362;
    v4 = objc_opt_class();
    _os_log_impl(&dword_192869000, v1, OS_LOG_TYPE_DEBUG, "%{public}@: Client data changed", &v3, 0xCu);
  }

  v2 = kSharedInstance;
  kSharedInstance = 0;
}

void sub_192E25FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AMSCustomCodableError(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a1;
  v16 = objc_opt_class();
  v17 = AMSCustomSubclassedError(v15, a2, v14, v13, v12, v11, v16);

  return v17;
}

id AMSErrorWithMultipleUnderlyingErrors(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E696A750];
  v15[0] = a4;
  v7 = MEMORY[0x1E695DF20];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v12 = AMSCustomError(@"AMSErrorDomain", a1, v10, v9, v11, 0);

  return v12;
}

id AMSErrorBySettingUnderlyingError(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 userInfo];
  v6 = [v5 mutableCopy];

  [v6 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  v7 = objc_alloc(MEMORY[0x1E696ABC0]);
  v8 = [v4 domain];
  v9 = [v4 code];

  v10 = [v7 initWithDomain:v8 code:v9 userInfo:v6];

  return v10;
}

void sub_192E2C1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E2C57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E2CA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E2CE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E2D0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E2D7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E2F198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, __int16 a11, __int16 a12, uint64_t a13, __int16 a14, __int128 a15)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exception_object);
    v16 = AMSSetLogKeyIfNeeded();
    if (+[AMSUnitTests isRunningUnitTests])
    {
      v17 = +[AMSLogConfig sharedConfig];
      if (!v17)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      v18 = [v17 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        LODWORD(a9) = 138544386;
        *(&a9 + 4) = v19;
        WORD6(a9) = 2114;
        *(&a9 + 14) = v16;
        a12 = 2114;
        a14 = 2114;
        WORD1(a15) = 2114;
        *(&a15 + 4) = v15;
        _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error fetching state for feature flag %{public}@/%{public}@: %{public}@", &a9, 0x34u);
      }

      v20 = [MEMORY[0x1E696AD88] defaultCenter];
      v21 = +[AMSLogConfig sharedConfig];
      [v20 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v21 userInfo:0];
    }

    else
    {
      v20 = +[AMSLogConfig sharedConfig];
      if (!v20)
      {
        v20 = +[AMSLogConfig sharedConfig];
      }

      v21 = [v20 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v22 = objc_opt_class();
        LODWORD(a9) = 138544386;
        *(&a9 + 4) = v22;
        WORD6(a9) = 2114;
        *(&a9 + 14) = v16;
        a12 = 2114;
        a14 = 2114;
        WORD1(a15) = 2114;
        *(&a15 + 4) = v15;
        _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] Error fetching state for feature flag %{public}@/%{public}@: %{public}@", &a9, 0x34u);
      }
    }

    exit(1);
  }

  _Unwind_Resume(exception_object);
}

void sub_192E2F46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, __int16 a11, __int16 a12, uint64_t a13, __int16 a14, __int128 a15)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(exception_object);
    v17 = AMSSetLogKeyIfNeeded();
    if (+[AMSUnitTests isRunningUnitTests])
    {
      v18 = +[AMSLogConfig sharedConfig];
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
        LODWORD(a9) = 138544642;
        *(&a9 + 4) = v20;
        WORD6(a9) = 2114;
        *(&a9 + 14) = v17;
        a12 = 2114;
        a14 = 2114;
        WORD1(a15) = 2114;
        *(&a15 + 4) = v21;
        WORD6(a15) = 2114;
        *(&a15 + 14) = v16;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error fetching state for feature flag and level %{public}@/%{public}@/%{public}@: %{public}@", &a9, 0x3Eu);
      }

      v22 = [MEMORY[0x1E696AD88] defaultCenter];
      v23 = +[AMSLogConfig sharedConfig];
      [v22 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v23 userInfo:0];
    }

    else
    {
      v22 = +[AMSLogConfig sharedConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v24 = objc_opt_class();
        v25 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
        LODWORD(a9) = 138544642;
        *(&a9 + 4) = v24;
        WORD6(a9) = 2114;
        *(&a9 + 14) = v17;
        a12 = 2114;
        a14 = 2114;
        WORD1(a15) = 2114;
        *(&a15 + 4) = v25;
        WORD6(a15) = 2114;
        *(&a15 + 14) = v16;
        _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] Error fetching state for feature flag and level %{public}@/%{public}@/%{public}@: %{public}@", &a9, 0x3Eu);
      }
    }

    exit(1);
  }

  _Unwind_Resume(exception_object);
}

void sub_192E3C20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAPRequestHandlerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED6E29F0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AskPermissionLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E73B7CD8;
    v6 = 0;
    qword_1ED6E29F0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED6E29F0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("APRequestHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "APRequestHandler");
  }

  _MergedGlobals_112 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AskPermissionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED6E29F0 = result;
  return result;
}

void sub_192E44094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getFLGroupIdentifierAppleServices()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getFLGroupIdentifierAppleServicesSymbolLoc_ptr;
  v9 = getFLGroupIdentifierAppleServicesSymbolLoc_ptr;
  if (!getFLGroupIdentifierAppleServicesSymbolLoc_ptr)
  {
    v1 = CoreFollowUpLibrary();
    v7[3] = dlsym(v1, "FLGroupIdentifierAppleServices");
    getFLGroupIdentifierAppleServicesSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    v4 = dlerror();
    v5 = abort_report_np("%s", v4);
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

void sub_192E51C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFLFollowUpControllerClass_block_invoke(uint64_t a1)
{
  CoreFollowUpLibrary();
  result = objc_getClass("FLFollowUpController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFLFollowUpControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "FLFollowUpController");
    return CoreFollowUpLibrary();
  }

  return result;
}

uint64_t CoreFollowUpLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreFollowUpLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreFollowUpLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E73B82A8;
    v5 = 0;
    CoreFollowUpLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = CoreFollowUpLibraryCore_frameworkLibrary;
    if (CoreFollowUpLibraryCore_frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np("%s", v3[0]);
    }

    free(v1);
    return v0;
  }

  return CoreFollowUpLibraryCore_frameworkLibrary;
}

uint64_t __CoreFollowUpLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreFollowUpLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getFLGroupIdentifierAppleServicesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreFollowUpLibrary();
  result = dlsym(v2, "FLGroupIdentifierAppleServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFLGroupIdentifierAppleServicesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

AMSFollowUpAction *__getFLFollowUpItemClass_block_invoke(uint64_t a1)
{
  CoreFollowUpLibrary();
  result = objc_getClass("FLFollowUpItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFLFollowUpItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "FLFollowUpItem");
    return [(AMSFollowUpAction *)v3 initWithLabel:v4 parentIdentifier:v5, v6];
  }

  return result;
}

void sub_192E52CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E52EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E53024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E53198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E533BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E53518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E536B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E53BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFLFollowUpActionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED6E2A10)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreFollowUpLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E73B82F0;
    v6 = 0;
    qword_1ED6E2A10 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED6E2A10)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FLFollowUpAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "FLFollowUpAction");
  }

  _MergedGlobals_114 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreFollowUpLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED6E2A10 = result;
  return result;
}

id getFLUserInfoPropertyDontDisplayDate()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getFLUserInfoPropertyDontDisplayDateSymbolLoc_ptr;
  v9 = getFLUserInfoPropertyDontDisplayDateSymbolLoc_ptr;
  if (!getFLUserInfoPropertyDontDisplayDateSymbolLoc_ptr)
  {
    v1 = CoreFollowUpLibrary_0();
    v7[3] = dlsym(v1, "FLUserInfoPropertyDontDisplayDate");
    getFLUserInfoPropertyDontDisplayDateSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    v4 = dlerror();
    v5 = abort_report_np("%s", v4);
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

void sub_192E5588C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E55C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E56170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E5631C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E564B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E57204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFLUserInfoPropertyDontDisplayDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreFollowUpLibrary_0();
  result = dlsym(v2, "FLUserInfoPropertyDontDisplayDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFLUserInfoPropertyDontDisplayDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreFollowUpLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreFollowUpLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreFollowUpLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E73B8328;
    v5 = 0;
    CoreFollowUpLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v1 = v3[0];
    v0 = CoreFollowUpLibraryCore_frameworkLibrary_0;
    if (CoreFollowUpLibraryCore_frameworkLibrary_0)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np("%s", v3[0]);
    }

    free(v1);
    return v0;
  }

  return CoreFollowUpLibraryCore_frameworkLibrary_0;
}

uint64_t __CoreFollowUpLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  CoreFollowUpLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getFLGroupIdentifierNoGroupSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreFollowUpLibrary_0();
  result = dlsym(v2, "FLGroupIdentifierNoGroup");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED6E2A28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFLGroupIdentifierAppleServicesSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreFollowUpLibrary_0();
  result = dlsym(v2, "FLGroupIdentifierAppleServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED6E2A30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFLGroupIdentifierNewDeviceOutreachSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreFollowUpLibrary_0();
  result = dlsym(v2, "FLGroupIdentifierNewDeviceOutreach");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED6E2A38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFLGroupIdentifierAccountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreFollowUpLibrary_0();
  result = dlsym(v2, "FLGroupIdentifierAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED6E2A40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFLGroupIdentifierDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreFollowUpLibrary_0();
  result = dlsym(v2, "FLGroupIdentifierDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED6E2A48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getFLFollowUpItemClass_block_invoke_0(uint64_t a1)
{
  CoreFollowUpLibrary_0();
  result = objc_getClass("FLFollowUpItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFLFollowUpItemClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "FLFollowUpItem");
    return [(AMSFollowUpMetricsEvent *)v3 eventFromMetricsDictionary:v4, v5];
  }

  return result;
}

void sub_192E5818C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getFLNotificationOptionLockscreen()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getFLNotificationOptionLockscreenSymbolLoc_ptr;
  v9 = getFLNotificationOptionLockscreenSymbolLoc_ptr;
  if (!getFLNotificationOptionLockscreenSymbolLoc_ptr)
  {
    v1 = CoreFollowUpLibrary_1();
    v7[3] = dlsym(v1, "FLNotificationOptionLockscreen");
    getFLNotificationOptionLockscreenSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    v4 = dlerror();
    v5 = abort_report_np("%s", v4);
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

id getFLNotificationOptionNotificationCenter()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getFLNotificationOptionNotificationCenterSymbolLoc_ptr;
  v9 = getFLNotificationOptionNotificationCenterSymbolLoc_ptr;
  if (!getFLNotificationOptionNotificationCenterSymbolLoc_ptr)
  {
    v1 = CoreFollowUpLibrary_1();
    v7[3] = dlsym(v1, "FLNotificationOptionNotificationCenter");
    getFLNotificationOptionNotificationCenterSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    v4 = dlerror();
    v5 = abort_report_np("%s", v4);
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

id getFLNotificationOptionBannerAlert()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getFLNotificationOptionBannerAlertSymbolLoc_ptr;
  v9 = getFLNotificationOptionBannerAlertSymbolLoc_ptr;
  if (!getFLNotificationOptionBannerAlertSymbolLoc_ptr)
  {
    v1 = CoreFollowUpLibrary_1();
    v7[3] = dlsym(v1, "FLNotificationOptionBannerAlert");
    getFLNotificationOptionBannerAlertSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    v4 = dlerror();
    v5 = abort_report_np("%s", v4);
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

void sub_192E5877C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFLFollowUpNotificationClass_block_invoke(uint64_t a1)
{
  CoreFollowUpLibrary_1();
  result = objc_getClass("FLFollowUpNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFLFollowUpNotificationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "FLFollowUpNotification");
    return CoreFollowUpLibrary_1();
  }

  return result;
}

uint64_t CoreFollowUpLibrary_1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreFollowUpLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreFollowUpLibraryCore_block_invoke_2;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E73B8340;
    v5 = 0;
    CoreFollowUpLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v1 = v3[0];
    v0 = CoreFollowUpLibraryCore_frameworkLibrary_1;
    if (CoreFollowUpLibraryCore_frameworkLibrary_1)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np("%s", v3[0]);
    }

    free(v1);
    return v0;
  }

  return CoreFollowUpLibraryCore_frameworkLibrary_1;
}

uint64_t __CoreFollowUpLibraryCore_block_invoke_2(uint64_t a1)
{
  result = _sl_dlopen();
  CoreFollowUpLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void *__getFLNotificationOptionLockscreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreFollowUpLibrary_1();
  result = dlsym(v2, "FLNotificationOptionLockscreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFLNotificationOptionLockscreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFLNotificationOptionNotificationCenterSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreFollowUpLibrary_1();
  result = dlsym(v2, "FLNotificationOptionNotificationCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFLNotificationOptionNotificationCenterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFLNotificationOptionBannerAlertSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreFollowUpLibrary_1();
  result = dlsym(v2, "FLNotificationOptionBannerAlert");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFLNotificationOptionBannerAlertSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFLNotificationOptionKeepOnLockscreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreFollowUpLibrary_1();
  result = dlsym(v2, "FLNotificationOptionKeepOnLockscreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFLNotificationOptionKeepOnLockscreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id AMSFraudReportAddDeviceIdentityCertificateAndSignatureToRequest(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  v9 = v6;
  v10 = v7;
  v11 = &unk_193016000;
  if (MGGetBoolAnswer())
  {
    v12 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = AMSLogKey();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_INFO, "AMSFraudReport [%{public}@] Attempting to sign with host certificate because we're in VM", &buf, 0xCu);
    }

    v15 = AMSFraudReportGetSignatureForRequestAfterAddingDeviceIdentityCertificatesOnVM(v8, v9, 0);
  }

  else
  {
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v19 = v18;
    if (v16 && v17 && v18)
    {
      v20 = [[AMSDeviceIdentityCertificateTask alloc] initWithBag:v18];
      v21 = [(AMSDeviceIdentityCertificateTask *)v20 performDeviceIdentityRequestForFraudReport];
      v22 = AMSLogKey();
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v30 = __AMSFraudReportGetSignatureForRequestAfterAddingDeviceIdentityCertificatesOnDevice_block_invoke;
      v31 = &unk_1E73B83B0;
      v32 = v16;
      v33 = v17;
      v34 = v22;
      v23 = v22;
      v15 = [v21 thenWithBlock:&buf];

      v11 = &unk_193016000;
    }

    else
    {
      v20 = +[AMSOptional optionalWithNil];
      v15 = [AMSPromise promiseWithResult:v20];
    }
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = v11[267];
  v27[2] = __AMSFraudReportAddDeviceIdentityCertificateAndSignatureToRequest_block_invoke;
  v27[3] = &unk_1E73B5BB0;
  v28 = v8;
  v24 = v8;
  v25 = [v15 thenWithBlock:v27];

  return v25;
}

id __AMSFraudReportAddDeviceIdentityCertificateAndSignatureToRequest_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 value];
    v7 = [v6 base64EncodedStringWithOptions:0];
    [v5 setValue:v7 forHTTPHeaderField:@"X-Apple-FSR-Signature"];

    v8 = +[AMSDevice deviceGUID];
    if (v8)
    {
      [*(a1 + 32) setValue:v8 forHTTPHeaderField:@"X-Mme-Device-Id"];
    }
  }

  v9 = [AMSPromise promiseWithResult:*(a1 + 32)];

  return v9;
}

AMSMutablePromise *AMSFraudReportGetSignatureForRequestAfterAddingDeviceIdentityCertificatesOnVM(void *a1, void *a2, char a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a2;
  v6 = v5;
  if (v4 && v5)
  {
    v7 = AMSLogKey();
    if (DeviceIdentityIsSupported())
    {
      v8 = objc_opt_new();
      v9 = dispatch_get_global_queue(21, 0);
      v10 = objc_opt_new();
      v17 = v8;
      v18 = v6;
      v19 = v4;
      v20 = v7;
      v21 = v9;
      v11 = v9;
      DeviceIdentityCreateHostSignatureWithCompletion();

      v12 = v17;
    }

    else
    {
      v14 = +[AMSLogConfig sharedFraudReportConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v23 = v7;
        _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "AMSFraudReport [%{public}@] Error signing the fraud report score payload. DeviceIdentity is not supported on this platform.", buf, 0xCu);
      }

      v11 = +[AMSOptional optionalWithNil];
      v12 = [AMSPromise promiseWithResult:v11];
    }
  }

  else
  {
    v13 = +[AMSOptional optionalWithNil];
    v12 = [AMSPromise promiseWithResult:v13];
  }

  return v12;
}

void __AMSFraudReportGetSignatureForRequestAfterAddingDeviceIdentityCertificatesOnVM_block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if ([v8 count] <= 1)
    {
      v11 = a1[4];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected at least 2 certificates (leaf BAA + intermediate), but only got %lu", objc_msgSend(v8, "count")];
      v13 = AMSError(12, @"Fewer host certificates than expected", v12, 0);
      [v11 finishWithError:v13];

LABEL_15:
      goto LABEL_23;
    }

    v15 = [v8 objectAtIndexedSubscript:0];

    v16 = [v8 objectAtIndexedSubscript:1];

    v17 = SecCertificateCopyData(v15);
    v18 = SecCertificateCopyData(v16);
    v19 = [a1[5] mutableCopy];
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"is_vm"];
    v20 = a1[6];
    v40 = 0;
    v21 = AMSSetRequestBodyWithParametersAndCertificates(v20, v19, v17, v18, &v40);
    v33 = v40;
    if (v21)
    {
      v22 = [a1[6] HTTPBody];
      if (v22)
      {
        v34 = a1[7];
        v35 = a1[4];
        v36 = v17;
        v37 = v18;
        v38 = a1[6];
        v39 = a1[5];
        DeviceIdentityCreateHostSignatureWithCompletion();

        v23 = v34;
      }

      else
      {
        v29 = +[AMSLogConfig sharedFraudReportConfig];
        if (!v29)
        {
          v29 = +[AMSLogConfig sharedConfig];
        }

        v30 = [v29 OSLogObject];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = a1[7];
          *buf = 138543362;
          v42 = v31;
          _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_ERROR, "AMSFraudReport [%{public}@] Error signing the fraud report score payload. No data to sign, request body is nil.", buf, 0xCu);
        }

        v32 = a1[4];
        v23 = +[AMSOptional optionalWithNil];
        [v32 finishWithResult:v23];
      }

      v26 = v33;
    }

    else
    {
      v24 = +[AMSLogConfig sharedFraudReportConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v24 OSLogObject];
      v26 = v33;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = a1[7];
        *buf = 138543618;
        v42 = v27;
        v43 = 2114;
        v44 = v33;
        _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_ERROR, "AMSFraudReport [%{public}@] Error signing the fraud report score payload. Unable to set request body: %{public}@.", buf, 0x16u);
      }

      v28 = a1[4];
      v22 = +[AMSOptional optionalWithNil];
      [v28 finishWithResult:v22];
    }
  }

  else
  {
    v14 = a1[4];
    if (!v9)
    {
      v12 = AMSError(12, @"Unable to retrieve host certificates", @"DeviceIdentity didn't return host certificates nor error", 0);
      [v14 finishWithError:v12];
      goto LABEL_15;
    }

    [a1[4] finishWithError:v9];
  }

LABEL_23:
}

uint64_t AMSSetRequestBodyWithParametersAndCertificates(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    return 0;
  }

  v9 = MEMORY[0x1E695DF88];
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v14 = [[v9 alloc] initWithData:v11];

  [v14 appendData:v10];
  v15 = [v14 base64EncodedStringWithOptions:0];
  v16 = [v12 mutableCopy];

  [v16 setObject:v15 forKeyedSubscript:@"baa_cert"];
  v17 = [v13 ams_setBodyParameters:v16 encoding:3 compressBody:0 error:a5];

  return v17;
}

void __AMSFraudReportGetSignatureForRequestAfterAddingDeviceIdentityCertificatesOnVM_block_invoke_26(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    v10 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v14 = *(a1 + 32);
    v34 = 138543618;
    v35 = v14;
    v36 = 2114;
    v37 = v9;
    v13 = "AMSFraudReport [%{public}@] Error signing the fraud report score payload. Cannot create signature: %{public}@";
    goto LABEL_16;
  }

  if (!v8)
  {
    v10 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v15 = *(a1 + 32);
    v34 = 138543618;
    v35 = v15;
    v36 = 2114;
    v37 = v9;
    v13 = "AMSFraudReport [%{public}@] Error signing the fraud report score payload. Cannot get certificates: %{public}@";
    goto LABEL_16;
  }

  if ([v8 count] > 1)
  {
    v18 = [v8 objectAtIndexedSubscript:0];

    v19 = [v8 objectAtIndexedSubscript:1];

    v17 = SecCertificateCopyData(v18);
    v20 = SecCertificateCopyData(v19);
    if ([*(a1 + 48) isEqualToData:v17] && (objc_msgSend(*(a1 + 56), "isEqualToData:", v20) & 1) != 0)
    {
      v21 = *(a1 + 40);
      v22 = [[AMSOptional alloc] initWithValue:v7];
    }

    else
    {
      v23 = *(a1 + 80);
      v24 = +[AMSLogConfig sharedFraudReportConfig];
      v25 = v24;
      if (v23 != 1)
      {
        if (!v24)
        {
          v25 = +[AMSLogConfig sharedConfig];
        }

        v29 = [v25 OSLogObject];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(a1 + 32);
          v34 = 138543362;
          v35 = v30;
          _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, "AMSFraudReport [%{public}@] Certificate data when signing differs from initial certificate data, retrying signing once.", &v34, 0xCu);
        }

        v31 = AMSSetLogKey(*(a1 + 32));
        v32 = *(a1 + 40);
        v33 = AMSFraudReportGetSignatureForRequestAfterAddingDeviceIdentityCertificatesOnVM(*(a1 + 64), *(a1 + 72), 1);
        [v32 finishWithPromise:v33];

        goto LABEL_34;
      }

      if (!v24)
      {
        v25 = +[AMSLogConfig sharedConfig];
      }

      v26 = [v25 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 32);
        v34 = 138543362;
        v35 = v27;
        _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_ERROR, "AMSFraudReport [%{public}@] Error signing the fraud report score payload. Certificate data when signing differs even after retry.", &v34, 0xCu);
      }

      v21 = *(a1 + 40);
      v22 = +[AMSOptional optionalWithNil];
    }

    v28 = v22;
    [v21 finishWithResult:v22];

LABEL_34:
    goto LABEL_18;
  }

  v10 = +[AMSLogConfig sharedFraudReportConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_17;
  }

  v12 = *(a1 + 32);
  v34 = 138543618;
  v35 = v12;
  v36 = 2048;
  v37 = [v8 count];
  v13 = "AMSFraudReport [%{public}@] Error signing the fraud report score payload. Too few certificates returned, expected at least 2, but received %lu";
LABEL_16:
  _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, v13, &v34, 0x16u);
LABEL_17:

  v16 = *(a1 + 40);
  v17 = +[AMSOptional optionalWithNil];
  [v16 finishWithResult:v17];
LABEL_18:
}

id __AMSFraudReportGetSignatureForRequestAfterAddingDeviceIdentityCertificatesOnDevice_block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [v3 BAACert];
  v7 = [v3 IntermediateRootCert];
  v23 = 0;
  LODWORD(v5) = AMSSetRequestBodyWithParametersAndCertificates(v4, v5, v6, v7, &v23);
  v8 = v23;

  if (!v5)
  {
    v9 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v9 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 48);
      *error = 138543618;
      *&error[4] = v15;
      v25 = 2114;
      v26 = v8;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "AMSFraudReport [%{public}@] Error signing the fraud report score payload. Unable to set request body: %{public}@.", error, 0x16u);
    }

    goto LABEL_22;
  }

  v9 = [*(a1 + 32) HTTPBody];
  if (!v9)
  {
    v14 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v14 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 48);
      *error = 138543362;
      *&error[4] = v17;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "AMSFraudReport [%{public}@] Error signing the fraud report score payload. No data to sign, request body is nil.", error, 0xCu);
    }

    goto LABEL_21;
  }

  v10 = [v3 BIKKeyRef];
  if (v10)
  {
    *error = 0;
    Signature = SecKeyCreateSignature(v10, *MEMORY[0x1E697B128], v9, error);
    v12 = 0;
    if (!Signature)
    {
      v12 = *error;
      v13 = *error;
    }
  }

  else
  {
    v12 = 0;
    Signature = 0;
  }

  v14 = v12;
  if (!Signature)
  {
    v16 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v16 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 48);
      *error = 138543618;
      *&error[4] = v19;
      v25 = 2114;
      v26 = v14;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "AMSFraudReport [%{public}@] Error signing the fraud report score payload. Cannot create signature: %{public}@", error, 0x16u);
    }

LABEL_21:
LABEL_22:
    Signature = 0;
  }

  v20 = [[AMSOptional alloc] initWithValue:Signature];
  v21 = [AMSPromise promiseWithResult:v20];

  return v21;
}

AMSFraudReportDatabaseStateStorage *AMSFraudReportResponseHandlingDefaultStateStorageFactoryBlock_block_invoke_2()
{
  v0 = objc_opt_new();

  return v0;
}

id __AMSFraudReportIsFeatureSupportedForBag_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 BOOLValue] & 1) != 0 || !MGGetBoolAnswer())
  {
    v6 = [AMSPromise promiseWithResult:v3];
  }

  else
  {
    v4 = [*(a1 + 32) BOOLForKey:@"fsr-vm-disabled"];
    v5 = [v4 valuePromise];
    v6 = [v5 catchWithBlock:&__block_literal_global_24];
  }

  return v6;
}

id __AMSFraudReportHandleResponse_block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if ([a2 BOOLValue])
  {
    v3 = AMSFraudReportFallbackAccountForAccount(*(a1 + 40));
    v4 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      LODWORD(v27) = 138543362;
      *(&v27 + 4) = v6;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_INFO, "AMSFraudReport: [%{public}@] Handling retry-based fraud score refresh request.", &v27, 0xCu);
    }

    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    v11 = *(a1 + 64);
    v12 = v9;
    v13 = v7;
    v14 = v3;
    v15 = v8;
    v16 = v10;
    v17 = AMSSetLogKeyIfNeeded();
    v18 = AMSFraudReportGetFSRHeadersForFraudReportResponse(v13, v14, v15, v16);

    *&v27 = MEMORY[0x1E69E9820];
    *(&v27 + 1) = 3221225472;
    v28 = __AMSFraudReportHandleRetryFraudReportResponse_block_invoke;
    v29 = &unk_1E73B84B0;
    v31 = v11;
    v32 = v12;
    v30 = v17;
    v19 = v17;
    v20 = v12;
    v21 = v11;
    v22 = [v18 continueWithBlock:&v27];
  }

  else
  {
    v23 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v23)
    {
      v23 = +[AMSLogConfig sharedConfig];
    }

    v24 = [v23 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 32);
      LODWORD(v27) = 138543362;
      *(&v27 + 4) = v25;
      _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_INFO, "AMSFraudReport: [%{public}@] Skipping fraud report score refresh because fraud report is not enabled in the bag.", &v27, 0xCu);
    }

    v14 = +[AMSOptional optionalWithNil];
    v22 = [AMSPromise promiseWithResult:v14];
  }

  return v22;
}

id AMSFraudReportFallbackAccountForAccount(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = AMSSetLogKeyIfNeeded();
  if (!v1 || ([v1 ams_isLocalAccount] & 1) != 0 || (objc_msgSend(v1, "isActive") & 1) == 0)
  {
    v3 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v4 = [v3 ams_activeiTunesAccount];

    if (v4)
    {
      v5 = v4;

      v6 = +[AMSLogConfig sharedFraudReportConfig];
      if (!v6)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v7 = [v6 OSLogObject];
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v11 = 138543362;
      v12 = v2;
      v8 = "AMSFraudReport: [%{public}@] Fraud report: account overridden with the active account.";
    }

    else
    {
      if ([v1 ams_isLocalAccount])
      {
LABEL_16:

        goto LABEL_17;
      }

      v9 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      v5 = [v9 ams_localiTunesAccount];

      v6 = +[AMSLogConfig sharedFraudReportConfig];
      if (!v6)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v7 = [v6 OSLogObject];
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:

        v1 = v5;
        goto LABEL_16;
      }

      v11 = 138543362;
      v12 = v2;
      v8 = "AMSFraudReport: [%{public}@] Fraud report: account overridden with the local account.";
    }

    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, v8, &v11, 0xCu);
    goto LABEL_15;
  }

LABEL_17:

  return v1;
}

id AMSFraudReportHandleResponseWithDetachedHandling(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = AMSSetLogKeyIfNeeded();
  v21 = [v14 ams_isFraudReportInitURLResponse];
  v22 = [v14 ams_isFraudReportCallbackResponse];
  if (v21 & 1) != 0 || (v22)
  {
    v24 = AMSFraudReportIsFeatureSupportedForBag(v16);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __AMSFraudReportHandleResponseWithDetachedHandling_block_invoke;
    v26[3] = &unk_1E73B8460;
    v27 = v20;
    v28 = v15;
    v35 = v21;
    v29 = v13;
    v30 = v14;
    v31 = v16;
    v33 = v18;
    v32 = v17;
    v34 = v19;
    v23 = [v24 thenWithBinaryPromiseBlock:v26];
  }

  else
  {
    if (([v14 statusCode] - 200) <= 0x63)
    {
      AMSFraudReportUpdateInitURLStateStorage(v18, v17, v20);
    }

    v23 = +[AMSBinaryPromise promiseWithSuccess];
  }

  return v23;
}

void AMSFraudReportUpdateInitURLStateStorage(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = a2;
  v8 = [v7 objectForKeyedSubscript:@"AMSFraudReportInitURLPersistenceKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 objectForKeyedSubscript:@"AMSFraudReportInitURLUpdatedState"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;

    if (v9 && v11)
    {
      v12 = v5[2](v5);
      v13 = v12;
      if (v12)
      {
        [v12 setObject:v11 forKeyedSubscript:v9];
        v14 = +[AMSLogConfig sharedFraudReportConfig];
        if (!v14)
        {
          v14 = +[AMSLogConfig sharedConfig];
        }

        v15 = [v14 OSLogObject];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = 138543362;
          v17 = v6;
          _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_INFO, "AMSFraudReport: [%{public}@] Updated Init URL persistent state.", &v16, 0xCu);
        }
      }
    }
  }

  else
  {

    v11 = 0;
  }
}

id __AMSFraudReportHandleResponseWithDetachedHandling_block_invoke(uint64_t a1, void *a2)
{
  v119 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 BOOLValue])
  {
    v100 = AMSFraudReportFallbackAccountForAccount(*(a1 + 40));
    v4 = *(a1 + 96);
    v5 = +[AMSLogConfig sharedFraudReportConfig];
    v6 = v5;
    if ((v4 & 1) == 0)
    {
      if (!v5)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v38 = [v6 OSLogObject];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = *(a1 + 32);
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v39;
        _os_log_impl(&dword_192869000, v38, OS_LOG_TYPE_INFO, "AMSFraudReport: [%{public}@] Handling callback-based fraud score refresh request.", &buf, 0xCu);
      }

      v40 = *(a1 + 48);
      v41 = *(a1 + 56);
      v42 = *(a1 + 64);
      v43 = *(a1 + 72);
      v45 = *(a1 + 80);
      v44 = *(a1 + 88);
      v46 = v40;
      v47 = v41;
      v48 = v42;
      v49 = v43;
      v50 = v45;
      v51 = v100;
      v52 = v44;
      v53 = AMSSetLogKeyIfNeeded();
      v54 = AMSFraudReportGetFSRHeadersForFraudReportResponse(v47, v51, v48, v52);

      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v111 = __AMSFraudReportHandleCallbackFraudReportResponse_block_invoke;
      v112 = &unk_1E73B8550;
      v113 = v53;
      v114 = v47;
      v115 = v46;
      v116 = v48;
      v117 = v49;
      v118 = v50;
      v55 = v53;
      v56 = v47;
      v57 = v46;
      v58 = v48;
      v59 = v50;
      v60 = v49;
      v37 = [v54 continueWithBinaryPromiseBlock:&buf];

      goto LABEL_92;
    }

    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_INFO, "AMSFraudReport: [%{public}@] Handling init-URL-based fraud score refresh request.", &buf, 0xCu);
    }

    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 80);
    v94 = v9;
    v13 = v10;
    v96 = v100;
    v95 = v11;
    v97 = v12;
    v98 = AMSSetLogKeyIfNeeded();
    v14 = MEMORY[0x1E695DFF8];
    v15 = [v13 ams_fsrInitUrl];
    v99 = [v14 URLWithString:v15];

    if (!v99)
    {
      v61 = +[AMSLogConfig sharedFraudReportConfig];
      if (!v61)
      {
        v61 = +[AMSLogConfig sharedConfig];
      }

      v62 = [v61 OSLogObject];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v98;
        _os_log_impl(&dword_192869000, v62, OS_LOG_TYPE_ERROR, "AMSFraudReport: [%{public}@] Failed to create init URL, not calling.", &buf, 0xCu);
      }

      v20 = AMSError(7, @"FSR init URL not found in response", 0, 0);
      v37 = [AMSBinaryPromise promiseWithError:v20];
      goto LABEL_91;
    }

    v16 = v97[2]();
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v111 = __AMSFraudReportHandleInitURLFraudReportResponse_block_invoke;
    v112 = &unk_1E73B3680;
    v17 = v16;
    v113 = v17;
    v90 = _Block_copy(&buf);
    v18 = [v13 ams_fsrNameSpace];
    v19 = [v13 ams_fsrRequestInterval];
    v89 = v99;
    v91 = v18;
    v92 = v19;
    v93 = v96;
    v20 = v17;
    v88 = AMSSetLogKeyIfNeeded();
    if (v93)
    {
      if (v20)
      {
        [v92 doubleValue];
        v22 = v21;
        v23 = MEMORY[0x1E696AEC0];
        v24 = v91;
        v25 = [v93 identifier];
        v26 = [v23 stringWithFormat:@"%@::%@", v24, v25];

        v27 = [v20 objectForKeyedSubscript:v26];
        v28 = [v89 absoluteString];
        v87 = v28;
        if (v28)
        {
          *&v101 = v28;
          v109[0] = @"initURL";
          v109[1] = @"date";
          v29 = objc_opt_new();
          *(&v101 + 1) = v29;
          v109[2] = @"requestInterval";
          v30 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
          v102 = v30;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:v109 count:3];

          v107[0] = @"AMSFraudReportInitURLPersistenceKey";
          v107[1] = @"AMSFraudReportInitURLUpdatedState";
          v108[0] = v26;
          v108[1] = v31;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:2];
          v33 = v32;
        }

        else
        {
          v31 = +[AMSLogConfig sharedFraudReportConfig];
          if (!v31)
          {
            v31 = +[AMSLogConfig sharedConfig];
          }

          v65 = [v31 OSLogObject];
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v101) = 138543362;
            *(&v101 + 4) = v88;
            _os_log_impl(&dword_192869000, v65, OS_LOG_TYPE_ERROR, "AMSFraudReport: [%{public}@] Unable to get init URL string, deleting persisted state for current key.", &v101, 0xCu);
          }

          v32 = 0;
        }

        if (!v27)
        {
          v66 = +[AMSLogConfig sharedFraudReportConfig];
          if (!v66)
          {
            v66 = +[AMSLogConfig sharedConfig];
          }

          v72 = [v66 OSLogObject];
          v64 = 1;
          v86 = v72;
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            *v105 = 138543362;
            v106 = v88;
            _os_log_impl(&dword_192869000, v72, OS_LOG_TYPE_INFO, "AMSFraudReport: [%{public}@] No persisted state for key, will call init URL.", v105, 0xCu);
          }

          goto LABEL_78;
        }

        v66 = [v27 objectForKeyedSubscript:@"initURL"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v73 = +[AMSLogConfig sharedFraudReportConfig];
          if (!v73)
          {
            v73 = +[AMSLogConfig sharedConfig];
          }

          [v73 OSLogObject];
          v86 = v73;
          v74 = v64 = 1;
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            *v105 = 138543362;
            v106 = v88;
            _os_log_impl(&dword_192869000, v74, OS_LOG_TYPE_INFO, "AMSFraudReport: [%{public}@] No or malformed last init URL, will call init URL.", v105, 0xCu);
          }

          goto LABEL_77;
        }

        v67 = [MEMORY[0x1E695DFF8] URLWithString:v66];
        v86 = v67;
        if (v67)
        {
          if (([v67 isEqual:v89]& 1) != 0)
          {
            v85 = [v27 objectForKeyedSubscript:@"date"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v85 timeIntervalSinceNow];
              if (v22 >= -v68)
              {
                v64 = 0;
                goto LABEL_76;
              }

              v69 = +[AMSLogConfig sharedFraudReportConfig];
              if (!v69)
              {
                v69 = +[AMSLogConfig sharedConfig];
              }

              v70 = [v69 OSLogObject];
              if (!os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
              {
                goto LABEL_74;
              }

              *v105 = 138543362;
              v106 = v88;
              v71 = "AMSFraudReport: [%{public}@] Request interval elapsed, will call init URL.";
            }

            else
            {
              v69 = +[AMSLogConfig sharedFraudReportConfig];
              if (!v69)
              {
                v69 = +[AMSLogConfig sharedConfig];
              }

              v70 = [v69 OSLogObject];
              if (!os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
              {
                goto LABEL_74;
              }

              *v105 = 138543362;
              v106 = v88;
              v71 = "AMSFraudReport: [%{public}@] No or malformed last init date, will call init URL.";
            }

            _os_log_impl(&dword_192869000, v70, OS_LOG_TYPE_INFO, v71, v105, 0xCu);
LABEL_74:

            goto LABEL_75;
          }

          v77 = +[AMSLogConfig sharedFraudReportConfig];
          if (!v77)
          {
            v77 = +[AMSLogConfig sharedConfig];
          }

          v85 = v77;
          v69 = [v77 OSLogObject];
          if (!os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            goto LABEL_75;
          }

          *v105 = 138543362;
          v106 = v88;
          v76 = "AMSFraudReport: [%{public}@] Last init URL differs from current init URL, will call init URL.";
        }

        else
        {
          v75 = +[AMSLogConfig sharedFraudReportConfig];
          if (!v75)
          {
            v75 = +[AMSLogConfig sharedConfig];
          }

          v85 = v75;
          v69 = [v75 OSLogObject];
          if (!os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            goto LABEL_75;
          }

          *v105 = 138543362;
          v106 = v88;
          v76 = "AMSFraudReport: [%{public}@] Unable to create last init URL, will call init URL.";
        }

        _os_log_impl(&dword_192869000, v69, OS_LOG_TYPE_INFO, v76, v105, 0xCu);
LABEL_75:

        v64 = 1;
LABEL_76:
        v74 = v85;
LABEL_77:

LABEL_78:
        goto LABEL_79;
      }

      v26 = +[AMSLogConfig sharedFraudReportConfig];
      if (!v26)
      {
        v26 = +[AMSLogConfig sharedConfig];
      }

      v27 = [v26 OSLogObject];
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
LABEL_36:
        v32 = 0;
        v64 = 1;
LABEL_79:

        v78 = v32;
        if (v64)
        {
          v79 = +[AMSLogConfig sharedFraudReportConfig];
          if (!v79)
          {
            v79 = +[AMSLogConfig sharedConfig];
          }

          v80 = [v79 OSLogObject];
          if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
          {
            LODWORD(v101) = 138543362;
            *(&v101 + 4) = v98;
            _os_log_impl(&dword_192869000, v80, OS_LOG_TYPE_INFO, "AMSFraudReport [%{public}@] Calling init URL.", &v101, 0xCu);
          }

          v81 = AMSFraudReportCallURL(v94, v89, 2, 0, v95, v78);
          *&v101 = MEMORY[0x1E69E9820];
          *(&v101 + 1) = 3221225472;
          v102 = __AMSFraudReportHandleInitURLFraudReportResponse_block_invoke_40;
          v103 = &unk_1E73B8488;
          v104 = v98;
          v37 = [v81 continueWithBinaryPromiseBlock:&v101];
        }

        else
        {
          v82 = +[AMSLogConfig sharedFraudReportConfig];
          if (!v82)
          {
            v82 = +[AMSLogConfig sharedConfig];
          }

          v83 = [v82 OSLogObject];
          if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
          {
            LODWORD(v101) = 138543362;
            *(&v101 + 4) = v98;
            _os_log_impl(&dword_192869000, v83, OS_LOG_TYPE_INFO, "AMSFraudReport [%{public}@] Don't need to call init URL at this point, not calling.", &v101, 0xCu);
          }

          v37 = +[AMSBinaryPromise promiseWithSuccess];
        }

        v90[2]();
LABEL_91:

LABEL_92:
        goto LABEL_93;
      }

      LODWORD(v101) = 138543362;
      *(&v101 + 4) = v88;
      v63 = "AMSFraudReport: [%{public}@] Persistent state storage is not available, will call init URL.";
    }

    else
    {
      v26 = +[AMSLogConfig sharedFraudReportConfig];
      if (!v26)
      {
        v26 = +[AMSLogConfig sharedConfig];
      }

      v27 = [v26 OSLogObject];
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      LODWORD(v101) = 138543362;
      *(&v101 + 4) = v88;
      v63 = "AMSFraudReport: [%{public}@] No account available to look up persisted state, will call init URL.";
    }

    _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_ERROR, v63, &v101, 0xCu);
    goto LABEL_36;
  }

  v34 = +[AMSLogConfig sharedFraudReportConfig];
  if (!v34)
  {
    v34 = +[AMSLogConfig sharedConfig];
  }

  v35 = [v34 OSLogObject];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = *(a1 + 32);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v36;
    _os_log_impl(&dword_192869000, v35, OS_LOG_TYPE_INFO, "AMSFraudReport: [%{public}@] Skipping fraud report score refresh because fraud report is not enabled in the bag.", &buf, 0xCu);
  }

  v37 = +[AMSBinaryPromise promiseWithSuccess];
LABEL_93:

  return v37;
}

void __AMSFraudReportHandleInitURLFraudReportResponse_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1;
    v3 = AMSSetLogKeyIfNeeded();
    v4 = [v2 lastCleanupDate];
    v5 = v4;
    if (v4 && ([v4 timeIntervalSinceNow], v6 >= -7257600.0))
    {
      v10 = +[AMSLogConfig sharedFraudReportConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v10 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v33 = v3;
        _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_INFO, "AMSFraudReport: [%{public}@] Not enough time passed since last persistent state cleanup, not cleaning up persistent state.", buf, 0xCu);
      }
    }

    else
    {
      v7 = +[AMSLogConfig sharedFraudReportConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v33 = v3;
        _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_INFO, "AMSFraudReport: [%{public}@] Cleaning up old entries in persistent state.", buf, 0xCu);
      }

      v9 = objc_opt_new();
      [v2 setLastCleanupDate:v9];

      v10 = [v2 allKeys];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v28 objects:buf count:16];
      if (v11)
      {
        v12 = v11;
        v26 = v5;
        v27 = v3;
        v13 = *v29;
        while (1)
        {
          v14 = v10;
          for (i = 0; i != v12; ++i)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v14);
            }

            v16 = *(*(&v28 + 1) + 8 * i);
            v17 = [v2 objectForKeyedSubscript:{v16, v26, v27}];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = v17;
            }

            else
            {
              v18 = 0;
            }

            v19 = [v18 objectForKeyedSubscript:@"date"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = v19;
            }

            else
            {
              v20 = 0;
            }

            v21 = [v18 objectForKeyedSubscript:@"requestInterval"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v21 = 0;
LABEL_25:
              [v2 setObject:0 forKeyedSubscript:v16];
              goto LABEL_26;
            }

            if (!v20)
            {
              goto LABEL_25;
            }

            if (!v21)
            {
              goto LABEL_25;
            }

            [v20 timeIntervalSinceNow];
            v23 = -v22;
            [v21 doubleValue];
            if (v24 < v23)
            {
              goto LABEL_25;
            }

LABEL_26:
          }

          v10 = v14;
          v12 = [v14 countByEnumeratingWithState:&v28 objects:buf count:16];
          if (!v12)
          {
            v5 = v26;
            v3 = v27;
            break;
          }
        }
      }
    }
  }
}

id AMSFraudReportCallURL(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a2;
  v16 = AMSSetLogKeyIfNeeded();
  v17 = [[AMSURLRequestEncoder alloc] initWithBag:v13];

  [(AMSURLRequestEncoder *)v17 setDialogOptions:1];
  [(AMSURLRequestEncoder *)v17 setUrlKnownToBeTrusted:1];
  [(AMSURLRequestEncoder *)v17 setLogUUID:v16];
  v18 = objc_opt_new();
  [(AMSURLRequestEncoder *)v17 setResponseDecoder:v18];

  v19 = [(AMSURLRequestEncoder *)v17 requestWithMethod:a3 URL:v15 headers:v14 parameters:0];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __AMSFraudReportCallURL_block_invoke;
  v24[3] = &unk_1E73B45F0;
  v25 = v12;
  v26 = v11;
  v20 = v11;
  v21 = v12;
  v22 = [v19 thenWithBlock:v24];

  return v22;
}

id __AMSFraudReportHandleInitURLFraudReportResponse_block_invoke_40(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedFraudReportConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_INFO, "AMSFraudReport [%{public}@] Successfully called init URL.", &v16, 0xCu);
    }

    v10 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v7 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = AMSLogableError(v5);
      v16 = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "AMSFraudReport [%{public}@] Failed to call init URL: %{public}@.", &v16, 0x16u);
    }

    v10 = [AMSBinaryPromise promiseWithError:v5];
  }

  v14 = v10;

  return v14;
}

id __AMSFraudReportCallURL_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 properties];
    v6 = [v5 userInfo];
    v7 = [v6 ams_dictionaryByAddingEntriesFromDictionary:*(a1 + 32)];
    v8 = [v4 properties];
    [v8 setUserInfo:v7];
  }

  v9 = [*(a1 + 40) dataTaskPromiseWithRequest:v4];

  return v9;
}

id AMSFraudReportGetFSRHeadersForFraudReportResponse(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = a2;
  v11 = AMSSetLogKeyIfNeeded();
  v12 = [AMSFraudReportOptions alloc];
  v13 = [v7 ams_fsrTransactionID];
  v14 = [v7 ams_fsrNameSpace];
  v15 = [v7 ams_fsrData];
  v16 = [(AMSFraudReportOptions *)v12 initWithTransactionIdentifier:v13 nameSpace:v14 fsrData:v15];

  [(AMSFraudReportOptions *)v16 setAccount:v10];
  v17 = [v7 ams_fsrKeyID];
  [(AMSFraudReportOptions *)v16 setKeyIdentifier:v17];

  if (v8)
  {
    v18 = [v8 integerForKey:@"fsr-auth-token-type"];
    v19 = [v18 valuePromise];
  }

  else
  {
    v19 = [AMSPromise promiseWithResult:&unk_1F07795E0];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __AMSFraudReportGetFSRHeadersForFraudReportResponse_block_invoke;
  v26[3] = &unk_1E73B8500;
  v27 = v11;
  v28 = v16;
  v29 = v7;
  v30 = v9;
  v20 = v7;
  v21 = v9;
  v22 = v16;
  v23 = v11;
  v24 = [v19 continueWithBlock:v26];

  return v24;
}

id __AMSFraudReportHandleRetryFraudReportResponse_block_invoke(void **a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    AMSFraudReportUpdateInitURLStateStorage(a1[6], a1[5], a1[4]);
    v7 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = a1[4];
      v18 = 138543362;
      v19 = v9;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_INFO, "AMSFraudReport [%{public}@] Retrying original request with updated score.", &v18, 0xCu);
    }

    v10 = +[AMSURLAction retryAction];
    [v10 setReason:@"fraud report score updated"];
    [v10 setRetryIdentifier:0x1F073A138];
    [v10 setUpdatedHeaders:v5];
  }

  else
  {
    v11 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      v14 = AMSLogableError(v6);
      v18 = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "AMSFraudReport [%{public}@] Error fetching a new fraud report score: %{public}@.", &v18, 0x16u);
    }

    v10 = [AMSURLAction actionWithError:v6];
  }

  v15 = [AMSOptional optionalWithValue:v10];
  v16 = [AMSPromise promiseWithResult:v15];

  return v16;
}

id __AMSFraudReportGetFSRHeadersForFraudReportResponse_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v8 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138543362;
      v20 = v12;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "AMSFraudReport: [%{public}@] Authentication token type is missing in bag, using v2.", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v7 = [v5 integerValue];
  if (v7 >= 2)
  {
    v8 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v20 = v10;
      v21 = 2048;
      v22 = v7;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "AMSFraudReport: [%{public}@] Unexpected value %lu for authentication token type in bag, using v2.", buf, 0x16u);
    }

LABEL_13:
    goto LABEL_15;
  }

  [*(a1 + 40) setAuthenticationTokenType:v7];
LABEL_15:
  v13 = (*(*(a1 + 56) + 16))();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __AMSFraudReportGetFSRHeadersForFraudReportResponse_block_invoke_58;
  v16[3] = &unk_1E73B84D8;
  v17 = *(a1 + 32);
  v18 = *(a1 + 48);
  v14 = [v13 thenWithBlock:v16];

  return v14;
}

id __AMSFraudReportGetFSRHeadersForFraudReportResponse_block_invoke_58(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedFraudReportConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_INFO, "AMSFraudReport [%{public}@] Successfully fetched a new fraud report score.", buf, 0xCu);
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rs=%hhuns=%hhu", objc_msgSend(v3, "reportedScore"), objc_msgSend(v3, "newScore")];;
  v22[0] = v7;
  v21[0] = @"X-Apple-FSR-Data";
  v21[1] = @"X-Apple-FSR-AID";
  v8 = [*(a1 + 40) ams_fsrAnonymousID];
  v22[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v10 = [v9 mutableCopy];

  v11 = [v3 finalizedElement];
  if (!v11)
  {
    v12 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 138543362;
      v24 = v14;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "AMSFraudReport: [%{public}@] finalizedElement is unexpectedly nil.", buf, 0xCu);
    }
  }

  [v10 setObject:v11 forKeyedSubscript:@"X-Apple-FSR-Token"];
  v15 = [v3 nameSpace];
  if (!v15)
  {
    v16 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      *buf = 138543362;
      v24 = v18;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "AMSFraudReport: [%{public}@] namespace is unexpectedly nil.", buf, 0xCu);
    }
  }

  [v10 setObject:v15 forKeyedSubscript:@"X-Apple-FSR-NameSpace"];
  v19 = [AMSPromise promiseWithResult:v10];

  return v19;
}

id __AMSFraudReportHandleCallbackFraudReportResponse_block_invoke(id *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = MEMORY[0x1E695DFF8];
    v8 = [a1[5] ams_fsrCallbackUrl];
    v9 = [v7 URLWithString:v8];

    v10 = +[AMSLogConfig sharedFraudReportConfig];
    v11 = v10;
    if (v9)
    {
      if (!v10)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = a1[4];
        *buf = 138543362;
        v28 = v13;
        _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_INFO, "AMSFraudReport [%{public}@] Calling callback URL.", buf, 0xCu);
      }

      v14 = AMSFraudReportCallURL(a1[6], v9, 5, v5, a1[7], 0);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __AMSFraudReportHandleCallbackFraudReportResponse_block_invoke_66;
      v23[3] = &unk_1E73B8528;
      v24 = a1[4];
      v26 = a1[9];
      v25 = a1[8];
      v15 = [v14 continueWithBinaryPromiseBlock:v23];
    }

    else
    {
      if (!v10)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v11 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = a1[4];
        *buf = 138543362;
        v28 = v21;
        _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "AMSFraudReport: [%{public}@] Failed to create callback URL, not calling.", buf, 0xCu);
      }

      v14 = AMSError(7, @"FSR callback URL not found in response", 0, 0);
      v15 = [AMSBinaryPromise promiseWithError:v14];
    }
  }

  else
  {
    v16 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = a1[4];
      v19 = AMSLogableError(v6);
      *buf = 138543618;
      v28 = v18;
      v29 = 2114;
      v30 = v19;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "AMSFraudReport [%{public}@] Error fetching a new fraud report score: %{public}@.", buf, 0x16u);
    }

    v15 = [AMSBinaryPromise promiseWithError:v6];
  }

  return v15;
}

id __AMSFraudReportHandleCallbackFraudReportResponse_block_invoke_66(void **a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedFraudReportConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = a1[4];
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_INFO, "AMSFraudReport [%{public}@] Successfully reported new fraud score to the callback url.", &v16, 0xCu);
    }

    AMSFraudReportUpdateInitURLStateStorage(a1[6], a1[5], a1[4]);
    v10 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v7 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = a1[4];
      v13 = AMSLogableError(v5);
      v16 = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "AMSFraudReport [%{public}@] Failed to report new fraud score to the callback url: %{public}@.", &v16, 0x16u);
    }

    v10 = [AMSBinaryPromise promiseWithError:v5];
  }

  v14 = v10;

  return v14;
}

void sub_192E5EC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E610E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E61354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E619B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AMSSecItemCopyMatchingWithTimeFault(void *a1, uint64_t a2)
{
  *&v44[13] = *MEMORY[0x1E69E9840];
  v6 = +[AMSLogConfig sharedKeychainConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    objc_opt_class();
    v10 = objc_opt_class();
    v11 = v10;
    if (v8)
    {
      v2 = AMSLogKey();
      [v9 stringWithFormat:@"%@: [%@] ", v11, v2];
    }

    else
    {
      [v9 stringWithFormat:@"%@: ", v10];
    }
    v3 = ;
    v12 = AMSHashIfNeeded(a1);
    *buf = 138543618;
    v42 = v3;
    v43 = 2114;
    *v44 = v12;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_INFO, "%{public}@Beginning keychain query: %{public}@", buf, 0x16u);
    if (v8)
    {

      v3 = v2;
    }
  }

  v13 = [MEMORY[0x1E695DF00] now];
  v14 = _secItemCopyMatchingFunc(a1, a2);
  v15 = [MEMORY[0x1E695DF00] now];
  [v15 timeIntervalSinceDate:v13];
  v17 = v16;
  v18 = +[AMSLogConfig sharedKeychainConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  v19 = [v18 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = AMSLogKey();
    v21 = MEMORY[0x1E696AEC0];
    objc_opt_class();
    v22 = objc_opt_class();
    v23 = v22;
    if (v20)
    {
      v3 = AMSLogKey();
      [v21 stringWithFormat:@"%@: [%@] ", v23, v3];
    }

    else
    {
      [v21 stringWithFormat:@"%@: ", v22];
    }
    v24 = ;
    *buf = 138543874;
    v42 = v24;
    v43 = 1024;
    *v44 = v14;
    v44[2] = 2048;
    *&v44[3] = v17;
    _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_INFO, "%{public}@Keychain query finished with status: %d elapsedTime: %f", buf, 0x1Cu);
    if (v20)
    {

      v24 = v3;
    }
  }

  if (os_variant_has_internal_content() && v17 > 2.0)
  {
    v25 = +[AMSUnitTests isRunningUnitTests];
    v26 = +[AMSLogConfig sharedKeychainConfig];
    v27 = v26;
    if (v25)
    {
      if (!v26)
      {
        v27 = +[AMSLogConfig sharedConfig];
      }

      v28 = [v27 OSLogObject];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = AMSLogKey();
        v30 = MEMORY[0x1E696AEC0];
        objc_opt_class();
        v31 = objc_opt_class();
        v32 = v31;
        if (v29)
        {
          v3 = AMSLogKey();
          [v30 stringWithFormat:@"%@: [%@] ", v32, v3];
        }

        else
        {
          [v30 stringWithFormat:@"%@: ", v31];
        }
        v33 = ;
        *buf = 138543618;
        v42 = v33;
        v43 = 2048;
        *v44 = v17;
        _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_ERROR, "%{public}@Keychain query exceeded expected duration. Took %f seconds.", buf, 0x16u);
        if (v29)
        {

          v33 = v3;
        }
      }

      v27 = [MEMORY[0x1E696AD88] defaultCenter];
      v34 = +[AMSLogConfig sharedKeychainConfig];
      [v27 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v34 userInfo:0];
    }

    else
    {
      if (!v26)
      {
        v27 = +[AMSLogConfig sharedConfig];
      }

      v34 = [v27 OSLogObject];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        v35 = AMSLogKey();
        v36 = MEMORY[0x1E696AEC0];
        objc_opt_class();
        v37 = objc_opt_class();
        v38 = v37;
        if (v35)
        {
          v3 = AMSLogKey();
          [v36 stringWithFormat:@"%@: [%@] ", v38, v3];
        }

        else
        {
          [v36 stringWithFormat:@"%@: ", v37];
        }
        v39 = ;
        *buf = 138543618;
        v42 = v39;
        v43 = 2048;
        *v44 = v17;
        _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_FAULT, "%{public}@Keychain query exceeded expected duration. Took %f seconds.", buf, 0x16u);
        if (v35)
        {

          v39 = v3;
        }
      }
    }
  }

  return v14;
}

id AMSKeychainError(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    [v4 setObject:v5 forKeyedSubscript:@"AMSStatusCode"];
  }

  else
  {
    v4 = 0;
  }

  v6 = AMSCustomError(@"AMSErrorDomain", 600, @"Keychain Error", v3, v4, 0);

  return v6;
}

void sub_192E6EAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_MKBDeviceUnlockedSinceBoot()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = _MergedGlobals_120;
  v8 = _MergedGlobals_120;
  if (!_MergedGlobals_120)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_0;
    v4[3] = &unk_1E73B3880;
    v4[4] = &v5;
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_0(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v2 = dlerror();
    v3 = abort_report_np("%s", v2);
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  return v0();
}

void *__getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED6E2AA8)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MobileKeyBagLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E73B8790;
    v7 = 0;
    qword_1ED6E2AA8 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1ED6E2AA8;
    if (qword_1ED6E2AA8)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1ED6E2AA8;
LABEL_5:
  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_120 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED6E2AA8 = result;
  return result;
}

id _AMSDescriptionForError(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v2 appendString:@"{ "];
  v3 = [v1 domain];
  [v2 appendFormat:@"Error domain=%@, code=%ld", v3, objc_msgSend(v1, "code")];

  v4 = [v1 ams_underlyingError];

  if (v4)
  {
    [v2 appendString:{@", underlyingError={ "}];
    v5 = [v1 ams_underlyingError];
    v6 = _AMSDescriptionForError(v5);
    [v2 appendString:v6];

    [v2 appendString:@" }"];
  }

  v7 = [v1 ams_multipleUnderlyingErrors];
  v8 = [v7 count];

  if (v8)
  {
    [v2 appendString:{@", multipleUnderlyingErrors=[ "}];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v1 ams_multipleUnderlyingErrors];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = _AMSDescriptionForError(*(*(&v16 + 1) + 8 * i));
          [v2 appendString:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    [v2 appendString:@" ]"];
  }

  return v2;
}

__CFString *AMSLoggableData(void *a1)
{
  if (a1)
  {
    v1 = [a1 base64EncodedStringWithOptions:0];
    v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if (_AMSShouldLogWithoutRedaction())
    {
      [(__CFString *)v2 appendFormat:@"%@", v1];
    }

    else
    {
      v3 = AMSHashAndLogCacheMisses(v1, 0);
      [(__CFString *)v2 appendString:v3];
    }
  }

  else
  {
    v2 = @"(null)";
  }

  return v2;
}

id AMSHashAndLogCacheMisses(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    if (_MergedGlobals_121 != -1)
    {
      dispatch_once(&_MergedGlobals_121, &__block_literal_global_73);
    }

    v4 = qword_1ED6E2AB8;
    v5 = [v4 objectForKey:v3 canLogCacheMisses:a2];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = [v3 ams_sha512HashStringUsingEncoding:10 error:0];
      if (v8)
      {
        v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"H:"];
        v9 = [v8 substringToIndex:5];
        [v7 appendString:v9];

        v10 = [v8 substringFromIndex:{objc_msgSend(v8, "length") - 5}];
        [v7 appendString:v10];

        [v4 setObject:v7 forKey:v3];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __AMSHashAndLogCacheMisses_block_invoke()
{
  qword_1ED6E2AB8 = [[AMSLRUCache alloc] initWithMaxSize:25];

  return MEMORY[0x1EEE66BB8]();
}

__CFString *AMSLogableErrors(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"[\n"];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          [(__CFString *)v2 appendString:@"\t", v11];
          v9 = AMSLogableError(v8);
          [(__CFString *)v2 appendString:v9];

          [(__CFString *)v2 appendString:@"\n"];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    [(__CFString *)v2 appendString:@"]"];
  }

  else
  {
    v2 = @"(null)";
  }

  return v2;
}

void AMSLogBigObject(void *a1, os_log_type_t a2, void *a3, void *a4, void *a5)
{
  v65 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v48 = a4;
  v11 = a5;
  v12 = v10;
  v13 = v12;
  if (!v12)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, a2))
  {
    *buf = 138412546;
    v58 = v48;
    v59 = 2112;
    v60 = v11;
    _os_log_impl(&dword_192869000, v14, a2, "%@ ╲╭ %@ ==== ", buf, 0x16u);
  }

  if ([v9 count])
  {
    v41 = v11;
    v15 = [v9 allKeys];
    v16 = [v15 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v16;
    v46 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
    if (v46)
    {
      v17 = *v54;
      v42 = *v54;
      v43 = v9;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v54 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v53 + 1) + 8 * i);
          v20 = [v9 objectForKeyedSubscript:v19];
          objc_opt_class();
          v47 = v20;
          LOBYTE(v20) = objc_opt_isKindOfClass();
          v21 = v12;
          v22 = v21;
          if (v20)
          {
            v45 = i;
            v23 = v21;
            if (!v12)
            {
              v23 = +[AMSLogConfig sharedConfig];
            }

            v24 = [v23 OSLogObject];
            if (os_log_type_enabled(v24, a2))
            {
              *buf = 138412546;
              v58 = v48;
              v59 = 2112;
              v60 = v19;
              _os_log_impl(&dword_192869000, v24, a2, "%@  | %@ = {\n", buf, 0x16u);
            }

            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v25 = v47;
            v26 = [v25 countByEnumeratingWithState:&v49 objects:v63 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v50;
              do
              {
                for (j = 0; j != v27; ++j)
                {
                  if (*v50 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v49 + 1) + 8 * j);
                  v31 = v22;
                  if (!v12)
                  {
                    v31 = +[AMSLogConfig sharedConfig];
                  }

                  v32 = v31;
                  v33 = [v31 OSLogObject];
                  if (os_log_type_enabled(v33, a2))
                  {
                    *buf = 138412546;
                    v58 = v48;
                    v59 = 2112;
                    v60 = v30;
                    _os_log_impl(&dword_192869000, v33, a2, "%@  | %@,\n", buf, 0x16u);
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v49 objects:v63 count:16];
              }

              while (v27);
            }

            v34 = v22;
            if (!v12)
            {
              v34 = +[AMSLogConfig sharedConfig];
            }

            v22 = v34;
            v17 = v42;
            v9 = v43;
            i = v45;
            v35 = [v34 OSLogObject];
            if (os_log_type_enabled(v35, a2))
            {
              *buf = 138412290;
              v58 = v48;
              _os_log_impl(&dword_192869000, v35, a2, "%@  | }", buf, 0xCu);
            }
          }

          else
          {
            if (!v12)
            {
              v22 = +[AMSLogConfig sharedConfig];
            }

            v35 = [v22 OSLogObject];
            if (os_log_type_enabled(v35, a2))
            {
              [v9 objectForKeyedSubscript:v19];
              v37 = v36 = i;
              *buf = 138412802;
              v58 = v48;
              v59 = 2112;
              v60 = v19;
              v61 = 2112;
              v62 = v37;
              _os_log_impl(&dword_192869000, v35, a2, "%@  | %@ = %@,\n", buf, 0x20u);

              i = v36;
            }
          }
        }

        v46 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
      }

      while (v46);
    }

    v38 = v12;
    if (!v12)
    {
      v38 = +[AMSLogConfig sharedConfig];
    }

    v39 = v38;
    v11 = v41;
    v40 = [v38 OSLogObject];
    if (os_log_type_enabled(v40, a2))
    {
      *buf = 138412290;
      v58 = v48;
      _os_log_impl(&dword_192869000, v40, a2, "%@  ╰ }", buf, 0xCu);
    }
  }
}

void sub_192E76850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  for (i = 72; i != -24; i -= 24)
  {
    __destructor_8_s0_s16((&a14 + i));
  }

  _Unwind_Resume(a1);
}

void __destructor_8_s0_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void sub_192E770B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AMSAttributesAvailableIntervalKeyPath(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"availableInterval", a1];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"attributes", v1];

  return v2;
}

id AMSAttributesOffersKeyPath(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"offers", a1];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"attributes", v1];

  return v2;
}

void sub_192E818B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNSPPrivateAccessTokenChallengeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNSPPrivateAccessTokenChallengeClass_softClass;
  v7 = getNSPPrivateAccessTokenChallengeClass_softClass;
  if (!getNSPPrivateAccessTokenChallengeClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNSPPrivateAccessTokenChallengeClass_block_invoke;
    v3[3] = &unk_1E73B3880;
    v3[4] = &v4;
    __getNSPPrivateAccessTokenChallengeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_192E874D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E87A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getNSPPrivateAccessTokenChallengeClass_block_invoke(uint64_t a1)
{
  NetworkServiceProxyLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NSPPrivateAccessTokenChallenge");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNSPPrivateAccessTokenChallengeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "NSPPrivateAccessTokenChallenge");
    NetworkServiceProxyLibrary();
  }
}

void NetworkServiceProxyLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!NetworkServiceProxyLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __NetworkServiceProxyLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E73B9100;
    v3 = 0;
    NetworkServiceProxyLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (NetworkServiceProxyLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __NetworkServiceProxyLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NetworkServiceProxyLibraryCore_frameworkLibrary = result;
  return result;
}

AMSMediaTokenServiceStore *__getNSPPrivateAccessTokenFetcherClass_block_invoke(uint64_t a1)
{
  NetworkServiceProxyLibrary();
  result = objc_getClass("NSPPrivateAccessTokenFetcher");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNSPPrivateAccessTokenFetcherClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "NSPPrivateAccessTokenFetcher");
    return [(AMSMediaTokenServiceStore *)v3 initWithClientIdentifier:v4 keychainAccessGroup:v5 patBasedToken:v6, v7];
  }

  return result;
}

void sub_192E8BF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E8C144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E8E690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192E92DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192E94444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E94DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_192E952AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E95744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E9640C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E96760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E96EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E97274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E97720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E978E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E97D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E983F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E98BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_192E997E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_192E9A4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E9A824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E9AE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E9B5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E9BA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E9BDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_192E9CAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192E9DA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_192E9DCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_192E9DF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_192EA15C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EA2630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192EA3878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, ...)
{
  va_start(va, a57);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v57 - 248), 8);
  _Block_object_dispose((v57 - 200), 8);
  _Block_object_dispose((v57 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t AMSMetricsFigaroFlushTaskAppendStringContentsToData(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 lengthOfBytesUsingEncoding:4];
  v6 = [v4 length];
  [v4 increaseLengthBy:v5];
  v7 = [v4 mutableBytes];

  v8 = [v3 getBytes:v7 + v6 maxLength:v5 usedLength:0 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v3, "length"), 0}];
  return v8;
}

void sub_192EA9CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EAA2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EAA744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EAC92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void AMSMetricsIdentifierStoreDeleteCloudKitStorage()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFF8] ams_cachesDirectory];
  if (v0)
  {
    v1 = [MEMORY[0x1E696AC08] defaultManager];
    v2 = [v0 URLByAppendingPathComponent:@"Metrics"];
    v3 = [v2 URLByAppendingPathComponent:@"IdentifierCloudTokens"];

    if (v3)
    {
      v17 = 0;
      v4 = [v1 removeItemAtURL:v3 error:&v17];
      v5 = v17;
      if ((v4 & 1) == 0)
      {
        v6 = +[AMSLogConfig sharedMetricsConfig];
        if (!v6)
        {
          v6 = +[AMSLogConfig sharedConfig];
        }

        v7 = [v6 OSLogObject];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = AMSLogableError(v5);
          *buf = 138543362;
          v19 = v8;
          _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "AMSMetricsDatabase: Failed to delete IdentifierCloudTokens directory %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v5 = 0;
    }

    v9 = [v0 URLByAppendingPathComponent:@"Metrics"];
    v10 = [v9 URLByAppendingPathComponent:@"IdentifierCloudData"];

    if (v10)
    {
      v16 = v5;
      v11 = [v1 removeItemAtURL:v10 error:&v16];
      v12 = v16;

      if ((v11 & 1) == 0)
      {
        v13 = +[AMSLogConfig sharedMetricsConfig];
        if (!v13)
        {
          v13 = +[AMSLogConfig sharedConfig];
        }

        v14 = [v13 OSLogObject];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = AMSLogableError(v12);
          *buf = 138543362;
          v19 = v15;
          _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "AMSMetricsDatabase: Failed to delete IdentifierCloudData directory %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v12 = v5;
    }
  }
}

void sub_192EB043C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EB8094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EBCED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EBD044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EBD3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EBD820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EBEB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EBFCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EC01F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EC0308(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_192EC06B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EC07CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_192EC101C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192EC1720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EC1AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192EC5378(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_192EC5C64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_192EC94FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EC99BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EC9DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192ECA350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192ECA960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192ECEF7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id AMSNormalisedCountryCodeForPaymentRequest(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF58] ISOCountryCodes];
  v3 = AMSMaybeUpperCaseNormalisedStringIfFoundInList(v1, v2);

  if (!v3)
  {
    v4 = +[AMSUnitTests isRunningUnitTests];
    v5 = +[AMSLogConfig sharedConfig];
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v7 = [v6 OSLogObject];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = AMSLogKey();
        v12 = 138543618;
        v13 = v8;
        v14 = 2114;
        v15 = v1;
        _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "AMSNormalisedCountryCodeForPaymentRequest: [%{public}@] invalid country code: %{public}@", &v12, 0x16u);
      }

      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      v9 = +[AMSLogConfig sharedConfig];
      [v6 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v9 userInfo:0];
    }

    else
    {
      if (!v5)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v9 = [v6 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v10 = AMSLogKey();
        v12 = 138543618;
        v13 = v10;
        v14 = 2114;
        v15 = v1;
        _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_FAULT, "AMSNormalisedCountryCodeForPaymentRequest: [%{public}@] invalid country code: %{public}@", &v12, 0x16u);
      }
    }
  }

  return v3;
}

void sub_192ED027C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_192ED0418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initPKPaymentSetupConfiguration()
{
  if (qword_1ED6E24E8 != -1)
  {
    dispatch_once(&qword_1ED6E24E8, &__block_literal_global_111);
  }

  result = objc_getClass("PKPaymentSetupConfiguration");
  _MergedGlobals_3_3 = result;
  _MergedGlobals_76 = PKPaymentSetupConfigurationFunction;
  return result;
}

void *__PassKitCoreLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/PassKitCore.framework/PassKitCore", 2);
  PassKitCoreLibrary_sLib_1 = result;
  return result;
}

Class initPKPaymentSetupViewController()
{
  if (qword_1ED6E24F8 != -1)
  {
    dispatch_once(&qword_1ED6E24F8, &__block_literal_global_31);
  }

  result = objc_getClass("PKPaymentSetupViewController");
  qword_1ED6E24F0 = result;
  off_1ED6DF218 = PKPaymentSetupViewControllerFunction;
  return result;
}

void *__PassKitUILibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/PassKitUI.framework/PassKitUI", 2);
  PassKitUILibrary_sLib_0 = result;
  return result;
}

id getPKPaymentSummaryItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPKPaymentSummaryItemClass_softClass;
  v7 = getPKPaymentSummaryItemClass_softClass;
  if (!getPKPaymentSummaryItemClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPKPaymentSummaryItemClass_block_invoke;
    v3[3] = &unk_1E73B3880;
    v3[4] = &v4;
    __getPKPaymentSummaryItemClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_192ED4864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPKPaymentContentItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPKPaymentContentItemClass_softClass;
  v7 = getPKPaymentContentItemClass_softClass;
  if (!getPKPaymentContentItemClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPKPaymentContentItemClass_block_invoke;
    v3[3] = &unk_1E73B3880;
    v3[4] = &v4;
    __getPKPaymentContentItemClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_192ED4BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192ED6CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192ED7548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192ED8B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EDA7D8(_Unwind_Exception *a1)
{
  (*(v3 + 16))(v3);
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

void __getPKPaymentSummaryItemClass_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKPaymentSummaryItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPaymentSummaryItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "PKPaymentSummaryItem");
    PassKitCoreLibrary_1();
  }
}

void PassKitCoreLibrary_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PassKitCoreLibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PassKitCoreLibraryCore_block_invoke_2;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E73BA840;
    v3 = 0;
    PassKitCoreLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v0 = v1[0];
    if (PassKitCoreLibraryCore_frameworkLibrary_1)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __PassKitCoreLibraryCore_block_invoke_2(uint64_t a1)
{
  result = _sl_dlopen();
  PassKitCoreLibraryCore_frameworkLibrary_1 = result;
  return result;
}

AMSPaymentSheetRequest *__getPKPaymentContentItemClass_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary_1();
  result = objc_getClass("PKPaymentContentItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPaymentContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "PKPaymentContentItem");
    return [(AMSPaymentSheetRequest *)v3 init];
  }

  return result;
}

void sub_192EE4C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPKPaymentAuthorizationResultClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPKPaymentAuthorizationResultClass_softClass;
  v7 = getPKPaymentAuthorizationResultClass_softClass;
  if (!getPKPaymentAuthorizationResultClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPKPaymentAuthorizationResultClass_block_invoke;
    v3[3] = &unk_1E73B3880;
    v3[4] = &v4;
    __getPKPaymentAuthorizationResultClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_192EE58C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EE6548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPKPaymentRequestClass_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKPaymentRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPaymentRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "PKPaymentRequest");
    PassKitCoreLibrary_2();
  }
}

void PassKitCoreLibrary_2()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PassKitCoreLibraryCore_frameworkLibrary_2)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PassKitCoreLibraryCore_block_invoke_3;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E73BAAF0;
    v3 = 0;
    PassKitCoreLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v0 = v1[0];
    if (PassKitCoreLibraryCore_frameworkLibrary_2)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __PassKitCoreLibraryCore_block_invoke_3(uint64_t a1)
{
  result = _sl_dlopen();
  PassKitCoreLibraryCore_frameworkLibrary_2 = result;
  return result;
}

Class __getPKPaymentMerchantSessionClass_block_invoke_0(uint64_t a1)
{
  PassKitCoreLibrary_2();
  result = objc_getClass("PKPaymentMerchantSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPaymentMerchantSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "PKPaymentMerchantSession");
    return __getPKPaymentAuthorizationControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getPKPaymentAuthorizationControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED6E1F68)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PassKitUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E73BAB08;
    v6 = 0;
    qword_1ED6E1F68 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED6E1F68)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PKPaymentAuthorizationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "PKPaymentAuthorizationController");
  }

  _MergedGlobals_1_15 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PassKitUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED6E1F68 = result;
  return result;
}

Class __getPKPaymentAuthorizationResultClass_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary_2();
  result = objc_getClass("PKPaymentAuthorizationResult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPaymentAuthorizationResultClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "PKPaymentAuthorizationResult");
    return __getPKPaymentRequestPaymentMethodUpdateClass_block_invoke(v3);
  }

  return result;
}

Class __getPKPaymentRequestPaymentMethodUpdateClass_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary_2();
  result = objc_getClass("PKPaymentRequestPaymentMethodUpdate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPaymentRequestPaymentMethodUpdateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "PKPaymentRequestPaymentMethodUpdate");
    return +[(AMSPaymentValidationService *)v3];
  }

  return result;
}

void sub_192EE8BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getOBPrivacyAppleIDIdentifier()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = _MergedGlobals_142;
  v9 = _MergedGlobals_142;
  if (!_MergedGlobals_142)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getOBPrivacyAppleIDIdentifierSymbolLoc_block_invoke;
    v5[3] = &unk_1E73B3880;
    v5[4] = &v6;
    __getOBPrivacyAppleIDIdentifierSymbolLoc_block_invoke(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    v3 = dlerror();
    v4 = abort_report_np("%s", v3);
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  v1 = *v0;

  return v1;
}

void *__getOBPrivacyAppleIDIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED6E3048)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __OnBoardingKitLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E73BABC0;
    v7 = 0;
    qword_1ED6E3048 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1ED6E3048;
    if (qword_1ED6E3048)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1ED6E3048;
LABEL_5:
  result = dlsym(v2, "OBPrivacyAppleIDIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_142 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED6E3048 = result;
  return result;
}

void sub_192EED9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EEE090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t initBYSetupAssistantNeedsToRun()
{
  if (qword_1ED6E3090 != -1)
  {
    dispatch_once(&qword_1ED6E3090, &__block_literal_global_240);
  }

  v0 = dlsym(qword_1ED6E3098, "BYSetupAssistantNeedsToRun");
  softLinkBYSetupAssistantNeedsToRun = v0;

  return v0();
}

void *__SetupAssistantLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SetupAssistant.framework/SetupAssistant", 2);
  qword_1ED6E3098 = result;
  return result;
}

void sub_192EF0CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EF6910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EF9E60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_192EFBB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EFBD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192EFBFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F0364C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192F048E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_192F132DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F189A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED6E1F88)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MobileKeyBagLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E73BBC08;
    v7 = 0;
    qword_1ED6E1F88 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1ED6E1F88;
    if (qword_1ED6E1F88)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1ED6E1F88;
LABEL_5:
  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED6E1F80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED6E1F88 = result;
  return result;
}

void sub_192F1DBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F1E010(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_192F22574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSimulateCrashSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED6E30F8)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CrashReporterSupportLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E73BBED0;
    v7 = 0;
    qword_1ED6E30F8 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1ED6E30F8;
    if (qword_1ED6E30F8)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1ED6E30F8;
LABEL_5:
  result = dlsym(v2, "SimulateCrash");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_147 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CrashReporterSupportLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED6E30F8 = result;
  return result;
}

void AMSSQLiteBindFoundationValue(void *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindString:v5 atPosition:a2];
    goto LABEL_6;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v9 bindNullAtPosition:a2];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 timeIntervalSinceReferenceDate];
LABEL_11:
    [v9 bindDouble:a2 atPosition:?];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindData:v5 atPosition:a2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 absoluteString];
      [v9 bindString:v6 atPosition:a2];
    }

    else
    {
      v7 = [v5 objCType];
      v8 = *v7;
      if ((v8 == 102 || v8 == 100) && !v7[1])
      {
        [v5 doubleValue];
        goto LABEL_11;
      }

      [v9 bindInt64:objc_msgSend(v5 atPosition:{"longLongValue"), a2}];
    }
  }

LABEL_6:
}

void sub_192F26828(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_192F27D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AMSSQLiteCopyFoundationValue(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 _columnTypeForColumnIndex:a2];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "int64ForColumnIndex:", a2)}];
      goto LABEL_10;
    }

    if (v4 == 2)
    {
      v5 = MEMORY[0x1E696AD98];
      [v3 doubleForColumnIndex:a2];
      v6 = [v5 numberWithDouble:?];
LABEL_10:
      v7 = v6;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 5)
  {
    if (v4 == 3)
    {
      v6 = [v3 stringForColumnIndex:a2];
      goto LABEL_10;
    }

LABEL_8:
    v6 = [v3 dataForColumnIndex:a2];
    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

void sub_192F29300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F295F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F298E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F2A18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AMSSQLiteCreateError(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a2;
  v9 = sqlite3_errstr(a3);
  if (v9)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
  }

  else
  {
    v10 = 0;
  }

  v15 = @"AMSSQLiteErrorCode";
  v11 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  v16[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13 = AMSCustomError(@"AMSSQLiteErrorDomain", a1, v8, v10, v12, v7);

  return v13;
}

void sub_192F2D584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F2D924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F2DFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F2EAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F2EEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F2F144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F2F57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F2F7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F2FA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_192F2FD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AMSSQLiteCloseDatabase(sqlite3 *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = sqlite3_close(a1);
    if (v1)
    {
      v2 = v1;
      v3 = +[AMSLogConfig sharedConfig];
      if (!v3)
      {
        v3 = +[AMSLogConfig sharedConfig];
      }

      v4 = [v3 OSLogObject];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5[0] = 67109120;
        v5[1] = v2;
        _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "Error closing database. closeResult = %d", v5, 8u);
      }
    }
  }
}

BOOL AMSSQLiteTruncateDatabase(void *a1, void *a2)
{
  ppDb = 0;
  v3 = sqlite3_open_v2([a1 fileSystemRepresentation], &ppDb, 2, 0);
  if (v3)
  {
    if (a2)
    {
      AMSSQLiteCreateError(-7700, @"Unable to Open Database Before Truncating", v3, 0);
      *a2 = v4 = 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = 129;
    v5 = sqlite3_file_control(ppDb, 0, 101, &v7);
    v4 = v5 == 0;
    if (a2 && v5)
    {
      *a2 = AMSSQLiteCreateError(-7707, @"Unable to Truncate Database", v5, 0);
    }

    AMSSQLiteCloseDatabase(ppDb);
  }

  return v4;
}

void sub_192F3226C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_192F32D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F33100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_192F33648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_192F33D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F34A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F356DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _AMSHTTPArchiveControllerShouldSaveToDisk()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = +[AMSLogConfig sharedHARLoggingConfig];
  if (!v0)
  {
    v0 = +[AMSLogConfig sharedConfig];
  }

  v1 = [v0 OSLogObject];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = AMSLogKey();
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_192869000, v1, OS_LOG_TYPE_DEFAULT, "%{public}@: [AMSStreamHTTPArchiveEntryController] Received should save HAR to disk", &v4, 0xCu);
  }

  return +[AMSStreamHTTPArchiveEntryController ams_streamEntriesToDisk];
}

uint64_t _AMSHTTPArchiveControllerShouldSaveToDiskDecompressed()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = +[AMSLogConfig sharedHARLoggingConfig];
  if (!v0)
  {
    v0 = +[AMSLogConfig sharedConfig];
  }

  v1 = [v0 OSLogObject];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = AMSLogKey();
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_192869000, v1, OS_LOG_TYPE_DEFAULT, "%{public}@: [AMSStreamHTTPArchiveEntryController] Received should save HAR to disk decompressed", &v4, 0xCu);
  }

  return +[AMSStreamHTTPArchiveEntryController ams_streamEntriesToDisk];
}

void sub_192F38C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AMSMaybeUpperCaseNormalisedStringIfFoundInList(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 containsObject:v3])
  {
    v5 = v3;
  }

  else
  {
    v6 = [v3 uppercaseString];
    if ([v4 containsObject:v6])
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

id getASDSubscriptionEntitlementsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_150;
  v7 = _MergedGlobals_150;
  if (!_MergedGlobals_150)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getASDSubscriptionEntitlementsClass_block_invoke;
    v3[3] = &unk_1E73B3880;
    v3[4] = &v4;
    __getASDSubscriptionEntitlementsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_192F3D2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F3DA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getASDSubscriptionEntitlementsClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED6E3128)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AppStoreDaemonLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E73BC658;
    v6 = 0;
    qword_1ED6E3128 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED6E3128)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ASDSubscriptionEntitlements");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "ASDSubscriptionEntitlements");
  }

  _MergedGlobals_150 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppStoreDaemonLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED6E3128 = result;
  return result;
}

void __getICMusicSubscriptionStatusControllerClass_block_invoke_0(uint64_t a1)
{
  iTunesCloudLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ICMusicSubscriptionStatusController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED6E3130 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "ICMusicSubscriptionStatusController");
    iTunesCloudLibrary();
  }
}

void iTunesCloudLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!iTunesCloudLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __iTunesCloudLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E73BC670;
    v3 = 0;
    iTunesCloudLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (iTunesCloudLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __iTunesCloudLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  iTunesCloudLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getICStoreRequestContextClass_block_invoke(uint64_t a1)
{
  iTunesCloudLibrary();
  result = objc_getClass("ICStoreRequestContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED6E3138 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "ICStoreRequestContext");
    return __getICUserIdentityClass_block_invoke(v3);
  }

  return result;
}

Class __getICUserIdentityClass_block_invoke(uint64_t a1)
{
  iTunesCloudLibrary();
  result = objc_getClass("ICUserIdentity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED6E3140 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "ICUserIdentity");
    return __getICMusicSubscriptionStatusRequestClass_block_invoke(v3);
  }

  return result;
}

AMSSyncAccountFlagsResult *__getICMusicSubscriptionStatusRequestClass_block_invoke(uint64_t a1)
{
  iTunesCloudLibrary();
  result = objc_getClass("ICMusicSubscriptionStatusRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED6E3148 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "ICMusicSubscriptionStatusRequest");
    return [(AMSSyncAccountFlagsResult *)v3 initWithAccountFlags:v4, v5];
  }

  return result;
}

void sub_192F40F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192F439FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192F45810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initTapToRadarService()
{
  if (qword_1ED6E1FB8 != -1)
  {
    dispatch_once(&qword_1ED6E1FB8, &__block_literal_global_137);
  }

  result = objc_getClass("TapToRadarService");
  _MergedGlobals_1_18 = result;
  _MergedGlobals_77 = TapToRadarServiceFunction;
  return result;
}

void *__TapToRadarKitLibrary_block_invoke()
{
  result = dlopen("/AppleInternal/Library/Frameworks/TapToRadarKit.framework/TapToRadarKit", 2);
  TapToRadarKitLibrary_sLib = result;
  return result;
}

Class initRadarComponent()
{
  if (qword_1ED6E1FB8 != -1)
  {
    dispatch_once(&qword_1ED6E1FB8, &__block_literal_global_137);
  }

  result = objc_getClass("RadarComponent");
  qword_1ED6E1FC0 = result;
  off_1ED6DF228 = RadarComponentFunction;
  return result;
}

Class initRadarDraft()
{
  if (qword_1ED6E1FB8 != -1)
  {
    dispatch_once(&qword_1ED6E1FB8, &__block_literal_global_137);
  }

  result = objc_getClass("RadarDraft");
  qword_1ED6E1FC8 = result;
  off_1ED6DF230 = RadarDraftFunction;
  return result;
}

void sub_192F47BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F48010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192F489C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F49F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F4A0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F4A26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F4ABF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F4AD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F4B020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F4F28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192F4FAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192F505F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192F509F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192F50DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F5168C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F51960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F51BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F51FF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_192F5253C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F52730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F5767C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_192F61EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F6B9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F6FEF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_192F732D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F73484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F7CC2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_192F7DEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_192F7FB1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_192F80418(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_192F8429C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_192F844D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AMSLocalizedString(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 ams_AppleMediaServicesBundle];
  v7 = [AMSLocalizations localizedStringForKey:v5 bundle:v6 table:@"Localizable" bag:v4];

  return v7;
}

void *__copy_constructor_8_8_s0_s8_s16(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_192F88080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_192F8972C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *AMSNonEmptyHeaderValue(void *a1, uint64_t a2)
{
  v2 = [a1 ams_valueForHTTPHeaderField:a2];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void _handleClearCachesNotification_0()
{
  v0 = dispatch_get_global_queue(0, 0);
  dispatch_async(v0, &__block_literal_global_165);
}

void ___handleClearCachesNotification_block_invoke_0()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = AMSSetLogKey(0);
  v1 = +[AMSLogConfig sharedConfig];
  if (!v1)
  {
    v1 = +[AMSLogConfig sharedConfig];
  }

  v2 = [v1 OSLogObject];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = AMSLogKey();
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_192869000, v2, OS_LOG_TYPE_DEFAULT, "NSURLSessionConfiguration+AppleMediaServices: [%{public}@] Received clear caches notification", &v6, 0xCu);
  }

  v4 = [MEMORY[0x1E695AC80] _URLBagCache];
  [v4 removeAllCachedResponses];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:0x1F071F778 object:0];
}

void AMSSetCountryCodeOnPaymentRequest(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = AMSNormalisedCountryCodeForPaymentRequest(v3);
  if (v5)
  {
    [v4 setCountryCode:v5];
  }

  else
  {
    v6 = +[AMSUnitTests isRunningUnitTests];
    v7 = +[AMSLogConfig sharedConfig];
    v8 = v7;
    if (v6)
    {
      if (!v7)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      v9 = [v8 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 138543362;
        v12 = v3;
        _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "AMSSetCountryCodeOnPaymentRequest: Attempting to set an invalid country code: %{public}@", &v11, 0xCu);
      }

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      v10 = +[AMSLogConfig sharedConfig];
      [v8 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v10 userInfo:0];
    }

    else
    {
      if (!v7)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      v10 = [v8 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = 138543362;
        v12 = v3;
        _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_FAULT, "AMSSetCountryCodeOnPaymentRequest: Attempting to set an invalid country code: %{public}@", &v11, 0xCu);
      }
    }
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x1EEDBA770](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x1EEDBF1F0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}