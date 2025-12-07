uint64_t sub_267D05894()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  __swift_destroy_boxed_opaque_existential_0((v1 + 472));
  OUTLINED_FUNCTION_50_11();
  *(v1 + 130) = sub_267C5E360();
  sub_267B9EF14(v1 + 256);
  sub_267BC9B04(v1 + 352, v1 + 632, &qword_280229910, &unk_267EFEB70);
  if (*(v1 + 656))
  {
    __swift_project_boxed_opaque_existential_0((v1 + 632), *(v1 + 656));
    v2 = OUTLINED_FUNCTION_7_1();
    v4 = v3(v2);
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_0((v1 + 632));
  }

  else
  {
    sub_267B9FED8(v1 + 632, &qword_280229910, &unk_267EFEB70);
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  sub_267D0B0B4(v4, v6, v0);

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 784) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_24_10(v7);
  OUTLINED_FUNCTION_30_2();

  return sub_267D063B8();
}

uint64_t sub_267D059E8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 792) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D05AE0()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 776);
  sub_267B9A5E8((v0 + 672), v0 + 512);
  *(v1 + 424) = 0;
  sub_267B9B050(v0 + 512, v0 + 552);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A470, &unk_267EFDC70);
  sub_267EF3D38();
  if (swift_dynamicCast())
  {
  }

  else if ((*(v0 + 130) & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v2 = sub_267EF8A08();
    v3 = OUTLINED_FUNCTION_13_8(v2, qword_280240FB0);
    v4 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v5);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_26();
    }

    v11 = *(v0 + 752);

    sub_267B9B050(v11 + 64, v0 + 592);
    __swift_project_boxed_opaque_existential_0((v0 + 592), *(v0 + 616));
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = sub_267BB41B0(ObjCClassFromMetadata);
    if (!v14)
    {
      __break(1u);
      return result;
    }

    sub_267EF3B18();
    v15 = OUTLINED_FUNCTION_22_15();
    OUTLINED_FUNCTION_64_6(v15);

    __swift_destroy_boxed_opaque_existential_0((v0 + 592));
  }

  v16 = *(v0 + 744);
  sub_267B9A5E8((v0 + 512), v16);
  sub_267B9FED8(v0 + 352, &qword_280229910, &unk_267EFEB70);
  v17 = MEMORY[0x277D84F90];
  *(v16 + 40) = MEMORY[0x277D84F90];
  *(v16 + 48) = v17;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_30_2();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_267D05CD4()
{
  OUTLINED_FUNCTION_12();
  sub_267B9FED8(v0 + 352, &qword_280229910, &unk_267EFEB70);
  __swift_destroy_boxed_opaque_existential_0((v0 + 472));
  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267D05D48()
{
  OUTLINED_FUNCTION_12();
  sub_267B9FED8(v0 + 352, &qword_280229910, &unk_267EFEB70);
  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267D05DB4()
{
  OUTLINED_FUNCTION_12();
  v1[11] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v2);
  v1[12] = OUTLINED_FUNCTION_50();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v3 = sub_267EF2CC8();
  v1[15] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[16] = v4;
  v1[17] = OUTLINED_FUNCTION_50();
  v1[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022ACD8, &qword_267F038D8);
  OUTLINED_FUNCTION_18(v5);
  v1[19] = OUTLINED_FUNCTION_2();
  v6 = type metadata accessor for ConversationAnnounceState(0);
  v1[20] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[21] = OUTLINED_FUNCTION_50();
  v1[22] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_267D05F04()
{
  v1 = *(*(*(v0 + 88) + 48) + 416);
  if (!v1 || (v2 = *(v1 + 112)) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v7 = sub_267EF8A08();
    v8 = OUTLINED_FUNCTION_13_8(v7, qword_280240FB0);
    v9 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v9))
    {
      v10 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v10);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_20;
  }

  v3 = *(v1 + 104);

  if (!sub_267C1D4D4())
  {
    goto LABEL_18;
  }

  sub_267C8EC00();

  if (*(v0 + 72) == 1)
  {
    v4 = &unk_280229278;
    v5 = &unk_267F038E0;
    v6 = v0 + 48;
LABEL_17:
    sub_267B9FED8(v6, v4, v5);
    goto LABEL_18;
  }

  v16 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v16;
  if (!*(v0 + 40))
  {
    v4 = &qword_28022AEF0;
    v5 = &qword_267EFCDE0;
    v6 = v0 + 16;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229298, &qword_267EFCDF0);
  if (swift_dynamicCast())
  {
    v17 = *(v0 + 152);
    sub_267C1D674(v17);
    OUTLINED_FUNCTION_2_5(v17);
    if (v18)
    {
      v6 = *(v0 + 152);
      v4 = &qword_28022ACD8;
      v5 = &qword_267F038D8;
      goto LABEL_17;
    }

    v34 = *(v0 + 176);
    v35 = *(v0 + 160);
    v37 = *(v0 + 112);
    v36 = *(v0 + 120);
    sub_267D0B7C4(*(v0 + 152), v34);
    v38 = *(v35 + 24);
    sub_267BC9B04(v34 + v38, v37, &qword_28022BD90, &unk_267EFCDD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v36);
    v40 = *(v0 + 176);
    if (EnumTagSinglePayload != 1)
    {
      v59 = *(v0 + 176);
      v41 = *(v0 + 136);
      v43 = *(v0 + 120);
      v42 = *(v0 + 128);
      (*(v42 + 32))(*(v0 + 144), *(v0 + 112), v43);
      sub_267EF2CA8();
      sub_267EF2C88();
      v45 = v44;
      v57 = *(v42 + 8);
      v57(v41, v43);
      sub_267EF2C88();
      if (v45 - v46 <= 60.0)
      {
        v49 = *(v59 + 8);
        v50 = __OFADD__(v49, 1);
        v48 = v49 + 1;
        if (v50)
        {
          __break(1u);
          return;
        }

        v47 = v38;
      }

      else
      {
        v47 = v38;
        v48 = 1;
      }

      v19 = *(v0 + 176);
      v56 = *(v0 + 144);
      v51 = *(v0 + 120);
      v52 = *(v0 + 104);
      *(v59 + 8) = v48;
      sub_267EF2CA8();
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v51);
      sub_267C1DAF4(v52, v34 + v47);
      sub_267C1DC24(v3, v2);

      v57(v56, v51);
      goto LABEL_19;
    }

    sub_267B9FED8(*(v0 + 112), &qword_28022BD90, &unk_267EFCDD0);
    sub_267C1DBC8(v40);
  }

LABEL_18:
  v20 = *(v0 + 160);
  v19 = *(v0 + 168);
  v21 = *(v0 + 120);
  v22 = *(v0 + 96);
  v23 = *(v0 + 104);
  sub_267EF2CA8();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v21);
  v58 = v3;
  v27 = v20[6];
  __swift_storeEnumTagSinglePayload(v19 + v27, 1, 1, v21);
  v28 = v2;
  v29 = v20[8];
  __swift_storeEnumTagSinglePayload(v19 + v29, 1, 1, v21);
  *v19 = 1;
  *(v19 + 8) = 1;
  sub_267D0B754(v23, v19 + v27);
  *(v19 + v20[7]) = 0;
  sub_267EF2CA8();
  sub_267B9FED8(v23, &qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v21);
  sub_267C1DAF4(v22, v19 + v29);
  sub_267C1DC24(v58, v28);

LABEL_19:
  sub_267C1DBC8(v19);
LABEL_20:

  OUTLINED_FUNCTION_1();

  v33();
}

uint64_t sub_267D063B8()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 1224) = v0;
  *(v1 + 1401) = v2;
  *(v1 + 1400) = v3;
  *(v1 + 1216) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v5);
  *(v1 + 1232) = OUTLINED_FUNCTION_50();
  *(v1 + 1240) = swift_task_alloc();
  *(v1 + 1248) = swift_task_alloc();
  *(v1 + 1256) = swift_task_alloc();
  v6 = sub_267EF2CC8();
  *(v1 + 1264) = v6;
  OUTLINED_FUNCTION_30_0(v6);
  *(v1 + 1272) = v7;
  *(v1 + 1280) = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267D064B8()
{
  v123 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  v2 = __swift_project_value_buffer(v1, qword_280240FB0);
  *(v0 + 1288) = v2;
  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v5);
    OUTLINED_FUNCTION_6_24(&dword_267B93000, v6, v7, "#ReadSpokenHintAction makeHintDialog");
    OUTLINED_FUNCTION_29_1();
  }

  v8 = *(v0 + 1224);

  v9 = *(v8 + 48);
  *(v0 + 1296) = v9;
  if ((v9[14] - 3) <= 1)
  {
    v10 = sub_267EF89F8();
    v11 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v11))
    {
      v12 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v12);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3D38();
    sub_267EF3D28();
    goto LABEL_9;
  }

  v20 = *(v0 + 1264);
  v21 = *(v0 + 1256);
  v22 = 11;
  if (!*(v0 + 1401))
  {
    v22 = 0;
  }

  if (*(v0 + 1400))
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  sub_267BEB520((v9 + 19), v0 + 16);
  v121 = v23;
  v122 = 0;
  sub_267C5E960(v23, 0, 0);
  sub_267C5C400(&v121, v21);
  sub_267C5E97C(v121, *(&v121 + 1), v122);
  sub_267B9EF14(v0 + 16);
  if (__swift_getEnumTagSinglePayload(v21, 1, v20) == 1)
  {
    v24 = *(v0 + 1256);
    sub_267EF2CB8();
    OUTLINED_FUNCTION_2_5(v24);
    if (!v25)
    {
      sub_267B9FED8(*(v0 + 1256), &qword_28022BD90, &unk_267EFCDD0);
    }
  }

  else
  {
    (*(*(v0 + 1272) + 32))(*(v0 + 1280), *(v0 + 1256), *(v0 + 1264));
  }

  v26 = *(v0 + 1248);
  sub_267BEB520((v9 + 19), v0 + 112);
  v121 = v23;
  OUTLINED_FUNCTION_61_9();
  sub_267C5DD80(v27, v28, v29, v30, v31, v32, v33, v34, v115, v118, v121);
  v36 = v35;
  *(v0 + 1304) = v35;
  sub_267C5E97C(v121, *(&v121 + 1), v122);
  sub_267B9EF14(v0 + 112);
  sub_267BEB520((v9 + 19), v0 + 208);
  *(&v121 + 1) = 0;
  v122 = 4;
  sub_267C5DD80(&v121, v37, v38, v39, v40, v41, v42, v43, v116, v119, 1);
  v45 = v44;
  *(v0 + 1312) = v44;
  sub_267B9EF14(v0 + 208);
  sub_267BEB520((v9 + 19), v0 + 304);
  sub_267C5D908(v26);
  sub_267B9EF14(v0 + 304);

  v46 = sub_267EF89F8();
  v47 = sub_267EF95D8();
  if (os_log_type_enabled(v46, v47))
  {
    v120 = v2;
    v48 = swift_slowAlloc();
    *v48 = 67109120;
    v117 = v45;
    v49 = v36;
    v51 = v9[5];
    v50 = v9[6];
    __swift_project_boxed_opaque_existential_0(v9 + 2, v51);
    (*(v50 + 8))(v51, v50);
    __swift_project_boxed_opaque_existential_0((v0 + 1176), *(v0 + 1200));
    v36 = v49;
    v45 = v117;
    v52 = sub_267EF3C48();
    __swift_destroy_boxed_opaque_existential_0((v0 + 1176));
    *(v48 + 4) = v52 & 1;

    _os_log_impl(&dword_267B93000, v46, v47, "#ReadSpokenHintAction: isCarplay : %{BOOL}d", v48, 8u);
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  if (*(v0 + 1400) == 1)
  {
    v53 = sub_267EF89F8();
    v54 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v54))
    {
      v55 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v55);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v56, v57, v58, v59, v60, 2u);
      OUTLINED_FUNCTION_26();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 1320) = v61;
    *v61 = v62;
    OUTLINED_FUNCTION_33_7(v61);
    OUTLINED_FUNCTION_15();

    return sub_267D07A20();
  }

  if (*(v0 + 1401) != 1)
  {
    __swift_project_boxed_opaque_existential_0(v9 + 2, v9[5]);
    v68 = OUTLINED_FUNCTION_7_1();
    v69(v68);
    v70 = *(v0 + 1008);
    __swift_project_boxed_opaque_existential_0((v0 + 976), *(v0 + 1000));
    OUTLINED_FUNCTION_7_1();
    v71 = sub_267EF3C48();
    __swift_destroy_boxed_opaque_existential_0((v0 + 976));
    if (v71)
    {
      v72 = sub_267EF89F8();
      v73 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v73))
      {
        v74 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v74);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v75, v76, v77, v78, v79, 2u);
        OUTLINED_FUNCTION_26();
      }

      v80 = *(v0 + 1248);

      sub_267EF3D38();
      sub_267EF3D28();
      sub_267B9FED8(v80, &qword_28022BD90, &unk_267EFCDD0);
      v81 = OUTLINED_FUNCTION_26_0();
      v82(v81);
LABEL_9:
      OUTLINED_FUNCTION_16_15();

      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_15();

      __asm { BRAA            X1, X16 }
    }

    if (!v36)
    {
      sub_267BC9B04((v9 + 43), v0 + 1096, &qword_280229128, &unk_267EFC860);
      v97 = *(v0 + 1120);
      if (v97)
      {
        __swift_project_boxed_opaque_existential_0((v0 + 1096), v97);
        v98 = sub_267C3C6D0();
        __swift_destroy_boxed_opaque_existential_0((v0 + 1096));
        if (v98 != 4)
        {
          sub_267BEB520((v9 + 19), v0 + 880);
          v121 = xmmword_267EFE700;
          OUTLINED_FUNCTION_61_9();
          sub_267C5E230(v99, v100, v101, v102, v103, v104, v105, v106, v117, v120, v121);
          v108 = v107;
          sub_267B9EF14(v0 + 880);
          if (v108)
          {
            v109 = sub_267EF89F8();
            v110 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_10_2(v110))
            {
              v111 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_4_2(v111);
              _os_log_impl(&dword_267B93000, v109, v9, "#ReadSpokenHintAction Message is short and user is eligible for experimental hint experience", v70, 2u);
              OUTLINED_FUNCTION_29_1();
            }

            swift_task_alloc();
            OUTLINED_FUNCTION_25();
            *(v0 + 1352) = v112;
            *v112 = v113;
            v112[1] = sub_267D06FF4;
            OUTLINED_FUNCTION_15();

            return sub_267D0857C();
          }
        }
      }

      else
      {
        sub_267B9FED8(v0 + 1096, &qword_280229128, &unk_267EFC860);
      }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 1368) = v94;
    *v94 = v95;
    v94[1] = sub_267D070EC;
    OUTLINED_FUNCTION_15();

    return sub_267D0997C();
  }

  *(v0 + 1160) = &type metadata for Features;
  *(v0 + 1168) = sub_267BAFCAC();
  *(v0 + 1136) = 14;
  v65 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0((v0 + 1136));
  if (v65)
  {
    OUTLINED_FUNCTION_45_12();
    OUTLINED_FUNCTION_66_8();
    sub_267B9FED8(v45, &qword_28022BD90, &unk_267EFCDD0);
    v66 = OUTLINED_FUNCTION_26_0();
    v67(v66);
    goto LABEL_9;
  }

  v83 = sub_267EF89F8();
  v84 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v84))
  {
    v85 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v85);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v86, v87, v88, v89, v90, 2u);
    OUTLINED_FUNCTION_26();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 1336) = v91;
  *v91 = v92;
  OUTLINED_FUNCTION_33_7(v91);
  OUTLINED_FUNCTION_15();

  return sub_267D07F7C();
}

uint64_t sub_267D06D5C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 1328) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D06E54()
{
  v0 = OUTLINED_FUNCTION_8_25();
  sub_267B9FED8(v0, &qword_28022BD90, &unk_267EFCDD0);
  v1 = OUTLINED_FUNCTION_21_11();
  v2(v1);
  OUTLINED_FUNCTION_16_15();

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_267D06EFC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 1344) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D06FF4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 1360) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D070EC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 1376) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D071E4()
{
  OUTLINED_FUNCTION_90();
  if (*(v0 + 1080))
  {
    v2 = *(v0 + 1280);
    v3 = *(v0 + 1272);
    v4 = *(v0 + 1264);
    v5 = *(v0 + 1216);
    sub_267B9FED8(*(v0 + 1248), &qword_28022BD90, &unk_267EFCDD0);
    (*(v3 + 8))(v2, v4);
    sub_267B9A5E8((v0 + 1056), v0 + 1016);
    sub_267B9A5E8((v0 + 1016), v5);
LABEL_10:
    OUTLINED_FUNCTION_16_15();

    OUTLINED_FUNCTION_1();

    return v54();
  }

  v6 = *(v0 + 1296);
  sub_267B9FED8(v0 + 1056, &qword_28022ACD0, &unk_267F038C0);
  sub_267BEB520(v6 + 152, v0 + 400);
  OUTLINED_FUNCTION_18_16();
  sub_267C5E230(v7, v8, v9, v10, v11, v12, v13, v14, v55, v58, v61);
  LOBYTE(v6) = v15;
  sub_267B9EF14(v0 + 400);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_12();
    OUTLINED_FUNCTION_66_8();
    sub_267B9FED8(v1, &qword_28022BD90, &unk_267EFCDD0);
    v52 = OUTLINED_FUNCTION_26_0();
    v53(v52);
    goto LABEL_10;
  }

  v16 = *(v0 + 1296);
  v17 = *(v0 + 1240);
  v18 = *(v0 + 1232);
  sub_267BEB520(v16 + 152, v0 + 496);
  OUTLINED_FUNCTION_18_16();
  sub_267C5C400(v19, v17);
  sub_267B9EF14(v0 + 496);
  sub_267BEB520(v16 + 152, v0 + 592);
  OUTLINED_FUNCTION_7_24();
  sub_267C5C400(v20, v18);
  sub_267B9EF14(v0 + 592);
  v21 = sub_267BEB520(v16 + 152, v0 + 688);
  OUTLINED_FUNCTION_3_31(v21, v22, v23, v24, v25, v26, v27, v28, 2, 0, xmmword_267EFDDC0);
  sub_267C5E0EC(v29, v30, v31, v32, v33, v34, v35, v36, v56, v59, v62);
  sub_267B9EF14(v0 + 688);
  sub_267BEB520(v16 + 152, v0 + 784);
  OUTLINED_FUNCTION_7_24();
  sub_267C5E0EC(v37, v38, v39, v40, v41, v42, v43, v44, v57, v60, v63);
  sub_267B9EF14(v0 + 784);
  v45 = sub_267EF89F8();
  v46 = sub_267EF95D8();
  if (os_log_type_enabled(v45, v46))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_6_22(&dword_267B93000, v47, v48, "#ReadSpokenHintAction Message is short, checking if user will receive a short hint");
    OUTLINED_FUNCTION_32_0();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 1384) = v49;
  *v49 = v50;
  v49[1] = sub_267D074E4;

  return sub_267D093B4();
}

uint64_t sub_267D074E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 1392) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D075DC()
{
  OUTLINED_FUNCTION_29();
  v4 = OUTLINED_FUNCTION_43_14();
  OUTLINED_FUNCTION_51_9(v4);
  v5 = OUTLINED_FUNCTION_44_0();
  sub_267B9FED8(v5, v6, &unk_267EFCDD0);
  OUTLINED_FUNCTION_51_9(v2);
  (*(v3 + 8))(v1, v0);
  OUTLINED_FUNCTION_16_15();

  OUTLINED_FUNCTION_1();

  return v7();
}

uint64_t sub_267D076AC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v0 = OUTLINED_FUNCTION_8_25();
  sub_267B9FED8(v0, &qword_28022BD90, &unk_267EFCDD0);
  v1 = OUTLINED_FUNCTION_21_11();
  v2(v1);
  OUTLINED_FUNCTION_9_26();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267D07754()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v0 = OUTLINED_FUNCTION_8_25();
  sub_267B9FED8(v0, &qword_28022BD90, &unk_267EFCDD0);
  v1 = OUTLINED_FUNCTION_21_11();
  v2(v1);
  OUTLINED_FUNCTION_9_26();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267D077FC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v0 = OUTLINED_FUNCTION_8_25();
  sub_267B9FED8(v0, &qword_28022BD90, &unk_267EFCDD0);
  v1 = OUTLINED_FUNCTION_21_11();
  v2(v1);
  OUTLINED_FUNCTION_9_26();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267D078A4()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v0 = OUTLINED_FUNCTION_8_25();
  sub_267B9FED8(v0, &qword_28022BD90, &unk_267EFCDD0);
  v1 = OUTLINED_FUNCTION_21_11();
  v2(v1);
  OUTLINED_FUNCTION_9_26();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267D0794C()
{
  OUTLINED_FUNCTION_29();
  v4 = OUTLINED_FUNCTION_43_14();
  OUTLINED_FUNCTION_51_9(v4);
  v5 = OUTLINED_FUNCTION_44_0();
  sub_267B9FED8(v5, v6, &unk_267EFCDD0);
  OUTLINED_FUNCTION_51_9(v2);
  (*(v3 + 8))(v1, v0);
  OUTLINED_FUNCTION_9_26();

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_267D07A20()
{
  OUTLINED_FUNCTION_12();
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v1[26] = v5;
  v1[27] = v6;
  v7 = sub_267EF2CC8();
  v1[32] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[33] = v8;
  v1[34] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF4228();
  v1[35] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[36] = v10;
  v1[37] = OUTLINED_FUNCTION_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v11);
  v1[38] = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267D07B44()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0[31] + 48);
  v0[39] = v1;
  sub_267BEB520(v1 + 152, (v0 + 2));
  OUTLINED_FUNCTION_30_14();
  v10 = OUTLINED_FUNCTION_53_9(v2, v3, v4, v5, v6, v7, v8, v9, v37);
  sub_267C5E230(v10, v11, v12, v13, v14, v15, v16, v17, v38, v39, v40);
  v19 = v18;
  sub_267B9EF14((v0 + 2));
  if (v19 & 1) == 0 || v0[27] && ((v20 = v0[38], v21 = v0[32], (*(v0[33] + 16))(v20, v0[28], v21), OUTLINED_FUNCTION_9(), __swift_storeEnumTagSinglePayload(v22, v23, v24, v21), v25 = sub_267C483F0(v20), v27 = v26, sub_267B9FED8(v20, &qword_28022BD90, &unk_267EFCDD0), (v27) || (v28 = sub_267C483F0(v0[29]), (v29) || (v0[30] >= 3 ? (v30 = v28 < 7) : (v30 = 1), !v30 ? (v31 = v0[27] <= 1) : (v31 = 0), v31 ? (v32 = v25 < 14) : (v32 = 1), v32)))
  {
    sub_267EF3D38();
    OUTLINED_FUNCTION_66_8();

    OUTLINED_FUNCTION_1();

    return v33();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[40] = v35;
    *v35 = v36;
    v35[1] = sub_267D07D18;

    return sub_267E77E48();
  }
}

uint64_t sub_267D07D18()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D07E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = v22[37];
  v26 = v22[34];
  v27 = v22[26];
  sub_267BEB520(v22[39] + 152, (v22 + 14));
  OUTLINED_FUNCTION_30_14();
  sub_267EF2CB8();
  sub_267C5BD60(&a9, v26);
  v28 = OUTLINED_FUNCTION_44_0();
  v29(v28);
  sub_267B9EF14((v22 + 14));
  sub_267D0ABEC(v25, v27);
  v30 = OUTLINED_FUNCTION_26_0();
  v31(v30);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64_3();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267D07F0C()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267D07F7C()
{
  OUTLINED_FUNCTION_12();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v1[14] = v5;
  v1[15] = v6;
  v7 = sub_267EF2CC8();
  v1[20] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[21] = v8;
  v1[22] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF4228();
  v1[23] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[24] = v10;
  v1[25] = OUTLINED_FUNCTION_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v11);
  v1[26] = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267D080A0()
{
  v1 = v0[20];
  v2 = v0[15];
  OUTLINED_FUNCTION_2_5(v0[17]);
  v3 = v3 || v2 == 0;
  if (!v3 && ((v4 = v0[26], (*(v0[21] + 16))(v4, v0[16], v1), OUTLINED_FUNCTION_9(), __swift_storeEnumTagSinglePayload(v5, v6, v7, v1), v8 = sub_267C483F0(v4), v10 = v9, sub_267B9FED8(v4, &qword_28022BD90, &unk_267EFCDD0), (v10 & 1) != 0) || (v11 = sub_267C483F0(v0[17]), (v12 & 1) != 0) || (v0[18] >= 3 ? (v13 = v0[15] <= 1) : (v13 = 0), v13 ? (v14 = v11 < 7) : (v14 = 1), !v14 ? (v15 = v8 < 14) : (v15 = 1), v15)))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v16 = sub_267EF8A08();
    v17 = OUTLINED_FUNCTION_13_8(v16, qword_280240FB0);
    v18 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v18))
    {
      v19 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v19);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3D38();
    sub_267EF3D28();

    OUTLINED_FUNCTION_1();

    return v25();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v27 = sub_267EF8A08();
    v28 = OUTLINED_FUNCTION_13_8(v27, qword_280240FB0);
    v29 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v29))
    {
      v30 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v30);
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v31, v32, "#ReadSpokenHintAction reading multilingual hint");
      OUTLINED_FUNCTION_29_1();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[27] = v33;
    *v33 = v34;
    v33[1] = sub_267D0831C;

    return sub_267E784C8();
  }
}

uint64_t sub_267D0831C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D0850C()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267D0857C()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 1640) = v0;
  *(v1 + 1760) = v2;
  *(v1 + 1632) = v3;
  v4 = sub_267EF4228();
  *(v1 + 1648) = v4;
  OUTLINED_FUNCTION_30_0(v4);
  *(v1 + 1656) = v5;
  *(v1 + 1664) = OUTLINED_FUNCTION_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v6);
  *(v1 + 1672) = OUTLINED_FUNCTION_50();
  *(v1 + 1680) = swift_task_alloc();
  *(v1 + 1688) = swift_task_alloc();
  *(v1 + 1696) = swift_task_alloc();
  v7 = sub_267EF2CC8();
  *(v1 + 1704) = v7;
  OUTLINED_FUNCTION_30_0(v7);
  *(v1 + 1712) = v8;
  *(v1 + 1720) = OUTLINED_FUNCTION_50();
  *(v1 + 1728) = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D086D0()
{
  v163 = v0;
  v1 = *(v0 + 1704);
  v2 = *(v0 + 1696);
  v3 = *(*(v0 + 1640) + 48);
  *(v0 + 1736) = v3;
  sub_267BEB520(v3 + 152, v0 + 16);
  v161 = xmmword_267EFE700;
  OUTLINED_FUNCTION_18_16();
  sub_267C5C400(v4, v2);
  sub_267B9EF14(v0 + 16);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 1696);
    sub_267EF2CB8();
    OUTLINED_FUNCTION_2_5(v5);
    if (!v6)
    {
      sub_267B9FED8(*(v0 + 1696), &qword_28022BD90, &unk_267EFCDD0);
    }
  }

  else
  {
    (*(*(v0 + 1712) + 32))(*(v0 + 1728), *(v0 + 1696), *(v0 + 1704));
  }

  v7 = sub_267BEB520(v3 + 152, v0 + 112);
  OUTLINED_FUNCTION_3_31(v7, v8, v9, v10, v11, v12, v13, v14, v139, v147, xmmword_267EFE700);
  sub_267C5DD80(v15, v16, v17, v18, v19, v20, v21, v22, v140, v148, v155);
  v24 = v23;
  sub_267B9EF14(v0 + 112);
  if (!v24)
  {
    sub_267BC9B04(v3 + 344, v0 + 1592, &qword_280229128, &unk_267EFC860);
    v25 = *(v0 + 1616);
    if (v25)
    {
      __swift_project_boxed_opaque_existential_0((v0 + 1592), v25);
      sub_267C3CBF8();
      __swift_destroy_boxed_opaque_existential_0((v0 + 1592));
    }

    else
    {
      sub_267B9FED8(v0 + 1592, &qword_280229128, &unk_267EFC860);
    }

    v26 = *(v0 + 1760);
    v27 = sub_267BEB520(v3 + 152, v0 + 1360);
    OUTLINED_FUNCTION_3_31(v27, v28, v29, v30, v31, v32, v33, v34, v141, v149, v155);
    sub_267C5CF7C(v35, v26);
    sub_267B9EF14(v0 + 1360);
    sub_267BEB520(v3 + 152, v0 + 1456);
    v161 = 0uLL;
    OUTLINED_FUNCTION_18_16();
    ConversationEventStore.setDisabled(event:)();
    sub_267B9EF14(v0 + 1456);
    OUTLINED_FUNCTION_44_1();
    if (!v6)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v36 = sub_267EF8A08();
    v37 = OUTLINED_FUNCTION_13_8(v36, qword_280240FB0);
    v38 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v38))
    {
      v39 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v39);
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v40, v41, "#ReadSpokenHintAction user has not received any short message hints, enroll in experiment");
      OUTLINED_FUNCTION_29_1();
    }
  }

  v42 = sub_267BEB520(v3 + 152, v0 + 208);
  OUTLINED_FUNCTION_3_31(v42, v43, v44, v45, v46, v47, v48, v49, v141, v149, v155);
  sub_267C5D410(v50);
  LODWORD(v52) = v51;
  sub_267B9EF14(v0 + 208);
  if (v52 == 4 || (sub_267C285DC() & 1) == 0)
  {
    v71 = sub_267BEB520(v3 + 152, v0 + 304);
    OUTLINED_FUNCTION_3_31(v71, v72, v73, v74, v75, v76, v77, v78, v142, v150, v156);
    ConversationEventStore.setDisabled(event:)();
    sub_267B9EF14(v0 + 304);
    OUTLINED_FUNCTION_44_1();
    if (!v6)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v79 = sub_267EF8A08();
    v80 = OUTLINED_FUNCTION_13_8(v79, qword_280240FB0);
    v81 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v81))
    {
      v82 = OUTLINED_FUNCTION_32();
      *v82 = 0;
      v83 = "#ReadSpokenHintAction There is a discrepancy between the user's initial experiment group enrollment and the value being queried from Trial. Disabling future experimental short message hints.";
LABEL_23:
      _os_log_impl(&dword_267B93000, v80, v52, v83, v82, 2u);
      OUTLINED_FUNCTION_32_0();
    }
  }

  else
  {
    v53 = sub_267BEB520(v3 + 152, v0 + 400);
    OUTLINED_FUNCTION_3_31(v53, v54, v55, v56, v57, v58, v59, v60, v142, v150, v156);
    sub_267C5E230(v61, v62, v63, v64, v65, v66, v67, v68, v143, v151, v157);
    v70 = v69;
    sub_267B9EF14(v0 + 400);
    if (v70)
    {
      switch(*(v0 + 1760))
      {
        case 1:
        case 2:
          goto LABEL_32;
        case 3:
          OUTLINED_FUNCTION_59_10();
LABEL_32:
          OUTLINED_FUNCTION_57_8();
          LOBYTE(v52) = sub_267EF9EA8();

          if (v52)
          {
            goto LABEL_33;
          }

          sub_267BC9B04(v3 + 344, v0 + 1552, &qword_280229128, &unk_267EFC860);
          if (*(v0 + 1576))
          {
            v131 = sub_267D046F0(*(v0 + 1760), v24, *(v0 + 1728));
            v133 = &qword_280229128;
            v134 = &unk_267EFC860;
            v132 = v0 + 1552;
LABEL_36:
            sub_267B9FED8(v132, v133, v134);
            *(v0 + 1761) = v131;
            if (v131 != 7)
            {
              swift_task_alloc();
              OUTLINED_FUNCTION_25();
              *(v0 + 1744) = v135;
              *v135 = v136;
              v135[1] = sub_267D08E48;

              return sub_267E78E28();
            }
          }

          else
          {
            sub_267B9FED8(v0 + 1552, &qword_280229128, &unk_267EFC860);
          }

          OUTLINED_FUNCTION_44_1();
          if (!v6)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v137 = sub_267EF8A08();
          v80 = OUTLINED_FUNCTION_13_8(v137, qword_280240FB0);
          v138 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v138))
          {
            v82 = OUTLINED_FUNCTION_32();
            *v82 = 0;
            v83 = "ReadSpokenHintAction failed to find short message hint type";
            goto LABEL_23;
          }

          break;
        default:

LABEL_33:
          v52 = *(v0 + 1688);
          v90 = *(v0 + 1680);
          v91 = *(v0 + 1672);
          sub_267BEB520(v3 + 152, v0 + 784);
          v161 = xmmword_267EFE6F0;
          v162 = 4;
          sub_267C5DD80(&v161, v92, v93, v94, v95, v96, v97, v98, v144, v152, v158);
          v100 = v99;
          sub_267B9EF14(v0 + 784);
          sub_267BEB520(v3 + 152, v0 + 880);
          sub_267C5D908(v52);
          sub_267B9EF14(v0 + 880);
          sub_267BEB520(v3 + 152, v0 + 976);
          v161 = xmmword_267EFDDC0;
          OUTLINED_FUNCTION_18_16();
          sub_267C5C400(v101, v90);
          sub_267B9EF14(v0 + 976);
          sub_267BEB520(v3 + 152, v0 + 1072);
          OUTLINED_FUNCTION_7_24();
          sub_267C5C400(v102, v91);
          sub_267B9EF14(v0 + 1072);
          v103 = sub_267BEB520(v3 + 152, v0 + 1168);
          OUTLINED_FUNCTION_3_31(v103, v104, v105, v106, v107, v108, v109, v110, 2, 0, xmmword_267EFDDC0);
          sub_267C5E0EC(v111, v112, v113, v114, v115, v116, v117, v118, v145, v153, v159);
          sub_267B9EF14(v0 + 1168);
          sub_267BEB520(v3 + 152, v0 + 1264);
          OUTLINED_FUNCTION_7_24();
          sub_267C5E0EC(v119, v120, v121, v122, v123, v124, v125, v126, v146, v154, v160);
          sub_267B9EF14(v0 + 1264);
          v127 = OUTLINED_FUNCTION_26_0();
          v131 = sub_267C47B00(v127, v128, v100, v90, v129, v91, v130);
          sub_267B9FED8(v91, &qword_28022BD90, &unk_267EFCDD0);
          sub_267B9FED8(v90, &qword_28022BD90, &unk_267EFCDD0);
          v132 = v52;
          v133 = &qword_28022BD90;
          v134 = &unk_267EFCDD0;
          goto LABEL_36;
      }

      goto LABEL_24;
    }

    OUTLINED_FUNCTION_44_1();
    if (!v6)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v88 = sub_267EF8A08();
    v80 = OUTLINED_FUNCTION_13_8(v88, qword_280240FB0);
    v89 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v89))
    {
      v82 = OUTLINED_FUNCTION_32();
      *v82 = 0;
      v83 = "#ReadSpokenHintAction Announce hint experiment is enabled, user is enrolled, but no hint is provided";
      goto LABEL_23;
    }
  }

LABEL_24:

  sub_267EF3D38();
  sub_267EF3D28();
  v84 = *(v0 + 1728);
  OUTLINED_FUNCTION_13_23();
  v85(v84);

  OUTLINED_FUNCTION_1();

  return v86();
}

uint64_t sub_267D08E48()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 1752) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D08F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = 0xE900000000000073;
  v26 = *(v22 + 1720);
  v27 = *(v22 + 1712);
  v28 = *(v22 + 1760);
  sub_267BEB520(*(v22 + 1736) + 152, v22 + 496);
  OUTLINED_FUNCTION_30_14();
  sub_267EF2CB8();
  sub_267C5BD60(&a9, v26);
  v29 = *(v27 + 8);
  v30 = OUTLINED_FUNCTION_44_0();
  v29(v30);
  sub_267B9EF14(v22 + 496);
  switch(v28)
  {
    case 1:
      goto LABEL_5;
    case 2:
      v25 = 0x8000000267F0F8F0;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_59_10();
LABEL_5:
      OUTLINED_FUNCTION_57_8();
      v31 = sub_267EF9EA8();

      if (v31)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    default:

LABEL_6:
      v32 = *(v22 + 1761);
      if ((v32 - 1) < 2)
      {
        v36 = OUTLINED_FUNCTION_55_10();
        sub_267BEB520(v36, v22 + 688);
        OUTLINED_FUNCTION_30_14();
        sub_267EF2CB8();
        sub_267C5BD60(&a9, v25);
        v37 = OUTLINED_FUNCTION_26_0();
        v29(v37);
        v35 = v22 + 688;
        goto LABEL_11;
      }

      if (!*(v22 + 1761) || v32 == 3)
      {
        v33 = OUTLINED_FUNCTION_55_10();
        sub_267BEB520(v33, v22 + 592);
        OUTLINED_FUNCTION_30_14();
        sub_267EF2CB8();
        sub_267C5BD60(&a9, v25);
        v34 = OUTLINED_FUNCTION_26_0();
        v29(v34);
        v35 = v22 + 592;
LABEL_11:
        sub_267B9EF14(v35);
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_87();
      if (!v38)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v65 = sub_267EF8A08();
      v66 = OUTLINED_FUNCTION_13_8(v65, qword_280240FB0);
      v67 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_10_2(v67))
      {
        v68 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v68);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v69, v70, v71, v72, v73, 2u);
        OUTLINED_FUNCTION_26();
      }

LABEL_12:
      OUTLINED_FUNCTION_87();
      if (!v38)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v39 = sub_267EF8A08();
      v40 = OUTLINED_FUNCTION_13_8(v39, qword_280240FB0);
      v41 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v41))
      {
        v42 = *(v22 + 1761);
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        a9 = v44;
        *v43 = 136315138;
        v45 = sub_267C47A10(v42);
        v47 = sub_267BA33E8(v45, v46, &a9);

        *(v43 + 4) = v47;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_26();
      }

      sub_267D0ABEC(*(v22 + 1664), *(v22 + 1632));
      v53 = OUTLINED_FUNCTION_26_0();
      v54(v53);
      v55 = *(v22 + 1728);
      OUTLINED_FUNCTION_13_23();
      v29(v55);

      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_64_3();

      return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_267D092EC()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 1728);
  OUTLINED_FUNCTION_13_23();
  (*(v2 + 8))(v1);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267D093B4()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  *(v1 + 329) = v3;
  *(v1 + 328) = v4;
  *(v1 + 232) = v5;
  *(v1 + 240) = v6;
  *(v1 + 216) = v7;
  *(v1 + 224) = v8;
  *(v1 + 208) = v9;
  v10 = sub_267EF2CC8();
  *(v1 + 264) = v10;
  OUTLINED_FUNCTION_30_0(v10);
  *(v1 + 272) = v11;
  *(v1 + 280) = OUTLINED_FUNCTION_2();
  v12 = sub_267EF4228();
  *(v1 + 288) = v12;
  OUTLINED_FUNCTION_30_0(v12);
  *(v1 + 296) = v13;
  *(v1 + 304) = OUTLINED_FUNCTION_2();
  v14 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267D094B8()
{
  OUTLINED_FUNCTION_12();
  v1 = sub_267C47B00(*(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 328), *(v0 + 248), *(v0 + 329));
  *(v0 + 330) = v1;
  if (v1 == 7 || !sub_267D0B030())
  {
    sub_267EF3D38();
    OUTLINED_FUNCTION_66_8();

    OUTLINED_FUNCTION_1();

    return v5();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 312) = v2;
    *v2 = v3;
    v2[1] = sub_267D095D0;

    return sub_267E78E28();
  }
}

uint64_t sub_267D095D0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D096C8()
{
  v42 = v2;
  v3 = *(v2 + 330);
  if ((v3 - 1) < 2)
  {
    v18 = OUTLINED_FUNCTION_58_5();
    sub_267BEB520(v18, v2 + 112);
    OUTLINED_FUNCTION_30_14();
    sub_267EF2CB8();
    sub_267C5BD60(v41, v0);
    v19 = OUTLINED_FUNCTION_26_0();
    v20(v19);
    v17 = v2 + 112;
    goto LABEL_9;
  }

  if (*(v2 + 330))
  {
    v4 = v3 == 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = OUTLINED_FUNCTION_58_5();
    sub_267BEB520(v5, v2 + 16);
    OUTLINED_FUNCTION_30_14();
    v6 = sub_267EF2CB8();
    v14 = OUTLINED_FUNCTION_53_9(v6, v7, v8, v9, v10, v11, v12, v13, v41[0]);
    sub_267C5BD60(v14, v0);
    v15 = OUTLINED_FUNCTION_26_0();
    v16(v15);
    v17 = v2 + 16;
LABEL_9:
    sub_267B9EF14(v17);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_87();
  if (!v31)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v32 = sub_267EF8A08();
  v33 = OUTLINED_FUNCTION_13_8(v32, qword_280240FB0);
  v34 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_10_2(v34))
  {
    v35 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v35);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v36, v37, v38, v39, v40, 2u);
    OUTLINED_FUNCTION_26();
  }

LABEL_10:
  OUTLINED_FUNCTION_87();
  if (!v4)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v21 = sub_267EF8A08();
  v22 = OUTLINED_FUNCTION_13_8(v21, qword_280240FB0);
  v23 = sub_267EF95D8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v24);
    _os_log_impl(&dword_267B93000, v22, v23, "#ReadSpokenHintAction Reading short message hint", v1, 2u);
    OUTLINED_FUNCTION_26();
  }

  v25 = *(v2 + 304);
  v26 = *(v2 + 208);

  sub_267D0ABEC(v25, v26);
  v27 = OUTLINED_FUNCTION_26_0();
  v28(v27);

  OUTLINED_FUNCTION_1();

  return v29();
}

uint64_t sub_267D09914()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267D0997C()
{
  OUTLINED_FUNCTION_12();
  v1[129] = v0;
  v1[128] = v2;
  v3 = sub_267EF2CC8();
  v1[130] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[131] = v4;
  v1[132] = OUTLINED_FUNCTION_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v5);
  v1[133] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D09A50()
{
  sub_267EF6FF8();
  sub_267EF6FE8();
  sub_267EF6FB8();

  v1 = sub_267EF70F8();

  if ((v1 & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v6 = sub_267EF8A08();
    v7 = OUTLINED_FUNCTION_13_8(v6, qword_280240FB0);
    v8 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v8))
    {
      v9 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v9);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_26();
    }

    v15 = *(v0 + 1024);

LABEL_15:
    *(v15 + 32) = 0;
    *v15 = 0u;
    *(v15 + 16) = 0u;

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_15();

    __asm { BRAA            X1, X16 }
  }

  v2 = *(v0 + 1064);
  v3 = *(v0 + 1040);
  v4 = *(*(v0 + 1032) + 48);
  *(v0 + 1072) = v4;
  sub_267BEB520(v4 + 152, v0 + 16);
  sub_267C5E458(v2);
  sub_267B9EF14(v0 + 16);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v16 = sub_267EF8A08();
    v17 = OUTLINED_FUNCTION_13_8(v16, qword_280240FB0);
    v18 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v18))
    {
      v19 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v19);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_26();
    }

    v25 = *(v0 + 1064);
    v15 = *(v0 + 1024);

    sub_267B9FED8(v25, &qword_28022BD90, &unk_267EFCDD0);
    goto LABEL_15;
  }

  sub_267BC9B04(*(v0 + 1032) + 104, v0 + 824, &qword_28022ACC8, &qword_267F038B8);
  if (*(v0 + 848))
  {
    sub_267B9A5E8((v0 + 824), v0 + 784);
    v5 = *(v0 + 808);
  }

  else
  {
    v5 = type metadata accessor for TrialHeadGesturesHintsExperimentProvider();
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 18) = 0;
    *(v0 + 808) = v5;
    *(v0 + 816) = &off_2878D2648;
    *(v0 + 784) = v28;
  }

  __swift_project_boxed_opaque_existential_0((v0 + 784), v5);
  v29 = sub_267D0E260();
  *(v0 + 1100) = v29;
  sub_267BEB520(v4 + 152, v0 + 112);
  v30 = sub_267C5E738();
  sub_267B9EF14(v0 + 112);
  *(v0 + 864) = 0u;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0;
  sub_267BEB520(v4 + 152, v0 + 208);
  OUTLINED_FUNCTION_61_9();
  sub_267C5DD80(v31, v32, v33, v34, v35, v36, v37, v38, 8, 0, 8);
  v40 = v39;
  sub_267B9EF14(v0 + 208);
  v41 = v40 > 0;
  __swift_project_boxed_opaque_existential_0((v0 + 784), *(v0 + 808));
  v42 = sub_267D0E508();
  v44 = v43;
  sub_267BEB520(v4 + 152, v0 + 304);
  v45 = *(v0 + 328);
  v46 = *(v0 + 336);
  __swift_project_boxed_opaque_existential_0((v0 + 304), v45);
  v47 = (*(v46 + 16))(0xD00000000000002CLL, 0x8000000267F13520, v45, v46);
  v49 = v48;
  sub_267B9EF14(v0 + 304);
  v50 = sub_267D0DB38(v30, v29, v41, v42, v44, v47, v49);
  *(v0 + 1096) = v50;

  v51 = *(v0 + 808);
  v52 = *(v0 + 816);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 784, v51);
  (*(v52 + 40))(v50 & 0x10101, v51, v52);
  if ((v50 & 0x10000) != 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v53 = sub_267EF8A08();
    v54 = OUTLINED_FUNCTION_13_8(v53, qword_280240FB0);
    v55 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v55))
    {
      v56 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v56);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v57, v58, v59, v60, v61, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267BEB520(v4 + 152, v0 + 688);
    OUTLINED_FUNCTION_61_9();
    sub_267C5DEC0(v62);
    sub_267B9EF14(v0 + 688);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 1080) = v63;
  *v63 = v64;
  v63[1] = sub_267D09F60;
  OUTLINED_FUNCTION_15();

  return sub_267D0A5F0();
}

uint64_t sub_267D09F60()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 1088) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_267D0A058()
{
  OUTLINED_FUNCTION_90();
  v51 = v0;
  v1 = *(v0 + 1096);
  sub_267B9FED8(v0 + 864, &qword_28022ACD0, &unk_267F038C0);
  v2 = *(v0 + 920);
  *(v0 + 864) = *(v0 + 904);
  *(v0 + 880) = v2;
  *(v0 + 896) = *(v0 + 936);
  sub_267BC9B04(v0 + 864, v0 + 944, &qword_28022ACD0, &unk_267F038C0);
  v3 = *(v0 + 968);
  sub_267B9FED8(v0 + 944, &qword_28022ACD0, &unk_267F038C0);
  if (v3 && (v1 & 0x100) != 0)
  {
    OUTLINED_FUNCTION_44_1();
    if (!v23)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v4 = sub_267EF8A08();
    v5 = __swift_project_value_buffer(v4, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95D8();
    if (os_log_type_enabled(v6, v7))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_6_22(&dword_267B93000, v8, v9, "#ReadSpokenHintAction experimental policy requires trigger log for head gestures early dismissal hint.");
      OUTLINED_FUNCTION_32_0();
    }

    v10 = *(v0 + 1100);
    v11 = *(v0 + 1072);

    __swift_project_boxed_opaque_existential_0((v0 + 784), *(v0 + 808));
    sub_267D0E5E4(0xD000000000000024, 0x8000000267F16C40);
    sub_267BEB520(v11 + 152, v0 + 496);
    v12 = v10 == 1;
    v13 = *(v0 + 520);
    v14 = *(v0 + 528);
    __swift_project_boxed_opaque_existential_0((v0 + 496), v13);
    (*(v14 + 48))(v12, 0xD00000000000002DLL, 0x8000000267F13550, v13, v14);
    sub_267B9EF14(v0 + 496);
    __swift_project_boxed_opaque_existential_0((v0 + 784), *(v0 + 808));
    v15 = sub_267D0E508();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      v19 = sub_267EF89F8();
      v20 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v50[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_267BA33E8(v17, v18, v50);
        _os_log_impl(&dword_267B93000, v19, v5, "#ReadSpokenHintAction logging experiment ID: %s.", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      sub_267BEB520(*(v0 + 1072) + 152, v0 + 592);
      sub_267C5E80C(v17, v18);

      sub_267B9EF14(v0 + 592);
    }
  }

  OUTLINED_FUNCTION_44_1();
  if (v24)
  {
    if (!v23)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v25 = sub_267EF8A08();
    v26 = OUTLINED_FUNCTION_13_8(v25, qword_280240FB0);
    v27 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v27))
    {
      v28 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v28);
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v29, v30, "#ReadSpokenHintAction experimental policy allows hint.");
      OUTLINED_FUNCTION_29_1();
    }

    sub_267BC9B04(v0 + 864, v0 + 984, &qword_28022ACD0, &unk_267F038C0);
    v31 = *(v0 + 1008);
    sub_267B9FED8(v0 + 984, &qword_28022ACD0, &unk_267F038C0);
    if (v31)
    {
      v32 = *(v0 + 1064);
      v33 = *(v0 + 1056);
      sub_267BEB520(*(v0 + 1072) + 152, v0 + 400);
      OUTLINED_FUNCTION_30_14();
      sub_267EF2CB8();
      sub_267C5BD60(v50, v33);
      v34 = OUTLINED_FUNCTION_44_0();
      v35(v34);
      sub_267B9EF14(v0 + 400);
      v36 = v32;
    }

    else
    {
      v36 = *(v0 + 1064);
    }

    sub_267B9FED8(v36, &qword_28022BD90, &unk_267EFCDD0);
    v45 = *(v0 + 1024);
    v46 = *(v0 + 864);
    v47 = *(v0 + 880);
    *(v45 + 32) = *(v0 + 896);
    *v45 = v46;
    *(v45 + 16) = v47;
  }

  else
  {
    if (!v23)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v37 = sub_267EF8A08();
    v38 = OUTLINED_FUNCTION_13_8(v37, qword_280240FB0);
    v39 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v39))
    {
      v40 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v40);
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v41, v42, "#ReadSpokenHintAction experimental policy disallows hint.");
      OUTLINED_FUNCTION_29_1();
    }

    v43 = *(v0 + 1064);
    v44 = *(v0 + 1024);

    sub_267B9FED8(v0 + 864, &qword_28022ACD0, &unk_267F038C0);
    sub_267B9FED8(v43, &qword_28022BD90, &unk_267EFCDD0);
    *v44 = 0u;
    *(v44 + 16) = 0u;
    *(v44 + 32) = 0;
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 784));

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_10();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267D0A54C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 1064);
  sub_267B9FED8(v0 + 864, &qword_28022ACD0, &unk_267F038C0);
  sub_267B9FED8(v1, &qword_28022BD90, &unk_267EFCDD0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 784));

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D0A5F0()
{
  OUTLINED_FUNCTION_12();
  v1[25] = v2;
  v1[26] = v0;
  v3 = sub_267EF4228();
  v1[27] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[28] = v4;
  v1[29] = OUTLINED_FUNCTION_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v5);
  v1[30] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D0A6C0()
{
  v1 = *(v0[26] + 56);
  OUTLINED_FUNCTION_83(v1 + 24, (v0 + 19));
  sub_267BBD3E4();
  if (v0[17])
  {
    v2 = v0[30];
    v3 = v0[26];
    __swift_project_boxed_opaque_existential_0(v0 + 14, v0[17]);
    v4 = OUTLINED_FUNCTION_7_1();
    v6 = v5(v4);
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v0 + 14);
    v9 = *(v3 + 48);
    sub_267BEB520(v9 + 152, (v0 + 2));
    OUTLINED_FUNCTION_30_14();
    v18 = OUTLINED_FUNCTION_53_9(v10, v11, v12, v13, v14, v15, v16, v17, v52);
    sub_267C5C400(v18, v2);
    sub_267B9EF14((v0 + 2));
    v19 = *(v1 + 81);
    OUTLINED_FUNCTION_83(v9 + 256, (v0 + 22));
    v20 = *(v9 + 256);

    v21 = sub_267BBF2B0(v6, v8, v20);
    v23 = v22;

    if (v21 == 2)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    if (sub_267C48A28(v2, v19, v24, v21 == 2))
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v25 = sub_267EF8A08();
      v26 = OUTLINED_FUNCTION_13_8(v25, qword_280240FB0);
      v27 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v27))
      {
        v28 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v28);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v29, v30, v31, v32, v33, 2u);
        OUTLINED_FUNCTION_26();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[31] = v34;
      *v34 = v35;
      v34[1] = sub_267D0A9C8;

      return sub_267E7A720();
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v41 = sub_267EF8A08();
    v42 = OUTLINED_FUNCTION_13_8(v41, qword_280240FB0);
    v43 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v43))
    {
      v44 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v44);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v45, v46, v47, v48, v49, 2u);
      OUTLINED_FUNCTION_26();
    }

    v50 = v0[30];
    v37 = v0[25];

    v38 = &qword_28022BD90;
    v39 = &unk_267EFCDD0;
    v40 = v50;
  }

  else
  {
    v37 = v0[25];
    v38 = &qword_280229910;
    v39 = &unk_267EFEB70;
    v40 = (v0 + 14);
  }

  sub_267B9FED8(v40, v38, v39);
  *(v37 + 32) = 0;
  *v37 = 0u;
  *(v37 + 16) = 0u;

  OUTLINED_FUNCTION_1();

  return v51();
}

uint64_t sub_267D0A9C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D0AAC0()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  sub_267D0ABEC(v2, *(v0 + 200));
  (*(v4 + 8))(v2, v3);
  sub_267B9FED8(v1, &qword_28022BD90, &unk_267EFCDD0);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_30_2();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267D0AB6C()
{
  OUTLINED_FUNCTION_12();
  sub_267B9FED8(*(v0 + 240), &qword_28022BD90, &unk_267EFCDD0);

  OUTLINED_FUNCTION_17();

  return v1();
}

void sub_267D0ABEC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  v9 = *(v2 + 56);
  OUTLINED_FUNCTION_83(v9 + 24, v30);
  sub_267C8F7C0(*(v9 + 24), &v31);
  v10 = *(&v32 + 1);
  if (*(&v32 + 1))
  {
    v11 = v33;
    __swift_project_boxed_opaque_existential_0(&v31, *(&v32 + 1));
    v12 = (*(v11 + 24))(v10, v11);
    __swift_destroy_boxed_opaque_existential_0(&v31);
  }

  else
  {
    sub_267B9FED8(&v31, &qword_280229910, &unk_267EFEB70);
    v12 = MEMORY[0x277D84F90];
  }

  if (*(v12 + 16))
  {
    sub_267BA9F38(0, &qword_28022A0C8, 0x277D47918);

    v13 = sub_267EF7C18();
    v15 = v14;

    v16 = sub_267E7E7F0(v13, v15);
    *&v31 = sub_267EF9028();
    *(&v31 + 1) = v17;
    MEMORY[0x26D608E60](3092282, 0xE300000000000000);
    v29[2] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
    sub_267BF5748();
    v18 = sub_267EF8FC8();
    v20 = v19;

    MEMORY[0x26D608E60](v18, v20);

    sub_267EF2B88();

    v21 = sub_267EF2BA8();
    v22 = 0;
    if (__swift_getEnumTagSinglePayload(v8, 1, v21) != 1)
    {
      v22 = sub_267EF2AF8();
      OUTLINED_FUNCTION_5_0();
      v23 = OUTLINED_FUNCTION_44_0();
      v24(v23);
    }

    [v16 setIdentifier_];
  }

  else
  {

    v16 = 0;
  }

  v25 = sub_267EF4208();
  MEMORY[0x28223BE20](v25);
  v29[-2] = a1;
  v26 = sub_267D2E81C(sub_267D0B6EC, &v29[-4], v25);

  if (v26 >> 62)
  {
    sub_267BA9F38(0, &qword_28022A320, 0x277D471B0);

    sub_267EF9CA8();
  }

  else
  {

    sub_267EF9EC8();
    sub_267BA9F38(0, &qword_28022A320, 0x277D471B0);
  }

  v27 = sub_267EF4CC8();
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  v28 = MEMORY[0x277D5C1D8];
  a2[3] = v27;
  a2[4] = v28;
  __swift_allocate_boxed_opaque_existential_0(a2);
  sub_267EF4CA8();
}

id sub_267D0AFA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_267BA9F38(0, &qword_28022A0B0, 0x277D47B10);

  v5 = sub_267EF41E8();
  result = sub_267E7E88C(v3, v4, v5, v6, 0, 0, 0);
  *a2 = result;
  return result;
}

BOOL sub_267D0B030()
{
  if (*(v0 + 40))
  {
    return 0;
  }

  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_83(v2 + 24, v3);
  return *(*(v2 + 24) + 16) == 1;
}

uint64_t sub_267D0B084@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (result)
  {
    v3 = xmmword_267EFE6F0;
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      goto LABEL_7;
    }

    v3 = xmmword_267F03700;
  }

  *a3 = v3;
LABEL_7:
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_267D0B0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_83(a3 + 248, v19);
  v4 = *(a3 + 248);
  if (*(v4 + 16))
  {

    v5 = sub_267BA9948();
    if (v6)
    {
      v7 = *(*(v4 + 56) + 40 * v5 + 32);
      v8 = OUTLINED_FUNCTION_48_14();
      sub_267BB7AA0(v8, v9, v10, v11, v12);

      if (v7 == 1)
      {

        return 1;
      }

      v14 = OUTLINED_FUNCTION_48_14();
      sub_267BFF0F4(v14, v15, v16, v17, v18);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_267D0B184()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  sub_267B9FED8(v0 + 104, &qword_28022ACC8, &qword_267F038B8);
  return v0;
}

uint64_t sub_267D0B1D4()
{
  sub_267D0B184();

  return swift_deallocClassInstance();
}

uint64_t sub_267D0B264(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_267D0B274(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267D05188(a1);
}

uint64_t sub_267D0B310()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267D05DB4();
}

uint64_t sub_267D0B3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return j__OUTLINED_FUNCTION_5_10(a1, a2, a3, WitnessTable);
}

void (*sub_267D0B414(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v5[2] = v2;
  v5[3] = a2;
  WitnessTable = swift_getWitnessTable();
  v5[4] = WitnessTable;
  *v5 = sub_267C3698C(a2, WitnessTable);
  v5[1] = v7;
  return sub_267C94288;
}

uint64_t sub_267D0B4A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_267C3698C(a1, WitnessTable);
}

uint64_t sub_267D0B4F8(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  swift_getWitnessTable();
  *v2 = v1;
  v2[1] = sub_267BAEBEC;

  return sub_267BF9538();
}

uint64_t sub_267D0B694(uint64_t a1, uint64_t a2)
{
  result = sub_267D0B70C(&qword_28022ACC0, a2, type metadata accessor for ReadSpokenHintAction, &unk_267F03840);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267D0B70C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_267D0B754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_267D0B7C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationAnnounceState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_267D0B860(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  sub_267EF2CD8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_267B9FF34(v7, &qword_280229430, &qword_267EFD2C0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v18 = sub_267EF8A08();
    __swift_project_value_buffer(v18, qword_280240FB0);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_267B93000, v19, v20, "#SiriSuggestionsEngagementDonator Unable to resolve requestId. Not donating enagement", v21, 2u);
      MEMORY[0x26D60A7B0](v21, -1, -1);
    }
  }

  else
  {
    v22 = *(v10 + 32);
    v22(v17, v7, v8);
    v23 = sub_267EF93F8();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v23);
    (*(v10 + 16))(v15, v17, v8);
    v24 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    v22((v25 + v24), v15, v8);
    sub_267E8FA18();

    (*(v10 + 8))(v17, v8);
  }
}

uint64_t sub_267D0BB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_267EF85E8();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D0BC54, 0, 0);
}

uint64_t sub_267D0BC54()
{
  sub_267EF8F28();
  sub_267EF85D8();
  sub_267EF85B8();
  sub_267EF85A8();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v3 = *(v2 + 16);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_267D0BD6C;
  v5 = v0[10];
  v6 = v0[7];

  return MEMORY[0x2821C6008](v5, v6, v1, v3);
}

uint64_t sub_267D0BD6C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_267D0BF00;
  }

  else
  {
    v2 = sub_267D0BE80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_267D0BE80()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_267D0BF00()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = v0[12];
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_267B93000, v4, v5, "#SiriSuggestionsEngagementDonator Error donating engagement: %@", v8, 0xCu);
    sub_267B9FF34(v9, &unk_280229E30, &unk_267EFC270);
    MEMORY[0x26D60A7B0](v9, -1, -1);
    MEMORY[0x26D60A7B0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_267D0C0C0(uint64_t a1)
{
  v4 = *(sub_267EF2D28() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_267BCE5E4;

  return sub_267D0BB94(a1, v6, v7, v1 + v5);
}

uint64_t sub_267D0C1B0()
{
  OUTLINED_FUNCTION_12();
  v1[38] = v2;
  v1[39] = v0;
  v1[37] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v1[40] = swift_task_alloc();
  v4 = sub_267EF4228();
  v1[41] = v4;
  v1[42] = *(v4 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D0C2B4, 0, 0);
}

uint64_t sub_267D0C2B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229690, &unk_267F03B30);
  v1 = sub_267EF4638();
  v0[45] = v1;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v2 = sub_267EF8A08();
  v0[46] = __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_267B93000, v4, v5, "#SearchForMessageHandleIntentFlowStrategy received failure response: %@", v6, 0xCu);
    sub_267B9FF34(v7, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v9 = [v3 code];
  if (*MEMORY[0x277CD4558] == v9)
  {
    v10 = swift_task_alloc();
    v0[47] = v10;
    *v10 = v0;
    v10[1] = sub_267D0C560;

    return sub_267CE93C8();
  }

  else
  {
    v12 = v0[39];
    v13 = v12[5];
    v14 = v12[6];
    __swift_project_boxed_opaque_existential_0(v12 + 2, v13);
    (*(v14 + 8))(v13, v14);
    v15 = swift_task_alloc();
    v0[49] = v15;
    *v15 = v0;
    v15[1] = sub_267D0C880;
    v16 = v0[43];

    return MEMORY[0x2821BAEE0](v16, v0 + 2);
  }
}

uint64_t sub_267D0C560()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 384) = v0;

  if (v0)
  {
    v5 = sub_267D0CC40;
  }

  else
  {
    v5 = sub_267D0C664;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267D0C664(uint64_t a1)
{
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v4, v5, "#SearchForMessageHandleIntentFlowStrategy generating screen time restriction output");
    OUTLINED_FUNCTION_32_0();
  }

  v6 = *(v1 + 352);
  v7 = *(v1 + 336);
  v20 = *(v1 + 360);
  v21 = *(v1 + 328);
  v8 = *(v1 + 312);
  v9 = *(v1 + 320);
  v10 = *(v1 + 296);

  __swift_project_boxed_opaque_existential_0((v8 + 16), *(v8 + 40));
  v11 = OUTLINED_FUNCTION_10_0();
  v12(v11);
  __swift_project_boxed_opaque_existential_0((v8 + 16), *(v8 + 40));
  v13 = OUTLINED_FUNCTION_10_0();
  v14(v13);
  __swift_project_boxed_opaque_existential_0((v1 + 216), *(v1 + 240));
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v15 = sub_267EF4158();
  v16 = OUTLINED_FUNCTION_9_2(v15);
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0;
  v17 = MEMORY[0x277D5C1D8];
  v10[3] = v16;
  v10[4] = v17;
  __swift_allocate_boxed_opaque_existential_0(v10);
  OUTLINED_FUNCTION_1_35();
  sub_267EF3F68();

  sub_267B9FF34(v1 + 256, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v9, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v1 + 176));
  (*(v7 + 8))(v6, v21);
  __swift_destroy_boxed_opaque_existential_0((v1 + 216));

  OUTLINED_FUNCTION_17();

  return v18();
}

uint64_t sub_267D0C880()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v3 + 400) = v0;

  sub_267B9FF34(v3 + 16, &qword_28022A620, &qword_267F08EC0);
  if (v0)
  {
    v6 = sub_267D0CBBC;
  }

  else
  {
    v6 = sub_267D0C99C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267D0C99C(uint64_t a1)
{
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v4, v5, "#SearchForMessageHandleIntentFlowStrategy generating error in the app output");
    OUTLINED_FUNCTION_32_0();
  }

  v6 = *(v1 + 360);
  v8 = *(v1 + 336);
  v7 = *(v1 + 344);
  v9 = *(v1 + 320);
  v21 = *(v1 + 328);
  v10 = *(v1 + 312);
  v11 = *(v1 + 296);

  __swift_project_boxed_opaque_existential_0((v10 + 16), *(v10 + 40));
  v12 = OUTLINED_FUNCTION_4_1();
  v13(v12);
  __swift_project_boxed_opaque_existential_0((v10 + 16), *(v10 + 40));
  v14 = OUTLINED_FUNCTION_4_1();
  v15(v14);
  __swift_project_boxed_opaque_existential_0((v1 + 96), *(v1 + 120));
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v16 = sub_267EF4158();
  v17 = OUTLINED_FUNCTION_9_2(v16);
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0;
  *(v1 + 136) = 0u;
  v18 = MEMORY[0x277D5C1D8];
  v11[3] = v17;
  v11[4] = v18;
  __swift_allocate_boxed_opaque_existential_0(v11);
  OUTLINED_FUNCTION_1_35();
  sub_267EF3F98();

  sub_267B9FF34(v1 + 136, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v9, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v1 + 56));
  (*(v8 + 8))(v7, v21);
  __swift_destroy_boxed_opaque_existential_0((v1 + 96));

  OUTLINED_FUNCTION_17();

  return v19();
}

uint64_t sub_267D0CBBC()
{

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267D0CC40()
{

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267D0CCD4()
{
  v0 = sub_267C4779C();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow40SearchForMessageHandleIntentFlowStrategy_commonTemplateProvider));

  return swift_deallocClassInstance();
}

uint64_t sub_267D0CD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SearchForMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BAEBEC;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_267D0CE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SearchForMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_267D0CF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SearchForMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t sub_267D0CFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SearchForMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_267D0D0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SearchForMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_267D0D17C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267D0C1B0();
}

unint64_t sub_267D0D22C()
{
  result = qword_28022ACF8;
  if (!qword_28022ACF8)
  {
    type metadata accessor for SearchForMessageHandleIntentFlowStrategy(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022ACF8);
  }

  return result;
}

void sub_267D0D284(uint64_t a1, void (*a2)(void *, void))
{
  __swift_project_boxed_opaque_existential_0((v2 + 56), *(v2 + 80));
  if (sub_267BCF4EC())
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v4 = sub_267EF8A08();
    __swift_project_value_buffer(v4, qword_280240FB0);
    v5 = sub_267EF89F8();
    v6 = sub_267EF95D8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_267B93000, v5, v6, "OfflineCheckFlowStrategy# Device is offline", v7, 2u);
      MEMORY[0x26D60A7B0](v7, -1, -1);
    }

    sub_267D0DAE4();
    v8 = swift_allocError();
    a2(v8, 0);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t sub_267D0D3F0(void *a1, void (*a2)(void *), uint64_t a3)
{
  v11[0] = a1;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if (swift_dynamicCast())
  {
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = a2;
    v7[4] = a3;

    sub_267CB324C();
  }

  else
  {
    sub_267C266B0();
    v9 = swift_allocError();
    *v10 = 0xD000000000000012;
    v10[1] = 0x8000000267F16D70;
    v11[0] = v9;
    v12 = 1;
    a2(v11);
    return sub_267B9FF34(v11, &unk_28022A480, &unk_267F029F0);
  }
}

uint64_t sub_267D0D530(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4)
{
  v36[1] = a4;
  v37 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v36 - v7;
  v9 = sub_267EF4CC8();
  v36[0] = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_267EF4228();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  MEMORY[0x28223BE20](v16);
  v18 = (v36 - v17);
  sub_267C6D464(a1, v36 - v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v37;
    v20 = *v18;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v21 = sub_267EF8A08();
    __swift_project_value_buffer(v21, qword_280240FB0);
    v22 = v20;
    v23 = sub_267EF89F8();
    v24 = sub_267EF95E8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v20;
      *&v39 = v26;
      *v25 = 136315138;
      v27 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v28 = sub_267EF9098();
      v30 = sub_267BA33E8(v28, v29, &v39);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_267B93000, v23, v24, "#OfflineCheckFlowStrategy failed to make templating result: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x26D60A7B0](v26, -1, -1);
      MEMORY[0x26D60A7B0](v25, -1, -1);
    }

    *&v39 = v20;
    v42 = 1;
    v31 = v20;
    v19(&v39);
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    __swift_project_boxed_opaque_existential_0((a2 + 16), *(a2 + 40));
    sub_267EF3BC8();
    v32 = sub_267EF4158();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v32);
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_267EF3F48();
    sub_267B9FF34(&v39, &unk_28022CF80, &unk_267EFED50);
    sub_267B9FF34(v8, &unk_28022AE40, &unk_267EFCB60);
    *(&v40 + 1) = v9;
    v41 = MEMORY[0x277D5C1D8];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v39);
    v34 = v36[0];
    (*(v36[0] + 16))(boxed_opaque_existential_0, v11, v9);
    v42 = 0;
    v37(&v39);
    (*(v34 + 8))(v11, v9);
    (*(v13 + 8))(v15, v12);
  }

  return sub_267B9FF34(&v39, &unk_28022A480, &unk_267F029F0);
}

uint64_t sub_267D0DA08()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return v0;
}

uint64_t sub_267D0DA38()
{
  sub_267D0DA08();

  return swift_deallocClassInstance();
}

unint64_t sub_267D0DAE4()
{
  result = qword_28022AD00;
  if (!qword_28022AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AD00);
  }

  return result;
}

uint64_t sub_267D0DB38(char a1, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_267EF9B68();
  OUTLINED_FUNCTION_3_32();
  MEMORY[0x26D608E60]();
  v10 = 0xD000000000000018;
  v11 = "TrialLevelBool.enabled";
  if (a1)
  {
    OUTLINED_FUNCTION_4_32();
    if (v12)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xD000000000000017;
    }

    if (v12)
    {
      v17 = v13;
    }

    else
    {
      v17 = v15;
    }
  }

  else
  {
    v16 = 0xD000000000000018;
    v17 = "TrialLevelBool.enabled";
  }

  MEMORY[0x26D608E60](v16, v17 | 0x8000000000000000);

  OUTLINED_FUNCTION_3_32();
  MEMORY[0x26D608E60]();
  if (a2)
  {
    OUTLINED_FUNCTION_4_32();
    if (v18)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0xD000000000000017;
    }

    if (v18)
    {
      v11 = v19;
    }

    else
    {
      v11 = v21;
    }
  }

  MEMORY[0x26D608E60](v10, v11 | 0x8000000000000000);

  OUTLINED_FUNCTION_3_32();
  MEMORY[0x26D608E60]();
  if (a3)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (a3)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x26D608E60](v22, v23);

  OUTLINED_FUNCTION_2_4();
  MEMORY[0x26D608E60](0xD000000000000017);
  v24 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
  v25 = sub_267EF9098();
  MEMORY[0x26D608E60](v25);

  OUTLINED_FUNCTION_3_32();
  MEMORY[0x26D608E60]();
  v26 = a6;

  v27 = sub_267EF9098();
  MEMORY[0x26D608E60](v27);

  v28 = v61;
  v29 = v62;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v30 = sub_267EF8A08();
  __swift_project_value_buffer(v30, qword_280240FB0);

  v31 = sub_267EF89F8();
  v32 = sub_267EF95D8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v61 = v34;
    *v33 = 136315138;
    v35 = sub_267BA33E8(v28, v29, &v61);

    *(v33 + 4) = v35;
    _os_log_impl(&dword_267B93000, v31, v32, "%s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v26 = a6;
    OUTLINED_FUNCTION_32_0();
    v24 = a4;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  if (!a7)
  {
    if (a5)
    {
      goto LABEL_40;
    }

    goto LABEL_42;
  }

  if (!a5)
  {
    if (!a1)
    {
      goto LABEL_63;
    }

LABEL_42:
    v39 = 0;
    v40 = 0;
    v38 = (a2 == 1) & ~a3;
    goto LABEL_50;
  }

  if (v24 == v26 && a5 == a7)
  {
    v41 = a1 != 1 || a2 == 1;
    if (v41 && a1)
    {
      goto LABEL_49;
    }

LABEL_63:
    v53 = sub_267EF89F8();
    v54 = sub_267EF95D8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_267B93000, v53, v54, "#HeadGesturesHintsExperimentProvider failed to create HeadGesturesHintExperimentPolicy with invalid arguments", v55, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v51 = 0;
    v38 = 0;
    goto LABEL_66;
  }

  v37 = sub_267EF9EA8() & (a2 != 1);
  if (a1 != 1)
  {
    LOBYTE(v37) = 0;
  }

  if ((v37 & 1) != 0 || !a1)
  {
    goto LABEL_63;
  }

  if ((sub_267EF9EA8() & 1) == 0)
  {
LABEL_40:
    v38 = a2 == 1;
    v39 = a3 | (a1 != 0);
    v40 = 1;
    goto LABEL_50;
  }

LABEL_49:
  v39 = 0;
  v40 = 0;
  v38 = 0;
LABEL_50:
  v42 = sub_267EF89F8();
  v43 = sub_267EF95D8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61 = v45;
    *v44 = 136315138;
    if (v39)
    {
      v46 = 0x10000;
    }

    else
    {
      v46 = 0;
    }

    if (v40)
    {
      v47 = 256;
    }

    else
    {
      v47 = 0;
    }

    v48 = sub_267D0E0E8(v47 | v38 | v46);
    v50 = sub_267BA33E8(v48, v49, &v61);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_267B93000, v42, v43, "#HeadGesturesHintsExperimentProvider created %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  if (v39)
  {
    v51 = 0x10000;
    if ((v40 & 1) == 0)
    {
LABEL_66:
      v52 = 0;
      return v52 | v51 | v38;
    }
  }

  else
  {
    v51 = 0;
    if (!v40)
    {
      v52 = 0;
      return v52 | v51 | v38;
    }
  }

  v52 = 256;
  return v52 | v51 | v38;
}

uint64_t sub_267D0E0E8(int a1)
{
  sub_267EF9B68();
  MEMORY[0x26D608E60](0xD00000000000002BLL, 0x8000000267F16DE0);
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x26D608E60](v2, v3);

  OUTLINED_FUNCTION_2_4();
  MEMORY[0x26D608E60](0xD000000000000014);
  if ((a1 & 0x100) != 0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26D608E60](v4, v5);

  MEMORY[0x26D608E60](0xD000000000000018, 0x8000000267F16E30);
  if ((a1 & 0x10000) != 0)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x26D608E60](v6, v7);

  MEMORY[0x26D608E60](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_267D0E230()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_267D0E0E8(v2 | *v0 | v1);
}

uint64_t sub_267D0E260()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  v1 = sub_267EF8FF8();
  v2 = [v0 experimentIdentifiersWithNamespaceName_];

  v3 = sub_267EF8FF8();
  v4 = sub_267EF8FF8();
  v5 = [v0 levelForFactor:v3 withNamespaceName:v4];

  if (v5)
  {
    v6 = [v5 BOOLeanValue];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 0;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);
  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_267BA33E8(0xD000000000000025, 0x8000000267F16E50, &v16);
    *(v11 + 12) = 2080;
    if (v7)
    {
      if (v7 == 1)
      {
        v12 = 0xD000000000000016;
      }

      else
      {
        v12 = 0xD000000000000017;
      }

      if (v7 == 1)
      {
        v13 = "TrialLevelBool.disabled";
      }

      else
      {
        v13 = "SIRI_HEARABLES_VOX";
      }
    }

    else
    {
      v12 = 0xD000000000000018;
      v13 = "TrialLevelBool.enabled";
    }

    v14 = sub_267BA33E8(v12, v13 | 0x8000000000000000, &v16);

    *(v11 + 14) = v14;
    _os_log_impl(&dword_267B93000, v9, v10, "#TrialHeadGesturesHintsExperimentProvider loaded factor %s with level: %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  return v7;
}

id sub_267D0E508()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  OUTLINED_FUNCTION_2_4();
  v1 = sub_267EF8FF8();
  v2 = [v0 experimentIdentifiersWithNamespaceName_];

  if (v2)
  {
    v3 = [v2 experimentId];

    v2 = sub_267EF9028();
  }

  return v2;
}

void sub_267D0E5E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  sub_267EF6FF8();
  if (!sub_267EF6FC8())
  {
    goto LABEL_9;
  }

  sub_267EF6FA8();

  v9 = sub_267EF8678();
  v11 = v10;

  if (!v11)
  {
    goto LABEL_9;
  }

  sub_267C3D854();

  v12 = sub_267DCF850(v9, v11);
  if (!v12)
  {

LABEL_9:
    v13 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    goto LABEL_12;
  }

  v13 = v12;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v14 = sub_267EF8A08();
  __swift_project_value_buffer(v14, qword_280240FB0);

  v15 = sub_267EF89F8();
  v16 = sub_267EF95D8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v17 = 136315394;
    OUTLINED_FUNCTION_2_4();
    *(v17 + 4) = sub_267BA33E8(0xD000000000000025, v18, &v24);
    *(v17 + 12) = 2080;
    v19 = sub_267BA33E8(v9, v11, &v24);

    *(v17 + 14) = v19;
    _os_log_impl(&dword_267B93000, v15, v16, "#TrialHeadGesturesHintsExperimentProvider %s trigger log for requestId: %s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

LABEL_12:
  v20 = v13;
  sub_267EF93D8();
  v21 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = v20;
  v22[7] = v5;

  sub_267E8FA18();
}

uint64_t sub_267D0E8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x2822009F8](sub_267D0E920, 0, 0);
}

uint64_t sub_267D0E920()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_267C3D854();

  v3 = sub_267DCF850(v1, v2);
  if (!v3)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  }

  v4 = v3;
  v0[9] = v3;
  v5 = v0[8];
  v0[10] = [objc_allocWithZone(sub_267EF8988()) init];
  v8 = (*MEMORY[0x277CE4828] + MEMORY[0x277CE4828]);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_267D0EA5C;

  return v8(v4, 0xD000000000000012, 0x8000000267F16E80, v5);
}

uint64_t sub_267D0EA5C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_267D0ECD4;
  }

  else
  {
    v2 = sub_267D0EB70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_267D0EB70()
{
  v13 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  v6 = v0[10];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    OUTLINED_FUNCTION_2_4();
    *(v7 + 4) = sub_267BA33E8(0xD000000000000025, v9, &v12);
    _os_log_impl(&dword_267B93000, v2, v3, "#TrialHeadGesturesHintsExperimentProvider %s trigger log complete", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_267D0ECD4()
{
  v17 = v0;
  v1 = *(v0 + 72);

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v2 = *(v0 + 96);
  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);
  v4 = v2;
  v5 = sub_267EF89F8();
  v6 = sub_267EF95E8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 96);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136315394;
    OUTLINED_FUNCTION_2_4();
    *(v9 + 4) = sub_267BA33E8(0xD000000000000025, v10, &v16);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v11 = sub_267EF9F68();
    v13 = sub_267BA33E8(v11, v12, &v16);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_267B93000, v5, v6, "#TrialHeadGesturesHintsExperimentProvider %s error during trigger logging: %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeadGesturesHintExperimentPolicy(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadGesturesHintExperimentPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_267D0F014(uint64_t result)
{
  v2 = *v1;
  v2[16] = result & 1;
  v2[17] = BYTE1(result) & 1;
  v2[18] = BYTE2(result) & 1;
  return result;
}

uint64_t sub_267D0F034(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_267BCE5E4;

  return sub_267D0E8FC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_267D0F108()
{
  if (*(v1 + 32))
  {
    OUTLINED_FUNCTION_5_31();
    return v0;
  }

  v2 = *(v1 + 8);
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
LABEL_6:
    OUTLINED_FUNCTION_5_31();
    *(v1 + 32) = 1;
    return v0;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v0 = *(*v1 + 16 * v2 + 32);
    *(v1 + 8) = v2 + 1;
    v4 = *(v1 + 24);
    v5 = *(*(v1 + 16) + 16);
    if (v4 == v5)
    {
      goto LABEL_6;
    }

    if (v4 < v5)
    {
      *(v1 + 24) = v4 + 1;

      return v0;
    }
  }

  __break(1u);
  return result;
}

id sub_267D0F1C4()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    v3 = sub_267EF9A68();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 8);
  if (v4 == v3)
  {
LABEL_11:
    v1 = 0;
    *(v0 + 32) = 1;
    return v1;
  }

  v5 = v2 & 0xC000000000000001;
  sub_267BBD0EC(*(v0 + 8), (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x26D609870](v4, v2);
  }

  else
  {
    v6 = *(v2 + 8 * v4 + 32);
  }

  v1 = v6;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 8) = v4 + 1;
    v5 = *(v0 + 16);
    v7 = sub_267BAF0DC(v5);
    v4 = *(v0 + 24);
    if (v4 == v7)
    {

      goto LABEL_11;
    }

    sub_267BBD0EC(*(v0 + 24), (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) == 0)
    {
      result = *(v5 + 8 * v4 + 32);
      goto LABEL_14;
    }
  }

  result = MEMORY[0x26D609870](v4, v5);
LABEL_14:
  if (!__OFADD__(v4, 1))
  {
    *(v0 + 24) = v4 + 1;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_267D0F2FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF9D38();

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

uint64_t sub_267D0F350(char a1)
{
  if (a1)
  {
    return 0x5443454A4552;
  }

  else
  {
    return 0x4554454C504D4F43;
  }
}

uint64_t sub_267D0F3AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267D0F2FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_267D0F3DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267D0F350(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267D0F408()
{
  v0 = sub_267EF6F88();
  OUTLINED_FUNCTION_58();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v27 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v27 - v10;
  sub_267EF8F28();
  sub_267EF9388();
  v12 = *(v2 + 32);
  v13 = OUTLINED_FUNCTION_1_36();
  v12(v13);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_33();
  v14 = OUTLINED_FUNCTION_4_33();
  sub_267E86FBC(v14, 0xD000000000000013, v15);
  sub_267EF94A8();
  v16 = OUTLINED_FUNCTION_1_36();
  v12(v16);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_33();
  sub_267E86FBC(v9, 0x5372734174736562, 0xEC00000065726F63);
  sub_267EF9388();
  v17 = OUTLINED_FUNCTION_1_36();
  v12(v17);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_33();
  v18 = OUTLINED_FUNCTION_4_33();
  sub_267E86FBC(v18, v19, v20);
  sub_267EF9388();
  v21 = OUTLINED_FUNCTION_1_36();
  v12(v21);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_33();
  v22 = OUTLINED_FUNCTION_4_33();
  sub_267E86FBC(v22, v23, v24);
  sub_267EF90D8();

  (v12)(v11, v6, v0);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_33();
  sub_267E86FBC(v11, 0xD000000000000013, 0x8000000267F171E0);
  sub_267EF9528();
  v25 = OUTLINED_FUNCTION_1_36();
  v12(v25);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_33();
  sub_267E86FBC(v9, 0xD000000000000014, 0x8000000267F17140);
  return v27[1];
}

uint64_t sub_267D0F73C()
{
  sub_267EF6F58();
  OUTLINED_FUNCTION_58();
  v33 = v1;
  v34 = v0;
  MEMORY[0x28223BE20](v0);
  v30 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_267EF6D88();
  OUTLINED_FUNCTION_58();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;

  sub_267D0F408();

  sub_267EF6D78();
  sub_267EF2D18();
  sub_267EF2CE8();
  (*(v5 + 8))(v8, v3);
  sub_267EF6CF8();
  sub_267EF6D18();

  sub_267EF6D38();
  sub_267EF6CE8();
  v31 = v11;
  v32 = v9;
  v18 = v9;
  v19 = v30;
  (*(v11 + 16))(v15, v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD70, &qword_267F00648);
  sub_267EF8F28();
  sub_267EF6F18();
  sub_267C167B0();
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v20 = sub_267EF8A08();
  __swift_project_value_buffer(v20, qword_280240FB0);

  v21 = sub_267EF89F8();
  v22 = sub_267EF95D8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = v24;
    *v23 = 136315138;
    sub_267EF6F88();
    v25 = sub_267EF8F08();
    v27 = v26;

    v28 = sub_267BA33E8(v25, v27, &v35);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_267B93000, v21, v22, "#AutoSendPersonalizationDataRecorder donated data to SiriRemembers successfully %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x26D60A7B0](v24, -1, -1);
    MEMORY[0x26D60A7B0](v23, -1, -1);
  }

  else
  {
  }

  (*(v33 + 8))(v19, v34);
  return (*(v31 + 8))(v17, v32);
}

void sub_267D0FB70(void *a1)
{
  v1 = [a1 recognition];
  if (!v1)
  {
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 aceRecognition];

  if (!v3 || (v4 = v3, (v5 = sub_267D10354(v4, &selRef_utterances, &qword_28022AD30, 0x277D477A8)) == 0))
  {
LABEL_14:
    v14 = sub_267EF8B08();
    sub_267D10288();
    swift_allocError();
    OUTLINED_FUNCTION_2_33();
    *v15 = v17;
    v15[1] = v16;
    (*(*(v14 - 8) + 104))();
    swift_willThrow();

    return;
  }

  v6 = v5;
  v7 = v4;
  if (!sub_267D10354(v7, &selRef_phrases, &qword_28022AD28, 0x277D47720))
  {
LABEL_13:

    goto LABEL_14;
  }

  if (!sub_267BAF0DC(v6))
  {

    goto LABEL_13;
  }

  sub_267BBD0EC(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x26D609870](0, v6);
  }

  else
  {
    v8 = *(v6 + 32);
  }

  v23 = v8;
  if (!sub_267D102E0(v8, &selRef_interpretationIndices, &qword_280229538, 0x277CCABB0))
  {
    goto LABEL_18;
  }

  v9 = MEMORY[0x277D84F90];
  v10 = sub_267D0F1C4();
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    sub_267EF9518();

    v18 = sub_267EF8B08();
    v19 = sub_267D10288();
    OUTLINED_FUNCTION_3_2(v19);
    OUTLINED_FUNCTION_2_33();
    *v21 = v20 + 14;
    v21[1] = v22;
    (*(*(v18 - 8) + 104))();
    swift_willThrow();
  }

  else
  {

    sub_267DE0BDC(v9);
  }
}

_BYTE *storeEnumTagSinglePayload for AutoSendPersonalizationDataRecorder.SendMsgFollowUpValue(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267D10234()
{
  result = qword_28022AD08;
  if (!qword_28022AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AD08);
  }

  return result;
}

unint64_t sub_267D10288()
{
  result = qword_28022AD10;
  if (!qword_28022AD10)
  {
    sub_267EF8B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AD10);
  }

  return result;
}

uint64_t sub_267D102E0(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_267BA9F38(0, a3, a4);
  v8 = sub_267EF92F8();

  return v8;
}

uint64_t sub_267D10354(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v7 = [a1 *a2];

  if (!v7)
  {
    return 0;
  }

  sub_267BA9F38(0, a3, a4);
  v8 = sub_267EF92F8();

  return v8;
}

void sub_267D103D0(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_34_11();
  v8 = OUTLINED_FUNCTION_4_1();
  v10 = v9(v8);
  if (v10 == 17)
  {
    goto LABEL_2;
  }

  if (sub_267D6CFAC(v10) == 0x697461636F4C796DLL && v17 == 0xEA00000000006E6FLL)
  {
  }

  else
  {
    v19 = sub_267EF9EA8();

    if ((v19 & 1) == 0)
    {
LABEL_2:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v11 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v11, qword_280240FB0);
      v12 = sub_267EF89F8();
      v13 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_7_2(v13))
      {
        v14 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v14);
        OUTLINED_FUNCTION_1_1(&dword_267B93000, v15, v16, "#LocationAccessCheckStrategy not location sending request, supported");
        OUTLINED_FUNCTION_29_1();
      }

      a2(0, 0);
      return;
    }
  }

  OUTLINED_FUNCTION_34_11();
  v20 = OUTLINED_FUNCTION_4_1();
  v21(v20);
  sub_267EF7C38();
  v22 = sub_267EF7C08();
  v23 = sub_267BE84FC(v22);

  if (v23)
  {
    OUTLINED_FUNCTION_34_11();
    v24 = OUTLINED_FUNCTION_4_1();
    v26 = v25(v24);
    if (v26 == 6)
    {
      goto LABEL_16;
    }

    sub_267D6CE3C(v26);
    if (v41 == 0x656D5F6F69647561 && v40 == 0xED00006567617373)
    {
    }

    else
    {
      v43 = sub_267EF9EA8();

      if ((v43 & 1) == 0)
      {
LABEL_16:
        OUTLINED_FUNCTION_3_34();
        if (sub_267EF3C18() & 1) != 0 || (OUTLINED_FUNCTION_3_34(), (sub_267EF3BF8()) || (OUTLINED_FUNCTION_3_34(), (sub_267EF3C08()) || (OUTLINED_FUNCTION_3_34(), (sub_267EF3C48()) || (OUTLINED_FUNCTION_3_34(), (sub_267EF3C28()))
        {
          v27 = sub_267EF93F8();
          OUTLINED_FUNCTION_46_11(v27);
          sub_267B9AFEC(a1, v58);
          v28 = swift_allocObject();
          v28[2] = 0;
          v28[3] = 0;
          v28[4] = v3;
          v28[5] = a2;
          v28[6] = a3;
          sub_267BE58F4(v58, (v28 + 7));

          OUTLINED_FUNCTION_40_11();
          sub_267E8FA18();

          return;
        }

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v51 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v51, qword_280240FB0);
        v52 = sub_267EF89F8();
        v53 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_7_2(v53))
        {
          v54 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_4_2(v54);
          OUTLINED_FUNCTION_1_1(&dword_267B93000, v55, v56, "#LocationAccessCheckStrategy sending location is unsupported");
          OUTLINED_FUNCTION_29_1();
        }

        v57 = sub_267D1353C();
        v36 = OUTLINED_FUNCTION_61_1(&type metadata for SendLocationErrors, v57);
        v38 = v36;
        v39 = 4;
        goto LABEL_39;
      }
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v44 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v44, qword_280240FB0);
    v45 = sub_267EF89F8();
    v46 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_7_2(v46))
    {
      v47 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v47);
      OUTLINED_FUNCTION_1_1(&dword_267B93000, v48, v49, "#LocationAccessCheckStrategy sending location as part of an audio message is unsupported");
      OUTLINED_FUNCTION_29_1();
    }

    v50 = sub_267D1353C();
    v36 = OUTLINED_FUNCTION_61_1(&type metadata for SendLocationErrors, v50);
    v38 = v36;
    v39 = 6;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v29 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);
    v30 = sub_267EF89F8();
    v31 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_7_2(v31))
    {
      v32 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v32);
      OUTLINED_FUNCTION_1_1(&dword_267B93000, v33, v34, "#LocationAccessCheckStrategy sending location with 3rd party apps is unsupported");
      OUTLINED_FUNCTION_29_1();
    }

    v35 = sub_267D1353C();
    v36 = OUTLINED_FUNCTION_61_1(&type metadata for SendLocationErrors, v35);
    v38 = v36;
    v39 = 5;
  }

LABEL_39:
  *v37 = v39;
  a2(v36, 0);
}

uint64_t sub_267D1090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[173] = a7;
  v7[172] = a6;
  v7[171] = a5;
  v7[170] = a4;
  return MEMORY[0x2822009F8](sub_267D10938, 0, 0);
}

uint64_t sub_267D10938()
{
  OUTLINED_FUNCTION_12();
  type metadata accessor for INSendMessageIntentResponseCode(0);
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 1352, sub_267D10A00, v0 + 1296);
}

uint64_t sub_267D10A00()
{
  *(v1 + 1392) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_2_7(sub_267D1113C);
  }

  else
  {
    return OUTLINED_FUNCTION_2_7(sub_267D10A2C);
  }
}

uint64_t sub_267D10A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_35();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_29();
  a16 = v19;
  v22 = v19[169];
  if (v22 == 1 || *MEMORY[0x277CD4560] != v22)
  {
    OUTLINED_FUNCTION_36_0();

    return MEMORY[0x282200930](v37, v38, v39, v40);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v23 = v19[173];
    v24 = sub_267EF8A08();
    __swift_project_value_buffer(v24, qword_280240FB0);
    sub_267B9AFEC(v23, (v19 + 162));
    v25 = sub_267EF89F8();
    v26 = sub_267EF95D8();
    if (os_log_type_enabled(v25, v26))
    {
      v18 = OUTLINED_FUNCTION_48();
      v27 = swift_slowAlloc();
      a9 = v27;
      *v18 = 136315138;
      __swift_project_boxed_opaque_existential_0(v19 + 162, v19[165]);
      v28 = OUTLINED_FUNCTION_4_1();
      v19[167] = v29(v28);
      v19[168] = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
      v31 = sub_267EF9098();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_0(v19 + 162);
      v34 = sub_267BA33E8(v31, v33, &a9);

      *(v18 + 4) = v34;
      OUTLINED_FUNCTION_47_11(&dword_267B93000, v35, v36, "#LocationAccessCheckStrategy App:%s has not requested location access before.");
      __swift_destroy_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v19 + 162);
    }

    OUTLINED_FUNCTION_42_12();
    v42 = sub_267D1353C();
    v43 = OUTLINED_FUNCTION_61_1(&type metadata for SendLocationErrors, v42);
    *v44 = 2;
    (v18)(v43, 0);

    OUTLINED_FUNCTION_1_37();
    OUTLINED_FUNCTION_36_0();

    return MEMORY[0x282200920](v45, v46, v47, v48, v49, v50, v51, v52, a9, a10);
  }
}

uint64_t sub_267D10C78()
{
  *(v1 + 1400) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_2_7(sub_267D112A8);
  }

  else
  {
    return OUTLINED_FUNCTION_2_7(sub_267D10CA4);
  }
}

uint64_t sub_267D10CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56();
  if (*(v11 + 1416) == 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v12 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v12, qword_280240FB0);
    v13 = sub_267EF89F8();
    v14 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36_11(v14))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v15, v16, "#LocationAccessCheckStrategy sharing is supported");
      OUTLINED_FUNCTION_26();
    }

    v17 = *(v11 + 1368);

    v17(0, 0);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v22 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
    v23 = sub_267EF89F8();
    v24 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36_11(v24))
    {
      v10 = OUTLINED_FUNCTION_32();
      *v10 = 0;
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v25, v26, "#LocationAccessCheckStrategy Siri doesn't have access to precise location.");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_42_12();

    v27 = sub_267D1353C();
    v28 = OUTLINED_FUNCTION_61_1(&type metadata for SendLocationErrors, v27);
    *v29 = 0;
    (v10)(v28, 0);
  }

  return MEMORY[0x282200920](v11 + 656, v11 + 1416, sub_267D110E0, v11 + 1296, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_267D10E40()
{
  *(v1 + 1408) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_2_7(sub_267D11414);
  }

  else
  {
    return OUTLINED_FUNCTION_2_7(sub_267D10E6C);
  }
}

uint64_t sub_267D10E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_35();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_29();
  a16 = v19;
  if (*(v19 + 1416) == 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v22 = *(v19 + 1384);
    v23 = sub_267EF8A08();
    __swift_project_value_buffer(v23, qword_280240FB0);
    sub_267B9AFEC(v22, v19 + 1296);
    v24 = sub_267EF89F8();
    v25 = sub_267EF95D8();
    if (os_log_type_enabled(v24, v25))
    {
      v18 = OUTLINED_FUNCTION_48();
      v26 = swift_slowAlloc();
      a9 = v26;
      *v18 = 136315138;
      __swift_project_boxed_opaque_existential_0((v19 + 1296), *(v19 + 1320));
      v27 = OUTLINED_FUNCTION_4_1();
      *(v19 + 1336) = v28(v27);
      *(v19 + 1344) = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
      v30 = sub_267EF9098();
      v32 = v31;
      __swift_destroy_boxed_opaque_existential_0((v19 + 1296));
      v33 = sub_267BA33E8(v30, v32, &a9);

      *(v18 + 4) = v33;
      OUTLINED_FUNCTION_47_11(&dword_267B93000, v34, v35, "#LocationAccessCheckStrategy App:%s doesn't have access to precise location.");
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v19 + 1296));
    }

    OUTLINED_FUNCTION_42_12();
    v46 = sub_267D1353C();
    v42 = OUTLINED_FUNCTION_61_1(&type metadata for SendLocationErrors, v46);
    v44 = v42;
    v45 = 1;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v36 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v36, qword_280240FB0);
    v37 = sub_267EF89F8();
    v38 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36_11(v38))
    {
      v18 = OUTLINED_FUNCTION_32();
      *v18 = 0;
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v39, v40, "#LocationAccessCheckStrategy Both Siri and App doesn't have access to precise location.");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_42_12();

    v41 = sub_267D1353C();
    v42 = OUTLINED_FUNCTION_61_1(&type metadata for SendLocationErrors, v41);
    v44 = v42;
    v45 = 3;
  }

  *v43 = v45;
  (v18)(v42, 0);

  OUTLINED_FUNCTION_1_37();
  OUTLINED_FUNCTION_36_0();

  return MEMORY[0x282200920](v47, v48, v49, v50, v51, v52, v53, v54, a9, a10);
}

uint64_t sub_267D1113C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_1();
  a19 = v22;
  a20 = v23;
  a18 = v20;
  v24 = *(v20 + 1392);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v25 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
  v26 = v24;
  v27 = sub_267EF89F8();
  v28 = sub_267EF95E8();

  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_48();
    v29 = OUTLINED_FUNCTION_5_4();
    a10 = v29;
    OUTLINED_FUNCTION_33_8(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v30 = sub_267EF9098();
    v32 = sub_267BA33E8(v30, v31, &a10);

    *(v21 + 4) = v32;
    OUTLINED_FUNCTION_22_1(&dword_267B93000, v33, v34, "#LocationAccessCheckStrategy Error while checking location access for Siri / app: %s");
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_18_2();
  }

  OUTLINED_FUNCTION_37_8();
  v28(v24, 1);

  OUTLINED_FUNCTION_1_37();
  OUTLINED_FUNCTION_46();

  return MEMORY[0x282200920](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_267D112A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_1();
  a19 = v22;
  a20 = v23;
  a18 = v20;
  v24 = *(v20 + 1400);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v25 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
  v26 = v24;
  v27 = sub_267EF89F8();
  v28 = sub_267EF95E8();

  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_48();
    v29 = OUTLINED_FUNCTION_5_4();
    a10 = v29;
    OUTLINED_FUNCTION_33_8(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v30 = sub_267EF9098();
    v32 = sub_267BA33E8(v30, v31, &a10);

    *(v21 + 4) = v32;
    OUTLINED_FUNCTION_22_1(&dword_267B93000, v33, v34, "#LocationAccessCheckStrategy Error while checking location access for Siri / app: %s");
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_18_2();
  }

  OUTLINED_FUNCTION_37_8();
  v28(v24, 1);

  OUTLINED_FUNCTION_1_37();
  OUTLINED_FUNCTION_46();

  return MEMORY[0x282200920](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_267D11414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_1();
  a19 = v22;
  a20 = v23;
  a18 = v20;
  v24 = *(v20 + 1408);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v25 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
  v26 = v24;
  v27 = sub_267EF89F8();
  v28 = sub_267EF95E8();

  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_48();
    v29 = OUTLINED_FUNCTION_5_4();
    a10 = v29;
    OUTLINED_FUNCTION_33_8(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v30 = sub_267EF9098();
    v32 = sub_267BA33E8(v30, v31, &a10);

    *(v21 + 4) = v32;
    OUTLINED_FUNCTION_22_1(&dword_267B93000, v33, v34, "#LocationAccessCheckStrategy Error while checking location access for Siri / app: %s");
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_18_2();
  }

  OUTLINED_FUNCTION_37_8();
  v28(v24, 1);

  OUTLINED_FUNCTION_1_37();
  OUTLINED_FUNCTION_46();

  return MEMORY[0x282200920](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_267D11580(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_267D11614;

  return sub_267D125E8();
}

uint64_t sub_267D11614()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = OUTLINED_FUNCTION_41_10();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_267D11750(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_267D117E4;

  return sub_267D1206C();
}

uint64_t sub_267D117E4()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3 & 1;
    v11 = OUTLINED_FUNCTION_41_10();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_267D11924(void *a1, void (*a2)(id *), uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_267EF7C38();
  sub_267EF7C08();
  v22[0] = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if (swift_dynamicCast())
  {
    switch(v24)
    {
      case 1:
        OUTLINED_FUNCTION_62_0();
        v21 = swift_allocObject();
        OUTLINED_FUNCTION_20_10(v21);

        v11 = &unk_267F03E70;
        break;
      case 2:
        OUTLINED_FUNCTION_62_0();
        v19 = swift_allocObject();
        OUTLINED_FUNCTION_20_10(v19);

        v11 = &unk_267F03E80;
        break;
      case 3:
        OUTLINED_FUNCTION_62_0();
        v20 = swift_allocObject();
        OUTLINED_FUNCTION_20_10(v20);

        v11 = &unk_267F03E60;
        break;
      case 4:
      case 5:
      case 6:
      case 7:

        v9 = *(v4 + 96);
        swift_retain_n();
        v11 = &unk_267F03E48;
        break;
      default:
        v9 = *(v4 + 96);
        swift_retain_n();

        v11 = &unk_267F03E90;
        break;
    }

    v12 = v11;
    v13 = sub_267EF93F8();
    OUTLINED_FUNCTION_46_11(v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a2;
    v14[5] = a3;
    v14[6] = v12;
    v14[7] = v9;

    OUTLINED_FUNCTION_40_11();
    sub_267E8FA18();
  }

  else
  {

    v16 = sub_267C266B0();
    v17 = OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v16);
    *v18 = 0xD00000000000002BLL;
    v18[1] = 0x8000000267F17330;
    v22[0] = v17;
    v23 = 1;
    a2(v22);

    return sub_267B9FF34(v22, &unk_28022A480, &unk_267F029F0);
  }
}

uint64_t sub_267D11C4C(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_267CBA544;

  return sub_267DF756C();
}

uint64_t sub_267D11CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_267D11D0C, 0, 0);
}

uint64_t sub_267D11D0C()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_25_6(v1);

  return sub_267DF8800();
}

uint64_t sub_267D11D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_267D11DB8, 0, 0);
}

uint64_t sub_267D11DB8()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_25_6(v1);

  return sub_267DF7DFC();
}

uint64_t sub_267D11E40()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_267D11F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_267D11F48, 0, 0);
}

uint64_t sub_267D11F48()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_25_6(v1);

  return sub_267DF7A28();
}

uint64_t sub_267D11FD0(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_267CB92C0;

  return sub_267DF82A4();
}

uint64_t sub_267D12084()
{
  v1 = *(v0 + 32);
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_267D121AC;

  return v6(v2, v3);
}

uint64_t sub_267D121AC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  *v3 = *v1;
  v2[6] = v4;
  v2[7] = v5;
  v2[8] = v0;

  if (v0)
  {
    v6 = sub_267D12470;
  }

  else
  {
    v6 = sub_267D122B8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267D122B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_35();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_29();
  a16 = v18;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v21 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);
  v22 = sub_267EF89F8();
  v23 = sub_267EF95D8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v18[6];
    v25 = v18[7];
    v26 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    *v26 = 136315394;
    v18[2] = v24;
    type metadata accessor for AFLocationAuthorizationStyle(0);
    v27 = sub_267EF9098();
    v29 = sub_267BA33E8(v27, v28, &a9);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    v18[3] = v25;
    type metadata accessor for CLAccuracyAuthorization(0);
    v30 = sub_267EF9098();
    v32 = sub_267BA33E8(v30, v31, &a9);

    *(v26 + 14) = v32;
    _os_log_impl(&dword_267B93000, v22, v23, "#LocationAccessCheckStrategy locationService returned authorization style %s and accuracy %s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_36_0();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t sub_267D12470()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = *(v0 + 64);
  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_48();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_267B93000, v4, v5, "#LocationAccessCheckStrategy locationService returned error %@", v8, 0xCu);
    sub_267B9FF34(v9, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_267D125E8()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v1[3] = swift_task_alloc();
  v2 = sub_267EF89E8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D126DC, 0, 0);
}

uint64_t sub_267D126DC()
{
  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = qword_280240FC8;
  v0[7] = qword_280240FC8;
  v4 = v3;
  sub_267EF89C8();
  sub_267EF9698();
  OUTLINED_FUNCTION_24_11();
  sub_267EF89B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_267EFCA40;
  v6 = objc_allocWithZone(MEMORY[0x277CD3E98]);
  sub_267E7605C(0x353535383034312BLL, 0xEC00000033323130, 2);
  v7 = sub_267EF2A58();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v7);
  v8 = objc_allocWithZone(MEMORY[0x277CD3E90]);
  OUTLINED_FUNCTION_30_15();
  *(v5 + 32) = sub_267C7BD3C(v9, v10, v11, v12, v13, v14, v15, v16, 0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_267EFCA40;
  *(v17 + 32) = [objc_opt_self() attachmentWithCurrentLocation];
  v18 = objc_allocWithZone(MEMORY[0x277CD4078]);
  OUTLINED_FUNCTION_30_15();
  v27 = sub_267E8F82C(v19, v20, v21, v22, v23, v24, v25, v26, 0, 0, v17);
  v0[8] = v27;
  v28 = v27;
  v29 = sub_267EF8FF8();
  [v28 _setLaunchId_];

  v30 = [objc_allocWithZone(MEMORY[0x277D473A8]) init];
  v0[9] = v30;
  sub_267BA9F38(0, &qword_28022BCC0, 0x277D47418);
  v31 = sub_267EF9788();
  [v30 setIntent_];

  v32 = v2[5];
  v33 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v32);
  v34 = swift_task_alloc();
  v0[10] = v34;
  v35 = sub_267BA9F38(0, &qword_28022AD38, 0x277D473B0);
  *v34 = v0;
  v34[1] = sub_267D12A24;

  return MEMORY[0x2821BB6A0](v30, v32, v35, v33);
}

uint64_t sub_267D12A24()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v4;
  *(v2 + 96) = v0;

  if (v0)
  {
    v5 = sub_267D12FBC;
  }

  else
  {
    v5 = sub_267D12B2C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267D12B2C()
{
  v1 = [*(v0 + 88) intentResponse];
  if (v1)
  {
    v2 = v1;
    sub_267BB41B0(v1);
    if (v3)
    {
      v4 = sub_267EF8FF8();
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_267D13160(v2);
    if (v6 >> 60 == 15)
    {
      v7 = 0;
    }

    else
    {
      v8 = v5;
      v9 = v6;
      v7 = sub_267EF2BB8();
      sub_267BBE0C8(v8, v9);
    }

    v10 = INIntentResponseCreate();

    if (v10)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v13 = sub_267EF8A08();
        __swift_project_value_buffer(v13, qword_280240FB0);
        v14 = v10;
        v15 = sub_267EF89F8();
        v16 = sub_267EF95D8();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = OUTLINED_FUNCTION_48();
          v18 = swift_slowAlloc();
          *v17 = 138412290;
          *(v17 + 4) = v12;
          *v18 = v12;
          v19 = v14;
          _os_log_impl(&dword_267B93000, v15, v16, "#LocationAccessCheckStrategy Received intentResponse to check app location authorization: %@", v17, 0xCu);
          sub_267B9FF34(v18, &unk_280229E30, &unk_267EFC270);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_32_0();
        }

        v20 = *(v0 + 88);
        v21 = *(v0 + 64);
        v22 = *(v0 + 72);
        v23 = *(v0 + 48);
        v24 = *(v0 + 40);
        v46 = *(v0 + 32);

        v25 = [v12 code];
        sub_267EF9688();
        sub_267EF89B8();
        (*(v24 + 8))(v23, v46);

        v26 = *(v0 + 8);

        return v26(v25);
      }
    }

    else
    {
      v10 = v2;
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v28 = *(v0 + 88);
  v29 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);
  v30 = v28;
  v31 = sub_267EF89F8();
  v32 = sub_267EF95E8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v0 + 88);
    v34 = OUTLINED_FUNCTION_48();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v33;
    *v35 = v33;
    v36 = v33;
    _os_log_impl(&dword_267B93000, v31, v32, "#LocationAccessCheckStrategy Invalid ConfirmIntentCompleted received: %@", v34, 0xCu);
    sub_267B9FF34(v35, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_26();
  }

  v37 = *(v0 + 88);
  v39 = *(v0 + 64);
  v38 = *(v0 + 72);

  v40 = sub_267C266B0();
  OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v40);
  *v41 = 0xD00000000000001ELL;
  v41[1] = 0x8000000267F17310;
  swift_willThrow();

  v42 = *(v0 + 48);
  v43 = *(v0 + 32);
  v44 = *(v0 + 40);
  sub_267EF9688();
  OUTLINED_FUNCTION_24_11();
  sub_267EF89B8();
  (*(v44 + 8))(v42, v43);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_267D12FBC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_267EF9688();
  OUTLINED_FUNCTION_24_11();
  sub_267EF89B8();
  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

void *sub_267D13088()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  return v0;
}

uint64_t sub_267D130C0()
{
  sub_267D13088();

  return swift_deallocClassInstance();
}

uint64_t sub_267D13160(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF2BE8();

  return v3;
}

uint64_t sub_267D131C4()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return sub_267D11FD0(v3);
}

uint64_t sub_267D1324C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_12_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_11(v11);
  OUTLINED_FUNCTION_29_13();
  OUTLINED_FUNCTION_36_0();

  return sub_267E9089C();
}

uint64_t sub_267D132EC()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11(v4);

  return sub_267D11F24(v6, v2, v1);
}

uint64_t sub_267D13384()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11(v4);

  return sub_267D11D94(v6, v2, v1);
}

uint64_t sub_267D1341C()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11(v4);

  return sub_267D11CE8(v6, v2, v1);
}

uint64_t sub_267D134B4()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return sub_267D11C4C(v3);
}

unint64_t sub_267D1353C()
{
  result = qword_28022AD40;
  if (!qword_28022AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AD40);
  }

  return result;
}

uint64_t sub_267D13590()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267CBA544;
  OUTLINED_FUNCTION_29_13();
  OUTLINED_FUNCTION_36_0();

  return sub_267D1090C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_267D13638()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return sub_267D11580(v3);
}

uint64_t sub_267D136C0()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return sub_267D11750(v3);
}

uint64_t sub_267D1374C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v12;
  v8[12] = v13;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v9 = sub_267EF4228();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D13880, 0, 0);
}

uint64_t sub_267D13880()
{
  v1 = v0[16];
  v2 = v0[7];
  sub_267EF90F8();
  sub_267EF79B8();
  v3 = 1;
  OUTLINED_FUNCTION_1_38(v1, 0);
  if (v2)
  {
    sub_267EF90F8();
    v3 = 0;
  }

  v4 = v0[9];
  v5 = 1;
  OUTLINED_FUNCTION_1_38(v0[15], v3);
  if (v4)
  {
    sub_267EF90F8();
    v5 = 0;
  }

  v6 = v0[11];
  v7 = 1;
  OUTLINED_FUNCTION_1_38(v0[14], v5);
  if (v6)
  {
    sub_267EF90F8();
    v7 = 0;
  }

  OUTLINED_FUNCTION_1_38(v0[13], v7);
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_267D139E4;

  return sub_267CEA24C();
}

uint64_t sub_267D139E4()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  *(*v1 + 168) = v0;

  sub_267BBD6F0(v5);
  sub_267BBD6F0(v4);
  sub_267BBD6F0(v3);
  sub_267BBD6F0(v2);
  if (v0)
  {
    v6 = sub_267D13F28;
  }

  else
  {
    v6 = sub_267D13B78;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267D13B78(uint64_t a1)
{
  v81 = v1;
  v1[2] = sub_267EF41F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  sub_267BF5748();
  v2 = sub_267EF8FC8();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    (*(v1[18] + 8))(v1[19], v1[17]);
  }

  else
  {

    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);

    v7 = sub_267EF89F8();
    v8 = sub_267EF95E8();

    v9 = os_log_type_enabled(v7, v8);
    v11 = v1[18];
    v10 = v1[19];
    v12 = v1[17];
    if (v9)
    {
      v58 = v1[10];
      v61 = v1[11];
      v52 = v1[8];
      v55 = v1[9];
      v46 = v1[7];
      v49 = v1[6];
      v72 = v1[17];
      v76 = v1[19];
      v13 = v1[4];
      v14 = v1[5];
      v15 = v1[3];
      HIDWORD(v64) = v8;
      v16 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v80 = v68;
      *v16 = 136316162;
      *(v16 + 4) = sub_267BA33E8(v15, v13, &v80);
      *(v16 + 12) = 2048;
      *(v16 + 14) = v14;
      *(v16 + 22) = 2080;

      v25 = OUTLINED_FUNCTION_0_26(v17, v18, v19, v20, v21, v22, v23, v24, v46, v49, v52, v55, v58, v61, v64, v68, v72, v76);

      *(v16 + 24) = v25;
      *(v16 + 32) = 2080;

      v34 = OUTLINED_FUNCTION_0_26(v26, v27, v28, v29, v30, v31, v32, v33, v47, v50, v53, v56, v59, v62, v65, v69, v73, v77);

      *(v16 + 34) = v34;
      *(v16 + 42) = 2080;

      v43 = OUTLINED_FUNCTION_0_26(v35, v36, v37, v38, v39, v40, v41, v42, v48, v51, v54, v57, v60, v63, v66, v70, v74, v78);

      *(v16 + 44) = v43;
      _os_log_impl(&dword_267B93000, v7, v67, "#AdaptiveImageGlyphUtils failed to produce a description for %s glyph with count: %ld and descriptions %s, %s, %s", v16, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x26D60A7B0](v71, -1, -1);
      MEMORY[0x26D60A7B0](v16, -1, -1);

      (*(v11 + 8))(v79, v75);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v2 = 0;
    v4 = 0;
  }

  v44 = v1[1];

  return v44(v2, v4);
}

uint64_t sub_267D13F28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_267D13FC8()
{
  OUTLINED_FUNCTION_102(&unk_28022AD51, v7);
  v0 = OUTLINED_FUNCTION_66();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_267BA9F38(0, &unk_28022AF60, 0x277D23800);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_267B9F98C(v7, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }
}

uint64_t sub_267D140CC(uint64_t a1)
{
  OUTLINED_FUNCTION_102(a1, v8);
  v1 = OUTLINED_FUNCTION_66();
  v3 = objc_getAssociatedObject(v1, v2);
  swift_endAccess();
  if (v3)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_267B9F98C(v8, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }
}

uint64_t sub_267D141C8(uint64_t a1)
{
  [v1 setDelegate_];

  return swift_unknownObjectRelease();
}

void sub_267D14244(void *a1)
{
  OUTLINED_FUNCTION_102(&unk_28022AD51, v4);
  v2 = OUTLINED_FUNCTION_108();
  objc_setAssociatedObject(v2, v3, a1, 1);
  swift_endAccess();
}

uint64_t sub_267D142A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_267EF8FF8();
  }

  else
  {
    v4 = 0;
  }

  OUTLINED_FUNCTION_102(a3, v8);
  v5 = OUTLINED_FUNCTION_66();
  objc_setAssociatedObject(v5, v6, v4, 1);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void sub_267D14320(void *a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v10 = sub_267EF8A08();
  __swift_project_value_buffer(v10, qword_280240FB0);
  v11 = a1;
  v12 = sub_267EF89F8();
  v13 = sub_267EF95C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67240448;
    *(v14 + 4) = [v11 isRunning];

    *(v14 + 8) = 1026;
    *(v14 + 10) = a4 & 1;
    _os_log_impl(&dword_267B93000, v12, v13, "ShareThisFlow ScreenshotDelegate workflowRunnerClient was invoked, client.isRunning: %{BOOL,public}d cancelled: %{BOOL,public}d", v14, 0xEu);
    MEMORY[0x26D60A7B0](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  if (a3)
  {
    v15 = *(v5 + OBJC_IVAR____TtC16SiriMessagesFlowP33_AC72C49DCF17A2EF063087622590466618ScreenshotDelegate_callback);
    v16 = a3;
    v15(a3, 1);
  }

  else
  {
    (*(v5 + OBJC_IVAR____TtC16SiriMessagesFlowP33_AC72C49DCF17A2EF063087622590466618ScreenshotDelegate_callback))(a2, 0);
  }
}

id sub_267D145E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_267D14658(char a1)
{
  if (!a1)
  {
    return 0x696C616974696E69;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x6169566572616873;
}

unint64_t sub_267D146C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF9D38();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_267D1472C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267D146C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_267D1475C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267D14658(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_267D1479C(char a1)
{
  v2 = v1;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);

  oslog = sub_267EF89F8();
  v5 = sub_267EF95D8();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    if (a1)
    {
      if (a1 == 1)
      {
        v8 = 0xD000000000000010;
      }

      else
      {
        v8 = 0x6169566572616873;
      }

      if (a1 == 1)
      {
        v9 = 0x8000000267F10550;
      }

      else
      {
        v9 = 0xEF6567617373654DLL;
      }
    }

    else
    {
      v8 = 0x696C616974696E69;
      v9 = 0xEB0000000064657ALL;
    }

    v10 = sub_267BA33E8(v8, v9, &v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = 0xD000000000000010;
    v12 = 0x8000000267F10550;
    if (*(v2 + 464) != 1)
    {
      v11 = 0x6169566572616873;
      v12 = 0xEF6567617373654DLL;
    }

    if (*(v2 + 464))
    {
      v13 = v11;
    }

    else
    {
      v13 = 0x696C616974696E69;
    }

    if (*(v2 + 464))
    {
      v14 = v12;
    }

    else
    {
      v14 = 0xEB0000000064657ALL;
    }

    v15 = sub_267BA33E8(v13, v14, &v17);

    *(v6 + 14) = v15;
    _os_log_impl(&dword_267B93000, oslog, v5, "#ShareThisFlow transitioned from state %s to %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D60A7B0](v7, -1, -1);
    MEMORY[0x26D60A7B0](v6, -1, -1);
  }
}

void sub_267D14A00(char a1)
{
  v2 = *(v1 + 464);
  *(v1 + 464) = a1;
  sub_267D1479C(v2);
}

void sub_267D14A60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AF30, &qword_267EFF048);
  v0 = sub_267EF6288();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_267EFCE30;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D5EF28], v0);
  v6(v5 + v2, *MEMORY[0x277D5EF70], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D5EEF0], v0);
  sub_267E6EDB8();
  qword_280240AA8 = v7;
}

void sub_267D14B9C()
{
  OUTLINED_FUNCTION_48_0();
  sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_0();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = OUTLINED_FUNCTION_19();
  v3(v2);
  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_52();
    v16 = v7;
    *v6 = 136315138;
    sub_267D2483C(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v8 = sub_267EF9E58();
    v10 = v9;
    v11 = OUTLINED_FUNCTION_3();
    v12(v11);
    v13 = sub_267BA33E8(v8, v10, &v16);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_267B93000, v4, v5, "#ShareThisFlow.on input %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {

    v14 = OUTLINED_FUNCTION_3();
    v15(v14);
  }

  OUTLINED_FUNCTION_47();
}

void sub_267D14DAC()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_267EF4028();
  OUTLINED_FUNCTION_58();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  v112 = v11 - v10;
  v109 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v108 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v107 = v15 - v14;
  v105 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v103 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v101 = v19 - v18;
  v106 = sub_267EF37A8();
  OUTLINED_FUNCTION_58();
  v104 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_0();
  v102 = v23 - v22;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v24 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v24, qword_280240FB0);

  v25 = sub_267EF89F8();
  v26 = sub_267EF95D8();

  if (os_log_type_enabled(v25, v26))
  {
    v110 = v8;
    v27 = v6;
    v28 = v5;
    v29 = v3;
    v30 = OUTLINED_FUNCTION_48();
    v31 = OUTLINED_FUNCTION_52();
    v118[0] = v31;
    *v30 = 136315138;
    v32 = 0x8000000267F10550;
    v33 = 0xD000000000000010;
    if (*(v1 + 464) != 1)
    {
      v33 = 0x6169566572616873;
      v32 = 0xEF6567617373654DLL;
    }

    if (*(v1 + 464))
    {
      v34 = v33;
    }

    else
    {
      v34 = 0x696C616974696E69;
    }

    if (*(v1 + 464))
    {
      v35 = v32;
    }

    else
    {
      v35 = 0xEB0000000064657ALL;
    }

    v36 = sub_267BA33E8(v34, v35, v118);

    *(v30 + 4) = v36;
    OUTLINED_FUNCTION_64_4();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_45_2();

    v3 = v29;
    v5 = v28;
    v6 = v27;
    v8 = v110;
  }

  else
  {
  }

  v42 = *(v1 + 192);
  OUTLINED_FUNCTION_48_15((v1 + 168), v42);
  OUTLINED_FUNCTION_23();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_0_0();
  v48 = v47 - v46;
  (*(v44 + 16))(v47 - v46);
  v49 = OUTLINED_FUNCTION_19();
  v51 = sub_267E59398(v49, v50);
  (*(v44 + 8))(v48, v42);
  if (v51)
  {
    sub_267D239F0();
  }

  if (!*(v1 + 464))
  {
    sub_267D17188();
    if ((v56 & 1) == 0)
    {
      sub_267D14A00(2);
      v55 = v112;
      sub_267EF3FB8();
      goto LABEL_28;
    }

    v57 = sub_267EF89F8();
    v58 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_5_2(v58))
    {
      v59 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v59);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v57, v58, "#ShareThisFlow looking for ExpanseFlow..");
      OUTLINED_FUNCTION_26();
    }

    v111 = v8;
    v100 = v5;

    __swift_project_boxed_opaque_existential_0((v1 + 384), *(v1 + 408));
    v60 = *(v1 + 192);
    v61 = *(v1 + 200);
    OUTLINED_FUNCTION_48_15((v1 + 168), v60);
    OUTLINED_FUNCTION_23();
    MEMORY[0x28223BE20](v62);
    OUTLINED_FUNCTION_1_39();
    v63 = OUTLINED_FUNCTION_13_24();
    v64(v63);
    (*(v61 + 8))(v60, v61);
    v65 = OUTLINED_FUNCTION_108();
    v66(v65);
    sub_267EF4B88();
    (*(v103 + 8))(v101, v105);
    sub_267EF85F8();
    (*(v108 + 8))(v107, v109);
    v67 = sub_267EF3778();
    (*(v104 + 8))(v102, v106);
    v68 = v6;
    if (v67)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AF40, &qword_267F042D8);
      sub_267EF33C8();

      v69 = v3;
      if (*(&v116 + 1))
      {
        sub_267B9A5E8(&v115, v118);
        sub_267B9AFEC(v118, &v115);
        v70 = sub_267EF89F8();
        v71 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v71))
        {
          v72 = OUTLINED_FUNCTION_48();
          v73 = OUTLINED_FUNCTION_52();
          v114 = v73;
          *v72 = 136315138;
          sub_267B9AFEC(&v115, &v113);
          v74 = sub_267EF9098();
          v76 = v75;
          __swift_destroy_boxed_opaque_existential_0(&v115);
          v77 = sub_267BA33E8(v74, v76, &v114);

          *(v72 + 4) = v77;
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v78, v79, v80, v81, v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v73);
          OUTLINED_FUNCTION_18_2();
          OUTLINED_FUNCTION_26();
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(&v115);
        }

        __swift_project_boxed_opaque_existential_0(v118, v118[3]);

        sub_267EF3FC8();

        v100(v112);
        (*(v111 + 8))(v112, v68);
        __swift_destroy_boxed_opaque_existential_0(v118);
        goto LABEL_29;
      }
    }

    else
    {
      v117 = 0;
      v115 = 0u;
      v116 = 0u;
      v69 = v3;
    }

    sub_267B9F98C(&v115, &qword_28022AF38, &qword_267F042D0);
    OUTLINED_FUNCTION_48_15((v1 + 168), *(v1 + 192));
    OUTLINED_FUNCTION_23();
    v86 = v85;
    MEMORY[0x28223BE20](v87);
    OUTLINED_FUNCTION_1_39();
    (*(v86 + 16))(v67);
    v88 = OUTLINED_FUNCTION_26_0();
    v90 = v89(v88);
    v91 = OUTLINED_FUNCTION_66();
    v92(v91);
    if (v90)
    {
      v93 = *(v1 + 56);
      v94 = *(v1 + 65);
      *(v1 + 56) = 1;
      v95 = *(v1 + 64);
      *(v1 + 64) = 0;
      sub_267D240BC(v93, v95, v94);
      OUTLINED_FUNCTION_94();
      v96 = swift_allocObject();
      v96[2] = v1;
      v96[3] = v100;
      v96[4] = v69;

      v97 = OUTLINED_FUNCTION_10_5();
      sub_267D21690(v97, v98, 1, v99, v96);
    }

    else
    {
      sub_267D14A00(2);
      sub_267EF3FB8();
      v100(v112);
      (*(v8 + 8))(v112, v6);
    }

    goto LABEL_29;
  }

  if (*(v1 + 464) == 1)
  {
    v52 = *(v1 + 56);
    v53 = *(v1 + 65);
    *(v1 + 56) = 2;
    v54 = *(v1 + 64);
    *(v1 + 64) = 0;
    sub_267D240BC(v52, v54, v53);
    v55 = v112;
    sub_267EF4018();
LABEL_28:
    v5(v55);
    v83 = OUTLINED_FUNCTION_3();
    v84(v83);
    goto LABEL_29;
  }

  sub_267D15AF0();
LABEL_29:
  OUTLINED_FUNCTION_47();
}

void sub_267D157B8(uint64_t a1)
{
  v2 = sub_267EF8628();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v26 = *(v3 + 16);
  v26(v8, a1, v2);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = a1;
    v13 = v12;
    v23 = swift_slowAlloc();
    v27 = v23;
    *v13 = 136315138;
    sub_267D2483C(&qword_28022AF48, MEMORY[0x277D55D58], MEMORY[0x277D55D60]);
    v14 = sub_267EF9E58();
    v24 = v6;
    v16 = v15;
    (*(v3 + 8))(v8, v2);
    v17 = sub_267BA33E8(v14, v16, &v27);
    v6 = v24;

    *(v13 + 4) = v17;
    _os_log_impl(&dword_267B93000, v10, v11, "#ShareThisFlow ExpanseFlow returned result=%s", v13, 0xCu);
    v18 = v23;
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x26D60A7B0](v18, -1, -1);
    v19 = v13;
    a1 = v25;
    MEMORY[0x26D60A7B0](v19, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }

  v26(v6, a1, v2);
  v20 = (*(v3 + 88))(v6, v2);
  if (v20 == *MEMORY[0x277D55D48])
  {
    v21 = 1;
LABEL_10:
    sub_267D14A00(v21);
    return;
  }

  if (v20 == *MEMORY[0x277D55D50])
  {
    v21 = 2;
    goto LABEL_10;
  }

  sub_267EF9E98();
  __break(1u);
}

void sub_267D15AF0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v78 = *v0;
  sub_267EF4028();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v11);
  v77 = &v76 - v12;
  v13 = v0[24];
  v14 = v0[25];
  OUTLINED_FUNCTION_48_15(v0 + 21, v13);
  OUTLINED_FUNCTION_23();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_39();
  (*(v16 + 16))(v0);
  LOBYTE(v14) = (*(v14 + 344))(v13, v14);
  (*(v16 + 8))(v0, v13);
  if ((v14 & 1) == 0)
  {
    v76 = v3;
    v26 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v27 = OUTLINED_FUNCTION_61_2();
    v28(v27, v26);
    __swift_project_boxed_opaque_existential_0(v79, v80);
    v29 = sub_267DBF8D8();
    __swift_destroy_boxed_opaque_existential_0(v79);
    if ((v29 & 1) == 0)
    {
      v53 = OUTLINED_FUNCTION_81_6();
      v54 = OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v53);
      *v55 = 0xD00000000000002BLL;
      v55[1] = v29;
      OUTLINED_FUNCTION_2_34(v54);
      sub_267EF4018();
      v5(v9);
      v56 = OUTLINED_FUNCTION_95_0();
      v57(v56);
      goto LABEL_27;
    }

    __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
    v30 = OUTLINED_FUNCTION_4_1();
    v31(v30);
    __swift_project_boxed_opaque_existential_0(v79, v80);
    OUTLINED_FUNCTION_4_1();
    if (sub_267EF3C48())
    {
      v33 = v1[24];
      v32 = v1[25];
      OUTLINED_FUNCTION_48_15(v1 + 21, v33);
      OUTLINED_FUNCTION_23();
      v35 = v34;
      MEMORY[0x28223BE20](v36);
      OUTLINED_FUNCTION_0_0();
      (*(v35 + 16))(v38 - v37);
      LOBYTE(v32) = sub_267E59398(v33, v32);
      v39 = OUTLINED_FUNCTION_95_0();
      v40(v39);
      __swift_destroy_boxed_opaque_existential_0(v79);
      if ((v32 & 1) == 0)
      {
        v41 = v76;
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v42 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v42, qword_280240FB0);
        v43 = sub_267EF89F8();
        v44 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_5_2(v44))
        {
          *OUTLINED_FUNCTION_32() = 0;
          OUTLINED_FUNCTION_30_11();
          _os_log_impl(v45, v46, v47, v48, v49, 2u);
          OUTLINED_FUNCTION_18_2();
        }

        v50 = OUTLINED_FUNCTION_81_6();
        v51 = OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v50);
        *v52 = 0xD000000000000029;
        v52[1] = v43;
        OUTLINED_FUNCTION_2_34(v51);
        OUTLINED_FUNCTION_94();
        v21 = swift_allocObject();
        v21[2] = v1;
        v21[3] = v5;
        v21[4] = v41;

        v24 = sub_267D24778;
        v23 = 0x8000000267F0F930;
        v22 = 0xD000000000000014;
        v25 = 0;
        goto LABEL_3;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v79);
    }

    sub_267B9AFEC((v1 + 21), v79);
    __swift_project_boxed_opaque_existential_0(v79, v80);
    v58 = OUTLINED_FUNCTION_4_1();
    v60 = v59(v58);
    if (v60 == 17)
    {
      __swift_destroy_boxed_opaque_existential_0(v79);
      v61 = v76;
    }

    else
    {
      if (sub_267D6CFAC(v60) == 0x68736E6565726373 && v62 == 0xEA0000000000746FLL)
      {

        __swift_destroy_boxed_opaque_existential_0(v79);
        v61 = v76;
      }

      else
      {
        v64 = sub_267EF9EA8();

        __swift_destroy_boxed_opaque_existential_0(v79);
        v61 = v76;
        if ((v64 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      *(v1 + 208) = 1;
    }

LABEL_25:
    if (*(v1 + 208) == 1)
    {
      v65 = OUTLINED_FUNCTION_54_0();
      sub_267D22594(v65, v66);
      goto LABEL_27;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v67 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v67, qword_280240FB0);
    v68 = sub_267EF89F8();
    v69 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_5_2(v69))
    {
      v70 = OUTLINED_FUNCTION_32();
      *v70 = 0;
      _os_log_impl(&dword_267B93000, v68, v69, "#ShareThisFlow fetching foregroundApp", v70, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v71 = sub_267EF93F8();
    OUTLINED_FUNCTION_79_5(v77, v72, v73, v71);
    v74 = swift_allocObject();
    v74[2] = 0;
    v74[3] = 0;
    v74[4] = v1;
    v74[5] = v5;
    v75 = v78;
    v74[6] = v61;
    v74[7] = v75;

    OUTLINED_FUNCTION_10_5();
    sub_267E8FA18();
    goto LABEL_4;
  }

  v18 = v0[7];
  v19 = *(v0 + 65);
  v0[7] = 1;
  v20 = *(v0 + 64);
  *(v0 + 32) = 0;
  sub_267D240BC(v18, v20, v19);
  OUTLINED_FUNCTION_94();
  v21 = swift_allocObject();
  v21[2] = v0;
  v21[3] = v5;
  v21[4] = v3;

  v22 = OUTLINED_FUNCTION_10_5();
  v25 = 1;
LABEL_3:
  sub_267D21690(v22, v23, v25, v24, v21);
LABEL_4:

LABEL_27:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267D16210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = sub_267EF4028();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D1630C, 0, 0);
}

uint64_t sub_267D1630C()
{
  OUTLINED_FUNCTION_12();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_267D163C0;
  v2 = *(v0 + 96);

  return sub_267C901FC(sub_267D24784, v2);
}

uint64_t sub_267D163C0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267D164A8()
{
  v2 = *(v1 + 160);
  if (v2)
  {
    result = sub_267D245B4(v2);
    if (result)
    {
      v1 = result;
      v4 = sub_267BAF0DC(result);
      v5 = 0;
      v37 = v1 & 0xC000000000000001;
LABEL_4:
      if (v5 == v4)
      {

        v6 = 0;
        v0 = 0;
LABEL_22:
        v1 = v36;
        goto LABEL_24;
      }

      v6 = v1 & 0xC000000000000001;
      sub_267BBD0EC(v5, v37 == 0, v1);
      if (v37)
      {
        v7 = MEMORY[0x26D609870](v5, v1);
      }

      else
      {
        v7 = *(v1 + 32 + 8 * v5);
      }

      v8 = v7;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (qword_280228740 != -1)
      {
        swift_once();
      }

      v10 = qword_280240AA0;
      result = sub_267D24554(v8);
      if (v11)
      {
        v12 = v11;
        if (*(v10 + 16))
        {
          v13 = result;
          sub_267EF9FC8();
          sub_267EF9128();
          v14 = sub_267EFA018();
          v0 = ~(-1 << *(v10 + 32));
          while (1)
          {
            v15 = v14 & v0;
            if (((*(v10 + 56 + (((v14 & v0) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v0)) & 1) == 0)
            {
              break;
            }

            v16 = (*(v10 + 48) + 16 * v15);
            if (*v16 != v13 || v12 != v16[1])
            {
              v18 = sub_267EF9EA8();
              v14 = v15 + 1;
              if ((v18 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_4;
          }
        }

        v6 = sub_267D244E8(v8);
        v0 = v19;
        goto LABEL_22;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v6 = 0;
  v0 = 0;
LABEL_24:
  *(v1 + 168) = v6;
  *(v1 + 176) = v0;
  if (qword_280228818 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v20 = sub_267EF8A08();
  *(v1 + 184) = OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);

  v21 = sub_267EF89F8();
  v22 = sub_267EF95C8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_48();
    v38 = OUTLINED_FUNCTION_52();
    *v23 = 136380675;

    v24 = OUTLINED_FUNCTION_61_4();
    v27 = sub_267BA33E8(v24, v25, v26);

    *(v23 + 4) = v27;
    OUTLINED_FUNCTION_30_11();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_18_2();
  }

  v33 = *(v1 + 96);
  v34 = swift_task_alloc();
  *(v1 + 192) = v34;
  v34[2] = v33;
  v34[3] = v6;
  v34[4] = v0;
  v35 = swift_task_alloc();
  *(v1 + 200) = v35;
  *v35 = v1;
  v35[1] = sub_267D16864;

  return sub_267C9C118(sub_267D2478C, v34);
}

uint64_t sub_267D16864()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  *(v2 + 208) = v1;
  *(v2 + 216) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_267D16974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_41();
  v16 = v15[26];
  sub_267B9AFEC(v15[12] + 168, (v15 + 2));
  __swift_project_boxed_opaque_existential_0(v15 + 2, v15[5]);
  v17 = OUTLINED_FUNCTION_26_0();
  v19 = v18(v17);
  v21 = v20;
  __swift_destroy_boxed_opaque_existential_0(v15 + 2);
  v22 = sub_267BAF0DC(v16);
  if (!v22)
  {
    v43 = v15[20];

    OUTLINED_FUNCTION_3();
    sub_267D20DF0();

LABEL_14:

LABEL_44:

    OUTLINED_FUNCTION_15();

    v91(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, *(&a11 + 1), a12, a13, a14, a15);
    return;
  }

  v23 = v22;
  a9 = v19;
  *&a11 = v21;

  v24 = sub_267EF89F8();
  v25 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_5_2(v25))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_64_4();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    OUTLINED_FUNCTION_45_2();
  }

  v31 = v15[26];

  v32 = 0;
  v33 = v31 & 0xC000000000000001;
  v34 = v31 & 0xFFFFFFFFFFFFFF8;
  a10 = v31;
  v35 = v31 + 32;
  while (1)
  {
    if (v23 == v32)
    {
      v44 = 0;
      while (v23 != v44)
      {
        if (v33)
        {
          v45 = MEMORY[0x26D609870](v44, v15[26]);
        }

        else
        {
          if (v44 >= *(v34 + 16))
          {
            goto LABEL_50;
          }

          v45 = *(v35 + 8 * v44);
        }

        v46 = v45;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_49;
        }

        sub_267D140CC(&unk_28022AD50);
        v48 = v47;

        ++v44;
        if (v48)
        {
          v56 = v15;

          v57 = sub_267EF89F8();
          sub_267EF95D8();
          OUTLINED_FUNCTION_64();
          if (os_log_type_enabled(v57, v58))
          {
            v60 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v60);
            v54 = "#ShareThisFlow.execute sharing a string value from ContextKit for both 1p and 3p sirikit apps";
            goto LABEL_42;
          }

          goto LABEL_43;
        }
      }

      v56 = v15;
      v15[10] = &type metadata for Features;
      v15[11] = sub_267BAFCAC();
      *(v15 + 56) = 16;
      v55 = sub_267EF5128();
      __swift_destroy_boxed_opaque_existential_0(v15 + 7);
      if ((v55 & 1) == 0)
      {
        if (!a11)
        {
LABEL_40:
          v57 = sub_267EF89F8();
          sub_267EF95D8();
          OUTLINED_FUNCTION_64();
          if (!os_log_type_enabled(v57, v79))
          {
            goto LABEL_43;
          }

          v80 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v80);
          v54 = "#ShareThisFlow.execute attachment is file for 1p app, returning success";
          goto LABEL_42;
        }

        if (a9 != 0xD000000000000013 || a11 != 0x8000000267F10280)
        {
          v62 = OUTLINED_FUNCTION_80_3(a9, a11);

          if ((v62 & 1) == 0)
          {

            v63 = sub_267EF89F8();
            v64 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_36(v64))
            {
              v65 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_42(v65);
              OUTLINED_FUNCTION_64_1();
              _os_log_impl(v66, v67, v68, v69, v70, 2u);
              OUTLINED_FUNCTION_26();
            }

            v43 = v15[20];
            v71 = v56[14];
            a11 = *(v56 + 6);

            v72 = sub_267C266B0();
            v73 = OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v72);
            *v74 = 0xD000000000000052;
            v74[1] = 0x8000000267F17790;
            OUTLINED_FUNCTION_2_34(v73);
            OUTLINED_FUNCTION_94();
            v75 = swift_allocObject();
            *(v75 + 16) = a11;
            *(v75 + 32) = v71;

            v76 = OUTLINED_FUNCTION_10_5();
            sub_267D21690(v76, v77, 0, v78, v75);

            goto LABEL_14;
          }

          goto LABEL_40;
        }
      }

      goto LABEL_40;
    }

    if (v33)
    {
      v36 = MEMORY[0x26D609870](v32, v15[26]);
    }

    else
    {
      if (v32 >= *(v34 + 16))
      {
        goto LABEL_48;
      }

      v36 = *(v35 + 8 * v32);
    }

    v37 = v36;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    v38 = [v36 sharedLink];
    if (v38)
    {
      v49 = v38;
      v56 = v15;
      v50 = v15[18];

      sub_267EF2B48();

      v51 = sub_267EF2BA8();
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
      sub_267B9F98C(v50, &qword_280229E20, &unk_267EFDCC0);
      v57 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_64();
      if (!os_log_type_enabled(v57, v52))
      {
LABEL_43:
        v81 = v56[20];
        v82 = v56[17];
        v84 = v56[12];
        v83 = v56[13];

        v85 = *(v84 + 56);
        v86 = *(v84 + 65);
        *(v84 + 56) = a10;
        v87 = *(v84 + 64);
        *(v84 + 64) = 0;
        sub_267D240BC(v85, v87, v86);
        sub_267EF4018();
        v83(v82);

        v88 = OUTLINED_FUNCTION_26_0();
        v89(v88);
        goto LABEL_44;
      }

      v53 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v53);
      v54 = "#ShareThisFlow.execute sharing a link, allowing both 1p and 3p sirikit apps";
LABEL_42:
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v57, v35, v54);
      OUTLINED_FUNCTION_26();
      goto LABEL_43;
    }

    v39 = v15[18];

    v40 = sub_267EF2BA8();
    OUTLINED_FUNCTION_79_5(v39, v41, v42, v40);
    sub_267B9F98C(v39, &qword_280229E20, &unk_267EFDCC0);
    ++v32;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_267D16F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  v15 = v14[24];

  v16 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v18);
    OUTLINED_FUNCTION_48_3(&dword_267B93000, v16, v15, "#ShareThisFlow error executing fetchSharingAttachments");
    OUTLINED_FUNCTION_26();
  }

  v19 = v14[27];
  v21 = v14[16];
  v20 = v14[17];
  v37 = v14[20];
  v38 = v14[15];
  v23 = v14[12];
  v22 = v14[13];

  v24 = *(v23 + 56);
  v25 = *(v23 + 65);
  *(v23 + 56) = v19;
  v26 = *(v23 + 64);
  *(v23 + 64) = 256;
  v27 = v19;
  sub_267D240BC(v24, v26, v25);
  sub_267EF4018();
  v22(v20);

  (*(v21 + 8))(v20, v38);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v38, a12, a13, a14);
}

uint64_t sub_267D17070(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a3[19];
  v8 = a3[20];
  __swift_project_boxed_opaque_existential_0(a3 + 16, v7);

  sub_267C0BC60(sub_267C36688, v6, v7, v8);
}

uint64_t sub_267D1711C(void (*a1)(uint64_t *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{

  return sub_267D17B0C(a4, a5, a3, a1, a2);
}

void sub_267D17188()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v102[3] = &type metadata for Features;
  v102[4] = sub_267BAFCAC();
  LOBYTE(v102[0]) = 1;
  v2 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(v102);
  if ((v2 & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v11 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v11, qword_280240FB0);
    v12 = sub_267EF89F8();
    v13 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_36(v13))
    {
      goto LABEL_14;
    }

LABEL_13:
    v32 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v32);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v33, v34, v35, v36, v37, 2u);
    OUTLINED_FUNCTION_26();
LABEL_14:

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_39();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_54_0();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_108();
  v10(v9);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_14_22();
    OUTLINED_FUNCTION_23();
    MEMORY[0x28223BE20](v14);
    OUTLINED_FUNCTION_1_39();
    v15 = OUTLINED_FUNCTION_13_24();
    v16(v15);
    v17 = OUTLINED_FUNCTION_54_0();
    v19 = v18(v17);
    v20 = OUTLINED_FUNCTION_108();
    v21(v20);
    if ((v19 & 1) == 0)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v46 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v46, qword_280240FB0);

      v47 = sub_267EF89F8();
      v48 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_101_3(v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 67240448;
        OUTLINED_FUNCTION_48_15(v1 + 21, v1[24]);
        OUTLINED_FUNCTION_23();
        MEMORY[0x28223BE20](v50);
        OUTLINED_FUNCTION_1_39();
        v51 = OUTLINED_FUNCTION_15_18();
        v52(v51);
        v53 = OUTLINED_FUNCTION_63();
        v54(v53);
        v55 = OUTLINED_FUNCTION_16_16();
        v56(v55);
        OUTLINED_FUNCTION_86_4();
        *(v49 + 4) = v57;
        *(v49 + 8) = 1026;
        OUTLINED_FUNCTION_48_15(v1 + 21, v1[24]);
        OUTLINED_FUNCTION_23();
        MEMORY[0x28223BE20](v58);
        OUTLINED_FUNCTION_1_39();
        v59 = OUTLINED_FUNCTION_15_18();
        v60(v59);
        v61 = OUTLINED_FUNCTION_63();
        v62(v61);
        v63 = OUTLINED_FUNCTION_16_16();
        v64(v63);
        OUTLINED_FUNCTION_86_4();
        *(v49 + 10) = v65;

        OUTLINED_FUNCTION_97_6(&dword_267B93000, v66, v67, "#ShareThisFlow #shouldRouteToExpanse isShareRequest=%{BOOL,public}d, isUnshareRequest=%{BOOL,public}d => shouldRouteToExpanse=false");
        OUTLINED_FUNCTION_29_1();

        goto LABEL_15;
      }

LABEL_27:

      goto LABEL_15;
    }
  }

  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_39();
  v23 = OUTLINED_FUNCTION_13_24();
  v24(v23);
  v25 = OUTLINED_FUNCTION_54_0();
  v27 = v26(v25);
  v28 = OUTLINED_FUNCTION_108();
  v29(v28);
  if (v27)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v30 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v30, qword_280240FB0);
    v12 = sub_267EF89F8();
    v31 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_36(v31))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_39();
  v39 = OUTLINED_FUNCTION_13_24();
  v40(v39);
  v41 = OUTLINED_FUNCTION_54_0();
  v43 = v42(v41);
  v44 = OUTLINED_FUNCTION_108();
  v45(v44);
  if (v43 & 1) != 0 || (OUTLINED_FUNCTION_14_22(), OUTLINED_FUNCTION_23(), MEMORY[0x28223BE20](v68), OUTLINED_FUNCTION_1_39(), v69 = OUTLINED_FUNCTION_13_24(), v70(v69), v71 = OUTLINED_FUNCTION_54_0(), v73 = v72(v71), v74 = OUTLINED_FUNCTION_108(), v75(v74), (v73))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v76 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v76, qword_280240FB0);

    v47 = sub_267EF89F8();
    v77 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_101_3(v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 67240448;
      OUTLINED_FUNCTION_48_15(v1 + 21, v1[24]);
      OUTLINED_FUNCTION_23();
      MEMORY[0x28223BE20](v79);
      OUTLINED_FUNCTION_1_39();
      v80 = OUTLINED_FUNCTION_15_18();
      v81(v80);
      v82 = OUTLINED_FUNCTION_63();
      v83(v82);
      v84 = OUTLINED_FUNCTION_16_16();
      v85(v84);
      OUTLINED_FUNCTION_86_4();
      *(v78 + 4) = v86;
      *(v78 + 8) = 1026;
      OUTLINED_FUNCTION_48_15(v1 + 21, v1[24]);
      OUTLINED_FUNCTION_23();
      MEMORY[0x28223BE20](v87);
      OUTLINED_FUNCTION_1_39();
      v88 = OUTLINED_FUNCTION_15_18();
      v89(v88);
      v90 = OUTLINED_FUNCTION_63();
      v91(v90);
      v92 = OUTLINED_FUNCTION_16_16();
      v93(v92);
      OUTLINED_FUNCTION_86_4();
      *(v78 + 10) = v94;

      OUTLINED_FUNCTION_97_6(&dword_267B93000, v95, v96, "#ShareThisFlow #shouldRouteToExpanse isExplicitShareInCallIntent=%{BOOL,public}d, isOnlySupportedInCall=%{BOOL,public}d => shouldRouteToExpanse=true");
      OUTLINED_FUNCTION_29_1();

      goto LABEL_15;
    }

    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_0(v1 + 53, v1[56]);
  v97 = sub_267EF8638();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v98 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v98, qword_280240FB0);
  v99 = sub_267EF89F8();
  v100 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_5_2(v100))
  {
    v101 = swift_slowAlloc();
    *v101 = 67240448;
    *(v101 + 4) = v97 & 1;
    *(v101 + 8) = 1026;
    *(v101 + 10) = v97 & 1;
    _os_log_impl(&dword_267B93000, v99, v100, "#ShareThisFlow #shouldRouteToExpanse isScreenShareSupportingCallSalient=%{BOOL,public}d => shouldRouteToExpanse=%{BOOL,public}d", v101, 0xEu);
    OUTLINED_FUNCTION_32_0();
  }

LABEL_15:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267D17B0C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v155 = a2;
  v154 = a1;
  v8 = sub_267EF5778();
  v144 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v148 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEF8, &qword_267F042B8);
  MEMORY[0x28223BE20](v151);
  v156 = &v129 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AF00, &unk_267F042C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v150 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v157 = &v129 - v15;
  MEMORY[0x28223BE20](v14);
  v149 = &v129 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AF08, &unk_267F09620);
  MEMORY[0x28223BE20](v17 - 8);
  v145 = &v129 - v18;
  v146 = sub_267EF6288();
  v143 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v142 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_267EF57C8();
  v152 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v158 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  MEMORY[0x28223BE20](v21 - 8);
  v147 = &v129 - v22;
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;

  v24 = a3[5];
  v25 = a3[6];
  __swift_project_boxed_opaque_existential_0(a3 + 2, v24);
  v26 = *(v25 + 8);
  swift_retain_n();
  v26(&v163, v24, v25);
  __swift_project_boxed_opaque_existential_0(&v163, v165);
  v27 = sub_267DBF8D8();
  __swift_destroy_boxed_opaque_existential_0(&v163);
  v28 = MEMORY[0x277D84F90];
  if ((v27 & 1) == 0)
  {
    v163 = MEMORY[0x277D84F90];
    LOBYTE(v164) = 0;
    a4(&v163);

    goto LABEL_69;
  }

  v140 = a4;
  v141 = v23;
  v153 = a5;
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  v31 = a3[24];
  v30 = a3[25];
  v32 = __swift_project_boxed_opaque_existential_0(a3 + 21, v31);
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v35);
  LOBYTE(v30) = sub_267E59398(v31, v30);
  (*(v33 + 8))(v35, v31);
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A60, &qword_267EFEED8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267EFC020;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x8000000267F177F0;
    v163 = v154;
    v164 = v155;
    MEMORY[0x28223BE20](inited);
    *(&v129 - 2) = &v163;
    v37 = sub_267C9B19C();
    swift_setDeallocating();
    sub_267DB70E8();
    if (v37)
    {
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v38 = sub_267EF8A08();
      __swift_project_value_buffer(v38, qword_280240FB0);
      v39 = sub_267EF89F8();
      v40 = sub_267EF95C8();
      v41 = os_log_type_enabled(v39, v40);
      v42 = v141;
      if (v41)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_267B93000, v39, v40, "#ShareThisFlow calling WFOnScreenContentService to get on-screen context for playing content from selected 3rd party app", v43, 2u);
        MEMORY[0x26D60A7B0](v43, -1, -1);
      }

      v44 = a3[5];
      v45 = a3[6];
      __swift_project_boxed_opaque_existential_0(a3 + 2, v44);
      (*(v45 + 8))(&v163, v44, v45);
      __swift_project_boxed_opaque_existential_0(&v163, v165);
      v46 = sub_267EF3C28();
      __swift_destroy_boxed_opaque_existential_0(&v163);
      if (v46)
      {
        v163 = v28;
        LOBYTE(v164) = 0;
        v140(&v163);

        goto LABEL_69;
      }

      sub_267D1C848(sub_267BE9C54, v42);
      goto LABEL_67;
    }
  }

  v48 = a3[24];
  v47 = a3[25];
  v49 = __swift_project_boxed_opaque_existential_0(a3 + 21, v48);
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v49);
  v52 = &v129 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v50 + 16))(v52);
  LOBYTE(v47) = sub_267E59398(v48, v47);
  (*(v50 + 8))(v52, v48);
  if ((v47 & 1) != 0 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A60, &qword_267EFEED8), v53 = swift_initStackObject(), *(v53 + 16) = xmmword_267EFCC90, *(v53 + 32) = xmmword_267F03EF0, *(v53 + 48) = 0xD000000000000012, *(v53 + 56) = 0x8000000267F105C0, v163 = v154, v164 = v155, MEMORY[0x28223BE20](v53), *(&v129 - 2) = &v163, v54 = sub_267C9B19C(), swift_setDeallocating(), sub_267DB70E8(), v55 = v153, v54))
  {
    v56 = v29;
    if (qword_280228818 != -1)
    {
      goto LABEL_81;
    }

    goto LABEL_14;
  }

  sub_267BB170C((a3 + 43), &v161, &unk_28022ADE0, &qword_267F0AA60);
  if (v162)
  {
    sub_267B9A5E8(&v161, &v163);
    sub_267EF6628();
    swift_allocObject();
    sub_267EF6618();
    v64 = MEMORY[0x26D6059D0]();

    if (v64)
    {
      __swift_project_boxed_opaque_existential_0(&v163, v165);
      v65 = a3[5];
      v66 = a3[6];
      v155 = v64;
      __swift_project_boxed_opaque_existential_0(a3 + 2, v65);
      (*(v66 + 8))(&v161, v65, v66);
      __swift_project_boxed_opaque_existential_0(&v161, v162);
      v67 = v147;
      v68 = v155;
      sub_267EF3B68();
      v154 = sub_267EF2E38();
      __swift_storeEnumTagSinglePayload(v67, 0, 1, v154);
      v69 = sub_267C8E0F4(v68, v67);
      sub_267B9F98C(v67, &unk_28022AF10, &unk_267F001E0);
      __swift_destroy_boxed_opaque_existential_0(&v161);
      if (v69)
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v70 = sub_267EF8A08();
        __swift_project_value_buffer(v70, qword_280240FB0);
        v71 = sub_267EF89F8();
        v72 = sub_267EF95D8();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_267B93000, v71, v72, "#ShareThisFlow found Siri generated string", v73, 2u);
          MEMORY[0x26D60A7B0](v73, -1, -1);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_267EFCA40;
        *(v74 + 32) = v69;
        v160 = v74;
        sub_267EF5E88();
        swift_allocObject();
        v75 = v69;
        sub_267EF5E78();
        v76 = MEMORY[0x26D6059D0]();

        if (v76)
        {
          __swift_project_boxed_opaque_existential_0(&v163, v165);
          v77 = a3[5];
          v78 = a3[6];
          __swift_project_boxed_opaque_existential_0(a3 + 2, v77);
          (*(v78 + 8))(&v161, v77, v78);
          __swift_project_boxed_opaque_existential_0(&v161, v162);
          v79 = v147;
          sub_267EF3B68();
          __swift_storeEnumTagSinglePayload(v79, 0, 1, v154);
          v80 = sub_267C8E0F4(v76, v79);
          sub_267B9F98C(v79, &unk_28022AF10, &unk_267F001E0);
          __swift_destroy_boxed_opaque_existential_0(&v161);
          if (v80)
          {
            v81 = sub_267EF89F8();
            v82 = sub_267EF95C8();
            v83 = os_log_type_enabled(v81, v82);
            v84 = v140;
            if (v83)
            {
              v85 = swift_slowAlloc();
              *v85 = 0;
              _os_log_impl(&dword_267B93000, v81, v82, "#ShareThisFlow found Siri generated image", v85, 2u);
              MEMORY[0x26D60A7B0](v85, -1, -1);
            }

            MEMORY[0x26D608F90]();
            if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_267EF9328();
            }

            sub_267EF9368();
            v74 = v160;

LABEL_78:
            *&v161 = v74;
            BYTE8(v161) = 0;
            v84(&v161);

            __swift_destroy_boxed_opaque_existential_0(&v163);

            goto LABEL_68;
          }
        }

        v126 = sub_267EF89F8();
        v127 = sub_267EF95D8();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          *v128 = 0;
          _os_log_impl(&dword_267B93000, v126, v127, "#ShareThisFlow: No Siri generated image found", v128, 2u);
          MEMORY[0x26D60A7B0](v128, -1, -1);
        }

        v84 = v140;
        goto LABEL_78;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v163);
  }

  else
  {
    sub_267B9F98C(&v161, &unk_28022ADE0, &qword_267F0AA60);
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v86 = sub_267EF8A08();
  v132 = __swift_project_value_buffer(v86, qword_280240FB0);
  v87 = sub_267EF89F8();
  v88 = sub_267EF95D8();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_267B93000, v87, v88, "#ShareThisFlow: no Siri generated content found", v89, 2u);
    MEMORY[0x26D60A7B0](v89, -1, -1);
  }

  sub_267B9AFEC((a3 + 21), &v163);
  v90 = v165;
  v91 = v166;
  __swift_project_boxed_opaque_existential_0(&v163, v165);
  v92 = (*(v91 + 448))(v90, v91);
  if (!sub_267BAF0DC(v92))
  {

    __swift_destroy_boxed_opaque_existential_0(&v163);
LABEL_58:
    v114 = v141;
    goto LABEL_64;
  }

  sub_267BBD0EC(0, (v92 & 0xC000000000000001) == 0, v92);
  if ((v92 & 0xC000000000000001) != 0)
  {
    v93 = MEMORY[0x26D609870](0, v92);
  }

  else
  {
    v93 = *(v92 + 32);
  }

  __swift_destroy_boxed_opaque_existential_0(&v163);

  v94 = sub_267EF5A08();

  if (!v94)
  {

    goto LABEL_58;
  }

  v130 = v93;
  v95 = sub_267EF5688();

  v155 = v95;
  v96 = *(v95 + 16);
  v97 = v149;
  if (!v96)
  {
LABEL_59:
    v115 = v29;

    if (!sub_267EF5EA8())
    {

      v116 = v145;
      __swift_storeEnumTagSinglePayload(v145, 1, 1, v146);
      v114 = v141;
      goto LABEL_63;
    }

    v116 = v145;
    sub_267EF6278();

    v117 = v146;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v116, 1, v146);
    v114 = v141;
    if (EnumTagSinglePayload == 1)
    {

LABEL_63:
      sub_267B9F98C(v116, &qword_28022AF08, &unk_267F09620);
      goto LABEL_64;
    }

    v123 = v143;
    v124 = v142;
    (*(v143 + 32))(v142, v116, v117);
    if (qword_280228748 != -1)
    {
      swift_once();
    }

    sub_267EE9A5C();
    if (v125)
    {

      sub_267D1FB88(v130, v124, a3, v115, v140, v55);

      (*(v123 + 8))(v124, v117);
LABEL_67:

LABEL_68:

      goto LABEL_69;
    }

    (*(v123 + 8))(v124, v117);

LABEL_64:
    v119 = sub_267EF89F8();
    v120 = sub_267EF95C8();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_267B93000, v119, v120, "#ShareThisFlow calling WFOnScreenContentService to get on-screen context", v121, 2u);
      MEMORY[0x26D60A7B0](v121, -1, -1);
    }

    sub_267D1C848(sub_267BE9C54, v114);
    goto LABEL_67;
  }

  v154 = v8;
  v98 = 0;
  v147 = (v155 + ((*(v152 + 80) + 32) & ~*(v152 + 80)));
  v138 = v152 + 16;
  v137 = *MEMORY[0x277D5E4C0];
  v136 = (v144 + 13);
  v131 = (v144 + 4);
  v133 = (v144 + 1);
  v144 = (v152 + 8);
  v134 = v96 - 1;
  v139 = v29;
  v135 = a3;
  while (1)
  {
    v56 = v158;
    if (v98 >= *(v155 + 16))
    {
      break;
    }

    v99 = v159;
    (*(v152 + 16))(v158, &v147[*(v152 + 72) * v98], v159);
    v100 = v97;
    sub_267EF5788();
    v101 = v157;
    v102 = v154;
    (*v136)(v157, v137, v154);
    __swift_storeEnumTagSinglePayload(v101, 0, 1, v102);
    v103 = *(v151 + 48);
    v104 = v156;
    sub_267BB170C(v100, v156, &qword_28022AF00, &unk_267F042C0);
    sub_267BB170C(v101, v104 + v103, &qword_28022AF00, &unk_267F042C0);
    if (__swift_getEnumTagSinglePayload(v104, 1, v102) == 1)
    {
      sub_267B9F98C(v101, &qword_28022AF00, &unk_267F042C0);
      sub_267B9F98C(v100, &qword_28022AF00, &unk_267F042C0);
      (*v144)(v56, v99);
      v105 = __swift_getEnumTagSinglePayload(v104 + v103, 1, v102);
      v97 = v100;
      v55 = v153;
      if (v105 == 1)
      {
        sub_267B9F98C(v104, &qword_28022AF00, &unk_267F042C0);
        v29 = v139;
        a3 = v135;
        goto LABEL_59;
      }

      goto LABEL_51;
    }

    v106 = v150;
    sub_267BB170C(v104, v150, &qword_28022AF00, &unk_267F042C0);
    v107 = __swift_getEnumTagSinglePayload(v104 + v103, 1, v102);
    v55 = v153;
    if (v107 == 1)
    {
      sub_267B9F98C(v157, &qword_28022AF00, &unk_267F042C0);
      v108 = v149;
      sub_267B9F98C(v149, &qword_28022AF00, &unk_267F042C0);
      (*v144)(v158, v159);
      v109 = v106;
      v97 = v108;
      (*v133)(v109, v102);
LABEL_51:
      sub_267B9F98C(v104, &qword_28022AEF8, &qword_267F042B8);
      v29 = v139;
      a3 = v135;
      if (v134 == v98)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }

    v110 = v148;
    (*v131)(v148, v104 + v103, v102);
    sub_267D2483C(&unk_28022AF20, MEMORY[0x277D5E4D8], MEMORY[0x277D5E4E0]);
    v111 = sub_267EF8FE8();
    v112 = *v133;
    (*v133)(v110, v102);
    sub_267B9F98C(v157, &qword_28022AF00, &unk_267F042C0);
    v113 = v149;
    sub_267B9F98C(v149, &qword_28022AF00, &unk_267F042C0);
    (*v144)(v158, v159);
    v112(v150, v102);
    v97 = v113;
    sub_267B9F98C(v156, &qword_28022AF00, &unk_267F042C0);
    v29 = v139;
    a3 = v135;
    if ((v111 & 1) != 0 || v134 == v98)
    {
      goto LABEL_59;
    }

LABEL_55:
    ++v98;
  }

  __break(1u);
LABEL_81:
  swift_once();
LABEL_14:
  v57 = sub_267EF8A08();
  __swift_project_value_buffer(v57, qword_280240FB0);
  v58 = sub_267EF89F8();
  v59 = sub_267EF95C8();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v141;
  if (v60)
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_267B93000, v58, v59, "#ShareThisFlow checking now playing queue for something to share", v62, 2u);
    MEMORY[0x26D60A7B0](v62, -1, -1);
  }

  v63 = swift_allocObject();
  v63[2] = v56;
  v63[3] = sub_267BE9C54;
  v63[4] = v61;

  sub_267D1F1DC(sub_267D247E4, v63);

LABEL_69:
}

uint64_t sub_267D193C8(void *a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  if (a1)
  {
    swift_beginAccess();
    v5 = a1;
    MEMORY[0x26D608F90]();
    sub_267BDECD0();
    sub_267EF9368();
    swift_endAccess();
  }

  swift_beginAccess();

  a3(v6, 0);
}

uint64_t sub_267D1949C(void *a1, uint64_t a2, void (*a3)(uint64_t *))
{
  if (a1)
  {
    v5 = qword_280228818;
    v6 = a1;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_267EF8A08();
    __swift_project_value_buffer(v7, qword_280240FB0);
    v8 = sub_267EF89F8();
    v9 = sub_267EF95D8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_267B93000, v8, v9, "#ShareThisFlow appending contextualScreenEntityAttachment", v10, 2u);
      MEMORY[0x26D60A7B0](v10, -1, -1);
    }

    v11 = swift_beginAccess();
    MEMORY[0x26D608F90](v11);
    sub_267BDECD0();
    sub_267EF9368();
    swift_endAccess();
  }

  swift_beginAccess();
  v13 = *(a2 + 16);
  v14 = 0;

  a3(&v13);
}

uint64_t sub_267D19638()
{
  OUTLINED_FUNCTION_12();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[3] = v5;
  v0[4] = v6;
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D196C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  v60 = *MEMORY[0x277D85DE8];
  v15 = *(v14 + 56);
  v16 = *(v14 + 64);
  v18 = *(v14 + 40);
  v17 = *(v14 + 48);
  objc_allocWithZone(MEMORY[0x277D23800]);

  v19 = sub_267D240D8(v18, v17, v15, v16);
  v20 = objc_opt_self();
  *(v14 + 16) = 0;
  v21 = [v20 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:v14 + 16];
  v22 = *(v14 + 16);
  if (v21)
  {
    v24 = *(v14 + 56);
    v23 = *(v14 + 64);
    v26 = *(v14 + 24);
    v25 = *(v14 + 32);
    sub_267EF2BE8();

    sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);

    v27 = OUTLINED_FUNCTION_26_0();
    sub_267CAB9F0(v27, v28);
    v29 = OUTLINED_FUNCTION_26_0();
    v32 = sub_267D199D0(v29, v30, v24, v23, 0xD000000000000025, v31);
    [objc_opt_self() attachmentWithFile_];
    v33 = v19;
    sub_267D14244(v19);

    sub_267D142A4(v26, v25, &unk_28022AD52);

    v34 = OUTLINED_FUNCTION_26_0();
    sub_267BBE0DC(v34, v35);
  }

  else
  {
    v36 = v22;
    v37 = sub_267EF2A78();

    swift_willThrow();
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v38 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);
    v39 = v37;
    v40 = sub_267EF89F8();
    v41 = sub_267EF95E8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_48();
      v43 = OUTLINED_FUNCTION_100_5();
      *v42 = 138412290;
      v44 = v37;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      OUTLINED_FUNCTION_52_8();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      sub_267B9F98C(v43, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_64_3();

  return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, v60, a12, a13, a14);
}

id sub_267D199D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_267EF2BB8();
  v10 = sub_267EF8FF8();

  if (a6)
  {
    v11 = sub_267EF8FF8();
  }

  else
  {
    v11 = 0;
  }

  v12 = [swift_getObjCClassFromMetadata() fileWithData:v9 filename:v10 typeIdentifier:v11];

  sub_267BBE0DC(a1, a2);
  return v12;
}

uint64_t sub_267D19AAC()
{
  v0 = sub_267EF5548();
  OUTLINED_FUNCTION_97(v0);
  sub_267EF5538();
  result = MEMORY[0x26D6059D0]();
  if (result)
  {
    v2 = result;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267D19AFC()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_267EF8A38();
  v1[5] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_50();
  v1[8] = swift_task_alloc();
  v5 = sub_267EF57C8();
  v1[9] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_50();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEE0, &qword_267F01FA0);
  OUTLINED_FUNCTION_18(v7);
  v1[15] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF8AE8();
  v1[16] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[17] = v9;
  v1[18] = OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267D19C94()
{
  v77 = v0;
  sub_267EF8A28();
  sub_267EF8AD8();
  v1 = OUTLINED_FUNCTION_26_0();
  v2(v1);
  sub_267EF54E8();
  sub_267EF5E08();

  v3 = v0[2];
  v0[19] = v3;
  if (v3)
  {
    v4 = v0[15];
    v5 = v0[9];

    v6 = sub_267EF5688();

    sub_267C8F478(v6, v4);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
    v8 = v0[15];
    if (EnumTagSinglePayload == 1)
    {

      sub_267B9F98C(v8, &qword_28022AEE0, &qword_267F01FA0);
    }

    else
    {
      sub_267EF5768();
      v0[20] = v27;
      v28 = OUTLINED_FUNCTION_73();
      v75 = v29;
      (v29)(v28);
      v74 = *(v6 + 16);
      if (v74)
      {
        v30 = 0;
        v31 = v0[10];
        v32 = v6 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
        do
        {
          if (v30 >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_45;
          }

          v33 = *(v31 + 72);
          v34 = *(v31 + 16);
          (v34)(v0[13], v32 + v33 * v30, v0[9]);
          v35 = sub_267EF57B8();
          if (v36)
          {
            if (v35 == 0x69746E655F707061 && v36 == 0xEF657079745F7974)
            {

LABEL_22:
              v41 = v0[14];
              v42 = v0[9];
              v73 = *(v0[10] + 32);
              (v73)(v41, v0[13], v42);
              sub_267EF57A8();
              v0[21] = v43;
              v75(v41, v42);
              v44 = 0;
              while (v44 < *(v6 + 16))
              {
                v45 = OUTLINED_FUNCTION_73();
                v34(v45);
                v46 = sub_267EF57B8();
                if (v47)
                {
                  if (v46 == 0x64695F6D657469 && v47 == 0xE700000000000000)
                  {

LABEL_41:

                    v69 = OUTLINED_FUNCTION_66();
                    v73(v69);
                    sub_267EF57A8();
                    v0[22] = v70;
                    v71 = OUTLINED_FUNCTION_73();
                    (v75)(v71);
                    v72 = swift_task_alloc();
                    v0[23] = v72;
                    *v72 = v0;
                    v72[1] = sub_267D1A41C;

                    return sub_267D19638();
                  }

                  v49 = sub_267EF9EA8();

                  if (v49)
                  {
                    goto LABEL_41;
                  }
                }

                ++v44;
                v75(v0[11], v0[9]);
                v32 += v33;
                if (v74 == v44)
                {

                  goto LABEL_32;
                }
              }

LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v38 = sub_267EF9EA8();

            if (v38)
            {
              goto LABEL_22;
            }
          }

          ++v30;
          v75(v0[13], v0[9]);
        }

        while (v74 != v30);

LABEL_32:
      }

      else
      {
      }
    }

    if (qword_280228818 != -1)
    {
LABEL_46:
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v50 = sub_267EF8A08();
    __swift_project_value_buffer(v50, qword_280240FB0);
    v51 = OUTLINED_FUNCTION_65_5();
    v52(v51);
    v53 = sub_267EF89F8();
    v54 = sub_267EF95E8();
    v55 = OUTLINED_FUNCTION_101_3(v54);
    v56 = v0[8];
    v58 = v0[5];
    v57 = v0[6];
    if (v55)
    {
      v59 = OUTLINED_FUNCTION_48();
      v60 = OUTLINED_FUNCTION_52();
      v76 = v60;
      *v59 = 136315138;
      OUTLINED_FUNCTION_7_25();
      sub_267D2483C(v61, v62, MEMORY[0x277D5FE10]);
      v63 = sub_267EF9E58();
      v65 = v64;
      (*(v57 + 8))(v56, v58);
      v66 = sub_267BA33E8(v63, v65, &v76);

      *(v59 + 4) = v66;
      _os_log_impl(&dword_267B93000, v53, v54, "#ShareThisFlow could not get properties from appEntity object %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      OUTLINED_FUNCTION_45_2();
      OUTLINED_FUNCTION_18_2();
    }

    else
    {

      (*(v57 + 8))(v56, v58);
    }
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v9 = sub_267EF8A08();
    __swift_project_value_buffer(v9, qword_280240FB0);
    v10 = OUTLINED_FUNCTION_108();
    v11(v10);
    v12 = sub_267EF89F8();
    v13 = sub_267EF95E8();
    v14 = OUTLINED_FUNCTION_78_7(v13);
    v15 = v0[7];
    if (v14)
    {
      v16 = OUTLINED_FUNCTION_48();
      v17 = OUTLINED_FUNCTION_52();
      v76 = v17;
      *v16 = 136315138;
      OUTLINED_FUNCTION_7_25();
      sub_267D2483C(v18, v19, MEMORY[0x277D5FE10]);
      sub_267EF9E58();
      v20 = OUTLINED_FUNCTION_73();
      v21(v20);
      v22 = OUTLINED_FUNCTION_61_4();
      sub_267BA33E8(v22, v23, v24);
      OUTLINED_FUNCTION_61_2();

      *(v16 + 4) = v15;
      OUTLINED_FUNCTION_17_3(&dword_267B93000, v25, v26, "#ShareThisFlow could not get appEntity from entity %s");
      __swift_destroy_boxed_opaque_existential_0(v17);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

      v39 = OUTLINED_FUNCTION_73();
      v40(v39);
    }
  }

  OUTLINED_FUNCTION_4_3();

  return v67(0);
}

uint64_t sub_267D1A41C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *(v6 + 192) = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D1A560()
{
  OUTLINED_FUNCTION_29();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 192);
    v7 = OUTLINED_FUNCTION_48();
    v8 = OUTLINED_FUNCTION_100_5();
    *v7 = 138412290;
    *(v7 + 4) = v3;
    *v8 = v6;
    v9 = v3;
    OUTLINED_FUNCTION_30_11();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_267B9F98C(v8, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_18_2();
  }

  else
  {
  }

  v15 = *(v0 + 192);

  OUTLINED_FUNCTION_4_3();

  return v16(v15);
}

uint64_t sub_267D1A714()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEC8, &qword_267F04288);
  OUTLINED_FUNCTION_18(v2);
  v1[3] = OUTLINED_FUNCTION_2();
  v3 = sub_267EF8A38();
  v1[4] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_50();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = sub_267EF8AF8();
  v1[9] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_50();
  v1[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AED0, &unk_267F04290);
  v1[13] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[14] = OUTLINED_FUNCTION_50();
  v1[15] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267D1A890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[14];
  v26 = v22[15];
  v27 = v22[2];
  sub_267D19AAC();
  v28 = sub_267EF8A58();
  OUTLINED_FUNCTION_97(v28);
  OUTLINED_FUNCTION_22_0();
  v22[16] = sub_267EF8A48();
  __swift_project_boxed_opaque_existential_0((v27 + 304), *(v27 + 328));
  sub_267EF8948();
  sub_267BB170C(v26, v25, &qword_28022AED0, &unk_267F04290);
  OUTLINED_FUNCTION_37_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v29 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);
    v30 = sub_267EF89F8();
    v31 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v31))
    {
      v32 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v32);
      OUTLINED_FUNCTION_52_8();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_29_1();
    }

    v38 = v22[14];

    v39 = OUTLINED_FUNCTION_19();
    sub_267B9F98C(v39, v40, &unk_267F04290);
    v41 = v38;
LABEL_7:
    sub_267B9F98C(v41, &qword_28022AED0, &unk_267F04290);
LABEL_8:

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_64_3();

    return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
  }

  (*(v22[10] + 32))(v22[12], v22[14], v22[9]);
  v51 = OUTLINED_FUNCTION_19();
  v52(v51);
  v53 = OUTLINED_FUNCTION_37_1();
  v55 = v54(v53);
  if (v55 == *MEMORY[0x277D5FEC0])
  {
    (*(v22[10] + 96))(v22[11], v22[9]);
    v56 = OUTLINED_FUNCTION_61_0();
    v57(v56);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v58 = sub_267EF8A08();
    __swift_project_value_buffer(v58, qword_280240FB0);
    v59 = OUTLINED_FUNCTION_61_0();
    v60(v59);
    v61 = sub_267EF89F8();
    v62 = sub_267EF95D8();
    v63 = OUTLINED_FUNCTION_78_7(v62);
    v64 = v22[7];
    v65 = v22[5];
    if (v63)
    {
      v66 = OUTLINED_FUNCTION_48();
      v119 = OUTLINED_FUNCTION_52();
      a11 = v119;
      *v66 = 136315138;
      OUTLINED_FUNCTION_7_25();
      sub_267D2483C(v67, v68, MEMORY[0x277D5FE10]);
      sub_267EF9E58();
      v71 = *(v65 + 8);
      v70 = v65 + 8;
      v69 = v71;
      v72 = OUTLINED_FUNCTION_73();
      v71(v72);
      v73 = OUTLINED_FUNCTION_61_4();
      sub_267BA33E8(v73, v74, v75);
      OUTLINED_FUNCTION_61_2();

      *(v66 + 4) = v64;
      OUTLINED_FUNCTION_17_3(&dword_267B93000, v76, v77, "#ShareThisFlow fetchAppEntityResults foundMatch with %s");
      __swift_destroy_boxed_opaque_existential_0(v119);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

      v99 = *(v65 + 8);
      v70 = v65 + 8;
      v69 = v99;
      v100 = OUTLINED_FUNCTION_73();
      v99(v100);
    }

    v22[17] = v70;
    v22[18] = v69;
    v101 = swift_task_alloc();
    v22[19] = v101;
    *v101 = v22;
    v101[1] = sub_267D1B02C;
  }

  else
  {
    if (v55 != *MEMORY[0x277D5FEC8])
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v103 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v103, qword_280240FB0);
      v104 = sub_267EF89F8();
      v105 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_5_2(v105))
      {
        v106 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v106);
        OUTLINED_FUNCTION_52_8();
        _os_log_impl(v107, v108, v109, v110, v111, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v112 = v22[15];
      v113 = v22[12];
      v114 = v22[9];
      v115 = v22[10];

      v116 = *(v115 + 8);
      v116(v113, v114);
      sub_267B9F98C(v112, &qword_28022AED0, &unk_267F04290);
      v117 = OUTLINED_FUNCTION_63();
      (v116)(v117);
      goto LABEL_8;
    }

    v78 = v22[11];
    (*(v22[10] + 96))(v78, v22[9]);
    v79 = *v78;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v80 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v80, qword_280240FB0);

    v81 = sub_267EF89F8();
    v82 = sub_267EF95D8();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = v22[4];
      v84 = OUTLINED_FUNCTION_48();
      v85 = OUTLINED_FUNCTION_52();
      a11 = v85;
      *v84 = 136315138;
      v86 = MEMORY[0x26D608FD0](v79, v83);
      v88 = sub_267BA33E8(v86, v87, &a11);

      *(v84 + 4) = v88;
      _os_log_impl(&dword_267B93000, v81, v82, "#ShareThisFlow fetchAppEntityResults found multiple matches with %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v85);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_45_2();
    }

    v90 = v22[3];
    v89 = v22[4];
    sub_267C8F038(v79, v90);

    if (__swift_getEnumTagSinglePayload(v90, 1, v89) == 1)
    {
      sub_267B9F98C(v22[3], &qword_28022AEC8, &qword_267F04288);
      v91 = sub_267EF89F8();
      v92 = sub_267EF95E8();
      v93 = OUTLINED_FUNCTION_101_3(v92);
      v94 = v22[15];
      v95 = v22[12];
      v96 = v22[9];
      v97 = v22[10];
      if (v93)
      {
        v98 = OUTLINED_FUNCTION_32();
        *v98 = 0;
        _os_log_impl(&dword_267B93000, v91, v92, "#ShareThisFlow foundMatchPlural: no elements in the multiple match RREntity candidates", v98, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      (*(v97 + 8))(v95, v96);
      v41 = v94;
      goto LABEL_7;
    }

    (*(v22[5] + 32))(v22[6], v22[3], v22[4]);
    v118 = swift_task_alloc();
    v22[21] = v118;
    *v118 = v22;
    v118[1] = sub_267D1B21C;
  }

  OUTLINED_FUNCTION_64_3();

  return sub_267D19AFC();
}

uint64_t sub_267D1B02C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267D1B114()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[8];
  v4 = v0[4];

  v1(v3, v4);
  v5 = OUTLINED_FUNCTION_26_0();
  v6(v5);
  sub_267B9F98C(v2, &qword_28022AED0, &unk_267F04290);
  v7 = v0[20];
  OUTLINED_FUNCTION_77_3();

  OUTLINED_FUNCTION_4_3();

  return v8(v7);
}

uint64_t sub_267D1B21C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267D1B304()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[15];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  (*(v3 + 8))(v2, v4);
  v5 = OUTLINED_FUNCTION_26_0();
  v6(v5);
  sub_267B9F98C(v1, &qword_28022AED0, &unk_267F04290);
  v7 = v0[22];
  OUTLINED_FUNCTION_77_3();

  OUTLINED_FUNCTION_4_3();

  return v8(v7);
}

uint64_t sub_267D1B40C()
{
  OUTLINED_FUNCTION_12();
  v1 = sub_267EF8818();
  v0[3] = v1;
  OUTLINED_FUNCTION_30_0(v1);
  v0[4] = v2;
  v0[5] = OUTLINED_FUNCTION_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v3);
  v0[6] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF2BA8();
  v0[7] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v0[8] = v5;
  v0[9] = OUTLINED_FUNCTION_50();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AE88, &unk_267F04258);
  OUTLINED_FUNCTION_18(v6);
  v0[13] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF8758();
  v0[14] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v0[15] = v8;
  v0[16] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF8858();
  v0[17] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v0[18] = v10;
  v0[19] = OUTLINED_FUNCTION_2();
  v11 = sub_267EF8838();
  v0[20] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v0[21] = v12;
  v0[22] = OUTLINED_FUNCTION_2();
  v13 = sub_267EF8878();
  v0[23] = v13;
  OUTLINED_FUNCTION_30_0(v13);
  v0[24] = v14;
  v0[25] = OUTLINED_FUNCTION_2();
  v15 = sub_267EF88D8();
  v0[26] = v15;
  OUTLINED_FUNCTION_30_0(v15);
  v0[27] = v16;
  v0[28] = OUTLINED_FUNCTION_2();
  v17 = sub_267EF8918();
  v0[29] = v17;
  OUTLINED_FUNCTION_30_0(v17);
  v0[30] = v18;
  v0[31] = OUTLINED_FUNCTION_2();
  v19 = sub_267EF8728();
  v0[32] = v19;
  OUTLINED_FUNCTION_30_0(v19);
  v0[33] = v20;
  v0[34] = OUTLINED_FUNCTION_50();
  v0[35] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_267D1B794()
{
  v1 = v0[33];
  v20 = v0[35];
  v21 = v0[32];
  v2 = sub_267EF88A8();
  OUTLINED_FUNCTION_97(v2);
  v0[36] = sub_267EF8898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AE90, &qword_267F00E10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_267EFC020;
  sub_267EF8788();
  sub_267EF8718();
  sub_267EF8908();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AE98, &qword_267F04268);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_267EFC020;
  sub_267EF88C8();
  v0[2] = v4;
  sub_267D2483C(&qword_28022AEA0, MEMORY[0x277D1D4E0], MEMORY[0x277D1D4F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEA8, &qword_267F04270);
  sub_267D2462C();
  sub_267EF99C8();
  sub_267EF88F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEB8, &qword_267F04278);
  v5 = sub_267EF88B8();
  OUTLINED_FUNCTION_58();
  v7 = v6;
  v9 = *(v8 + 72);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_267EFCC90;
  v12 = (v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEC0, &qword_267F04280);
  v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_267EFC020;
  (*(v1 + 16))(v14 + v13, v20, v21);
  sub_267E6F730();
  *v12 = v15;
  v16 = *(v7 + 104);
  v16(v12, *MEMORY[0x277D1D428], v5);
  *(v12 + v9) = v3;
  v16((v12 + v9), *MEMORY[0x277D1D438], v5);
  sub_267E6F564();
  sub_267EF88E8();
  v17 = swift_task_alloc();
  v0[37] = v17;
  *v17 = v0;
  v17[1] = sub_267D1BAF8;
  v18 = v0[31];

  return MEMORY[0x282176408](v18);
}

uint64_t sub_267D1BAF8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 304) = v4;
  *(v2 + 312) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_267D1BBF8()
{
  v129 = v0;
  v1 = v0[38];
  v127 = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[24];
    v125 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v5 = v0[21];
    v121 = (v5 + 96);
    v122 = (v5 + 8);
    v120 = (v0[18] + 32);
    v119 = (v0[15] + 32);
    v6 = v0[8];
    v116 = (v6 + 32);
    v115 = (v6 + 8);
    v7 = MEMORY[0x277D84F90];
    v114 = (v0[4] + 8);
    v124 = *MEMORY[0x277D1D360];
    v117 = v0[39];
    v118 = v0[38];
    v123 = *(v1 + 16);
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      (*(v4 + 16))(v0[25], v125 + *(v4 + 72) * v3, v0[23]);
      sub_267EF8868();
      v8 = OUTLINED_FUNCTION_65_5();
      v9(v8);
      v10 = OUTLINED_FUNCTION_63();
      v12 = v11(v10);
      v13 = v0[22];
      v14 = v0[20];
      if (v12 == v124)
      {
        break;
      }

      (*v122)(v0[22], v14);
LABEL_16:
      if (++v3 == v2)
      {
        v126 = v7;

        goto LABEL_35;
      }
    }

    v15 = v0[19];
    v16 = v0[17];
    v18 = v0[13];
    v17 = v0[14];
    (*v121)(v0[22], v14);
    (*v120)(v15, v13, v16);
    sub_267EF8848();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v17);
    v20 = v0[13];
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_74_4();
      v21();
      sub_267B9F98C(v20, &qword_28022AE88, &unk_267F04258);
    }

    else
    {
      (*v119)(v0[16], v0[13], v0[14]);
      v22 = sub_267EF8738();
      v23 = 0;
      v24 = 1 << *(v22 + 32);
      v25 = (v24 + 63) >> 6;
      v26 = 56;
      if (!v25)
      {
        goto LABEL_13;
      }

      while (1)
      {
        v27 = *(v22 + v26);
        if (v27)
        {
          break;
        }

        v23 -= 64;
        v26 += 8;
        if (!--v25)
        {
          goto LABEL_13;
        }
      }

      v28 = __clz(__rbit64(v27));
      if (v28 - v24 != v23)
      {
        sub_267C96230(v28 - v23, *(v22 + 36), v22, v0[34]);

        if (sub_267EF8748())
        {
          v37 = v0[6];
          v36 = v0[7];
          sub_267EF8708();
          if (__swift_getEnumTagSinglePayload(v37, 1, v36) == 1)
          {
            v38 = v0[16];
            v39 = v0[14];
            v110 = v0[6];

            OUTLINED_FUNCTION_84_3();
            v40 = OUTLINED_FUNCTION_65_5();
            v41(v40);
            OUTLINED_FUNCTION_72_6();
            v42(v38, v39);
            OUTLINED_FUNCTION_74_4();
            v43 = OUTLINED_FUNCTION_63();
            v44(v43);
            sub_267B9F98C(v110, &qword_280229E20, &unk_267EFDCC0);
          }

          else
          {
            v46 = v0[11];
            (*v116)(v0[12], v0[6], v0[7]);
            sub_267CF2988(v46);
            if (v117)
            {
              if (qword_280228818 != -1)
              {
                OUTLINED_FUNCTION_0_10();
                swift_once();
              }

              v47 = sub_267EF8A08();
              __swift_project_value_buffer(v47, qword_280240FB0);
              v48 = OUTLINED_FUNCTION_19();
              v49(v48);
              v50 = v117;
              v51 = sub_267EF89F8();
              v52 = sub_267EF95E8();

              v53 = os_log_type_enabled(v51, v52);
              v100 = v0[32];
              v102 = v0[34];
              v111 = v0[19];
              v106 = v0[16];
              v108 = v0[17];
              v104 = v0[14];
              v99 = v0[12];
              v54 = v0[7];
              if (v53)
              {
                v96 = v51;
                v55 = swift_slowAlloc();
                v95 = OUTLINED_FUNCTION_100_5();
                v97 = OUTLINED_FUNCTION_52();
                v128[0] = v97;
                *v55 = 136315394;
                sub_267D2483C(&qword_28022AE70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
                v56 = sub_267EF9E58();
                v94 = v52;
                v58 = v57;
                v98 = *v115;
                v59 = OUTLINED_FUNCTION_65_5();
                v60(v59);
                v61 = sub_267BA33E8(v56, v58, v128);

                *(v55 + 4) = v61;
                *(v55 + 12) = 2112;
                v62 = v117;
                v63 = _swift_stdlib_bridgeErrorToNSError();
                *(v55 + 14) = v63;
                *v95 = v63;
                _os_log_impl(&dword_267B93000, v96, v94, "#ShareThisFlow Cannot copy image file at %s. error %@", v55, 0x16u);
                sub_267B9F98C(v95, &unk_280229E30, &unk_267EFC270);
                OUTLINED_FUNCTION_29_1();
                __swift_destroy_boxed_opaque_existential_0(v97);
                OUTLINED_FUNCTION_29_1();
                OUTLINED_FUNCTION_26();

                (v98)(v99, v54);
              }

              else
              {

                v85 = *v115;
                v86 = OUTLINED_FUNCTION_65_5();
                v85(v86);
                (v85)(v99, v54);
              }

              OUTLINED_FUNCTION_84_3();
              v87(v102, v100);
              OUTLINED_FUNCTION_72_6();
              v88(v106, v104);
              OUTLINED_FUNCTION_74_4();
              v83 = v111;
              v84 = v108;
            }

            else
            {
              v64 = v0[5];
              v112 = v0[3];
              sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
              v65 = OUTLINED_FUNCTION_19();
              v66(v65);
              sub_267EF86F8();
              v68 = v67;
              sub_267EF87D8();
              v69 = sub_267EF8768();
              v71 = v70;
              (*v114)(v64, v112);
              v72 = OUTLINED_FUNCTION_37_1();
              v113 = sub_267E0C800(v72, v73, v68, v69, v71);
              v74 = [objc_opt_self() attachmentWithFile_];
              MEMORY[0x26D608F90]();
              if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_267EF9328();
              }

              v75 = v0[32];
              v107 = v0[17];
              v109 = v0[19];
              v105 = v0[16];
              v101 = v0[34];
              v103 = v0[14];
              v76 = v0[11];
              v77 = v0[12];
              v78 = v0[7];
              sub_267EF9368();
              v7 = v127;

              v79 = *v115;
              (*v115)(v76, v78);
              (v79)(v77, v78);
              OUTLINED_FUNCTION_84_3();
              v80(v101, v75);
              OUTLINED_FUNCTION_72_6();
              v81(v105, v103);
              OUTLINED_FUNCTION_74_4();
              v84 = v107;
              v83 = v109;
            }

            v82(v83, v84);
            v117 = 0;
          }

          v1 = v118;
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_84_3();
        v45();
        OUTLINED_FUNCTION_72_6();
        v32 = OUTLINED_FUNCTION_63();
      }

      else
      {
LABEL_13:
        v29 = v0[16];
        v30 = v0[14];

        OUTLINED_FUNCTION_72_6();
        v32 = v29;
        v33 = v30;
      }

      v31(v32, v33);
      OUTLINED_FUNCTION_74_4();
      v34 = OUTLINED_FUNCTION_65_5();
      v35(v34);
    }

LABEL_15:
    v2 = v123;
    goto LABEL_16;
  }

  v126 = MEMORY[0x277D84F90];
LABEL_35:

  v89 = OUTLINED_FUNCTION_37_1();
  v90(v89);
  v91 = OUTLINED_FUNCTION_66();
  v92(v91);
  OUTLINED_FUNCTION_41_11();

  OUTLINED_FUNCTION_4_3();

  v93(v126);
}

uint64_t sub_267D1C624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v17 = v16[39];
  v18 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
  v19 = v17;
  v20 = sub_267EF89F8();
  v21 = sub_267EF95E8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v16[39];
    v23 = OUTLINED_FUNCTION_48();
    v24 = OUTLINED_FUNCTION_100_5();
    *v23 = 138412290;
    v25 = v22;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    OUTLINED_FUNCTION_52_8();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    sub_267B9F98C(v24, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  v32 = v16[39];

  v33 = OUTLINED_FUNCTION_63();
  v34(v33);
  v35 = OUTLINED_FUNCTION_37_1();
  v36(v35);
  OUTLINED_FUNCTION_41_11();
  v48 = v38;
  v49 = v37;
  v50 = v16[9];
  v51 = v16[6];
  v52 = v16[5];

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_15();

  return v41(v39, v40, v41, v42, v43, v44, v45, v46, v48, v49, v50, v51, v52, a14, a15, a16);
}

uint64_t sub_267D1C848(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = sub_267EF93F8();
  OUTLINED_FUNCTION_79_5(v8, v10, v11, v9);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;
  v12[5] = a1;
  v12[6] = a2;

  OUTLINED_FUNCTION_10_5();
  sub_267D7635C();
}

uint64_t sub_267D1C930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v7 = sub_267EF8A08();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D1C9F4, 0, 0);
}

uint64_t sub_267D1C9F4()
{
  v15 = v0;
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_267BB41B0(ObjCClassFromMetadata);
  if (v3)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v5 = v0[17];
    v4 = v0[18];
    v6 = v0[16];
    v7 = __swift_project_value_buffer(v6, qword_280240FB0);
    v0[19] = v7;
    (*(v5 + 16))(v4, v7, v6);
    sub_267EF3838();
    v8 = type metadata accessor for MessagesSELFPerformanceLogger(0);
    OUTLINED_FUNCTION_97(v8);
    v0[20] = OUTLINED_FUNCTION_96_3(103, v9, v10, v11, v14);
    v12 = swift_allocObject();
    v0[21] = v12;
    *(v12 + 16) = MEMORY[0x277D84F90];
    v13 = swift_task_alloc();
    v0[22] = v13;
    *v13 = v0;
    v13[1] = sub_267D1CB68;

    return sub_267D1B40C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267D1CB68(uint64_t a1)
{
  OUTLINED_FUNCTION_14();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v5 + 184) = v1;

  if (!v1)
  {
    *(v5 + 192) = a1;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267D1CC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v13 = v10[21];
  sub_267C9B788(v10[24]);
  if (sub_267BAF0DC(*(v13 + 16)))
  {
    v14 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v16);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v14, v13, "#ShareThisFlow retrieved on screen entities using IntelligenceContextClient");
      OUTLINED_FUNCTION_26();
    }

    v17 = v10[14];

    v17(v18, 0);

    goto LABEL_10;
  }

  v10[11] = &type metadata for Features;
  v19 = sub_267BAFCAC();
  *(v10 + 64) = 16;
  v10[12] = v19;
  v20 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(v10 + 8);
  if ((v20 & 1) == 0)
  {
    OUTLINED_FUNCTION_73_5();
    v24 = [objc_allocWithZone(MEMORY[0x277D7A070]) init];
    OUTLINED_FUNCTION_65_3();
    v25 = swift_allocObject();
    OUTLINED_FUNCTION_27_14(v25);
    v10[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_29_14(COERCE_DOUBLE(1107296256));
    v10[4] = v26;
    v10[5] = &block_descriptor_11;
    v27 = _Block_copy(v12);

    [v11 getOnScreenContentWithOptions:v24 completionHandler:v27];

    _Block_release(v27);

LABEL_10:

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_36_0();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }

  v21 = swift_task_alloc();
  v10[25] = v21;
  *v21 = v10;
  v21[1] = sub_267D1CEEC;
  OUTLINED_FUNCTION_36_0();

  return sub_267D1A714();
}