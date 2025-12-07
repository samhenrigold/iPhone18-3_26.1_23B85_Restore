uint64_t sub_237E83124()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 952) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E83224()
{
  v82 = v0 + 78;
  v1 = v0[116];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
  sub_237EF6A90();
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 262);
  v6 = v0 + 71;
  sub_237D0FC4C(v1, v5, v7, v8, v9);
  v89 = v0[119];
  while (1)
  {
    *(v0 + 120) = v5;
    *(v0 + 1056) = v10 & 1;
    v11 = v0[82];
    if (v11)
    {
      break;
    }

    v12 = OUTLINED_FUNCTION_14_63();
    v14 = (v13 + 1);
    v16 = (*(v15 + 8))(v12);
    if (v14 == v6)
    {

      if ((sub_237D0510C() & 1) == 0)
      {
        v74 = FullyConnectedNetworkRegressorModel.debugDescription.getter();
        sub_237D05198(v74, v75);
      }

      OUTLINED_FUNCTION_3_95();
      v76 = OUTLINED_FUNCTION_24_37();
      v77(v76);
      v78 = OUTLINED_FUNCTION_6_74();
      v79(v78);
      v80 = OUTLINED_FUNCTION_22_38();
      v81(v80);

      OUTLINED_FUNCTION_10_3();
LABEL_17:
      OUTLINED_FUNCTION_52_13();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_35_20(v16);
    sub_237EF6B60();
    OUTLINED_FUNCTION_42_18();
    OUTLINED_FUNCTION_6_38();
    sub_237C96710(&qword_27DEB24C0, &qword_27DEB24B8, &qword_237F118C8, v17);
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B8, &qword_237F118C8);
      sub_237EF91A0();
      v18 = v0[92];
      v19 = v0[89];
      if (v0[77])
      {
        OUTLINED_FUNCTION_56_16();
        v20();

        v21 = v18;
        v22 = 0;
      }

      else
      {
        v21 = OUTLINED_FUNCTION_38_7();
      }

      __swift_storeEnumTagSinglePayload(v21, v22, 1, v19);
      v23 = v0[89];
      v24 = OUTLINED_FUNCTION_38_7();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, v25, v23);
      v27 = v0[110];
      if (EnumTagSinglePayload == 1)
      {
        break;
      }

      v87 = v0[107];
      v28 = v0[88];
      v29 = v0;
      v30 = v0[87];
      v31 = v0[86];
      v32 = OUTLINED_FUNCTION_60_10();
      v34 = v33(v32);
      v35 = MEMORY[0x2383E24F0](v34);
      v36 = OUTLINED_FUNCTION_48_14();
      sub_237E85270(v36, v37, v38, v39, v40, v31, v41, v87, v30, v28, v82);
      if (v89)
      {
        v53 = v29[109];
        v86 = v29[108];
        v88 = v29[110];
        v54 = v29[101];
        v55 = v29[100];
        v56 = v29[99];
        v57 = v29[96];
        v84 = v29[95];
        v85 = v29[98];
        v58 = v29[94];
        v83 = v29[91];
        v59 = v29[90];
        v60 = v29[89];

        objc_autoreleasePoolPop(v35);
        (*(v55 + 8))(v54, v56);
        sub_237E868B4(v58);
        (*(v59 + 8))(v83, v60);
        (*(v57 + 8))(v85, v84);
        (*(v53 + 8))(v88, v86);

        goto LABEL_17;
      }

      objc_autoreleasePoolPop(v35);
      v42 = OUTLINED_FUNCTION_21_48();
      v43(v42);
      v89 = 0;
      v0 = v29;
    }

    v6 = v0[108];
    result = sub_237E868B4(v0[94]);
    v45 = *(v27 + *(v6 + 13));
    v0[117] = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_44_19();
    *(v27 + v46) = v47;
    v48 = sub_237EF8DD0();
    v10 = 0;
    v5 = 0.0;
    if ((v48 & 1) == 0)
    {
      OUTLINED_FUNCTION_25_36();
      v49 = swift_task_alloc();
      v50 = OUTLINED_FUNCTION_43_20(v49);
      *v50 = v51;
      OUTLINED_FUNCTION_1_112(v50);
      OUTLINED_FUNCTION_12_56();
      OUTLINED_FUNCTION_52_13();

      return sub_237E853B0();
    }
  }

  v63 = v0[83];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8, &qword_237F118D0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_32_6(inited, xmmword_237F03530);
  sub_237C70604(v11, v63);
  sub_237EF6A90();
  OUTLINED_FUNCTION_54_10();
  v65 = sub_237EF8230();
  OUTLINED_FUNCTION_16_51(v65);
  v66 = swift_task_alloc();
  v0[122] = v66;
  *v66 = v0;
  OUTLINED_FUNCTION_0_92(v66);
  OUTLINED_FUNCTION_15_46();
  OUTLINED_FUNCTION_59_10(v67);
  OUTLINED_FUNCTION_52_13();

  return sub_237E859F8(v68, v69, v70, v71, v72);
}

uint64_t sub_237E837E4()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21_0();
  v7 = v6;
  OUTLINED_FUNCTION_14_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v10 = v9;
  v7[123] = v0;

  if (v0)
  {
  }

  else
  {
    v7[124] = v3;
    v7[125] = v5;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E83908()
{
  v94 = v0;
  v1 = *(v0 + 125);
  v2 = *(v0 + 124);
  v3 = v0[121];
  swift_isUniquelyReferenced_nonNull_native();
  sub_237C91610(0x676E696E69617274, 0xEE00726F7272655FLL, v1);
  swift_isUniquelyReferenced_nonNull_native();
  v93 = v3;
  sub_237C91610(0xD000000000000012, 0x8000000237EFCC20, v2);
  v4 = v3;
  v0[126] = v3;
  if ((sub_237EF8DD0() & 1) == 0)
  {
    v22 = *(v0 + 2);
    *(v0 + 25) = *(v0 + 1);
    *(v0 + 26) = v22;
    v23 = *(v0 + 4);
    *(v0 + 27) = *(v0 + 3);
    *(v0 + 28) = v23;
    v24 = swift_task_alloc();
    v0[127] = v24;
    *v24 = v0;
    v24[1] = sub_237E8404C;
    v25 = v0[110];
LABEL_8:
    OUTLINED_FUNCTION_59_10(v25);
    OUTLINED_FUNCTION_53_13();

    return sub_237E859F8(v26, v27, v28, v29, v30);
  }

  v92 = v0[123];
  v5 = *(v0 + 1056);
  v6 = v0[117];
  v7 = v0[115];
  v8 = v0[83];
  v9 = v0[82];
  v10 = sub_237C908A4(v4);

  v0[65] = 0xD00000000000001ELL;
  v0[66] = 0x8000000237F1C7A0;
  v0[67] = v6;
  v0[68] = v7;
  *(v0 + 552) = 0;
  v0[70] = v10;
  v9(v0 + 65);
  sub_237C5EE40(v9, v8);
  v11 = v0[70];

  if (v5)
  {

    v12 = OUTLINED_FUNCTION_31_0();
    v13(v12);
LABEL_4:
    if ((sub_237D0510C() & 1) == 0)
    {
      v14 = FullyConnectedNetworkRegressorModel.debugDescription.getter();
      sub_237D05198(v14, v15);
    }

    OUTLINED_FUNCTION_3_95();
    v16 = OUTLINED_FUNCTION_24_37();
    v17(v16);
    v18 = OUTLINED_FUNCTION_6_74();
    v19(v18);
    v20 = OUTLINED_FUNCTION_22_38();
    v21(v20);

    OUTLINED_FUNCTION_10_3();
LABEL_25:
    OUTLINED_FUNCTION_53_13();

    __asm { BRAA            X1, X16 }
  }

  v83 = v0 + 78;
  while (1)
  {
    v33 = OUTLINED_FUNCTION_14_63();
    v35 = v34 + 1;
    v37 = (*(v36 + 8))(v33);
    if (v35 == v11)
    {

      goto LABEL_4;
    }

    OUTLINED_FUNCTION_35_20(v37);
    sub_237EF6B60();
    OUTLINED_FUNCTION_42_18();
    v82 = v38;
    OUTLINED_FUNCTION_6_38();
    sub_237C96710(&qword_27DEB24C0, &qword_27DEB24B8, &qword_237F118C8, v39);
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B8, &qword_237F118C8);
      sub_237EF91A0();
      v40 = v0[92];
      v41 = v0[89];
      if (v0[77])
      {
        v93 = v0[77];
        v82(&v93);

        v42 = v40;
        v43 = 0;
      }

      else
      {
        v42 = v0[92];
        v43 = 1;
      }

      __swift_storeEnumTagSinglePayload(v42, v43, 1, v41);
      v44 = v0[92];
      v45 = v0[89];
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v45);
      v47 = v0[110];
      if (EnumTagSinglePayload == 1)
      {
        break;
      }

      v88 = v0[106];
      v90 = v0[107];
      v86 = v0[105];
      v48 = v0[98];
      v49 = v0;
      v50 = v0[91];
      v51 = v0[90];
      v52 = v0[88];
      v53 = v0[87];
      v54 = v0[86];
      v55 = v49[85];
      v56 = (*(v51 + 32))(v50, v44, v45);
      v57 = MEMORY[0x2383E24F0](v56);
      sub_237E85270(v48, v47, v50, v86, v55, v54, v88, v90, v53, v52, v83);
      if (v92)
      {
        v68 = v49[109];
        v89 = v49[108];
        v91 = v49[110];
        v69 = v49[101];
        v70 = v49[100];
        v71 = v49[99];
        v72 = v49[96];
        v85 = v49[95];
        v87 = v49[98];
        v73 = v49[94];
        v84 = v49[91];
        v74 = v49[90];
        v75 = v49[89];

        objc_autoreleasePoolPop(v57);
        (*(v70 + 8))(v69, v71);
        sub_237E868B4(v73);
        (*(v74 + 8))(v84, v75);
        (*(v72 + 8))(v87, v85);
        (*(v68 + 8))(v91, v89);
        OUTLINED_FUNCTION_32_29();

        goto LABEL_25;
      }

      objc_autoreleasePoolPop(v57);
      v58 = OUTLINED_FUNCTION_21_48();
      v59(v58);
      v92 = 0;
      v0 = v49;
    }

    v11 = v0[108];
    result = sub_237E868B4(v0[94]);
    v60 = *(v47 + *(v11 + 52));
    v0[117] = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_44_19();
    *(v47 + v61) = v62;
    if ((sub_237EF8DD0() & 1) == 0)
    {
      break;
    }

    v0[120] = 0;
    *(v0 + 1056) = 0;
    v63 = v0[82];
    if (v63)
    {
      v64 = v0[83];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8, &qword_237F118D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_237F03530;
      strcpy((inited + 32), "training_loss");
      *(inited + 46) = -4864;
      sub_237C70604(v63, v64);
      sub_237EF6A90();
      OUTLINED_FUNCTION_54_10();
      v66 = sub_237EF8230();
      OUTLINED_FUNCTION_16_51(v66);
      v67 = swift_task_alloc();
      v0[122] = v67;
      *v67 = v0;
      OUTLINED_FUNCTION_0_92(v67);
      OUTLINED_FUNCTION_15_46();
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_25_36();
  v78 = swift_task_alloc();
  v79 = OUTLINED_FUNCTION_43_20(v78);
  *v79 = v80;
  OUTLINED_FUNCTION_1_112(v79);
  OUTLINED_FUNCTION_12_56();
  OUTLINED_FUNCTION_53_13();

  return sub_237E853B0();
}

uint64_t sub_237E8404C()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21_0();
  v7 = v6;
  OUTLINED_FUNCTION_14_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v10 = v9;
  v7[128] = v0;

  if (v0)
  {
  }

  else
  {
    v7[129] = v3;
    v7[130] = v5;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E84170()
{
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 960);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237C91610(0x69746164696C6176, 0xEF73736F6C5F6E6FLL, v4);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237C91610(0xD000000000000010, 0x8000000237EFDE10, v1);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237C91610(0xD000000000000014, 0x8000000237EFDDF0, v2);
  v89 = *(v0 + 1024);
  v5 = *(v0 + 1056);
  v6 = *(v0 + 936);
  v7 = *(v0 + 920);
  v8 = *(v0 + 664);
  v9 = *(v0 + 656);
  v10 = sub_237C908A4(v3);

  *(v0 + 520) = 0xD00000000000001ELL;
  *(v0 + 528) = 0x8000000237F1C7A0;
  *(v0 + 536) = v6;
  *(v0 + 544) = v7;
  *(v0 + 552) = 0;
  *(v0 + 560) = v10;
  v11 = v0;
  v9(v0 + 520);
  sub_237C5EE40(v9, v8);

  if (v5)
  {

    v12 = OUTLINED_FUNCTION_21_48();
    v13(v12);
LABEL_3:
    if ((sub_237D0510C() & 1) == 0)
    {
      v14 = FullyConnectedNetworkRegressorModel.debugDescription.getter();
      sub_237D05198(v14, v15);
    }

    v16 = OUTLINED_FUNCTION_24_37();
    v17(v16);
    v18 = OUTLINED_FUNCTION_6_74();
    v19(v18);
    v20 = OUTLINED_FUNCTION_22_38();
    v21(v20);

    OUTLINED_FUNCTION_10_3();
LABEL_22:
    OUTLINED_FUNCTION_40_17();

    __asm { BRAA            X1, X16 }
  }

  v82 = (v0 + 624);
  while (1)
  {
    v22 = *(v11 + 920);
    v23 = *(v11 + 928) + 1;
    (*(*(v11 + 768) + 8))(*(v11 + 784), *(v11 + 760));
    if (v23 == v22)
    {

      goto LABEL_3;
    }

    ++*(v11 + 928);
    sub_237EF6A10();
    sub_237EF6B60();
    OUTLINED_FUNCTION_6_38();
    sub_237C96710(&qword_27DEB24C0, &qword_27DEB24B8, &qword_237F118C8, v24);
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B8, &qword_237F118C8);
      sub_237EF91A0();
      v25 = *(v11 + 736);
      v26 = *(v11 + 712);
      if (*(v11 + 616))
      {
        OUTLINED_FUNCTION_56_16();
        v27();

        v28 = v25;
        v29 = 0;
      }

      else
      {
        v28 = OUTLINED_FUNCTION_38_7();
      }

      __swift_storeEnumTagSinglePayload(v28, v29, 1, v26);
      v30 = *(v11 + 712);
      v31 = OUTLINED_FUNCTION_38_7();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, v32, v30);
      v34 = *(v11 + 880);
      if (EnumTagSinglePayload == 1)
      {
        break;
      }

      v87 = *(v11 + 856);
      v35 = *(v11 + 704);
      v36 = *(v11 + 696);
      v37 = *(v11 + 688);
      v38 = OUTLINED_FUNCTION_60_10();
      v40 = v39(v38);
      v41 = MEMORY[0x2383E24F0](v40);
      v42 = OUTLINED_FUNCTION_48_14();
      sub_237E85270(v42, v43, v44, v45, v46, v37, v47, v87, v36, v35, v82);
      if (v89)
      {
        v68 = *(v11 + 872);
        v86 = *(v11 + 864);
        v88 = *(v11 + 880);
        v69 = *(v11 + 808);
        v70 = *(v11 + 800);
        v71 = *(v11 + 792);
        v72 = *(v11 + 768);
        v84 = *(v11 + 760);
        v85 = *(v11 + 784);
        v73 = *(v11 + 752);
        v83 = *(v11 + 728);
        v74 = *(v11 + 720);
        v75 = *(v11 + 712);

        objc_autoreleasePoolPop(v41);
        (*(v70 + 8))(v69, v71);
        sub_237E868B4(v73);
        (*(v74 + 8))(v83, v75);
        (*(v72 + 8))(v85, v84);
        (*(v68 + 8))(v88, v86);
        OUTLINED_FUNCTION_32_29();

        goto LABEL_22;
      }

      objc_autoreleasePoolPop(v41);
      v48 = OUTLINED_FUNCTION_21_48();
      v49(v48);
      v89 = 0;
    }

    v50 = *(v11 + 864);
    result = sub_237E868B4(*(v11 + 752));
    v52 = *(v50 + 52);
    v53 = *(v34 + v52);
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    *(v11 + 936) = v55;
    if (v54)
    {
      __break(1u);
      return result;
    }

    *(v34 + v52) = v55;
    if ((sub_237EF8DD0() & 1) == 0)
    {
      break;
    }

    *(v11 + 960) = 0;
    *(v11 + 1056) = 0;
    v56 = *(v11 + 656);
    if (v56)
    {
      v57 = *(v11 + 664);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8, &qword_237F118D0);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_32_6(inited, xmmword_237F03530);
      sub_237C70604(v56, v57);
      sub_237EF6A90();
      inited[3].n128_f64[0] = *(v11 + 1052);
      sub_237C758C4();
      *(v11 + 968) = sub_237EF8230();
      v59 = *(v11 + 32);
      *(v11 + 336) = *(v11 + 16);
      *(v11 + 352) = v59;
      v60 = *(v11 + 64);
      *(v11 + 368) = *(v11 + 48);
      *(v11 + 384) = v60;
      v61 = swift_task_alloc();
      *(v11 + 976) = v61;
      *v61 = v11;
      OUTLINED_FUNCTION_0_92(v61);
      OUTLINED_FUNCTION_59_10(*(v11 + 880));
      OUTLINED_FUNCTION_40_17();

      return sub_237E859F8(v62, v63, v64, v65, v66);
    }
  }

  v78 = *(v11 + 32);
  *(v11 + 272) = *(v11 + 16);
  *(v11 + 288) = v78;
  v79 = *(v11 + 64);
  *(v11 + 304) = *(v11 + 48);
  *(v11 + 320) = v79;
  v80 = swift_task_alloc();
  *(v11 + 944) = v80;
  *v80 = v11;
  OUTLINED_FUNCTION_1_112(v80);
  OUTLINED_FUNCTION_40_17();

  return sub_237E853B0();
}

uint64_t sub_237E848DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v13 = v12[98];
  v14 = v12[96];
  v15 = v12[95];
  (*(v12[100] + 8))(v12[101], v12[99]);
  (*(v14 + 8))(v13, v15);
  v16 = OUTLINED_FUNCTION_31_0();
  v17(v16);
  OUTLINED_FUNCTION_7_73();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_237E849E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v12 = OUTLINED_FUNCTION_31_27();
  v13(v12);
  v14 = OUTLINED_FUNCTION_55_1();
  v15(v14);
  v16 = OUTLINED_FUNCTION_31_0();
  v17(v16);
  OUTLINED_FUNCTION_7_73();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_237E84AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v12 = OUTLINED_FUNCTION_31_27();
  v13(v12);
  v14 = OUTLINED_FUNCTION_55_1();
  v15(v14);
  v16 = OUTLINED_FUNCTION_31_0();
  v17(v16);
  OUTLINED_FUNCTION_7_73();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t FullyConnectedNetworkRegressor.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_2_0();
  v12 = v11;
  v10[20] = a9;
  v10[21] = a10;
  v10[18] = v11;
  v10[19] = v13;
  v10[16] = v14;
  v10[17] = v15;
  v10[14] = v16;
  v10[15] = v17;
  v10[12] = v18;
  v10[13] = v19;
  v10[22] = *(v13 - 8);
  v10[23] = OUTLINED_FUNCTION_27_0();
  v10[24] = *(v12 - 8);
  v10[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_27_31();
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_23_2(v20, v21, v22);
}

uint64_t sub_237E84CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26_2();
  v12 = v10[22];
  v11 = v10[23];
  v13 = v10[19];
  v14 = v10[14];
  (*(v10[24] + 16))(v10[25], v10[13], v10[18]);
  v15 = sub_237EF7E90();
  type metadata accessor for AnnotatedFeature(0, v15, MEMORY[0x277D83A90], v16);
  v17 = sub_237EF8A90();
  v10[26] = v17;
  v10[10] = v17;
  (*(v12 + 16))(v11, v14, v13);
  v18 = sub_237EF8A90();
  v10[27] = v18;
  v10[11] = v18;
  v19 = swift_task_alloc();
  v10[28] = v19;
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  *v19 = v10;
  v19[1] = sub_237E84E2C;
  OUTLINED_FUNCTION_61_8(WitnessTable);
  OUTLINED_FUNCTION_45();

  return sub_237E8233C(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_237E84E2C()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();

    return v10();
  }
}

uint64_t sub_237E84F98()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

void sub_237E85000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24D0, &unk_237F11920);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11];
  v13 = v4[1];
  v32[0] = *v4;
  v32[1] = v13;
  v14 = v4[3];
  v32[2] = v4[2];
  v32[3] = v14;
  v21 = *(a2 + 16);
  v22 = a3;
  v23 = *(a2 + 24);
  v24 = a4;
  v25 = v32;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0, &unk_237F11860);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  sub_237C9339C(sub_237E8691C, v20, a3, v15, v16, a4);
  if (!v5)
  {
    v33 = v17;
    v18 = sub_237EF64F0();
    v19 = sub_237EF64E0();
    v30 = v18;
    v31 = MEMORY[0x277D2CD60];
    v28 = 0;
    v29 = v19;
    v26 = 0u;
    v27 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B8, &unk_237F1C880);
    sub_237C96710(&qword_27DEB24D8, &qword_27DEAE2B8, &unk_237F1C880, MEMORY[0x277D83980]);
    sub_237D7E5CC();
    sub_237C96710(&qword_27DEB24E8, &qword_27DEAE2B0, &unk_237F11860, MEMORY[0x277D2CC60]);
    sub_237E9194C(v12);
    sub_237EF6B70();
  }
}

uint64_t sub_237E85270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v22[1] = a1;
  v16 = sub_237EF6B10();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237EF8B90();
  if (v11)
  {
    *a11 = v11;
  }

  else
  {
    v21 = type metadata accessor for FullyConnectedNetworkRegressorModel(0, a4, a7, a8);
    sub_237E444D0(a3, v21);
    sub_237EF69F0();
    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_237E853B0()
{
  OUTLINED_FUNCTION_2_0();
  v0[9] = v1;
  v0[10] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v0[5] = v5;
  v0[6] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0, &unk_237F03680);
  OUTLINED_FUNCTION_18(v7);
  v0[11] = OUTLINED_FUNCTION_27_0();
  v8 = sub_237EF6B10();
  v0[12] = v8;
  OUTLINED_FUNCTION_6_1(v8);
  v0[13] = v9;
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237E854A0()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = v3[2];
  v0[16] = v5;
  *v4 = v5;
  v4[1] = v2;
  v6 = v3[3];
  v0[17] = v6;
  v4[2] = v6;
  v7 = v3[4];
  v0[18] = v7;
  v4[3] = v7;
  v4[4] = v1;
  KeyPath = swift_getKeyPath();

  v9 = swift_task_alloc();
  v9[2] = v2;
  v9[3] = v7;
  v9[4] = v1;
  v9[5] = KeyPath;
  OUTLINED_FUNCTION_26_30();
  v10 = sub_237EF7E90();
  OUTLINED_FUNCTION_45_19(v10, v11, v12, v13, MEMORY[0x277D84A98]);
  v15 = v14;
  v0[19] = v14;

  v0[2] = v15;
  v16 = swift_task_alloc();
  v0[20] = v16;
  v17 = OUTLINED_FUNCTION_26_30();
  type metadata accessor for FullyConnectedNetworkRegressorModel(v17, v18, v19, v7);
  sub_237EF8A60();
  OUTLINED_FUNCTION_19_46();
  OUTLINED_FUNCTION_18_44();
  *v16 = v0;
  v16[1] = sub_237E8561C;
  OUTLINED_FUNCTION_49_15();
  OUTLINED_FUNCTION_45();

  return Regressor.prediction<A>(from:)(v20, v21, v22, v23, v24);
}

uint64_t sub_237E8561C()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_14_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  *(v5 + 168) = v0;

  if (!v0)
  {
    *(v5 + 176) = v3;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237E85738()
{
  v24 = v0[17];
  v25 = v0[18];
  v23 = v0[16];
  v1 = v0[13];
  v27 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v28 = v0[12];
  v0[3] = v0[22];
  v26 = sub_237EF64B0();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8, &qword_237F07050);
  OUTLINED_FUNCTION_17_52();
  sub_237C96710(v8, v9, &qword_237F07050, v10);
  sub_237EF6B30();
  v11 = swift_task_alloc();
  *v11 = v23;
  v11[1] = v3;
  v11[2] = v24;
  v11[3] = v25;
  v11[4] = v2;
  KeyPath = swift_getKeyPath();

  v13 = swift_task_alloc();
  v13[2] = v3;
  v13[3] = v25;
  v13[4] = v2;
  v13[5] = KeyPath;
  sub_237C9339C(sub_237E8695C, v13, v3, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v2);
  v15 = v14;

  v0[4] = v15;
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v26);
  sub_237EF6B30();
  sub_237EF6500();
  v19 = *(v1 + 8);
  v19(v27, v28);
  v20 = OUTLINED_FUNCTION_55_1();
  (v19)(v20);

  OUTLINED_FUNCTION_10_3();

  return v21();
}

uint64_t sub_237E85988()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237E859F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  OUTLINED_FUNCTION_23();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237E85A2C()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = swift_task_alloc();
  v5 = v3[2];
  v0[12] = v5;
  *v4 = v5;
  v4[1] = v2;
  v6 = v3[3];
  v0[13] = v6;
  v4[2] = v6;
  v7 = v3[4];
  v0[14] = v7;
  v4[3] = v7;
  v4[4] = v1;
  KeyPath = swift_getKeyPath();

  v9 = swift_task_alloc();
  v9[2] = v2;
  v9[3] = v7;
  v9[4] = v1;
  v9[5] = KeyPath;
  OUTLINED_FUNCTION_26_30();
  v10 = sub_237EF7E90();
  OUTLINED_FUNCTION_45_19(v10, v11, v12, v13, MEMORY[0x277D84A98]);
  v15 = v14;
  v0[15] = v14;

  v0[2] = v15;
  v16 = swift_task_alloc();
  v0[16] = v16;
  v17 = OUTLINED_FUNCTION_26_30();
  type metadata accessor for FullyConnectedNetworkRegressorModel(v17, v18, v19, v7);
  sub_237EF8A60();
  OUTLINED_FUNCTION_19_46();
  OUTLINED_FUNCTION_18_44();
  *v16 = v0;
  v16[1] = sub_237E85BA8;
  OUTLINED_FUNCTION_49_15();
  OUTLINED_FUNCTION_45();

  return Regressor.prediction<A>(from:)(v20, v21, v22, v23, v24);
}

uint64_t sub_237E85BA8()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_14_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  *(v5 + 136) = v0;

  if (!v0)
  {
    *(v5 + 144) = v3;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237E85CC4()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[10];
  v7 = swift_task_alloc();
  *v7 = v5;
  v7[1] = v6;
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  KeyPath = swift_getKeyPath();

  v9 = swift_task_alloc();
  v9[2] = v6;
  v9[3] = v3;
  v9[4] = v4;
  v9[5] = KeyPath;
  sub_237C9339C(sub_237E86888, v9, v6, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v4);
  v11 = v10;

  v0[3] = v1;
  v0[4] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8, &qword_237F07050);
  sub_237E4540C();
  OUTLINED_FUNCTION_17_52();
  sub_237C96710(v12, v13, &qword_237F07050, v14);
  OUTLINED_FUNCTION_37_23();
  rootMeanSquaredError<A, B, C>(_:_:)(v15, v16, v17);
  v0[5] = v1;
  v0[6] = v11;
  OUTLINED_FUNCTION_37_23();
  maximumAbsoluteError<A, B, C>(_:_:)();

  OUTLINED_FUNCTION_10_3();

  return v18();
}

uint64_t sub_237E85EB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return FullyConnectedNetworkRegressor.fitted<A>(to:eventHandler:)();
}

uint64_t sub_237E85F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_237C6A904;

  return FullyConnectedNetworkRegressor.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v21, a6, a7, a8, v20);
}

uint64_t sub_237E86090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v41 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0, &unk_237F03680);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v40 = v37 - v6;
  v7 = *(a2 + 16);
  v37[1] = *(a2 + 24);
  v38 = v7;
  v8 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = v37 - v12;
  v14 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v39 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = v37 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v37 - v23;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v37 - v27;
  (*(v10 + 16))(v13, v42, v8, v26);
  sub_237D4A7B4(v13, v38, v21);
  sub_237EF69B0();
  v29 = *(v16 + 8);
  v29(v21, v14);
  sub_237EF6AE0();
  v29(v24, v14);
  type metadata accessor for AnnotatedFeature(0, v8, MEMORY[0x277D83A90], v30);
  sub_237EF64B0();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  sub_237EF6B20();
  v35 = *(v16 + 16);
  v35(v21, v28, v14);
  v35(v39, v24, v14);
  sub_237EF6410();
  v29(v24, v14);
  return (v29)(v28, v14);
}

uint64_t sub_237E863B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X7>, uint64_t a6@<X8>)
{
  v10 = type metadata accessor for FullyConnectedNetworkRegressor(0, a2, a3, a4);
  result = sub_237E86090(a1, v10, a6);
  if (v6)
  {
    *a5 = v6;
  }

  return result;
}

uint64_t sub_237E86418@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v31 = a1;
  v34 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6A8, &qword_237F08EB8);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v7 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  v33 = v11;
  MEMORY[0x28223BE20](v12);
  v32 = &v30 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  sub_237C9339C(sub_237E866D0, 0, a1, v7, MEMORY[0x277D84A98], a2);
  v20 = sub_237EF6430();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  sub_237EF6970();
  sub_237C9339C(sub_237E866FC, 0, v31, v7, MEMORY[0x277D84A98], a2);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v20);
  sub_237EF6970();
  v27 = *(v9 + 16);
  v27(v32, v19, v7);
  v27(v33, v16, v7);
  sub_237EF6410();
  v28 = *(v9 + 8);
  v28(v16, v7);
  return (v28)(v19, v7);
}

uint64_t sub_237E86728(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0, &unk_237F11860);
  a3(v10);
  sub_237EF6950();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_237E8684C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E868B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24A8, &qword_237F118B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_73()
{
}

__n128 OUTLINED_FUNCTION_16_51(uint64_t a1)
{
  *(v1 + 968) = a1;
  v2 = *(v1 + 32);
  *(v1 + 336) = *(v1 + 16);
  *(v1 + 352) = v2;
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *(v1 + 368) = result;
  *(v1 + 384) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_44()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_19_46()
{

  return swift_getWitnessTable();
}

__n128 OUTLINED_FUNCTION_25_36()
{
  v1 = *(v0 + 32);
  *(v0 + 272) = *(v0 + 16);
  *(v0 + 288) = v1;
  result = *(v0 + 48);
  v3 = *(v0 + 64);
  *(v0 + 304) = result;
  *(v0 + 320) = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_27_31()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 + 48) = result;
  *(v1 + 64) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_27()
{
  v1 = v0[101];
  sub_237C5EE40(v0[82], v0[83]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_32_29()
{
}

uint64_t OUTLINED_FUNCTION_35_20(uint64_t a1)
{
  ++*(v1 + 928);

  return sub_237EF6A10();
}

void OUTLINED_FUNCTION_45_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_237C9339C(v5, v8, v7, v9, a5, v6);
}

unint64_t OUTLINED_FUNCTION_54_10()
{
  *(v1 + 48) = *(v0 + 1052);

  return sub_237C758C4();
}

uint64_t OUTLINED_FUNCTION_61_8(uint64_t a1)
{
  v3 = *(v1 + 96);
  *(v2 + 16) = a1;
  *(v2 + 24) = a1;
  return v3;
}

uint64_t sub_237E86DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E86E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237EF8CF0();
  swift_getWitnessTable();
  sub_237EF8A90();
  sub_237EF8A60();
  swift_getWitnessTable();
  v4 = sub_237EF8800();

  sub_237EF8260();
  swift_getWitnessTable();
  sub_237EF8D70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0, &qword_237F0A6B0);
  sub_237E87168();
  sub_237EFA000();

  sub_237EF9380();
  swift_getWitnessTable();
  sub_237EF8240();
  return v4;
}

uint64_t sub_237E87070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_237EF8260();
  sub_237EF8250();
  swift_getWitnessTable();
  v5 = sub_237EF8860();

  return v5 & 1;
}

unint64_t sub_237E87168()
{
  result = qword_280C8E200;
  if (!qword_280C8E200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEADDA0, &qword_237F0A6B0);
    sub_237C85170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8E200);
  }

  return result;
}

uint64_t sub_237E871F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  sub_237EF6310();
  OUTLINED_FUNCTION_1();
  v32 = v7;
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237EF62C0();
  sub_237EF62B0();
  sub_237EF60D0();
  v11 = v10;

  if (v11)
  {
    sub_237EF8260();
    v12 = sub_237EF62B0();
    v14 = v13;
    v15 = sub_237CD1200();
    OUTLINED_FUNCTION_45_0(&type metadata for TabularPipelineDataError, v15);
    *v16 = v36;
    *(v16 + 8) = a3;
    *(v16 + 16) = v12;
    *(v16 + 24) = v14;
    v17 = v35;
    *(v16 + 32) = v34;
    *(v16 + 48) = v17;
    *(v16 + 64) = 0;
  }

  else
  {
    result = sub_237EF60F0();
    if (result)
    {
      return result;
    }

    sub_237EF8260();
    v19 = sub_237EF62B0();
    v30 = v20;
    v31 = v19;
    sub_237EF62B0();
    sub_237EF61D0();

    sub_237EF62F0();
    (*(v32 + 8))(v9, v33);
    v21 = sub_237EFA220();
    v23 = v22;
    *&v34 = a4;
    swift_getMetatypeMetadata();
    v24 = sub_237EF85D0();
    v26 = v25;
    v27 = sub_237CD1200();
    OUTLINED_FUNCTION_45_0(&type metadata for TabularPipelineDataError, v27);
    *v28 = v36;
    *(v28 + 8) = a3;
    v29 = v30;
    *(v28 + 16) = v31;
    *(v28 + 24) = v29;
    *(v28 + 32) = v21;
    *(v28 + 40) = v23;
    *(v28 + 48) = v24;
    *(v28 + 56) = v26;
    *(v28 + 64) = 1;
  }

  return swift_willThrow();
}

uint64_t DataFrame.init<A, B, C>(_:featuresColumnID:annotationsColumnID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a3;
  v39 = a2;
  v34 = a1;
  v40 = a8;
  v44 = sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v43 = v13;
  MEMORY[0x28223BE20](v14);
  v37 = &v32 - v15;
  v42 = sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v41 = v16;
  MEMORY[0x28223BE20](v17);
  v35 = &v32 - v18;
  v38 = sub_237EF62C0();
  v33 = sub_237EF62B0();
  v57 = a4;
  v58 = a5;
  v59 = a6;
  v60 = a7;
  KeyPath = swift_getKeyPath();
  v54 = a4;
  v55 = a7;
  v56 = KeyPath;
  sub_237C8FFEC(sub_237E87B10, v53, a4, a5, MEMORY[0x277D84A98], a7, MEMORY[0x277D84AC0], v20);
  OUTLINED_FUNCTION_1_113();
  v61 = a1;
  sub_237EF8A60();
  swift_getWitnessTable();
  sub_237EF6220();
  v21 = sub_237EF62C0();
  v22 = v36;
  v33 = sub_237EF62B0();
  v32 = v23;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  v52 = a7;
  v24 = swift_getKeyPath();
  v46 = a4;
  v47 = a7;
  v48 = v24;
  v25 = a7;
  v26 = v34;
  v27 = v34;
  sub_237C8FFEC(sub_237D66284, v45, a4, a6, MEMORY[0x277D84A98], v25, MEMORY[0x277D84AC0], v28);
  OUTLINED_FUNCTION_1_113();
  v61 = v27;
  sub_237EF8A60();
  swift_getWitnessTable();
  v29 = v37;
  sub_237EF6220();
  sub_237EF6190();
  v30 = v35;
  sub_237EF6110();
  sub_237EF6110();
  (*(*(v21 - 8) + 8))(v22, v21);
  (*(*(v38 - 8) + 8))(v39);
  (*(*(a4 - 8) + 8))(v26, a4);
  (*(v43 + 8))(v29, v44);
  return (*(v41 + 8))(v30, v42);
}

uint64_t sub_237E87894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_237EF6310();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  sub_237EF60D0();
  if (v16)
  {
    v17 = sub_237CD1200();
    OUTLINED_FUNCTION_45_0(&type metadata for TabularPipelineDataError, v17);
    *v18 = a3;
    *(v18 + 8) = a4;
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    v19 = v34;
    *(v18 + 32) = v33;
    *(v18 + 48) = v19;
    *(v18 + 64) = 0;
    swift_willThrow();
    sub_237EF8260();
    return sub_237EF8260();
  }

  else
  {
    OUTLINED_FUNCTION_2_108();
    sub_237EF62F0();
    v21 = v15;
    v22 = *(v10 + 8);
    v22(v21, v8);
    result = swift_dynamicCastMetatype();
    if (!result)
    {
      result = swift_dynamicCastMetatype();
      if (!result)
      {
        result = swift_dynamicCastMetatype();
        if (!result)
        {
          result = swift_dynamicCastMetatype();
          if (!result)
          {
            v31 = a4;
            sub_237EF8260();
            sub_237EF8260();
            v23 = v22;
            v24 = v32;
            OUTLINED_FUNCTION_2_108();
            sub_237EF62F0();
            v23(v24, v8);
            v25 = sub_237EFA220();
            v27 = v26;
            v28 = sub_237CD1200();
            OUTLINED_FUNCTION_45_0(&type metadata for TabularPipelineDataError, v28);
            v29 = v31;
            *v30 = a3;
            *(v30 + 8) = v29;
            *(v30 + 16) = a1;
            *(v30 + 24) = a2;
            *(v30 + 32) = v25;
            *(v30 + 40) = v27;
            strcpy((v30 + 48), "numeric type");
            *(v30 + 61) = 0;
            *(v30 + 62) = -5120;
            *(v30 + 64) = 1;
            return swift_willThrow();
          }
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_113()
{
  *(v1 - 336) = v0;
}

uint64_t OUTLINED_FUNCTION_2_108()
{

  return sub_237EF61D0();
}

void sub_237E87B68(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    sub_237D0B7D4();
    v3 = v4;
  }

  *v1 = v3;
}

void *sub_237E87BCC()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[6];
  v5 = [v4 lock];
  v13 = MEMORY[0x277D84F90];
  if (v2[3])
  {

    sub_237D0B7D4();
    OUTLINED_FUNCTION_4_90();
    if (v7)
    {
      OUTLINED_FUNCTION_0_93(v6);
      sub_237D0B7D4();
    }

    OUTLINED_FUNCTION_3_96();
  }

  if (v2[4])
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237D0B7D4();
    }

    OUTLINED_FUNCTION_4_90();
    if (v7)
    {
      OUTLINED_FUNCTION_0_93(v8);
      sub_237D0B7D4();
    }

    OUTLINED_FUNCTION_3_96();
  }

  MEMORY[0x28223BE20](v5);
  v12[2] = v2;
  v12[3] = &v13;
  v9 = sub_237E896D0(0x676E696E69617274, 0xE800000000000000, sub_237E89994, v12);
  if (!v1)
  {
    v3 = sub_237E88AC0(v9, v10);
  }

  [v4 unlock];
  return v3;
}

id sub_237E87DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  [v5 lock];
  sub_237EF85E0();
  sub_237EF85E0();
  v6 = XGBoosterSetParam();

  if (!v6)
  {
    return [v5 unlock];
  }

  result = XGBGetLastError();
  if (result)
  {
    sub_237EF8640();
    v8 = OUTLINED_FUNCTION_6_75();
    v9 = OUTLINED_FUNCTION_45_0(&type metadata for XGBoostError, v8);
    OUTLINED_FUNCTION_2_109(v9, v10);
    return [v5 unlock];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237E87EDC()
{
  v1 = *(v0 + 48);
  [v1 lock];
  XGBoosterGetNumFeature();
  [v1 unlock];
  return 0;
}

id sub_237E87F70(uint64_t a1)
{
  v2 = *(v1 + 48);
  [v2 lock];
  result = XGBoosterUpdateOneIter();
  if (result)
  {
    result = XGBGetLastError();
    if (result)
    {
      sub_237EF8640();
      v4 = OUTLINED_FUNCTION_6_75();
      v5 = OUTLINED_FUNCTION_45_0(&type metadata for XGBoostError, v4);
      OUTLINED_FUNCTION_2_109(v5, v6);
      return [v2 unlock];
    }
  }

  else
  {
    v7 = *(v1 + 40);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (!v8)
    {
      *(v1 + 40) = v9;
      return [v2 unlock];
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237E8802C(uint64_t result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      v16 = result >> 32;
      if (result >> 32 >= result)
      {
        v17 = result;

        v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v13 = v17;
        v14 = v16;
        goto LABEL_8;
      }

      __break(1u);
      return result;
    case 2uLL:
      v9 = *(result + 16);
      v8 = *(result + 24);

      v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = v9;
      v14 = v8;
LABEL_8:
      v15 = sub_237E898EC(v13, v14, v10, v11, v12, a3);
      goto LABEL_9;
    case 3uLL:

      v7 = 0;
      v6 = 0;
      goto LABEL_5;
    default:

      v6 = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = v5;
LABEL_5:
      v15 = sub_237E89858(v7, v6, a3);
LABEL_9:
      v18 = v15;

      return v18;
  }
}

id sub_237E88118()
{
  v3 = *(v2 + 48);
  [v3 lock];
  if (XGBoosterPredictFromDMatrix())
  {
    if (XGBGetLastError())
    {
      v4 = sub_237EF8640();
      v6 = v5;
      v7 = sub_237D5206C();
      OUTLINED_FUNCTION_45_0(&type metadata for XGBoostError, v7);
      *v8 = v4;
      v8[1] = v6;
      swift_willThrow();
      return [v3 unlock];
    }

    __break(1u);
  }

  else
  {
    v9 = *(MEMORY[0x277D84F90] + 16);
    if (v9)
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = *(MEMORY[0x277D84F90] + 8 * v10 + 32);
        if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
        {
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
        }

        v11 *= v12;
        ++v10;
      }

      while (v9 != v10);
    }
  }

  result = sub_237EF9740("Fatal error", 11, 2, 0xD00000000000001BLL, 0x8000000237F015C0, "CreateMLComponents/XGBooster.swift", 34, 2, 183);
  __break(1u);
  return result;
}

id sub_237E88474(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  [v5 lock];

  if (!sub_237E8802C(a1, a2, v2))
  {
    return [v5 unlock];
  }

  result = XGBGetLastError();
  if (result)
  {
    sub_237EF8640();
    v7 = OUTLINED_FUNCTION_6_75();
    v8 = OUTLINED_FUNCTION_45_0(&type metadata for XGBoostError, v7);
    OUTLINED_FUNCTION_2_109(v8, v9);
    return [v5 unlock];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237E88538()
{
  v2 = *(v0 + 48);
  [v2 lock];
  if (!XGBoosterSaveModelToBuffer())
  {
    sub_237D14FC4();
    v1 = sub_237E894A0(v6, v7);
    [v2 unlock];
    return v1;
  }

  result = XGBGetLastError();
  if (result)
  {
    sub_237EF8640();
    v4 = OUTLINED_FUNCTION_6_75();
    OUTLINED_FUNCTION_45_0(&type metadata for XGBoostError, v4);
    *v5 = v0;
    v5[1] = v1;
    swift_willThrow();
    [v2 unlock];
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237E88668(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = 0;
  *(v2 + 48) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  if (!a1)
  {
    v8 = MEMORY[0x277D84F90];
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  v6 = *(a1 + 16);

  sub_237D0B7D4();
  v8 = v7;
  v9 = *(v7 + 16);
  OUTLINED_FUNCTION_4_90();
  if (v11)
  {
    OUTLINED_FUNCTION_0_93(v10);
    sub_237D0B7D4();
    v8 = v21;
  }

  *(v8 + 16) = v3;
  *(v8 + 8 * v9 + 32) = v6;
  if (a2)
  {
LABEL_5:
    v12 = *(a2 + 16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237D0B7D4();
      v8 = v22;
    }

    v13 = *(v8 + 16);
    OUTLINED_FUNCTION_4_90();
    if (v11)
    {
      OUTLINED_FUNCTION_0_93(v14);
      sub_237D0B7D4();
      v8 = v23;
    }

    *(v8 + 16) = v3;
    *(v8 + 8 * v13 + 32) = v12;
  }

LABEL_11:
  result = XGBoosterCreate();
  if (result)
  {

    result = XGBGetLastError();
    if (result)
    {
      v16 = sub_237EF8640();
      v18 = v17;
      v19 = sub_237D5206C();
      OUTLINED_FUNCTION_45_0(&type metadata for XGBoostError, v19);
      *v20 = v16;
      v20[1] = v18;
      swift_willThrow();

      swift_deallocPartialClassInstance();
      return v2;
    }

    __break(1u);
  }

  else
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_237E888B8()
{
  XGBoosterFree();

  return v0;
}

uint64_t sub_237E888F0()
{
  sub_237E888B8();

  return swift_deallocClassInstance();
}

uint64_t sub_237E88948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB5CC0, &qword_237F1C978);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F04760;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  if (__OFSUB__(*(a3 + 40), 1))
  {
    __break(1u);
  }

  sub_237E87B68(0);
  result = XGBoosterEvalOneIter();
  if (result)
  {

    result = XGBGetLastError();
    if (result)
    {
      v10 = sub_237EF8640();
      v12 = v11;
      sub_237D5206C();
      swift_allocError();
      *v13 = v10;
      v13[1] = v12;
      return swift_willThrow();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_237E88AC0(void *a1, unint64_t a2)
{
  v4 = sub_237EF5C70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86[1] = sub_237C758C4();
  v8 = sub_237EF8230();
  v92 = a1;
  v93 = a2;
  sub_237EF5C50();
  v9 = sub_237D05400();
  v10 = sub_237EF91D0();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v7, v4);
  v92 = v10;
  v93 = v12;
  sub_237EF5C50();
  v14 = sub_237EF91B0();
  v13(v7, v4);

  v86[2] = sub_237C60B7C(1, v14);
  v86[3] = v9;
  v16 = v15;
  v18 = v17 >> 1;
  v20 = (v19 + 16 * v15 + 8);
  v87 = v17 >> 1;
  while (1)
  {
    if (v18 == v16)
    {
      goto LABEL_80;
    }

    if (v16 >= v18)
    {
      break;
    }

    v21 = *v20;
    v92 = *(v20 - 1);
    v93 = v21;
    v90 = 58;
    v91 = 0xE100000000000000;
    sub_237EF8260();
    v22 = sub_237EF91C0();
    if (v22[2] != 2)
    {
      goto LABEL_77;
    }

    v88 = v16;
    v89 = v20;
    v24 = v22[4];
    v23 = v22[5];
    v25 = v22[6];
    v26 = v22[7];
    v92 = 0;
    sub_237EF8260();
    sub_237EF8260();
    LOBYTE(v25) = sub_237E895D8(v25, v26, &v92);

    if ((v25 & 1) == 0)
    {

LABEL_79:

      v8 = sub_237EF8230();
LABEL_80:
      swift_unknownObjectRelease();
      return v8;
    }

    v27 = *&v92;
    v92 = v24;
    v93 = v23;
    v90 = 45;
    v91 = 0xE100000000000000;
    v28 = sub_237EF91C0();
    if (*(v28 + 16) != 2)
    {
      goto LABEL_76;
    }

    sub_237EF8260();
    v29 = sub_237EF9890();

    if (v29)
    {
      if (v29 != 1)
      {
LABEL_76:

LABEL_77:

        goto LABEL_79;
      }

      v30 = 1;
    }

    else
    {
      v30 = 0;
    }

    v31 = *(v28 + 16);
    if (!v31)
    {
      goto LABEL_82;
    }

    v32 = v28 + 32 + 16 * v31;
    v33 = *(v32 - 16);
    v34 = *(v32 - 8);
    sub_237EF8260();

    switch(sub_237E89454(v33, v34))
    {
      case 1u:
        v92 = 0;
        v93 = 0xE000000000000000;
        if (v30)
        {
          v65 = 0x69746164696C6176;
        }

        else
        {
          v65 = 0x676E696E69617274;
        }

        if (v30)
        {
          v66 = 0xEA00000000006E6FLL;
        }

        else
        {
          v66 = 0xE800000000000000;
        }

        MEMORY[0x2383E0710](v65, v66);

        MEMORY[0x2383E0710](0x7272655F78616D5FLL, 0xEA0000000000726FLL);
        v68 = v92;
        v67 = v93;
        swift_isUniquelyReferenced_nonNull_native();
        v92 = v8;
        v69 = sub_237D30F88();
        if (__OFADD__(v8[2], (v70 & 1) == 0))
        {
          goto LABEL_86;
        }

        v41 = v69;
        v71 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE318, &qword_237F1C970);
        if (sub_237EF96B0())
        {
          v72 = sub_237D30F88();
          v18 = v87;
          v45 = v89;
          if ((v71 & 1) != (v73 & 1))
          {
            goto LABEL_91;
          }

          v41 = v72;
        }

        else
        {
          v18 = v87;
          v45 = v89;
        }

        v8 = v92;
        if (v71)
        {
LABEL_71:
          *(v8[7] + 8 * v41) = v27;
LABEL_72:
        }

        else
        {
          v92[(v41 >> 6) + 8] |= 1 << v41;
          v83 = (v8[6] + 16 * v41);
          *v83 = v68;
          v83[1] = v67;
          *(v8[7] + 8 * v41) = v27;
          v84 = v8[2];
          v77 = __OFADD__(v84, 1);
          v78 = v84 + 1;
          if (v77)
          {
            goto LABEL_90;
          }

LABEL_74:
          v8[2] = v78;
        }

        v20 = v45 + 2;
        v16 = v88 + 1;
        break;
      case 2u:
      case 3u:
        v92 = 0;
        v93 = 0xE000000000000000;
        if (v30)
        {
          v35 = 0x69746164696C6176;
        }

        else
        {
          v35 = 0x676E696E69617274;
        }

        if (v30)
        {
          v36 = 0xEA00000000006E6FLL;
        }

        else
        {
          v36 = 0xE800000000000000;
        }

        MEMORY[0x2383E0710](v35, v36);

        MEMORY[0x2383E0710](0x73736F6C5FLL, 0xE500000000000000);
        v38 = v92;
        v37 = v93;
        swift_isUniquelyReferenced_nonNull_native();
        v92 = v8;
        v39 = sub_237D30F88();
        if (__OFADD__(v8[2], (v40 & 1) == 0))
        {
          goto LABEL_83;
        }

        v41 = v39;
        v42 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE318, &qword_237F1C970);
        if (sub_237EF96B0())
        {
          v43 = sub_237D30F88();
          v18 = v87;
          v45 = v89;
          if ((v42 & 1) != (v44 & 1))
          {
            goto LABEL_91;
          }

          v41 = v43;
        }

        else
        {
          v18 = v87;
          v45 = v89;
        }

        v8 = v92;
        if (v42)
        {
          goto LABEL_71;
        }

        v92[(v41 >> 6) + 8] |= 1 << v41;
        v79 = (v8[6] + 16 * v41);
        *v79 = v38;
        v79[1] = v37;
        *(v8[7] + 8 * v41) = v27;
        v80 = v8[2];
        v77 = __OFADD__(v80, 1);
        v78 = v80 + 1;
        if (!v77)
        {
          goto LABEL_74;
        }

        goto LABEL_87;
      case 4u:
      case 5u:
        v92 = 0;
        v93 = 0xE000000000000000;
        if (v30)
        {
          v46 = 0x69746164696C6176;
        }

        else
        {
          v46 = 0x676E696E69617274;
        }

        if (v30)
        {
          v47 = 0xEA00000000006E6FLL;
        }

        else
        {
          v47 = 0xE800000000000000;
        }

        MEMORY[0x2383E0710](v46, v47);

        MEMORY[0x2383E0710](0x636172756363615FLL, 0xE900000000000079);
        v49 = v92;
        v48 = v93;
        swift_isUniquelyReferenced_nonNull_native();
        v92 = v8;
        v50 = sub_237D30F88();
        if (__OFADD__(v8[2], (v51 & 1) == 0))
        {
          goto LABEL_84;
        }

        v52 = v50;
        v53 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE318, &qword_237F1C970);
        if (sub_237EF96B0())
        {
          v54 = sub_237D30F88();
          v18 = v87;
          v45 = v89;
          if ((v53 & 1) != (v55 & 1))
          {
            goto LABEL_91;
          }

          v52 = v54;
        }

        else
        {
          v18 = v87;
          v45 = v89;
        }

        v74 = 1.0 - v27;
        v8 = v92;
        if (v53)
        {
          *(v92[7] + 8 * v52) = v74;
          goto LABEL_72;
        }

        v92[(v52 >> 6) + 8] |= 1 << v52;
        v75 = (v8[6] + 16 * v52);
        *v75 = v49;
        v75[1] = v48;
        *(v8[7] + 8 * v52) = v74;
        v76 = v8[2];
        v77 = __OFADD__(v76, 1);
        v78 = v76 + 1;
        if (v77)
        {
          goto LABEL_88;
        }

        goto LABEL_74;
      case 6u:
        goto LABEL_79;
      default:
        v92 = 0;
        v93 = 0xE000000000000000;
        if (v30)
        {
          v56 = 0x69746164696C6176;
        }

        else
        {
          v56 = 0x676E696E69617274;
        }

        if (v30)
        {
          v57 = 0xEA00000000006E6FLL;
        }

        else
        {
          v57 = 0xE800000000000000;
        }

        MEMORY[0x2383E0710](v56, v57);

        MEMORY[0x2383E0710](0x726F7272655FLL, 0xE600000000000000);
        v59 = v92;
        v58 = v93;
        swift_isUniquelyReferenced_nonNull_native();
        v92 = v8;
        v60 = sub_237D30F88();
        if (__OFADD__(v8[2], (v61 & 1) == 0))
        {
          goto LABEL_85;
        }

        v41 = v60;
        v62 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE318, &qword_237F1C970);
        if (sub_237EF96B0())
        {
          v63 = sub_237D30F88();
          v18 = v87;
          v45 = v89;
          if ((v62 & 1) != (v64 & 1))
          {
            goto LABEL_91;
          }

          v41 = v63;
        }

        else
        {
          v18 = v87;
          v45 = v89;
        }

        v8 = v92;
        if (v62)
        {
          goto LABEL_71;
        }

        v92[(v41 >> 6) + 8] |= 1 << v41;
        v81 = (v8[6] + 16 * v41);
        *v81 = v59;
        v81[1] = v58;
        *(v8[7] + 8 * v41) = v27;
        v82 = v8[2];
        v77 = __OFADD__(v82, 1);
        v78 = v82 + 1;
        if (!v77)
        {
          goto LABEL_74;
        }

        goto LABEL_89;
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
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
  __break(1u);
LABEL_91:
  result = sub_237EFA020();
  __break(1u);
  return result;
}

unint64_t sub_237E89454(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_237E894A0(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      return sub_237EF5F00();
    }

    else
    {
      sub_237EF5CD0();
      swift_allocObject();
      sub_237EF5C90();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_237EF5F80();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
      }

      else
      {
        return a2 << 32;
      }
    }
  }

  return result;
}

void *sub_237E8958C(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  result = a2(&v6, a4, a1);
  if (!v4)
  {
    return v6;
  }

  return result;
}

BOOL sub_237E895D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_237EF9320();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

void *sub_237E896D0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a4)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v7[0] = a1;
      v7[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = v7;
      return sub_237E89788(0x69746164696C6176, 0xEA00000000006E6FLL, a3, a4, v5);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return sub_237E89788(0x69746164696C6176, 0xEA00000000006E6FLL, a3, a4, v5);
    }
  }

  result = sub_237EF9320();
  if (!v4)
  {
    return v7[2];
  }

  return result;
}

void *sub_237E89788(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_10:
    result = sub_237EF9320();
    if (!v5)
    {
      return v8[2];
    }

    return result;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = a3(v8, a5, (a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (!v5)
      {
        return v8[0];
      }

      return result;
    }

    goto LABEL_10;
  }

  v8[0] = a1;
  v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  result = a3(&v7, a5, v8);
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_237E89858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ModelFromBuffer = XGBoosterLoadModelFromBuffer();

  return ModelFromBuffer;
}

uint64_t sub_237E898EC(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6)
{
  result = sub_237EF5CA0();
  v9 = result;
  if (result)
  {
    result = sub_237EF5CC0();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_15;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    result = sub_237EF5CB0();
    if (result >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = result;
    }

    if (v9)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if ((v13 & 0x8000000000000000) == 0)
    {
      ModelFromBuffer = XGBoosterLoadModelFromBuffer();

      return ModelFromBuffer;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

_BYTE *sub_237E899B0@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

void *sub_237E89A38@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_237E89550(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

void *sub_237E89A80@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_237E8958C(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_109(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_3_96()
{
  *(v0 + 16) = v1;
  *(v0 + 8 * v3 + 32) = v2;
  *(v4 - 72) = v0;
}

unint64_t OUTLINED_FUNCTION_6_75()
{

  return sub_237D5206C();
}

uint64_t PreprocessingTabularEstimator.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for PreprocessingTabularEstimator(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t PreprocessingTabularEstimator.preprocessed(from:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[8] = *(v2 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237E89DC8()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[6];
  PreprocessingTabularEstimator.preprocessor.getter(v1, v0[10]);
  v2 = *(*(v1 + 32) + 8);
  OUTLINED_FUNCTION_15_0();
  v12 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[11] = v4;
  *v4 = v5;
  v4[1] = sub_237E89EF4;
  v6 = v0[8];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return v12(v9, v10, v7, v8, v6, v2);
}

uint64_t sub_237E89EF4()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v6 = v5[10];
  v7 = v5[9];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v10 = v9;
  *(v3 + 96) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v14();
  }
}

uint64_t PreprocessingTabularEstimator.fitted(toPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v4;
  v1[5] = v5;
  v1[2] = v6;
  v1[3] = v7;
  v1[8] = *(v2 + 16);
  v1[9] = OUTLINED_FUNCTION_27_0();
  v1[10] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_27_0();
  v1[13] = *(v3 + 40);
  v1[14] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v1[15] = v9;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237E8A1DC()
{
  OUTLINED_FUNCTION_12_2();
  PreprocessingTabularEstimator.estimator.getter(v0[6], v0[12]);
  OUTLINED_FUNCTION_15_0();
  v11 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[18] = v2;
  *v2 = v3;
  v2[1] = sub_237E8A2F8;
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return v11(v4, v9, v7, v8, v6, v5);
}

uint64_t sub_237E8A2F8()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = v4[12];
  v6 = v4[11];
  v7 = v4[10];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 152) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E8A450()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[9];
  v12 = v0[8];
  v6 = v0[6];
  v11 = v0[2];
  PreprocessingTabularEstimator.preprocessor.getter(v6, v5);
  (*(v4 + 32))(v2, v1, v3);
  v7 = *(v6 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTabularTransformer.init(_:_:)(v5, v2, v12, v3, v7, AssociatedConformanceWitness, v11);

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t PreprocessingTabularEstimator.fitted(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a5;
  v6[6] = v5;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a1;
  v6[7] = sub_237EF61A0();
  OUTLINED_FUNCTION_15_0();
  v6[8] = v7;
  v6[9] = OUTLINED_FUNCTION_27_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v6[10] = v8;
  *v8 = v9;
  v8[1] = sub_237E8A694;

  return PreprocessingTabularEstimator.preprocessed(from:eventHandler:)();
}

uint64_t sub_237E8A694()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E8A790()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[11];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[12] = v4;
    *v4 = v5;
    v4[1] = sub_237D379E8;

    return PreprocessingTabularEstimator.fitted(toPreprocessed:eventHandler:)();
  }
}

uint64_t PreprocessingTabularEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[5];
  v6 = a3[2];
  v7 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = a3[4];
  v13[0] = v6;
  v13[1] = AssociatedTypeWitness;
  v13[2] = v9;
  v13[3] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ComposedTabularTransformer(0, v13);
  return (*(v5 + 32))(a1 + *(v10 + 52), a2, v7, v5);
}

uint64_t PreprocessingTabularEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v32 = a3;
  v33 = v6;
  OUTLINED_FUNCTION_1_1();
  v31 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v34 = v10 - v9;
  v12 = *(v11 + 40);
  v13 = *(v11 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v30 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v29 - v21;
  v23 = v3;
  v24 = v35;
  result = (*(v12 + 40))(a1, v13, v12, v20);
  if (!v24)
  {
    v26 = v33;
    (*(v31 + 16))(v34, v23, v33);
    (*(v30 + 32))(v18, v22, AssociatedTypeWitness);
    v27 = *(a2 + 32);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return ComposedTabularTransformer.init(_:_:)(v34, v18, v26, AssociatedTypeWitness, v27, AssociatedConformanceWitness, v32);
  }

  return result;
}

uint64_t sub_237E8ABA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C6A904;

  return PreprocessingTabularEstimator.fitted(to:eventHandler:)(a1, a2, a3, a4, a5);
}

uint64_t sub_237E8AE04(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237E8AFCC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237E8B258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v18 = a3;
  sub_237EF6450();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v6 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_56_11();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0, &qword_237F08F20);
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_237C6FDA0(a1, &v17 - v12, &qword_27DEAD2C0, &qword_237F08F20);
  v14 = 1;
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) != 1)
  {
    (*(v8 + 32))(v3, v13, v6);
    sub_237EF6A30();
    sub_237E8C320();
    sub_237EF8720();
    sub_237EF6AB0();
    sub_237CF3C98();

    (*(v8 + 8))(v3, v6);
    v14 = 0;
  }

  v15 = sub_237EF79F0();
  return __swift_storeEnumTagSinglePayload(v18, v14, 1, v15);
}

uint64_t sub_237E8B484@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v18[1] = a2;
  v19 = a1;
  v7 = sub_237EF6B10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0, &qword_237F08F20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v18 - v12;
  sub_237C6FDA0(v5, v18 - v12, &qword_27DEAD2C0, &qword_237F08F20);
  v14 = 1;
  if (__swift_getEnumTagSinglePayload(v13, 1, v7) == 1)
  {
    v15 = a3;
LABEL_5:
    v16 = sub_237EF79F0();
    return __swift_storeEnumTagSinglePayload(v15, v14, 1, v16);
  }

  (*(v8 + 32))(v10, v13, v7);
  v15 = a3;
  v19(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v14 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

void sub_237E8B680()
{
  OUTLINED_FUNCTION_37_0();
  v76 = v2;
  v77 = v3;
  v80 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610, &qword_237F18070);
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v74 = v7;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_1();
  v73 = v9;
  OUTLINED_FUNCTION_12_1();
  v75 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v70 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v79 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0, &qword_237F08F20);
  OUTLINED_FUNCTION_18(v14);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_56_11();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4618, &qword_237F18078);
  v17 = OUTLINED_FUNCTION_18(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v71 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_16();
  v69 = v20;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_16();
  v82 = v22;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_22_1();
  v81 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6A8, &qword_237F08EB8);
  OUTLINED_FUNCTION_18(v25);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19();
  v72 = v27;
  OUTLINED_FUNCTION_12_1();
  sub_237EF6450();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5();
  v29 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v67 - v36;
  v83 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v68 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5();
  v78 = v41 - v40;
  if (sub_237EF66C0())
  {
    sub_237EF9740("Fatal error", 11, 2, 0xD000000000000027, 0x8000000237F01610, "CreateMLComponents/LayersMLProgram.swift", 40, 2, 83);
    __break(1u);
  }

  else
  {
    sub_237EF66D0();
    sub_237EF6A30();
    v42 = *(v31 + 8);
    v42(v37, v29);
    sub_237E8C320();
    sub_237EF8720();
    sub_237EF66D0();
    v84 = sub_237EF6A40();
    sub_237E8CFE0(2uLL, 3uLL);
    v43 = sub_237EF6430();
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v43);
    sub_237EF6970();
    v42(v34, v29);
    sub_237EF6AB0();
    v42(v37, v29);
    v44 = v78;
    v45 = v80;
    sub_237CF3C98();

    v46 = sub_237EF66B0();
    MEMORY[0x28223BE20](v46);
    v65 = v45;
    v66 = v0;
    v47 = v81;
    sub_237E8B484(sub_237E8D3F8, (&v67 - 4), v81);
    sub_237C65484(v1, &qword_27DEAD2C0, &qword_237F08F20);
    v72 = v0;
    sub_237EF66E0();
    sub_237E8B258(v1, v45, v82);
    sub_237C65484(v1, &qword_27DEAD2C0, &qword_237F08F20);
    v48 = v68;
    v49 = v79;
    v50 = v83;
    (*(v68 + 16))(v79, v44, v83);
    v51 = *MEMORY[0x277D252B8];
    v52 = v70;
    v53 = *(v70 + 104);
    v54 = v75;
    v53(v49, v51, v75);
    v55 = v69;
    sub_237C6FDA0(v47, v69, &qword_27DEB4618, &qword_237F18078);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, 1, v50);
    v57 = 1;
    v58 = v73;
    v59 = v48;
    if (EnumTagSinglePayload != 1)
    {
      (*(v48 + 32))(v73, v55, v83);
      v53(v58, v51, v54);
      v57 = 0;
    }

    v60 = 1;
    __swift_storeEnumTagSinglePayload(v58, v57, 1, v54);
    v61 = v71;
    sub_237C6FDA0(v82, v71, &qword_27DEB4618, &qword_237F18078);
    v62 = __swift_getEnumTagSinglePayload(v61, 1, v83);
    v63 = v74;
    if (v62 != 1)
    {
      (*(v59 + 32))(v74, v61, v83);
      v53(v63, v51, v54);
      v60 = 0;
    }

    __swift_storeEnumTagSinglePayload(v63, v60, 1, v54);
    sub_237EF6740();
    v64 = v79;
    sub_237EC68DC();
    OUTLINED_FUNCTION_17_53(v63);
    OUTLINED_FUNCTION_17_53(v58);
    (*(v52 + 8))(v64, v54);
    OUTLINED_FUNCTION_17_53(v82);
    OUTLINED_FUNCTION_17_53(v81);
    (*(v59 + 8))(v78, v83);
    OUTLINED_FUNCTION_38_0();
  }
}

void sub_237E8BE28()
{
  OUTLINED_FUNCTION_37_0();
  v40 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610, &qword_237F18070);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19();
  v37 = v3;
  OUTLINED_FUNCTION_12_1();
  v38 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v43 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v41 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0, &qword_237F08F20);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4618, &qword_237F18078);
  v13 = OUTLINED_FUNCTION_18(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v36 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22_1();
  v42 = v16;
  OUTLINED_FUNCTION_12_1();
  sub_237EF6450();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_56_11();
  v18 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v34 = v26;
  v35 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  sub_237EF67E0();
  sub_237EF6A30();
  v30 = *(v20 + 8);
  v30(v24, v18);
  sub_237E8C320();
  sub_237EF8720();
  sub_237EF67E0();
  sub_237EF6AB0();
  v30(v24, v18);
  sub_237CF3C98();

  sub_237EF67B0();
  sub_237E8B258(v11, v40, v42);
  sub_237C65484(v11, &qword_27DEAD2C0, &qword_237F08F20);
  v39 = v29;
  (*(v34 + 16))(v41, v29, v35);
  v31 = *MEMORY[0x277D252B8];
  v32 = *(v43 + 104);
  v32(v41, v31, v38);
  sub_237C6FDA0(v42, v36, &qword_27DEB4618, &qword_237F18078);
  v33 = 1;
  if (__swift_getEnumTagSinglePayload(v36, 1, v35) != 1)
  {
    (*(v34 + 32))(v37, v36, v35);
    v32(v37, v31, v38);
    v33 = 0;
  }

  __swift_storeEnumTagSinglePayload(v37, v33, 1, v38);
  sub_237EF6810();
  sub_237EC4744();
  sub_237C65484(v37, &qword_27DEB4610, &qword_237F18070);
  (*(v43 + 8))(v41, v38);
  sub_237C65484(v42, &qword_27DEB4618, &qword_237F18078);
  (*(v34 + 8))(v39, v35);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_237E8C320()
{
  result = qword_27DEB5D48[0];
  if (!qword_27DEB5D48[0])
  {
    sub_237EF6450();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB5D48);
  }

  return result;
}

void sub_237E8C378()
{
  OUTLINED_FUNCTION_37_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610, &qword_237F18070);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19();
  v49 = v3;
  OUTLINED_FUNCTION_12_1();
  v47 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v50 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v45 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0, &qword_237F08F20);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v48 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4618, &qword_237F18078);
  v12 = OUTLINED_FUNCTION_18(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v46 = v13;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22_1();
  v51 = v15;
  OUTLINED_FUNCTION_12_1();
  v44 = sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v52 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v43 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_56_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F105F0;
  *(inited + 32) = MEMORY[0x2383DE9E0]();
  MEMORY[0x2383DEA00]();
  sub_237EF6A30();
  v32 = *(v24 + 8);
  v32(v28, v22);
  v33 = sub_237EF6470();
  (*(v17 + 8))(v21, v44);
  *(inited + 40) = v33;
  *(inited + 48) = 1;
  *(inited + 56) = sub_237EF68E0();
  MEMORY[0x2383DEA00]();
  sub_237EF6AB0();
  v32(v28, v22);
  sub_237CF3C98();

  v34 = swift_setDeallocating();
  MEMORY[0x2383DE9F0](v34);
  v35 = OUTLINED_FUNCTION_13_6();
  sub_237E8B258(v35, v36, v37);
  sub_237C65484(v48, &qword_27DEAD2C0, &qword_237F08F20);
  (*(v43 + 16))(v45, v0, v52);
  v38 = *MEMORY[0x277D252B8];
  v39 = *(v50 + 104);
  v39(v45, v38, v47);
  sub_237C6FDA0(v51, v46, &qword_27DEB4618, &qword_237F18078);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v52);
  v41 = 1;
  if (EnumTagSinglePayload != 1)
  {
    (*(v43 + 32))(v49, v46, v52);
    v39(v49, v38, v47);
    v41 = 0;
  }

  v42 = __swift_storeEnumTagSinglePayload(v49, v41, 1, v47);
  MEMORY[0x2383DE9E0](v42);
  sub_237EF68E0();
  sub_237EC5338();
  sub_237C65484(v49, &qword_27DEB4610, &qword_237F18070);
  (*(v50 + 8))(v45, v47);
  sub_237C65484(v51, &qword_27DEB4618, &qword_237F18078);
  (*(v43 + 8))(v0, v52);
  OUTLINED_FUNCTION_38_0();
}

void sub_237E8C924()
{
  OUTLINED_FUNCTION_37_0();
  v59 = v1;
  v60 = v2;
  v70 = v3;
  v57 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v68 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v58 = v6;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_16();
  v56 = v8;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8_16();
  v66 = v10;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_1();
  v65 = v12;
  OUTLINED_FUNCTION_12_1();
  v54 = sub_237EF6450();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_56_11();
  v55 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v67 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v63 = v21;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8_16();
  v72 = v23;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8_16();
  v71 = v25;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  v64 = &v54 - v27;
  sub_237EF6C10();
  v61 = v15;
  sub_237EF6A30();
  v28 = *(v17 + 8);
  v29 = OUTLINED_FUNCTION_88_1();
  v28(v29);
  v62 = sub_237E8C320();
  sub_237EF8720();
  sub_237EF6C10();
  sub_237EF6AB0();
  v30 = OUTLINED_FUNCTION_88_1();
  v28(v30);
  sub_237CF3C98();

  v69 = v0;
  sub_237EF6C00();
  sub_237EF6A30();
  v31 = OUTLINED_FUNCTION_88_1();
  v28(v31);
  sub_237EF8720();
  OUTLINED_FUNCTION_10_64();
  sub_237EF6C00();
  sub_237EF6AB0();
  v32 = OUTLINED_FUNCTION_88_1();
  v28(v32);
  OUTLINED_FUNCTION_13_6();
  sub_237CF3C98();

  sub_237EF6BD0();
  sub_237EF6A30();
  v33 = OUTLINED_FUNCTION_88_1();
  v28(v33);
  sub_237EF8720();
  OUTLINED_FUNCTION_10_64();
  sub_237EF6BD0();
  sub_237EF6AB0();
  v34 = OUTLINED_FUNCTION_88_1();
  v28(v34);
  OUTLINED_FUNCTION_13_6();
  sub_237CF3C98();

  sub_237EF6BE0();
  sub_237EF6A30();
  v35 = OUTLINED_FUNCTION_88_1();
  v28(v35);
  sub_237EF8720();
  OUTLINED_FUNCTION_10_64();
  sub_237EF6BE0();
  sub_237EF6AB0();
  v36 = OUTLINED_FUNCTION_88_1();
  v28(v36);
  v37 = v63;
  OUTLINED_FUNCTION_13_6();
  sub_237CF3C98();

  v38 = *(v67 + 16);
  v39 = v65;
  v40 = v55;
  v38(v65, v64, v55);
  v41 = *MEMORY[0x277D252B8];
  v42 = *(v68 + 104);
  v43 = v39;
  v44 = v57;
  v42(v43, v41, v57);
  v45 = v66;
  v38(v66, v71, v40);
  v42(v45, v41, v44);
  v46 = v56;
  v38(v56, v72, v40);
  v42(v46, v41, v44);
  v47 = v58;
  v38(v58, v37, v40);
  v42(v47, v41, v44);
  sub_237EF6C20();
  v49 = v65;
  v48 = v66;
  v70 = sub_237EC605C(v59, v60, v65, v66, v46, v47, v50);
  v51 = *(v68 + 8);
  v51(v47, v44);
  v52 = OUTLINED_FUNCTION_88_1();
  (v51)(v52);
  v51(v48, v44);
  v51(v49, v44);
  v53 = *(v67 + 8);
  v53(v63, v40);
  v53(v72, v40);
  v53(v71, v40);
  v53(v64, v40);
  OUTLINED_FUNCTION_38_0();
}

char *sub_237E8CFE0(unint64_t a1, unint64_t a2)
{
  v7 = sub_237EF6B10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v11);
  result = &v26 - v15;
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v2;
      v4 = *(*v2 + 16);
      if (v4 > a1)
      {
        v26 = &v26 - v15;
        v27 = v2;
        v29 = v8;
        v20 = *(v8 + 16);
        v19 = v8 + 16;
        v18 = v20;
        v28 = (*(v19 + 64) + 32) & ~*(v19 + 64);
        v21 = v3 + v28;
        v22 = *(v19 + 56);
        a1 *= v22;
        v20(v16);
        if (v4 > a2)
        {
          v4 = v22 * a2;
          (v18)(v10, v21 + v22 * a2, v7);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        sub_237E64230(v3, v12, v13, v14);
        v3 = v25;
LABEL_6:
        v23 = v3 + v28;
        v24 = *(v29 + 40);
        result = v24(v3 + v28 + a1, v10, v7);
        if (*(v3 + 16) <= a2)
        {
          __break(1u);
        }

        else
        {
          result = v24(v23 + v4, v26, v7);
          *v27 = v3;
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_237E8D1BC(uint64_t a1, uint64_t a2)
{
  v12[0] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6A8, &qword_237F08EB8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  v5 = sub_237EF6B10();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_237EF6450();
  MEMORY[0x28223BE20](v9);
  sub_237EF6A30();
  sub_237E8C320();
  sub_237EF8720();
  v12[3] = sub_237EF6A40();
  sub_237E8CFE0(2uLL, 3uLL);
  v10 = sub_237EF6430();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  sub_237EF6970();
  sub_237EF6AB0();
  (*(v6 + 8))(v8, v5);
  sub_237CF3C98();
}

uint64_t OUTLINED_FUNCTION_17_53(uint64_t a1)
{

  return sub_237C65484(a1, v1, v2);
}

uint64_t MultivariateLinearRegressor.makeTransformer()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = sub_237EF7E90();
  OUTLINED_FUNCTION_23_8();
  v7 = sub_237EF90F0();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v14 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v14 - v11;
  v14[1] = sub_237EF89A0();
  sub_237EF8A60();
  swift_getWitnessTable();
  sub_237EF7E40();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v6);
  return MultivariateLinearRegressor.Model.init(weight:bias:)(v12, v9, v4, v5, a1[4], a2);
}

uint64_t MultivariateLinearRegressor.update(_:with:)()
{
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v10;
  *(v1 + 40) = v11;
  *(v1 + 48) = v12;
  *(v1 + 56) = v13;
  *(v1 + 64) = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v1 + 72) = v15;
  *v15 = v16;
  v15[1] = sub_237E8D6B0;

  return sub_237CBDD00(v9, v7, v5, v3);
}

uint64_t sub_237E8D6B0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

float MultivariateLinearRegressor.configuration.setter(uint64_t a1)
{
  result = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *v1 = *a1;
  *(v1 + 16) = result;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  return result;
}

uint64_t MultivariateLinearRegressor.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_39_0();
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;
  *(v1 + 128) = v4;
  *(v1 + 136) = v5;
  *(v1 + 112) = v6;
  *(v1 + 120) = v7;
  *(v1 + 104) = v8;
  v9 = *(v5 + 16);
  *(v1 + 160) = v9;
  v10 = *(v5 + 24);
  *(v1 + 168) = v10;
  v11 = type metadata accessor for AnnotatedBatch(255, v9, v10, v4);
  *(v1 + 176) = v11;
  v12 = sub_237EF90F0();
  *(v1 + 184) = v12;
  OUTLINED_FUNCTION_6_1(v12);
  *(v1 + 192) = v13;
  *(v1 + 200) = OUTLINED_FUNCTION_27_0();
  *(v1 + 208) = *(v11 - 8);
  *(v1 + 216) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_18_0();
  v14 = sub_237EF7E90();
  *(v1 + 224) = v14;
  OUTLINED_FUNCTION_6_1(v14);
  *(v1 + 232) = v15;
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  OUTLINED_FUNCTION_12_57();
  *(v1 + 272) = v16;
  *(v1 + 280) = OUTLINED_FUNCTION_27_0();
  *(v1 + 288) = *v0;
  *(v1 + 336) = OUTLINED_FUNCTION_16_52();
  v17 = *(v0 + 40);
  *(v1 + 304) = v18;
  *(v1 + 312) = v17;
  *(v1 + 65) = *(v0 + 48);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_237E8DA70()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v66 = v3;
  v69 = *(v0 + 264);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  (*(*(v0 + 272) + 16))(*(v0 + 280), *(v0 + 112), v5);
  v7 = OUTLINED_FUNCTION_9_24();
  v10 = type metadata accessor for AnnotatedFeature(v7, v8, v1, v9);
  v72 = OUTLINED_FUNCTION_17_54(v10);
  *(v0 + 72) = v72;
  v11 = swift_task_alloc();
  *v11 = v2;
  v11[1] = v5;
  v11[2] = v3;
  v12 = *(v6 + 32);
  v11[3] = v12;
  v11[4] = v4;
  KeyPath = swift_getKeyPath();

  v14 = swift_task_alloc();
  v14[2] = v5;
  v14[3] = v12;
  v14[4] = v4;
  v14[5] = KeyPath;
  v15 = sub_237EF8A60();
  OUTLINED_FUNCTION_4_91();
  swift_getWitnessTable();
  v16 = OUTLINED_FUNCTION_24_38();
  v64 = v17;
  sub_237C9339C(v16, v18, v15, v1, v19, v17);
  v21 = v20;

  *(v0 + 80) = v21;
  OUTLINED_FUNCTION_9_24();
  v22 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  sub_237D155D0((v0 + 80), v2, v22, v66, WitnessTable, v69);
  v67 = WitnessTable;
  v70 = *(v0 + 256);
  v24 = *(v0 + 168);
  v61 = *(v0 + 224);
  v56 = v12;
  v25 = *(v0 + 160);
  v55 = *(v0 + 152);
  v26 = *(v0 + 144);
  v58 = v26;

  *(v0 + 88) = v72;
  v27 = swift_task_alloc();
  *v27 = v25;
  v27[1] = v26;
  v27[2] = v24;
  v27[3] = v56;
  v27[4] = v55;
  v28 = swift_getKeyPath();

  v29 = swift_task_alloc();
  v29[2] = v58;
  v29[3] = v56;
  v29[4] = v55;
  v29[5] = v28;
  v30 = OUTLINED_FUNCTION_24_38();
  sub_237C9339C(v30, v31, v15, v61, v32, v64);
  v34 = v33;

  *(v0 + 96) = v34;
  sub_237D155D0((v0 + 96), v25, v22, v24, v67, v70);
  v60 = *(v0 + 65);
  v35 = *(v0 + 336);
  v36 = *(v0 + 304);
  v37 = *(v0 + 68);
  v38 = *(v0 + 288);
  v39 = *(v0 + 296);
  v57 = *(v0 + 312);
  v59 = *(v0 + 264);
  v41 = *(v0 + 240);
  v40 = *(v0 + 248);
  v42 = *(v0 + 224);
  v43 = *(v0 + 232);
  v63 = *(v0 + 216);
  v65 = *(v0 + 256);
  v71 = *(v0 + 200);
  v73 = *(v0 + 176);
  v68 = *(v0 + 168);
  v62 = *(v0 + 160);

  *(v0 + 16) = v38;
  *(v0 + 24) = v39;
  *(v0 + 32) = v37;
  *(v0 + 40) = v36;
  *(v0 + 48) = v35;
  *(v0 + 56) = v57;
  *(v0 + 64) = v60;
  v44 = *(v43 + 16);
  v44(v40, v59, v42);
  v44(v41, v65, v42);
  AnnotatedBatch.init(features:annotations:)(v40, v41, v62, v68, v63);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v73);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 320) = v45;
  *v45 = v46;
  v45[1] = sub_237E8DEFC;
  OUTLINED_FUNCTION_7_74();

  return MultivariateLinearRegressor.fitted(to:validateOn:eventHandler:)(v47, v48, v49, v50, v51, v52);
}

uint64_t sub_237E8DEFC()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 328) = v0;

  v7 = OUTLINED_FUNCTION_22_39();
  v8(v7);
  v9 = OUTLINED_FUNCTION_19_35();
  v10(v9);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E8E044()
{
  v1 = v0[33];
  v2 = v0[28];
  v3 = *(v0[29] + 8);
  v3(v0[32], v2);
  v3(v1, v2);

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237E8E13C()
{
  v1 = *(v0[29] + 8);
  (v1)(v0[32], v0[28]);
  v2 = OUTLINED_FUNCTION_31_0();
  v1(v2);

  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t MultivariateLinearRegressor.fitted(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 104) = a5;
  *(v7 + 112) = a6;
  *(v7 + 88) = a3;
  *(v7 + 96) = a4;
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;
  *(v7 + 120) = *v6;
  *(v7 + 168) = OUTLINED_FUNCTION_16_52();
  v8 = *(v6 + 40);
  *(v7 + 136) = v9;
  *(v7 + 144) = v8;
  *(v7 + 65) = *(v6 + 48);
  OUTLINED_FUNCTION_23();
  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237E8E284()
{
  sub_237E8F35C(*(v0 + 80), *(v0 + 112));
  v1 = *(v0 + 65);
  v2 = *(v0 + 168);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 68);
  *(v0 + 16) = *(v0 + 120);
  *(v0 + 32) = v5;
  *(v0 + 40) = v4;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 152) = v6;
  *v6 = v7;
  v6[1] = sub_237E8E39C;
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  return sub_237CBB4C0(v12, v13, v10, v11, v8, v9);
}

uint64_t sub_237E8E39C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 160) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t MultivariateLinearRegressor.fitted<A, B>(to:validateOn:eventHandler:)()
{
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  *(v1 + 200) = v26;
  *(v1 + 208) = v27;
  *(v1 + 184) = v4;
  *(v1 + 192) = v2;
  *(v1 + 168) = v5;
  *(v1 + 176) = v6;
  *(v1 + 152) = v7;
  *(v1 + 160) = v8;
  *(v1 + 136) = v9;
  *(v1 + 144) = v10;
  v11 = *(v6 + 16);
  *(v1 + 216) = v11;
  v12 = *(v6 + 24);
  *(v1 + 224) = v12;
  v13 = type metadata accessor for AnnotatedBatch(255, v11, v12, v8);
  *(v1 + 232) = v13;
  OUTLINED_FUNCTION_9_24();
  v14 = sub_237EF90F0();
  *(v1 + 240) = v14;
  OUTLINED_FUNCTION_6_1(v14);
  *(v1 + 248) = v15;
  *(v1 + 256) = OUTLINED_FUNCTION_27_0();
  *(v1 + 264) = *(v13 - 8);
  *(v1 + 272) = OUTLINED_FUNCTION_27_0();
  *(v1 + 280) = *(v3 - 8);
  *(v1 + 288) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v16 = sub_237EF7E90();
  *(v1 + 296) = v16;
  OUTLINED_FUNCTION_6_1(v16);
  *(v1 + 304) = v17;
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = swift_task_alloc();
  *(v1 + 352) = swift_task_alloc();
  OUTLINED_FUNCTION_12_57();
  *(v1 + 360) = v18;
  *(v1 + 368) = OUTLINED_FUNCTION_27_0();
  *(v1 + 376) = *v0;
  *(v1 + 424) = OUTLINED_FUNCTION_16_52();
  v19 = *(v0 + 40);
  *(v1 + 392) = v20;
  *(v1 + 400) = v19;
  *(v1 + 65) = *(v0 + 48);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_237E8E760()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v90 = v2;
  v94 = v3;
  v97 = *(v0 + 352);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v85 = *(v0 + 176);
  (*(*(v0 + 360) + 16))(*(v0 + 368), *(v0 + 144), v7);
  type metadata accessor for AnnotatedFeature(0, v1, v1, v8);
  v102 = sub_237EF8A90();
  *(v0 + 72) = v102;
  v9 = swift_task_alloc();
  *v9 = v3;
  v9[1] = v7;
  v9[2] = v6;
  v9[3] = v2;
  v10 = *(v85 + 32);
  v9[4] = v10;
  v9[5] = v4;
  v9[6] = v5;
  KeyPath = swift_getKeyPath();

  v12 = swift_task_alloc();
  v12[2] = v7;
  v12[3] = v6;
  v86 = v10;
  v12[4] = v10;
  v12[5] = v4;
  v12[6] = v5;
  v12[7] = KeyPath;
  v13 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  v15 = OUTLINED_FUNCTION_24_38();
  sub_237C9339C(v15, v16, v13, v1, v17, WitnessTable);
  v19 = v18;

  *(v0 + 80) = v19;
  OUTLINED_FUNCTION_9_24();
  v20 = sub_237EF8A60();
  v21 = swift_getWitnessTable();
  sub_237D155D0((v0 + 80), v94, v20, v90, v21, v97);
  v91 = *(v0 + 296);
  v23 = *(v0 + 216);
  v22 = *(v0 + 224);
  v98 = *(v0 + 344);
  v82 = WitnessTable;
  v24 = *(v0 + 200);
  v75 = *(v0 + 208);
  v79 = v21;
  v84 = v13;
  v25 = *(v0 + 184);
  v26 = *(v0 + 192);

  *(v0 + 88) = v102;
  v27 = swift_task_alloc();
  *v27 = v23;
  v27[1] = v25;
  v27[2] = v26;
  v27[3] = v22;
  v27[4] = v86;
  v27[5] = v24;
  v27[6] = v75;
  v88 = v20;
  v28 = swift_getKeyPath();

  v29 = swift_task_alloc();
  v29[2] = v25;
  v29[3] = v26;
  v29[4] = v86;
  v29[5] = v24;
  v29[6] = v75;
  v29[7] = v28;
  sub_237C9339C(sub_237D9C1CC, v29, v84, v91, MEMORY[0x277D84A98], v82);
  v31 = v30;

  *(v0 + 96) = v31;
  sub_237D155D0((v0 + 96), v23, v88, v22, v21, v98);
  v32 = *(v0 + 288);
  v95 = *(v0 + 296);
  v99 = *(v0 + 336);
  v33 = *(v0 + 280);
  v34 = *(v0 + 216);
  v35 = *(v0 + 208);
  v76 = *(v0 + 200);
  v77 = *(v0 + 224);
  v36 = *(v0 + 192);
  v74 = *(v0 + 184);
  v37 = *(v0 + 152);

  (*(v33 + 16))(v32, v37, v36);
  v103 = sub_237EF8A90();
  *(v0 + 104) = v103;
  v38 = swift_task_alloc();
  *v38 = v34;
  v38[1] = v74;
  v38[2] = v36;
  v38[3] = v77;
  v38[4] = v86;
  v38[5] = v76;
  v38[6] = v35;
  v39 = swift_getKeyPath();

  v40 = swift_task_alloc();
  v40[2] = v74;
  v40[3] = v36;
  v40[4] = v86;
  v40[5] = v76;
  v40[6] = v35;
  v40[7] = v39;
  sub_237C9339C(sub_237E86944, v40, v84, v95, MEMORY[0x277D84A98], v82);
  v42 = v41;

  *(v0 + 112) = v42;
  sub_237D155D0((v0 + 112), v34, v88, v77, v79, v99);
  v92 = *(v0 + 296);
  v44 = *(v0 + 216);
  v43 = *(v0 + 224);
  v100 = *(v0 + 328);
  v78 = v44;
  v46 = *(v0 + 200);
  v45 = *(v0 + 208);
  v48 = *(v0 + 184);
  v47 = *(v0 + 192);

  *(v0 + 120) = v103;
  v49 = swift_task_alloc();
  *v49 = v44;
  v49[1] = v48;
  v49[2] = v47;
  v49[3] = v43;
  v49[4] = v86;
  v49[5] = v46;
  v49[6] = v45;
  v50 = swift_getKeyPath();

  v51 = swift_task_alloc();
  v51[2] = v48;
  v51[3] = v47;
  v51[4] = v86;
  v51[5] = v46;
  v51[6] = v45;
  v51[7] = v50;
  sub_237C9339C(sub_237E86944, v51, v84, v92, MEMORY[0x277D84A98], v82);
  v53 = v52;

  *(v0 + 128) = v53;
  sub_237D155D0((v0 + 128), v78, v88, v43, v79, v100);
  LOBYTE(v84) = *(v0 + 65);
  v54 = *(v0 + 424);
  v55 = *(v0 + 392);
  v56 = *(v0 + 68);
  v58 = *(v0 + 376);
  v57 = *(v0 + 384);
  v80 = *(v0 + 400);
  v81 = *(v0 + 352);
  v89 = *(v0 + 344);
  v93 = *(v0 + 336);
  v60 = *(v0 + 312);
  v59 = *(v0 + 320);
  v61 = *(v0 + 296);
  v62 = *(v0 + 304);
  v83 = *(v0 + 272);
  v96 = *(v0 + 256);
  v101 = *(v0 + 328);
  v104 = *(v0 + 232);
  v87 = *(v0 + 224);
  v63 = *(v0 + 216);

  *(v0 + 16) = v58;
  *(v0 + 24) = v57;
  *(v0 + 32) = v56;
  *(v0 + 40) = v55;
  *(v0 + 48) = v54;
  *(v0 + 56) = v80;
  *(v0 + 64) = v84;
  v64 = *(v62 + 16);
  v64(v59, v81, v61);
  v64(v60, v89, v61);
  AnnotatedBatch.init(features:annotations:)(v59, v60, v63, v87, v83);
  v64(v59, v93, v61);
  v64(v60, v101, v61);
  AnnotatedBatch.init(features:annotations:)(v59, v60, v63, v87, v96);
  __swift_storeEnumTagSinglePayload(v96, 0, 1, v104);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 408) = v65;
  *v65 = v66;
  v65[1] = sub_237E8EF98;
  v67 = *(v0 + 272);
  v68 = *(v0 + 256);
  v69 = *(v0 + 168);
  v70 = *(v0 + 176);
  v71 = *(v0 + 160);
  v72 = *(v0 + 136);

  return MultivariateLinearRegressor.fitted(to:validateOn:eventHandler:)(v72, v67, v68, v71, v69, v70);
}

uint64_t sub_237E8EF98()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 416) = v0;

  v7 = OUTLINED_FUNCTION_21_49();
  v8(v7);
  v9 = OUTLINED_FUNCTION_19_35();
  v10(v9);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E8F0E0()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[37];
  v5 = *(v0[38] + 8);
  v5(v0[41], v4);
  v5(v3, v4);
  v5(v2, v4);
  v5(v1, v4);

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_237E8F224()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  v4 = v0[37];
  v5 = *(v0[38] + 8);
  v5(v0[41], v4);
  v5(v3, v4);
  v5(v1, v4);
  v5(v2, v4);
  OUTLINED_FUNCTION_20_45();

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_237E8F35C(uint64_t a1, uint64_t a2)
{
  v2 = 0xD00000000000002DLL;
  v3 = *(a2 + 24);
  OUTLINED_FUNCTION_23_8();
  sub_237EF7E90();
  v4 = *(sub_237EF7E20() + 16);

  if (v4 < 2)
  {
    v5 = "st 2 dimensions.";
LABEL_3:
    v6 = sub_237EF7E20();
LABEL_6:
    sub_237C84150();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = v2;
    *(v11 + 16) = v5 | 0x8000000000000000;
    *(v11 + 24) = 0;
    *(v11 + 32) = 6;
    return swift_willThrow();
  }

  v7 = OUTLINED_FUNCTION_23_8();
  type metadata accessor for AnnotatedBatch(v7, v8, v3, v9);
  v10 = *(sub_237EF7E20() + 16);

  v6 = sub_237EF7E20();
  if (v10 < 2)
  {
    v5 = "the last dimension.";
    v2 = 0xD000000000000030;
    goto LABEL_6;
  }

  v13 = sub_237C6C5F4(1, v6);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_237EF7E20();
  v21 = sub_237C6C5F4(1, v20);
  LOBYTE(v15) = sub_237E8F500(v21, v22, v23, v24, v13, v15, v17, v19);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  if ((v15 & 1) == 0)
  {
    v5 = "port is not implemented";
    v2 = 0xD000000000000053;
    goto LABEL_3;
  }

  return result;
}

BOOL sub_237E8F500(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8 = a8 >> 1;
  v9 = a4 >> 1;
  v10 = a3;
  v11 = a7;
  while (1)
  {
    if (v11 == v8)
    {
      v12 = 0;
      v13 = a8 >> 1;
      goto LABEL_10;
    }

    if (v11 >= a7)
    {
      v15 = __OFSUB__(v11, v8);
      v14 = (v11 - v8) < 0;
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    if (v14 == v15)
    {
      break;
    }

    v12 = *(a6 + 8 * v11);
    v13 = v11 + 1;
LABEL_10:
    result = v10 == v9;
    if (v10 == v9)
    {
      v17 = 0;
      v18 = a4 >> 1;
    }

    else
    {
      if (v10 >= a3)
      {
        v20 = __OFSUB__(v10, v9);
        v19 = (v10 - v9) < 0;
      }

      else
      {
        v20 = 0;
        v19 = 0;
      }

      if (v19 == v20)
      {
        goto LABEL_25;
      }

      v17 = *(a2 + 8 * v10);
      v18 = v10 + 1;
    }

    if (v11 == v8)
    {
      return result;
    }

    v21 = v10 != v9 && v12 == v17;
    v10 = v18;
    v11 = v13;
    if (!v21)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_237E8F5FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return MultivariateLinearRegressor.fitted<A>(to:eventHandler:)();
}

uint64_t sub_237E8F6DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return MultivariateLinearRegressor.fitted<A, B>(to:validateOn:eventHandler:)();
}

uint64_t MultivariateLinearRegressor.update<A>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_39_0();
  *(v1 + 200) = v2;
  *(v1 + 208) = v3;
  *(v1 + 184) = v4;
  *(v1 + 192) = v5;
  *(v1 + 168) = v6;
  *(v1 + 176) = v7;
  *(v1 + 160) = v8;
  v9 = *(v5 + 16);
  *(v1 + 216) = v9;
  *(v1 + 224) = *(v5 + 24);
  v10 = OUTLINED_FUNCTION_18_0();
  v14 = type metadata accessor for AnnotatedBatch(v10, v11, v12, v13);
  *(v1 + 232) = v14;
  OUTLINED_FUNCTION_6_1(v14);
  *(v1 + 240) = v15;
  *(v1 + 248) = OUTLINED_FUNCTION_27_0();
  *(v1 + 256) = *(v9 - 8);
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  OUTLINED_FUNCTION_18_0();
  v16 = sub_237EF7E90();
  *(v1 + 280) = v16;
  OUTLINED_FUNCTION_6_1(v16);
  *(v1 + 288) = v17;
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  OUTLINED_FUNCTION_12_57();
  *(v1 + 328) = v18;
  *(v1 + 336) = OUTLINED_FUNCTION_27_0();
  *(v1 + 344) = *v0;
  *(v1 + 124) = *(v0 + 16);
  v19 = *(v0 + 24);
  *(v1 + 400) = *(v0 + 32);
  v20 = *(v0 + 40);
  *(v1 + 360) = v19;
  *(v1 + 368) = v20;
  *(v1 + 121) = *(v0 + 48);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_237E8FA28()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v53 = v2;
  v56 = *(v0 + 320);
  v50 = v3;
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 192);
  (*(*(v0 + 328) + 16))(*(v0 + 336), *(v0 + 168), v5);
  v8 = type metadata accessor for AnnotatedFeature(0, v1, v1, v7);
  v59 = OUTLINED_FUNCTION_17_54(v8);
  *(v0 + 128) = v59;
  v9 = swift_task_alloc();
  *v9 = v3;
  v9[1] = v5;
  v9[2] = v2;
  v10 = *(v6 + 32);
  *(v0 + 376) = v10;
  v9[3] = v10;
  v9[4] = v4;
  KeyPath = swift_getKeyPath();

  v12 = swift_task_alloc();
  v12[2] = v5;
  v12[3] = v10;
  v12[4] = v4;
  v12[5] = KeyPath;
  v13 = sub_237EF8A60();
  OUTLINED_FUNCTION_4_91();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237E8695C, v12, v13, v1, MEMORY[0x277D84A98], WitnessTable);
  v15 = v14;

  *(v0 + 136) = v15;
  v16 = sub_237EF8A60();
  v17 = swift_getWitnessTable();
  sub_237D155D0((v0 + 136), v50, v16, v53, v17, v56);
  v54 = v17;
  v57 = *(v0 + 312);
  v44 = v13;
  v45 = *(v0 + 280);
  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  v51 = v18;
  v47 = v19;
  v20 = *(v0 + 200);
  v43 = *(v0 + 208);

  *(v0 + 144) = v59;
  v21 = swift_task_alloc();
  *v21 = v19;
  v21[1] = v20;
  v21[2] = v18;
  v21[3] = v10;
  v21[4] = v43;
  v22 = swift_getKeyPath();

  v23 = swift_task_alloc();
  v23[2] = v20;
  v23[3] = v10;
  v23[4] = v43;
  v23[5] = v22;
  v24 = OUTLINED_FUNCTION_24_38();
  sub_237C9339C(v24, v25, v44, v45, v26, WitnessTable);
  v28 = v27;

  *(v0 + 152) = v28;
  sub_237D155D0((v0 + 152), v47, v16, v51, v54, v57);
  LOBYTE(WitnessTable) = *(v0 + 121);
  v29 = *(v0 + 400);
  v30 = *(v0 + 360);
  v31 = *(v0 + 124);
  v32 = *(v0 + 344);
  v33 = *(v0 + 352);
  v46 = *(v0 + 368);
  v48 = *(v0 + 320);
  v35 = *(v0 + 296);
  v34 = *(v0 + 304);
  v37 = *(v0 + 280);
  v36 = *(v0 + 288);
  v52 = *(v0 + 248);
  v55 = *(v0 + 312);
  v58 = *(v0 + 216);
  v60 = *(v0 + 224);

  *(v0 + 72) = v32;
  *(v0 + 80) = v33;
  *(v0 + 88) = v31;
  *(v0 + 96) = v30;
  *(v0 + 104) = v29;
  *(v0 + 112) = v46;
  *(v0 + 120) = WitnessTable;
  v38 = *(v36 + 16);
  v38(v34, v48, v37);
  v38(v35, v55, v37);
  AnnotatedBatch.init(features:annotations:)(v34, v35, v58, v60, v52);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 384) = v39;
  *v39 = v40;
  v39[1] = sub_237E8FE98;
  OUTLINED_FUNCTION_7_74();

  return MultivariateLinearRegressor.update(_:with:)();
}

uint64_t sub_237E8FE98()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[49] = v0;

  (*(v3[30] + 8))(v3[31], v3[29]);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E8FFC4()
{
  v25 = v0;
  v1 = v0[22];
  if (v1)
  {
    v20 = v0[39];
    v21 = v0[40];
    v2 = v0[36];
    v4 = v0[33];
    v3 = v0[34];
    v19 = v0[35];
    v5 = v0[32];
    v6 = v0[27];
    v7 = v0[23];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8, &qword_237F118D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F03530;
    strcpy((inited + 32), "training_loss");
    *(inited + 46) = -4864;
    (*(v5 + 16))(v4, v3, v6);
    sub_237C70604(v1, v7);
    sub_237C65348();
    sub_237EF8190();
    sub_237C758C4();
    v9 = sub_237EF8230();
    v10 = sub_237C908A4(v9);

    v22[0] = 0xD00000000000001BLL;
    v22[1] = 0x8000000237F1CA90;
    v22[2] = 0;
    v22[3] = 0;
    v23 = 1;
    v24 = v10;
    v1(v22);
    sub_237C5EE40(v1, v7);

    (*(v5 + 8))(v3, v6);
    v11 = *(v2 + 8);
    v11(v20, v19);
    v11(v21, v19);
  }

  else
  {
    v12 = v0[39];
    v13 = v0[40];
    v14 = v0[35];
    v15 = v0[36];
    (*(v0[32] + 8))(v0[34], v0[27]);
    v16 = *(v15 + 8);
    v16(v12, v14);
    v16(v13, v14);
  }

  OUTLINED_FUNCTION_3_0();

  return v17();
}

uint64_t sub_237E90280()
{
  v1 = *(v0[36] + 8);
  (v1)(v0[39], v0[35]);
  v2 = OUTLINED_FUNCTION_31_0();
  v1(v2);

  OUTLINED_FUNCTION_3_0();

  return v3();
}

void MultivariateLinearRegressor.decodeWithOptimizer(from:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  sub_237D8A030();
  if (!v2)
  {
    v5 = OUTLINED_FUNCTION_23_8();
    type metadata accessor for MultivariateLinearRegressor.Model(v5, v6, v3, v4);
    sub_237D895BC();
  }
}

uint64_t sub_237E90490()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return MultivariateLinearRegressor.update<A>(_:with:eventHandler:)();
}

uint64_t sub_237E905B8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E905F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void OUTLINED_FUNCTION_5_90(__n128 *a1@<X8>, float a2@<S0>, float a3@<S1>, __n128 a4@<Q2>)
{
  *a1 = a4;
  a1[1].n128_f32[0] = a2;
  a1[1].n128_u64[1] = v4;
  a1[2].n128_f32[0] = a3;
  a1[2].n128_u64[1] = v5;
  a1[3].n128_u8[0] = v6;
}

uint64_t OUTLINED_FUNCTION_17_54(uint64_t a1)
{

  return sub_237EF8A90();
}

uint64_t OUTLINED_FUNCTION_25_37(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v5 = a3[4];
  v6 = a3[3];

  return type metadata accessor for MultivariateLinearRegressor.Model(0, v4, v6, v5);
}

void sub_237E9074C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v21;
  a20 = v22;
  v77 = v20;
  v78 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v80 = v30;
  OUTLINED_FUNCTION_29_17();
  memcpy(v31, v32, v33);
  OUTLINED_FUNCTION_29_17();
  memcpy(v34, v35, v36);
  v37 = v29[3];
  v82 = v29[2];
  v83 = v37;
  v74 = v37;
  v38 = v29[5];
  v75 = v29[4];
  v76 = v82;
  v84 = v27;
  v85 = v75;
  v39 = v29[6];
  v40 = v29[7];
  v86 = v38;
  v87 = v39;
  v79 = v38;
  v42 = v29[8];
  v41 = v29[9];
  v88 = v40;
  v89 = v42;
  v90 = v41;
  v91 = v25;
  KeyPath = swift_getKeyPath();
  v81[2] = v27;
  v81[3] = v38;
  v70 = v40;
  v71 = v39;
  v81[4] = v39;
  v81[5] = v40;
  v68 = v41;
  v69 = v42;
  v81[6] = v42;
  v81[7] = v41;
  v44 = v76;
  v81[8] = v25;
  v81[9] = KeyPath;
  v45 = sub_237EF7E90();
  v72 = v27;
  v73 = v25;
  sub_237C9339C(sub_237CF9EA4, v81, v27, v45, MEMORY[0x277D84A98], v25);
  v47 = v46;
  v77 = v20;

  a10 = v47;
  OUTLINED_FUNCTION_23_8();
  v48 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_24();
  v50 = swift_getWitnessTable();
  v51 = v78;
  v78 = v29;
  v52 = v48;
  v53 = v75;
  sub_237D13CC4(&a10, v51, v29, v52, v76, WitnessTable, v50, v75, v38);

  if (!v20)
  {
    v54 = memcpy(v92, v93, sizeof(v92));
    v77 = &v67;
    MEMORY[0x28223BE20](v54);
    v55 = v73;
    v66[0] = v44;
    v66[1] = v74;
    v56 = v71;
    v57 = v72;
    v66[2] = v72;
    v66[3] = v53;
    v58 = v79;
    v66[4] = v79;
    v66[5] = v71;
    v59 = v69;
    v60 = v70;
    v66[6] = v70;
    v66[7] = v69;
    v61 = v68;
    v66[8] = v68;
    v66[9] = v73;
    v62 = swift_getKeyPath();
    v77 = v66;
    MEMORY[0x28223BE20](v62);
    v66[-8] = v57;
    v66[-7] = v58;
    v66[-6] = v56;
    v66[-5] = v60;
    v66[-4] = v59;
    v66[-3] = v61;
    v66[-2] = v55;
    v66[-1] = v63;
    sub_237C9339C(sub_237CFA07C, &v66[-10], v57, v74, MEMORY[0x277D84A98], v55);
    v65 = v64;

    a10 = v65;
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    sub_237E951A0();
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237E90A60()
{
  OUTLINED_FUNCTION_13_4();
  v58 = v0;
  v59 = v1;
  v3 = v2;
  v60 = v4;
  v6 = v5;
  v57 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0, &unk_237F03680);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v55 = v10;
  v11 = v3[2];
  v62 = v3[4];
  v63 = v11;
  v12 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v66 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_26();
  v54 = (v21 - v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v52 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v52 - v27;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v52 - v31;
  (*(v14 + 16))(v17, v6, v12, v30);
  sub_237D4A7B4(v17, v63, v25);
  sub_237EF69B0();
  v33 = *(v66 + 8);
  v53 = v25;
  v34 = OUTLINED_FUNCTION_43_21();
  v33(v34);
  v63 = v32;
  sub_237EF6AE0();
  v61 = v18;
  v62 = v33;
  (v33)(v28, v18);
  v35 = v3[3];
  v37 = *(type metadata accessor for AnnotatedFeature(0, v12, v35, v36) + 36);
  v38 = v3[6];
  v39 = v3[9];
  v56 = v6;
  v40 = v59;
  v41 = v60;
  sub_237E5E354(v6 + v37, v59, v60, v35, v38, v39);
  if (v42)
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0x697461746F6E6E41, 0xEB00000000206E6FLL);
    sub_237EF9CF0();
    MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237EFEA90);
    v43 = v64;
    v44 = v65;
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v45 = swift_allocError();
    *v46 = 0xD000000000000026;
    v46[1] = 0x8000000237F01710;
    v46[2] = v43;
    v46[3] = v44;
    OUTLINED_FUNCTION_47_5(v45, v46);
    v62(v63, v61);
  }

  else
  {
    sub_237E5E170(v40, v41, v35, v38, v39);
    v47 = sub_237EF64B0();
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v47);
    sub_237EF6980();
    v48 = *(v66 + 16);
    v49 = v63;
    v50 = v61;
    v48(v53, v63, v61);
    v48(v54, v28, v50);
    sub_237EF6410();
    v51 = v62;
    v62(v28, v50);
    v51(v49, v50);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E90EAC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v25 = a1;
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6A8, &qword_237F08EB8);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v7 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26();
  v27 = (v11 - v12);
  MEMORY[0x28223BE20](v13);
  v26 = &v24 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - v19;
  sub_237C9339C(sub_237E95648, 0, a1, v7, MEMORY[0x277D84A98], a2);
  sub_237EF6430();
  OUTLINED_FUNCTION_52_14();
  sub_237EF6970();
  sub_237C9339C(sub_237E95674, 0, v25, v7, MEMORY[0x277D84A98], a2);
  OUTLINED_FUNCTION_52_14();
  sub_237EF6970();
  v21 = *(v9 + 16);
  v21(v26, v20, v7);
  v21(v27, v17, v7);
  sub_237EF6410();
  v22 = *(v9 + 8);
  v22(v17, v7);
  return (v22)(v20, v7);
}

uint64_t sub_237E91150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  OUTLINED_FUNCTION_23();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237E91184()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v26 = v2;
  v3 = *(v0 + 136);
  v4 = swift_task_alloc();
  v5 = v3[2];
  *(v0 + 160) = v5;
  *v4 = v5;
  v6 = v3[3];
  *(v0 + 168) = v6;
  v4[1] = v6;
  v4[2] = v2;
  v30 = v6;
  v7 = v3[4];
  *(v0 + 176) = v7;
  v4[3] = v7;
  v8 = v3[5];
  *(v0 + 184) = v8;
  v4[4] = v8;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v28 = v9;
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v29 = v9;
  v31 = v3[6];
  *(v0 + 192) = v31;
  v4[5] = v31;
  v10 = v3[7];
  *(v0 + 200) = v10;
  v4[6] = v10;
  v25 = v3[8];
  *(v0 + 208) = v25;
  v4[7] = v25;
  v11 = v3[9];
  *(v0 + 216) = v11;
  v4[8] = v11;
  v4[9] = v1;
  v27 = v11;
  KeyPath = swift_getKeyPath();

  v13 = swift_task_alloc();
  v13[2] = v26;
  v13[3] = v8;
  v13[4] = v31;
  v13[5] = v10;
  v13[6] = v25;
  v13[7] = v11;
  v13[8] = v1;
  v13[9] = KeyPath;
  v14 = sub_237EF7E90();
  sub_237C9339C(sub_237CFA07C, v13, v26, v14, MEMORY[0x277D84A98], v1);
  v16 = v15;
  *(v0 + 224) = v15;

  *(v0 + 80) = v16;
  v17 = swift_task_alloc();
  *(v0 + 232) = v17;
  *(v0 + 16) = v28;
  *&v18 = v31;
  *(&v18 + 1) = v10;
  *&v19 = v25;
  *(&v19 + 1) = v27;
  *(v0 + 48) = v18;
  *(v0 + 64) = v19;
  *(v0 + 32) = v29;
  v20 = type metadata accessor for FullyConnectedNetworkClassifierModel(0, v0 + 16);
  v21 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  *v17 = v0;
  v17[1] = sub_237E91438;

  return Transformer.prediction<A, B>(from:)(v0 + 80, v20, v21, v30, WitnessTable, v23);
}

uint64_t sub_237E91438(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_14_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  *(v5 + 240) = v1;

  if (!v1)
  {
    *(v5 + 248) = a1;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237E91558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_36_22();
  v82 = v38[30];
  v40 = v38[24];
  v39 = v38[25];
  v42 = v38[22];
  v41 = v38[23];
  v44 = v38[20];
  v43 = v38[21];
  v85 = v38[27];
  v86 = v43;
  v88 = v38[26];
  v45 = v38[18];
  v46 = v38[19];
  v87 = v45;
  v84 = v38[16];
  v38[11] = v38[31];
  v47 = swift_task_alloc();
  *v47 = v44;
  v47[1] = v43;
  v47[2] = v45;
  v47[3] = v42;
  v47[4] = v41;
  v47[5] = v40;
  v48 = v41;
  v77 = v41;
  v78 = v40;
  v49 = v40;
  v79 = v39;
  v47[6] = v39;
  v47[7] = v88;
  v47[8] = v85;
  v47[9] = v46;
  KeyPath = swift_getKeyPath();

  v50 = swift_task_alloc();
  v50[2] = v44;
  v50[3] = v87;
  v50[4] = v42;
  v50[5] = v48;
  v50[6] = v49;
  v50[7] = v39;
  v50[8] = v88;
  v50[9] = v46;
  v50[10] = KeyPath;
  type metadata accessor for ClassificationDistribution(255, v43, v85, v51);
  v52 = sub_237EF8A60();
  OUTLINED_FUNCTION_23_8();
  v80 = sub_237EF90F0();
  OUTLINED_FUNCTION_1_24();
  v83 = v53;
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237E95950, v50, v52, v80, MEMORY[0x277D84A98], WitnessTable);
  v56 = v55;

  v38[12] = v56;
  v57 = swift_task_alloc();
  *v57 = v44;
  v57[1] = v86;
  v57[2] = v87;
  v57[3] = v42;
  v57[4] = v77;
  v57[5] = v78;
  v57[6] = v79;
  v57[7] = v88;
  v57[8] = v85;
  v57[9] = v46;
  v81 = swift_getKeyPath();

  v58 = swift_allocObject();
  v58[2] = v87;
  v58[3] = v77;
  v58[4] = v78;
  v58[5] = v79;
  v58[6] = v88;
  v58[7] = v85;
  v58[8] = v46;
  v58[9] = v81;
  v59 = swift_task_alloc();
  v59[2] = v44;
  v59[3] = v86;
  v59[4] = v87;
  v59[5] = v42;
  v59[6] = v77;
  v59[7] = v78;
  v59[8] = v79;
  v59[9] = v88;
  v59[10] = v85;
  v59[11] = v46;
  v59[12] = sub_237C7BB40;
  v59[13] = v58;

  sub_237C9339C(sub_237E95990, v59, v87, v80, MEMORY[0x277D84A98], v46);
  v61 = v60;

  v38[13] = v61;
  OUTLINED_FUNCTION_23_8();
  sub_237EF8A60();
  v38[14] = v85;
  v62 = swift_getWitnessTable();
  swift_getWitnessTable();
  ClassificationMetrics.init<A, B>(_:_:)();
  v63 = OUTLINED_FUNCTION_23_8();
  v66 = type metadata accessor for ClassificationMetrics(v63, v64, v62, v65);
  ClassificationMetrics.accuracy.getter(v66);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_62();

  return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, KeyPath, v42, v77, v78, v79, v46, v82, v80, v81, v38 + 12, v83, v84, v85, v86, v87, v44, v88, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_237E9194C@<X0>(uint64_t a6@<X8>)
{
  v7 = *MEMORY[0x277D2CEC0];
  sub_237EF6B50();
  OUTLINED_FUNCTION_4();
  return (*(v8 + 104))(a6, v7);
}

uint64_t FullyConnectedNetworkClassifier.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_237C8F200(v7, &v6);
}

double FullyConnectedNetworkClassifier.configuration.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_38_18(a1, a2, a3, a4, a5, a6, a7, a8, v9, v10, v11, v12);
  *&result = OUTLINED_FUNCTION_45_20().n128_u64[0];
  return result;
}

uint64_t FullyConnectedNetworkClassifier.labels.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

double FullyConnectedNetworkClassifier.init(labels:configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  *a2 = &unk_284ACECD0;
  *(a2 + 8) = 981668463;
  *(a2 + 16) = 1000;
  *(a2 + 24) = 1045220557;
  *(a2 + 32) = 16;
  *(a2 + 40) = 0x3F847AE147AE147BLL;
  *(a2 + 48) = xmmword_237F11780;
  *(a2 + 64) = a1;
  OUTLINED_FUNCTION_38_18(a1, a3, a4, a5, a6, a7, a8, a9, v10, v11, v12, v13);
  *&result = OUTLINED_FUNCTION_45_20().n128_u64[0];
  return result;
}

uint64_t FullyConnectedNetworkClassifier.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v0[18] = v1;
  v0[19] = v2;
  v0[16] = v3;
  v0[17] = v4;
  v0[14] = v5;
  v0[15] = v6;
  v0[13] = v7;
  v0[20] = *(v1 - 8);
  v0[21] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_29_17();
  memcpy(v8, v9, v10);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E91BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_0();
  v11 = v10[17];
  (*(v10[20] + 16))(v10[21], v10[14], v10[18]);
  v12 = sub_237EF7E90();
  type metadata accessor for AnnotatedFeature(0, v12, *(v11 + 24), v13);
  v14 = sub_237EF8A90();
  v10[22] = v14;
  v10[11] = v14;
  OUTLINED_FUNCTION_23_8();
  v15 = sub_237EF89A0();
  v10[23] = v15;
  v10[12] = v15;
  v16 = swift_task_alloc();
  v10[24] = v16;
  OUTLINED_FUNCTION_23_8();
  v17 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  *v16 = v10;
  v16[1] = sub_237E91D4C;
  v19 = OUTLINED_FUNCTION_52_9(WitnessTable);

  return sub_237E91EB0(v19, (v10 + 11), (v10 + 12), v20, v21, v22, v17, v17, a9, a10);
}

uint64_t sub_237E91D4C()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t sub_237E91EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_0();
  v12 = v11;
  *(v10 + 640) = a10;
  *(v10 + 632) = a9;
  *(v10 + 624) = v13;
  *(v10 + 616) = v14;
  *(v10 + 608) = v11;
  *(v10 + 600) = v15;
  *(v10 + 592) = v16;
  *(v10 + 584) = v17;
  *(v10 + 576) = v18;
  *(v10 + 568) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0, &unk_237F11860);
  *(v10 + 648) = v20;
  OUTLINED_FUNCTION_6_1(v20);
  *(v10 + 656) = v21;
  *(v10 + 664) = OUTLINED_FUNCTION_27_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24A0, &qword_237F118B0);
  OUTLINED_FUNCTION_18(v22);
  *(v10 + 672) = OUTLINED_FUNCTION_27_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24A8, &qword_237F118B8);
  *(v10 + 680) = v23;
  OUTLINED_FUNCTION_18(v23);
  *(v10 + 688) = OUTLINED_FUNCTION_27_0();
  v24 = sub_237EF6B10();
  *(v10 + 696) = v24;
  OUTLINED_FUNCTION_6_1(v24);
  *(v10 + 704) = v25;
  *(v10 + 712) = swift_task_alloc();
  *(v10 + 720) = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B0, &qword_237F118C0);
  *(v10 + 728) = v26;
  OUTLINED_FUNCTION_6_1(v26);
  *(v10 + 736) = v27;
  *(v10 + 744) = OUTLINED_FUNCTION_27_0();
  v28 = sub_237EF64C0();
  *(v10 + 752) = v28;
  OUTLINED_FUNCTION_6_1(v28);
  *(v10 + 760) = v29;
  *(v10 + 768) = OUTLINED_FUNCTION_27_0();
  v30 = v12[2];
  *(v10 + 776) = v30;
  v31 = v12[3];
  *(v10 + 784) = v31;
  v32 = v12[4];
  *(v10 + 792) = v32;
  v33 = v12[5];
  *(v10 + 800) = v33;
  *&v34 = v30;
  *(&v34 + 1) = v31;
  *&v35 = v32;
  *(&v35 + 1) = v33;
  v36 = v12[6];
  *(v10 + 808) = v36;
  v37 = v12[7];
  *(v10 + 816) = v37;
  v38 = v12[8];
  *(v10 + 824) = v38;
  v39 = v12[9];
  *(v10 + 832) = v39;
  *&v40 = v36;
  *(&v40 + 1) = v37;
  *(v10 + 304) = v34;
  *(v10 + 320) = v35;
  *&v34 = v38;
  *(&v34 + 1) = v39;
  *(v10 + 336) = v40;
  *(v10 + 352) = v34;
  v41 = type metadata accessor for FullyConnectedNetworkClassifierModel(0, v10 + 304);
  *(v10 + 840) = v41;
  OUTLINED_FUNCTION_6_1(v41);
  *(v10 + 848) = v42;
  *(v10 + 856) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v43 = sub_237EF7E90();
  *(v10 + 864) = v43;
  OUTLINED_FUNCTION_1();
  *(v10 + 872) = v44;
  *(v10 + 880) = OUTLINED_FUNCTION_27_0();
  *(v10 + 888) = type metadata accessor for AnnotatedFeature(255, v43, v31, v45);
  v46 = sub_237EF90F0();
  *(v10 + 896) = v46;
  OUTLINED_FUNCTION_6_1(v46);
  *(v10 + 904) = v47;
  *(v10 + 912) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_29_17();
  memcpy(v48, v49, v50);
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_23_2(v51, v52, v53);
}

void sub_237E92270()
{
  v154 = v0;
  if ((sub_237EF8DD0() & 1) == 0)
  {
    v1 = *(v0 + 912);
    v2 = *(v0 + 888);
    sub_237EF8E80();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
    v4 = *(v0 + 912);
    if (EnumTagSinglePayload != 1)
    {
      v6 = *(v0 + 888);
      v7 = *(v0 + 632);
      v8 = *(v0 + 616);
      v9 = *(v0 + 608);
      v10 = *(v0 + 576);
      (*(*(v0 + 872) + 16))(*(v0 + 880), *(v0 + 912), *(v0 + 864));
      (*(*(v6 - 8) + 8))(v4, v6);
      v11 = sub_237EF7E20();
      v12 = OUTLINED_FUNCTION_55_1();
      v13(v12);
      v14 = v11;
      OUTLINED_FUNCTION_37_24(v153);
      sub_237E9074C(v10, v11, v9, v8, v7, v15, v16, v17, v106, v109, v112, v115, v118, v121, v123, v125, v127, v129, v133, v136);
      v19 = sub_237EF8DD0();
      if ((v19 & 1) == 0)
      {
        v20 = *(v0 + 640);
        v21 = *(v0 + 624);
        v22 = *(v0 + 608);
        v23 = *(v0 + 584);
        OUTLINED_FUNCTION_37_24(v153);
        sub_237E9074C(v23, v11, v22, v21, v20, v24, v25, v26, v107, v110, v113, v116, v119, v122, v124, v126, v128, v130, v134, v137);
      }

      v27 = *(v0 + 832);
      v28 = *(v0 + 824);
      v29 = *(v0 + 808);
      v131 = *(v0 + 800);
      v135 = *(v0 + 816);
      v140 = *(v0 + 856);
      v141 = *(v0 + 792);
      v30 = *(v0 + 784);
      v138 = *(v0 + 776);
      v31 = *(v0 + 768);
      v32 = *(v0 + 760);
      v142 = *(v0 + 752);
      v149 = *(v0 + 616);
      v151 = *(v0 + 632);
      v147 = *(v0 + 608);
      v144 = *(v0 + 576);
      v33 = sub_237EF8260();
      v34 = sub_237E5E16C(v33, v30, v29, v27);
      v36 = v35;
      *(v0 + 920) = v34;
      *(v0 + 928) = v35;
      v37 = *(v0 + 32);
      v153[0] = *(v0 + 16);
      v153[1] = v37;
      v38 = *(v0 + 64);
      v153[2] = *(v0 + 48);
      v153[3] = v38;
      sub_237C8F200(v0 + 16, v0 + 368);
      sub_237EF8260();
      sub_237EF8260();
      sub_237DE5E24(v153, v34, v36, v14, 0, v138, v30, v141, v140, v131, v29, v135, v28, v27);
      v39 = *(v0 + 56);
      sub_237CDC02C(*(v0 + 64), 0.0);
      v41 = v40;
      *(v0 + 536) = v39;
      *(v0 + 544) = v40;
      (*(v32 + 104))(v31, *MEMORY[0x277D2CD40], v142);
      v42 = type metadata accessor for FullyConnectedNetwork(0);
      sub_237C77B74();
      sub_237EF68C0();
      (*(v32 + 8))(v31, v142);
      OUTLINED_FUNCTION_37_24(v153);
      sub_237E947C0(v144, v34, v36, v147, v149, v151, v43, v44, v108, v111, v114, v117, v120, v122, v124, v126, v128, v131, v135, v138);
      v45 = *(v0 + 32);
      *(v0 + 936) = v45;
      if (v45 < 0)
      {
        __break(1u);
      }

      else
      {
        if (!v45)
        {
LABEL_27:

LABEL_28:
          if ((sub_237D0510C() & 1) == 0)
          {
            v89 = FullyConnectedNetworkClassifierModel.debugDescription.getter();
            sub_237D05198(v89, v90);
          }

          OUTLINED_FUNCTION_9_62();
          (*(v91 + 8))(v42);
          v92 = OUTLINED_FUNCTION_25_38();
          v93(v92, v41, v36);
          v94 = OUTLINED_FUNCTION_28_32();
          v95(v94);

          OUTLINED_FUNCTION_3_0();
          goto LABEL_6;
        }

        for (i = 0; ; i = *(v0 + 944) + 1)
        {
          v132 = i;
          *(v0 + 944) = i;
          v47 = *(v0 + 688);
          v48 = *(v0 + 680);
          sub_237EF6A10();
          sub_237EF6B60();
          v139 = *(v47 + *(v48 + 44));
          OUTLINED_FUNCTION_6_38();
          sub_237C96710(&qword_27DEB24C0, &qword_27DEB24B8, &qword_237F118C8, v49);
          while (1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B8, &qword_237F118C8);
            sub_237EF91A0();
            if (*(v0 + 552))
            {
              *&v153[0] = *(v0 + 552);
              v139(v153);
            }

            OUTLINED_FUNCTION_33_24();
            __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
            v54 = *(v0 + 672);
            v55 = *(v0 + 648);
            v56 = OUTLINED_FUNCTION_38_7();
            v58 = __swift_getEnumTagSinglePayload(v56, v57, v55);
            v59 = *(v0 + 856);
            if (v58 == 1)
            {
              break;
            }

            v143 = *(v0 + 800);
            v145 = *(v0 + 816);
            v150 = *(v0 + 784);
            v152 = *(v0 + 792);
            v146 = *(v0 + 832);
            v148 = *(v0 + 776);
            v60 = *(v0 + 720);
            v61 = *(v0 + 664);
            v62 = *(v0 + 640);
            v63 = *(v0 + 632);
            v64 = *(v0 + 624);
            v65 = *(v0 + 616);
            v66 = (*(*(v0 + 656) + 32))(v61, v54, v55);
            v67 = MEMORY[0x2383E24F0](v66);
            sub_237E94A30(v60, v59, v61, v148, v150, v65, v64, v152, v143, *(&v143 + 1), v145, *(&v145 + 1), v146, v63, v62, (v0 + 560));
            v68 = *(v0 + 648);
            objc_autoreleasePoolPop(v67);
            v69 = OUTLINED_FUNCTION_35_21();
            v70(v69, v68);
          }

          v71 = *(v0 + 840);
          sub_237C65484(*(v0 + 688), &qword_27DEB24A8, &qword_237F118B8);
          v72 = *(v71 + 96);
          v73 = *(v59 + v72);
          v74 = __OFADD__(v73, 1);
          v75 = v73 + 1;
          *(v0 + 952) = v75;
          if (v74)
          {
            break;
          }

          *(v59 + v72) = v75;
          if (sub_237EF8DD0())
          {
            v76 = 0;
            v77 = 0.0;
          }

          else
          {
            OUTLINED_FUNCTION_37_24((v0 + 88));
            OUTLINED_FUNCTION_15_47();
            sub_237E94B88();
            v78 = *(v0 + 696);
            sub_237EF6A90();
            v79 = OUTLINED_FUNCTION_35_21();
            v80(v79, v78);
            v77 = *(v0 + 1032);
            sub_237D0FC4C(v132, v77, v81, v82, v83);
          }

          *(v0 + 960) = v77;
          *(v0 + 1040) = v76 & 1;
          v84 = *(v0 + 592);
          v42 = &qword_27DEB24C0;
          if (v84)
          {
            v96 = *(v0 + 600);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8, &qword_237F118D0);
            inited = swift_initStackObject();
            OUTLINED_FUNCTION_32_6(inited, xmmword_237F03530);
            sub_237C70604(v84, v96);
            sub_237EF6A90();
            inited[3].n128_f64[0] = *(v0 + 1036);
            sub_237C758C4();
            *(v0 + 968) = sub_237EF8230();
            OUTLINED_FUNCTION_37_24((v0 + 160));
            v98 = swift_task_alloc();
            *(v0 + 976) = v98;
            *v98 = v0;
            OUTLINED_FUNCTION_2_110(v98);
            v99 = OUTLINED_FUNCTION_16_53();

            sub_237E91150(v99, v100, v101, v102, v103);
            return;
          }

          v85 = *(v0 + 704);
          if (v76)
          {
            v41 = *(v0 + 920);

            v36 = v85 + 8;
            v104 = OUTLINED_FUNCTION_43_21();
            v105(v104);
            goto LABEL_28;
          }

          v86 = *(v0 + 936);
          v41 = *(v0 + 944) + 1;
          v36 = v85 + 8;
          v87 = OUTLINED_FUNCTION_43_21();
          v88(v87);
          if (v41 == v86)
          {
            goto LABEL_27;
          }
        }
      }

      __break(1u);
      return;
    }

    (*(*(v0 + 904) + 8))(*(v0 + 912), *(v0 + 896));
  }

  sub_237C84150();
  OUTLINED_FUNCTION_3_23();
  swift_allocError();
  *v5 = 0xD000000000000026;
  *(v5 + 8) = 0x8000000237F01710;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 2;
  swift_willThrow();
  OUTLINED_FUNCTION_4_92();

  OUTLINED_FUNCTION_3_0();
LABEL_6:

  v18();
}

uint64_t sub_237E92DD4()
{
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_14_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  *(v5 + 984) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 992) = v3;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237E93858()
{
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_14_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  *(v5 + 1016) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 1024) = v3;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_237E941A0()
{
  v0 = OUTLINED_FUNCTION_14_64();
  v1(v0);
  v2 = OUTLINED_FUNCTION_55_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_31_0();
  v5(v4);
  OUTLINED_FUNCTION_4_92();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  __asm { BRAA            X1, X16 }
}

void sub_237E942AC()
{
  v0 = OUTLINED_FUNCTION_14_64();
  v1(v0);
  v2 = OUTLINED_FUNCTION_55_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_31_0();
  v5(v4);
  OUTLINED_FUNCTION_4_92();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  __asm { BRAA            X1, X16 }
}

uint64_t FullyConnectedNetworkClassifier.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_2_0();
  v12 = v11;
  v10[21] = a9;
  v10[22] = a10;
  v10[19] = v11;
  v10[20] = v13;
  v10[17] = v14;
  v10[18] = v15;
  v10[15] = v16;
  v10[16] = v17;
  v10[13] = v18;
  v10[14] = v19;
  v10[23] = *(v13 - 8);
  v10[24] = OUTLINED_FUNCTION_27_0();
  v10[25] = *(v12 - 8);
  v10[26] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_29_17();
  memcpy(v20, v21, v22);
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_23_2(v23, v24, v25);
}

uint64_t sub_237E944BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v10[23];
  v11 = v10[24];
  v13 = v10[20];
  v14 = v10[18];
  v15 = v10[15];
  (*(v10[25] + 16))(v10[26], v10[14], v10[19], a4, a5, a6, a7, a8);
  v16 = sub_237EF7E90();
  type metadata accessor for AnnotatedFeature(0, v16, *(v14 + 24), v17);
  v18 = sub_237EF8A90();
  v10[27] = v18;
  v10[11] = v18;
  (*(v12 + 16))(v11, v15, v13);
  v19 = sub_237EF8A90();
  v10[28] = v19;
  v10[12] = v19;
  v20 = swift_task_alloc();
  v10[29] = v20;
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  *v20 = v10;
  v20[1] = sub_237E9464C;
  OUTLINED_FUNCTION_52_9(WitnessTable);
  OUTLINED_FUNCTION_45();

  return sub_237E91EB0(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_237E9464C()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

void sub_237E947C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  v22 = v20;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24D0, &unk_237F11920);
  OUTLINED_FUNCTION_18(v33);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19();
  v42 = v35;
  memcpy(v58, v22, 0x48uLL);
  v36 = v28[2];
  v43[1] = v28[1];
  v44 = v26;
  v45 = v36;
  v37 = v28[4];
  v46 = v28[3];
  v47 = v37;
  v48 = v24;
  v49 = v58;
  v50 = v32;
  v51 = v30;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0, &unk_237F11860);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  sub_237C9339C(sub_237E958F0, v43, v26, v38, v39, v24);
  if (!v21)
  {
    v40 = sub_237EF64F0();
    v41 = sub_237EF64E0();
    v56 = v40;
    v57 = MEMORY[0x277D2CD60];
    v54 = 0;
    v55 = v41;
    v52 = 0u;
    v53 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B8, &unk_237F1C880);
    sub_237C96710(&qword_27DEB24D8, &qword_27DEAE2B8, &unk_237F1C880, MEMORY[0x277D83980]);
    sub_237D7E5CC();
    sub_237C96710(&qword_27DEB24E8, &qword_27DEAE2B0, &unk_237F11860, MEMORY[0x277D2CC60]);
    sub_237E9194C(v42);
    sub_237EF6B70();
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E94A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v27[9] = a1;
  v21 = sub_237EF6B10();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237EF8B90();
  if (v16)
  {
    *a16 = v16;
  }

  else
  {
    v27[0] = a4;
    v27[1] = a5;
    v27[2] = a8;
    v27[3] = a9;
    v27[4] = a10;
    v27[5] = a11;
    v27[6] = a12;
    v27[7] = a13;
    v26 = type metadata accessor for FullyConnectedNetworkClassifierModel(0, v27);
    sub_237DE6104(a3, v26);
    sub_237EF69F0();
    return (*(v22 + 8))(v24, v21);
  }

  return result;
}

void sub_237E94B88()
{
  OUTLINED_FUNCTION_13_4();
  v52 = v1;
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v51 = v13;
  v43 = v14;
  v48 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24C8, &unk_237F16690);
  OUTLINED_FUNCTION_18(v16);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19();
  v46 = v18;
  v47 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v45 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_26();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v50 = &v43 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0, &unk_237F11860);
  OUTLINED_FUNCTION_1();
  v44 = v27;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19();
  v49 = v29;
  memcpy(v62, v2, 0x48uLL);
  v30 = v8[2];
  v53[1] = v8[1];
  v54 = v6;
  v55 = v30;
  v31 = v8[4];
  v56 = v8[3];
  v57 = v31;
  v58 = v4;
  v59 = v62;
  v60 = v12;
  v61 = v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  v33 = v52;
  sub_237C9339C(sub_237E959E4, v53, v6, v26, v32, v4);
  if (!v33)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B8, &unk_237F1C880);
    v35 = sub_237C96710(&qword_27DEAE2C0, &qword_27DEAE2B8, &unk_237F1C880, MEMORY[0x277D83988]);
    sub_237E90EAC(v34, v35, v49);

    sub_237EF6420();
    type metadata accessor for FullyConnectedNetwork(0);
    sub_237C77B74();
    sub_237EF6830();
    v36 = *(v45 + 8);
    v36(v23, v47);
    sub_237EF6400();
    v37 = *MEMORY[0x277D2CD58];
    v38 = sub_237EF64D0();
    OUTLINED_FUNCTION_4();
    v40 = v46;
    (*(v39 + 104))(v46, v37, v38);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v38);
    sub_237EF6570();
    sub_237C65484(v40, &qword_27DEB24C8, &unk_237F16690);
    v41 = OUTLINED_FUNCTION_55_1();
    (v36)(v41);
    v42 = OUTLINED_FUNCTION_43_21();
    (v36)(v42);
    (*(v44 + 8))(v49, v26);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E94FC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return FullyConnectedNetworkClassifier.fitted<A>(to:eventHandler:)();
}

uint64_t sub_237E950A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_237C6A904;

  return FullyConnectedNetworkClassifier.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v21, a6, a7, a8, v20);
}

void sub_237E951A0()
{
  OUTLINED_FUNCTION_13_4();
  v55 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v4 + 24);
  v58 = *(v8 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v70 = v10 - v9;
  v11 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v11);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = *(v0 + 64);
  v21 = *(v5 + 72);
  v62 = v20;
  if (sub_237EF8C70() < 2)
  {
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v28 = swift_allocError();
    *v29 = 0xD000000000000026;
    v29[1] = 0x8000000237F01710;
    v29[2] = 0xD000000000000027;
    v29[3] = 0x8000000237EFBED0;
    OUTLINED_FUNCTION_47_5(v28, v29);
LABEL_22:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  (*(v15 + 16))(v19, v7, v3);
  v22 = sub_237EF8D00();
  v23 = v22;
  v60 = v21;
  if ((v22 & 0xC000000000000001) != 0)
  {
    sub_237EF92A0();
    sub_237EF8CC0();
    v23 = v65;
    v24 = v66;
    v25 = v67;
    v26 = v68;
    v27 = v69;
  }

  else
  {
    v26 = 0;
    v30 = -1 << *(v22 + 32);
    v24 = v22 + 56;
    v25 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v27 = v32 & *(v22 + 56);
  }

  v54 = v25;
  v33 = (v25 + 64) >> 6;
  v56 = v58 + 16;
  v34 = (v58 + 32);
  v59 = v58 + 8;
  v61 = v23;
  if (v23 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v35 = v27;
  v36 = v26;
  if (v27)
  {
LABEL_15:
    v57 = v27;
    v27 = (v35 - 1) & v35;
    (*(v58 + 16))(v14, *(v23 + 48) + *(v58 + 72) * (__clz(__rbit64(v35)) | (v36 << 6)), v8);
    while (1)
    {
      OUTLINED_FUNCTION_33_24();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
      (*v34)(v70, v14, v8);
      if ((sub_237EF8CD0() & 1) == 0)
      {
        break;
      }

      v42 = OUTLINED_FUNCTION_48_15();
      v43(v42);
      v26 = v36;
      v23 = v61;
      if ((v61 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_16:
      if (!sub_237EF92B0())
      {
        goto LABEL_21;
      }

      sub_237EF9D10();
      swift_unknownObjectRelease();
      v36 = v26;
      v57 = v27;
    }

    v63 = 0;
    v64 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0x27206C6562614CLL, 0xE700000000000000);
    sub_237EF9CF0();
    MEMORY[0x2383E0710](0xD000000000000024, 0x8000000237EFE4B0);
    v48 = v63;
    v49 = v64;
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v50 = swift_allocError();
    *v51 = 0xD000000000000026;
    v51[1] = 0x8000000237F01710;
    v51[2] = v48;
    v51[3] = v49;
    OUTLINED_FUNCTION_47_5(v50, v51);
    sub_237C9FE9C();
    v52 = OUTLINED_FUNCTION_48_15();
    v53(v52);
    goto LABEL_22;
  }

  v37 = v26;
  while (1)
  {
    v36 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v36 >= v33)
    {
LABEL_21:
      OUTLINED_FUNCTION_33_24();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
      sub_237C9FE9C();
      goto LABEL_22;
    }

    v35 = *(v24 + 8 * v36);
    ++v37;
    if (v35)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_237E956A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0, &unk_237F11860);
  a3(v11);
  sub_237EF6950();
  return (*(v6 + 8))(v10, v4);
}

void sub_237E95794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, void *a13)
{
  v14[0] = a5;
  v14[1] = a6;
  v14[2] = a8;
  v15 = a9;
  v16 = a10;
  v17 = a11;
  type metadata accessor for FullyConnectedNetworkClassifier(0, v14);
  sub_237E90A60();
  if (v13)
  {
    *a13 = v13;
  }
}

uint64_t sub_237E9589C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E95990@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  (*(v1 + 96))();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

__n128 OUTLINED_FUNCTION_10_65()
{
  result = v0[50];
  v3 = v0[49].n128_u64[1];
  *(v1 - 128) = v0[49].n128_u64[0];
  *(v1 - 120) = v3;
  *(v1 - 136) = v0[48].n128_u64[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_64()
{
  v1 = v0[93];
  sub_237C5EE40(v0[74], v0[75]);
  return v1;
}

void OUTLINED_FUNCTION_20_46()
{
  *(v3 - 136) = v1;
  *(v3 - 128) = v0;
  v4 = *(v2 + 664);
  *(v3 - 120) = *(v2 + 672);
  *(v3 - 112) = v4;
}

void *OUTLINED_FUNCTION_37_24(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_38_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12)
{
  v14 = v12[1];
  a9 = *v12;
  a10 = v14;
  v15 = v12[3];
  a11 = v12[2];
  a12 = v15;

  return sub_237D78264(&a9);
}

__n128 OUTLINED_FUNCTION_45_20()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_14()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

void sub_237E95C6C(double **a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v31 = a1[3];
  v32 = *a1;
  v4 = a1[4];
  v3 = a1[5];
  if (v4 >= v1)
  {
    v5 = a1[1];
  }

  else
  {
    v5 = a1[4];
  }

  v33 = MEMORY[0x277D84F90];
  sub_237C62FA0(0, v5 & ~(v5 >> 63), 0);
  v6 = v1 * v2;
  if ((v1 * v2) >> 64 != (v1 * v2) >> 63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = v4 * v3;
  if ((v4 * v3) >> 64 != (v4 * v3) >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5 < 0)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v8 = v33;
  v9 = 8 * v3;
  v10 = 8 * v2;
  if (v5)
  {
    v11 = 8 * v7;
    v12 = 8 * v6;
    v14 = v31;
    v13 = v32;
    v15 = v32;
    v16 = v31;
    while (v12)
    {
      if (!v11)
      {
        goto LABEL_24;
      }

      v17 = *v15;
      v18 = *v16;
      v34 = v8;
      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      if (v20 >= v19 >> 1)
      {
        v29 = v6;
        v30 = v9;
        v28 = v7;
        sub_237C62FA0(v19 > 1, v20 + 1, 1);
        v7 = v28;
        v6 = v29;
        v14 = v31;
        v13 = v32;
        v9 = v30;
        v8 = v34;
      }

      v16 = (v16 + v9);
      *(v8 + 16) = v20 + 1;
      *(v8 + 8 * v20 + 32) = (v17 - v18) * (v17 - v18);
      v11 -= v9;
      v15 = (v15 + v10);
      v12 -= v10;
      if (!--v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = v31;
  v13 = v32;
  v16 = v31;
  v15 = v32;
LABEL_16:
  v21 = &v13[v6];
  v22 = &v14[v7];
  while (v15 != v21 && v16 != v22)
  {
    v23 = *v15;
    v24 = *v16;
    v35 = v8;
    v26 = *(v8 + 16);
    v25 = *(v8 + 24);
    if (v26 >= v25 >> 1)
    {
      v27 = v9;
      sub_237C62FA0(v25 > 1, v26 + 1, 1);
      v9 = v27;
      v8 = v35;
    }

    *(v8 + 16) = v26 + 1;
    *(v8 + 8 * v26 + 32) = (v23 - v24) * (v23 - v24);
    v16 = (v16 + v9);
    v15 = (v15 + v10);
  }
}

void sub_237E95E68(double **a1)
{
  v1 = a1[1];
  v32 = *a1;
  v2 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  if (v5 >= v1)
  {
    v6 = a1[1];
  }

  else
  {
    v6 = a1[4];
  }

  v33 = MEMORY[0x277D84F90];
  sub_237C62FA0(0, v6 & ~(v6 >> 63), 0);
  v7 = v1 * v2;
  if ((v1 * v2) >> 64 != (v1 * v2) >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v8 = v5 * v4;
  if ((v5 * v4) >> 64 != (v5 * v4) >> 63)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v6 < 0)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v31 = v3;
  v9 = v33;
  v10 = 8 * v4;
  v11 = 8 * v2;
  if (v6)
  {
    v12 = 8 * v8;
    v13 = 8 * v7;
    v14 = v32;
    v15 = v32;
    while (v13)
    {
      if (!v12)
      {
        goto LABEL_26;
      }

      v16 = *v15;
      v17 = *v3;
      v34 = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        v29 = v7;
        v30 = v10;
        v28 = v8;
        sub_237C62FA0(v18 > 1, v19 + 1, 1);
        v8 = v28;
        v7 = v29;
        v14 = v32;
        v10 = v30;
        v9 = v34;
      }

      v3 = (v3 + v10);
      *(v9 + 16) = v19 + 1;
      *(v9 + 8 * v19 + 32) = vabdd_f64(v16, v17);
      v12 -= v10;
      v15 = (v15 + v11);
      v13 -= v11;
      if (!--v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = v32;
  v15 = v32;
LABEL_16:
  v20 = &v14[v7];
  v21 = &v31[v8];
  while (v15 != v20 && v3 != v21)
  {
    v23 = *v15;
    v24 = *v3;
    v35 = v9;
    v26 = *(v9 + 16);
    v25 = *(v9 + 24);
    if (v26 >= v25 >> 1)
    {
      v27 = v10;
      sub_237C62FA0(v25 > 1, v26 + 1, 1);
      v10 = v27;
      v9 = v35;
    }

    *(v9 + 16) = v26 + 1;
    *(v9 + 8 * v26 + 32) = vabdd_f64(v23, v24);
    v3 = (v3 + v10);
    v15 = (v15 + v11);
  }
}

double sub_237E96054(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  if (a2)
  {
    v11[0] = a1;
    v11[1] = a2;
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = a5;
    v11[5] = a6;
    sub_237E95C6C(v11);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = sub_237E96190(v6);

      v9 = v8 / v7;
    }

    else
    {

      v9 = 0.0;
    }
  }

  else
  {
    v9 = NAN;
  }

  return sqrt(v9);
}

double sub_237E960F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = (a1 + 32);
  v3 = 0.0;
  v4 = 0.0;
  do
  {
    v5 = *v2++;
    v6 = v5 - v3;
    *&result = v4 + v6;
    v3 = ((v4 + v6) - v4) - v6;
    v4 = *&result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_237E96130(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a2 * a3) >> 64 == (a2 * a3) >> 63)
  {
    if (a2 * a3)
    {
      v3 = 0;
      v4 = 0.0;
      v5 = 0.0;
      do
      {
        v6 = *(result + v3) - v4;
        v7 = v5 + v6;
        v4 = v5 + v6 - v5 - v6;
        v3 += 8 * a3;
        v5 = v7;
      }

      while (8 * a3 * a2 != v3);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_237E96190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = (a1 + 32);
  v3 = 0.0;
  v4 = 0.0;
  do
  {
    v5 = *v2++;
    v6 = v5 - v3;
    result = v4 + v6;
    v3 = v4 + v6 - v4 - v6;
    v4 = result;
    --v1;
  }

  while (v1);
  return result;
}

__n128 BaseLinearRegressor.configuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v1 + 48);
  return result;
}

__n128 BaseLinearRegressor.configuration.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(a1 + 48);
  return result;
}

__n128 BaseLinearRegressor.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

void BaseLinearRegressor.fitted(features:annotations:eventHandler:)()
{
  OUTLINED_FUNCTION_19_44();
  isUniquelyReferenced_nonNull_native = v1;
  v126 = v4;
  v127 = v3;
  v139 = v5;
  v7 = v6;
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  v133 = *(v0 + 16);
  v14 = *(v0 + 24);
  v13 = *(v0 + 32);
  v15 = *(v0 + 49);
  v16 = *(v0 + 48);
  v135 = v9;
  v151[0] = v9;
  v151[1] = v10;
  v134 = v11;
  LOBYTE(v151[2]) = v11;
  v151[3] = v12;

  v132 = v7;
  sub_237ECE960(v151, v7, v16 & 1, &v157);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_237F03530;
  if (__OFSUB__(v158, 1))
  {
LABEL_56:
    __break(1u);
LABEL_57:
    sub_237EFA020();
    __break(1u);
  }

  else
  {
    v18 = v17;
    *(v17 + 32) = v158 - 1;
    v19 = OUTLINED_FUNCTION_14_65();
    sub_237E61498(v20, v18, v15, v21, v19, v22);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v23 = sub_237E613EC(v10, 0.0);
    v151[0] = v14;
    v24 = v153;
    v25 = v154;
    __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
    (*(v25 + 40))(v23, v151, v24, v25);
    v26 = isUniquelyReferenced_nonNull_native;

    if (!isUniquelyReferenced_nonNull_native)
    {
      if (v134)
      {
        v27 = v135;
      }

      else
      {
        v27 = v10;
      }

      v130 = v12 + 32;
      v131 = v27;
      v128 = v10;
      v129 = "ts/BaseTreeRegressor.swift";
      v28 = v133;
      while (1)
      {
        v29 = OUTLINED_FUNCTION_6_76();
        __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
        (*(isUniquelyReferenced_nonNull_native + 56))(v12, isUniquelyReferenced_nonNull_native);
        if (v26)
        {
          break;
        }

        v31 = OUTLINED_FUNCTION_6_76();
        __swift_project_boxed_opaque_existential_1(v31, v32);
        v33 = OUTLINED_FUNCTION_9_63();
        v34(v33);
        memcpy(v151, v150, 0x49uLL);
        v35 = v151[0];

        sub_237C863A0(v151, &qword_27DEB2A08, qword_237F15D10);
        v36 = v159;
        v140 = 0;
        v136 = v159;
        if (v159)
        {
          v37 = *(v35 + 16);
          if (v37)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_237E643FC(v35, v38, v39, v40);
              v35 = v41;
            }

            v42 = 0;
            v43 = *(v36 + 16);
            while (v43 != v42)
            {
              if (v42 >= *(v35 + 16))
              {
                goto LABEL_52;
              }

              *(v35 + 8 * v42 + 32) = *(v36 + 32 + 8 * v42) * *(v35 + 8 * v42 + 32);
              if (v37 == ++v42)
              {
                goto LABEL_18;
              }
            }

            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }
        }

LABEL_18:
        v44 = v153;
        v12 = v154;
        __swift_project_boxed_opaque_existential_1(v152, v153);
        v150[0] = v13;
        v45 = sub_237E6A4FC(v28, v150, v44, v12);
        if ((v45 & 1) != 0 || (v46 = OUTLINED_FUNCTION_6_76(), __swift_project_boxed_opaque_existential_1(v46, v47), v48 = OUTLINED_FUNCTION_9_63(), v49(v48) < 5) || ((OUTLINED_FUNCTION_24_35(), !v51) ? (v51 = v50 == v28) : (v51 = 1), v51))
        {
          v138 = v45;
          v155[0] = v130;
          v155[1] = v135;
          v52 = v132;
          v155[2] = v10;
          v155[3] = v131;
          v156 = v134;
          v53 = *(v132 + 16);
          v54 = OUTLINED_FUNCTION_2_111();
          __swift_project_boxed_opaque_existential_1(v54, v55);
          OUTLINED_FUNCTION_18_45();
          v56 = OUTLINED_FUNCTION_81_1();
          v57(v56);
          memcpy(v150, v149, 0x49uLL);
          v58 = v150[0];

          sub_237C863A0(v150, &qword_27DEB2A08, qword_237F15D10);
          v59 = sub_237E97834(v58, v155, (v52 + 32), v53, 1);
          v61 = v60;

          v62 = MEMORY[0x277D839F8];
          *(&v149[1] + 1) = MEMORY[0x277D839F8];
          *v149 = v59;
          sub_237C91804(v149, v141);
          __swift_mutable_project_boxed_opaque_existential_1(v141, *(&v141[1] + 1));
          OUTLINED_FUNCTION_1_1();
          MEMORY[0x28223BE20](v63);
          OUTLINED_FUNCTION_5();
          v66 = (v65 - v64);
          (*(v67 + 16))(v65 - v64);
          v68 = *v66;
          v69 = MEMORY[0x277D84F98];
          swift_isUniquelyReferenced_nonNull_native();
          *&v145 = v69;
          v148 = v62;
          *&v147 = v68;
          OUTLINED_FUNCTION_1_114();
          v70 = sub_237D30F88();
          if (__OFADD__(*(v69 + 16), (v71 & 1) == 0))
          {
            goto LABEL_53;
          }

          v72 = v70;
          v73 = v71;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51C0, &qword_237F1CCB0);
          if (sub_237EF96B0())
          {
            OUTLINED_FUNCTION_1_114();
            v74 = sub_237D30F88();
            if ((v73 & 1) != (v75 & 1))
            {
              goto LABEL_57;
            }

            v72 = v74;
          }

          v76 = v145;
          if (v73)
          {
            v77 = (*(v145 + 56) + 32 * v72);
            __swift_destroy_boxed_opaque_existential_1(v77);
            sub_237C91804(&v147, v77);
          }

          else
          {
            __swift_mutable_project_boxed_opaque_existential_1(&v147, v148);
            OUTLINED_FUNCTION_1_1();
            MEMORY[0x28223BE20](v78);
            v80 = OUTLINED_FUNCTION_3_97(v79, v125);
            v81(v80);
            OUTLINED_FUNCTION_10_66();
            sub_237E98BD4(v82, v83, v84, v76, v85);
            __swift_destroy_boxed_opaque_existential_1(&v147);
          }

          v86 = v129;
          __swift_destroy_boxed_opaque_existential_1(v141);
          v87 = MEMORY[0x277D839F8];
          v148 = MEMORY[0x277D839F8];
          *&v147 = v61;
          sub_237C91804(&v147, &v145);
          __swift_mutable_project_boxed_opaque_existential_1(&v145, v146);
          v137 = &v125;
          OUTLINED_FUNCTION_1_1();
          MEMORY[0x28223BE20](v88);
          v90 = OUTLINED_FUNCTION_3_97(v89, v125);
          v91(v90);
          v92 = *v73;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v160 = v76;
          v144 = v87;
          *&v143 = v92;
          v93 = sub_237D30F88();
          v95 = v94;
          if (__OFADD__(v76[2], (v94 & 1) == 0))
          {
            goto LABEL_54;
          }

          v96 = v93;
          if (sub_237EF96B0())
          {
            v97 = sub_237D30F88();
            if ((v95 & 1) != (v98 & 1))
            {
              goto LABEL_57;
            }

            v96 = v97;
          }

          v12 = v76;
          if (v95)
          {
            v99 = (v76[7] + 32 * v96);
            __swift_destroy_boxed_opaque_existential_1((v160[7] + 32 * v96));
            sub_237C91804(&v143, v99);
          }

          else
          {
            __swift_mutable_project_boxed_opaque_existential_1(&v143, v144);
            OUTLINED_FUNCTION_1_1();
            MEMORY[0x28223BE20](v100);
            OUTLINED_FUNCTION_5();
            isUniquelyReferenced_nonNull_native = v102 - v101;
            (*(v103 + 16))(v102 - v101);
            sub_237E98BD4(v96, 0xD000000000000012, v86 | 0x8000000000000000, v76, *isUniquelyReferenced_nonNull_native);
            __swift_destroy_boxed_opaque_existential_1(&v143);
          }

          __swift_destroy_boxed_opaque_existential_1(&v145);
          v104 = *(v35 + 16);
          if (v104)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0, &unk_237F07370);
            OUTLINED_FUNCTION_15_48();
            v105 = swift_allocObject();
            _swift_stdlib_malloc_size(v105);
            OUTLINED_FUNCTION_3();
            v105[2] = v104;
            v105[3] = v106;
            MEMORY[0x28223BE20](v107);
            *(&v125 - 4) = v108;
            *(&v125 - 3) = v35;
            *(&v125 - 2) = v108;
            *(&v125 - 1) = v104;
            isUniquelyReferenced_nonNull_native = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C8, &qword_237F03110);
            v109 = sub_237C65348();
            v110 = v140;
            DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237C65328, (&v125 - 6), v35, MEMORY[0x277D839F8], isUniquelyReferenced_nonNull_native, v109);
            v140 = v110;

            if (*&v149[1] != v104)
            {
              goto LABEL_55;
            }
          }

          else
          {
          }

          if (v139)
          {
            v111 = OUTLINED_FUNCTION_2_111();
            __swift_project_boxed_opaque_existential_1(v111, v112);
            v113 = *(v104 + 32);
            v114 = v127;
            sub_237C70604(v139, v127);
            v115 = OUTLINED_FUNCTION_81_1();
            v113(v115);
            OUTLINED_FUNCTION_8_83();
            OUTLINED_FUNCTION_21_50();
            *&v149[0] = v116;
            *(&v149[0] + 1) = isUniquelyReferenced_nonNull_native;
            v28 = v133;
            *&v149[1] = v117;
            *(&v149[1] + 1) = v133;
            LOBYTE(v149[2]) = 0;
            *(&v149[2] + 1) = v160;
            v139(v149);

            OUTLINED_FUNCTION_0_94();
            sub_237C5EE40(v139, v114);

            v26 = v140;
            v10 = v128;
          }

          else
          {

            OUTLINED_FUNCTION_0_94();
            v26 = v140;
            v10 = v128;
            v28 = v133;
          }

          if (v138)
          {
            v118 = OUTLINED_FUNCTION_6_76();
            __swift_project_boxed_opaque_existential_1(v118, v119);
            v120 = OUTLINED_FUNCTION_9_63();
            v121(v120);
            memcpy(v149, v141, 0x49uLL);
            v122 = *&v149[0];

            sub_237C863A0(v149, &qword_27DEB2A08, qword_237F15D10);
            v142 = v122;
            if (v136)
            {
              sub_237E6F7F0(&v142, v136);
              sub_237CC99F4(&v157);
              v122 = v142;
            }

            else
            {
              sub_237CC99F4(&v157);
            }

            v123 = v126;
            *(v126 + 65) = 0u;
            *(v123 + 56) = 0u;
            *(v123 + 40) = 0u;
            *(v123 + 24) = 0u;
            *(v123 + 8) = 0u;
            v124 = sub_237C62BD0(v122);

            *v123 = v124;
            __swift_destroy_boxed_opaque_existential_1(v152);
            goto LABEL_4;
          }
        }

        else
        {

          v26 = v140;
        }
      }
    }

    sub_237CC99F4(&v157);
    __swift_destroy_boxed_opaque_existential_1(v152);
LABEL_4:
    OUTLINED_FUNCTION_20_41();
  }
}

void BaseLinearRegressor.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_19_44();
  a23 = v26;
  a24 = v27;
  v28 = v25;
  v154 = v29;
  v165 = v30;
  v32 = v31;
  v152 = v33;
  v35 = *v34;
  v36 = v34[1];
  v37 = *(v34 + 16);
  v38 = v34[3];
  v168 = *v39;
  v167 = v39[1];
  v166 = *(v39 + 16);
  v174 = v39[3];
  v40 = *(v24 + 16);
  v172 = v41;
  v173 = v40;
  v43 = *(v24 + 24);
  v42 = *(v24 + 32);
  v44 = *(v24 + 40);
  v45 = *(v24 + 49);
  v46 = *(v24 + 48);
  v47 = v36;
  v170 = v35;
  v182[0] = v35;
  v182[1] = v36;
  v169 = v37;
  LOBYTE(v182[2]) = v37;
  v182[3] = v38;

  v164 = v32;
  sub_237ECE960(v182, v32, v46 & 1, &v190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_237F03530;
  if (__OFSUB__(v191, 1))
  {
LABEL_53:
    __break(1u);
    return;
  }

  v49 = v48;
  *(v48 + 32) = v191 - 1;
  v50 = OUTLINED_FUNCTION_14_65();
  sub_237E61498(v51, v49, v45, v52, v50, v53);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_237CDC02C(v44, 0.0);
  v55 = v54;
  v56 = sub_237E613EC(v47, 0.0);
  v182[0] = v43;
  v57 = v184;
  v58 = v185;
  __swift_mutable_project_boxed_opaque_existential_1(v183, v184);
  (*(v58 + 40))(v56, v182, v57, v58);
  v175 = v28;
  if (v28)
  {

    sub_237CC99F4(&v190);

    goto LABEL_49;
  }

  v153 = v55;

  v59 = v170;
  if (!v169)
  {
    v59 = v47;
  }

  v162 = v59;
  v163 = v47;
  v160 = "ts/BaseTreeRegressor.swift";
  v161 = v38 + 32;
  if (v166)
  {
    v60 = v168;
  }

  else
  {
    v60 = v167;
  }

  v158 = v174 + 32;
  v159 = v60;
  v156 = "validation_accuracy";
  v157 = "validation_max_error";
  do
  {
    while (1)
    {
      v61 = v184;
      v62 = OUTLINED_FUNCTION_22_40();
      __swift_mutable_project_boxed_opaque_existential_1(v62, v61);
      v63 = v175;
      (*(v56 + 56))(v61, v56);
      v175 = v63;
      if (v63)
      {

        sub_237CC99F4(&v190);
        goto LABEL_49;
      }

      v64 = v184;
      v65 = OUTLINED_FUNCTION_22_40();
      __swift_project_boxed_opaque_existential_1(v65, v64);
      OUTLINED_FUNCTION_18_45();
      v66(v181, v64, v56);
      memcpy(v182, v181, 0x49uLL);
      v67 = v182[0];

      sub_237C863A0(v182, &qword_27DEB2A08, qword_237F15D10);
      a14 = v67;
      v68 = v192;
      if (v192)
      {
        sub_237E6F7F0(&a14, v192);
      }

      v155 = v68;
      v188[0] = v161;
      v188[1] = v170;
      v188[2] = v163;
      v188[3] = v162;
      v189 = v169;
      v69 = v164;
      v70 = *(v164 + 16);
      v71 = v184;
      v72 = OUTLINED_FUNCTION_19_47();
      __swift_project_boxed_opaque_existential_1(v72, v71);
      v73 = v55[3];
      v74 = v165;

      v73(v179, v71, v55);
      memcpy(v181, v179, 0x49uLL);
      v75 = v181[0];

      sub_237C863A0(v181, &qword_27DEB2A08, qword_237F15D10);
      v76 = sub_237E97834(v75, v188, (v69 + 32), v70, 1);
      v78 = v77;

      v79 = MEMORY[0x277D839F8];
      *(&v179[1] + 1) = MEMORY[0x277D839F8];
      *v179 = v76;
      sub_237C91804(v179, v178);
      __swift_mutable_project_boxed_opaque_existential_1(v178, *(&v178[1] + 1));
      OUTLINED_FUNCTION_1_1();
      MEMORY[0x28223BE20](v80);
      v82 = OUTLINED_FUNCTION_3_97(v81, v152);
      v83(v82);
      v84 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v176[0] = v84;
      v85 = OUTLINED_FUNCTION_1_114();
      sub_237E98A04(v89, v85, v86, v87, v88);
      v90 = v176[0];
      __swift_destroy_boxed_opaque_existential_1(v178);
      *(&v179[1] + 1) = v79;
      *&v179[0] = v78;
      sub_237C91804(v179, v178);
      __swift_mutable_project_boxed_opaque_existential_1(v178, *(&v178[1] + 1));
      OUTLINED_FUNCTION_1_1();
      MEMORY[0x28223BE20](v91);
      OUTLINED_FUNCTION_5();
      v94 = (v93 - v92);
      (*(v95 + 16))(v93 - v92);
      v96 = *v94;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v176[0] = v90;
      sub_237E98A04(v96, 0xD000000000000012, v160 | 0x8000000000000000, isUniquelyReferenced_nonNull_native, v176);
      v180 = v176[0];
      __swift_destroy_boxed_opaque_existential_1(v178);
      v186[0] = v158;
      v186[1] = v168;
      v186[2] = v167;
      v186[3] = v159;
      v187 = v166;
      v98 = *(v74 + 16);
      v99 = v184;
      v100 = OUTLINED_FUNCTION_19_47();
      __swift_project_boxed_opaque_existential_1(v100, v99);
      (v55[3])(v178, v99, v55);
      memcpy(v179, v178, 0x49uLL);
      v101 = *&v179[0];

      sub_237C863A0(v179, &qword_27DEB2A08, qword_237F15D10);
      v102 = sub_237E97834(v101, v186, (v74 + 32), v98, 1);
      v104 = v103;

      *(&v178[1] + 1) = v79;
      *v178 = v102;
      sub_237E60F7C(v178, 0xD000000000000010, v157 | 0x8000000000000000);
      *(&v178[1] + 1) = v79;
      *&v178[0] = v104;
      sub_237E60F7C(v178, 0xD000000000000014, v156 | 0x8000000000000000);

      v105 = v180;
      v106 = v184;
      v107 = OUTLINED_FUNCTION_22_40();
      __swift_project_boxed_opaque_existential_1(v107, v106);
      *v178 = v42;
      v108 = sub_237E6A4FC(v173, v178, v106, v98);
      if (*(v105 + 16))
      {
        v109 = sub_237D30F88();
        if (v110)
        {
          sub_237CBA478(*(v105 + 56) + 32 * v109, v178);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0, &qword_237F03CE0);
          if (swift_dynamicCast())
          {
            v111 = *v176;
            v112 = v184;
            v113 = OUTLINED_FUNCTION_19_47();
            __swift_project_boxed_opaque_existential_1(v113, v112);
            v114 = j__OUTLINED_FUNCTION_0_86(v112, v55);
            v115 = *(v153 + 16);
            if (!v115)
            {
              goto LABEL_50;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v119 = v153;
            }

            else
            {
              sub_237E642C0(v153, v116, v117, v118);
            }

            v120 = v114 % v115;
            if (v114 % v115 < 0)
            {
              goto LABEL_51;
            }

            v121 = *(v119 + 16);
            if (v120 >= v121)
            {
              goto LABEL_52;
            }

            *(v119 + 8 * v120 + 32) = v111;
            v153 = v119;
            if (v114 >= v121)
            {
              v122 = 32;
              while (v121)
              {
                v123 = *(v119 + v122);
                v122 += 8;
                --v121;
                if (v123 > v42 + v111)
                {
                  goto LABEL_25;
                }
              }

LABEL_26:
              v171 = 1;
              goto LABEL_34;
            }
          }
        }
      }

LABEL_25:
      if (v108)
      {
        goto LABEL_26;
      }

      v56 = v184;
      v124 = OUTLINED_FUNCTION_19_47();
      __swift_project_boxed_opaque_existential_1(v124, v56);
      v125 = (v55[4])(v56, v55);
      v126 = 0;
      if (v125 < 5)
      {
        break;
      }

      OUTLINED_FUNCTION_24_35();
      v128 = v128 || v127 == v173;
      if (v128)
      {
        break;
      }
    }

    v171 = v126;
LABEL_34:
    v129 = a14;
    v130 = *(a14 + 16);
    if (v130)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0, &unk_237F07370);
      OUTLINED_FUNCTION_15_48();
      v56 = swift_allocObject();
      _swift_stdlib_malloc_size(v56);
      OUTLINED_FUNCTION_3();
      *(v56 + 16) = v130;
      *(v56 + 24) = v131;
      MEMORY[0x28223BE20](v132);
      v55 = &v152 - 6;
      *(&v152 - 4) = v133;
      *(&v152 - 3) = v129;
      *(&v152 - 2) = v133;
      *(&v152 - 1) = v130;
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C8, &qword_237F03110);
      v135 = sub_237C65348();
      v136 = v175;
      DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237E98CF8, (&v152 - 6), v129, MEMORY[0x277D839F8], v134, v135);
      v175 = v136;

      if (*&v178[1] != v130)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    else
    {

      v56 = MEMORY[0x277D84F90];
    }

    if (v172)
    {
      v137 = v184;
      v138 = v185;
      __swift_project_boxed_opaque_existential_1(v183, v184);
      v139 = *(v138 + 32);
      v140 = v105;
      v141 = v154;
      sub_237C70604(v172, v154);
      v142 = v137;
      v55 = v172;
      v139(v142, v138);
      OUTLINED_FUNCTION_8_83();
      *&v178[0] = v143;
      *(&v178[0] + 1) = 0xEF726F7373657267;
      *&v178[1] = v144;
      *(&v178[1] + 1) = v173;
      LOBYTE(v178[2]) = 0;
      *(&v178[2] + 1) = v140;
      (v55)(v178);

      OUTLINED_FUNCTION_0_94();
      sub_237C5EE40(v55, v141);
    }

    else
    {

      OUTLINED_FUNCTION_0_94();
    }
  }

  while ((v171 & 1) == 0);

  v145 = v184;
  v146 = OUTLINED_FUNCTION_22_40();
  __swift_project_boxed_opaque_existential_1(v146, v145);
  *v178 = v42;
  sub_237E6A888(v178, v145, v56);
  v147 = v184;
  v148 = v185;
  __swift_project_boxed_opaque_existential_1(v183, v184);
  (*(v148 + 24))(v176, v147, v148);
  memcpy(v178, v176, 0x49uLL);
  v149 = *&v178[0];

  sub_237C863A0(v178, &qword_27DEB2A08, qword_237F15D10);
  v177 = v149;
  if (v155)
  {
    sub_237E6F7F0(&v177, v155);
    sub_237CC99F4(&v190);
    v149 = v177;
  }

  else
  {
    sub_237CC99F4(&v190);
  }

  v150 = v152;
  *(v152 + 65) = 0u;
  *(v150 + 56) = 0u;
  *(v150 + 40) = 0u;
  *(v150 + 24) = 0u;
  *(v150 + 8) = 0u;
  v151 = sub_237C62BD0(v149);

  *v150 = v151;
LABEL_49:
  __swift_destroy_boxed_opaque_existential_1(v183);
  OUTLINED_FUNCTION_20_41();
}

double sub_237E97834(uint64_t isStackAllocationSafe, uint64_t a2, double *a3, double *a4, double *a5)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 8);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (v5 >> 60)
  {
    goto LABEL_12;
  }

  v10 = isStackAllocationSafe;
  if ((8 * v5) <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v13 = (&v20[-1] - v12);
    if (v5)
    {
      bzero(&v20[-1] - v12, 8 * v5);
    }

    MEMORY[0x28223BE20](v11);
    *(&v19 - 4) = v13;
    *(&v19 - 3) = v5;
    *(&v19 - 2) = 1;
    *(&v19 - 1) = a2;
    v14 = sub_237C65348();
    DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237E98CB4, (&v19 - 6), v10, MEMORY[0x277D839F8], MEMORY[0x277D84F78] + 8, v14);
    v15 = sub_237E96054(v13, v5, 1, a3, a4, a5);
    if (v5)
    {
      v20[0] = v13;
      v20[1] = v5;
      v20[2] = 1;
      v20[3] = a3;
      v20[4] = a4;
      v20[5] = a5;
      sub_237E95E68(v20);
      sub_237CB8680(v16);
    }
  }

  else
  {
    v18 = swift_slowAlloc();
    sub_237E97A90(v20, v18, v5, v10, a2, a3, a4, a5);
    MEMORY[0x2383E2DF0](v18, -1, -1);
    return *v20;
  }

  return v15;
}

void sub_237E97A90(uint64_t *__return_ptr a1@<X8>, void *a2@<X0>, double *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, double *a6@<X4>, double *a7@<X5>, double *a8@<X6>)
{
  if (a2)
  {
    v24 = a8;
    v25 = a1;
    if (a3 >= 1)
    {
      bzero(a2, 8 * a3);
    }

    MEMORY[0x28223BE20](a2);
    v23[2] = a2;
    v23[3] = a3;
    v23[4] = 1;
    v23[5] = a5;
    v14 = sub_237C65348();
    DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237E98D10, v23, a4, MEMORY[0x277D839F8], MEMORY[0x277D84F78] + 8, v14);
    v15 = v24;
    v16 = sub_237E96054(a2, a3, 1, a6, a7, v24);
    if (a3)
    {
      v26[0] = a2;
      v26[1] = a3;
      v26[2] = 1;
      v26[3] = a6;
      v26[4] = a7;
      v26[5] = v15;
      sub_237E95E68(v26);
      v18 = sub_237CB8680(v17);
      v20 = v19;

      v21 = 0x7FF8000000000000;
      if ((v20 & 1) == 0)
      {
        v21 = v18;
      }
    }

    else
    {
      v21 = 0x7FF8000000000000;
    }

    v22 = v25;
    *v25 = v16;
    v22[1] = v21;
  }

  else
  {
    __break(1u);
  }
}

double BaseLinearRegressor.makeTransformer()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 65) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = MEMORY[0x277D84F90];
  return result;
}

void BaseLinearRegressor.update(_:features:annotations:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_19_44();
  a23 = v26;
  a24 = v27;
  v110 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v37 = *v35;
  v36 = v35[1];
  v38 = *(v35 + 16);
  v39 = v35[3];
  v40 = *(v24 + 16);
  v42 = *(v24 + 24);
  v41 = *(v24 + 32);
  v111 = *(v24 + 48);
  v43 = *(v24 + 49);
  sub_237EF8B90();
  if (v25)
  {
    goto LABEL_12;
  }

  v109 = v37;
  v108 = v40;
  v107 = v30;
  __dst[0] = v37;
  __dst[1] = v36;
  v44 = v36;
  LOBYTE(__dst[2]) = v38;
  __dst[3] = v39;

  v106 = v39;

  v45 = v111 & 1;
  v112 = v32;
  sub_237ECE960(__dst, v32, v45, &v124);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_237F03530;
  v47 = v125;
  if (!__OFSUB__(v125, 1))
  {
    v48 = v46;
    v49 = v38;
    *(v46 + 32) = v125 - 1;
    v50 = OUTLINED_FUNCTION_14_65();
    sub_237E61498(v51, v48, v43, v52, v50, v53);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v55 = v34 + 1;
    v54 = v34[1];
    if (v54)
    {
      v56 = *(v54 + 16);
      v57 = v44;
      if (v56 != v47)
      {
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_237F04760;
        *(v70 + 32) = v109;
        *(v70 + 40) = v44;
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_237EF9330();

        __dst[0] = 0xD000000000000017;
        __dst[1] = 0x8000000237F00E30;
        v71 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v71);

        MEMORY[0x2383E0710](0xD000000000000014, 0x8000000237F01740);
        sub_237CC99F4(&v124);
        __src[0] = v47;
        v72 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v72);

        MEMORY[0x2383E0710](46, 0xE100000000000000);
        v73 = __dst[0];
        v74 = __dst[1];
        sub_237C84150();
        swift_allocError();
        *v75 = v70;
        *(v75 + 8) = v73;
        *(v75 + 16) = v74;
        *(v75 + 24) = 0;
        *(v75 + 32) = 6;
        swift_willThrow();
LABEL_11:
        __swift_destroy_boxed_opaque_existential_1(v119);
LABEL_12:
        OUTLINED_FUNCTION_20_41();
        return;
      }

      __dst[0] = v34[1];
      memcpy(&__dst[1], v34 + 2, 0x41uLL);
      v58 = OUTLINED_FUNCTION_2_111();
      __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
      (*(v56 + 48))(__dst, v38, v56);
      v60 = v109;
    }

    else
    {
      v57 = v44;
      v61 = sub_237E613EC(v44, 0.0);
      __dst[0] = v42;
      v62 = v120;
      v63 = v121;
      __swift_mutable_project_boxed_opaque_existential_1(v119, v120);
      (*(v63 + 40))(v61, __dst, v62, v63);

      v60 = v109;
    }

    v64 = v120;
    v65 = v121;
    __swift_project_boxed_opaque_existential_1(v119, v120);
    __dst[0] = v41;
    if (sub_237E6A4FC(v108, __dst, v64, v65))
    {
      sub_237CC99F4(&v124);
    }

    else
    {
      v66 = OUTLINED_FUNCTION_2_111();
      __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
      v68 = OUTLINED_FUNCTION_81_1();
      v69(v68);
      v76 = OUTLINED_FUNCTION_2_111();
      __swift_project_boxed_opaque_existential_1(v76, v77);
      OUTLINED_FUNCTION_18_45();
      v78 = OUTLINED_FUNCTION_81_1();
      v79(v78);
      memcpy(__dst, __src, 0x49uLL);
      v80 = __dst[0];

      sub_237C863A0(__dst, &qword_27DEB2A08, qword_237F15D10);
      a14 = v80;
      if (v126)
      {
        sub_237E6F7F0(&a14, v126);
        sub_237CC99F4(&v124);
        v80 = a14;
      }

      else
      {
        sub_237CC99F4(&v124);
      }

      v81 = sub_237C62BD0(v80);

      *v34 = v81;
      v82 = OUTLINED_FUNCTION_6_76();
      __swift_project_boxed_opaque_existential_1(v82, v83);
      v84 = OUTLINED_FUNCTION_9_63();
      v85(v84);
      memcpy(v116, v115, sizeof(v116));
      memcpy(__src, v55, 0x49uLL);
      sub_237C863A0(__src, qword_27DEB0300, &qword_237F0ADD0);
      memcpy(v55, v116, 0x49uLL);
      v114 = MEMORY[0x277D84F98];
      if (v49)
      {
        v86 = v60;
      }

      else
      {
        v86 = v57;
      }

      v122[0] = v106 + 32;
      v122[1] = v60;
      v122[2] = v57;
      v122[3] = v86;
      v123 = v49;
      v87 = *(v112 + 16);
      v88 = OUTLINED_FUNCTION_2_111();
      __swift_project_boxed_opaque_existential_1(v88, v89);
      OUTLINED_FUNCTION_18_45();
      v90 = OUTLINED_FUNCTION_81_1();
      v91(v90);
      memcpy(v115, v113, 0x49uLL);
      v92 = v115[0];

      sub_237C863A0(v115, &qword_27DEB2A08, qword_237F15D10);
      v93 = sub_237E97834(v92, v122, (v112 + 32), v87, 1);
      v95 = v94;

      v96 = MEMORY[0x277D839F8];
      v113[3] = MEMORY[0x277D839F8];
      *v113 = v93;
      OUTLINED_FUNCTION_10_66();
      sub_237E60F7C(v113, v97, v98);
      v113[3] = v96;
      v113[0] = v95;
      sub_237E60F7C(v113, 0xD000000000000012, 0x8000000237EFCC20);
      v99 = v114;
      if (v107)
      {
        v100 = OUTLINED_FUNCTION_2_111();
        __swift_project_boxed_opaque_existential_1(v100, v101);
        v102 = *(v112 + 32);
        sub_237C70604(v107, v110);
        v103 = OUTLINED_FUNCTION_81_1();
        v102(v103);
        OUTLINED_FUNCTION_8_83();
        OUTLINED_FUNCTION_21_50();
        v113[0] = v104;
        v113[1] = v81;
        v113[2] = v105;
        v113[3] = v108;
        LOBYTE(v113[4]) = 0;
        v113[5] = v99;
        v107(v113);
        sub_237C5EE40(v107, v110);
      }
    }

    goto LABEL_11;
  }

  __break(1u);
}

const void *sub_237E982FC()
{
  OUTLINED_FUNCTION_23_38();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD360, &qword_237F030C8);
  OUTLINED_FUNCTION_15_48();
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  OUTLINED_FUNCTION_13_53((v2 - 32) / 4);
  return v1;
}

void *sub_237E983A8()
{
  OUTLINED_FUNCTION_23_38();
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_12_58(v2, v3, v4, v5);
  OUTLINED_FUNCTION_15_48();
  v6 = swift_allocObject();
  _swift_stdlib_malloc_size(v6);
  OUTLINED_FUNCTION_3();
  v6[2] = v0;
  v6[3] = v7;
  return v6;
}

const void *sub_237E98424()
{
  OUTLINED_FUNCTION_23_38();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0430, &unk_237F1CD00);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  OUTLINED_FUNCTION_13_53((v2 - 32) / 40);
  return v1;
}

const void *sub_237E98644()
{
  OUTLINED_FUNCTION_23_38();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_12_58(v1, v2, v3, v4);
  OUTLINED_FUNCTION_15_48();
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  OUTLINED_FUNCTION_13_53((v6 - 32) / 16);
  return v5;
}

size_t sub_237E98754(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_12_58(a1, a2, a3, a4);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if (result - v11 != 0x8000000000000000 || v10 != -1)
    {
      OUTLINED_FUNCTION_13_53((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_237E98894(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_12_58(a1, a2, a3, a4);
  v7 = *(a5(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v10);
  if (v8)
  {
    if (result - v9 != 0x8000000000000000 || v8 != -1)
    {
      OUTLINED_FUNCTION_13_53((result - v9) / v8);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237E989D4@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_237E98980(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_237E98A04(double a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v24[0] = a1;
  v8 = MEMORY[0x277D839F8];
  v25 = MEMORY[0x277D839F8];
  v9 = *a5;
  v10 = sub_237D30F88();
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51C0, &qword_237F1CCB0);
  if ((sub_237EF96B0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_237D30F88();
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_10:
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *a5;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return sub_237C91804(v24, v17);
  }

  else
  {
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v24, v8);
    v20 = MEMORY[0x28223BE20](v19);
    v22 = (v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    sub_237E98BD4(v12, a2, a3, v16, *v22);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return sub_237EF8260();
  }
}

_OWORD *sub_237E98BD4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v11[0] = a5;
  v12 = MEMORY[0x277D839F8];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_237C91804(v11, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_237E98C58(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_94()
{

  return sub_237E98C58(0);
}

uint64_t OUTLINED_FUNCTION_12_58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_237E98E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_237DBA264(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = v8;

  return v9;
}

uint64_t sub_237E98EE0()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  v1 = *(v0 + 8);
  sub_237EF8260();
  sub_237E98F20();
  return v1;
}

void sub_237E98F20()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    sub_237E641B8(v1, v3, v4, v5);
    v1 = v11;
  }

  for (i = v2 + 3; ; --i)
  {
    v7 = i - 3;
    if (i - 3 < 1)
    {
      *(v0 + 8) = v1;
      *(v0 + 16) = 1;
      return;
    }

    if (v7 > *(v1 + 16))
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v7 > *(*v0 + 16))
    {
      goto LABEL_12;
    }

    v8 = *(*v0 + 8 * i);
    v9 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      goto LABEL_13;
    }

    v10 = *(v1 + 8 * i);
    if (v10 < v9)
    {
      break;
    }

    *(v1 + 8 * i) = 0;
  }

  *(v1 + 8 * i) = v10 + 1;
  *(v0 + 8) = v1;
}

void sub_237E98FE0(uint64_t a1@<X8>)
{
  sub_237E99018();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
}

uint64_t sub_237E9904C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237E98EE0();
  *a1 = result;
  return result;
}

uint64_t sub_237E99074(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_237E990B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_237E99108()
{
  result = qword_27DEB5EA8[0];
  if (!qword_27DEB5EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB5EA8);
  }

  return result;
}

uint64_t sub_237E9915C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E991B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365646F6ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237E99278(char a1)
{
  if (a1)
  {
    return 0x70756F7267;
  }

  else
  {
    return 0x7365646F6ELL;
  }
}

void sub_237E992A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  type metadata accessor for Tree.CodingKeys(255, v24, v22, v24);
  OUTLINED_FUNCTION_6_77();
  swift_getWitnessTable();
  v28 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v32 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_0();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_237EFA1B0();
  type metadata accessor for TreeNode(255, v25, v23, v31);
  sub_237EF8A60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_237EF9A70();
  if (!v20)
  {
    sub_237EF9A50();
  }

  (*(v32 + 8))(v21, v28);
  OUTLINED_FUNCTION_12_6();
}

void sub_237E994AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  type metadata accessor for Tree.CodingKeys(255, v23, v21, v27);
  OUTLINED_FUNCTION_6_77();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_0();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_237EFA190();
  if (!v20)
  {
    type metadata accessor for TreeNode(255, v24, v22, v29);
    sub_237EF8A60();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_237EF9970();
    sub_237EF9950();
    v30 = OUTLINED_FUNCTION_16_54();
    v31(v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E996FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E991B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E9972C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E99780(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void sub_237E99834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  v78 = v20;
  v79 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = sub_237EF93E0();
  OUTLINED_FUNCTION_1();
  v77 = v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OUTLINED_FUNCTION_10_67();
  type metadata accessor for TreeLeaf(v35, v36, v37, v38);
  OUTLINED_FUNCTION_1();
  v73 = v40;
  v74 = v39;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19();
  v75 = v42;
  v43 = OUTLINED_FUNCTION_10_67();
  v47 = type metadata accessor for TreeInnerNode(v43, v44, v45, v46);
  OUTLINED_FUNCTION_1();
  v49 = v48;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v50);
  v52 = &v73 - v51;
  sub_237C66728(v29, &v80);
  v53 = v78;
  sub_237E99B14(&v80, v27, v25, v23, v54, v55, v56, v57, v73, v74, SBYTE1(v74), SBYTE2(v74), SBYTE3(v74), SBYTE4(v74), SBYTE5(v74), SBYTE6(v74), SHIBYTE(v74), v75, v23, v77, v78, v79, v80, v81, v82, v83, v84);
  if (v53)
  {
    v58 = v79;
    v59 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
    if (swift_dynamicCast())
    {

      sub_237C66728(v29, &v80);
      v60 = v75;
      sub_237E9A120(&v80, v27, v25, v76, v61, v62, v63, v64, v73, v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
      __swift_destroy_boxed_opaque_existential_1(v29);
      (*(v73 + 32))(v58, v60, v74);
      v69 = OUTLINED_FUNCTION_10_67();
      type metadata accessor for TreeNode(v69, v70, v71, v72);
      swift_storeEnumTagMultiPayload();
      (*(v77 + 8))(v34, v30);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
    (*(v49 + 32))(v79, v52, v47);
    v65 = OUTLINED_FUNCTION_10_67();
    type metadata accessor for TreeNode(v65, v66, v67, v68);
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237E99B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_13_4();
  v84 = v27;
  v80 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v74 = v35;
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v89 = v37;
  v90 = v36;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_19();
  v75 = v39;
  OUTLINED_FUNCTION_1_1();
  v82 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_2();
  v76 = v42;
  MEMORY[0x28223BE20](v43);
  v77 = &v73 - v44;
  MEMORY[0x28223BE20](v45);
  v79 = &v73 - v46;
  v47 = OUTLINED_FUNCTION_20_47();
  type metadata accessor for TreeInnerNode.CodingKeys(v47, v48, v49, v50);
  OUTLINED_FUNCTION_7_75();
  swift_getWitnessTable();
  v81 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v78 = v51;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v52);
  v54 = &v73 - v53;
  type metadata accessor for TreeInnerNode(0, v32, v30, v55);
  OUTLINED_FUNCTION_1();
  v57 = v56;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_19();
  v61 = v60;
  v86 = v59[15];
  v87 = v59;
  v85 = v32;
  __swift_storeEnumTagSinglePayload(v60 + v86, 1, 1, v32);
  v62 = v34[3];
  v88 = v34;
  __swift_project_boxed_opaque_existential_1(v34, v62);
  v83 = v54;
  v63 = v84;
  sub_237EFA190();
  if (v63)
  {
    __swift_destroy_boxed_opaque_existential_1(v88);
    (*(v89 + 8))(v61 + v86, v90);
  }

  else
  {
    v64 = v79;
    v84 = v57;
    OUTLINED_FUNCTION_11_63();
    v65 = v61;
    *v61 = sub_237EF9950();
    v66 = v85;
    OUTLINED_FUNCTION_11_63();
    sub_237EF9970();
    v67 = v87;
    v68 = *(v82 + 32);
    v68(v65 + v87[9], v64, v66);
    OUTLINED_FUNCTION_11_63();
    *(v65 + v67[10]) = sub_237EF9950();
    OUTLINED_FUNCTION_11_63();
    *(v65 + v67[11]) = sub_237EF9950();
    OUTLINED_FUNCTION_11_63();
    *(v65 + v67[12]) = sub_237EF9950();
    OUTLINED_FUNCTION_2_112();
    sub_237EF9970();
    v68(v65 + v67[13], v77, v66);
    OUTLINED_FUNCTION_2_112();
    sub_237EF9970();
    v68(v65 + v67[14], v76, v66);
    v69 = v75;
    OUTLINED_FUNCTION_2_112();
    sub_237EF9900();
    v70 = OUTLINED_FUNCTION_8_84();
    v71(v70);
    (*(v89 + 40))(v65 + v86, v69, v90);
    v72 = v84;
    (*(v84 + 16))(v74, v65, v67);
    __swift_destroy_boxed_opaque_existential_1(v88);
    (*(v72 + 8))(v65, v67);
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237E9A120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_13_4();
  v74 = v24;
  v75 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v67 = v31;
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v78 = v33;
  v79 = v32;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19();
  v68 = v35;
  OUTLINED_FUNCTION_1_1();
  v69 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_2();
  v71 = v38;
  MEMORY[0x28223BE20](v39);
  v72 = &v65 - v40;
  v41 = OUTLINED_FUNCTION_20_47();
  type metadata accessor for TreeLeaf.CodingKeys(v41, v42, v43, v44);
  OUTLINED_FUNCTION_5_91();
  swift_getWitnessTable();
  v73 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v70 = v45;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v46);
  v48 = type metadata accessor for TreeLeaf(0, v28, v26, v47);
  OUTLINED_FUNCTION_1();
  v66 = v49;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_19();
  v52 = *(v51 + 40);
  v80 = v53;
  v76 = v52;
  __swift_storeEnumTagSinglePayload(v53 + v52, 1, 1, v28);
  v54 = v30[3];
  v77 = v30;
  __swift_project_boxed_opaque_existential_1(v30, v54);
  v55 = v75;
  sub_237EFA190();
  if (v55)
  {
    v57 = v80;
    __swift_destroy_boxed_opaque_existential_1(v77);
    (*(v78 + 8))(v57 + v76, v79);
  }

  else
  {
    v56 = v71;
    v75 = v48;
    OUTLINED_FUNCTION_17_55();
    v58 = *(v69 + 32);
    v58(v80, v72, v28);
    OUTLINED_FUNCTION_17_55();
    v58(v80 + *(v75 + 36), v56, v28);
    v59 = v68;
    sub_237EF9900();
    v60 = OUTLINED_FUNCTION_15_49();
    v61(v60);
    v62 = v80;
    (*(v78 + 40))(v80 + v76, v59, v79);
    v63 = v66;
    v64 = v75;
    (*(v66 + 16))(v67, v62, v75);
    __swift_destroy_boxed_opaque_existential_1(v77);
    (*(v63 + 8))(v62, v64);
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237E9A7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_13_4();
  a26 = v29;
  a27 = v30;
  v48 = v31;
  v49 = v28;
  v32 = v27;
  v47[1] = v33;
  v35 = v34;
  v36 = *(v31 + 24);
  v47[0] = *(v31 + 16);
  type metadata accessor for TreeInnerNode.CodingKeys(255, v47[0], v36, v30);
  OUTLINED_FUNCTION_7_75();
  swift_getWitnessTable();
  v37 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v39 = v38;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  v42 = v47 - v41;
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  sub_237EFA1B0();
  a17 = 0;
  v43 = v49;
  sub_237EF9A50();
  if (!v43)
  {
    a16 = 1;
    OUTLINED_FUNCTION_3_98();
    sub_237EF9A70();
    v44 = *(v32 + v48[10]);
    a15 = 2;
    OUTLINED_FUNCTION_19_48(v44, &a15);
    v45 = *(v32 + v48[11]);
    a14 = 3;
    OUTLINED_FUNCTION_19_48(v45, &a14);
    v46 = *(v32 + v48[12]);
    a13 = 4;
    OUTLINED_FUNCTION_19_48(v46, &a13);
    OUTLINED_FUNCTION_3_98();
    sub_237EF9A70();
    OUTLINED_FUNCTION_3_98();
    sub_237EF9A70();
    OUTLINED_FUNCTION_3_98();
    sub_237EF9A00();
  }

  (*(v39 + 8))(v42, v37);
  OUTLINED_FUNCTION_12_6();
}

void sub_237E9AA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_4();
  v39 = v24;
  v40 = v25;
  v38[0] = v26;
  v38[1] = v27;
  v29 = v28;
  type metadata accessor for TreeLeaf.CodingKeys(255, *(v26 + 16), *(v26 + 24), v30);
  OUTLINED_FUNCTION_5_91();
  swift_getWitnessTable();
  v31 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v34);
  v36 = v38 - v35;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_237EFA1B0();
  OUTLINED_FUNCTION_9_64();
  v37 = v40;
  sub_237EF9A70();
  if (!v37)
  {
    OUTLINED_FUNCTION_9_64();
    sub_237EF9A70();
    OUTLINED_FUNCTION_9_64();
    sub_237EF9A00();
  }

  (*(v33 + 8))(v36, v31);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E9AC04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000237F01760 == a2;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F4374696C7073 && a2 == 0xEE006E6F69746964;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6968437373656CLL && a2 == 0xEE007865646E4964;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000237F01780 == a2;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000237F017A0 == a2;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1852399975 && a2 == 0xE400000000000000;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6769655765736162 && a2 == 0xEA00000000007468;
              if (v11 || (sub_237EF9D40() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x7265766F63 && a2 == 0xE500000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_237EF9D40();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_237E9AEA0(char a1)
{
  result = 0x6E6F4374696C7073;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C6968437373656CLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 1852399975;
      break;
    case 6:
      result = 0x6769655765736162;
      break;
    case 7:
      result = 0x7265766F63;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_237E9AFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E9AC04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E9AFFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D87608();
  *a1 = result;
  return result;
}

uint64_t sub_237E9B02C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E9B080(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237E9B114(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6769655765736162 && a2 == 0xEA00000000007468;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7265766F63 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_237EF9D40();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_237E9B224(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x6769655765736162;
  }

  return 0x7265766F63;
}

uint64_t sub_237E9B278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void))
{
  sub_237EFA120();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_237EFA170();
}

uint64_t sub_237E9B2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E9B114(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E9B338(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E9B38C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

_BYTE *sub_237E9B4B0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_237E9B57C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_237E9B648(_BYTE *result, unsigned int a2, unsigned int a3)
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