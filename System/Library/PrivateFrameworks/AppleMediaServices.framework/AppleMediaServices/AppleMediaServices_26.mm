uint64_t sub_192CDF0DC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *(v1 + 960) = v3;
  *(v1 + 952) = v0;
  OUTLINED_FUNCTION_123_2();
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192CDF1BC()
{
  OUTLINED_FUNCTION_65();

  if (*(v0 + 960))
  {
    OUTLINED_FUNCTION_13_26();
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_68_9(v1);
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_2_51(v2);

    return v5(v4);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_117_3();
    OUTLINED_FUNCTION_22_24(v7);

    OUTLINED_FUNCTION_43();

    return v8();
  }
}

uint64_t sub_192CDF2E4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 1096) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192CDF7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
  }

  OUTLINED_FUNCTION_120_2();
  v15 = qword_1EAE11D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  OUTLINED_FUNCTION_42();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_192FBCD90;
  *(v13 + 320) = v12;
  *(v13 + 296) = v14;
  v17 = v14;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    sub_192F967CC();
    OUTLINED_FUNCTION_77_0();
  }

  else
  {
    OUTLINED_FUNCTION_73_0();
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v21 = OUTLINED_FUNCTION_90(v20);
  OUTLINED_FUNCTION_50(v21, xmmword_192FBCD50);
  sub_19286C588(v13 + 296, v13 + 680);
  OUTLINED_FUNCTION_101_4((v13 + 680), &v21[2]);
  *(v16 + 32) = v21;
  __swift_destroy_boxed_opaque_existential_0((v13 + 296));
  sub_19287AEE0();
  v59 = v22;
  OUTLINED_FUNCTION_31_0();
  v23._countAndFlagsBits = 0xD000000000000029;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
  swift_getErrorValue();
  *(v13 + 224) = *(v13 + 864);
  __swift_allocate_boxed_opaque_existential_0((v13 + 200));
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_11_18();
  v24();
  sub_1928F9340(v13 + 200, v13 + 328, &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_84_4();
  sub_19286D180(v13 + 328, v13 + 16);
  *(v13 + 48) = 0;
  v25 = v59;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v25 = v57;
  }

  OUTLINED_FUNCTION_24();
  if (v26)
  {
    OUTLINED_FUNCTION_142();
    v25 = v58;
  }

  OUTLINED_FUNCTION_12();
  v60 = v25;
  sub_19292E1F0(v13 + 200, &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_49_7();
  *(v16 + 40) = v25;
  sub_192F96E5C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v15, v27))
  {
    v28 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v29 = swift_allocObject();
    v30 = OUTLINED_FUNCTION_116(v29);
    *(v13 + 808) = v16;
    *(v13 + 816) = sub_192BB97CC;
    *(v13 + 824) = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v28);
    v31 = objc_autoreleasePoolPush();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v33 = OUTLINED_FUNCTION_90(v32);
    OUTLINED_FUNCTION_78(v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
    *(v43 + 56) = MEMORY[0x1E69E6158];
    v44 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v44);
    OUTLINED_FUNCTION_10_32();
    sub_192F9622C(v45);

    objc_autoreleasePoolPop(v31);
  }

  v46 = *(v13 + 1096);

  v47 = OUTLINED_FUNCTION_117_3();
  OUTLINED_FUNCTION_22_24(v47);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_145();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, v60, a12);
}

uint64_t PurchaseConfiguration.isExpressCheckoutShouldCheckForWalletBiometrics.getter()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR___AMSPurchaseConfiguration_expressCheckoutBagModel + 1);
  if (v2 == 2)
  {
    OUTLINED_FUNCTION_128_1();
    if (!v3)
    {
      OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    OUTLINED_FUNCTION_42();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_61_11(v4, xmmword_192FBCD90);
    if (AMSLogKey())
    {
      sub_192F967CC();
      OUTLINED_FUNCTION_99_5();
    }

    else
    {
      OUTLINED_FUNCTION_67_10();
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v7 = OUTLINED_FUNCTION_90(v6);
    OUTLINED_FUNCTION_19_23(v7, xmmword_192FBCD50);
    v9 = sub_19286C588(v8, v183);
    v17 = OUTLINED_FUNCTION_37_14(v9, v10, v11, v12, v13, v14, v15, v16, v124, v131, v138, v145, v152, v157, v162, v167, v170, v175, v178, v182);
    OUTLINED_FUNCTION_110_4(v17, v18, v19, v20, v21, v22, v23, v24, v125, v132, v139, v146);
    OUTLINED_FUNCTION_82_6();
    v25._countAndFlagsBits = 0xD000000000000088;
    v25._object = (v26 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v25);
    v27 = sub_192F96E7C();
    if (OUTLINED_FUNCTION_63_10(v27))
    {
      v28 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v29 = swift_allocObject();
      OUTLINED_FUNCTION_27_1(v29);
      OUTLINED_FUNCTION_58_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_3_5();
      sub_192F9674C();
      OUTLINED_FUNCTION_62_9();

      objc_autoreleasePoolPop(v28);
      v30 = objc_autoreleasePoolPush();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v32 = OUTLINED_FUNCTION_90(v31);
      OUTLINED_FUNCTION_29_0(v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      *(v42 + 56) = MEMORY[0x1E69E6158];
      v43 = sub_1928FDB30();
      OUTLINED_FUNCTION_94_4(v43);
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_114_2(v44, v45, v46, v47, v48);
      LOBYTE(v2) = 1;
LABEL_25:

      objc_autoreleasePoolPop(v30);
      goto LABEL_26;
    }

    LOBYTE(v2) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_128_1();
    if (!v3)
    {
      OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    OUTLINED_FUNCTION_42();
    v5 = swift_allocObject();
    OUTLINED_FUNCTION_61_11(v5, xmmword_192FBCD90);
    if (AMSLogKey())
    {
      sub_192F967CC();
      OUTLINED_FUNCTION_99_5();
    }

    else
    {
      OUTLINED_FUNCTION_67_10();
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v50 = OUTLINED_FUNCTION_90(v49);
    OUTLINED_FUNCTION_19_23(v50, xmmword_192FBCD50);
    v52 = sub_19286C588(v51, v183);
    v60 = OUTLINED_FUNCTION_37_14(v52, v53, v54, v55, v56, v57, v58, v59, v124, v131, v138, v145, v152, v157, v162, v167, v170, v175, v178, v182);
    OUTLINED_FUNCTION_110_4(v60, v61, v62, v63, v64, v65, v66, v67, v126, v133, v140, v147);
    sub_19287AEE0();
    v182 = v68;
    OUTLINED_FUNCTION_31_0();
    v69 = &v182;
    v70._countAndFlagsBits = 0xD000000000000053;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v70);
    v184 = MEMORY[0x1E69E6370];
    v77 = OUTLINED_FUNCTION_81_9(v71, v72, &unk_1EAE131B0, &qword_192FBD860, v73, v74, v75, v76, v127, v134, v141, v148, v153, v158, v163, v168, v171, v176, v179, v182, v2 & 1);
    v81 = sub_1928F9340(v77, v78, v79, v80);
    OUTLINED_FUNCTION_14_1(v81, v82, v83, v84, v85, v86, v87, v88, v128, v135, v142, v149, v154, v159, v164, v172);
    if ((OUTLINED_FUNCTION_88_6() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v69 = v121;
    }

    OUTLINED_FUNCTION_7_9();
    if (v90)
    {
      v122 = OUTLINED_FUNCTION_43_1(v89);
      OUTLINED_FUNCTION_67(v122, ObjectType);
      v69 = v123;
    }

    v69[2] = ObjectType;
    OUTLINED_FUNCTION_3_56(&v69[5 * v50], v129, v136, v143, v150, v155, v160, v165, v173, v180);
    sub_19292E1F0(v183, &unk_1EAE131B0, &qword_192FBD860);
    OUTLINED_FUNCTION_49_7();
    v99 = OUTLINED_FUNCTION_133_1(v91, v92, v93, v94, v95, v96, v97, v98, v130, v137, v144, v151, v156, v161, v166, v169, v174, v177, v181, v182);
    if (OUTLINED_FUNCTION_63_10(v99))
    {
      v100 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v101 = swift_allocObject();
      OUTLINED_FUNCTION_27_1(v101);
      OUTLINED_FUNCTION_58_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_3_5();
      sub_192F9674C();
      OUTLINED_FUNCTION_62_9();

      objc_autoreleasePoolPop(v100);
      v30 = objc_autoreleasePoolPush();
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v103 = OUTLINED_FUNCTION_90(v102);
      OUTLINED_FUNCTION_29_0(v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
      *(v113 + 56) = MEMORY[0x1E69E6158];
      v114 = sub_1928FDB30();
      OUTLINED_FUNCTION_94_4(v114);
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_114_2(v115, v116, v117, v118, v119);
      goto LABEL_25;
    }
  }

LABEL_26:

  return v2 & 1;
}

uint64_t sub_192CE003C()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel + 25);
  if (v1 == 2)
  {
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    OUTLINED_FUNCTION_42();
    v2 = swift_allocObject();
    OUTLINED_FUNCTION_61_11(v2, xmmword_192FBCD90);
    if (AMSLogKey())
    {
      sub_192F967CC();
      OUTLINED_FUNCTION_99_5();
    }

    else
    {
      OUTLINED_FUNCTION_67_10();
    }

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v4 = OUTLINED_FUNCTION_90(v3);
    OUTLINED_FUNCTION_19_23(v4, xmmword_192FBCD50);
    v6 = sub_19286C588(v5, v35);
    OUTLINED_FUNCTION_132_2(v6, v7, v8, v9);
    v2[2].n128_u64[0] = v4;
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_26_21();
    v10._countAndFlagsBits = 0xD00000000000005ELL;
    LogInterpolation.init(stringLiteral:)(v10);
    v11 = sub_192F96E5C();
    if (OUTLINED_FUNCTION_85_6(v11))
    {
      v12 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v13 = swift_allocObject();
      v14 = OUTLINED_FUNCTION_27_1(v13);
      v36[0] = v2;
      v36[1] = sub_192BB97CC;
      v36[2] = v14;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_3_5();
      sub_192F9674C();
      OUTLINED_FUNCTION_48_10();

      objc_autoreleasePoolPop(v12);
      v15 = objc_autoreleasePoolPush();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v17 = OUTLINED_FUNCTION_90(v16);
      OUTLINED_FUNCTION_23_21(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
      *(v27 + 56) = MEMORY[0x1E69E6158];
      v28 = sub_1928FDB30();
      OUTLINED_FUNCTION_125_1(v28);
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_134_1(v29, v30, v31, v32, v33);

      objc_autoreleasePoolPop(v15);
    }

    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t sub_192CE0290()
{
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel];
  if (v1[OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel + 8] & 1) != 0 || (v5[24])
  {
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    OUTLINED_FUNCTION_42();
    *(swift_allocObject() + 16) = xmmword_192FBCD90;
    *(&v272 + 1) = ObjectType;
    v271.n128_u64[0] = v1;
    v6 = v1;
    if (AMSLogKey())
    {
      sub_192F967CC();
      OUTLINED_FUNCTION_99_5();
    }

    else
    {
      OUTLINED_FUNCTION_67_10();
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v8 = OUTLINED_FUNCTION_90(v7);
    OUTLINED_FUNCTION_19_23(v8, xmmword_192FBCD50);
    v10 = sub_19286C588(v9, v275);
    v18 = OUTLINED_FUNCTION_37_14(v10, v11, v12, v13, v14, v15, v16, v17, v189, v203, v217, v231, v245, v258, v271.n128_i64[0], v271.n128_i64[1], v272, *(&v272 + 1), v273, v274);
    OUTLINED_FUNCTION_110_4(v18, v19, v20, v21, v22, v23, v24, v25, v190, v204, v218, v232);
    OUTLINED_FUNCTION_82_6();
    v26._countAndFlagsBits = 0xD000000000000022;
    v26._object = (v27 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v26);
    v28 = sub_192F96E7C();
    if (OUTLINED_FUNCTION_63_10(v28))
    {
      v29 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v30 = swift_allocObject();
      OUTLINED_FUNCTION_27_1(v30);
      OUTLINED_FUNCTION_58_10();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_3_5();
      sub_192F9674C();
      OUTLINED_FUNCTION_62_9();

      objc_autoreleasePoolPop(v29);
      v32 = objc_autoreleasePoolPush();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v34 = OUTLINED_FUNCTION_90(v33);
      OUTLINED_FUNCTION_23_21(v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
      *(v44 + 56) = MEMORY[0x1E69E6158];
      ObjectType[8] = sub_1928FDB30();
      ObjectType[4] = v31;
      ObjectType[5] = v3;
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_134_1(v45, v46, v47, v48, v49);
      v50 = 0;
LABEL_34:

      objc_autoreleasePoolPop(v32);
      goto LABEL_35;
    }

    v50 = 0;
  }

  else
  {
    v51 = *v5;
    v52 = *(v5 + 2);
    OUTLINED_FUNCTION_96_4(&v1[OBJC_IVAR___AMSPurchaseConfiguration_systemProvider]);
    v50 = (*(v2 + 80))(0x6F726E456F747541, 0xEE00746E656D6C6CLL, v0, v2, v51, v52);
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
    }

    v53 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    OUTLINED_FUNCTION_42();
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_192FBCD90;
    *(&v272 + 1) = ObjectType;
    v271.n128_u64[0] = v1;
    v55 = v1;
    v56 = AMSLogKey();
    if (v56)
    {
      v57 = v56;
      sub_192F967CC();
      OUTLINED_FUNCTION_27_12();
    }

    else
    {
      OUTLINED_FUNCTION_48_13();
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v59 = OUTLINED_FUNCTION_90(v58);
    OUTLINED_FUNCTION_19_23(v59, xmmword_192FBCD50);
    sub_19286C588(v60, v275);
    OUTLINED_FUNCTION_11_18();
    sub_19286CFC8(v61, v62, v63, v64);
    *(v54 + 32) = v59;
    __swift_destroy_boxed_opaque_existential_0(&v271);
    sub_19287AEE0();
    v274 = v65;
    v66._countAndFlagsBits = 0xD00000000000003DLL;
    v66._object = 0x80000001930240A0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v66);
    v276 = MEMORY[0x1E69E63B0];
    v73 = OUTLINED_FUNCTION_81_9(v67, v68, &unk_1EAE131B0, &qword_192FBD860, v69, v70, v71, v72, v189, v203, v217, v231, v245, v258, v271.n128_i64[0], v271.n128_i64[1], v272, *(&v272 + 1), v273, v274, SLOBYTE(v51));
    v77 = sub_1928F9340(v73, v74, v75, v76);
    v85 = OUTLINED_FUNCTION_14_1(v77, v78, v79, v80, v81, v82, v83, v84, v191, v205, v219, v233, v246, v259, *&v271, v272);
    if ((OUTLINED_FUNCTION_83_7(v85, v86, v87, v88, v89, v90, v91, v92, v192, v206, v220, v234, v247, v260, v271.n128_i64[0], v271.n128_i64[1], v272, *(&v272 + 1), v273, v274) & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
    }

    OUTLINED_FUNCTION_24();
    if (v93)
    {
      OUTLINED_FUNCTION_142();
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_3_56(v94, v193, v207, v221, v235, v248, v261, v271, v272, v273);
    OUTLINED_FUNCTION_54_0();
    sub_19292E1F0(v95, v96, v97);
    OUTLINED_FUNCTION_31_0();
    v98._countAndFlagsBits = 0xD000000000000019;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v98);
    v276 = MEMORY[0x1E69E6530];
    OUTLINED_FUNCTION_81_9(v99, v100, v101, v102, v103, v104, v105, v106, v194, v208, v222, v236, v249, v262, v271.n128_i64[0], v271.n128_i64[1], v272, *(&v272 + 1), v273, v274, v52);
    OUTLINED_FUNCTION_67_0();
    v111 = sub_1928F9340(v107, v108, v109, v110);
    v119 = OUTLINED_FUNCTION_14_1(v111, v112, v113, v114, v115, v116, v117, v118, v195, v209, v223, v237, v250, v263, *&v271, v272);
    if ((OUTLINED_FUNCTION_83_7(v119, v120, v121, v122, v123, v124, v125, v126, v196, v210, v224, v238, v251, v264, v271.n128_i64[0], v271.n128_i64[1], v272, *(&v272 + 1), v273, v274) & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v274 = v187;
    }

    OUTLINED_FUNCTION_24();
    if (v93)
    {
      OUTLINED_FUNCTION_142();
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_3_56(v127, v197, v211, v225, v239, v252, v265, v271, v272, v273);
    OUTLINED_FUNCTION_54_0();
    sub_19292E1F0(v128, v129, v130);
    v131._countAndFlagsBits = 0x73657220646E6120;
    v131._object = 0xED0000203A746C75;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v131);
    v276 = MEMORY[0x1E69E6370];
    OUTLINED_FUNCTION_81_9(v132, v133, v134, v135, v136, v137, v138, v139, v198, v212, v226, v240, v253, v266, v271.n128_i64[0], v271.n128_i64[1], v272, *(&v272 + 1), v273, v274, v50 & 1);
    OUTLINED_FUNCTION_67_0();
    v144 = sub_1928F9340(v140, v141, v142, v143);
    v152 = OUTLINED_FUNCTION_14_1(v144, v145, v146, v147, v148, v149, v150, v151, v199, v213, v227, v241, v254, v267, *&v271, v272);
    if ((OUTLINED_FUNCTION_83_7(v152, v153, v154, v155, v156, v157, v158, v159, v200, v214, v228, v242, v255, v268, v271.n128_i64[0], v271.n128_i64[1], v272, *(&v272 + 1), v273, v274) & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v274 = v188;
    }

    OUTLINED_FUNCTION_24();
    if (v93)
    {
      OUTLINED_FUNCTION_142();
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_3_56(v160, v201, v215, v229, v243, v256, v269, v271, v272, v273);
    sub_19292E1F0(v275, &unk_1EAE131B0, &qword_192FBD860);
    OUTLINED_FUNCTION_49_7();
    OUTLINED_FUNCTION_133_1(v161, v162, v163, v164, v165, v166, v167, v168, v202, v216, v230, v244, v257, v270, v271.n128_i64[0], v271.n128_i64[1], v272, *(&v272 + 1), v273, v274);
    OUTLINED_FUNCTION_165();
    if (os_log_type_enabled(v53, v169))
    {
      v170 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v171 = swift_allocObject();
      OUTLINED_FUNCTION_116(v171);
      OUTLINED_FUNCTION_58_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_3_5();
      sub_192F9674C();

      objc_autoreleasePoolPop(v170);
      v32 = objc_autoreleasePoolPush();
      v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v173 = OUTLINED_FUNCTION_90(v172);
      OUTLINED_FUNCTION_23_21(v173, v174, v175, v176, v177, v178, v179, v180, v181, v182);
      *(v183 + 56) = MEMORY[0x1E69E6158];
      v184 = sub_1928FDB30();
      OUTLINED_FUNCTION_124_1(v184);
      OUTLINED_FUNCTION_60();
      sub_192F9622C(v185);
      goto LABEL_34;
    }
  }

LABEL_35:

  return v50 & 1;
}

uint64_t PurchaseConfiguration.shouldAttemptApplePayClassic(account:options:)()
{
  OUTLINED_FUNCTION_3();
  v1[89] = v0;
  v1[88] = v2;
  v1[87] = v3;
  v1[90] = swift_getObjectType();
  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CE1094()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v7 + 49) = v6;
  *(v7 + 744) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192CE11B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
  }

  v13 = *(v12 + 720);
  v14 = *(v12 + 712);
  v15 = qword_1EAE11D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  OUTLINED_FUNCTION_42();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_192FBCD90;
  *(v12 + 376) = v13;
  *(v12 + 352) = v14;
  v17 = v14;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    sub_192F967CC();
    OUTLINED_FUNCTION_27_12();
  }

  else
  {
    OUTLINED_FUNCTION_48_13();
  }

  v20 = *(v12 + 49);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v22 = OUTLINED_FUNCTION_90(v21);
  OUTLINED_FUNCTION_50(v22, xmmword_192FBCD50);
  sub_19286C588(v12 + 352, v12 + 384);
  OUTLINED_FUNCTION_11_18();
  sub_19286CFC8(v23, v24, v25, v26);
  *(v16 + 32) = v22;
  __swift_destroy_boxed_opaque_existential_0((v12 + 352));
  sub_19287AEE0();
  v66 = v27;
  OUTLINED_FUNCTION_31_0();
  v28._countAndFlagsBits = 0xD000000000000039;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
  *(v12 + 440) = MEMORY[0x1E69E6370];
  *(v12 + 416) = v20;
  sub_1928F9340(v12 + 416, v12 + 448, &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_56_4();
  sub_19286D180(v12 + 448, v12 + 56);
  *(v12 + 88) = 3;
  v29 = v66;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v29 = v64;
  }

  OUTLINED_FUNCTION_24();
  if (v30)
  {
    OUTLINED_FUNCTION_142();
    v29 = v65;
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_40(v31);
  sub_19292E1F0(v12 + 416, &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_100_7();
  *(v16 + 40) = v29;
  sub_192F96E7C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v15, v32))
  {
    v33 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v34 = swift_allocObject();
    v35 = OUTLINED_FUNCTION_116(v34);
    *(v12 + 640) = v16;
    *(v12 + 648) = sub_192BB97CC;
    *(v12 + 656) = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v33);
    v36 = objc_autoreleasePoolPush();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v38 = OUTLINED_FUNCTION_90(v37);
    OUTLINED_FUNCTION_78(v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
    *(v48 + 56) = MEMORY[0x1E69E6158];
    v49 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v49);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_89_6(v50, v51, v52, v53, v54);

    objc_autoreleasePoolPop(v36);
  }

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_145();

  return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, v29, a12);
}

uint64_t PurchaseConfiguration.shouldAttemptAutoEnrollment(account:options:)()
{
  OUTLINED_FUNCTION_3();
  v1[49] = v2;
  v1[50] = v0;
  v1[48] = v3;
  v1[51] = swift_getObjectType();
  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CE18E4()
{
  OUTLINED_FUNCTION_120();
  v1 = *(v0 + 400) + OBJC_IVAR___AMSPurchaseConfiguration_biometricsProvider;
  v2 = OUTLINED_FUNCTION_102();
  __swift_project_boxed_opaque_existential_0(v2, v3);
  v4 = OUTLINED_FUNCTION_71_6();
  v6 = v5(v4);
  if (v6 == 1)
  {
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
    v9 = OUTLINED_FUNCTION_102();
    __swift_project_boxed_opaque_existential_0(v9, v10);
    OUTLINED_FUNCTION_28_20();
    v59 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v0 + 416) = v12;
    *v12 = v0;
    v12[1] = sub_192CE1D70;
    v13 = *(v0 + 384);
    v14 = *(v0 + 392);

    return v59(3, v13, v14, v7, v8);
  }

  else
  {
    v16 = v6;
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
    }

    v18 = *(v0 + 400);
    v17 = *(v0 + 408);
    v19 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    OUTLINED_FUNCTION_42();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_192FBCD90;
    *(v0 + 80) = v17;
    *(v0 + 56) = v18;
    v21 = v18;
    v22 = AMSLogKey();
    if (v22)
    {
      v23 = v22;
      sub_192F967CC();
      OUTLINED_FUNCTION_77_0();
    }

    else
    {
      OUTLINED_FUNCTION_73_0();
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v25 = OUTLINED_FUNCTION_90(v24);
    OUTLINED_FUNCTION_50_0(v25, xmmword_192FBCD50);
    sub_19286C588(v0 + 56, v0 + 88);
    OUTLINED_FUNCTION_101_4((v0 + 88), &v25[2]);
    *(v20 + 32) = v25;
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    sub_19287AEE0();
    v60 = v26;
    OUTLINED_FUNCTION_31_0();
    v27._countAndFlagsBits = 0xD000000000000058;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
    *(v0 + 144) = MEMORY[0x1E69E6530];
    *(v0 + 120) = v16;
    sub_1928F9340(v0 + 120, v0 + 152, &unk_1EAE131B0, &qword_192FBD860);
    OUTLINED_FUNCTION_84_4();
    sub_19286D180(v0 + 152, v0 + 16);
    *(v0 + 48) = 3;
    v28 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v28 = v55;
    }

    OUTLINED_FUNCTION_24();
    if (v29)
    {
      OUTLINED_FUNCTION_142();
      v28 = v56;
    }

    OUTLINED_FUNCTION_12();
    sub_19292E1F0(v0 + 120, &unk_1EAE131B0, &qword_192FBD860);
    OUTLINED_FUNCTION_100_7();
    *(v20 + 40) = v28;
    sub_192F96E7C();
    OUTLINED_FUNCTION_165();
    if (os_log_type_enabled(v19, v30))
    {
      v31 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v32 = swift_allocObject();
      v33 = OUTLINED_FUNCTION_116(v32);
      *(v0 + 312) = v20;
      *(v0 + 320) = sub_192BB97CC;
      *(v0 + 328) = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_61();
      sub_192F9674C();
      OUTLINED_FUNCTION_136_0();

      objc_autoreleasePoolPop(v31);
      v34 = objc_autoreleasePoolPush();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v36 = OUTLINED_FUNCTION_90(v35);
      OUTLINED_FUNCTION_59(v36, v37, v38, v39, v40, v41, v42, v43, v44, v57, v58, v45);
      *(v46 + 56) = MEMORY[0x1E69E6158];
      v47 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v47);
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_89_6(v48, v49, v50, v51, v52);

      objc_autoreleasePoolPop(v34);
    }

    v53 = OUTLINED_FUNCTION_26_4();

    return v54(v53);
  }
}

uint64_t sub_192CE1D70()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    *(v5 + 49) = v3 & 1;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192CE1E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  if (*(v12 + 49))
  {
    v13 = swift_task_alloc();
    *(v12 + 424) = v13;
    *v13 = v12;
    v13[1] = sub_192CE2170;
    OUTLINED_FUNCTION_145();

    return PurchaseConfiguration.isApplePayWalletRefreshed()();
  }

  else
  {
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
    }

    v17 = *(v12 + 400);
    v16 = *(v12 + 408);
    v18 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    OUTLINED_FUNCTION_42();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_192FBCD90;
    *(v12 + 272) = v16;
    *(v12 + 248) = v17;
    v20 = v17;
    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      sub_192F967CC();
      OUTLINED_FUNCTION_27_12();
    }

    else
    {
      OUTLINED_FUNCTION_48_13();
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v24 = OUTLINED_FUNCTION_90(v23);
    OUTLINED_FUNCTION_50(v24, xmmword_192FBCD50);
    sub_19286C588(v12 + 248, v12 + 280);
    OUTLINED_FUNCTION_11_18();
    sub_19286CFC8(v25, v26, v27, v28);
    *(v19 + 32) = v24;
    __swift_destroy_boxed_opaque_existential_0((v12 + 248));
    OUTLINED_FUNCTION_26_21();
    v29._countAndFlagsBits = 0xD00000000000005ALL;
    LogInterpolation.init(stringLiteral:)(v29);
    sub_192F96E7C();
    OUTLINED_FUNCTION_165();
    if (os_log_type_enabled(v18, v30))
    {
      v31 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v32 = swift_allocObject();
      v33 = OUTLINED_FUNCTION_116(v32);
      *(v12 + 360) = v19;
      *(v12 + 368) = sub_192BB97CC;
      *(v12 + 376) = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_61();
      sub_192F9674C();
      OUTLINED_FUNCTION_136_0();

      objc_autoreleasePoolPop(v31);
      v34 = objc_autoreleasePoolPush();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v36 = OUTLINED_FUNCTION_90(v35);
      OUTLINED_FUNCTION_78(v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
      *(v46 + 56) = MEMORY[0x1E69E6158];
      v47 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v47);
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_89_6(v48, v49, v50, v51, v52);

      objc_autoreleasePoolPop(v34);
    }

    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_145();

    return v55(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
  }
}

uint64_t sub_192CE2170()
{
  OUTLINED_FUNCTION_3();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5(v2);
}

uint64_t sub_192CE2258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
  }

  v14 = v12[50];
  v13 = v12[51];
  v15 = qword_1EAE11D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  OUTLINED_FUNCTION_42();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_192FBCD90;
  v12[26] = v13;
  v12[23] = v14;
  v17 = v14;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    sub_192F967CC();
    OUTLINED_FUNCTION_27_12();
  }

  else
  {
    OUTLINED_FUNCTION_48_13();
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v21 = OUTLINED_FUNCTION_90(v20);
  OUTLINED_FUNCTION_50(v21, xmmword_192FBCD50);
  sub_19286C588((v12 + 23), (v12 + 27));
  OUTLINED_FUNCTION_11_18();
  sub_19286CFC8(v22, v23, v24, v25);
  *(v16 + 32) = v21;
  __swift_destroy_boxed_opaque_existential_0(v12 + 23);
  OUTLINED_FUNCTION_26_21();
  v26._countAndFlagsBits = 0xD000000000000042;
  LogInterpolation.init(stringLiteral:)(v26);
  sub_192F96E5C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v15, v27))
  {
    v28 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v29 = swift_allocObject();
    v30 = OUTLINED_FUNCTION_116(v29);
    v12[42] = v16;
    v12[43] = sub_192BB97CC;
    v12[44] = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v28);
    v31 = objc_autoreleasePoolPush();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v33 = OUTLINED_FUNCTION_90(v32);
    OUTLINED_FUNCTION_78(v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
    *(v43 + 56) = MEMORY[0x1E69E6158];
    v44 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v44);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_89_6(v45, v46, v47, v48, v49);

    objc_autoreleasePoolPop(v31);
  }

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_145();

  return v52(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12);
}

uint64_t PurchaseConfiguration.shouldAttemptApplePayClassic(account:accessControl:)()
{
  OUTLINED_FUNCTION_3();
  v1[36] = v2;
  v1[37] = v0;
  v1[35] = v3;
  v1[38] = swift_getObjectType();
  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CE2534()
{
  OUTLINED_FUNCTION_178();
  v1 = v0[37];
  if (!*&v1[OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel + 40])
  {
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
      v1 = v0[37];
    }

    v13 = v0[38];
    v14 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    OUTLINED_FUNCTION_42();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_192FBCD90;
    v0[5] = v13;
    v0[2] = v1;
    v16 = v1;
    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      sub_192F967CC();
      OUTLINED_FUNCTION_27_12();
    }

    else
    {
      OUTLINED_FUNCTION_48_13();
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v33 = OUTLINED_FUNCTION_90(v32);
    OUTLINED_FUNCTION_50(v33, xmmword_192FBCD50);
    sub_19286C588((v0 + 2), (v0 + 6));
    OUTLINED_FUNCTION_11_18();
    sub_19286CFC8(v34, v35, v36, v37);
    *(v15 + 32) = v33;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    OUTLINED_FUNCTION_46_11();
    v39._countAndFlagsBits = v38 + 1;
    v39._object = (v40 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v39);
    sub_192F96E5C();
    OUTLINED_FUNCTION_165();
    if (!os_log_type_enabled(v14, v41))
    {
      goto LABEL_35;
    }

    v42 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v43 = swift_allocObject();
    v44 = OUTLINED_FUNCTION_116(v43);
    v0[26] = v15;
    v0[27] = sub_192BB97CC;
    v0[28] = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    goto LABEL_34;
  }

  if (!*&v1[OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel + 48])
  {
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
      v1 = v0[37];
    }

    v19 = v0[38];
    v20 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    OUTLINED_FUNCTION_42();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_192FBCD90;
    v0[13] = v19;
    v0[10] = v1;
    v22 = v1;
    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      sub_192F967CC();
      OUTLINED_FUNCTION_27_12();
    }

    else
    {
      OUTLINED_FUNCTION_48_13();
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v46 = OUTLINED_FUNCTION_90(v45);
    OUTLINED_FUNCTION_50(v46, xmmword_192FBCD50);
    sub_19286C588((v0 + 10), (v0 + 14));
    OUTLINED_FUNCTION_11_18();
    sub_19286CFC8(v47, v48, v49, v50);
    *(v21 + 32) = v46;
    __swift_destroy_boxed_opaque_existential_0(v0 + 10);
    OUTLINED_FUNCTION_46_11();
    v52._countAndFlagsBits = v51 + 5;
    v52._object = (v53 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v52);
    sub_192F96E5C();
    OUTLINED_FUNCTION_165();
    if (!os_log_type_enabled(v20, v54))
    {
      goto LABEL_35;
    }

    v42 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v55 = swift_allocObject();
    v56 = OUTLINED_FUNCTION_116(v55);
    v0[29] = v21;
    v0[30] = sub_192BB97CC;
    v0[31] = v56;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    goto LABEL_34;
  }

  sub_19293615C(v2, v3, v4, v5, v6, v7, v8, v9, v84, v85, v86);
  v0[39] = v10;
  if (*(v10 + 16))
  {
    v11 = swift_task_alloc();
    v0[40] = v11;
    *v11 = v0;
    v11[1] = sub_192CE2BB0;

    return PurchaseConfiguration.shouldAttemptApplePayClassic(with:paymentNetworks:account:accessControl:)();
  }

  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
  }

  v26 = v0[37];
  v25 = v0[38];
  v27 = qword_1EAE11D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  OUTLINED_FUNCTION_42();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_192FBCD90;
  v0[21] = v25;
  v0[18] = v26;
  v29 = v26;
  v30 = AMSLogKey();
  if (v30)
  {
    v31 = v30;
    sub_192F967CC();
    OUTLINED_FUNCTION_27_12();
  }

  else
  {
    OUTLINED_FUNCTION_48_13();
  }

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v58 = OUTLINED_FUNCTION_90(v57);
  OUTLINED_FUNCTION_50(v58, xmmword_192FBCD50);
  sub_19286C588((v0 + 18), (v0 + 22));
  OUTLINED_FUNCTION_11_18();
  sub_19286CFC8(v59, v60, v61, v62);
  *(v28 + 32) = v58;
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  OUTLINED_FUNCTION_72_6();
  v63._countAndFlagsBits = 0xD000000000000035;
  LogInterpolation.init(stringLiteral:)(v63);
  sub_192F96E5C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v27, v64))
  {
    v42 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v65 = swift_allocObject();
    v66 = OUTLINED_FUNCTION_116(v65);
    v0[32] = v28;
    v0[33] = sub_192BB97CC;
    v0[34] = v66;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
LABEL_34:
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_112_4();

    objc_autoreleasePoolPop(v42);
    v67 = objc_autoreleasePoolPush();
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v69 = OUTLINED_FUNCTION_90(v68);
    OUTLINED_FUNCTION_23_21(v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
    *(v79 + 56) = MEMORY[0x1E69E6158];
    v80 = sub_1928FDB30();
    OUTLINED_FUNCTION_124_1(v80);
    OUTLINED_FUNCTION_10_32();
    sub_192F9622C(v81);

    objc_autoreleasePoolPop(v67);
  }

LABEL_35:

  v82 = OUTLINED_FUNCTION_26_4();

  return v83(v82);
}

uint64_t sub_192CE2BB0()
{
  OUTLINED_FUNCTION_3();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5(v2);
}

uint64_t PurchaseConfiguration.shouldAttemptAutoEnrollment(account:accessControl:)()
{
  OUTLINED_FUNCTION_3();
  v1[51] = v2;
  v1[52] = v0;
  v1[50] = v3;
  v1[53] = swift_getObjectType();
  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CE33CC()
{
  OUTLINED_FUNCTION_3();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5(v2);
}

uint64_t sub_192CE353C(void *a1, const void *a2, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0, &unk_192FC78B0);
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  v7 = a1;
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_192CE3654;

  return PurchaseConfiguration.beginCardEnrollmentAttempt(account:)();
}

uint64_t sub_192CE3654()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  v8 = v4[2];
  v9 = *v0;
  OUTLINED_FUNCTION_6();
  *v10 = v9;

  sub_192C56500(v5, v6);
  v11 = sub_192F95A8C();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) != 1)
  {
    v13 = *(v2 + 32);
    v12 = sub_192F9596C();
    OUTLINED_FUNCTION_28_2();
    (*(v14 + 8))(v13, v11);
  }

  v15 = *(v2 + 48);
  v16 = OUTLINED_FUNCTION_9_20();
  v17(v16, v12);
  _Block_release(v15);

  v18 = *(v9 + 8);

  return v18();
}

Swift::Void __swiftcall PurchaseConfiguration.clearAutoEnrollmentIdentifier()()
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_96_4(&v0[OBJC_IVAR___AMSPurchaseConfiguration_systemProvider]);
  (*(v1 + 56))(0, 0);
  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  OUTLINED_FUNCTION_42();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_192FBCD90;
  v37[3] = ObjectType;
  v37[0] = v0;
  v4 = v0;
  if (AMSLogKey())
  {
    sub_192F967CC();
    OUTLINED_FUNCTION_99_5();
  }

  else
  {
    OUTLINED_FUNCTION_67_10();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v6 = OUTLINED_FUNCTION_90(v5);
  OUTLINED_FUNCTION_19_23(v6, xmmword_192FBCD50);
  v8 = sub_19286C588(v7, v36);
  OUTLINED_FUNCTION_132_2(v8, v9, v10, v11);
  *(v3 + 32) = v6;
  __swift_destroy_boxed_opaque_existential_0(v37);
  OUTLINED_FUNCTION_26_21();
  v12._countAndFlagsBits = 0xD000000000000036;
  LogInterpolation.init(stringLiteral:)(v12);
  v13 = sub_192F96E7C();
  if (OUTLINED_FUNCTION_85_6(v13))
  {
    v14 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v15 = swift_allocObject();
    v16 = OUTLINED_FUNCTION_27_1(v15);
    v37[0] = v3;
    v37[1] = sub_192BB97CC;
    v37[2] = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_3_5();
    sub_192F9674C();
    OUTLINED_FUNCTION_48_10();

    objc_autoreleasePoolPop(v14);
    v17 = objc_autoreleasePoolPush();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v19 = OUTLINED_FUNCTION_90(v18);
    OUTLINED_FUNCTION_23_21(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    *(v29 + 56) = MEMORY[0x1E69E6158];
    v30 = sub_1928FDB30();
    OUTLINED_FUNCTION_125_1(v30);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_134_1(v31, v32, v33, v34, v35);

    objc_autoreleasePoolPop(v17);
  }
}

uint64_t PurchaseConfiguration.finishCardEnrollmentAttempt(buyParams:purchaseResult:)()
{
  OUTLINED_FUNCTION_3();
  v1[121] = v0;
  v1[120] = v2;
  v1[119] = v3;
  v1[122] = swift_getObjectType();
  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CE3B28()
{
  v269 = v0;
  if ((sub_192CE0290() & 1) == 0)
  {
    OUTLINED_FUNCTION_118_1();
    if (!v146)
    {
      OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
    }

    v1 = *(v0 + 976);
    v2 = *(v0 + 968);
    v3 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    OUTLINED_FUNCTION_42();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_192FBCD90;
    *(v0 + 608) = v1;
    *(v0 + 584) = v2;
    v5 = v2;
    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      sub_192F967CC();
      OUTLINED_FUNCTION_27_12();
    }

    else
    {
      OUTLINED_FUNCTION_48_13();
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v11 = OUTLINED_FUNCTION_90(v10);
    OUTLINED_FUNCTION_127_2(v11, xmmword_192FBCD50);
    sub_19286C588(v0 + 584, v0 + 168);
    OUTLINED_FUNCTION_11_18();
    sub_19286CFC8(v12, v13, v14, v15);
    *(v4 + 32) = v11;
    __swift_destroy_boxed_opaque_existential_0((v0 + 584));
    OUTLINED_FUNCTION_26_21();
    v16._countAndFlagsBits = 0xD00000000000003BLL;
    LogInterpolation.init(stringLiteral:)(v16);
    sub_192F96E7C();
    OUTLINED_FUNCTION_165();
    if (!os_log_type_enabled(v3, v17))
    {
      goto LABEL_60;
    }

    v18 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v19 = swift_allocObject();
    v20 = OUTLINED_FUNCTION_116(v19);
    *(v0 + 816) = v4;
    *(v0 + 824) = sub_192BB97CC;
    *(v0 + 832) = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    goto LABEL_59;
  }

  if ([*(v0 + 952) parameterForKey_])
  {
    sub_192F9715C();
    swift_unknownObjectRelease();
  }

  else
  {
    v267 = 0u;
    v268 = 0u;
  }

  v8 = v267;
  *(v0 + 248) = v268;
  *(v0 + 232) = v8;
  if (*(v0 + 256))
  {
    if (swift_dynamicCast())
    {

      v9 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    sub_19292E1F0(v0 + 232, &unk_1EAE131B0, &qword_192FBD860);
  }

  v9 = 0;
LABEL_19:
  if ([*(v0 + 952) parameterForKey_])
  {
    sub_192F9715C();
    swift_unknownObjectRelease();
  }

  else
  {
    v267 = 0u;
    v268 = 0u;
  }

  v21 = v268;
  *(v0 + 264) = v267;
  *(v0 + 280) = v21;
  if (!*(v0 + 288))
  {
    sub_19292E1F0(v0 + 264, &unk_1EAE131B0, &qword_192FBD860);
    goto LABEL_30;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    if (v9)
    {
      OUTLINED_FUNCTION_118_1();
      if (!v146)
      {
        OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
      }

      v29 = *(v0 + 976);
      v30 = *(v0 + 968);
      v31 = qword_1EAE11D38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
      OUTLINED_FUNCTION_42();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_192FBCD90;
      *(v0 + 544) = v29;
      *(v0 + 520) = v30;
      v33 = v30;
      v34 = AMSLogKey();
      if (v34)
      {
        v35 = v34;
        sub_192F967CC();
        OUTLINED_FUNCTION_27_12();
      }

      else
      {
        OUTLINED_FUNCTION_48_13();
      }

      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
      v86 = OUTLINED_FUNCTION_90(v85);
      OUTLINED_FUNCTION_127_2(v86, xmmword_192FBCD50);
      sub_19286C588(v0 + 520, v0 + 552);
      OUTLINED_FUNCTION_11_18();
      sub_19286CFC8(v87, v88, v89, v90);
      *(v32 + 32) = v86;
      __swift_destroy_boxed_opaque_existential_0((v0 + 520));
      v91._countAndFlagsBits = 0xD00000000000003DLL;
      v91._object = 0x80000001930237B0;
      LogInterpolation.init(stringLiteral:)(v91);
      sub_192F96E7C();
      OUTLINED_FUNCTION_165();
      if (!os_log_type_enabled(v31, v92))
      {
        goto LABEL_60;
      }

      v18 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v93 = swift_allocObject();
      v94 = OUTLINED_FUNCTION_116(v93);
      *(v0 + 744) = v32;
      *(v0 + 752) = sub_192BB97CC;
      *(v0 + 760) = v94;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      goto LABEL_59;
    }

    v36 = 0;
    goto LABEL_37;
  }

  if ((v9 & 1) == 0)
  {
    v36 = 1;
LABEL_37:
    OUTLINED_FUNCTION_118_1();
    if (!v146)
    {
      OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
    }

    v37 = *(v0 + 976);
    v38 = *(v0 + 968);
    v39 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    OUTLINED_FUNCTION_42();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_192FBCD90;
    *(v0 + 320) = v37;
    *(v0 + 296) = v38;
    v41 = v38;
    v42 = AMSLogKey();
    if (v42)
    {
      v43 = v42;
      sub_192F967CC();
      OUTLINED_FUNCTION_27_12();
    }

    else
    {
      OUTLINED_FUNCTION_48_13();
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v45 = OUTLINED_FUNCTION_90(v44);
    OUTLINED_FUNCTION_127_2(v45, xmmword_192FBCD50);
    sub_19286C588(v0 + 296, v0 + 328);
    OUTLINED_FUNCTION_11_18();
    sub_19286CFC8(v46, v47, v48, v49);
    *(v40 + 32) = v45;
    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
    sub_19287AEE0();
    *&v267 = v50;
    OUTLINED_FUNCTION_31_0();
    v51 = &v267;
    v52._countAndFlagsBits = 0xD00000000000003BLL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v52);
    v53 = MEMORY[0x1E69E6370];
    *(v0 + 384) = MEMORY[0x1E69E6370];
    *(v0 + 360) = 0;
    sub_1928F9340(v0 + 360, v0 + 392, &unk_1EAE131B0, &qword_192FBD860);
    OUTLINED_FUNCTION_56_4();
    v54 = sub_19286D180(v0 + 392, v0 + 56);
    *(v0 + 88) = 0;
    if ((OUTLINED_FUNCTION_83_3(v54, v55, v56, v57, v58, v59, v60, v61, v250, v254, v258, v260, oslog, v265, v267) & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v51 = v246;
    }

    OUTLINED_FUNCTION_24();
    if (v62)
    {
      OUTLINED_FUNCTION_142();
      v51 = v247;
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_7_40(v63);
    *&v267 = v51;
    OUTLINED_FUNCTION_54_0();
    sub_19292E1F0(v64, v65, v66);
    v67 = &v267;
    v68._countAndFlagsBits = OUTLINED_FUNCTION_61();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v68);
    *(v0 + 448) = v53;
    *(v0 + 424) = v36;
    OUTLINED_FUNCTION_67_0();
    sub_1928F9340(v69, v70, v71, v72);
    OUTLINED_FUNCTION_130_2();
    v73 = sub_19286D180(v0 + 456, v0 + 96);
    *(v0 + 128) = 0;
    if ((OUTLINED_FUNCTION_83_3(v73, v74, v75, v76, v77, v78, v79, v80, v251, v255, v259, v261, oslogb, v266, v267) & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v67 = v248;
      *&v267 = v248;
    }

    OUTLINED_FUNCTION_24();
    if (v62)
    {
      OUTLINED_FUNCTION_142();
      v67 = v249;
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_11_2(v81, *(v0 + 96), *(v0 + 112));
    *&v267 = v67;
    sub_19292E1F0(v0 + 424, &unk_1EAE131B0, &qword_192FBD860);
    OUTLINED_FUNCTION_100_7();
    *(v40 + 40) = v267;
    sub_192F96E7C();
    OUTLINED_FUNCTION_165();
    if (!os_log_type_enabled(v39, v82))
    {
      goto LABEL_60;
    }

    v18 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v83 = swift_allocObject();
    v84 = OUTLINED_FUNCTION_116(v83);
    *(v0 + 792) = v40;
    *(v0 + 800) = sub_192BB97CC;
    *(v0 + 808) = v84;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
LABEL_59:
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v18);
    v95 = objc_autoreleasePoolPush();
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v97 = OUTLINED_FUNCTION_90(v96);
    OUTLINED_FUNCTION_62_1(v97, v98, v99, v100, v101, v102, v103, v104, v105, v250, v254, v258, v260, v106);
    *(v107 + 56) = MEMORY[0x1E69E6158];
    v108 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v108);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_89_6(v109, v110, v111, v112, v113);

    objc_autoreleasePoolPop(v95);
LABEL_60:

    goto LABEL_61;
  }

  OUTLINED_FUNCTION_118_1();
  if (!v146)
  {
    OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
  }

  v22 = *(v0 + 976);
  v23 = *(v0 + 968);
  osloga = qword_1EAE11D38;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  OUTLINED_FUNCTION_42();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_50(v25, xmmword_192FBCD90);
  *(v0 + 640) = v22;
  *(v0 + 616) = v23;
  v26 = v23;
  v27 = AMSLogKey();
  if (v27)
  {
    v28 = v27;
    sub_192F967CC();
    OUTLINED_FUNCTION_136_0();
  }

  else
  {
    OUTLINED_FUNCTION_105_5();
  }

  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v117 = OUTLINED_FUNCTION_90(v116);
  OUTLINED_FUNCTION_50_0(v117, xmmword_192FBCD50);
  sub_19286C588(v0 + 616, v0 + 648);
  OUTLINED_FUNCTION_116_2((v0 + 648), &v117[2]);
  v25[2].n128_u64[0] = v117;
  __swift_destroy_boxed_opaque_existential_0((v0 + 616));
  v118._countAndFlagsBits = 0xD000000000000037;
  v118._object = 0x80000001930237F0;
  LogInterpolation.init(stringLiteral:)(v118);
  v119 = sub_192F96E7C();
  if (os_log_type_enabled(osloga, v119))
  {
    v120 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v121 = swift_allocObject();
    *(v121 + 16) = v22;
    *(v0 + 864) = v25;
    *(v0 + 872) = sub_192BB97CC;
    *(v0 + 880) = v121;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    v122 = sub_192F9674C();
    v124 = v123;

    objc_autoreleasePoolPop(v120);
    v125 = objc_autoreleasePoolPush();
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v127 = OUTLINED_FUNCTION_90(v126);
    OUTLINED_FUNCTION_59(v127, v128, v129, v130, v131, v132, v133, v134, v135, v250, v254, v136);
    *(v137 + 56) = MEMORY[0x1E69E6158];
    v127[4].n128_u64[0] = sub_1928FDB30();
    v127[2].n128_u64[0] = v122;
    v127[2].n128_u64[1] = v124;
    OUTLINED_FUNCTION_60();
    sub_192F9622C(v138);

    objc_autoreleasePoolPop(v125);
  }

  v139 = *(v0 + 960);

  if (!sub_192CE9234(v139))
  {
    *(v0 + 680) = 0u;
    *(v0 + 696) = 0u;
    goto LABEL_79;
  }

  v140 = (*(v0 + 968) + OBJC_IVAR___AMSPurchaseConfiguration_kAutoEnrollRetryKey);
  v141 = v140[1];
  *(v0 + 904) = *v140;
  *(v0 + 912) = v141;

  sub_192F9725C();
  sub_192BD2CFC();

  sub_192948374(v0 + 16);
  if (!*(v0 + 704))
  {
LABEL_79:
    sub_19292E1F0(v0 + 680, &unk_1EAE131B0, &qword_192FBD860);
    goto LABEL_80;
  }

  v142 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {
    v143 = sub_192F9684C();
    v145 = v144;

    v146 = v143 == 1702195828 && v145 == 0xE400000000000000;
    if (v146)
    {

LABEL_91:
      v202 = *(v0 + 976);
      v203 = *(v0 + 968);
      OUTLINED_FUNCTION_42();
      v204 = swift_allocObject();
      OUTLINED_FUNCTION_29_0(v204, v205, v206, v207, v208, v209, v210, v211, v212, v213);
      *(v0 + 512) = v202;
      *(v0 + 488) = v203;
      v214 = v203;
      v215 = AMSLogKey();
      if (v215)
      {
        v216 = v215;
        sub_192F967CC();
        OUTLINED_FUNCTION_77_0();
      }

      else
      {
        OUTLINED_FUNCTION_73_0();
      }

      v217 = OUTLINED_FUNCTION_90(v116);
      OUTLINED_FUNCTION_59(v217, v218, v219, v220, v221, v222, v223, v224, v225, v250, v254, v226);
      sub_19286C588(v0 + 488, v0 + 200);
      OUTLINED_FUNCTION_101_4((v0 + 200), &v217[2]);
      v204[2].n128_u64[0] = v217;
      __swift_destroy_boxed_opaque_existential_0((v0 + 488));
      v227._countAndFlagsBits = 0xD000000000000043;
      v227._object = 0x8000000193023870;
      LogInterpolation.init(stringLiteral:)(v227);
      sub_192F96E7C();
      OUTLINED_FUNCTION_165();
      if (os_log_type_enabled(osloga, v228))
      {
        v229 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
        }

        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_71();
        v230 = swift_allocObject();
        *(v230 + 16) = v202;
        *(v0 + 840) = v204;
        *(v0 + 848) = sub_192BB97CC;
        *(v0 + 856) = v230;

        v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
        sub_1928FD924();
        OUTLINED_FUNCTION_61();
        sub_192F9674C();
        OUTLINED_FUNCTION_136_0();

        objc_autoreleasePoolPop(v229);
        v232 = objc_autoreleasePoolPush();
        v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
        v234 = OUTLINED_FUNCTION_90(v233);
        OUTLINED_FUNCTION_59(v234, v235, v236, v237, v238, v239, v240, v241, v242, v253, v257, v243);
        *(v244 + 56) = v142;
        v234[4].n128_u64[0] = sub_1928FDB30();
        v234[2].n128_u64[0] = v0 + 840;
        v234[2].n128_u64[1] = v231;
        OUTLINED_FUNCTION_60();
        sub_192F9622C(v245);

        objc_autoreleasePoolPop(v232);
      }

      PurchaseConfiguration.clearAutoEnrollmentIdentifier()();
LABEL_61:
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_102_6();

      __asm { BRAA            X1, X16 }
    }

    v147 = sub_192F9775C();

    if (v147)
    {
      goto LABEL_91;
    }
  }

LABEL_80:
  v148 = *(v0 + 976);
  v149 = *(v0 + 968);
  OUTLINED_FUNCTION_42();
  v150 = swift_allocObject();
  OUTLINED_FUNCTION_23_21(v150, v151, v152, v153, v154, v155, v156, v157, v158, v159);
  *(v0 + 736) = v148;
  *(v0 + 712) = v149;
  v160 = v149;
  v161 = AMSLogKey();
  if (v161)
  {
    v162 = v161;
    sub_192F967CC();
    OUTLINED_FUNCTION_48_10();
  }

  else
  {
    OUTLINED_FUNCTION_121_2();
  }

  v163 = OUTLINED_FUNCTION_90(v116);
  OUTLINED_FUNCTION_59(v163, v164, v165, v166, v167, v168, v169, v170, v171, v250, v254, v172);
  sub_19286C588(v0 + 712, v0 + 136);
  OUTLINED_FUNCTION_107_5();
  sub_19286CFC8(v173, v174, v175, v176);
  *(v24 + 32) = v163;
  __swift_destroy_boxed_opaque_existential_0((v0 + 712));
  v177._countAndFlagsBits = 0xD000000000000034;
  v177._object = 0x8000000193023830;
  LogInterpolation.init(stringLiteral:)(v177);
  sub_192F96E7C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(osloga, v178))
  {
    v179 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v180 = swift_allocObject();
    *(v180 + 16) = v148;
    *(v0 + 768) = v24;
    *(v0 + 776) = sub_192BB97CC;
    *(v0 + 784) = v180;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v179);
    v181 = objc_autoreleasePoolPush();
    v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v183 = OUTLINED_FUNCTION_90(v182);
    OUTLINED_FUNCTION_59(v183, v184, v185, v186, v187, v188, v189, v190, v191, v252, v256, v192);
    *(v193 + 56) = MEMORY[0x1E69E6158];
    v194 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v194);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_89_6(v195, v196, v197, v198, osloga);

    objc_autoreleasePoolPop(v181);
  }

  v199 = swift_task_alloc();
  *(v0 + 984) = v199;
  *v199 = v0;
  v199[1] = sub_192CE4B48;
  OUTLINED_FUNCTION_102_6();

  return PurchaseConfiguration.updateAutoEnrollmentIdentifier()();
}

uint64_t sub_192CE4B48()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t PurchaseConfiguration.updateAutoEnrollmentIdentifier()()
{
  OUTLINED_FUNCTION_3();
  *(v1 + 432) = v0;
  *(v1 + 440) = swift_getObjectType();
  v2 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_192CE4C90()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[54];
  v2 = OBJC_IVAR___AMSPurchaseConfiguration_systemProvider;
  v0[56] = OBJC_IVAR___AMSPurchaseConfiguration_systemProvider;
  OUTLINED_FUNCTION_21_22((v1 + v2));
  OUTLINED_FUNCTION_28_20();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[57] = v4;
  *v4 = v0;
  v4[1] = sub_192CE4DA0;
  v5 = OUTLINED_FUNCTION_30_3();

  return v7(v5);
}

uint64_t sub_192CE4DA0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  *v3 = *v1;
  v2[58] = v4;
  v2[59] = v5;
  v2[60] = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192CE5630(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_192CE5708;

  return PurchaseConfiguration.finishCardEnrollmentAttempt(buyParams:purchaseResult:)();
}

uint64_t sub_192CE5708()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  if (v2)
  {
    v10 = sub_192F958CC();

    v11 = OUTLINED_FUNCTION_9_20();
    v12(v11, v10);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_9_20();
    v14(v13, 0);
  }

  _Block_release(v4[5]);
  v15 = v9[1];

  return v15();
}

uint64_t PurchaseConfiguration.isExpressCheckoutEligible.getter()
{
  ObjectType = swift_getObjectType();
  if (sub_192CE5BFC())
  {
    v2 = sub_192CE6170();
  }

  else
  {
    v2 = 0;
  }

  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
  }

  v3 = qword_1EAE11D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  OUTLINED_FUNCTION_42();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_192FBCD90;
  *(&v76 + 1) = ObjectType;
  v75.n128_u64[0] = v0;
  v5 = v0;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    sub_192F967CC();
    OUTLINED_FUNCTION_27_12();
  }

  else
  {
    OUTLINED_FUNCTION_48_13();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v9 = OUTLINED_FUNCTION_90(v8);
  OUTLINED_FUNCTION_19_23(v9, xmmword_192FBCD50);
  sub_19286C588(v10, v79);
  OUTLINED_FUNCTION_11_18();
  sub_19286CFC8(v11, v12, v13, v14);
  *(v4 + 32) = v9;
  __swift_destroy_boxed_opaque_existential_0(&v75);
  sub_19287AEE0();
  v78 = v15;
  OUTLINED_FUNCTION_31_0();
  v16._countAndFlagsBits = 0xD000000000000037;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  v80 = MEMORY[0x1E69E6370];
  v23 = OUTLINED_FUNCTION_81_9(v17, v18, &unk_1EAE131B0, &qword_192FBD860, v19, v20, v21, v22, v57, v60, v63, v66, v69, v72, v75.n128_i64[0], v75.n128_i64[1], v76, *(&v76 + 1), v77, v78, v2 & 1);
  v27 = sub_1928F9340(v23, v24, v25, v26);
  OUTLINED_FUNCTION_14_1(v27, v28, v29, v30, v31, v32, v33, v34, v58, v61, v64, v67, v70, v73, *&v75, v76);
  if ((OUTLINED_FUNCTION_88_6() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_24();
  if (v35)
  {
    OUTLINED_FUNCTION_142();
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_3_56(v36, v59, v62, v65, v68, v71, v74, v75, v76, v77);
  sub_19292E1F0(v79, &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_100_7();
  *(v4 + 40) = v78;
  sub_192F96E7C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v3, v37))
  {
    v38 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v39 = swift_allocObject();
    v40 = OUTLINED_FUNCTION_116(v39);
    v75.n128_u64[0] = v4;
    v75.n128_u64[1] = sub_192BB97CC;
    *&v76 = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_3_5();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v38);
    v41 = objc_autoreleasePoolPush();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v43 = OUTLINED_FUNCTION_90(v42);
    OUTLINED_FUNCTION_78(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    *(v53 + 56) = MEMORY[0x1E69E6158];
    v54 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v54);
    OUTLINED_FUNCTION_10_32();
    sub_192F9622C(v55);

    objc_autoreleasePoolPop(v41);
  }

  return v2 & 1;
}

uint64_t sub_192CE5BFC()
{
  ObjectType = swift_getObjectType();
  v2 = (v0 + OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel);
  if ((*(v0 + OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel + 8) & 1) == 0 && (v2[3] & 1) == 0)
  {
    v48 = *v2;
    v49 = v2[2];
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    OUTLINED_FUNCTION_42();
    v50 = swift_allocObject();
    OUTLINED_FUNCTION_61_11(v50, xmmword_192FBCD90);
    if (AMSLogKey())
    {
      sub_192F967CC();
      OUTLINED_FUNCTION_99_5();
    }

    else
    {
      OUTLINED_FUNCTION_67_10();
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v52 = OUTLINED_FUNCTION_90(v51);
    OUTLINED_FUNCTION_19_23(v52, xmmword_192FBCD50);
    v54 = sub_19286C588(v53, v275);
    v62 = OUTLINED_FUNCTION_37_14(v54, v55, v56, v57, v58, v59, v60, v61, v166, v178, v190, v202, v214, v224, v234, v244, v250, v260, v266, v274);
    OUTLINED_FUNCTION_110_4(v62, v63, v64, v65, v66, v67, v68, v69, v168, v180, v192, v204);
    sub_19287AEE0();
    v274 = v70;
    v71._countAndFlagsBits = 0xD00000000000003CLL;
    v71._object = 0x8000000193024010;
    v72 = &v274;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v71);
    v276 = MEMORY[0x1E69E63B0];
    v79 = OUTLINED_FUNCTION_81_9(v73, v74, &unk_1EAE131B0, &qword_192FBD860, v75, v76, v77, v78, v169, v181, v193, v205, v215, v225, v235, v245, v251, v261, v267, v274, v48);
    v83 = sub_1928F9340(v79, v80, v81, v82);
    v91 = OUTLINED_FUNCTION_14_1(v83, v84, v85, v86, v87, v88, v89, v90, v170, v182, v194, v206, v216, v226, v236, v252);
    if ((OUTLINED_FUNCTION_83_7(v91, v92, v93, v94, v95, v96, v97, v98, v171, v183, v195, v207, v217, v227, v237, v246, v253, v262, v268, v274) & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v72 = v160;
    }

    OUTLINED_FUNCTION_7_9();
    if (v100)
    {
      v161 = OUTLINED_FUNCTION_43_1(v99);
      OUTLINED_FUNCTION_67(v161, ObjectType);
      v72 = v162;
    }

    v72[2] = ObjectType;
    OUTLINED_FUNCTION_3_56(&v72[5 * v52], v172, v184, v196, v208, v218, v228, v238, v254, v269);
    sub_19292E1F0(v275, &unk_1EAE131B0, &qword_192FBD860);
    OUTLINED_FUNCTION_31_0();
    v101 = &v274;
    v102._countAndFlagsBits = 0xD000000000000019;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v102);
    v276 = MEMORY[0x1E69E6530];
    v111 = OUTLINED_FUNCTION_81_9(v103, v104, v105, v106, v107, v108, v109, v110, v173, v185, v197, v209, v219, v229, v239, v247, v255, v263, v270, v274, v49);
    v113 = sub_1928F9340(v111, v112, &unk_1EAE131B0, &qword_192FBD860);
    v121 = OUTLINED_FUNCTION_14_1(v113, v114, v115, v116, v117, v118, v119, v120, v174, v186, v198, v210, v220, v230, v240, v256);
    if ((OUTLINED_FUNCTION_83_7(v121, v122, v123, v124, v125, v126, v127, v128, v175, v187, v199, v211, v221, v231, v241, v248, v257, v264, v271, v274) & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v101 = v163;
      v274 = v163;
    }

    OUTLINED_FUNCTION_7_9();
    if (v100)
    {
      v164 = OUTLINED_FUNCTION_43_1(v129);
      OUTLINED_FUNCTION_67(v164, &unk_1EAE131B0);
      v101 = v165;
    }

    v101[2] = &unk_1EAE131B0;
    OUTLINED_FUNCTION_3_56(&v101[5 * &qword_192FBD860], v176, v188, v200, v212, v222, v232, v242, v258, v272);
    sub_19292E1F0(v275, &unk_1EAE131B0, &qword_192FBD860);
    OUTLINED_FUNCTION_49_7();
    v138 = OUTLINED_FUNCTION_133_1(v130, v131, v132, v133, v134, v135, v136, v137, v177, v189, v201, v213, v223, v233, v243, v249, v259, v265, v273, v274);
    if (!OUTLINED_FUNCTION_63_10(v138))
    {
      v47 = 1;
      goto LABEL_31;
    }

    v139 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v140 = swift_allocObject();
    OUTLINED_FUNCTION_27_1(v140);
    OUTLINED_FUNCTION_58_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_3_5();
    sub_192F9674C();
    OUTLINED_FUNCTION_62_9();

    objc_autoreleasePoolPop(v139);
    v28 = objc_autoreleasePoolPush();
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v142 = OUTLINED_FUNCTION_90(v141);
    OUTLINED_FUNCTION_29_0(v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
    *(v152 + 56) = MEMORY[0x1E69E6158];
    v153 = sub_1928FDB30();
    OUTLINED_FUNCTION_94_4(v153);
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_114_2(v154, v155, v156, v157, v158);
    v47 = 1;
    goto LABEL_30;
  }

  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  OUTLINED_FUNCTION_42();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_61_11(v3, xmmword_192FBCD90);
  if (AMSLogKey())
  {
    sub_192F967CC();
    OUTLINED_FUNCTION_99_5();
  }

  else
  {
    OUTLINED_FUNCTION_67_10();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v5 = OUTLINED_FUNCTION_90(v4);
  OUTLINED_FUNCTION_19_23(v5, xmmword_192FBCD50);
  v7 = sub_19286C588(v6, v275);
  v15 = OUTLINED_FUNCTION_37_14(v7, v8, v9, v10, v11, v12, v13, v14, v166, v178, v190, v202, v214, v224, v234, v244, v250, v260, v266, v274);
  OUTLINED_FUNCTION_110_4(v15, v16, v17, v18, v19, v20, v21, v22, v167, v179, v191, v203);
  OUTLINED_FUNCTION_82_6();
  v23._countAndFlagsBits = 0xD000000000000048;
  v23._object = (v24 | 0x8000000000000000);
  LogInterpolation.init(stringLiteral:)(v23);
  v25 = sub_192F96E5C();
  if (OUTLINED_FUNCTION_63_10(v25))
  {
    v26 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v27 = swift_allocObject();
    OUTLINED_FUNCTION_27_1(v27);
    OUTLINED_FUNCTION_58_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_3_5();
    sub_192F9674C();
    OUTLINED_FUNCTION_62_9();

    objc_autoreleasePoolPop(v26);
    v28 = objc_autoreleasePoolPush();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v30 = OUTLINED_FUNCTION_90(v29);
    OUTLINED_FUNCTION_29_0(v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
    *(v40 + 56) = MEMORY[0x1E69E6158];
    v41 = sub_1928FDB30();
    OUTLINED_FUNCTION_94_4(v41);
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_114_2(v42, v43, v44, v45, v46);
    v47 = 0;
LABEL_30:

    objc_autoreleasePoolPop(v28);
    goto LABEL_31;
  }

  v47 = 0;
LABEL_31:

  return v47;
}

uint64_t sub_192CE6170()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR___AMSPurchaseConfiguration_expressCheckoutBagModel);
  if (v2 == 2)
  {
    OUTLINED_FUNCTION_128_1();
    if (!v3)
    {
      OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    OUTLINED_FUNCTION_42();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_61_11(v4, xmmword_192FBCD90);
    if (AMSLogKey())
    {
      sub_192F967CC();
      OUTLINED_FUNCTION_99_5();
    }

    else
    {
      OUTLINED_FUNCTION_67_10();
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v7 = OUTLINED_FUNCTION_90(v6);
    OUTLINED_FUNCTION_19_23(v7, xmmword_192FBCD50);
    v9 = sub_19286C588(v8, v183);
    v17 = OUTLINED_FUNCTION_37_14(v9, v10, v11, v12, v13, v14, v15, v16, v124, v131, v138, v145, v152, v157, v162, v167, v170, v175, v178, v182);
    OUTLINED_FUNCTION_110_4(v17, v18, v19, v20, v21, v22, v23, v24, v125, v132, v139, v146);
    OUTLINED_FUNCTION_82_6();
    v25._countAndFlagsBits = 0xD000000000000044;
    v25._object = (v26 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v25);
    v27 = sub_192F96E5C();
    if (OUTLINED_FUNCTION_63_10(v27))
    {
      v28 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v29 = swift_allocObject();
      OUTLINED_FUNCTION_27_1(v29);
      OUTLINED_FUNCTION_58_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_3_5();
      sub_192F9674C();
      OUTLINED_FUNCTION_62_9();

      objc_autoreleasePoolPop(v28);
      v30 = objc_autoreleasePoolPush();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v32 = OUTLINED_FUNCTION_90(v31);
      OUTLINED_FUNCTION_29_0(v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      *(v42 + 56) = MEMORY[0x1E69E6158];
      v43 = sub_1928FDB30();
      OUTLINED_FUNCTION_94_4(v43);
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_114_2(v44, v45, v46, v47, v48);
      LOBYTE(v2) = 0;
LABEL_25:

      objc_autoreleasePoolPop(v30);
      goto LABEL_26;
    }

    LOBYTE(v2) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_128_1();
    if (!v3)
    {
      OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    OUTLINED_FUNCTION_42();
    v5 = swift_allocObject();
    OUTLINED_FUNCTION_61_11(v5, xmmword_192FBCD90);
    if (AMSLogKey())
    {
      sub_192F967CC();
      OUTLINED_FUNCTION_99_5();
    }

    else
    {
      OUTLINED_FUNCTION_67_10();
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v50 = OUTLINED_FUNCTION_90(v49);
    OUTLINED_FUNCTION_19_23(v50, xmmword_192FBCD50);
    v52 = sub_19286C588(v51, v183);
    v60 = OUTLINED_FUNCTION_37_14(v52, v53, v54, v55, v56, v57, v58, v59, v124, v131, v138, v145, v152, v157, v162, v167, v170, v175, v178, v182);
    OUTLINED_FUNCTION_110_4(v60, v61, v62, v63, v64, v65, v66, v67, v126, v133, v140, v147);
    sub_19287AEE0();
    v182 = v68;
    OUTLINED_FUNCTION_31_0();
    v69 = &v182;
    v70._countAndFlagsBits = 0xD000000000000038;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v70);
    v184 = MEMORY[0x1E69E6370];
    v77 = OUTLINED_FUNCTION_81_9(v71, v72, &unk_1EAE131B0, &qword_192FBD860, v73, v74, v75, v76, v127, v134, v141, v148, v153, v158, v163, v168, v171, v176, v179, v182, v2 & 1);
    v81 = sub_1928F9340(v77, v78, v79, v80);
    OUTLINED_FUNCTION_14_1(v81, v82, v83, v84, v85, v86, v87, v88, v128, v135, v142, v149, v154, v159, v164, v172);
    if ((OUTLINED_FUNCTION_88_6() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v69 = v121;
    }

    OUTLINED_FUNCTION_7_9();
    if (v90)
    {
      v122 = OUTLINED_FUNCTION_43_1(v89);
      OUTLINED_FUNCTION_67(v122, ObjectType);
      v69 = v123;
    }

    v69[2] = ObjectType;
    OUTLINED_FUNCTION_3_56(&v69[5 * v50], v129, v136, v143, v150, v155, v160, v165, v173, v180);
    sub_19292E1F0(v183, &unk_1EAE131B0, &qword_192FBD860);
    OUTLINED_FUNCTION_49_7();
    v99 = OUTLINED_FUNCTION_133_1(v91, v92, v93, v94, v95, v96, v97, v98, v130, v137, v144, v151, v156, v161, v166, v169, v174, v177, v181, v182);
    if (OUTLINED_FUNCTION_63_10(v99))
    {
      v100 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v101 = swift_allocObject();
      OUTLINED_FUNCTION_27_1(v101);
      OUTLINED_FUNCTION_58_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_3_5();
      sub_192F9674C();
      OUTLINED_FUNCTION_62_9();

      objc_autoreleasePoolPop(v100);
      v30 = objc_autoreleasePoolPush();
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v103 = OUTLINED_FUNCTION_90(v102);
      OUTLINED_FUNCTION_29_0(v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
      *(v113 + 56) = MEMORY[0x1E69E6158];
      v114 = sub_1928FDB30();
      OUTLINED_FUNCTION_94_4(v114);
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_114_2(v115, v116, v117, v118, v119);
      goto LABEL_25;
    }
  }

LABEL_26:

  return v2 & 1;
}

uint64_t PurchaseConfiguration.isApplePayWalletRefreshed()()
{
  OUTLINED_FUNCTION_3();
  *(v1 + 104) = v0;
  *(v1 + 112) = swift_getObjectType();
  v2 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_192CE6680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  v13 = v12[13];
  if (*&v13[OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel + 40])
  {
    v14 = swift_task_alloc();
    v12[15] = v14;
    *v14 = v12;
    v14[1] = sub_192CE6980;
    OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_145();

    return PurchaseConfiguration.shouldAttemptAutoEnrollment(with:)();
  }

  else
  {
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
      v13 = v12[13];
    }

    v17 = v12[14];
    v18 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    OUTLINED_FUNCTION_42();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_192FBCD90;
    v12[5] = v17;
    v12[2] = v13;
    v20 = v13;
    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      sub_192F967CC();
      OUTLINED_FUNCTION_27_12();
    }

    else
    {
      OUTLINED_FUNCTION_48_13();
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v24 = OUTLINED_FUNCTION_90(v23);
    OUTLINED_FUNCTION_50(v24, xmmword_192FBCD50);
    sub_19286C588((v12 + 2), (v12 + 6));
    OUTLINED_FUNCTION_11_18();
    sub_19286CFC8(v25, v26, v27, v28);
    *(v19 + 32) = v24;
    __swift_destroy_boxed_opaque_existential_0(v12 + 2);
    OUTLINED_FUNCTION_26_21();
    v29._countAndFlagsBits = 0xD000000000000033;
    LogInterpolation.init(stringLiteral:)(v29);
    sub_192F96E7C();
    OUTLINED_FUNCTION_165();
    if (os_log_type_enabled(v18, v30))
    {
      v31 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v32 = swift_allocObject();
      v33 = OUTLINED_FUNCTION_116(v32);
      v12[10] = v19;
      v12[11] = sub_192BB97CC;
      v12[12] = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_61();
      sub_192F9674C();
      OUTLINED_FUNCTION_136_0();

      objc_autoreleasePoolPop(v31);
      v34 = objc_autoreleasePoolPush();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v36 = OUTLINED_FUNCTION_90(v35);
      OUTLINED_FUNCTION_78(v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
      *(v46 + 56) = MEMORY[0x1E69E6158];
      v47 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v47);
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_89_6(v48, v49, v50, v51, v52);

      objc_autoreleasePoolPop(v34);
    }

    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_145();

    return v55(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
  }
}

uint64_t sub_192CE6980()
{
  OUTLINED_FUNCTION_3();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5(v2);
}

uint64_t PurchaseConfiguration.shouldAttemptAutoEnrollment(with:)()
{
  OUTLINED_FUNCTION_3();
  v1[87] = v0;
  v1[86] = v2;
  v1[85] = v3;
  v1[88] = swift_getObjectType();
  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CE6AD4()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[87];
  v2 = OBJC_IVAR___AMSPurchaseConfiguration_systemProvider;
  v0[89] = OBJC_IVAR___AMSPurchaseConfiguration_systemProvider;
  v3 = v1 + v2;
  v4 = *(v1 + v2 + 24);
  v5 = *(v1 + v2 + 32);
  v6 = OUTLINED_FUNCTION_102();
  __swift_project_boxed_opaque_existential_0(v6, v7);
  v0[90] = (*(v5 + 8))(v4, v5);
  v0[91] = v8;
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = OUTLINED_FUNCTION_102();
  __swift_project_boxed_opaque_existential_0(v11, v12);
  v15 = (*(v10 + 24) + **(v10 + 24));
  v13 = swift_task_alloc();
  v0[92] = v13;
  *v13 = v0;
  v13[1] = sub_192CE6C40;

  return v15(v9, v10);
}

uint64_t sub_192CE6C40()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 744) = v5;
  *(v3 + 752) = v6;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_192CE6D5C()
{
  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
  }

  v1 = v0[44].n128_u64[0];
  v2 = v0[43].n128_u64[1];
  oslog = qword_1EAE11D38;
  v0[47].n128_u64[1] = qword_1EAE11D38;
  v0[48].n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  OUTLINED_FUNCTION_42();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_50_0(v3, xmmword_192FBCD90);
  v0[14].n128_u64[0] = v1;
  v0[12].n128_u64[1] = v2;
  v4 = v2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_192F967CC();
    OUTLINED_FUNCTION_136_0();
  }

  else
  {
    OUTLINED_FUNCTION_105_5();
  }

  v7 = v0[47].n128_u64[0];
  v8 = v0[46].n128_u64[1];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v0[48].n128_u64[1] = v9;
  v83 = v9;
  v10 = OUTLINED_FUNCTION_90(v9);
  *(v10 + 16) = xmmword_192FBCD50;
  sub_19286C588(&v0[12].n128_i64[1], &v0[14].n128_i64[1]);
  OUTLINED_FUNCTION_116_2(&v0[14].n128_u64[1], v10 + 32);
  v3[2].n128_u64[0] = v10;
  __swift_destroy_boxed_opaque_existential_0(&v0[12].n128_u64[1]);
  sub_19287AEE0();
  v86 = v11;
  v12._countAndFlagsBits = 0xD000000000000044;
  v12._object = 0x8000000193023A40;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  v0[18].n128_u64[0] = MEMORY[0x1E69E6158];
  v0[16].n128_u64[1] = v8;
  v0[17].n128_u64[0] = v7;
  sub_1928F9340(&v0[16].n128_i64[1], &v0[18].n128_i64[1], &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_84_4();

  sub_19286D180(&v0[18].n128_i64[1], &v0[1]);
  v0[3].n128_u8[0] = 2;
  v13 = v86;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v13 = v73;
  }

  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  if (v15 >= v14 >> 1)
  {
    v74 = OUTLINED_FUNCTION_43_1(v14);
    OUTLINED_FUNCTION_67(v74, v15 + 1);
    v13 = v75;
  }

  v16 = v0[45].n128_u64[1];
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_15_29(v13 + v15 * v17);
  sub_19292E1F0(&v0[16].n128_i64[1], &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_31_0();
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  if (v16)
  {
    v19 = v0[45].n128_u64[1];
    v20 = v0[45].n128_u64[0];
    v21 = MEMORY[0x1E69E6158];
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v0[21].n128_u64[1] = 0;
  }

  v0[20].n128_u64[1] = v20;
  v0[21].n128_u64[0] = v19;
  v0[22].n128_u64[0] = v21;
  sub_1928F9340(&v0[20].n128_i64[1], &v0[22].n128_i64[1], &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_56_4();

  sub_19286D180(&v0[22].n128_i64[1], &v0[3].n128_i64[1]);
  v0[5].n128_u8[8] = 2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v13 = v76;
  }

  v23 = *(v13 + 16);
  v22 = *(v13 + 24);
  if (v23 >= v22 >> 1)
  {
    v77 = OUTLINED_FUNCTION_43_1(v22);
    OUTLINED_FUNCTION_67(v77, v23 + 1);
    v13 = v78;
  }

  v24 = v0[43].n128_u64[0];
  v25 = v0[42].n128_u64[1];
  *(v13 + 16) = v23 + 1;
  OUTLINED_FUNCTION_7_40(v13 + 40 * v23);
  sub_19292E1F0(&v0[20].n128_i64[1], &unk_1EAE131B0, &qword_192FBD860);
  v26._countAndFlagsBits = 0x72746E756F63202CLL;
  v26._object = 0xEE003A65646F4379;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
  v0[26].n128_u64[0] = MEMORY[0x1E69E6158];
  v0[24].n128_u64[1] = v25;
  v0[25].n128_u64[0] = v24;
  sub_1928F9340(&v0[24].n128_i64[1], &v0[26].n128_i64[1], &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_130_2();

  sub_19286D180(&v0[26].n128_i64[1], &v0[6]);
  v0[8].n128_u8[0] = 2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v13 = v79;
  }

  v28 = *(v13 + 16);
  v27 = *(v13 + 24);
  if (v28 >= v27 >> 1)
  {
    v80 = OUTLINED_FUNCTION_43_1(v27);
    OUTLINED_FUNCTION_67(v80, v28 + 1);
    v13 = v81;
  }

  *(v13 + 16) = v28 + 1;
  OUTLINED_FUNCTION_11_2((v13 + 40 * v28), v0[6], v0[7]);
  sub_19292E1F0(&v0[24].n128_i64[1], &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_49_7();
  v3[2].n128_u64[1] = v13;
  v29 = sub_192F96E7C();
  if (os_log_type_enabled(oslog, v29))
  {
    v30 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    v31 = byte_1ED6DE5D8;
    OUTLINED_FUNCTION_71();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    v0[41].n128_u64[0] = v3;
    v0[41].n128_u64[1] = sub_192BB97CC;
    v0[42].n128_u64[0] = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    v33 = sub_192F9674C();
    v35 = v34;

    objc_autoreleasePoolPop(v30);
    v36 = objc_autoreleasePoolPush();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v38 = OUTLINED_FUNCTION_90(v37);
    *(v38 + 16) = xmmword_192FBCD50;
    *(v38 + 56) = MEMORY[0x1E69E6158];
    *(v38 + 64) = sub_1928FDB30();
    *(v38 + 32) = v33;
    *(v38 + 40) = v35;
    OUTLINED_FUNCTION_60();
    sub_192F9622C(v39);

    objc_autoreleasePoolPop(v36);
  }

  if (v16)
  {
    if (v0[45].n128_u64[0] == v0[46].n128_u64[1] && v0[45].n128_u64[1] == v0[47].n128_u64[0])
    {

      goto LABEL_37;
    }

    v41 = sub_192F9775C();

    if (v41)
    {
LABEL_37:
      v45 = v0[44].n128_u64[0];
      v46 = v0[43].n128_u64[1];
      OUTLINED_FUNCTION_42();
      v47 = swift_allocObject();
      OUTLINED_FUNCTION_59(v47, v48, v49, v50, v51, v52, v53, v54, v55, v82, v83, v56);
      v0[34].n128_u64[0] = v45;
      v0[32].n128_u64[1] = v46;
      v57 = v46;
      v58 = AMSLogKey();
      if (v58)
      {
        v59 = v58;
        sub_192F967CC();
        OUTLINED_FUNCTION_77_0();
      }

      else
      {
        OUTLINED_FUNCTION_73_0();
      }

      v60 = OUTLINED_FUNCTION_90(v84);
      *(v60 + 16) = xmmword_192FBCD50;
      sub_19286C588(&v0[32].n128_i64[1], &v0[34].n128_i64[1]);
      OUTLINED_FUNCTION_101_4(&v0[34].n128_u64[1], v60 + 32);
      v47[2].n128_u64[0] = v60;
      __swift_destroy_boxed_opaque_existential_0(&v0[32].n128_u64[1]);
      v61._countAndFlagsBits = 0xD000000000000047;
      v61._object = 0x8000000193023B10;
      LogInterpolation.init(stringLiteral:)(v61);
      sub_192F96E7C();
      OUTLINED_FUNCTION_165();
      if (os_log_type_enabled(oslog, v62))
      {
        v63 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
        }

        v64 = byte_1ED6DE5D8;
        OUTLINED_FUNCTION_71();
        v65 = swift_allocObject();
        *(v65 + 16) = v64;
        v0[39].n128_u64[1] = v47;
        v0[40].n128_u64[0] = sub_192BB97CC;
        v0[40].n128_u64[1] = v65;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
        sub_1928FD924();
        OUTLINED_FUNCTION_61();
        sub_192F9674C();
        OUTLINED_FUNCTION_48_10();

        objc_autoreleasePoolPop(v63);
        v66 = objc_autoreleasePoolPush();
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
        v68 = OUTLINED_FUNCTION_90(v67);
        *(v68 + 16) = xmmword_192FBCD50;
        *(v68 + 56) = MEMORY[0x1E69E6158];
        v69 = sub_1928FDB30();
        OUTLINED_FUNCTION_125_1(v69);
        OUTLINED_FUNCTION_60();
        sub_192F9622C(v70);

        objc_autoreleasePoolPop(v66);
      }

      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_102_6();

      __asm { BRAA            X2, X16 }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_21_22((v0[43].n128_u64[1] + v0[44].n128_u64[1]));
  v42 = swift_task_alloc();
  v0[49].n128_u64[0] = v42;
  *v42 = v0;
  v42[1] = sub_192CE7668;
  OUTLINED_FUNCTION_102_6();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_192CE7668()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  if (v0)
  {

    v6 = OUTLINED_FUNCTION_133();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_40();

    return v9(v3 & 1);
  }
}

uint64_t sub_192CE778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  v13 = v12[88];
  v14 = v12[87];
  OUTLINED_FUNCTION_42();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_192FBCD90;
  v12[60] = v13;
  v12[57] = v14;
  v16 = v14;
  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    v19 = sub_192F967CC();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_90(v12[97]);
  OUTLINED_FUNCTION_50(v22, xmmword_192FBCD50);
  sub_19286C588((v12 + 57), (v12 + 61));
  sub_19286CFC8(v12 + 61, v19, v21, &v22[2]);
  *(v15 + 32) = v22;
  __swift_destroy_boxed_opaque_existential_0(v12 + 57);
  OUTLINED_FUNCTION_72_6();
  v23._countAndFlagsBits = 0xD000000000000050;
  LogInterpolation.init(stringLiteral:)(v23);
  v24 = sub_192F96E7C();
  if (OUTLINED_FUNCTION_113_2(v24))
  {
    v25 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v26 = swift_allocObject();
    v27 = OUTLINED_FUNCTION_27_1(v26);
    v12[76] = v15;
    v12[77] = sub_192BB97CC;
    v12[78] = v27;

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_48_10();

    objc_autoreleasePoolPop(v25);
    v29 = objc_autoreleasePoolPush();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v31 = OUTLINED_FUNCTION_90(v30);
    OUTLINED_FUNCTION_29_0(v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
    *(v41 + 56) = MEMORY[0x1E69E6158];
    v31[4].n128_u64[0] = sub_1928FDB30();
    v31[2].n128_u64[0] = (v12 + 76);
    v31[2].n128_u64[1] = v28;
    OUTLINED_FUNCTION_60();
    sub_192F9622C(v42);

    objc_autoreleasePoolPop(v29);
  }

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_145();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_192CE79E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
  }

  v13 = v12[88];
  v14 = v12[87];
  v15 = qword_1EAE11D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  OUTLINED_FUNCTION_42();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_192FBCD90;
  v12[20] = v13;
  v12[17] = v14;
  v17 = v14;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    sub_192F967CC();
    OUTLINED_FUNCTION_27_12();
  }

  else
  {
    OUTLINED_FUNCTION_48_13();
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v21 = OUTLINED_FUNCTION_90(v20);
  OUTLINED_FUNCTION_50(v21, xmmword_192FBCD50);
  sub_19286C588((v12 + 17), (v12 + 21));
  OUTLINED_FUNCTION_11_18();
  sub_19286CFC8(v22, v23, v24, v25);
  *(v16 + 32) = v21;
  __swift_destroy_boxed_opaque_existential_0(v12 + 17);
  OUTLINED_FUNCTION_26_21();
  v26._countAndFlagsBits = 0xD000000000000058;
  LogInterpolation.init(stringLiteral:)(v26);
  sub_192F96E5C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v15, v27))
  {
    v28 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v29 = swift_allocObject();
    v30 = OUTLINED_FUNCTION_116(v29);
    v12[73] = v16;
    v12[74] = sub_192BB97CC;
    v12[75] = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v28);
    v31 = objc_autoreleasePoolPush();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v33 = OUTLINED_FUNCTION_90(v32);
    OUTLINED_FUNCTION_78(v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
    *(v43 + 56) = MEMORY[0x1E69E6158];
    v44 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v44);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_89_6(v45, v46, v47, v48, v49);

    objc_autoreleasePoolPop(v31);
  }

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_145();

  return v52(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12);
}

uint64_t PurchaseConfiguration.shouldAttemptApplePayClassic(with:paymentNetworks:account:accessControl:)()
{
  OUTLINED_FUNCTION_3();
  v1[155] = v0;
  v1[154] = v2;
  v1[153] = v3;
  v1[152] = v4;
  v1[151] = v5;
  v1[150] = v6;
  v1[156] = swift_getObjectType();
  v7 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192CE7CD4()
{
  v231 = v0;
  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
  }

  v1 = *(v0 + 1248);
  v2 = *(v0 + 1240);
  v3 = qword_1EAE11D38;
  *(v0 + 1256) = qword_1EAE11D38;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  *(v0 + 1264) = v4;
  v216 = v4;
  OUTLINED_FUNCTION_42();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_50(v5, xmmword_192FBCD90);
  *(v0 + 696) = v1;
  *(v0 + 672) = v2;
  v6 = v2;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_192F967CC();
    OUTLINED_FUNCTION_136_0();
  }

  else
  {
    OUTLINED_FUNCTION_105_5();
  }

  v9 = *(v0 + 1208);
  v10 = *(v0 + 1200);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  *(v0 + 1272) = v11;
  v12 = OUTLINED_FUNCTION_90(v11);
  OUTLINED_FUNCTION_127_2(v12, xmmword_192FBCD50);
  sub_19286C588(v0 + 672, v0 + 928);
  OUTLINED_FUNCTION_116_2((v0 + 928), &v12[2]);
  v5[2].n128_u64[0] = v12;
  __swift_destroy_boxed_opaque_existential_0((v0 + 672));
  sub_19287AEE0();
  v230 = v13;
  v14._countAndFlagsBits = 0xD000000000000043;
  v14._object = 0x8000000193023B60;
  v15 = &v230;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  *(v0 + 888) = MEMORY[0x1E69E6158];
  *(v0 + 864) = v10;
  *(v0 + 872) = v9;
  sub_1928F9340(v0 + 864, v0 + 608, &unk_1EAE131B0, &qword_192FBD860);
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;

  v16 = sub_19286D180(v0 + 608, v0 + 136);
  *(v0 + 168) = 0;
  if ((OUTLINED_FUNCTION_83_3(v16, v17, v18, v19, v20, v21, v22, v23, v198, v204, v210, v216, v223, v227, v230) & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v15 = v188;
    v230 = v188;
  }

  v25 = v15[2];
  v24 = v15[3];
  v26 = v3;
  if (v25 >= v24 >> 1)
  {
    v189 = OUTLINED_FUNCTION_43_1(v24);
    OUTLINED_FUNCTION_67(v189, v25 + 1);
    v15 = v190;
  }

  v27 = *(v0 + 1216);
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_11_2((v15 + v25 * v28), *(v0 + 136), *(v0 + 152));
  v230 = v15;
  sub_19292E1F0(v0 + 864, &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_31_0();
  v29 = &v230;
  v30._countAndFlagsBits = 0xD000000000000013;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
  *(v0 + 440) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE156B0, &qword_192FBFC00);
  *(v0 + 416) = v27;
  sub_1928F9340(v0 + 416, v0 + 288, &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_84_4();

  v31 = sub_19286D180(v0 + 288, v0 + 16);
  *(v0 + 48) = 0;
  if ((OUTLINED_FUNCTION_83_3(v31, v32, v33, v34, v35, v36, v37, v38, v199, v205, v211, v217, v224, v228, v230) & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v29 = v191;
    v230 = v191;
  }

  v40 = v29[2];
  v39 = v29[3];
  if (v40 >= v39 >> 1)
  {
    v192 = OUTLINED_FUNCTION_43_1(v39);
    OUTLINED_FUNCTION_67(v192, v40 + 1);
    v29 = v193;
  }

  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_15_29(v29 + v40 * v41);
  v230 = v29;
  sub_19292E1F0(v0 + 416, &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_49_7();
  v5[2].n128_u64[1] = v230;
  v42 = sub_192F96E7C();
  if (OUTLINED_FUNCTION_85_6(v42))
  {
    v43 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    v44 = byte_1ED6DE5D8;
    OUTLINED_FUNCTION_71();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v0 + 1168) = v5;
    *(v0 + 1176) = sub_192BB97CC;
    *(v0 + 1184) = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    v46 = sub_192F9674C();
    v48 = v47;

    objc_autoreleasePoolPop(v43);
    v40 = objc_autoreleasePoolPush();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v50 = OUTLINED_FUNCTION_90(v49);
    OUTLINED_FUNCTION_62_1(v50, v51, v52, v53, v54, v55, v56, v57, v58, v200, v206, v212, v218, v59);
    *(v60 + 56) = MEMORY[0x1E69E6158];
    v50[4].n128_u64[0] = sub_1928FDB30();
    v50[2].n128_u64[0] = v46;
    v50[2].n128_u64[1] = v48;
    OUTLINED_FUNCTION_52();
    sub_192F9622C(v61);

    objc_autoreleasePoolPop(v40);
  }

  OUTLINED_FUNCTION_111_4();
  v62 = OUTLINED_FUNCTION_129_2();
  v64 = v63(v62);
  if (v64 != 1)
  {
    v73 = v64;
    v74 = *(v0 + 1248);
    v75 = *(v0 + 1240);
    OUTLINED_FUNCTION_42();
    v76 = swift_allocObject();
    OUTLINED_FUNCTION_29_0(v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
    *(v0 + 344) = v74;
    *(v0 + 320) = v75;
    v86 = v75;
    v87 = AMSLogKey();
    if (v87)
    {
      v88 = v87;
      sub_192F967CC();
      OUTLINED_FUNCTION_48_10();
    }

    else
    {
      OUTLINED_FUNCTION_121_2();
    }

    v109 = OUTLINED_FUNCTION_90(v11);
    OUTLINED_FUNCTION_62_1(v109, v110, v111, v112, v113, v114, v115, v116, v117, v200, v206, v212, v218, v118);
    sub_19286C588(v0 + 320, v0 + 352);
    OUTLINED_FUNCTION_107_5();
    sub_19286CFC8(v119, v120, v121, v122);
    v76[2].n128_u64[0] = v109;
    __swift_destroy_boxed_opaque_existential_0((v0 + 320));
    sub_19287AEE0();
    v230 = v123;
    v124._countAndFlagsBits = 0xD000000000000047;
    v124._object = 0x8000000193023BD0;
    v125 = &v230;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v124);
    *(v0 + 408) = MEMORY[0x1E69E6530];
    *(v0 + 384) = v73;
    sub_1928F9340(v0 + 384, v0 + 448, &unk_1EAE131B0, &qword_192FBD860);
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    v126 = sub_19286D180(v0 + 448, v0 + 216);
    *(v0 + 248) = 3;
    if ((OUTLINED_FUNCTION_83_3(v126, v127, v128, v129, v130, v131, v132, v133, v201, v207, v213, v220, v225, v229, v230) & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v125 = v194;
    }

    OUTLINED_FUNCTION_24();
    if (v134)
    {
      OUTLINED_FUNCTION_142();
      v125 = v195;
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_11_2(v135, *(v0 + 216), *(v0 + 232));
    v230 = v125;
    sub_19292E1F0(v0 + 384, &unk_1EAE131B0, &qword_192FBD860);
    OUTLINED_FUNCTION_49_7();
    v76[2].n128_u64[1] = v230;
    sub_192F96E7C();
    OUTLINED_FUNCTION_165();
    if (!os_log_type_enabled(v26, v136))
    {
      goto LABEL_49;
    }

    v137 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    v138 = byte_1ED6DE5D8;
    OUTLINED_FUNCTION_71();
    v139 = swift_allocObject();
    *(v139 + 16) = v138;
    *(v0 + 1120) = v76;
    v140 = 1136;
    v141 = 1128;
    goto LABEL_48;
  }

  v65 = *(v0 + 1232);
  OUTLINED_FUNCTION_111_4();
  if ((*(v40 + 32))(4, v65, v5, v40))
  {
    v66 = *(v0 + 1240);
    v67 = OBJC_IVAR___AMSPurchaseConfiguration_systemProvider;
    *(v0 + 1280) = OBJC_IVAR___AMSPurchaseConfiguration_systemProvider;
    v219 = (OUTLINED_FUNCTION_21_22((v66 + v67)) + 72);
    v226 = (*v219 + **v219);
    v68 = swift_task_alloc();
    *(v0 + 1288) = v68;
    *v68 = v0;
    v68[1] = sub_192CE87F0;
    v69 = *(v0 + 1216);
    v70 = *(v0 + 1208);
    v71 = *(v0 + 1200);

    return v226(v71, v70, v69, v3, &unk_1ED6DF000);
  }

  v89 = *(v0 + 1248);
  v90 = *(v0 + 1240);
  OUTLINED_FUNCTION_111_4();
  v91 = OUTLINED_FUNCTION_129_2();
  v93 = v92(v91);
  v95 = v94;
  OUTLINED_FUNCTION_42();
  v96 = swift_allocObject();
  OUTLINED_FUNCTION_29_0(v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
  *(v0 + 536) = v89;
  *(v0 + 512) = v90;
  v106 = v90;
  v107 = AMSLogKey();
  if (v107)
  {
    v108 = v107;
    sub_192F967CC();
    OUTLINED_FUNCTION_136_0();
  }

  else
  {
    OUTLINED_FUNCTION_105_5();
  }

  v142 = OUTLINED_FUNCTION_90(v11);
  OUTLINED_FUNCTION_62_1(v142, v143, v144, v145, v146, v147, v148, v149, v150, v200, v206, v212, v218, v151);
  sub_19286C588(v0 + 512, v0 + 544);
  OUTLINED_FUNCTION_116_2((v0 + 544), &v142[2]);
  v96[2].n128_u64[0] = v142;
  __swift_destroy_boxed_opaque_existential_0((v0 + 512));
  sub_19287AEE0();
  v230 = v152;
  v153._countAndFlagsBits = 0xD000000000000046;
  v153._object = 0x8000000193023C20;
  v154 = &v230;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v153);
  if (v95)
  {
    v155 = MEMORY[0x1E69E6158];
  }

  else
  {
    v93 = 0;
    v155 = 0;
    *(v0 + 592) = 0;
  }

  *(v0 + 576) = v93;
  *(v0 + 584) = v95;
  *(v0 + 600) = v155;
  sub_1928F9340(v0 + 576, v0 + 640, &unk_1EAE131B0, &qword_192FBD860);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  v156 = sub_19286D180(v0 + 640, v0 + 176);
  *(v0 + 208) = 3;
  if ((OUTLINED_FUNCTION_83_3(v156, v157, v158, v159, v160, v161, v162, v163, v203, v209, v215, v222, v225, v229, v230) & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v154 = v196;
  }

  OUTLINED_FUNCTION_24();
  if (v134)
  {
    OUTLINED_FUNCTION_142();
    v154 = v197;
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_11_2(v164, *(v0 + 176), *(v0 + 192));
  v230 = v154;
  sub_19292E1F0(v0 + 576, &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_49_7();
  v96[2].n128_u64[1] = v230;
  sub_192F96E7C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v26, v165))
  {
    v137 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    v166 = byte_1ED6DE5D8;
    OUTLINED_FUNCTION_71();
    v139 = swift_allocObject();
    *(v139 + 16) = v166;
    *(v0 + 1024) = v96;
    v140 = 1040;
    v141 = 1032;
LABEL_48:
    *(v0 + v141) = sub_192BB97CC;
    *(v0 + v140) = v139;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v137);
    v167 = objc_autoreleasePoolPush();
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v169 = OUTLINED_FUNCTION_90(v168);
    OUTLINED_FUNCTION_62_1(v169, v170, v171, v172, v173, v174, v175, v176, v177, v202, v208, v214, v221, v178);
    *(v179 + 56) = MEMORY[0x1E69E6158];
    v180 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v180);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_89_6(v181, v182, v183, v184, v185);

    objc_autoreleasePoolPop(v167);
  }

LABEL_49:

  v186 = OUTLINED_FUNCTION_26_4();

  return v187(v186);
}

uint64_t sub_192CE87F0()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 1296) = v0;

  if (!v0)
  {
    *(v5 + 49) = v3 & 1;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_192CE8904()
{
  OUTLINED_FUNCTION_120();
  if (*(v0 + 49) == 1)
  {
    v1 = *(v0 + 1248);
    v2 = *(v0 + 1240);
    OUTLINED_FUNCTION_42();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_192FBCD90;
    *(v0 + 824) = v1;
    *(v0 + 800) = v2;
    v4 = v2;
    v5 = AMSLogKey();
    if (v5)
    {
      v6 = v5;
      v7 = sub_192F967CC();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v11 = OUTLINED_FUNCTION_90(*(v0 + 1272));
    OUTLINED_FUNCTION_50(v11, xmmword_192FBCD50);
    sub_19286C588(v0 + 800, v0 + 480);
    sub_19286CFC8((v0 + 480), v7, v9, &v11[2]);
    *(v3 + 32) = v11;
    __swift_destroy_boxed_opaque_existential_0((v0 + 800));
    OUTLINED_FUNCTION_72_6();
    v12._countAndFlagsBits = 0xD000000000000032;
    LogInterpolation.init(stringLiteral:)(v12);
    v13 = sub_192F96E7C();
    if (OUTLINED_FUNCTION_113_2(v13))
    {
      v14 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_71();
      v15 = swift_allocObject();
      v16 = OUTLINED_FUNCTION_116(v15);
      *(v0 + 1144) = v3;
      *(v0 + 1152) = sub_192BB97CC;
      *(v0 + 1160) = v16;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_61();
      sub_192F9674C();
      OUTLINED_FUNCTION_136_0();

      objc_autoreleasePoolPop(v14);
      v17 = objc_autoreleasePoolPush();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v19 = OUTLINED_FUNCTION_90(v18);
      OUTLINED_FUNCTION_78(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
      *(v29 + 56) = MEMORY[0x1E69E6158];
      v30 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v30);
      OUTLINED_FUNCTION_60();
      sub_192F9622C(v31);

      objc_autoreleasePoolPop(v17);
    }

    v32 = *(v0 + 1280);
    v33 = *(v0 + 1240);
    v34 = *(v0 + 1232);

    OUTLINED_FUNCTION_96_4((v33 + v32));
    v10 = (*(v32 + 16))(v34, v3, v32);
  }

  else
  {
    v10 = 0;
  }

  v35 = *(v0 + 1248);
  v36 = *(v0 + 1240);
  OUTLINED_FUNCTION_42();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_192FBCD90;
  *(v0 + 984) = v35;
  *(v0 + 960) = v36;
  v38 = v36;
  v39 = AMSLogKey();
  if (v39)
  {
    v40 = v39;
    sub_192F967CC();
    OUTLINED_FUNCTION_27_12();
  }

  else
  {
    OUTLINED_FUNCTION_48_13();
  }

  v41 = OUTLINED_FUNCTION_90(*(v0 + 1272));
  OUTLINED_FUNCTION_50(v41, xmmword_192FBCD50);
  sub_19286C588(v0 + 960, v0 + 992);
  OUTLINED_FUNCTION_11_18();
  sub_19286CFC8(v42, v43, v44, v45);
  *(v37 + 32) = v41;
  __swift_destroy_boxed_opaque_existential_0((v0 + 960));
  sub_19287AEE0();
  v74 = v46;
  v47._countAndFlagsBits = 0xD000000000000042;
  v47._object = 0x8000000193023CB0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v47);
  *(v0 + 280) = MEMORY[0x1E69E6370];
  *(v0 + 256) = v10 & 1;
  sub_1928F9340(v0 + 256, v0 + 832, &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_56_4();
  sub_19286D180(v0 + 832, v0 + 56);
  *(v0 + 88) = 0;
  v48 = v74;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v48 = v72;
  }

  v49 = *(v48 + 16);
  if (v49 >= *(v48 + 24) >> 1)
  {
    OUTLINED_FUNCTION_142();
    v48 = v73;
  }

  v50 = *(v0 + 1256);
  *(v48 + 16) = v49 + 1;
  OUTLINED_FUNCTION_7_40(v48 + 40 * v49);
  sub_19292E1F0(v0 + 256, &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_49_7();
  *(v37 + 40) = v48;
  sub_192F96E7C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_71();
    v53 = swift_allocObject();
    v54 = OUTLINED_FUNCTION_38_0(v53);
    *(v0 + 1096) = v37;
    *(v0 + 1104) = sub_192BB97CC;
    *(v0 + 1112) = v54;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_154();

    objc_autoreleasePoolPop(v52);
    v55 = objc_autoreleasePoolPush();
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v57 = OUTLINED_FUNCTION_90(v56);
    OUTLINED_FUNCTION_29_0(v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
    *(v67 + 56) = MEMORY[0x1E69E6158];
    v68 = sub_1928FDB30();
    OUTLINED_FUNCTION_159(v68);
    OUTLINED_FUNCTION_60();
    sub_192F9622C(v69);

    objc_autoreleasePoolPop(v55);
  }

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_94();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_192CE9234(void *a1)
{
  v1 = [a1 responseDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_192F9669C();

  return v3;
}

unint64_t sub_192CE92A0()
{
  result = qword_1EAE12350;
  if (!qword_1EAE12350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAE12350);
  }

  return result;
}

uint64_t sub_192CE9320()
{
  OUTLINED_FUNCTION_65();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_192919C40;
  v2 = OUTLINED_FUNCTION_30_3();

  return v3(v2);
}

uint64_t sub_192CE93D4()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_192919C40;
  v2 = OUTLINED_FUNCTION_30_3();

  return v3(v2);
}

uint64_t sub_192CE947C()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_192919C44;
  v2 = OUTLINED_FUNCTION_30_3();

  return v3(v2);
}

uint64_t OUTLINED_FUNCTION_88_6()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

BOOL OUTLINED_FUNCTION_113_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_116_2@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return sub_19286CFC8(a1, v2, v3, a2);
}

uint64_t OUTLINED_FUNCTION_117_3()
{

  return sub_192F95A8C();
}

uint64_t OUTLINED_FUNCTION_133_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 + 40) = a20;

  return sub_192F96E7C();
}

void sub_192CE95CC(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE15820, qword_192FCDF90);
    v2 = sub_192F974CC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1 + 64;
  OUTLINED_FUNCTION_0_29();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  v23 = v1;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      sub_192948314(*(v1 + 48) + 40 * v11, __src);
      sub_19286C588(*(v1 + 56) + 32 * v11, &__src[40]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_192948314(__dst, v26);
      if (!swift_dynamicCast())
      {
        sub_1928FC07C(__dst, &qword_1EAE13300, &unk_192FBF500);

        goto LABEL_21;
      }

      sub_19286C588(&__dst[40], v26);
      sub_1928FC07C(__dst, &qword_1EAE13300, &unk_192FBF500);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      v12 = sub_1929225DC(v24, v25);
      if (v13)
      {
        OUTLINED_FUNCTION_34_16();
        *v14 = v24;
        v14[1] = v25;

        v15 = (v2[7] + 16 * v12);
        *v15 = v24;
        v15[1] = v25;
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_32_14();
        *(v2 + v16 + 64) |= v17;
        OUTLINED_FUNCTION_34_16();
        *v18 = v24;
        v18[1] = v25;
        v19 = (v2[7] + 16 * v12);
        *v19 = v24;
        v19[1] = v25;
        v20 = v2[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_24;
        }

        v2[2] = v22;
      }

      v9 = v10;
      v1 = v23;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

LABEL_21:
  }

  else
  {
LABEL_6:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_21;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void *sub_192CE9878(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15810, &qword_192FCDF80);
    v3 = sub_192F974CC();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_42_13();
  v5 = v4 >> 6;

  v7 = 0;
  while (1)
  {
    if (!v1)
    {
      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v8 >= v5)
        {

          return v3;
        }

        v1 = a1[v8 + 8];
        ++v7;
        if (v1)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v8 = v7;
LABEL_10:
    v9 = __clz(__rbit64(v1)) | (v8 << 6);
    sub_192948314(a1[6] + 40 * v9, __src);
    sub_19286C588(a1[7] + 32 * v9, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_192948314(__dst, v23);
    if (!swift_dynamicCast())
    {
      break;
    }

    v1 &= v1 - 1;
    sub_19286C588(&__dst[40], v24);
    sub_1928FC07C(__dst, &qword_1EAE13300, &unk_192FBF500);
    v25 = v21;
    v26 = v22;
    sub_1928FA5CC(v24);
    v10 = v25;
    v11 = v26;
    sub_1928FA5CC(&v27);
    sub_1928FA5CC(v28);
    result = sub_1929225DC(v10, v11);
    v12 = result;
    if (v13)
    {
      OUTLINED_FUNCTION_34_16();
      *v14 = v10;
      v14[1] = v11;

      __swift_destroy_boxed_opaque_existential_0((v3[7] + 32 * v12));
      result = sub_1928FA5CC(&v25);
      v7 = v8;
    }

    else
    {
      if (v3[2] >= v3[3])
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_32_14();
      *(v3 + v15 + 64) |= v16;
      OUTLINED_FUNCTION_34_16();
      *v17 = v10;
      v17[1] = v11;
      result = sub_1928FA5CC(&v25);
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_21;
      }

      v3[2] = v20;
      v7 = v8;
    }
  }

  sub_1928FC07C(__dst, &qword_1EAE13300, &unk_192FBF500);

  return 0;
}

void sub_192CE9B04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE15800, &unk_192FCDF70);
    v2 = sub_192F974CC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_192948314(*(a1 + 48) + 40 * v9, __src);
    sub_19286C588(*(a1 + 56) + 32 * v9, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_192948314(__dst, v22);
    if (!swift_dynamicCast())
    {
      sub_1928FC07C(__dst, &qword_1EAE13300, &unk_192FBF500);

LABEL_22:

      return;
    }

    sub_19286C588(&__dst[40], v22);
    sub_1928FC07C(__dst, &qword_1EAE13300, &unk_192FBF500);
    sub_192C3F6E4();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v5 &= v5 - 1;
    v10 = sub_1929225DC(v20, v21);
    v11 = v10;
    if (v12)
    {
      v13 = (v2[6] + 16 * v10);
      *v13 = v20;
      v13[1] = v21;

      v14 = v2[7];
      v15 = *(v14 + 8 * v11);
      *(v14 + 8 * v11) = v20;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_24;
      }

      *(v2 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
      v16 = (v2[6] + 16 * v10);
      *v16 = v20;
      v16[1] = v21;
      *(v2[7] + 8 * v10) = v20;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_25;
      }

      v2[2] = v19;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      goto LABEL_22;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_192CE9DC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id RemoteSignInTask.init(request:clientInfo:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_listener] = 0;
  *&v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_connection] = 0;
  v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceAction] = 0;
  *&v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceConnectPromise] = 0;
  *&v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_request] = a1;
  *&v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_clientInfo] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RemoteSignInTask();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_192CE9F28()
{
  if (qword_1ED6DE070 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED6DE070);
  }

  v1 = v0[13];
  v2 = qword_1ED6DE078;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v4 = OUTLINED_FUNCTION_27_2(v3);
  *(v4 + 16) = xmmword_192FBCD90;
  v0[5] = type metadata accessor for RemoteSignInTask();
  v0[2] = v1;
  v5 = v1;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    v8 = sub_192F967CC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v12 = OUTLINED_FUNCTION_90(v11);
  OUTLINED_FUNCTION_50(v12, xmmword_192FBCD50);
  sub_19286C588((v0 + 2), (v0 + 6));
  sub_19286CFC8(v0 + 6, v8, v10, &v12[2]);
  *(v4 + 32) = v12;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v13._countAndFlagsBits = 0x676E697472617453;
  v13._object = 0xED00006B73615420;
  LogInterpolation.init(stringLiteral:)(v13);
  v14 = sub_192F96E7C();
  if (os_log_type_enabled(v2, v14))
  {
    v15 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    v16 = byte_1ED6DE5D8;
    v17 = OUTLINED_FUNCTION_19(&unk_1F06FE6C0);
    *(v17 + 16) = v16;
    v0[10] = v4;
    v0[11] = sub_1928FA5C4;
    v0[12] = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    v18 = sub_192F9674C();
    v20 = v19;

    objc_autoreleasePoolPop(v15);
    v21 = objc_autoreleasePoolPush();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v23 = OUTLINED_FUNCTION_90(v22);
    OUTLINED_FUNCTION_29_0(v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    *(v33 + 56) = MEMORY[0x1E69E6158];
    v23[4].n128_u64[0] = sub_1928FDB30();
    v23[2].n128_u64[0] = v18;
    v23[2].n128_u64[1] = v20;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v2, v14, v23);

    objc_autoreleasePoolPop(v21);
  }

  v34 = [objc_opt_self() currentProcess];
  v35 = sub_19287A8E4(v34);
  if (!v36)
  {
    goto LABEL_16;
  }

  if (v35 == 0xD000000000000016 && v36 == 0x8000000193024170)
  {
  }

  else
  {
    v38 = sub_192F9775C();

    if ((v38 & 1) == 0)
    {
LABEL_16:
      v39 = swift_task_alloc();
      v0[15] = v39;
      *v39 = v0;
      v39[1] = sub_192CEA408;

      return sub_192CEA4F4();
    }
  }

  v41 = swift_task_alloc();
  v0[14] = v41;
  *v41 = v0;
  v41[1] = sub_192CEA31C;

  return sub_192CEB320();
}

uint64_t sub_192CEA31C()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  OUTLINED_FUNCTION_40();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_192CEA408()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  OUTLINED_FUNCTION_40();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_192CEA508()
{
  if (qword_1ED6DE070 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED6DE070);
  }

  v1 = v0[37];
  v2 = qword_1ED6DE078;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v4 = OUTLINED_FUNCTION_27_2(v3);
  *(v4 + 16) = xmmword_192FBCD90;
  v0[21] = type metadata accessor for RemoteSignInTask();
  v0[18] = v1;
  v5 = v1;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    v8 = sub_192F967CC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v12 = OUTLINED_FUNCTION_90(v11);
  OUTLINED_FUNCTION_50(v12, xmmword_192FBCD50);
  sub_19286C588((v0 + 18), (v0 + 26));
  sub_19286CFC8(v0 + 26, v8, v10, &v12[2]);
  *(v4 + 32) = v12;
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  v13._object = 0x8000000193024470;
  v13._countAndFlagsBits = 0xD000000000000016;
  LogInterpolation.init(stringLiteral:)(v13);
  v14 = sub_192F96E7C();
  if (os_log_type_enabled(v2, v14))
  {
    v15 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    v16 = byte_1ED6DE5D8;
    v17 = OUTLINED_FUNCTION_19(&unk_1F06FE9E0);
    *(v17 + 16) = v16;
    v0[18] = v4;
    v0[19] = sub_192BB97CC;
    v0[20] = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    v18 = sub_192F9674C();
    v20 = v19;

    objc_autoreleasePoolPop(v15);
    v21 = objc_autoreleasePoolPush();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v23 = OUTLINED_FUNCTION_90(v22);
    OUTLINED_FUNCTION_29_0(v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    *(v33 + 56) = MEMORY[0x1E69E6158];
    v23[4].n128_u64[0] = sub_1928FDB30();
    v23[2].n128_u64[0] = v18;
    v23[2].n128_u64[1] = v20;
    OUTLINED_FUNCTION_22_1("%{public}@", v34, v35, &dword_192869000);

    objc_autoreleasePoolPop(v21);
  }

  v36 = [objc_allocWithZone(AMSDaemonConnection) init];
  v0[38] = v36;
  v37 = [v36 securityServiceProxyWithDelegate_];
  v0[39] = v37;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_192CEA8AC;
  v38 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE157E0, qword_192FCDF50);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_192CEB0D4;
  v0[21] = &block_descriptor_75;
  v0[22] = v38;
  [v37 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_192CEA8AC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 320) = v4;
  if (v4)
  {
    v5 = sub_192CEAFC8;
  }

  else
  {
    v5 = sub_192CEA9B0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CEA9B0()
{
  v1 = v0[39];
  v2 = v0[37];
  v0[41] = v0[26];

  v3 = *(v2 + OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_request);
  v4 = OBJC_IVAR___AMSRemoteSignInRequest_authenticationResults;
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v5 = *(v3 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14420, &unk_192FC7150);
  sub_192F9668C();

  v6 = v0[38];
  v7 = sub_192F9679C();
  OUTLINED_FUNCTION_4_3();
  AMSError(v8, v9, v10, v11);

  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_43();

  return v12();
}

uint64_t sub_192CEAD70()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 360) = v4;
  if (v4)
  {
    v5 = sub_192CEB038;
  }

  else
  {
    v5 = sub_192CEAE74;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CEAE74()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 336);
  v3 = *(v0 + 288);

  sub_192CE9B04(v3);
  v5 = v4;

  v6 = *(v0 + 304);
  if (v5)
  {
    v7 = sub_192CEB100(v5);

    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_40();

    return v8(v7);
  }

  else
  {
    v10 = sub_192F9679C();
    OUTLINED_FUNCTION_4_3();
    AMSError(v11, v12, v13, v14);

    swift_willThrow();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_43();

    return v15();
  }
}

uint64_t sub_192CEAFC8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 312);
  v2 = *(v0 + 304);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192CEB038(uint64_t a1)
{
  v2 = v1[44];
  v4 = v1[42];
  v3 = v1[43];
  v5 = v1[38];
  swift_willThrow();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_192CEB100(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v28 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = [v14 BOOLValue];
    v16 = *(v1 + 16);
    if (*(v1 + 24) <= v16)
    {
      sub_192CEE4AC(v16 + 1, 1);
      v1 = v28;
    }

    sub_192F9789C();
    sub_192F968BC();
    result = sub_192F978DC();
    v17 = v1 + 64;
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6))) == 0)
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
          goto LABEL_20;
        }
      }

      goto LABEL_24;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    v5 &= v5 - 1;
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v1 + 48) + 16 * v21);
    *v26 = v13;
    v26[1] = v12;
    *(*(v1 + 56) + v21) = v15;
    ++*(v1 + 16);
  }

  while (v5);
LABEL_5:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_192CEB334()
{
  if (qword_1ED6DE070 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED6DE070);
  }

  v1 = v0[43];
  v2 = qword_1ED6DE078;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v4 = OUTLINED_FUNCTION_27_2(v3);
  *(v4 + 16) = xmmword_192FBCD90;
  v0[33] = type metadata accessor for RemoteSignInTask();
  v0[30] = v1;
  v5 = v1;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    v8 = sub_192F967CC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v12 = OUTLINED_FUNCTION_90(v11);
  OUTLINED_FUNCTION_50(v12, xmmword_192FBCD50);
  sub_19286C588((v0 + 30), (v0 + 34));
  sub_19286CFC8(v0 + 34, v8, v10, &v12[2]);
  *(v4 + 32) = v12;
  __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  v13._object = 0x80000001930242A0;
  v13._countAndFlagsBits = 0xD00000000000001ALL;
  LogInterpolation.init(stringLiteral:)(v13);
  v14 = sub_192F96E7C();
  if (os_log_type_enabled(v2, v14))
  {
    v15 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    v16 = byte_1ED6DE5D8;
    v17 = OUTLINED_FUNCTION_19(&unk_1F06FE828);
    *(v17 + 16) = v16;
    v0[38] = v4;
    v0[39] = sub_192BB97CC;
    v0[40] = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    v18 = sub_192F9674C();
    v20 = v19;

    objc_autoreleasePoolPop(v15);
    v21 = objc_autoreleasePoolPush();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v23 = OUTLINED_FUNCTION_90(v22);
    OUTLINED_FUNCTION_29_0(v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    *(v33 + 56) = MEMORY[0x1E69E6158];
    v23[4].n128_u64[0] = sub_1928FDB30();
    v23[2].n128_u64[0] = v18;
    v23[2].n128_u64[1] = v20;
    OUTLINED_FUNCTION_22_1("%{public}@", v34, v35, &dword_192869000);

    objc_autoreleasePoolPop(v21);
  }

  v36 = v0[43];

  v37 = [objc_opt_self() anonymousListener];
  v0[44] = v37;
  [v37 setDelegate_];
  [v37 resume];
  v38 = *&v36[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_listener];
  *&v36[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_listener] = v37;
  v39 = v37;

  v40 = [objc_allocWithZone(AMSMutablePromise) initWithTimeout_];
  v0[45] = v40;
  v41 = OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceConnectPromise;
  v42 = *&v36[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceConnectPromise];
  *&v36[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceConnectPromise] = v40;
  v43 = v40;

  v44 = objc_opt_self();
  v45 = *&v36[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_clientInfo];
  v46 = sub_192F96DEC();
  v47 = [v39 endpoint];
  v48 = [v47 _endpoint];

  v49 = [v44 launchWithClientInfo:v45 action:v46 xpcEndpoint:v48];
  v0[46] = v49;
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_39_16();
  v50 = swift_allocObject();
  *(v50 + 16) = v36;
  v0[22] = sub_192CEE898;
  v0[23] = v50;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_192CE9DC8;
  v0[21] = &block_descriptor_27;
  v51 = _Block_copy(v0 + 18);
  v52 = v36;

  [v49 addErrorBlock_];
  _Block_release(v51);
  v53 = *&v36[v41];
  if (v53)
  {
    v54 = v0[43];
    OUTLINED_FUNCTION_39_16();
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    v0[28] = sub_192CEE8A0;
    v0[29] = v55;
    v0[24] = MEMORY[0x1E69E9820];
    v0[25] = 1107296256;
    v0[26] = sub_19291B650;
    v0[27] = &block_descriptor_33_0;
    v56 = _Block_copy(v0 + 24);
    v57 = v54;
    v58 = v53;

    [v58 addFinishBlock_];
    _Block_release(v56);
  }

  v0[2] = v0;
  v0[7] = v0 + 41;
  v0[3] = sub_192CEB934;
  v59 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15768, &unk_192FCDF30);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_192CEB0D4;
  v0[13] = &block_descriptor_36_0;
  v0[14] = v59;
  [v43 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_192CEB934()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 376) = v4;
  if (v4)
  {
    v5 = sub_192CEBCCC;
  }

  else
  {
    v5 = sub_192CEBA38;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CEBA38()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[43];
  v2 = v0[41];
  v0[48] = v2;
  v3 = swift_task_alloc();
  v0[49] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[50] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15770, &qword_192FBED88);
  *v4 = v0;
  v4[1] = sub_192CEBB44;

  return MEMORY[0x1EEE6DE38](v0 + 42, 0, 0, 0xD000000000000012, 0x8000000193024310, sub_192CEE8A8, v3, v5);
}

uint64_t sub_192CEBB44()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 408) = v0;

  if (v0)
  {
    v7 = sub_192CEBD4C;
  }

  else
  {

    v7 = sub_192CEBC4C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_192CEBC4C()
{
  OUTLINED_FUNCTION_5();
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_192CEBCCC(uint64_t a1)
{
  v2 = v1[46];
  v4 = v1[44];
  v3 = v1[45];
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_192CEBD4C()
{
  OUTLINED_FUNCTION_5();
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_43();

  return v3();
}

void sub_192CEBDD0(uint64_t a1, void *a2)
{
  if (qword_1ED6DE070 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED6DE078;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_192FBCD40;
  v29 = type metadata accessor for RemoteSignInTask();
  v28[0] = a2;
  v5 = a2;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    v8 = sub_192F967CC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_192FBCD50;
  sub_19286C588(v28, v27);
  sub_19286CFC8(v27, v8, v10, v11 + 32);
  *(v4 + 32) = v11;
  __swift_destroy_boxed_opaque_existential_0(v28);
  v12._object = 0x8000000193024440;
  v12._countAndFlagsBits = 0xD000000000000028;
  LogInterpolation.init(stringLiteral:)(v12);
  swift_getErrorValue();
  v29 = v26;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_0);
  static LogInterpolation.traceableSensitive(_:)(v28, (v4 + 48));
  sub_1928FC07C(v28, &unk_1EAE131B0, &qword_192FBD860);
  v14 = sub_192F96E5C();
  if (os_log_type_enabled(v3, v14))
  {
    v15 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v16 = byte_1ED6DE5D8;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v28[0] = v4;
    v28[1] = sub_192BB97CC;
    v28[2] = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    v18 = sub_192F9674C();
    v20 = v19;

    objc_autoreleasePoolPop(v15);
    v21 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_192FBCD50;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1928FDB30();
    *(v22 + 32) = v18;
    *(v22 + 40) = v20;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v3, v14, v22);

    objc_autoreleasePoolPop(v21);
  }

  v23 = *&v5[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceConnectPromise];
  if (v23)
  {
    v24 = v23;
    v25 = sub_192F958CC();
    [v24 finishWithError_];
  }
}

void sub_192CEC170(int a1, id a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_1ED6DE070 != -1)
    {
      swift_once();
    }

    v6 = qword_1ED6DE078;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_192FBCD40;
    v50 = type metadata accessor for RemoteSignInTask();
    v47 = a3;
    v8 = a3;
    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      v11 = sub_192F967CC();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_192FBCD50;
    sub_19286C588(&v47, v46);
    sub_19286CFC8(v46, v11, v13, v22 + 32);
    *(v7 + 32) = v22;
    __swift_destroy_boxed_opaque_existential_0(&v47);
    v23._countAndFlagsBits = 0xD00000000000002CLL;
    v23._object = 0x8000000193024410;
    LogInterpolation.init(stringLiteral:)(v23);
    swift_getErrorValue();
    v50 = v45;
    v24 = __swift_allocate_boxed_opaque_existential_0(&v47);
    (*(*(v45 - 8) + 16))(v24);
    static LogInterpolation.traceableSensitive(_:)(&v47, (v7 + 48));
    sub_1928FC07C(&v47, &unk_1EAE131B0, &qword_192FBD860);
    v25 = sub_192F96E5C();
    if (os_log_type_enabled(v6, v25))
    {
      v26 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        swift_once();
      }

      v27 = byte_1ED6DE5D8;
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      v47 = v7;
      v48 = sub_192BB97CC;
      v49 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      v29 = sub_192F9674C();
      v31 = v30;

      objc_autoreleasePoolPop(v26);
      v32 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_192FBCD50;
      *(v33 + 56) = MEMORY[0x1E69E6158];
      *(v33 + 64) = sub_1928FDB30();
      *(v33 + 32) = v29;
      *(v33 + 40) = v31;
      sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v6, v25, v33);

      objc_autoreleasePoolPop(v32);
    }
  }

  else
  {
    if (qword_1ED6DE070 != -1)
    {
      swift_once();
    }

    v14 = qword_1ED6DE078;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_192FBCD90;
    v50 = type metadata accessor for RemoteSignInTask();
    v47 = a3;
    v16 = a3;
    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      v19 = sub_192F967CC();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_192FBCD50;
    sub_19286C588(&v47, v46);
    sub_19286CFC8(v46, v19, v21, v34 + 32);
    *(v15 + 32) = v34;
    __swift_destroy_boxed_opaque_existential_0(&v47);
    v35._object = 0x80000001930243F0;
    v35._countAndFlagsBits = 0xD000000000000016;
    LogInterpolation.init(stringLiteral:)(v35);
    v36 = sub_192F96E7C();
    if (os_log_type_enabled(v14, v36))
    {
      v37 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        swift_once();
      }

      v38 = byte_1ED6DE5D8;
      v39 = swift_allocObject();
      *(v39 + 16) = v38;
      v47 = v15;
      v48 = sub_192BB97CC;
      v49 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      v40 = sub_192F9674C();
      v42 = v41;

      objc_autoreleasePoolPop(v37);
      v43 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_192FBCD50;
      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = sub_1928FDB30();
      *(v44 + 32) = v40;
      *(v44 + 40) = v42;
      sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v14, v36, v44);

      objc_autoreleasePoolPop(v43);
    }
  }
}

uint64_t *sub_192CEC77C(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    swift_unknownObjectRetain();
    v10 = v8;
    v9 = a2;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

void sub_192CEC830(uint64_t a1, void *a2, void *a3)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15778, &unk_192FCDF40);
  v6 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v7);
  v9 = &v34 - v8;
  if (qword_1ED6DE070 != -1)
  {
    swift_once();
  }

  v38 = qword_1ED6DE078;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_192FBCD90;
  v42 = type metadata accessor for RemoteSignInTask();
  aBlock = a2;
  v11 = a2;
  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    v14 = sub_192F967CC();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v17 = swift_allocObject();
  v36 = xmmword_192FBCD50;
  *(v17 + 16) = xmmword_192FBCD50;
  sub_19286C588(&aBlock, v45);
  sub_19286CFC8(v45, v14, v16, v17 + 32);
  *(v10 + 32) = v17;
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v18._object = 0x8000000193024330;
  v18._countAndFlagsBits = 0xD00000000000002ALL;
  LogInterpolation.init(stringLiteral:)(v18);
  v19 = sub_192F96E7C();
  if (os_log_type_enabled(v38, v19))
  {
    v34 = a1;
    v35 = a3;
    v20 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v21 = byte_1ED6DE5D8;
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    aBlock = v10;
    v40 = sub_192BB97CC;
    v41 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    v23 = sub_192F9674C();
    v25 = v24;

    objc_autoreleasePoolPop(v20);
    v26 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v27 = swift_allocObject();
    *(v27 + 16) = v36;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1928FDB30();
    *(v27 + 32) = v23;
    *(v27 + 40) = v25;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v38, v19, v27);

    objc_autoreleasePoolPop(v26);
    a1 = v34;
    a3 = v35;
  }

  v28 = *&v11[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_request];
  v29 = v37;
  (*(v6 + 16))(v9, a1, v37);
  v30 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v11;
  (*(v6 + 32))(v31 + v30, v9, v29);
  v43 = sub_192CEE8B0;
  v44 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_192CED3E4;
  v42 = &block_descriptor_48;
  v32 = _Block_copy(&aBlock);
  v33 = v11;

  [a3 performRemoteSignInTaskWithRequest:v28 completion:v32];
  _Block_release(v32);
}

uint64_t sub_192CECCB8(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = qword_1ED6DE070;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = qword_1ED6DE078;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_192FBCD40;
    *(&v54 + 1) = type metadata accessor for RemoteSignInTask();
    *&v53 = a3;
    v8 = a3;
    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      v11 = sub_192F967CC();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_192FBCD50;
    sub_19286C588(&v53, v52);
    sub_19286CFC8(v52, v11, v13, v23 + 32);
    *(v7 + 32) = v23;
    __swift_destroy_boxed_opaque_existential_0(&v53);
    v24._countAndFlagsBits = 0xD000000000000014;
    v24._object = 0x80000001930243D0;
    LogInterpolation.init(stringLiteral:)(v24);
    *(&v54 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15770, &qword_192FBED88);
    *&v53 = a1;

    static LogInterpolation.traceableSensitive(_:)(&v53, (v7 + 48));
    sub_1928FC07C(&v53, &unk_1EAE131B0, &qword_192FBD860);
    v25 = sub_192F96E7C();
    if (os_log_type_enabled(v6, v25))
    {
      v26 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        swift_once();
      }

      v27 = byte_1ED6DE5D8;
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *&v53 = v7;
      *(&v53 + 1) = sub_192BB97CC;
      *&v54 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      v29 = sub_192F9674C();
      v31 = v30;

      objc_autoreleasePoolPop(v26);
      v32 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_192FBCD50;
      *(v33 + 56) = MEMORY[0x1E69E6158];
      *(v33 + 64) = sub_1928FDB30();
      *(v33 + 32) = v29;
      *(v33 + 40) = v31;
      sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v6, v25, v33);

      objc_autoreleasePoolPop(v32);
    }

    *&v53 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15778, &unk_192FCDF40);
    return sub_192F96BAC();
  }

  else
  {
    if (qword_1ED6DE070 != -1)
    {
      swift_once();
    }

    v15 = qword_1ED6DE078;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_192FBCD40;
    *(&v54 + 1) = type metadata accessor for RemoteSignInTask();
    *&v53 = a3;
    v17 = a3;
    v18 = AMSLogKey();
    if (v18)
    {
      v19 = v18;
      v20 = sub_192F967CC();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_192FBCD50;
    sub_19286C588(&v53, v52);
    sub_19286CFC8(v52, v20, v22, v35 + 32);
    *(v16 + 32) = v35;
    __swift_destroy_boxed_opaque_existential_0(&v53);
    v36._countAndFlagsBits = 0xD000000000000013;
    v36._object = 0x8000000193024360;
    LogInterpolation.init(stringLiteral:)(v36);
    if (a2)
    {
      swift_getErrorValue();
      *(&v54 + 1) = v51;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v53);
      (*(*(v51 - 8) + 16))(boxed_opaque_existential_0);
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
    }

    static LogInterpolation.traceableSensitive(_:)(&v53, (v16 + 48));
    sub_1928FC07C(&v53, &unk_1EAE131B0, &qword_192FBD860);
    v38 = sub_192F96E7C();
    if (os_log_type_enabled(v15, v38))
    {
      v39 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        swift_once();
      }

      v40 = byte_1ED6DE5D8;
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *&v53 = v16;
      *(&v53 + 1) = sub_192BB97CC;
      *&v54 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      v42 = sub_192F9674C();
      v44 = v43;

      objc_autoreleasePoolPop(v39);
      v45 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_192FBCD50;
      *(v46 + 56) = MEMORY[0x1E69E6158];
      *(v46 + 64) = sub_1928FDB30();
      *(v46 + 32) = v42;
      *(v46 + 40) = v44;
      sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v15, v38, v46);

      objc_autoreleasePoolPop(v45);
    }

    if (a2)
    {
      v47 = a2;
    }

    else
    {
      v48 = sub_192F9679C();
      v49 = sub_192F9679C();
      v47 = AMSError(0, v48, v49, 0);
    }

    *&v53 = v47;
    v50 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15778, &unk_192FCDF40);
    return sub_192F96B9C();
  }
}

uint64_t sub_192CED3E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_192F9669C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

id RemoteSignInTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteSignInTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteSignInTask();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall RemoteSignInTask.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v4 = objc_opt_self();
  v5 = [v4 interfaceWithProtocol_];
  [(objc_class *)shouldAcceptNewConnection.super.isa setExportedInterface:v5];

  if (v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceAction])
  {
    v6 = &protocolRef__TtP18AppleMediaServices41VerifyDevicePasscodeActionRemoteInterface_;
  }

  else
  {
    v6 = &protocolRef__TtP18AppleMediaServices27SignInActionRemoteInterface_;
  }

  v7 = [v4 interfaceWithProtocol_];
  [(objc_class *)shouldAcceptNewConnection.super.isa setRemoteObjectInterface:v7];

  [(objc_class *)shouldAcceptNewConnection.super.isa setExportedObject:v2];
  [(objc_class *)shouldAcceptNewConnection.super.isa resume];
  v8 = *&v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_connection];
  *&v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_connection] = shouldAcceptNewConnection;
  v9 = shouldAcceptNewConnection.super.isa;

  OUTLINED_FUNCTION_39_16();
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  aBlock[4] = sub_192CEE748;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_192CE9DC8;
  aBlock[3] = &block_descriptor_32;
  v11 = _Block_copy(aBlock);
  v12 = v2;

  v13 = [(objc_class *)v9 remoteObjectProxyWithErrorHandler:v11];
  _Block_release(v11);
  sub_192F9715C();
  swift_unknownObjectRelease();
  sub_1928F9460(aBlock, v19, &unk_1EAE131B0, &qword_192FBD860);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE156F8, qword_192FCDED0);
    if (swift_dynamicCast())
    {
      v14 = *&v12[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceConnectPromise];
      if (v14)
      {
        v15 = v14;
        [v15 finishWithResult_];
      }

      swift_unknownObjectRelease();
    }

    v16 = aBlock;
  }

  else
  {
    sub_1928FC07C(aBlock, &unk_1EAE131B0, &qword_192FBD860);
    v16 = v19;
  }

  sub_1928FC07C(v16, &unk_1EAE131B0, &qword_192FBD860);
  return 1;
}

void sub_192CED874(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceConnectPromise);
  if (v2)
  {
    v3 = v2;
    v4 = sub_192F958CC();
    [v3 finishWithError_];
  }
}

Swift::Void __swiftcall RemoteSignInTask.initializeClientToViewServiceConnection()()
{
  if (qword_1ED6DE070 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED6DE070);
  }

  v1 = qword_1ED6DE078;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v3 = OUTLINED_FUNCTION_27_2(v2);
  *(v3 + 16) = xmmword_192FBCD90;
  v34[3] = type metadata accessor for RemoteSignInTask();
  v34[0] = v0;
  v4 = v0;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    v7 = sub_192F967CC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v11 = OUTLINED_FUNCTION_90(v10);
  OUTLINED_FUNCTION_50(v11, xmmword_192FBCD50);
  sub_19286C588(v34, v33);
  sub_19286CFC8(v33, v7, v9, &v11[2]);
  *(v3 + 32) = v11;
  __swift_destroy_boxed_opaque_existential_0(v34);
  v12._object = 0x80000001930241C0;
  v12._countAndFlagsBits = 0xD000000000000023;
  LogInterpolation.init(stringLiteral:)(v12);
  v13 = sub_192F96E7C();
  if (os_log_type_enabled(v1, v13))
  {
    v14 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    v15 = byte_1ED6DE5D8;
    v16 = OUTLINED_FUNCTION_19(&unk_1F06FE738);
    *(v16 + 16) = v15;
    v34[0] = v3;
    v34[1] = sub_192BB97CC;
    v34[2] = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    v17 = sub_192F9674C();
    v19 = v18;

    objc_autoreleasePoolPop(v14);
    v20 = objc_autoreleasePoolPush();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v22 = OUTLINED_FUNCTION_90(v21);
    OUTLINED_FUNCTION_29_0(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    *(v32 + 56) = MEMORY[0x1E69E6158];
    v22[4].n128_u64[0] = sub_1928FDB30();
    v22[2].n128_u64[0] = v17;
    v22[2].n128_u64[1] = v19;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v1, v13, v22);

    objc_autoreleasePoolPop(v20);
  }
}

void sub_192CEDC20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12D80, &unk_192FBF320);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v45 = &v39 - v7;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12D78, &unk_192FBDEF0);
  v43 = v4;
  v9 = sub_192F974BC();
  if (!v8[2])
  {
LABEL_30:

LABEL_31:
    *v3 = v9;
    return;
  }

  v40 = v2;
  v41 = v8;
  v10 = 0;
  v11 = v8 + 8;
  OUTLINED_FUNCTION_0_49();
  OUTLINED_FUNCTION_42_13();
  v13 = v12 >> 6;
  v14 = v9 + 8;
  if (!v2)
  {
LABEL_4:
    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v13)
      {
        break;
      }

      ++v16;
      if (v11[v10])
      {
        OUTLINED_FUNCTION_10_33();
        v3 = (v18 & v17);
        goto LABEL_9;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_9_36();
    v3 = v40;
    if (v35 != v36)
    {
      *v11 = -1 << v34;
    }

    else
    {
      v37 = OUTLINED_FUNCTION_11_37();
      sub_192942B74(v37, v38, v11);
    }

    v8[2] = 0;
    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_15_30();
LABEL_9:
    v19 = v15 | (v10 << 6);
    v20 = v8[7];
    v21 = (v8[6] + 24 * v19);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    v25 = v20 + *(v42 + 72) * v19;
    v44 = *(v42 + 72);
    if (v43)
    {
      sub_19293D384(v25, v45);
    }

    else
    {
      sub_1928F9460(v25, v45, &qword_1EAE12D80, &unk_192FBF320);
    }

    sub_192F9789C();
    sub_192F968BC();
    MEMORY[0x193B11CB0](v24);
    sub_192F978DC();
    OUTLINED_FUNCTION_30_16();
    if (v26)
    {
      break;
    }

    OUTLINED_FUNCTION_8_42();
LABEL_22:
    OUTLINED_FUNCTION_5_41();
    *(v14 + v30) |= v31;
    v33 = (v9[6] + 24 * v32);
    *v33 = v22;
    v33[1] = v23;
    v33[2] = v24;
    sub_19293D384(v45, v9[7] + v44 * v32);
    ++v9[2];
    v8 = v41;
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_41();
  while (1)
  {
    OUTLINED_FUNCTION_29_18();
    if (v26)
    {
      if (v28)
      {
        break;
      }
    }

    if (v27 == v29)
    {
      v27 = 0;
    }

    if (v14[v27] != -1)
    {
      OUTLINED_FUNCTION_6_44();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_192CEDF18()
{
  OUTLINED_FUNCTION_21_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13108, &qword_192FBF310);
  v24 = v2;
  v5 = sub_192F974BC();
  if (!*(v1 + 16))
  {
LABEL_29:

    *v0 = v5;
    return;
  }

  v6 = 0;
  OUTLINED_FUNCTION_0_49();
  OUTLINED_FUNCTION_36_14();
  if (!v3)
  {
LABEL_4:
    v7 = v6;
    while (1)
    {
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v0)
      {
        break;
      }

      ++v7;
      if (*(v1 + 64 + 8 * v6))
      {
        OUTLINED_FUNCTION_10_33();
        v3 = v9 & v8;
        goto LABEL_9;
      }
    }

    if (v24)
    {
      OUTLINED_FUNCTION_9_36();
      if (v20 != v21)
      {
        OUTLINED_FUNCTION_14_27(v19);
      }

      else
      {
        v22 = OUTLINED_FUNCTION_11_37();
        sub_192942B74(v22, v23, v1 + 64);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_35_13();
LABEL_9:
    OUTLINED_FUNCTION_33_15();
    v25 = *(v11 + 16 * v10);
    if ((v24 & 1) == 0)
    {
    }

    sub_192F9789C();
    sub_192F968BC();
    sub_192F978DC();
    OUTLINED_FUNCTION_4_56();
    OUTLINED_FUNCTION_30_16();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_8_42();
LABEL_21:
    OUTLINED_FUNCTION_5_41();
    OUTLINED_FUNCTION_18_26(v16);
    *(v18 + 16 * v17) = v25;
    OUTLINED_FUNCTION_13_27();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_41();
  while (1)
  {
    OUTLINED_FUNCTION_29_18();
    if (v12)
    {
      if (v14)
      {
        break;
      }
    }

    if (v13 == v15)
    {
      v13 = 0;
    }

    if (*(v4 + 8 * v13) != -1)
    {
      OUTLINED_FUNCTION_6_44();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_192CEE0E4()
{
  OUTLINED_FUNCTION_22_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE15820, qword_192FCDF90);
  v30 = v1;
  v3 = sub_192F974BC();
  if (!*(v2 + 16))
  {
LABEL_29:

LABEL_30:
    *v0 = v3;
    return;
  }

  v28 = v0;
  v29 = v2;
  v4 = 0;
  v5 = v2 + 64;
  OUTLINED_FUNCTION_0_49();
  OUTLINED_FUNCTION_42_13();
  v7 = v6 >> 6;
  if (!v1)
  {
LABEL_4:
    v8 = v4;
    while (1)
    {
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v4 >= v7)
      {
        break;
      }

      ++v8;
      if (*(v5 + 8 * v4))
      {
        OUTLINED_FUNCTION_10_33();
        v1 = v10 & v9;
        goto LABEL_9;
      }
    }

    if ((v30 & 1) == 0)
    {

      v0 = v28;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_9_36();
    v0 = v28;
    if (v24 != v25)
    {
      OUTLINED_FUNCTION_14_27(v23);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_11_37();
      sub_192942B74(v26, v27, v5);
    }

    *(v2 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_15_30();
LABEL_9:
    OUTLINED_FUNCTION_41_12();
    v13 = (v12 + 16 * v11);
    v14 = v13[1];
    v31 = *v13;
    if ((v30 & 1) == 0)
    {
    }

    sub_192F9789C();
    sub_192F968BC();
    sub_192F978DC();
    OUTLINED_FUNCTION_4_56();
    OUTLINED_FUNCTION_30_16();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_8_42();
LABEL_21:
    OUTLINED_FUNCTION_5_41();
    OUTLINED_FUNCTION_20_26(v19);
    v22 = (v21 + 16 * v20);
    *v22 = v31;
    v22[1] = v14;
    OUTLINED_FUNCTION_13_27();
    v2 = v29;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_41();
  while (1)
  {
    OUTLINED_FUNCTION_29_18();
    if (v15)
    {
      if (v17)
      {
        break;
      }
    }

    if (v16 == v18)
    {
      v16 = 0;
    }

    if (*(v3 + 64 + 8 * v16) != -1)
    {
      OUTLINED_FUNCTION_6_44();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_192CEE2CC()
{
  OUTLINED_FUNCTION_21_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15810, &qword_192FCDF80);
  v23 = v2;
  v5 = sub_192F974BC();
  if (!*(v1 + 16))
  {
LABEL_30:

    *v0 = v5;
    return;
  }

  v6 = 0;
  OUTLINED_FUNCTION_0_49();
  OUTLINED_FUNCTION_36_14();
  if (!v3)
  {
LABEL_4:
    v7 = v6;
    while (1)
    {
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v0)
      {
        break;
      }

      ++v7;
      if (*(v1 + 64 + 8 * v6))
      {
        OUTLINED_FUNCTION_10_33();
        v3 = v9 & v8;
        goto LABEL_9;
      }
    }

    if (v23)
    {
      OUTLINED_FUNCTION_9_36();
      if (v19 != v20)
      {
        OUTLINED_FUNCTION_14_27(v18);
      }

      else
      {
        v21 = OUTLINED_FUNCTION_11_37();
        sub_192942B74(v21, v22, v1 + 64);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_35_13();
LABEL_9:
    OUTLINED_FUNCTION_33_15();
    v12 = v11 + 32 * v10;
    if (v23)
    {
      sub_1928FA5CC(v12);
    }

    else
    {
      sub_19286C588(v12, v24);
    }

    sub_192F9789C();
    sub_192F968BC();
    sub_192F978DC();
    OUTLINED_FUNCTION_4_56();
    OUTLINED_FUNCTION_30_16();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_8_42();
LABEL_22:
    OUTLINED_FUNCTION_5_41();
    OUTLINED_FUNCTION_18_26(v17);
    sub_1928FA5CC(v24);
    OUTLINED_FUNCTION_13_27();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_41();
  while (1)
  {
    OUTLINED_FUNCTION_29_18();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    if (v14 == v16)
    {
      v14 = 0;
    }

    if (*(v4 + 8 * v14) != -1)
    {
      OUTLINED_FUNCTION_6_44();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_192CEE4AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE157F8, &qword_192FCDF68);
  v34 = v4;
  result = sub_192F974BC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
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
        goto LABEL_34;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_192942B74(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_192F9789C();
    sub_192F968BC();
    result = sub_192F978DC();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of RemoteSignInTask.perform()()
{
  OUTLINED_FUNCTION_5();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_192C781E8;

  return v5();
}

uint64_t sub_192CEE8B0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15778, &unk_192FCDF40);
  v5 = *(v2 + 16);

  return sub_192CECCB8(a1, a2, v5);
}

uint64_t sub_192CEE968(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

id SendableBag.__allocating_init(wrappedBag:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return sub_192908290(a1, v1, ObjectType);
}

uint64_t SendableBag.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR___AMSSendableBag_wrappedBag) expirationDate];
  if (v3)
  {
    v4 = v3;
    sub_192F95CAC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_192F95CFC();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

id sub_192CEEC40(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_192F9679C();

  return v5;
}

uint64_t sub_192CEECBC(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR___AMSSendableBag_wrappedBag) *a1];
  v3 = sub_192F967CC();

  return v3;
}

uint64_t sub_192CEED30()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0[19] + OBJC_IVAR___AMSSendableBag_wrappedBag);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_192CEEE54;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14668, &qword_192FCE010);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19293A7A4;
  v0[13] = &block_descriptor_34;
  v0[14] = v2;
  [v1 createSnapshotWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_192CEEE54()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 160) = v2;
  if (v2)
  {
    v3 = sub_192C5B610;
  }

  else
  {
    v3 = sub_192BAB9A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_192CEEFD8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_192CEF080;

  return SendableBag.createSnapshot()();
}

uint64_t sub_192CEF080(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;
  OUTLINED_FUNCTION_6();
  *v8 = v7;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_192F958CC();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v7 + 8);

  return v11();
}

id SendableBag.integer(forKey:)(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR___AMSSendableBag_wrappedBag) integerForKey_];

  return v2;
}

id SendableBag.processInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR___AMSSendableBag_wrappedBag);
  v2 = &selRef_processInfo;
  if (([v1 respondsToSelector_] & 1) == 0)
  {
    v1 = objc_opt_self();
    v2 = &selRef_currentProcess;
  }

  v3 = [v1 *v2];

  return v3;
}

uint64_t sub_192CEF380()
{
  OUTLINED_FUNCTION_3();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_43();

  return v0();
}

id SendableBag.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SendableBag.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_192CEF488()
{
  result = qword_1EAE15910;
  if (!qword_1EAE15910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15910);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SendableBag.SendableBagError(_BYTE *result, int a2, int a3)
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

unint64_t sub_192CEF5B8()
{
  result = qword_1EAE15920;
  if (!qword_1EAE15920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15920);
  }

  return result;
}

uint64_t sub_192CEF60C()
{
  OUTLINED_FUNCTION_5();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_192919C44;

  return sub_192CEEFD8(v2, v3);
}

Swift::String __swiftcall SignInRequest.ServiceType.stringValue()()
{
  if (*v0)
  {
    v1 = 0x64756F6C4369;
  }

  else
  {
    v1 = 0x65726F7453;
  }

  if (*v0)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

AppleMediaServices::SignInRequest::ServiceType_optional __swiftcall SignInRequest.ServiceType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_192CEF714@<X0>(uint64_t *a1@<X8>)
{
  result = SignInRequest.ServiceType.rawValue.getter();
  *a1 = result;
  return result;
}

id sub_192CEF768(uint64_t a1)
{
  v2 = OBJC_IVAR___AMSRemoteSignInRequest_authenticationResults;
  OUTLINED_FUNCTION_0_50(a1);
  v3 = *(v1 + v2);

  return v3;
}

void sub_192CEF7AC(uint64_t a1)
{
  v3 = OBJC_IVAR___AMSRemoteSignInRequest_authenticationResults;
  OUTLINED_FUNCTION_2_52(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_192CEF844(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_192CEF8B0(v1);
}

void *sub_192CEF874(uint64_t a1)
{
  v2 = OBJC_IVAR___AMSRemoteSignInRequest_signInContext;
  OUTLINED_FUNCTION_0_50(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_192CEF8B0(uint64_t a1)
{
  v3 = OBJC_IVAR___AMSRemoteSignInRequest_signInContext;
  OUTLINED_FUNCTION_2_52(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_192CEF9AC(uint64_t a1)
{
  v3 = OBJC_IVAR___AMSRemoteSignInRequest_serviceTypes;
  OUTLINED_FUNCTION_2_52(a1);
  *(v1 + v3) = a1;
}

id SignInRequest.init(authenticationResults:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___AMSRemoteSignInRequest_signInContext] = 0;
  *&v1[OBJC_IVAR___AMSRemoteSignInRequest_serviceTypes] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___AMSRemoteSignInRequest_authenticationResults] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SignInRequest();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_192CEFB0C()
{
  v1 = OBJC_IVAR___AMSRemoteSignInRequest_authenticationResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = sub_192F9679C();
  v4 = OUTLINED_FUNCTION_3_57();
  [v4 v5];

  v6 = OBJC_IVAR___AMSRemoteSignInRequest_signInContext;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v8 = sub_192F9679C();
  v9 = OUTLINED_FUNCTION_3_57();
  [v9 v10];

  v11 = OBJC_IVAR___AMSRemoteSignInRequest_serviceTypes;
  swift_beginAccess();
  v18 = MEMORY[0x1E69E7CC0];
  v12 = *(*(v0 + v11) + 16);
  if (v12)
  {

    v13 = 32;
    do
    {
      sub_192F96DEC();
      MEMORY[0x193B10ED0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192F96B2C();
      }

      sub_192F96B4C();
      ++v13;
      --v12;
    }

    while (v12);
  }

  sub_192874CD0(0, &qword_1ED6DDBB0, 0x1E696AD98);
  v14 = sub_192F96AFC();

  v15 = sub_192F9679C();
  v16 = OUTLINED_FUNCTION_3_57();
  [v16 v17];
}

void SignInRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___AMSRemoteSignInRequest_signInContext;
  *&v2[OBJC_IVAR___AMSRemoteSignInRequest_signInContext] = 0;
  v5 = OBJC_IVAR___AMSRemoteSignInRequest_serviceTypes;
  v22 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR___AMSRemoteSignInRequest_serviceTypes] = MEMORY[0x1E69E7CC0];
  sub_192CF02EC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_192FBED40;
  *(inited + 32) = sub_192874CD0(0, &qword_1ED6DEE70, 0x1E695DF20);
  *(inited + 40) = sub_192874CD0(0, &qword_1ED6DE9F0, 0x1E696AEC0);
  *(inited + 48) = sub_192874CD0(0, &qword_1ED6DDBB0, 0x1E696AD98);
  *(inited + 56) = sub_192874CD0(0, &qword_1EAE15950, 0x1E695DFB0);
  *(inited + 64) = sub_192874CD0(0, &qword_1ED6DE7D8, 0x1E695DEC8);
  sub_192C38508(inited);

  sub_192F96FBC();

  if (!v26)
  {

    sub_192907DE8(v25);
LABEL_24:

    type metadata accessor for SignInRequest();
    swift_deallocPartialClassInstance();
    return;
  }

  sub_1928FA5CC(v25);
  sub_1928FA5CC(v27);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_24;
  }

  *&v2[OBJC_IVAR___AMSRemoteSignInRequest_authenticationResults] = v24;
  sub_192874CD0(0, &qword_1EAE15958, off_1E73B10C8);
  v7 = sub_192F96FAC();
  swift_beginAccess();
  v8 = *&v2[v4];
  v21 = v2;
  *&v2[v4] = v7;

  v9 = sub_192F96FCC();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_19295466C(v10);
  v12 = 0;
  while (1)
  {
    if (v11 == v12)
    {

      swift_beginAccess();
      *&v21[v5] = v22;

      v23.receiver = v21;
      v23.super_class = type metadata accessor for SignInRequest();
      objc_msgSendSuper2(&v23, sel_init);

      return;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x193B116C0](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v16 = [v13 integerValue];

    if (v16)
    {
      ++v12;
      if (v16 == 1)
      {
        v17 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v17 = 0;
LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_192BC50AC();
        v22 = v19;
      }

      v18 = *(v22 + 16);
      if (v18 >= *(v22 + 24) >> 1)
      {
        sub_192BC50AC();
        v22 = v20;
      }

      *(v22 + 16) = v18 + 1;
      *(v22 + v18 + 32) = v17;
      v12 = v15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

id SignInRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SignInRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192CF02EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15970, &qword_192FC63C0);
  if (dynamic_cast_existential_0_class_conditional(v0, v0))
  {
    v1 = &unk_1EAE15980;
    v2 = &unk_192FCE220;
  }

  else
  {
    v1 = &unk_1EAE15978;
    v2 = &unk_192FCE218;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

unint64_t sub_192CF0358()
{
  result = qword_1EAE15960;
  if (!qword_1EAE15960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15960);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SignInRequest.ServiceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192CF0700()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192CF075C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CF085C()
{
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);

  v4 = [v3 ams:v2 storefrontForMediaType:?];
  v5 = *(v0 + 176);
  if (v4)
  {
    v6 = sub_192F967CC();
    v8 = v7;

    OUTLINED_FUNCTION_5_43();

    return v9(v6, v8);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_8_43();
    v12 = sub_192F9679C();
    OUTLINED_FUNCTION_16_26();
    AMSError(v13, v14, v15, 0);

    swift_willThrow();
    OUTLINED_FUNCTION_43();

    return v16();
  }
}

uint64_t sub_192CF09C0(uint64_t a1)
{
  v2 = v1[23];
  v3 = v1[24];
  v4 = v1[22];
  swift_willThrow();

  v5 = OUTLINED_FUNCTION_8_43();
  v6 = sub_192F9679C();
  v7 = sub_192F958CC();
  OUTLINED_FUNCTION_16_26();
  AMSError(v8, v9, v10, v7);

  swift_willThrow();
  OUTLINED_FUNCTION_43();

  return v11();
}

uint64_t sub_192CF0AB8()
{
  if (*(v0 + 208))
  {
    if (qword_1ED6DE288 != -1)
    {
      OUTLINED_FUNCTION_1_59();
      swift_once();
    }

    v1 = qword_1ED6DE310;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_192FBCD40;
    v3 = AMSSetLogKeyIfNeeded();
    v4 = sub_192F967CC();
    v6 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    OUTLINED_FUNCTION_28();
    v7 = swift_allocObject();
    v30 = OUTLINED_FUNCTION_13_28(v7, xmmword_192FBCD50);
    v31 = v8;
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x193B10CE0](v4, v6);

    MEMORY[0x193B10CE0](93, 0xE100000000000000);
    v9 = MEMORY[0x1E69E6158];
    *(v0 + 72) = MEMORY[0x1E69E6158];
    *(v0 + 48) = v30;
    *(v0 + 56) = v31;
    *(v7 + 48) = 0u;
    *(v7 + 32) = 0u;
    sub_19286D180(v0 + 48, v7 + 32);
    *(v7 + 64) = 0;
    *(v2 + 32) = v7;
    v10._object = 0x8000000193024820;
    v10._countAndFlagsBits = 0xD000000000000042;
    LogInterpolation.init(stringLiteral:)(v10);
    v11 = sub_192F958CC();
    v12 = AMSLogableError(v11);

    v13 = sub_192F967CC();
    v15 = v14;

    *(v0 + 104) = v9;
    *(v0 + 80) = v13;
    *(v0 + 88) = v15;
    static LogInterpolation.safe(_:)(v0 + 80, (v2 + 48));
    sub_192907DE8(v0 + 80);
    v16 = sub_192F96E7C();
    if (os_log_type_enabled(v1, v16))
    {
      v29 = v1;
      v17 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_1_3();
        swift_once();
      }

      v18 = *(v0 + 184);
      OUTLINED_FUNCTION_72();
      v19 = swift_allocObject();
      *(v19 + 16) = v13;
      *(v0 + 136) = v2;
      *(v0 + 144) = sub_192BB97CC;
      *(v0 + 152) = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_61();
      v20 = sub_192F9674C();
      v22 = v21;

      objc_autoreleasePoolPop(v17);
      v23 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      OUTLINED_FUNCTION_28();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_192FBCD50;
      *(v24 + 56) = v9;
      *(v24 + 64) = sub_1928FDB30();
      *(v24 + 32) = v20;
      *(v24 + 40) = v22;
      sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v29, v16, v24);

      objc_autoreleasePoolPop(v23);
    }

    else
    {
      v18 = *(v0 + 184);
    }

    swift_unknownObjectRelease();

    v27 = OUTLINED_FUNCTION_2_53();

    return v28(v27);
  }

  else
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_43();

    return v25();
  }
}

id StorefrontHeaderValueCreation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StorefrontHeaderValueCreation.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StorefrontHeaderValueCreation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id StorefrontHeaderValueCreation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StorefrontHeaderValueCreation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static StorefrontSuffixAccessor.setStorefrontSuffix(_:clientInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_192F9607C();
  OUTLINED_FUNCTION_12_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ClientInfo.init(processInfo:)(a3, v10);
  sub_192F9600C();
  return (*(v6 + 8))(v10, v3);
}

uint64_t static StorefrontSuffixAccessor.storefrontSuffix(withClientInfo:)(void *a1)
{
  sub_192F9607C();
  OUTLINED_FUNCTION_12_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ClientInfo.init(processInfo:)(a1, v8);
  v9 = sub_192F95FDC();
  (*(v4 + 8))(v8, v1);
  return v9;
}

id StorefrontSuffixAccessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StorefrontSuffixAccessor.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id StorefrontSuffixAccessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192CF17A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_192CF1838(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE900000000000073;
  if (v4 || (sub_192F9775C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000193024A80 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_192F9775C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_192CF1910(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE159F8, &qword_192FCE698);
  OUTLINED_FUNCTION_4_0();
  v7 = v6;
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15[-v10];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v12 = sub_1929244A8();
  OUTLINED_FUNCTION_21_0(&type metadata for StoreReviewGatingBag.GatingGroup.CodingKeys, v13, v12);
  v16 = a2;
  v15[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131F0, &unk_192FBF450);
  sub_1929245BC(&qword_1EAE133F8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  OUTLINED_FUNCTION_7_3();
  sub_192F976CC();
  if (!v2)
  {
    v15[14] = 1;
    OUTLINED_FUNCTION_7_3();
    sub_192F976AC();
  }

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_192CF1AA4(double a1)
{
  sub_192C1E504();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  return MEMORY[0x193B11CB0](*&v2);
}

uint64_t sub_192CF1AE8(double a1)
{
  sub_192F9789C();
  sub_192CF1AA4(a1);
  return sub_192F978DC();
}

uint64_t sub_192CF1B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_192CF1838(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_192CF1B68(uint64_t a1)
{
  v2 = sub_1929244A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CF1BA4(uint64_t a1)
{
  v2 = sub_1929244A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192CF1C18(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_192F9789C();
  sub_192CF1AA4(v2);
  return sub_192F978DC();
}

unint64_t sub_192CF1C88()
{
  v0 = sub_192F9750C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_192CF1CD4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      return v4;
    }
  }

  v4 = a2[16];
  if (a1[16])
  {
    if (!a2[16])
    {
      return v4;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      LOBYTE(v4) = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v4 = a2[32];
  if (a1[32])
  {
    if (!a2[32])
    {
      return v4;
    }
  }

  else
  {
    if (*(a1 + 3) != *(a2 + 3))
    {
      LOBYTE(v4) = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v4 = a2[48];
  if (a1[48])
  {
    if (!a2[48])
    {
      return v4;
    }
  }

  else
  {
    if (*(a1 + 5) != *(a2 + 5))
    {
      LOBYTE(v4) = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 7);
  v6 = *(a2 + 7);
  if (v5)
  {
    if (!v6 || (sub_192C1CC34(v5, v6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_192CF1DC0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE159B8, &qword_192FCE3F0);
  OUTLINED_FUNCTION_4_0();
  v7 = v6;
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15[-v10];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v12 = sub_19292320C();
  OUTLINED_FUNCTION_21_0(&unk_1F06FEE20, v13, v12);
  v20 = 0;
  OUTLINED_FUNCTION_7_3();
  sub_192F9765C();
  if (!v2)
  {
    v19 = 1;
    OUTLINED_FUNCTION_7_3();
    sub_192F9767C();
    v18 = 2;
    OUTLINED_FUNCTION_7_3();
    sub_192F9766C();
    v17 = 3;
    OUTLINED_FUNCTION_7_3();
    sub_192F9766C();
    v16 = *(v3 + 56);
    v15[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE159B0, &qword_192FCE3E8);
    sub_19292330C(&qword_1EAE159C0, sub_192CF2318, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_7_3();
    sub_192F9768C();
  }

  return (*(v7 + 8))(v11, v5);
}

void sub_192CF1FD0()
{
  if (*v0 != 2)
  {
    sub_192F978BC();
  }

  sub_192F978BC();
  if (*(v0 + 16) == 1)
  {
    sub_192F978BC();
  }

  else
  {
    v1 = *(v0 + 8);
    sub_192F978BC();
    MEMORY[0x193B11C90](v1);
  }

  if (*(v0 + 32) == 1)
  {
    sub_192F978BC();
  }

  else
  {
    v2 = *(v0 + 24);
    sub_192F978BC();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x193B11CB0](v3);
  }

  if (*(v0 + 48) == 1)
  {
    sub_192F978BC();
  }

  else
  {
    v4 = *(v0 + 40);
    sub_192F978BC();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x193B11CB0](v5);
  }

  if (*(v0 + 56))
  {
    sub_192F978BC();

    sub_192C1E958();
  }

  else
  {
    sub_192F978BC();
  }
}

uint64_t sub_192CF20EC()
{
  sub_192F9789C();
  sub_192CF1FD0();
  return sub_192F978DC();
}

unint64_t sub_192CF2150@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CF1C88();
  *a1 = result;
  return result;
}

unint64_t sub_192CF2180@<X0>(unint64_t *a1@<X8>)
{
  result = sub_192923268(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_192CF21AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CF1C88();
  *a1 = result;
  return result;
}

uint64_t sub_192CF21E8(uint64_t a1)
{
  v2 = sub_19292320C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CF2224(uint64_t a1)
{
  v2 = sub_19292320C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192CF2280(uint64_t a1)
{
  sub_192F9789C();
  sub_192CF1FD0();
  return sub_192F978DC();
}

unint64_t sub_192CF22C4()
{
  result = qword_1EAE159A0;
  if (!qword_1EAE159A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE159A0);
  }

  return result;
}

unint64_t sub_192CF2318()
{
  result = qword_1EAE159C8;
  if (!qword_1EAE159C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE159C8);
  }

  return result;
}

unint64_t sub_192CF2370()
{
  result = qword_1EAE159D0;
  if (!qword_1EAE159D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE159D0);
  }

  return result;
}

unint64_t sub_192CF240C()
{
  result = qword_1EAE159E8;
  if (!qword_1EAE159E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE159E8);
  }

  return result;
}

unint64_t sub_192CF2464()
{
  result = qword_1EAE15A00;
  if (!qword_1EAE15A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15A00);
  }

  return result;
}

uint64_t StoreReviewGatingController.didPrompt()()
{
  OUTLINED_FUNCTION_3();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_192CF25C0;

  return StoreReviewGatingController.isEnabled()();
}

uint64_t sub_192CF25C0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CF26A8()
{
  if (*(v0 + 40) != 1)
  {
    return OUTLINED_FUNCTION_19_1();
  }

  v1 = *(*(v0 + 16) + OBJC_IVAR___AMSStoreReviewGatingController_ledger);
  *(v0 + 32) = v1;
  return OUTLINED_FUNCTION_0_3(sub_192CF26E0, v1);
}

uint64_t sub_192CF26E0()
{
  OUTLINED_FUNCTION_3();
  sub_192CF7400();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192CF2758(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_192CF72DC;

  return StoreReviewGatingController.didPrompt()();
}

uint64_t sub_192CF2820(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_192CF72E0;

  return StoreReviewGatingController.isEnabled()();
}

uint64_t StoreReviewGatingController.canPrompt()()
{
  OUTLINED_FUNCTION_3();
  v1[48] = v0;
  v1[49] = swift_getObjectType();
  v2 = swift_task_alloc();
  v1[50] = v2;
  *v2 = v1;
  v2[1] = sub_192CF2960;

  return StoreReviewGatingController.isEnabled()();
}

uint64_t sub_192CF2960()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 449) = v3;

  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CF2A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  if (*(v12 + 449) == 1)
  {
    swift_unknownObjectRetain();
    swift_task_alloc();
    OUTLINED_FUNCTION_42_0();
    *(v12 + 408) = v13;
    *v13 = v14;
    v13[1] = sub_192CF2CB0;
    OUTLINED_FUNCTION_145();

    return sub_1928F6468(v15, v16);
  }

  else
  {
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v20 = OUTLINED_FUNCTION_47(v19);
    OUTLINED_FUNCTION_50(v20, xmmword_192FBCD50);
    OUTLINED_FUNCTION_2_31();
    v21._countAndFlagsBits = 0xD000000000000047;
    LogInterpolation.init(stringLiteral:)(v21);
    v22 = sub_192F96E3C();
    if (OUTLINED_FUNCTION_14_18(v22))
    {
      v23 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v24 = swift_allocObject();
      v25 = OUTLINED_FUNCTION_116(v24);
      *(v12 + 336) = v20;
      *(v12 + 344) = sub_192BB97CC;
      *(v12 + 352) = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      v26 = sub_1928FD924();
      OUTLINED_FUNCTION_106(v26, v27, v28, v26);
      OUTLINED_FUNCTION_30_0();

      objc_autoreleasePoolPop(v23);
      v29 = objc_autoreleasePoolPush();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v31 = OUTLINED_FUNCTION_90(v30);
      OUTLINED_FUNCTION_78(v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
      *(v41 + 56) = MEMORY[0x1E69E6158];
      v42 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v42);
      OUTLINED_FUNCTION_139("%{public}@", v43, v44, &dword_192869000);

      objc_autoreleasePoolPop(v29);
    }

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_145();

    return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
  }
}

uint64_t sub_192CF2CB0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v6 = v2[6];
  v2[9] = v2[5];
  v2[10] = v6;
  v7 = v2[8];
  v2[11] = v2[7];
  v2[12] = v7;
  v8 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192CF2DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  v13 = *(v12 + 136);
  if (v13 == 1)
  {
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v15 = OUTLINED_FUNCTION_47(v14);
    OUTLINED_FUNCTION_50(v15, xmmword_192FBCD50);
    OUTLINED_FUNCTION_2_31();
    v16._countAndFlagsBits = 0xD000000000000041;
    LogInterpolation.init(stringLiteral:)(v16);
    v17 = sub_192F96E3C();
    if (OUTLINED_FUNCTION_14_18(v17))
    {
      v18 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v19 = swift_allocObject();
      v20 = OUTLINED_FUNCTION_116(v19);
      *(v12 + 360) = v15;
      *(v12 + 368) = sub_192BB97CC;
      *(v12 + 376) = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      v21 = sub_1928FD924();
      OUTLINED_FUNCTION_106(v21, v22, v23, v21);
      OUTLINED_FUNCTION_30_0();

      objc_autoreleasePoolPop(v18);
      v24 = objc_autoreleasePoolPush();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v26 = OUTLINED_FUNCTION_90(v25);
      OUTLINED_FUNCTION_78(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
      *(v36 + 56) = MEMORY[0x1E69E6158];
      v37 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v37);
      OUTLINED_FUNCTION_139("%{public}@", v38, v39, &dword_192869000);

      objc_autoreleasePoolPop(v24);
    }

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_145();

    return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
  }

  else
  {
    v49 = *(v12 + 384);
    v50 = *(v12 + 96);
    *(v12 + 16) = *(v12 + 80);
    *(v12 + 32) = v50;
    *(v12 + 48) = *(v12 + 112);
    *(v12 + 64) = *(v12 + 128);
    *(v12 + 72) = v13;
    *(v12 + 416) = *(v49 + OBJC_IVAR___AMSStoreReviewGatingController_ledger);
    v51 = *(v12 + 160);
    *(v12 + 208) = *(v12 + 144);
    *(v12 + 224) = v51;
    v52 = *(v12 + 192);
    *(v12 + 240) = *(v12 + 176);
    *(v12 + 256) = v52;
    sub_192CF6B50(v12 + 208, v12 + 272);
    swift_task_alloc();
    OUTLINED_FUNCTION_42_0();
    *(v12 + 424) = v53;
    *v53 = v54;
    v53[1] = sub_192CF3034;
    OUTLINED_FUNCTION_145();

    return sub_19292479C(v55);
  }
}

uint64_t sub_192CF3034()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  sub_1928FC07C(v2 + 80, &unk_1EAE15A20, &qword_192FCE7B8);
  v6 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192CF312C()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[52];
  v2 = v0[49];
  v3 = swift_task_alloc();
  v0[54] = v3;
  v3[2] = v0 + 2;
  v3[3] = v1;
  v3[4] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v0[55] = v4;
  *v4 = v5;
  v4[1] = sub_192CF3220;
  v6 = MEMORY[0x1E69E6370];
  v7 = MEMORY[0x1E69E6370];
  v8 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DBF8](v0 + 56, v6, v7, 0, 0, &unk_192FCE7E0, v3, v8);
}

uint64_t sub_192CF3220()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  sub_1928FC07C(v2 + 80, &unk_1EAE15A20, &qword_192FCE7B8);

  v6 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192CF3358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[45] = a4;
  v5[46] = a5;
  v5[43] = a2;
  v5[44] = a3;
  v5[42] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE15A30, &unk_192FCE868);
  v5[47] = v6;
  v5[48] = *(v6 - 8);
  v5[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DE0, &qword_192FBD930);
  v5[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192CF3464, 0, 0);
}

uint64_t sub_192CF3464()
{
  OUTLINED_FUNCTION_178();
  v1 = v0[50];
  v2 = v0[43];
  v3 = v0[44];
  sub_192F96C6C();
  OUTLINED_FUNCTION_50_10();
  OUTLINED_FUNCTION_74_7();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_17_29(v4);
  sub_192CF6B50(v3, (v0 + 2));

  sub_192CF46E4(v1, &unk_192FCE880, v4);
  OUTLINED_FUNCTION_63_11();
  OUTLINED_FUNCTION_50_10();
  OUTLINED_FUNCTION_74_7();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_17_29(v5);
  sub_192CF6B50(v3, (v0 + 10));

  sub_192CF46E4(v1, &unk_192FCE890, v5);
  OUTLINED_FUNCTION_63_11();
  OUTLINED_FUNCTION_50_10();
  OUTLINED_FUNCTION_74_7();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_17_29(v6);
  sub_192CF6B50(v3, (v0 + 18));

  sub_192CF46E4(v1, &unk_192FCE8A0, v6);
  OUTLINED_FUNCTION_63_11();
  v0[51] = *v2;
  sub_192F96BDC();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v0[52] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_30_17(v7);

  return MEMORY[0x1EEE6D8A8](v0 + 241, 0, 0);
}

uint64_t sub_192CF3644()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_192CF3728()
{
  OUTLINED_FUNCTION_120();
  v51 = v0;
  v1 = v0[15].n128_u8[1];
  if (v1 != 2)
  {
    if (v1)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_42_0();
      v0[26].n128_u64[0] = v2;
      *v2 = v3;
      OUTLINED_FUNCTION_30_17(v2);

      return MEMORY[0x1EEE6D8A8](v0[15].n128_u64 + 1, 0, 0);
    }

    sub_192F96BFC();
  }

  v4 = MEMORY[0x1E69E6370];
  v5 = v0 + 13;
  (*(v0[24].n128_u64[0] + 8))(v0[24].n128_u64[1], v0[23].n128_u64[1]);
  if (qword_1ED6DDB28 != -1)
  {
    OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
  }

  v6 = v1 == 2;
  v7 = qword_1ED6DDB30;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v9 = OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_50(v9, xmmword_192FBCD50);
  sub_19287AEE0();
  v50 = v10;
  OUTLINED_FUNCTION_18_1();
  v11._countAndFlagsBits = 0xD00000000000002DLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  v0[17].n128_u64[0] = v4;
  v0[15].n128_u8[8] = v1 == 2;
  sub_1928F9518(&v0[15].n128_i64[1], &v0[17].n128_i64[1], &unk_1EAE131B0, &qword_192FBD860);
  *v5 = 0u;
  v0[14] = 0u;
  v12 = sub_19286D180(&v0[17].n128_i64[1], &v0[13]);
  v0[15].n128_u8[0] = 3;
  if ((OUTLINED_FUNCTION_48_6(v12, v13, v14, v15, v16, v17, v18, v19, v48, v49, v50) & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v1 = v45;
  }

  v20 = *(v1 + 16);
  if (v20 >= *(v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_66_10();
    v1 = v46;
  }

  *(v1 + 16) = v20 + 1;
  OUTLINED_FUNCTION_69_10();
  OUTLINED_FUNCTION_5_12(v21, *v5, v0[14]);
  sub_1928FC07C(&v0[15].n128_i64[1], &unk_1EAE131B0, &qword_192FBD860);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  v9[2].n128_u64[0] = v50;
  v23 = sub_192F96E3C();
  if (os_log_type_enabled(v7, v23))
  {
    v24 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v25 = swift_allocObject();
    *(v25 + 16) = &v50;
    v0[19].n128_u64[1] = v9;
    v0[20].n128_u64[0] = sub_192BB97CC;
    v0[20].n128_u64[1] = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    v26 = sub_192F9674C();
    v28 = v27;

    objc_autoreleasePoolPop(v24);
    v29 = objc_autoreleasePoolPush();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v31 = OUTLINED_FUNCTION_90(v30);
    OUTLINED_FUNCTION_29_0(v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
    *(v41 + 56) = MEMORY[0x1E69E6158];
    v31[4].n128_u64[0] = sub_1928FDB30();
    v31[2].n128_u64[0] = v26;
    v31[2].n128_u64[1] = v28;
    OUTLINED_FUNCTION_60();
    sub_192F9622C(v42);

    objc_autoreleasePoolPop(v29);
  }

  v43 = v0[21].n128_u64[0];

  *v43 = v6;

  OUTLINED_FUNCTION_43();

  return v44();
}

uint64_t sub_192CF3AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_192CF3BA4;

  return sub_192CF3C8C(a4, a5);
}

uint64_t sub_192CF3BA4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CF3C8C(uint64_t a1, uint64_t a2)
{
  v2[45] = a1;
  v2[46] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10, &qword_192FBCDA0);
  v2[47] = swift_task_alloc();
  v4 = sub_192F95CFC();
  v2[48] = v4;
  v2[49] = *(v4 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192CF3D94, a2, 0);
}

uint64_t sub_192CF3D94()
{
  OUTLINED_FUNCTION_5();
  sub_192927884();
  sub_192CF7604();

  v0 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_192CF3E0C()
{
  OUTLINED_FUNCTION_120();
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1928FC07C(v2, &qword_1EAE12E10, &qword_192FBCDA0);
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
    }

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v4 = OUTLINED_FUNCTION_47(v3);
    OUTLINED_FUNCTION_50(v4, xmmword_192FBCD50);
    OUTLINED_FUNCTION_39_17();
    v6._countAndFlagsBits = v5 + 27;
    v6._object = (v7 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v6);
    v8 = sub_192F96E3C();
    if (OUTLINED_FUNCTION_14_18(v8))
    {
      v9 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v10 = swift_allocObject();
      v11 = OUTLINED_FUNCTION_116(v10);
      *(v0 + 264) = v4;
      *(v0 + 272) = sub_192BB97CC;
      *(v0 + 280) = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      v12 = sub_1928FD924();
      OUTLINED_FUNCTION_106(v12, v13, v14, v12);
      OUTLINED_FUNCTION_30_0();

      objc_autoreleasePoolPop(v9);
      v15 = objc_autoreleasePoolPush();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v17 = OUTLINED_FUNCTION_90(v16);
      OUTLINED_FUNCTION_78(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
      *(v27 + 56) = MEMORY[0x1E69E6158];
      v28 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v28);
      OUTLINED_FUNCTION_139("%{public}@", v29, v30, &dword_192869000);

      objc_autoreleasePoolPop(v15);
    }

    goto LABEL_9;
  }

  (*(*(v0 + 392) + 32))(*(v0 + 408), v2, v1);
  *(v0 + 40) = &type metadata for FlagKeys;
  v32 = sub_1929247E4();
  *(v0 + 16) = 19;
  *(v0 + 48) = v32;
  v33 = sub_192F95E6C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if ((v33 & 1) == 0)
  {
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v49 = OUTLINED_FUNCTION_47(v48);
    OUTLINED_FUNCTION_50(v49, xmmword_192FBCD50);
    OUTLINED_FUNCTION_39_17();
    v51._countAndFlagsBits = v50 + 53;
    v51._object = (v52 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v51);
    v53 = sub_192F96E3C();
    if (!OUTLINED_FUNCTION_14_18(v53))
    {
      goto LABEL_25;
    }

    v41 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v54 = swift_allocObject();
    v55 = OUTLINED_FUNCTION_116(v54);
    *(v0 + 288) = v49;
    *(v0 + 296) = sub_192BB97CC;
    *(v0 + 304) = v55;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    v44 = sub_1928FD924();
    v47 = v44;
    goto LABEL_24;
  }

  v34 = *(v0 + 360);
  if (*(v34 + 48))
  {
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v36 = OUTLINED_FUNCTION_47(v35);
    OUTLINED_FUNCTION_50(v36, xmmword_192FBCD50);
    OUTLINED_FUNCTION_39_17();
    v38._countAndFlagsBits = v37 + 59;
    v38._object = (v39 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v38);
    v40 = sub_192F96E3C();
    if (!OUTLINED_FUNCTION_14_18(v40))
    {
      goto LABEL_25;
    }

    v41 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v42 = swift_allocObject();
    v43 = OUTLINED_FUNCTION_116(v42);
    *(v0 + 312) = v36;
    *(v0 + 320) = sub_192BB97CC;
    *(v0 + 328) = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    v44 = sub_1928FD924();
    v47 = v44;
LABEL_24:
    OUTLINED_FUNCTION_106(v44, v45, v46, v47);
    OUTLINED_FUNCTION_30_0();

    objc_autoreleasePoolPop(v41);
    v56 = objc_autoreleasePoolPush();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v58 = OUTLINED_FUNCTION_90(v57);
    OUTLINED_FUNCTION_78(v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
    *(v68 + 56) = MEMORY[0x1E69E6158];
    v69 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v69);
    OUTLINED_FUNCTION_139("%{public}@", v70, v71, &dword_192869000);

    objc_autoreleasePoolPop(v56);
LABEL_25:

    v72 = OUTLINED_FUNCTION_48();
    v73(v72);
    goto LABEL_26;
  }

  v76 = *(v34 + 40);
  sub_192F95CEC();
  sub_192F95CDC();
  if (v77 >= v76)
  {
    v136 = *(*(v0 + 392) + 8);
    (v136)(*(v0 + 400), *(v0 + 384));
    v137 = OUTLINED_FUNCTION_48();
    v136(v137);
LABEL_9:
    v31 = 1;
    goto LABEL_27;
  }

  if (qword_1ED6DDB28 != -1)
  {
    OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
  }

  v78 = *(v0 + 384);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v80 = OUTLINED_FUNCTION_47(v79);
  OUTLINED_FUNCTION_50(v80, xmmword_192FBCD50);
  sub_19287AEE0();
  v145 = v81;
  OUTLINED_FUNCTION_45_12();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v82);
  *(v0 + 160) = v78;
  __swift_allocate_boxed_opaque_existential_0((v0 + 136));
  OUTLINED_FUNCTION_54_0();
  v83();
  sub_1928F9518(v0 + 136, v0 + 168, &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_56_4();
  v84 = sub_19286D180(v0 + 168, v0 + 56);
  *(v0 + 88) = 3;
  if ((OUTLINED_FUNCTION_103(v84, v85, v86, v87, v88, v89, v90, v91, v139, v141, v143, v145) & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_24();
  if (v92)
  {
    OUTLINED_FUNCTION_142();
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_14_28(v93, *(v0 + 56), *(v0 + 72));
  OUTLINED_FUNCTION_54_0();
  sub_1928FC07C(v94, v95, v96);
  OUTLINED_FUNCTION_45_12();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v97);
  *(v0 + 224) = MEMORY[0x1E69E63B0];
  *(v0 + 200) = v76;
  sub_1928F9518(v0 + 200, v0 + 232, &unk_1EAE131B0, &qword_192FBD860);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  v98 = sub_19286D180(v0 + 232, v0 + 96);
  *(v0 + 128) = 3;
  if ((OUTLINED_FUNCTION_103(v98, v99, v100, v101, v102, v103, v104, v105, v140, v142, v144, v146) & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v147 = v138;
  }

  OUTLINED_FUNCTION_24();
  if (v92)
  {
    OUTLINED_FUNCTION_142();
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_14_28(v106, *(v0 + 96), *(v0 + 112));
  sub_1928FC07C(v0 + 200, &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_45_12();
  v107._countAndFlagsBits = 0xD000000000000010;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v107);
  v80[2].n128_u64[0] = v147;
  v108 = sub_192F96E3C();
  if (OUTLINED_FUNCTION_14_18(v108))
  {
    v109 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v110 = swift_allocObject();
    v111 = OUTLINED_FUNCTION_116(v110);
    *(v0 + 336) = v80;
    *(v0 + 344) = sub_192BB97CC;
    *(v0 + 352) = v111;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    v112 = sub_1928FD924();
    OUTLINED_FUNCTION_106(v112, v113, v114, v112);
    OUTLINED_FUNCTION_30_0();

    objc_autoreleasePoolPop(v109);
    v115 = objc_autoreleasePoolPush();
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v117 = OUTLINED_FUNCTION_90(v116);
    OUTLINED_FUNCTION_78(v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
    *(v127 + 56) = MEMORY[0x1E69E6158];
    v128 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v128);
    OUTLINED_FUNCTION_139("%{public}@", v129, v130, &dword_192869000);

    objc_autoreleasePoolPop(v115);
  }

  v131 = *(v0 + 400);
  v132 = *(v0 + 408);
  v133 = *(v0 + 384);
  v134 = *(v0 + 392);

  v135 = *(v134 + 8);
  v135(v131, v133);
  v135(v132, v133);
LABEL_26:
  v31 = 0;
LABEL_27:

  OUTLINED_FUNCTION_40();

  return v74(v31);
}

uint64_t sub_192CF46E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DE0, &qword_192FBD930);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v20 - v9;
  v11 = *v3;
  v12 = swift_taskGroup_addPending();
  if (v12)
  {
    sub_1928F9518(a1, v10, &unk_1EAE12DE0, &qword_192FBD930);
    v13 = sub_192F96C6C();
    if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
    {
      sub_1928FC07C(v10, &unk_1EAE12DE0, &qword_192FBD930);
    }

    else
    {
      sub_192F96C5C();
      (*(*(v13 - 8) + 8))(v10, v13);
    }

    if (*(a3 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_192F96B7C();
      v16 = v15;
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    v18 = (v16 | v14);
    if (v16 | v14)
    {
      v21[0] = 0;
      v21[1] = 0;
      v18 = v21;
      v21[2] = v14;
      v21[3] = v16;
    }

    v20[1] = 1;
    v20[2] = v18;
    v20[3] = v11;
    swift_task_create();
  }

  return v12 & 1;
}

uint64_t sub_192CF48FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_192CF49A8;

  return sub_192CF4AA0(a4, a5);
}

uint64_t sub_192CF49A8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CF4AA0(uint64_t a1, uint64_t a2)
{
  v2[69] = a2;
  v2[68] = a1;
  v3 = sub_192F95CFC();
  v2[70] = v3;
  v2[71] = *(v3 - 8);
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10, &qword_192FBCDA0);
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192CF4BE4, 0, 0);
}

uint64_t sub_192CF4BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  v13 = *(v12[68] + 56);
  v12[80] = v13;
  if (v13)
  {
    OUTLINED_FUNCTION_145();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }

  else
  {
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v19 = OUTLINED_FUNCTION_47(v18);
    OUTLINED_FUNCTION_50(v19, xmmword_192FBCD50);
    OUTLINED_FUNCTION_2_31();
    v20._countAndFlagsBits = 0xD000000000000030;
    LogInterpolation.init(stringLiteral:)(v20);
    v21 = sub_192F96E3C();
    if (OUTLINED_FUNCTION_14_18(v21))
    {
      v22 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v23 = swift_allocObject();
      v24 = OUTLINED_FUNCTION_116(v23);
      v12[54] = v19;
      v12[55] = sub_192BB97CC;
      v12[56] = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      v25 = sub_1928FD924();
      OUTLINED_FUNCTION_106(v25, v26, v27, v25);
      OUTLINED_FUNCTION_30_0();

      objc_autoreleasePoolPop(v22);
      v28 = objc_autoreleasePoolPush();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v30 = OUTLINED_FUNCTION_90(v29);
      OUTLINED_FUNCTION_78(v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
      *(v40 + 56) = MEMORY[0x1E69E6158];
      v41 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v41);
      OUTLINED_FUNCTION_139("%{public}@", v42, v43, &dword_192869000);

      objc_autoreleasePoolPop(v28);
    }

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_145();

    return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
  }
}

uint64_t sub_192CF4E5C()
{
  OUTLINED_FUNCTION_3();
  *(v0 + 648) = sub_192927884();
  *(v0 + 656) = v1;
  v2 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_192CF4EC0()
{
  v183 = v0;
  v2 = *(v0 + 640);
  v3 = *(v2 + 16);
  v4 = (v2 + 40);
  if (!v3)
  {
LABEL_4:
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
    }

    v10 = *(v0 + 656);
    v11 = *(v0 + 648);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v13 = OUTLINED_FUNCTION_47(v12);
    OUTLINED_FUNCTION_50(v13, xmmword_192FBCD50);
    sub_19287AEE0();
    v182 = v14;
    OUTLINED_FUNCTION_18_1();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    v16 = MEMORY[0x1E69E6158];
    *(v0 + 392) = MEMORY[0x1E69E6158];
    *(v0 + 368) = v11;
    *(v0 + 376) = v10;
    sub_1928F9518(v0 + 368, v0 + 400, &unk_1EAE131B0, &qword_192FBD860);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    v17 = sub_19286D180(v0 + 400, v0 + 136);
    *(v0 + 168) = 3;
    if ((OUTLINED_FUNCTION_48_6(v17, v18, v19, v20, v21, v22, v23, v24, v176, v179, v182) & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
    }

    OUTLINED_FUNCTION_24();
    if (v25)
    {
      OUTLINED_FUNCTION_142();
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_5_12(v26, *(v0 + 136), *(v0 + 152));
    sub_1928FC07C(v0 + 368, &unk_1EAE131B0, &qword_192FBD860);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
    v13[2].n128_u64[0] = v182;
    v28 = sub_192F96E3C();
    if (OUTLINED_FUNCTION_14_18(v28))
    {
      v29 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v30 = swift_allocObject();
      v31 = OUTLINED_FUNCTION_116(v30);
      *(v0 + 504) = v13;
      *(v0 + 512) = sub_192BB97CC;
      *(v0 + 520) = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      v32 = sub_1928FD924();
      OUTLINED_FUNCTION_106(v32, v33, v34, v32);
      OUTLINED_FUNCTION_30_0();

      objc_autoreleasePoolPop(v29);
      v35 = objc_autoreleasePoolPush();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v37 = OUTLINED_FUNCTION_90(v36);
      OUTLINED_FUNCTION_78(v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
      *(v47 + 56) = v16;
      v48 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v48);
      OUTLINED_FUNCTION_139("%{public}@", v49, v50, &dword_192869000);

      objc_autoreleasePoolPop(v35);
    }

    goto LABEL_49;
  }

  while (1)
  {
    v5 = *(v0 + 656);
    v6 = *(v0 + 648);
    v7 = *(v4 - 1);
    *(v0 + 664) = v7;
    *(v0 + 672) = *v4;
    *(v0 + 528) = v6;
    *(v0 + 536) = v5;
    v8 = swift_task_alloc();
    *(v8 + 16) = v0 + 528;

    v9 = sub_192924FF4(sub_1929250EC, v8, v7);

    if (v9)
    {
      break;
    }

    v4 += 2;
    if (!--v3)
    {
      goto LABEL_4;
    }
  }

  v51 = *(v0 + 560);

  v52 = OUTLINED_FUNCTION_75_8();
  __swift_storeEnumTagSinglePayload(v52, v53, 1, v51);
  v54 = *(v7 + 16);
  *(v0 + 680) = v54;
  if (!v54)
  {
    OUTLINED_FUNCTION_81_10();
    v59 = OUTLINED_FUNCTION_48();
    sub_1928F9518(v59, v60, v61, v62);
    v63 = OUTLINED_FUNCTION_75_8();
    if (__swift_getEnumTagSinglePayload(v63, v64, v51) == 1)
    {
      v65 = *(v0 + 608);

      sub_1928FC07C(v65, &qword_1EAE12E10, &qword_192FBCDA0);
      if (qword_1ED6DDB28 != -1)
      {
        OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
      }

      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
      v67 = OUTLINED_FUNCTION_47(v66);
      OUTLINED_FUNCTION_50(v67, xmmword_192FBCD50);
      OUTLINED_FUNCTION_51_10("StoreReviewGatingController: no prompts from this group yet");
      v68 = sub_192F96E3C();
      if (OUTLINED_FUNCTION_14_18(v68))
      {
        v69 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
        }

        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_71();
        v70 = swift_allocObject();
        v71 = OUTLINED_FUNCTION_116(v70);
        OUTLINED_FUNCTION_38_10(v71);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
        v72 = sub_1928FD924();
        OUTLINED_FUNCTION_106(v72, v73, v74, v72);
        OUTLINED_FUNCTION_30_0();

        objc_autoreleasePoolPop(v69);
        v75 = objc_autoreleasePoolPush();
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
        v77 = OUTLINED_FUNCTION_90(v76);
        OUTLINED_FUNCTION_78(v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
        *(v87 + 56) = MEMORY[0x1E69E6158];
        v88 = sub_1928FDB30();
        OUTLINED_FUNCTION_137(v88);
        OUTLINED_FUNCTION_139("%{public}@", v89, v90, &dword_192869000);

        objc_autoreleasePoolPop(v75);
      }

      v91 = *(v0 + 632);

      goto LABEL_48;
    }

    v92 = OUTLINED_FUNCTION_44_10();
    v93(v92);
    sub_192F95CEC();
    sub_192F95CDC();
    if (v94 >= v1)
    {
      v91 = *(v0 + 632);
      v162 = *(v0 + 584);
      v163 = *(v0 + 576);
      v164 = *(v0 + 568);
      v165 = *(v0 + 560);

      v166 = *(v164 + 8);
      v166(v163, v165);
      v166(v162, v165);
LABEL_48:
      sub_1928FC07C(v91, &qword_1EAE12E10, &qword_192FBCDA0);
      goto LABEL_49;
    }

    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
    }

    v95 = qword_1ED6DDB30;
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    v97 = OUTLINED_FUNCTION_47(v96);
    OUTLINED_FUNCTION_50(v97, xmmword_192FBCD50);
    sub_19287AEE0();
    v182 = v98;
    OUTLINED_FUNCTION_18_1();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v99);
    *(v0 + 200) = MEMORY[0x1E69E6158];
    *(v0 + 176) = 0;
    *(v0 + 184) = 0xE000000000000000;
    sub_1928F9518(v0 + 176, v0 + 208, &unk_1EAE131B0, &qword_192FBD860);
    OUTLINED_FUNCTION_79_8();
    OUTLINED_FUNCTION_70_6();
    if ((OUTLINED_FUNCTION_48_6(v100, v101, v102, v103, v104, v105, v106, v107, v176, v179, v182) & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v7 = v169;
    }

    v108 = *(v7 + 16);
    if (v108 >= *(v7 + 24) >> 1)
    {
      OUTLINED_FUNCTION_142();
      v7 = v170;
    }

    v109 = *(v0 + 584);
    v110 = *(v0 + 568);
    v111 = *(v0 + 560);
    *(v7 + 16) = v108 + 1;
    OUTLINED_FUNCTION_69_10();
    OUTLINED_FUNCTION_5_12(v112, *(v0 + 16), *(v0 + 32));
    sub_1928FC07C(v0 + 176, &unk_1EAE131B0, &qword_192FBD860);
    v113 = &v182;
    v114._countAndFlagsBits = 544497952;
    v114._object = 0xE400000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v114);
    *(v0 + 264) = v111;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
    (*(v110 + 16))(boxed_opaque_existential_0, v109, v111);
    OUTLINED_FUNCTION_77_10();
    OUTLINED_FUNCTION_56_4();
    v116 = sub_19286D180(v0 + 272, v0 + 56);
    *(v0 + 88) = 3;
    if ((OUTLINED_FUNCTION_48_6(v116, v117, v118, v119, v120, v121, v122, v123, v177, v180, v182) & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v113 = v171;
    }

    OUTLINED_FUNCTION_24();
    if (v25)
    {
      OUTLINED_FUNCTION_142();
      v113 = v172;
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_5_12(v124, *(v0 + 56), *(v0 + 72));
    v125 = &qword_192FBD860;
    OUTLINED_FUNCTION_54_0();
    sub_1928FC07C(v126, v127, v128);
    OUTLINED_FUNCTION_18_1();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v129);
    OUTLINED_FUNCTION_59_7(MEMORY[0x1E69E63B0]);
    v130 = OUTLINED_FUNCTION_78_10();
    *(v0 + 128) = 3;
    if ((OUTLINED_FUNCTION_48_6(v130, v131, v132, v133, v134, v135, v136, v137, v178, v181, v182) & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v113 = v173;
      v182 = v173;
    }

    OUTLINED_FUNCTION_24();
    if (v25)
    {
      OUTLINED_FUNCTION_142();
      v113 = v174;
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_5_12(v138, *(v0 + 96), *(v0 + 112));
    sub_1928FC07C(v0 + 304, &unk_1EAE131B0, &qword_192FBD860);
    OUTLINED_FUNCTION_18_1();
    v139._countAndFlagsBits = 0xD000000000000010;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v139);
    v97[2].n128_u64[0] = v182;
    sub_192F96E3C();
    OUTLINED_FUNCTION_165();
    if (os_log_type_enabled(v95, v140))
    {
      v141 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v142 = swift_allocObject();
      v143 = OUTLINED_FUNCTION_116(v142);
      OUTLINED_FUNCTION_37_15(v143);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      v144 = sub_1928FD924();
      v113 = OUTLINED_FUNCTION_106(v144, v145, v146, v144);

      objc_autoreleasePoolPop(v141);
      v125 = objc_autoreleasePoolPush();
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v148 = OUTLINED_FUNCTION_90(v147);
      OUTLINED_FUNCTION_78(v148, v149, v150, v151, v152, v153, v154, v155, v156, v157);
      *(v158 + 56) = MEMORY[0x1E69E6158];
      v159 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v159);
      OUTLINED_FUNCTION_60();
      sub_192F9622C(v160);

      objc_autoreleasePoolPop(v125);
    }

    OUTLINED_FUNCTION_60_5();
    v161 = *(v111 + 8);
    v161(&unk_1EAE131B0, v125);
    v161(v95, v125);
    sub_1928FC07C(v113, &qword_1EAE12E10, &qword_192FBCDA0);
LABEL_49:
    OUTLINED_FUNCTION_61_12(*(v0 + 632));

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_46_12();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 704) = 0;
  *(v0 + 688) = 0u;
  OUTLINED_FUNCTION_34_17(*(v0 + 664));
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_46_12();

  return MEMORY[0x1EEE6DFA0](v55, v56, v57);
}

uint64_t sub_192CF58E8()
{
  OUTLINED_FUNCTION_3();
  sub_192CF7604();
  v0 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_192CF5950()
{
  v157 = v1;
  v3 = *(v1 + 624);
  v4 = *(v1 + 560);
  v5 = OUTLINED_FUNCTION_75_8();
  if (__swift_getEnumTagSinglePayload(v5, v6, v4) == 1)
  {

    sub_1928FC07C(v3, &qword_1EAE12E10, &qword_192FBCDA0);
LABEL_3:
    v7 = *(v1 + 696);
    v8 = (v1 + 688);
    goto LABEL_9;
  }

  v9 = *(v1 + 632);
  v10 = *(v1 + 616);
  v11 = *(*(v1 + 568) + 32);
  v11(*(v1 + 600), v3, v4);
  sub_1928F9518(v9, v10, &qword_1EAE12E10, &qword_192FBCDA0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    v147 = *(v1 + 720);
    v8 = (v1 + 712);
    v4 = *(v1 + 696);
    v12 = *(v1 + 632);
    v0 = *(v1 + 616);
    v13 = *(v1 + 600);
    v14 = *(v1 + 560);
    sub_1928FC07C(v12, &qword_1EAE12E10, &qword_192FBCDA0);

    sub_1928FC07C(v0, &qword_1EAE12E10, &qword_192FBCDA0);
    v11(v12, v13, v14);
    v15 = v12;
    v16 = v14;
    v7 = v147;
  }

  else
  {
    v17 = *(v1 + 592);
    v18 = *(v1 + 568);
    v0 = *(v1 + 560);
    v11(v17, *(v1 + 616), v0);
    OUTLINED_FUNCTION_48();
    v4 = sub_192F95C5C();
    v19 = *(v18 + 8);
    v19(v17, v0);
    v7 = *(v1 + 720);
    if ((v4 & 1) == 0)
    {
      v19(*(v1 + 600), *(v1 + 560));

      goto LABEL_3;
    }

    v8 = (v1 + 712);
    v4 = *(v1 + 696);
    v20 = *(v1 + 632);
    v0 = *(v1 + 600);
    v21 = *(v1 + 560);
    sub_1928FC07C(v20, &qword_1EAE12E10, &qword_192FBCDA0);

    v11(v20, v0, v21);
    v15 = v20;
    v16 = v21;
  }

  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
LABEL_9:
  v22 = *v8;
  v23 = *(v1 + 704) + 1;
  if (v23 == *(v1 + 680))
  {
    OUTLINED_FUNCTION_81_10();
    v24 = OUTLINED_FUNCTION_48();
    sub_1928F9518(v24, v25, v26, v27);
    v28 = OUTLINED_FUNCTION_75_8();
    if (__swift_getEnumTagSinglePayload(v28, v29, v0) == 1)
    {
      v30 = *(v1 + 608);

      sub_1928FC07C(v30, &qword_1EAE12E10, &qword_192FBCDA0);
      if (qword_1ED6DDB28 != -1)
      {
        OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
      v32 = OUTLINED_FUNCTION_47(v31);
      OUTLINED_FUNCTION_50(v32, xmmword_192FBCD50);
      OUTLINED_FUNCTION_51_10("StoreReviewGatingController: no prompts from this group yet");
      v33 = sub_192F96E3C();
      if (OUTLINED_FUNCTION_14_18(v33))
      {
        v34 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
        }

        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_71();
        v35 = swift_allocObject();
        v36 = OUTLINED_FUNCTION_116(v35);
        OUTLINED_FUNCTION_38_10(v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
        v37 = sub_1928FD924();
        OUTLINED_FUNCTION_106(v37, v38, v39, v37);
        OUTLINED_FUNCTION_30_0();

        objc_autoreleasePoolPop(v34);
        v40 = objc_autoreleasePoolPush();
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
        v42 = OUTLINED_FUNCTION_90(v41);
        OUTLINED_FUNCTION_78(v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
        *(v52 + 56) = MEMORY[0x1E69E6158];
        v53 = sub_1928FDB30();
        OUTLINED_FUNCTION_137(v53);
        OUTLINED_FUNCTION_139("%{public}@", v54, v55, &dword_192869000);

        objc_autoreleasePoolPop(v40);
      }

      v56 = *(v1 + 632);
    }

    else
    {
      v61 = OUTLINED_FUNCTION_44_10();
      v62(v61);
      sub_192F95CEC();
      sub_192F95CDC();
      if (v63 >= v2)
      {
        v56 = *(v1 + 632);
        v133 = *(v1 + 584);
        v134 = *(v1 + 576);
        v135 = *(v1 + 568);
        v136 = *(v1 + 560);

        v137 = *(v135 + 8);
        v137(v134, v136);
        v137(v133, v136);
      }

      else
      {
        if (qword_1ED6DDB28 != -1)
        {
          OUTLINED_FUNCTION_1_61(&qword_1ED6DDB28);
        }

        v64 = qword_1ED6DDB30;
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
        v66 = OUTLINED_FUNCTION_47(v65);
        OUTLINED_FUNCTION_50(v66, xmmword_192FBCD50);
        sub_19287AEE0();
        v156 = v67;
        OUTLINED_FUNCTION_45_12();
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v68);
        *(v1 + 200) = MEMORY[0x1E69E6158];
        if (v7)
        {
          v69 = v22;
        }

        else
        {
          v69 = 0;
        }

        v70 = 0xE000000000000000;
        if (v7)
        {
          v70 = v7;
        }

        *(v1 + 176) = v69;
        *(v1 + 184) = v70;
        sub_1928F9518(v1 + 176, v1 + 208, &unk_1EAE131B0, &qword_192FBD860);
        OUTLINED_FUNCTION_79_8();
        OUTLINED_FUNCTION_70_6();
        if ((OUTLINED_FUNCTION_103(v71, v72, v73, v74, v75, v76, v77, v78, v147, v150, v153, v156) & 1) == 0)
        {
          OUTLINED_FUNCTION_7_0();
          v4 = v140;
        }

        v79 = *(v4 + 16);
        if (v79 >= *(v4 + 24) >> 1)
        {
          OUTLINED_FUNCTION_142();
          v4 = v141;
        }

        v80 = *(v1 + 584);
        v81 = *(v1 + 568);
        v82 = *(v1 + 560);
        *(v4 + 16) = v79 + 1;
        OUTLINED_FUNCTION_69_10();
        OUTLINED_FUNCTION_14_28(v83, *(v1 + 16), *(v1 + 32));
        sub_1928FC07C(v1 + 176, &unk_1EAE131B0, &qword_192FBD860);
        v56 = &v156;
        v84._countAndFlagsBits = 544497952;
        v84._object = 0xE400000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v84);
        *(v1 + 264) = v82;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 240));
        (*(v81 + 16))(boxed_opaque_existential_0, v80, v82);
        OUTLINED_FUNCTION_77_10();
        OUTLINED_FUNCTION_56_4();
        v86 = sub_19286D180(v1 + 272, v1 + 56);
        *(v1 + 88) = 3;
        if ((OUTLINED_FUNCTION_103(v86, v87, v88, v89, v90, v91, v92, v93, v148, v151, v154, v156) & 1) == 0)
        {
          OUTLINED_FUNCTION_7_0();
          v56 = v142;
        }

        OUTLINED_FUNCTION_24();
        if (v94)
        {
          OUTLINED_FUNCTION_142();
          v56 = v143;
        }

        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_14_28(v95, *(v1 + 56), *(v1 + 72));
        v96 = &qword_192FBD860;
        OUTLINED_FUNCTION_54_0();
        sub_1928FC07C(v97, v98, v99);
        OUTLINED_FUNCTION_45_12();
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v100);
        OUTLINED_FUNCTION_59_7(MEMORY[0x1E69E63B0]);
        v101 = OUTLINED_FUNCTION_78_10();
        *(v1 + 128) = 3;
        if ((OUTLINED_FUNCTION_103(v101, v102, v103, v104, v105, v106, v107, v108, v149, v152, v155, v156) & 1) == 0)
        {
          OUTLINED_FUNCTION_7_0();
          v56 = v144;
          v156 = v144;
        }

        OUTLINED_FUNCTION_24();
        if (v94)
        {
          OUTLINED_FUNCTION_142();
          v56 = v145;
        }

        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_14_28(v109, *(v1 + 96), *(v1 + 112));
        sub_1928FC07C(v1 + 304, &unk_1EAE131B0, &qword_192FBD860);
        OUTLINED_FUNCTION_45_12();
        v110._countAndFlagsBits = 0xD000000000000010;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v110);
        v66[2].n128_u64[0] = v156;
        sub_192F96E3C();
        OUTLINED_FUNCTION_165();
        if (os_log_type_enabled(v64, v111))
        {
          v112 = objc_autoreleasePoolPush();
          if (qword_1ED6DF1A0 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
          }

          OUTLINED_FUNCTION_72();
          OUTLINED_FUNCTION_71();
          v113 = swift_allocObject();
          v114 = OUTLINED_FUNCTION_116(v113);
          OUTLINED_FUNCTION_37_15(v114);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
          v115 = sub_1928FD924();
          v56 = OUTLINED_FUNCTION_106(v115, v116, v117, v115);

          objc_autoreleasePoolPop(v112);
          v96 = objc_autoreleasePoolPush();
          v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
          v119 = OUTLINED_FUNCTION_90(v118);
          OUTLINED_FUNCTION_78(v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
          *(v129 + 56) = MEMORY[0x1E69E6158];
          v130 = sub_1928FDB30();
          OUTLINED_FUNCTION_137(v130);
          OUTLINED_FUNCTION_60();
          sub_192F9622C(v131);

          objc_autoreleasePoolPop(v96);
        }

        OUTLINED_FUNCTION_60_5();
        v132 = *(v82 + 8);
        v132(&unk_1EAE131B0, v96);
        v132(v64, v96);
      }
    }

    sub_1928FC07C(v56, &qword_1EAE12E10, &qword_192FBCDA0);
    OUTLINED_FUNCTION_61_12(*(v1 + 632));

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_46_12();

    __asm { BRAA            X2, X16 }
  }

  *(v1 + 704) = v23;
  *(v1 + 696) = v7;
  *(v1 + 688) = v22;
  OUTLINED_FUNCTION_34_17(*(v1 + 664) + 16 * v23);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_46_12();

  return MEMORY[0x1EEE6DFA0](v57, v58, v59);
}