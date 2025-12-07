uint64_t sub_26611F1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  v15 = *(v14 + 328);

  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_66_0();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26611F2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_3();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_26_1();
  a20 = v22;
  v25 = v22[62];
  OUTLINED_FUNCTION_51_0();
  v26 = OUTLINED_FUNCTION_42_3();
  v27(v26);
  v28 = v25;
  v29 = sub_26618C690();
  v30 = sub_26618CAA0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v22[62];
    v55 = v22[39];
    v32 = swift_slowAlloc();
    v33 = OUTLINED_FUNCTION_45_1();
    a11 = v33;
    *v32 = 136315138;
    v22[15] = v31;
    v34 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v35 = sub_26618C8D0();
    v37 = sub_266103A98(v35, v36, &a11);

    *(v32 + 4) = v37;
    OUTLINED_FUNCTION_14_11();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    v43 = OUTLINED_FUNCTION_15_8();
    MEMORY[0x26677CC30](v43);

    v44 = OUTLINED_FUNCTION_12_1();
    v55(v44);
  }

  else
  {
    v45 = v22[39];

    v46 = OUTLINED_FUNCTION_12_1();
    v45(v46);
  }

  v47 = sub_26618B5F0();
  v48 = [v47 requestedApplication];

  if (v48 && (sub_26610410C(v48), v49))
  {
    v50 = v49;
  }

  else
  {

    v50 = 0xE000000000000000;
  }

  v22[63] = v50;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v22[64] = v51;
  *v51 = v52;
  v51[1] = sub_26611F518;
  OUTLINED_FUNCTION_22_0();

  return sub_26617AA58();
}

uint64_t sub_26611F518()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 520) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26611F614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  v15 = v14[62];
  v16 = v14[46];
  v17 = v14[41];

  OUTLINED_FUNCTION_2_14();
  v29 = v19;
  v30 = v18;

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_22_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, v30, a12, a13, a14);
}

uint64_t sub_26611F6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  v15 = v14[62];
  v16 = v14[46];
  v17 = v14[41];

  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_66_0();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26611F7D4(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  sub_26618B680();
  sub_26618B640();
  sub_26618B430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618F7E0;
  *(inited + 32) = a2;
  v7 = a2;
  sub_26614AC6C();
  swift_setDeallocating();
  sub_2661242E4();
  sub_26618B390();
  v8 = sub_26618B440();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  return sub_26618B660();
}

uint64_t sub_26611F904()
{
  OUTLINED_FUNCTION_18();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v4 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  OUTLINED_FUNCTION_3_0(v4);
  v1[13] = OUTLINED_FUNCTION_8_2();
  v5 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v5);
  v1[14] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618B6A0();
  v1[15] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[16] = v7;
  v1[17] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618C6B0();
  v1[18] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v1[19] = v9;
  v1[20] = OUTLINED_FUNCTION_25_0();
  v1[21] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26611FA44()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v1 = v0[19];
  __swift_project_value_buffer(v0[18], qword_2814B4A98);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_11_0();
  v2(v3);
  v4 = sub_26618C690();
  v5 = sub_26618CAA0();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_24_0();
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2660B7000, v4, v5, "LaunchApp.HandleIntentFlowStrategy.makeFailureHandlingIntentResponse() called", v6, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v7 = v0[19];

  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_11_2();
  v8(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4C8, &unk_266191AB0);
  v10 = sub_26618B5F0();
  v11 = [v10 application];
  v0[22] = v11;

  if (!v11)
  {
LABEL_13:
    v19 = OUTLINED_FUNCTION_11_0();
    v2(v19);
    v20 = sub_26618C690();
    sub_26618CAA0();
    v21 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_24_0();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_0(v23);
      OUTLINED_FUNCTION_27_1();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v29 = OUTLINED_FUNCTION_12_1();
    v8(v29);
    sub_2660D3004();
    OUTLINED_FUNCTION_18_1();
    v30 = swift_allocError();
    OUTLINED_FUNCTION_57_1(v30, v31, v32, v33, v34, v35, v36, v37);
    OUTLINED_FUNCTION_58_1();

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_49_1();

    __asm { BRAA            X1, X16 }
  }

  sub_2660C9D24(v11);
  v0[23] = v12;
  if (!v12)
  {

    goto LABEL_13;
  }

  v0[24] = sub_2660C9D30(v11);
  v0[25] = v13;
  if (!v13)
  {

    goto LABEL_13;
  }

  v14 = sub_26618B5E0();
  v15 = OBJC_IVAR___LaunchAppIntentResponse_code;
  swift_beginAccess();
  v16 = *&v14[v15];

  if (v16 == 100)
  {
    if (*(v0[12] + 520))
    {
      sub_26618C4C0();
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v0[26] = v18;
    v44 = swift_task_alloc();
    v0[27] = v44;
    *v44 = v0;
    v44[1] = sub_26611FE48;
    OUTLINED_FUNCTION_49_1();

    return sub_2660C2254();
  }

  else
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[34] = v40;
    *v40 = v41;
    v40[1] = sub_266120600;
    OUTLINED_FUNCTION_49_1();

    return sub_26617AA58();
  }
}

uint64_t sub_26611FE48()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 224) = v5;
  *(v3 + 232) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26611FF5C(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[12];
  sub_26618B1B0();
  *(swift_task_alloc() + 16) = v2;
  sub_26618B620();

  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  OUTLINED_FUNCTION_12_1();
  if (sub_26618B1A0())
  {
    v4 = v1[28];

    OUTLINED_FUNCTION_17_8();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v6 = OUTLINED_FUNCTION_35_3(v5);
    v1[30] = v6;
    *(v6 + 16) = xmmword_26618F7E0;
    *(v6 + 32) = v4;
    v7 = v4;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v1[31] = v8;
    *v8 = v9;
    v8[1] = sub_266120298;
    OUTLINED_FUNCTION_29_0();

    return MEMORY[0x2821BB488](v10, v11, v12, v13, v14);
  }

  else
  {
    v16 = v1[29];
    sub_2661235E0(v1[24], v1[25], v1[13]);
    if (v16)
    {
      v17 = v1[28];
      v18 = v1[22];
      (*(v1[16] + 8))(v1[17], v1[15]);

      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_29_0();

      __asm { BRAA            X1, X16 }
    }

    v21 = v1[28];

    OUTLINED_FUNCTION_17_8();
    v1[5] = type metadata accessor for AppLaunchDataModels(0);
    OUTLINED_FUNCTION_7_12();
    v1[6] = sub_266124B2C(v22, 255, v23, &protocol conformance descriptor for AppLaunchDataModels);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 2);
    OUTLINED_FUNCTION_28_7(boxed_opaque_existential_0);
    swift_storeEnumTagMultiPayload();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v26 = OUTLINED_FUNCTION_35_3(v25);
    v1[32] = v26;
    *(v26 + 16) = xmmword_26618F7E0;
    *(v26 + 32) = v21;
    v27 = v21;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v1[33] = v28;
    *v28 = v29;
    v28[1] = sub_266120440;
    OUTLINED_FUNCTION_34_5();
    OUTLINED_FUNCTION_29_0();

    return MEMORY[0x2821BB478](v30, v31, v32, v33, v34, v35);
  }
}

uint64_t sub_266120298()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266120398()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 224);

  v2 = OUTLINED_FUNCTION_11_0();
  v3(v2);
  OUTLINED_FUNCTION_55_1();

  OUTLINED_FUNCTION_9_10();

  return v4();
}

uint64_t sub_266120440()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266120540()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 224);
  v2 = *(v0 + 104);

  OUTLINED_FUNCTION_30_5();
  sub_266124A68(v2, v3);
  v4 = OUTLINED_FUNCTION_11_0();
  v5(v4);
  OUTLINED_FUNCTION_55_1();

  OUTLINED_FUNCTION_9_10();

  return v6();
}

uint64_t sub_266120600()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2661206FC()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_55_1();

  OUTLINED_FUNCTION_9_10();

  return v1();
}

uint64_t sub_266120788()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_58_1();

  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_266120834()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_58_1();

  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_2661208CC(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  sub_26618B680();
  sub_26618B690();
  sub_26618B640();
  sub_26618B430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618F7E0;
  *(inited + 32) = a2;
  v7 = a2;
  sub_26614AC6C();
  swift_setDeallocating();
  sub_2661242E4();
  sub_26618B390();
  v8 = sub_26618B440();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  return sub_26618B660();
}

uint64_t sub_266120A04(int a1)
{
  LODWORD(v71) = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4E8, &unk_266191E70);
  v3 = OUTLINED_FUNCTION_3_0(v2);
  MEMORY[0x28223BE20](v3);
  v75 = v62 - v4;
  v79 = sub_26618C580();
  OUTLINED_FUNCTION_2_2();
  v73 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v78 = v8 - v7;
  v80 = sub_26618C490();
  OUTLINED_FUNCTION_2_2();
  v74 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v72 = v12 - v11;
  v13 = sub_26618C480();
  OUTLINED_FUNCTION_2_2();
  v81 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  v82 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4F0, &qword_2661921C0);
  v19 = OUTLINED_FUNCTION_3_0(v18);
  MEMORY[0x28223BE20](v19);
  v21 = v62 - v20;
  v22 = sub_26618A5F0();
  OUTLINED_FUNCTION_2_2();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_24_1();
  v77 = v26 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = v62 - v29;
  sub_26618A5E0();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_26618B5A0();
  if (v31)
  {
    sub_26618A5C0();

    if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
    {
      sub_2660BF79C(v21, &qword_28005C4F0, &qword_2661921C0);
    }

    else
    {
      (*(v24 + 8))(v30, v22);
      (*(v24 + 32))(v30, v21, v22);
    }
  }

  v76 = v30;
  v33 = v81;
  v32 = v82;
  v34 = *(v81 + 104);
  v35 = MEMORY[0x277D61EC0];
  LODWORD(v69) = v71 & 1;
  if ((v71 & 1) == 0)
  {
    v35 = MEMORY[0x277D61EB8];
  }

  v34(v82, *v35, v13);
  sub_2660C5864(v1 + 216, v83);
  v68 = v85;
  v67 = __swift_project_boxed_opaque_existential_1(v83, v84);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C540, &qword_2661921C8);
  v62[0] = v1;
  v66 = *(v36 + 48);
  v65 = *(v24 + 16);
  v65(v77, v30, v22);
  v37 = *MEMORY[0x277D61F50];
  v71 = v22;
  v38 = *(v73 + 104);
  v64 = v37;
  v63 = v38;
  v38(v78);
  sub_26618C570();
  v70 = v24;
  v39 = OUTLINED_FUNCTION_59_1();
  *(v41 - 256) = v40;
  __swift_storeEnumTagSinglePayload(v39, v42, v43, v40);
  v44 = v72;
  sub_26618C560();
  v45 = *(v33 + 16);
  v73 = v13;
  v45(v66 + v44, v32, v13);
  v46 = *MEMORY[0x277D61EB0];
  v47 = v74;
  v48 = v76;
  v49 = v80;
  v66 = v74[13];
  v66(v44, v46, v80);
  sub_26618C540();
  v50 = v47[1];
  v50(v44, v49);
  __swift_destroy_boxed_opaque_existential_1(v83);
  if (v69)
  {
    (*(v81 + 8))(v82, v73);
    return (*(v70 + 8))(v48, v71);
  }

  else
  {
    sub_2660C5864(v62[0] + 216, v83);
    v69 = v84;
    v74 = v85;
    v68 = __swift_project_boxed_opaque_existential_1(v83, v84);
    v52 = v44;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C548, &unk_2661921D0) + 48);
    v54 = v71;
    v65(v77, v48, v71);
    v63(v78, v64, v79);
    v55 = OUTLINED_FUNCTION_59_1();
    __swift_storeEnumTagSinglePayload(v55, v57, v58, *(v56 - 256));
    sub_26618C560();
    v59 = *MEMORY[0x277D61EA8];
    sub_26618C470();
    OUTLINED_FUNCTION_16();
    (*(v60 + 104))(v52 + v53, v59);
    v61 = v80;
    v66(v52, *MEMORY[0x277D61EC8], v80);
    sub_26618C540();
    v50(v52, v61);
    (*(v81 + 8))(v82, v73);
    (*(v70 + 8))(v76, v54);
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }
}

uint64_t sub_2661210E4()
{
  OUTLINED_FUNCTION_18();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_26618C6B0();
  v1[19] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[20] = v6;
  v1[21] = OUTLINED_FUNCTION_25_0();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2661211A4()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [*(v0 + 136) application];
  if (v1 && (*(v0 + 192) = sub_26610410C(v1), (*(v0 + 200) = v2) != 0))
  {
    v3 = swift_task_alloc();
    *(v0 + 208) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C528, &qword_2661921A0);
    *v3 = v0;
    v3[1] = sub_266121320;
    OUTLINED_FUNCTION_8();

    return MEMORY[0x2822007B8]();
  }

  else
  {
    sub_2660D3004();
    OUTLINED_FUNCTION_18_1();
    v4 = swift_allocError();
    OUTLINED_FUNCTION_57_1(v4, v5, v6, v7, v8, v9, v10, v11);

    OUTLINED_FUNCTION_5_3();

    return v12();
  }
}

uint64_t sub_266121320()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266121404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v11 = *(v10 + 112);
  v12 = 0x2814B2000uLL;
  if (!v11)
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      a1 = swift_once();
    }

    v50 = *(v10 + 160);
    v51 = OUTLINED_FUNCTION_5_10(a1, qword_2814B4A98);
    v52(v51);
    v53 = sub_26618C690();
    v54 = sub_26618CAA0();
    if (os_log_type_enabled(v53, v54))
    {
      OUTLINED_FUNCTION_24_0();
      v55 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_0(v55);
      _os_log_impl(&dword_2660B7000, v53, v54, "Cannot get systemState of target device from context. Returning default dialog.", v50, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v56 = OUTLINED_FUNCTION_11_2();
    v57(v56);
    sub_26618C4C0();
    *(v10 + 240) = v58;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    *(v10 + 248) = v59;
    *v59 = v60;
    OUTLINED_FUNCTION_62_1(v59);
    goto LABEL_55;
  }

  v89 = sub_2661046B8();
  if (!v89)
  {

    LOBYTE(v11) = 0;
    v14 = 0;
    v88 = 0;
    goto LABEL_51;
  }

  v13 = 0;
  v88 = 0;
  v84 = 0;
  v85 = 0;
  v14 = 0;
  v86 = 0;
  v87 = v11 & 0xC000000000000001;
  v81 = v11 & 0xFFFFFFFFFFFFFF8;
  v83 = (*(v10 + 160) + 16);
  v82 = v11;
  do
  {
    if (v87)
    {
      v15 = MEMORY[0x26677C150](v13, v11);
    }

    else
    {
      if (v13 >= *(v81 + 16))
      {
        goto LABEL_59;
      }

      v15 = *(v11 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if ([v15 proximity] == 4000)
    {

      v85 = sub_2660C9D48(v16, &selRef_roomName);
      v14 = v18;
    }

    v19 = sub_2660C9D48(v16, &selRef_assistantIdentifier);
    v21 = v20;
    v22 = sub_26618C4A0();
    if (!v21)
    {

      goto LABEL_34;
    }

    if (v19 == v22 && v21 == v23)
    {
    }

    else
    {
      v19 = sub_26618D000();

      if ((v19 & 1) == 0)
      {

        goto LABEL_34;
      }
    }

    v25 = v12;
    if (*(v12 + 3136) != -1)
    {
      swift_once();
    }

    v26 = *(v10 + 184);
    v27 = *(v10 + 152);
    v28 = __swift_project_value_buffer(v27, qword_2814B4A98);
    (*v83)(v26, v28, v27);
    v29 = sub_26618C690();
    v30 = sub_26618CAA0();
    v31 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v31, v32))
    {
      OUTLINED_FUNCTION_24_0();
      v33 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_0(v33);
      _os_log_impl(&dword_2660B7000, v29, v30, "Found context for target device - matched assistantIdentifier", v19, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v34 = OUTLINED_FUNCTION_12_1();
    v35(v34);
    v84 = sub_2660C9D48(v16, &selRef_roomName);
    v86 = v36;
    if (sub_26612484C(v16))
    {

      result = sub_26612484C(v16);
      if (!result)
      {
        __break(1u);
        return result;
      }

      v38 = result;
      v39 = v14;
      v40 = sub_26618C8B0();
      if (*(v38 + 16))
      {
        v42 = sub_266129F20(v40, v41);
        v44 = v43;

        if (v44)
        {
          sub_2660CD384(*(v38 + 56) + 32 * v42, v10 + 48);

          sub_2660CD3E0((v10 + 48), (v10 + 16));
          sub_2660CD384(v10 + 16, v10 + 80);
          v45 = objc_allocWithZone(MEMORY[0x277CEF4D8]);
          v46 = sub_266124278((v10 + 80));
          v47 = [v46 sleepState];

          __swift_destroy_boxed_opaque_existential_1((v10 + 16));
          v88 = v47 == 2;
LABEL_32:
          v14 = v39;
          goto LABEL_33;
        }
      }

      else
      {
      }

      goto LABEL_32;
    }

LABEL_33:
    v12 = v25;
    v11 = v82;
LABEL_34:
    ++v13;
  }

  while (v17 != v89);

  if (v14)
  {
    if (v86)
    {
      if (v85 == v84 && v14 == v86)
      {

        LOBYTE(v11) = 1;
      }

      else
      {
        LOBYTE(v11) = sub_26618D000();

        v14 = v86;
      }
    }

    else
    {

      LOBYTE(v11) = 0;
      v14 = 0;
    }
  }

  else
  {

    LOBYTE(v11) = 0;
  }

LABEL_51:
  *(v10 + 216) = v14;
  if (*(v12 + 3136) != -1)
  {
LABEL_60:
    OUTLINED_FUNCTION_0_5();
    v49 = swift_once();
  }

  v61 = OUTLINED_FUNCTION_5_10(v49, qword_2814B4A98);
  v62(v61);
  v63 = sub_26618C690();
  v64 = sub_26618CAA0();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 67109376;
    *(v65 + 4) = v11 & 1;
    *(v65 + 8) = 1024;
    *(v65 + 10) = v88;
    _os_log_impl(&dword_2660B7000, v63, v64, "Remote device isInSameRoom:%{BOOL}d, isDeviceAsleep:%{BOOL}d.", v65, 0xEu);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v66 = *(v10 + 176);
  v67 = *(v10 + 152);
  v68 = *(v10 + 160);

  (*(v68 + 8))(v66, v67);
  sub_26618C4C0();
  *(v10 + 224) = v69;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v10 + 232) = v70;
  *v70 = v71;
  OUTLINED_FUNCTION_62_1(v70);
LABEL_55:
  OUTLINED_FUNCTION_20_2();

  return sub_266122038(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10);
}

uint64_t sub_266121B34()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_5_3();
  }

  else
  {
    OUTLINED_FUNCTION_9_10();
  }

  return v7();
}

uint64_t sub_266121C94()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_266121DF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C530, &qword_2661921A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6 + 56;
  sub_2660C5864(a2 + 176, v15);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C518, &qword_266192350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618E180;
  *(inited + 32) = sub_26618C8B0();
  *(inited + 40) = v9;
  *(inited + 48) = sub_26618C8B0();
  *(inited + 56) = v10;
  sub_266124644(inited);
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  sub_26618C380();

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_266121FE8(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C530, &qword_2661921A8);
  return sub_26618CA20();
}

uint64_t sub_266122038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  *(v11 + 120) = a2;
  *(v11 + 128) = v10;
  *(v11 + 112) = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C520, &unk_266192190);
  OUTLINED_FUNCTION_3_0(v17);
  *(v11 + 136) = OUTLINED_FUNCTION_8_2();
  v18 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  *(v11 + 144) = v18;
  OUTLINED_FUNCTION_3_0(v18);
  *(v11 + 152) = OUTLINED_FUNCTION_8_2();
  v19 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v19);
  *(v11 + 160) = OUTLINED_FUNCTION_8_2();
  v20 = sub_26618B6A0();
  *(v11 + 168) = v20;
  OUTLINED_FUNCTION_0_4(v20);
  *(v11 + 176) = v21;
  *(v11 + 184) = OUTLINED_FUNCTION_8_2();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  *(v11 + 40) = a6;
  *(v11 + 48) = a7;
  *(v11 + 56) = a8;
  *(v11 + 64) = a9;
  *(v11 + 65) = a10;
  v22 = swift_task_alloc();
  *(v11 + 192) = v22;
  *v22 = v11;
  v22[1] = sub_2661221E8;
  OUTLINED_FUNCTION_49_1();

  return sub_2660C3FA8();
}

uint64_t sub_2661221E8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 200) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_5_3();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_8();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_266122338()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[16];
  sub_26618B1B0();
  sub_26618B620();
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v2 = OUTLINED_FUNCTION_11_0();
  if (sub_2660C8128(v2, v3))
  {
    sub_26618C4B0();
    v0[26] = v4;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[27] = v5;
    *v5 = v6;
    v5[1] = sub_2661224EC;

    return sub_2661230CC();
  }

  else
  {
    v8 = v0[25];
    sub_266120A04(1);
    OUTLINED_FUNCTION_17_8();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v10 = OUTLINED_FUNCTION_35_3(v9);
    v0[30] = v10;
    *(v10 + 16) = xmmword_26618F7E0;
    *(v10 + 32) = v8;
    v11 = v8;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[31] = v12;
    *v12 = v13;
    v14 = OUTLINED_FUNCTION_22_5(v12);

    return MEMORY[0x2821BB488](v14, v15, v16, v17, v18);
  }
}

uint64_t sub_2661224EC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2661225EC()
{
  v1 = v0[17];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[18]) == 1)
  {
    sub_2660BF79C(v1, &qword_28005C520, &unk_266192190);
    v2 = v0[25];
    sub_266120A04(1);
    OUTLINED_FUNCTION_17_8();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v4 = OUTLINED_FUNCTION_35_3(v3);
    v0[30] = v4;
    *(v4 + 16) = xmmword_26618F7E0;
    *(v4 + 32) = v2;
    v5 = v2;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[31] = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_22_5(v6);
    OUTLINED_FUNCTION_29_0();

    return MEMORY[0x2821BB488](v8, v9, v10, v11, v12);
  }

  else
  {
    v14 = v0[25];
    sub_2661247E0(v1, v0[19]);
    sub_266120A04(1);
    OUTLINED_FUNCTION_17_8();
    v0[12] = type metadata accessor for AppLaunchDataModels(0);
    OUTLINED_FUNCTION_7_12();
    v0[13] = sub_266124B2C(v15, 255, v16, &protocol conformance descriptor for AppLaunchDataModels);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 9);
    OUTLINED_FUNCTION_28_7(boxed_opaque_existential_0);
    swift_storeEnumTagMultiPayload();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v19 = OUTLINED_FUNCTION_35_3(v18);
    v0[28] = v19;
    *(v19 + 16) = xmmword_26618F7E0;
    *(v19 + 32) = v14;
    v20 = v14;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[29] = v21;
    *v21 = v22;
    v21[1] = sub_266122818;
    OUTLINED_FUNCTION_34_5();
    OUTLINED_FUNCTION_29_0();

    return MEMORY[0x2821BB478](v23, v24, v25, v26, v27, v28);
  }
}

uint64_t sub_266122818()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 72));
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266122918()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 152);

  OUTLINED_FUNCTION_30_5();
  sub_266124A68(v1, v2);
  v3 = OUTLINED_FUNCTION_40_3();
  v4(v3);

  OUTLINED_FUNCTION_9_10();

  return v5();
}

uint64_t sub_2661229B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266122AB8()
{
  OUTLINED_FUNCTION_1_0();

  v1 = OUTLINED_FUNCTION_40_3();
  v2(v1);

  OUTLINED_FUNCTION_9_10();

  return v3();
}

uint64_t sub_266122B8C()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_26618C6B0();
  v1[5] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_25_0();
  v1[8] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266122C40()
{
  OUTLINED_FUNCTION_19();
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    __swift_project_boxed_opaque_existential_1((v0[4] + 480), *(v0[4] + 504));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C518, &qword_266192350);
    v4 = swift_allocObject();
    v0[9] = v4;
    *(v4 + 16) = xmmword_26618E190;
    *(v4 + 32) = v3;
    *(v4 + 40) = v2;

    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_266122E40;

    return sub_26615E9D8(v4);
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      v1 = swift_once();
    }

    v7 = OUTLINED_FUNCTION_5_10(v1, qword_2814B4A98);
    v8(v7);
    v9 = sub_26618C690();
    sub_26618CAB0();
    v10 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_24_0();
      v12 = swift_slowAlloc();
      OUTLINED_FUNCTION_63_1(v12);
      OUTLINED_FUNCTION_14_11();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      v18 = OUTLINED_FUNCTION_15_8();
      MEMORY[0x26677CC30](v18);
    }

    v19 = OUTLINED_FUNCTION_12_1();
    v20(v19);

    v21 = v0[1];

    return v21(0);
  }
}

uint64_t sub_266122E40()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;
  *(v6 + 88) = v5;

  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266122F44()
{
  OUTLINED_FUNCTION_19();
  if (*(*(v0 + 88) + 16))
  {

    v1 = [objc_allocWithZone(MEMORY[0x277D47AB0]) init];
    v2 = OUTLINED_FUNCTION_12_1();
    sub_266124AC0(v2, v3, v1, v4);
  }

  else
  {

    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      v5 = swift_once();
    }

    v6 = OUTLINED_FUNCTION_5_10(v5, qword_2814B4A98);
    v7(v6);
    v8 = sub_26618C690();
    sub_26618CAB0();
    v9 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_24_0();
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_63_1(v11);
      OUTLINED_FUNCTION_14_11();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      v17 = OUTLINED_FUNCTION_15_8();
      MEMORY[0x26677CC30](v17);
    }

    v18 = OUTLINED_FUNCTION_12_1();
    v19(v18);
    v1 = 0;
  }

  v20 = *(v0 + 8);

  return v20(v1);
}

uint64_t sub_2661230CC()
{
  OUTLINED_FUNCTION_1_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_26618C6B0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = sub_26618AB50();
  OUTLINED_FUNCTION_3_0(v5);
  v1[8] = OUTLINED_FUNCTION_8_2();
  v6 = swift_task_alloc();
  v1[9] = v6;
  *v6 = v1;
  v6[1] = sub_2661231F0;

  return sub_266122B8C();
}

uint64_t sub_2661231F0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;

  v4 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_2661232DC(uint64_t a1)
{
  v2 = v1[10];
  if (v2)
  {
    v3 = sub_2661238A4();
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_26618E190;
      v6 = sub_26618AB80();
      v7 = MEMORY[0x277D63778];
      *(v5 + 56) = v6;
      *(v5 + 64) = v7;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v5 + 32));
      *boxed_opaque_existential_0 = v2;
      *(boxed_opaque_existential_0 + 8) = 0;
      (*(*(v6 - 8) + 104))();
      v9 = v2;
      sub_26618AB60();
      OUTLINED_FUNCTION_11_0();
      AppLaunchDataModels.ButtonFallbackModel.init(buttonLabel:actionProperty:)();

      v10 = 0;
      goto LABEL_15;
    }

    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      v3 = swift_once();
    }

    v24 = OUTLINED_FUNCTION_5_10(v3, qword_2814B4A98);
    v25(v24);
    v26 = sub_26618C690();
    sub_26618CAB0();
    v27 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v2;
      OUTLINED_FUNCTION_24_0();
      v30 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_0(v30);
      OUTLINED_FUNCTION_27_1();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      v2 = v26;
      v26 = v29;
    }

    (*(v1[5] + 8))(v1[7], v1[4]);
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      a1 = swift_once();
    }

    v11 = OUTLINED_FUNCTION_5_10(a1, qword_2814B4A98);
    v12(v11);
    v13 = sub_26618C690();
    sub_26618CAB0();
    v14 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_24_0();
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_0(v16);
      OUTLINED_FUNCTION_27_1();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v22 = OUTLINED_FUNCTION_12_1();
    v23(v22);
  }

  v10 = 1;
LABEL_15:
  v36 = v1[2];
  v37 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  __swift_storeEnumTagSinglePayload(v36, v10, 1, v37);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_29_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2661235E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[1] = a3;
  v31 = sub_26618AB50();
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_1();
  v28[0] = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = v28 - v11;
  v13 = sub_26618AB40();
  OUTLINED_FUNCTION_2_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_4();
  v19 = v18 - v17;
  sub_26617B97C(a1, a2);
  sub_26618AB30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26618E190;
  v21 = sub_26618AB80();
  v22 = MEMORY[0x277D63778];
  *(v20 + 56) = v21;
  *(v20 + 64) = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v20 + 32));
  v24 = *(v15 + 16);
  v29 = v13;
  v24(boxed_opaque_existential_0, v19, v13);
  (*(*(v21 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D63730], v21);
  sub_26618AB60();
  v25 = v30;
  sub_266123A30();
  if (v25)
  {
    (*(v6 + 8))(v12, v31);
  }

  else
  {
    v26 = v31;
    (*(v6 + 16))(v28[0], v12, v31);
    AppLaunchDataModels.ButtonFallbackModel.init(buttonLabel:actionProperty:)();
    (*(v6 + 8))(v12, v26);
  }

  return (*(v15 + 8))(v19, v29);
}

uint64_t sub_2661238A4()
{
  v0 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v6 = v5 - v4;
  result = sub_26617CA00(0x4D45525F4E45504FLL, 0xEB0000000045544FLL);
  if (!v8)
  {
    if (qword_2814B2C38 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0, qword_2814B4A80);
    v9 = OUTLINED_FUNCTION_54_1();
    v10(v9);
    v11 = sub_26618C690();
    sub_26618CAC0();
    v12 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_24_0();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_63_1(v14);
      OUTLINED_FUNCTION_14_11();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      v20 = OUTLINED_FUNCTION_15_8();
      MEMORY[0x26677CC30](v20);
    }

    (*(v2 + 8))(v6, v0);
    return 0;
  }

  return result;
}

uint64_t sub_266123A30()
{
  v0 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v6 = v5 - v4;
  result = sub_26617CA00(0xD000000000000015, 0x8000000266198D00);
  if (!v8)
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    __swift_project_value_buffer(v0, qword_2814B4A98);
    v9 = OUTLINED_FUNCTION_54_1();
    v10(v9);
    v11 = sub_26618C690();
    sub_26618CAB0();
    v12 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_24_0();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_63_1(v14);
      OUTLINED_FUNCTION_14_11();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      v20 = OUTLINED_FUNCTION_15_8();
      MEMORY[0x26677CC30](v20);
    }

    (*(v2 + 8))(v6, v0);
    sub_2660D3004();
    OUTLINED_FUNCTION_18_1();
    swift_allocError();
    *v21 = 7;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_266123BCC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_2660D3208(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  sub_2660D31B4(v0 + 296);
  __swift_destroy_boxed_opaque_existential_1((v0 + 392));
  __swift_destroy_boxed_opaque_existential_1((v0 + 432));

  __swift_destroy_boxed_opaque_existential_1((v0 + 480));

  return v0;
}

uint64_t sub_266123C4C()
{
  sub_266123BCC();

  return MEMORY[0x2821FE8D8](v0, 528, 7);
}

uint64_t sub_266123CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LaunchAppHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_266123D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LaunchAppHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_266123E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LaunchAppHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t sub_266123EF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_26611D4DC();
}

uint64_t sub_266123F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LaunchAppHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2660D2E00;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_266124060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LaunchAppHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_266124124()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_26611F904();
}

uint64_t sub_2661241D0(uint64_t a1, void *a2)
{
  v3 = sub_2661193CC(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

id sub_266124278(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithSerializedBackingStore_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2661242E4()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26612432C(uint64_t a1)
{
  v2 = sub_26618A660();
  OUTLINED_FUNCTION_2_2();
  v37 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_1();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v41 = &v32 - v9;
  if (!*(a1 + 16))
  {
    v11 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C550, &qword_2661921E0);
  result = sub_26618CD60();
  v11 = result;
  v36 = *(a1 + 16);
  if (!v36)
  {
LABEL_15:

    return v11;
  }

  v12 = 0;
  v40 = result + 56;
  v13 = *(v37 + 80);
  v34 = a1;
  v35 = a1 + ((v13 + 32) & ~v13);
  v39 = v37 + 16;
  v14 = (v37 + 8);
  v33 = (v37 + 32);
  while (v12 < *(a1 + 16))
  {
    v15 = *(v37 + 72);
    v38 = v12 + 1;
    v16 = *(v37 + 16);
    v16(v41, v35 + v15 * v12, v2);
    OUTLINED_FUNCTION_31_6();
    sub_266124B2C(&qword_28005C558, 255, v17, MEMORY[0x277CC99D8]);
    v18 = sub_26618C860();
    v19 = ~(-1 << *(v11 + 32));
    while (1)
    {
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v40 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) == 0)
      {
        break;
      }

      v24 = v11;
      v16(v7, *(v11 + 48) + v20 * v15, v2);
      OUTLINED_FUNCTION_31_6();
      sub_266124B2C(&qword_28005C560, 255, v25, MEMORY[0x277CC99E0]);
      v26 = sub_26618C890();
      v27 = *v14;
      (*v14)(v7, v2);
      if (v26)
      {
        result = (v27)(v41, v2);
        v11 = v24;
        goto LABEL_12;
      }

      v18 = v20 + 1;
      v11 = v24;
    }

    v28 = v41;
    *(v40 + 8 * v21) = v23 | v22;
    result = (*v33)(*(v11 + 48) + v20 * v15, v28, v2);
    v29 = *(v11 + 16);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    *(v11 + 16) = v31;
LABEL_12:
    v12 = v38;
    a1 = v34;
    if (v38 == v36)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_266124644(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C538, &unk_2661921B0);
  result = sub_26618CD60();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_26618D090();

    sub_26618C910();
    result = sub_26618D0C0();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_26618D000() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2661247E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26612484C(void *a1)
{
  v1 = [a1 serializedContextByKey];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26618C840();

  return v3;
}

uint64_t sub_2661248B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C530, &qword_2661921A8);
  OUTLINED_FUNCTION_3_0(v2);

  return sub_266121FE8(a1);
}

uint64_t sub_266124938(void *a1)
{
  v2 = [a1 appToLaunch];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26618C8B0();

  return v3;
}

void sub_2661249A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();
  [a3 setLaunchId_];
}

uint64_t sub_266124A08(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_16();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266124A68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_16();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_266124AC0(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_26618C8A0();

  [a3 *a4];
}

uint64_t sub_266124B2C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_28_7(uint64_t a1)
{

  return sub_266124A08(v1, a1, type metadata accessor for AppLaunchDataModels.ButtonFallbackModel);
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_50_1()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 152) + 136), *(*(v0 + 152) + 160));

  sub_266178F28(0);
}

uint64_t OUTLINED_FUNCTION_55_1()
{
}

uint64_t OUTLINED_FUNCTION_57_1(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 6;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_58_1()
{
}

void OUTLINED_FUNCTION_64_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_65_1(float a1)
{
  *v2 = a1;
  *(v1 + 128) = v3;

  return v3;
}

uint64_t OUTLINED_FUNCTION_66_0()
{
}

uint64_t sub_266124ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C010, &qword_2661922A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_26618CA40();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_2661922B0;
  v9[5] = v8;
  sub_266128FE0(0, 0, v6, &unk_2661922C0, v9);
}

id LaunchAppIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void LaunchAppIntentHandler.init()()
{
  OUTLINED_FUNCTION_6_0();
  sub_26618B0E0();
  if (qword_2814B4A70 != -1)
  {
    OUTLINED_FUNCTION_13_8(&qword_2814B4A70);
  }

  v0 = static InstalledAppProvider.shared;
  v19 = type metadata accessor for InstalledAppProvider();
  v20 = &protocol witness table for InstalledAppProvider;
  *&v18 = v0;
  v17[19] = &type metadata for CoreDuetAppSelectionResolver;
  v17[20] = &off_2877CC198;
  v1 = swift_allocObject();
  v17[16] = v1;
  *(v1 + 40) = &type metadata for CoreDuetKnowledgeStore;
  *(v1 + 48) = &off_2877CC1C8;
  v24 = &type metadata for AppsSearcher;
  v25 = &off_2877CC0A0;
  v23[0] = swift_allocObject();
  v17[15] = 1;
  sub_2660C5864(&v18, &v16);
  sub_2660C5864(&v18, v15);
  v2 = objc_opt_self();
  swift_retain_n();
  sub_266104118([v2 sharedPreferences]);
  v4 = v3;
  v17[3] = type metadata accessor for RegexAppsResolver(0);
  v17[4] = &off_2877CC718;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  sub_2660C5864(v15, boxed_opaque_existential_0);
  if (v4)
  {
    OUTLINED_FUNCTION_31_0();
  }

  sub_26618A600();
  __swift_destroy_boxed_opaque_existential_1(v15);
  if (v22)
  {
    v17[8] = &type metadata for AceAppResolver;
    v17[9] = &off_2877CC000;
    v6 = swift_allocObject();
    v17[5] = v6;
    sub_2660B9EB8(&v21, v6 + 56);
    sub_2660B9EB8(&v18, v6 + 16);
    *(v6 + 96) = 1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v18);
    sub_2660C8040(&v21, &qword_28005C3C0, &qword_266191100);
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_55_2();
  type metadata accessor for CarPlaySupportProvider();
  swift_allocObject();

  v7 = sub_266153910();
  v8 = qword_2814B4798;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_12_9(&qword_2814B4798);
  }

  v9 = qword_2814B4B88;
  __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  OUTLINED_FUNCTION_3_5();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = (v12 - v11);
  (*(v14 + 16))(v12 - v11);

  sub_26612ADEC(v13, v0, v7, v9);

  __swift_destroy_boxed_opaque_existential_1(v23);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_7_1();
}

id static LaunchAppIntentHandler.handlerForIntentExtension()()
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  if (qword_2814B4A70 != -1)
  {
    OUTLINED_FUNCTION_13_8(&qword_2814B4A70);
  }

  v0 = static InstalledAppProvider.shared;
  v22 = type metadata accessor for InstalledAppProvider();
  v23 = &protocol witness table for InstalledAppProvider;
  *&v21 = v0;
  v20[19] = &type metadata for CoreDuetAppSelectionResolver;
  v20[20] = &off_2877CC198;
  v1 = swift_allocObject();
  v20[16] = v1;
  *(v1 + 40) = &type metadata for CoreDuetKnowledgeStore;
  *(v1 + 48) = &off_2877CC1C8;
  v28 = &type metadata for AppsSearcher;
  v29 = &off_2877CC0A0;
  v27[0] = swift_allocObject();
  v20[15] = 1;
  sub_2660C5864(&v21, &v19);
  sub_2660C5864(&v21, v18);
  v2 = objc_opt_self();
  swift_retain_n();
  sub_266104118([v2 sharedPreferences]);
  v4 = v3;
  v20[3] = type metadata accessor for RegexAppsResolver(0);
  v20[4] = &off_2877CC718;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  sub_2660C5864(v18, boxed_opaque_existential_0);
  if (v4)
  {
    sub_26618A600();
    __swift_destroy_boxed_opaque_existential_1(v18);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(&v21);
    sub_2660C8040(&v24, &qword_28005C3C0, &qword_266191100);
    OUTLINED_FUNCTION_56_1();
    goto LABEL_8;
  }

  sub_26618A600();
  v6 = *(&v25 + 1);
  __swift_destroy_boxed_opaque_existential_1(v18);
  if (!v6)
  {
    goto LABEL_5;
  }

  v20[8] = &type metadata for AceAppResolver;
  v20[9] = &off_2877CC000;
  v7 = swift_allocObject();
  v20[5] = v7;
  sub_2660B9EB8(&v24, v7 + 56);
  sub_2660B9EB8(&v21, v7 + 16);
  *(v7 + 96) = 1;
LABEL_8:
  OUTLINED_FUNCTION_55_2();
  type metadata accessor for CarPlaySupportProvider();
  swift_allocObject();
  OUTLINED_FUNCTION_30_3();

  v8 = sub_266153910();
  v9 = qword_2814B4798;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_12_9(&qword_2814B4798);
  }

  v10 = qword_2814B4B88;
  __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  OUTLINED_FUNCTION_3_5();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v14 = (v13 - v12);
  (*(v15 + 16))(v13 - v12);

  v16 = sub_26612ADEC(v14, v0, v8, v10);

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v16;
}

uint64_t LaunchAppIntentHandler.resolveApplication(for:)()
{
  OUTLINED_FUNCTION_18();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_26618C6B0();
  v1[10] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[11] = v4;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26612580C()
{
  v143 = v0;
  if (qword_2814B2C48 != -1)
  {
LABEL_95:
    OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  *(v0 + 136) = __swift_project_value_buffer(*(v0 + 80), qword_2814B4AB0);
  v4 = *(v2 + 16);
  *(v0 + 144) = v4;
  *(v0 + 152) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4(v1);
  v5 = v3;
  v6 = sub_26618C690();
  v7 = sub_26618CAD0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 64);
    v9 = OUTLINED_FUNCTION_49_0();
    v10 = OUTLINED_FUNCTION_65_2();
    *v9 = 138412290;
    *(v9 + 4) = v8;
    *v10 = v8;
    v11 = v8;
    OUTLINED_FUNCTION_37_2();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_2660C8040(v10, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_28_3();
  }

  v17 = *(v0 + 88);
  v18 = *(v0 + 64);

  *(v0 + 160) = *(v17 + 8);
  *(v0 + 168) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19 = OUTLINED_FUNCTION_12_1();
  v137 = v20;
  (v20)(v19);
  v21 = [v18 isRemoteExecution];
  sub_26611C10C();
  v22 = OUTLINED_FUNCTION_66_1();
  v23 = v22;
  if (v21)
  {
    v24 = sub_26618CBA0();

    if (v24)
    {
      sub_2660C9D48(*(v0 + 64), &selRef_crossDeviceRequestInitiator);
    }
  }

  else
  {
  }

  v25 = [*(v0 + 64) application];
  v140 = v0;
  if (!v25)
  {
LABEL_13:
    v37 = sub_2661040AC(*(v0 + 64));
    if (v37)
    {
      v38 = v37;
      v39 = sub_2661046B8();
      if (v39)
      {
        v40 = v39;
        v41 = OUTLINED_FUNCTION_31_7();
        v42(v41);
        v43 = sub_26618C690();
        v44 = sub_26618CAA0();
        v45 = OUTLINED_FUNCTION_15_1(v44);
        v46 = *(v0 + 112);
        v47 = *(v0 + 80);
        if (v45)
        {
          v48 = OUTLINED_FUNCTION_49_0();
          v49 = OUTLINED_FUNCTION_45_1();
          v142 = v49;
          *v48 = 136315138;
          sub_266100294(v38);
          v23 = v50;
          v52 = sub_266103A98(v51, v50, &v142);

          *(v48 + 4) = v52;
          _os_log_impl(&dword_2660B7000, v43, v44, "Suggested applications: %s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v49);
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_7_2();
        }

        v137(v46, v47);
        v54 = 0;
        v0 = v38 & 0xC000000000000001;
        v55 = MEMORY[0x277D84F90];
        while (v40 != v54)
        {
          if (v0)
          {
            v56 = MEMORY[0x26677C150](v54, v38);
          }

          else
          {
            if (v54 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_93;
            }

            v56 = *(v38 + 8 * v54 + 32);
          }

          v23 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          v57 = v56;
          v58 = [v57 appId];
          if (v58)
          {
            v59 = v58;
            v60 = sub_26618C8B0();
            v138 = v61;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_266129600();
              v55 = v65;
            }

            v63 = *(v55 + 16);
            v62 = *(v55 + 24);
            if (v63 >= v62 >> 1)
            {
              OUTLINED_FUNCTION_38_2(v62);
              sub_266129600();
              v55 = v66;
            }

            *(v55 + 16) = v63 + 1;
            v64 = v55 + 16 * v63;
            *(v64 + 32) = v60;
            *(v64 + 40) = v138;
            v54 = v23;
          }

          else
          {

            ++v54;
          }
        }

        v67 = *(v55 + 16);
        if (v67)
        {
          OUTLINED_FUNCTION_41_2(MEMORY[0x277D84F90]);
          v68 = v142;
          v0 = v55 + 40;
          do
          {
            v69 = *(v140 + 64);
            v71 = *(v0 - 8);
            v70 = *v0;

            v72 = [v69 isInCarPlay];
            OUTLINED_FUNCTION_51_1();
            v73 = sub_26618CB70();
            v74 = v73;
            if (v23)
            {
              OUTLINED_FUNCTION_50_2();
              v75 = sub_26618CBA0();

              if (v75)
              {
                if (qword_28005BC90 != -1)
                {
                  swift_once();
                }

                v76 = off_28005C6C8;
                if (*(off_28005C6C8 + 2))
                {
                  v77 = sub_266129F20(v71, v70);
                  if (v78)
                  {
                    OUTLINED_FUNCTION_58_2(v77);

                    v70 = v76;
                  }
                }
              }
            }

            else
            {
            }

            v142 = v68;
            v23 = *(v68 + 16);
            v79 = *(v68 + 24);
            if (v23 >= v79 >> 1)
            {
              v81 = OUTLINED_FUNCTION_38_2(v79);
              sub_26612A450(v81, v23 + 1, 1);
              v68 = v142;
            }

            *(v68 + 16) = v23 + 1;
            v80 = v68 + 16 * v23;
            *(v80 + 32) = v71;
            *(v80 + 40) = v70;
            v0 += 16;
            --v67;
          }

          while (v67);
        }

        else
        {

          v68 = MEMORY[0x277D84F90];
        }

        v82 = *(v68 + 16);
        if (v82)
        {
          OUTLINED_FUNCTION_41_2(MEMORY[0x277D84F90]);
          v83 = v142;
          v0 = v68 + 40;
          v23 = &off_279BC8000;
          do
          {
            v84 = v83;
            v86 = *(v0 - 8);
            v85 = *v0;
            v87 = objc_allocWithZone(MEMORY[0x277CFA5E0]);

            v88 = [v87 init];
            v89 = [v88 isClarityBoardEnabled];

            if (v89)
            {
              if (qword_28005BC88 != -1)
              {
                swift_once();
              }

              v90 = off_28005C6C0;
              if (*(off_28005C6C0 + 2))
              {
                v91 = sub_266129F20(v86, v85);
                if (v92)
                {
                  OUTLINED_FUNCTION_58_2(v91);

                  v85 = v90;
                }
              }
            }

            v83 = v84;
            v142 = v84;
            v93 = *(v84 + 16);
            v94 = *(v83 + 24);
            if (v93 >= v94 >> 1)
            {
              v96 = OUTLINED_FUNCTION_38_2(v94);
              sub_26612A450(v96, v93 + 1, 1);
              v83 = v142;
            }

            *(v83 + 16) = v93 + 1;
            v95 = v83 + 16 * v93;
            *(v95 + 32) = v86;
            *(v95 + 40) = v85;
            v0 += 16;
            --v82;
          }

          while (v82);
        }

        else
        {

          v83 = MEMORY[0x277D84F90];
        }

        v97 = 0;
        v141 = MEMORY[0x277D84F90];
        v135 = (*(v140 + 72) + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_installedApps);
        v136 = *(v83 + 16);
        v98 = v83 + 40;
        v134 = v83 + 40;
LABEL_63:
        v99 = (v98 + 16 * v97);
        while (v136 != v97)
        {
          if (v97 >= *(v83 + 16))
          {
            goto LABEL_94;
          }

          v0 = v83;
          v23 = *(v99 - 1);
          v100 = *v99;
          v101 = v135[3];
          v102 = v135[4];
          __swift_project_boxed_opaque_existential_1(v135, v101);
          v103 = *(v102 + 16);

          if (v103(v23, v100, 1, v101, v102))
          {

            MEMORY[0x26677BD40](v113);
            v23 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v114 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (v23 >= v114 >> 1)
            {
              OUTLINED_FUNCTION_38_2(v114);
              sub_26618C9D0();
            }

            ++v97;
            OUTLINED_FUNCTION_50_2();
            sub_26618C9F0();
            v98 = v134;
            goto LABEL_63;
          }

          v139 = v97;
          v104 = OUTLINED_FUNCTION_31_7();
          v105(v104);

          v106 = sub_26618C690();
          v107 = sub_26618CAA0();

          v108 = os_log_type_enabled(v106, v107);
          v109 = *(v140 + 104);
          v110 = *(v140 + 80);
          if (v108)
          {
            v111 = OUTLINED_FUNCTION_49_0();
            v112 = OUTLINED_FUNCTION_45_1();
            v142 = v112;
            *v111 = 136315138;
            *(v111 + 4) = sub_266103A98(v23, v100, &v142);
            _os_log_impl(&dword_2660B7000, v106, v107, "%s is not found in installedApps", v111, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v112);
            OUTLINED_FUNCTION_9_9();
            OUTLINED_FUNCTION_28_3();
          }

          v137(v109, v110);

          v99 += 2;
          v97 = v139 + 1;
          v83 = v0;
        }

        if (sub_2661046B8())
        {
          sub_2661281B0();
          OUTLINED_FUNCTION_7_9();

          goto LABEL_75;
        }
      }
    }

    v118 = [*(v140 + 64) isRemoteExecution];
    OUTLINED_FUNCTION_51_1();
    v119 = sub_26618CB70();
    if (v23)
    {
      OUTLINED_FUNCTION_50_2();
      v120 = sub_26618CBA0();

      if ((v120 & 1) == 0)
      {
LABEL_83:
        v122 = *(v140 + 64);
        sub_2660C5864(*(v140 + 72) + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_appsSearcher, v140 + 16);
        __swift_project_boxed_opaque_existential_1((v140 + 16), *(v140 + 40));
        v123 = [v122 requestedApplication];
        if (v123)
        {
          sub_26610410C(v123);
          v125 = v124;
        }

        else
        {
          v125 = 0;
        }

        *(v140 + 176) = v125;
        v126 = [*(v140 + 64) requestedApplication];
        if (v126)
        {
          v127 = sub_266104124(v126);
          v129 = v128;
        }

        else
        {
          v127 = 0;
          v129 = 0;
        }

        *(v140 + 184) = v129;
        v130 = swift_task_alloc();
        *(v140 + 192) = v130;
        *v130 = v140;
        v130[1] = sub_266126444;
        v131 = OUTLINED_FUNCTION_11_2();

        return sub_2661515C4(v131, v132, v127, v129, v133);
      }

      v121 = [*(v140 + 64) smartSelectApps];
      OUTLINED_FUNCTION_51_1();
      v119 = sub_26618CB70();
      OUTLINED_FUNCTION_50_2();
      sub_26618CBA0();
    }

    goto LABEL_83;
  }

  v23 = v25;
  v26 = sub_2660C9D30(v25);
  if (!v27)
  {

    goto LABEL_13;
  }

  v28 = v26;
  v29 = v27;
  v30 = OUTLINED_FUNCTION_31_7();
  v31(v30);
  v32 = sub_26618C690();
  v33 = sub_26618CAD0();
  if (OUTLINED_FUNCTION_15_1(v33))
  {
    v34 = OUTLINED_FUNCTION_49_0();
    v35 = OUTLINED_FUNCTION_45_1();
    v142 = v35;
    *v34 = 136315138;
    v36 = sub_266103A98(v28, v29, &v142);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_2660B7000, v32, v33, "Application resolved in previous turn, succeeding with %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  else
  {
  }

  v53 = OUTLINED_FUNCTION_12_1();
  (v137)(v53);
  type metadata accessor for LaunchAppApplicationResolutionResult();
  static ApplicationResolutionResult.success(with:)(v23);

LABEL_75:

  v115 = OUTLINED_FUNCTION_5_7();

  return v116(v115);
}

uint64_t sub_266126444()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v5 + 200) = v0;

  if (v0)
  {
    v8 = sub_266126620;
  }

  else
  {
    *(v5 + 208) = v3;

    v8 = sub_266126568;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_266126568()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2661281B0();
  OUTLINED_FUNCTION_7_9();

  v1 = OUTLINED_FUNCTION_5_7();

  return v2(v1);
}

uint64_t sub_266126620()
{
  v24 = v0;
  v1 = v0[25];
  v2 = v0[18];
  v3 = v0[17];
  v4 = v0[12];
  v5 = v0[10];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_26618C690();
  v8 = sub_26618CAA0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[25];
    v10 = v0[20];
    v11 = OUTLINED_FUNCTION_49_0();
    v12 = OUTLINED_FUNCTION_45_1();
    v23 = v12;
    *v11 = 136315138;
    v0[7] = v9;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v14 = sub_26618C8D0();
    v16 = sub_266103A98(v14, v15, &v23);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2660B7000, v7, v8, "An error occurred trying to find apps: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_9_9();

    v17 = OUTLINED_FUNCTION_12_1();
    v10(v17);
  }

  else
  {
    v18 = v0[20];

    v19 = OUTLINED_FUNCTION_12_1();
    v18(v19);
  }

  type metadata accessor for LaunchAppApplicationResolutionResult();
  static LaunchAppApplicationResolutionResult.unsupported(forReason:)(2);

  v20 = OUTLINED_FUNCTION_5_7();

  return v21(v20);
}

uint64_t sub_266126854(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266126918;

  return LaunchAppIntentHandler.resolveApplication(for:)();
}

uint64_t sub_266126918()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  (v4)[2](v4, v2);
  _Block_release(v4);

  OUTLINED_FUNCTION_5_3();

  return v9();
}

uint64_t LaunchAppIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v2 = sub_26618C6B0();
  v0[3] = v2;
  OUTLINED_FUNCTION_0_4(v2);
  v0[4] = v3;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266126B2C()
{
  if (qword_2814B2C48 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  __swift_project_value_buffer(*(v0 + 24), qword_2814B4AB0);
  v3 = *(v1 + 16);
  v4 = OUTLINED_FUNCTION_53_1();
  v3(v4);
  v5 = v2;
  v6 = sub_26618C690();
  v7 = sub_26618CAA0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 16);
    v9 = OUTLINED_FUNCTION_49_0();
    v10 = OUTLINED_FUNCTION_65_2();
    *v9 = 138412290;
    *(v9 + 4) = v8;
    *v10 = v8;
    v11 = v8;
    _os_log_impl(&dword_2660B7000, v6, v7, "Calling confirm with %@", v9, 0xCu);
    sub_2660C8040(v10, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_7_3();
  }

  v12 = *(v0 + 56);
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  v15 = *(v0 + 16);

  v16 = *(v14 + 8);
  v16(v12, v13);
  v17 = [v15 application];
  if (!v17)
  {
    v28 = objc_allocWithZone(type metadata accessor for LaunchAppIntentResponse());
    OUTLINED_FUNCTION_42_4();
    goto LABEL_19;
  }

  v18 = v17;
  v53 = v16;
  v19 = [v17 isOffloaded];
  sub_26611C10C();
  v20 = OUTLINED_FUNCTION_66_1();
  if (!v19)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_3_3();
  v21 = sub_26618CBA0();

  if ((v21 & 1) == 0)
  {
    goto LABEL_15;
  }

  v22 = [*(v0 + 16) canReinstallOffloadedApps];
  v20 = sub_26618CB70();
  if (!v22)
  {
LABEL_14:

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_3();
  v23 = sub_26618CBA0();

  if ((v23 & 1) == 0)
  {
    goto LABEL_15;
  }

  v24 = [*(v0 + 16) autoInstallOffloaded];
  OUTLINED_FUNCTION_51_1();
  v25 = sub_26618CB70();
  v26 = v25;
  if (v20)
  {
    OUTLINED_FUNCTION_31_0();
    v27 = sub_26618CBA0();

    if ((v27 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_15:
    v29 = OUTLINED_FUNCTION_53_1();
    v3(v29);
    v30 = sub_26618C690();
    v31 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_1(v31))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_9_6();
      _os_log_impl(v32, v33, v34, v35, v36, 2u);
      OUTLINED_FUNCTION_7_3();
    }

    v37 = OUTLINED_FUNCTION_11_2();
    v53(v37);
    v38 = objc_allocWithZone(type metadata accessor for LaunchAppIntentResponse());
    v39 = 1;
    goto LABEL_18;
  }

LABEL_23:
  v43 = OUTLINED_FUNCTION_53_1();
  v3(v43);
  v44 = sub_26618C690();
  v45 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_1(v45))
  {
    *OUTLINED_FUNCTION_6_2() = 0;
    OUTLINED_FUNCTION_9_6();
    _os_log_impl(v46, v47, v48, v49, v50, 2u);
    OUTLINED_FUNCTION_7_3();
  }

  v51 = OUTLINED_FUNCTION_11_2();
  v53(v51);
  v52 = objc_allocWithZone(type metadata accessor for LaunchAppIntentResponse());
  v39 = 102;
LABEL_18:
  LaunchAppIntentResponse.init(code:userActivity:)(v39, 0);

LABEL_19:

  v40 = OUTLINED_FUNCTION_5_7();

  return v41(v40);
}

uint64_t sub_266126F38(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26612B7DC;

  return LaunchAppIntentHandler.confirm(intent:)();
}

uint64_t LaunchAppIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_18();
  v1[9] = v2;
  v1[10] = v0;
  v3 = sub_26618C6B0();
  v1[11] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[12] = v4;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2661270C8()
{
  if (qword_2814B2C48 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = __swift_project_value_buffer(v2, qword_2814B4AB0);
  *(v0 + 136) = v5;
  v6 = *(v3 + 16);
  *(v0 + 144) = v6;
  *(v0 + 152) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  v7 = v4;
  v8 = sub_26618C690();
  LOBYTE(v2) = sub_26618CAA0();

  if (os_log_type_enabled(v8, v2))
  {
    v9 = *(v0 + 72);
    v10 = OUTLINED_FUNCTION_49_0();
    v11 = OUTLINED_FUNCTION_65_2();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    OUTLINED_FUNCTION_9_6();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_2660C8040(v11, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_7_3();
  }

  v18 = *(v0 + 96);
  v19 = *(v0 + 72);

  v22 = *(v18 + 8);
  v20 = v18 + 8;
  v21 = v22;
  *(v0 + 160) = v22;
  *(v0 + 168) = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23 = OUTLINED_FUNCTION_11_2();
  v22(v23);
  v24 = [v19 application];
  *(v0 + 176) = v24;
  if (!v24)
  {
    goto LABEL_15;
  }

  v25 = v24;
  *(v0 + 184) = sub_2660C9D30(v24);
  *(v0 + 192) = v26;
  if (!v26)
  {

LABEL_15:
    v6(*(v0 + 104), v5, *(v0 + 88));
    v37 = sub_26618C690();
    v38 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_1(v38))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_37_2();
      _os_log_impl(v39, v40, v41, v42, v43, 2u);
      OUTLINED_FUNCTION_28_3();
    }

    v44 = OUTLINED_FUNCTION_12_1();
    v21(v44);
    v45 = objc_allocWithZone(type metadata accessor for LaunchAppIntentResponse());
    OUTLINED_FUNCTION_42_4();
LABEL_25:

    OUTLINED_FUNCTION_36();

    __asm { BRAA            X2, X16 }
  }

  v27 = [v25 isOffloaded];
  sub_26611C10C();
  v28 = OUTLINED_FUNCTION_66_1();
  if (!v27)
  {
    v46 = 4;
LABEL_21:

    goto LABEL_22;
  }

  v29 = sub_26618CBA0();

  if ((v29 & 1) == 0)
  {
    v46 = 4;
    goto LABEL_22;
  }

  v30 = [*(v0 + 72) canReinstallOffloadedApps];
  v28 = sub_26618CB70();
  if (!v30)
  {
    v46 = 100;
    goto LABEL_21;
  }

  v31 = sub_26618CBA0();

  if ((v31 & 1) == 0)
  {
    v46 = 100;
LABEL_22:
    v47 = objc_allocWithZone(OUTLINED_FUNCTION_35_4());
    v48 = v46;
    v49 = v47;
    LaunchAppIntentResponse.init(code:userActivity:)(v48, 0);
    v50 = OUTLINED_FUNCTION_30_3();
    sub_26612AD94(v50, v28, v49);

    v51 = OUTLINED_FUNCTION_3_3();
    (v20)(v51);
    v52 = v49;
    v53 = sub_26618C690();
    v54 = sub_26618CAA0();

    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 176);
    v57 = *(v0 + 160);
    v58 = *(v0 + 112);
    v59 = *(v0 + 88);
    if (v55)
    {
      v60 = swift_slowAlloc();
      swift_slowAlloc();
      *v60 = 136315394;
      *(v0 + 40) = sub_2660C9D48(v52, &selRef_appToLaunch);
      *(v0 + 48) = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
      v62 = sub_26618C8D0();
      OUTLINED_FUNCTION_64_1(v62, v63, v64, v65, v66, v67, v68, v69, v83, v58);
      OUTLINED_FUNCTION_44_1();
      *(v60 + 4) = v21;
      *(v60 + 12) = 2080;
      v70 = OBJC_IVAR___LaunchAppIntentResponse_code;
      OUTLINED_FUNCTION_60_2();
      *(v0 + 56) = *&v52[v70];
      v71 = sub_26618C8D0();
      OUTLINED_FUNCTION_64_1(v71, v72, v73, v74, v75, v76, v77, v78, v84, v85);
      OUTLINED_FUNCTION_44_1();
      *(v60 + 14) = v21;
      OUTLINED_FUNCTION_59_2(&dword_2660B7000, v79, v80, "Handling bundle %s with code %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_21_9();

      v57(v86, v59);
    }

    else
    {

      v57(v58, v59);
    }

    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 80) + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_offloadedAppInstaller), *(*(v0 + 80) + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_offloadedAppInstaller + 24));
  v32 = swift_task_alloc();
  *(v0 + 200) = v32;
  *v32 = v0;
  v32[1] = sub_26612763C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_36();

  return sub_26615EFB8(v33, v34);
}

uint64_t sub_26612763C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  *(v4 + 208) = v0;

  if (v0)
  {
    v5 = sub_266127980;
  }

  else
  {
    v5 = sub_266127740;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_266127740()
{
  v4 = objc_allocWithZone(OUTLINED_FUNCTION_35_4());
  LaunchAppIntentResponse.init(code:userActivity:)(101, 0);
  v5 = OUTLINED_FUNCTION_30_3();
  sub_26612AD94(v5, v0, v4);

  v6 = OUTLINED_FUNCTION_3_3();
  v2(v6);
  v7 = v4;
  v8 = sub_26618C690();
  v9 = sub_26618CAA0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v1 + 176);
    v42 = *(v1 + 160);
    v39 = *(v1 + 112);
    v11 = *(v1 + 88);
    v12 = swift_slowAlloc();
    swift_slowAlloc();
    *v12 = 136315394;
    *(v1 + 40) = sub_2660C9D48(v7, &selRef_appToLaunch);
    *(v1 + 48) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
    v14 = sub_26618C8D0();
    OUTLINED_FUNCTION_64_1(v14, v15, v16, v17, v18, v19, v20, v21, v37, v39);
    OUTLINED_FUNCTION_44_1();
    *(v12 + 4) = v3;
    *(v12 + 12) = 2080;
    v22 = OBJC_IVAR___LaunchAppIntentResponse_code;
    OUTLINED_FUNCTION_60_2();
    *(v1 + 56) = *&v7[v22];
    v23 = sub_26618C8D0();
    OUTLINED_FUNCTION_64_1(v23, v24, v25, v26, v27, v28, v29, v30, v38, v40);
    OUTLINED_FUNCTION_44_1();
    *(v12 + 14) = v3;
    OUTLINED_FUNCTION_59_2(&dword_2660B7000, v31, v32, "Handling bundle %s with code %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_21_9();

    v42(v41, v11);
  }

  else
  {
    v33 = *(v1 + 160);

    v34 = OUTLINED_FUNCTION_11_2();
    v33(v34);
  }

  OUTLINED_FUNCTION_36();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_266127980()
{
  v24 = v0;
  v1 = *(v0 + 208);
  (*(v0 + 144))(*(v0 + 120), *(v0 + 136), *(v0 + 88));

  v2 = v1;
  v3 = sub_26618C690();
  v4 = sub_26618CAB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 208);
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v22 = *(v0 + 160);
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136315394;
    sub_266103A98(v7, v6, &v23);
    OUTLINED_FUNCTION_44_1();
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    *(v0 + 64) = v5;
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v10 = sub_26618C8D0();
    v12 = sub_266103A98(v10, v11, &v23);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_2660B7000, v3, v4, "Error prioritizing download for %s: %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_9_9();

    v13 = OUTLINED_FUNCTION_12_1();
    v22(v13);
  }

  else
  {
    v14 = *(v0 + 160);

    v15 = OUTLINED_FUNCTION_11_2();
    v14(v15);
  }

  v16 = *(v0 + 208);
  v17 = *(v0 + 176);
  v18 = objc_allocWithZone(type metadata accessor for LaunchAppIntentResponse());
  OUTLINED_FUNCTION_42_4();

  v19 = OUTLINED_FUNCTION_5_7();

  return v20(v19);
}

uint64_t sub_266127BF0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26612B7DC;

  return LaunchAppIntentHandler.handle(intent:)();
}

void sub_266127CB4(void *a1, uint64_t a2)
{
  v12 = MEMORY[0x277D84F90];
  v4 = sub_2661046B8();
  for (i = 0; v4 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26677C150](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v6 = *(a2 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v6;
    sub_266127DEC(&v11, a1, v9, &v10);

    if (v10)
    {
      MEMORY[0x26677BD40]();
      v8 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v8 >> 1)
      {
        OUTLINED_FUNCTION_38_2(v8);
        sub_26618C9D0();
      }

      sub_26618C9F0();
    }
  }
}

void sub_266127DEC(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v41 = a4;
  v7 = sub_26618C6B0();
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [a2 isInCarPlay];
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11;
  v13 = sub_2660C9D30(v10);
  if (!v14)
  {
LABEL_7:

    goto LABEL_8;
  }

  v15 = v13;
  v16 = v14;
  sub_26611C10C();
  v17 = sub_26618CB70();
  v18 = sub_26618CBA0();

  if ((v18 & 1) == 0)
  {

    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_carPlaySupportProvider), *(a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_carPlaySupportProvider + 24));
  v19 = sub_266153380(v15, v16);

  if ((v19 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  v20 = sub_2660C9D30(v10);
  v22 = v21;
  v23 = sub_2660C9D24(v10);
  LOBYTE(v20) = sub_2661288A8(v20, v22, v23, v24);

  if (v20)
  {
LABEL_9:
    *v41 = 0;
    return;
  }

  v25 = sub_2660C9D30(v10);
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    v29 = *(a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_installedApps + 24);
    v30 = *(a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_installedApps + 32);
    __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_installedApps), v29);
    if ((*(v30 + 40))(v27, v28, 1, v29, v30))
    {
      if (qword_2814B2C48 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v7, qword_2814B4AB0);
      v32 = v40;
      (*(v40 + 16))(v9, v31, v7);

      v33 = sub_26618C690();
      v34 = sub_26618CAA0();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v42 = v36;
        *v35 = 136315138;
        v37 = sub_266103A98(v27, v28, &v42);

        *(v35 + 4) = v37;
        _os_log_impl(&dword_2660B7000, v33, v34, "Filtered %s because it is not a launchable app.", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x26677CC30](v36, -1, -1);
        MEMORY[0x26677CC30](v35, -1, -1);

        (*(v40 + 8))(v9, v7);
      }

      else
      {

        (*(v32 + 8))(v9, v7);
      }

      goto LABEL_9;
    }
  }

  *v41 = v10;
  v38 = v10;
}

void sub_2661281B0()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_26618C6B0();
  OUTLINED_FUNCTION_3_5();
  v85 = v5;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v83 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v83 - v13;
  v15 = sub_2661046B8();
  if (v15)
  {
LABEL_7:
    sub_266127CB4(v3, v1);
    v21 = v20;
    v92 = v20;
    sub_2661289A8();
    if (sub_2661046B8() == 1)
    {
      sub_2661046C8();
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x26677C150](0, v21);
      }

      else
      {
        v22 = *(v21 + 32);
      }

      v23 = v22;
      type metadata accessor for LaunchAppApplicationResolutionResult();
      v24 = OUTLINED_FUNCTION_30_3();
      static ApplicationResolutionResult.success(with:)(v24);
      OUTLINED_FUNCTION_7_9();

      goto LABEL_51;
    }

    if (sub_2661046B8() >= 2)
    {
      type metadata accessor for LaunchAppApplicationResolutionResult();
      v25 = OUTLINED_FUNCTION_7_9();
      static ApplicationResolutionResult.disambiguation(with:)(v25);
LABEL_50:
      OUTLINED_FUNCTION_7_9();

LABEL_51:
      OUTLINED_FUNCTION_7_1();
      return;
    }

    v84 = v4;
    v26 = OUTLINED_FUNCTION_63_2();
    if (v26)
    {
      v27 = sub_266104124(v26);
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v33 = OUTLINED_FUNCTION_63_2();
    if (v33)
    {
      v34 = sub_26610410C(v33);
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v37 = sub_2661288A8(v27, v29, v34, v36);

    if (v37)
    {
      if (qword_2814B2C48 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
      }

      v38 = v84;
      v39 = __swift_project_value_buffer(v84, qword_2814B4AB0);
      v40 = v85;
      (*(v85 + 16))(v14, v39, v38);
      v41 = sub_26618C690();
      v42 = sub_26618CAA0();
      if (OUTLINED_FUNCTION_15_1(v42))
      {
        *OUTLINED_FUNCTION_6_2() = 0;
        OUTLINED_FUNCTION_37_2();
        _os_log_impl(v43, v44, v45, v46, v47, 2u);
        OUTLINED_FUNCTION_28_3();
      }

      (*(v40 + 8))(v14, v38);
      type metadata accessor for LaunchAppApplicationResolutionResult();
      v48 = 4;
    }

    else
    {
      v49 = [v3 isInCarPlay];
      sub_26611C10C();
      v50 = OUTLINED_FUNCTION_66_1();
      v51 = v50;
      if (v49)
      {
        v52 = sub_26618CBA0();

        if (v15 && (v52 & 1) != 0)
        {
          v53 = [objc_opt_self() sharedPreferences];
          v54 = sub_266104118(v53);
          v56 = v84;
          v57 = v85;
          if (!v55 || (v90 = v54, v91 = v55, v88 = 45, v89 = 0xE100000000000000, v86 = 95, v87 = 0xE100000000000000, sub_2660CCD6C(), v58 = sub_26618CC00(), , v59 = objc_opt_self(), OUTLINED_FUNCTION_53_1(), sub_26618C8A0(), OUTLINED_FUNCTION_30_3(), , v60 = [v59 isDomainServerFallbackDisabledForLocale_], v58, (v60 & 1) == 0))
          {
            sub_2661046C8();
            if ((v1 & 0xC000000000000001) != 0)
            {
              v61 = MEMORY[0x26677C150](0, v1);
            }

            else
            {
              v61 = *(v1 + 32);
            }

            v62 = v61;
            if (sub_2661046B8() == 1)
            {
              if (qword_2814B2C48 != -1)
              {
                OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
              }

              v63 = __swift_project_value_buffer(v56, qword_2814B4AB0);
              (*(v57 + 16))(v12, v63, v56);
              v64 = v62;
              v65 = sub_26618C690();
              v66 = sub_26618CAA0();

              if (os_log_type_enabled(v65, v66))
              {
                v67 = OUTLINED_FUNCTION_49_0();
                v68 = OUTLINED_FUNCTION_65_2();
                *v67 = 138412290;
                *(v67 + 4) = v64;
                *v68 = v64;
                v69 = v64;
                OUTLINED_FUNCTION_37_2();
                _os_log_impl(v70, v71, v72, v73, v74, 0xCu);
                sub_2660C8040(v68, &qword_28005C1F8, &unk_266190550);
                OUTLINED_FUNCTION_21_9();
                OUTLINED_FUNCTION_28_3();
              }

              (*(v57 + 8))(v12, v56);
              type metadata accessor for LaunchAppApplicationResolutionResult();
              static LaunchAppApplicationResolutionResult.unsupported(forReason:)(5);
              OUTLINED_FUNCTION_7_9();

              goto LABEL_51;
            }
          }

          if (qword_2814B2C48 != -1)
          {
            OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
          }

          v75 = __swift_project_value_buffer(v56, qword_2814B4AB0);
          (*(v57 + 16))(v9, v75, v56);
          v76 = sub_26618C690();
          v77 = sub_26618CAA0();
          if (OUTLINED_FUNCTION_15_1(v77))
          {
            *OUTLINED_FUNCTION_6_2() = 0;
            OUTLINED_FUNCTION_37_2();
            _os_log_impl(v78, v79, v80, v81, v82, 2u);
            OUTLINED_FUNCTION_28_3();
          }

          (*(v57 + 8))(v9, v56);
          type metadata accessor for LaunchAppApplicationResolutionResult();
          v48 = 3;
          goto LABEL_49;
        }
      }

      else
      {
      }

      type metadata accessor for LaunchAppApplicationResolutionResult();
      v48 = 1;
    }

LABEL_49:
    static LaunchAppApplicationResolutionResult.unsupported(forReason:)(v48);
    goto LABEL_50;
  }

  v16 = OUTLINED_FUNCTION_63_2();
  if (v16 && (sub_26610410C(v16), v17) || (v18 = OUTLINED_FUNCTION_63_2()) != 0 && (sub_266104124(v18), v19))
  {

    goto LABEL_7;
  }

  type metadata accessor for LaunchAppApplicationResolutionResult();
  [swift_getObjCClassFromMetadata() needsValue];
  OUTLINED_FUNCTION_7_1();

  v32 = v30;
}

BOOL sub_2661288A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (sub_26618C8E0() == 0x6C7070612E6D6F63 && v5 == 0xEE00697269732E65)
    {
LABEL_14:

      return 1;
    }

    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }
  }

  if (!a4)
  {
    return 0;
  }

  if (sub_26618C8E0() == 1769105779 && v8 == 0xE400000000000000)
  {
    goto LABEL_14;
  }

  v10 = sub_26618D000();

  return (v10 & 1) != 0;
}

void sub_2661289A8()
{
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  v3 = sub_26618C6B0();
  OUTLINED_FUNCTION_3_5();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  v11 = *v2;
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_25:
    OUTLINED_FUNCTION_7_1();
    return;
  }

  v12 = sub_26618CCD0();
  if (!v12)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = 0;
    v48 = (v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_installedApps);
    v14 = v11 & 0xC000000000000001;
    v46 = (v5 + 8);
    v47 = (v5 + 16);
    v15 = &off_279BC8000;
    *&v7 = 136315138;
    v42 = v7;
    v43 = v10;
    v44 = v3;
    do
    {
      if (v14)
      {
        v16 = MEMORY[0x26677C150](v13, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = [v16 v15[294]];
      if (v18 && (v19 = v18, v20 = [v18 BOOLValue], v19, (v20 & 1) != 0))
      {
        v21 = sub_2660C9D30(v17);
        if (v22)
        {
          v23 = v21;
          v24 = v22;
          v26 = v48[3];
          v25 = v48[4];
          __swift_project_boxed_opaque_existential_1(v48, v26);
          (*(v25 + 32))(v23, v24, 1, v26, v25);
          v28 = v27;

          if (v28)
          {
            v29 = sub_26618C8A0();
          }

          else
          {
            v29 = 0;
          }

          v14 = v11 & 0xC000000000000001;
          v15 = &off_279BC8000;
          [v17 setAdamId_];
        }

        else
        {
          if (qword_2814B2C38 != -1)
          {
            swift_once();
          }

          v30 = __swift_project_value_buffer(v3, qword_2814B4A80);
          (*v47)(v10, v30, v3);
          v31 = v17;
          v32 = sub_26618C690();
          v33 = sub_26618CAB0();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = OUTLINED_FUNCTION_49_0();
            v45 = OUTLINED_FUNCTION_45_1();
            v49 = v45;
            *v34 = v42;
            v35 = [v31 description];
            v36 = v12;
            v37 = sub_26618C8B0();
            v39 = v38;

            v40 = v37;
            v12 = v36;
            v14 = v11 & 0xC000000000000001;
            v41 = sub_266103A98(v40, v39, &v49);
            v10 = v43;

            *(v34 + 4) = v41;
            v3 = v44;
            __swift_destroy_boxed_opaque_existential_1(v45);
            OUTLINED_FUNCTION_7_2();
            OUTLINED_FUNCTION_7_2();
          }

          else
          {
          }

          (*v46)(v10, v3);
          v15 = &off_279BC8000;
        }
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);
    goto LABEL_25;
  }

  __break(1u);
}

id LaunchAppIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LaunchAppIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_266128E10(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2660D3260;

  return v6();
}

uint64_t sub_266128EF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2660D2E00;

  return v7();
}

uint64_t sub_266128FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C010, &qword_2661922A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_2660CCFC4(a3, v22 - v10);
  v12 = sub_26618CA40();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2660C8040(v11, &qword_28005C010, &qword_2661922A0);
  }

  else
  {
    sub_26618CA30();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_26618CA10();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_26618C8F0() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_2660C8040(a3, &qword_28005C010, &qword_2661922A0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2660C8040(a3, &qword_28005C010, &qword_2661922A0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_2661292AC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2661293A4;

  return v6(a1);
}

uint64_t sub_2661293A4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_5_3();

  return v3();
}

void sub_266129488()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_266129600();
    *v0 = v3;
  }
}

void sub_2661294D4()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26612974C(isUniquelyReferenced_nonNull_native, *(v1 + 16) + 1, 1, v1, sub_266140B68, MEMORY[0x277D5FEB0], MEMORY[0x277D5FEB0]);
    *v0 = v3;
  }
}

void sub_26612955C()
{
  OUTLINED_FUNCTION_52_0();
  if (!(v2 ^ v3 | v1))
  {
    sub_266129600();
    *v0 = v4;
  }
}

void sub_266129590()
{
  OUTLINED_FUNCTION_52_0();
  if (!(v5 ^ v6 | v4))
  {
    sub_26612974C(v3 > 1, v1, 1, v2, sub_266140B68, MEMORY[0x277D5FEB0], MEMORY[0x277D5FEB0]);
    *v0 = v7;
  }
}

void sub_266129600()
{
  OUTLINED_FUNCTION_16_9();
  if (v4)
  {
    OUTLINED_FUNCTION_2_15();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_9_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  OUTLINED_FUNCTION_5_11();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C518, &qword_266192350);
    v8 = OUTLINED_FUNCTION_29_1(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_4_14();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_47_4();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26612974C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v10 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_2_15();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_9_11();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (v10)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_266129E58(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2661298C0()
{
  OUTLINED_FUNCTION_16_9();
  if (v4)
  {
    OUTLINED_FUNCTION_2_15();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_9_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  OUTLINED_FUNCTION_5_11();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C600, &qword_266192320);
    v8 = OUTLINED_FUNCTION_29_1(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_4_14();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[2 * v2 + 4] <= v8 + 4)
    {
      v11 = OUTLINED_FUNCTION_31_0();
      memmove(v11, v12, v13);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C608, &qword_266192328);
    OUTLINED_FUNCTION_31_0();
    swift_arrayInitWithCopy();
  }
}

void sub_2661299B0()
{
  OUTLINED_FUNCTION_16_9();
  if (v3)
  {
    OUTLINED_FUNCTION_2_15();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_9_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C618, &qword_266192338);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_4_14();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_266129A8C()
{
  OUTLINED_FUNCTION_16_9();
  if (v4)
  {
    OUTLINED_FUNCTION_2_15();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_9_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  OUTLINED_FUNCTION_5_11();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C5D8, &qword_266192288);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 32);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_47_4();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_266129BB0()
{
  OUTLINED_FUNCTION_16_9();
  if (v4)
  {
    OUTLINED_FUNCTION_2_15();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_9_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  OUTLINED_FUNCTION_5_11();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C5F0, &qword_266192310);
    v8 = OUTLINED_FUNCTION_62_2(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_48_2(v9);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[24 * v2 + 32] <= v8 + 32)
    {
      v11 = OUTLINED_FUNCTION_31_0();
      memmove(v11, v12, v13);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C5F8, &qword_266192318);
    OUTLINED_FUNCTION_31_0();
    swift_arrayInitWithCopy();
  }
}

void sub_266129D24()
{
  OUTLINED_FUNCTION_16_9();
  if (v4)
  {
    OUTLINED_FUNCTION_2_15();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_9_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  OUTLINED_FUNCTION_5_11();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C5C8, &qword_266192278);
    v8 = OUTLINED_FUNCTION_29_1(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_4_14();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_47_4();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_266129DF0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_15(a3, result);
  }

  return result;
}

char *sub_266129E10(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_15(a3, result);
  }

  return result;
}

char *sub_266129E30(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_15(a3, result);
  }

  return result;
}

uint64_t sub_266129E58(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_54_2();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_54_2();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

unint64_t sub_266129F20(uint64_t a1, uint64_t a2)
{
  sub_26618D090();
  sub_26618C910();
  v4 = sub_26618D0C0();

  return sub_26612A09C(a1, a2, v4);
}

unint64_t sub_266129F98(uint64_t a1)
{
  v2 = sub_26618CD00();

  return sub_26612A150(a1, v2);
}

unint64_t sub_266129FDC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C610, &qword_266192330);
  v2 = sub_26618C860();
  return sub_26612A214(a1, v2);
}

unint64_t sub_26612A058(uint64_t a1)
{
  v2 = sub_26618CB90();

  return sub_26612A2F8(a1, v2);
}

unint64_t sub_26612A09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26618D000() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26612A150(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_26612B72C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26677C0D0](v8, a1);
    sub_26612B788(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26612A214(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C610, &qword_266192330);
    if (sub_26618C890())
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26612A2F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_26618C4F0();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_26618CBA0();

    if (v8)
    {
      break;
    }
  }

  return i;
}

char *sub_26612A3B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26612A6F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26612A3D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26612A7F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26612A628(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26612AB98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26612A6F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C5B0, &unk_266192260);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_26612A7F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C620, &qword_266192340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C628, &qword_266192348);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26612A930()
{
  OUTLINED_FUNCTION_16_9();
  if (v4)
  {
    OUTLINED_FUNCTION_2_15();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_9_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  OUTLINED_FUNCTION_5_11();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C518, &qword_266192350);
    v8 = OUTLINED_FUNCTION_29_1(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_4_14();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_47_4();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26612A9FC()
{
  OUTLINED_FUNCTION_6_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_2_15();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_9_11();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = v6(0);
  OUTLINED_FUNCTION_0_4(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(v6(0) - 8);
  if (v10)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    sub_266129E58(v8 + v26, v15, v22 + v26, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_7_1();
}

char *sub_26612AB98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C5C8, &qword_266192278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26612ACA0()
{
  OUTLINED_FUNCTION_16_9();
  if (v4)
  {
    OUTLINED_FUNCTION_2_15();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_9_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  OUTLINED_FUNCTION_5_11();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C630, &qword_266192358);
    v8 = OUTLINED_FUNCTION_62_2(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_48_2(v9);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[24 * v2 + 32] <= v8 + 32)
    {
      v11 = OUTLINED_FUNCTION_31_0();
      memmove(v11, v12, v13);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C638, &unk_266192360);
    OUTLINED_FUNCTION_31_0();
    swift_arrayInitWithCopy();
  }
}

void sub_26612AD94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();
  [a3 setAppToLaunch_];
}

id sub_26612ADEC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45[3] = &type metadata for AppsSearcher;
  v45[4] = &off_2877CC0A0;
  v45[0] = swift_allocObject();
  memcpy((v45[0] + 16), a1, 0xA8uLL);
  v44[3] = type metadata accessor for InstalledAppProvider();
  v44[4] = &protocol witness table for InstalledAppProvider;
  v44[0] = a2;
  v8 = type metadata accessor for CarPlaySupportProvider();
  v43[3] = v8;
  v43[4] = &off_2877CC108;
  v43[0] = a3;
  v9 = type metadata accessor for OffloadedAppInstallerImpl();
  v41 = v9;
  v42 = &off_2877CC3E0;
  v40[0] = a4;
  v38 = &type metadata for AppLaunchFeatureFlagsImpl;
  v39 = &off_2877CD168;
  v35 = &type metadata for TvProfileSelector;
  v36 = &off_2877CC788;
  v10 = type metadata accessor for LaunchAppIntentHandler();
  v11 = objc_allocWithZone(v10);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v45, &type metadata for AppsSearcher);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v43, v8);
  MEMORY[0x28223BE20](v16);
  v18 = (&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
  MEMORY[0x28223BE20](v20);
  v22 = (&v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  v24 = *v18;
  v25 = *v22;
  v33[3] = &type metadata for AppsSearcher;
  v33[4] = &off_2877CC0A0;
  v33[0] = swift_allocObject();
  memcpy((v33[0] + 16), v14, 0xA8uLL);
  v32[3] = v8;
  v32[4] = &off_2877CC108;
  v32[0] = v24;
  v31[3] = v9;
  v31[4] = &off_2877CC3E0;
  v31[0] = v25;
  v30[3] = &type metadata for AppLaunchFeatureFlagsImpl;
  v30[4] = &off_2877CD168;
  v29[3] = &type metadata for TvProfileSelector;
  v29[4] = &off_2877CC788;
  sub_2660C5864(v33, v11 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_appsSearcher);
  sub_2660C5864(v44, v11 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_installedApps);
  sub_2660C5864(v32, v11 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_carPlaySupportProvider);
  sub_2660C5864(v31, v11 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_offloadedAppInstaller);
  sub_2660C5864(v30, v11 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_featureFlags);
  sub_2660C5864(v29, v11 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_tvProfileSelection);
  v28.receiver = v11;
  v28.super_class = v10;
  v26 = objc_msgSendSuper2(&v28, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return v26;
}

uint64_t sub_26612B280()
{
  OUTLINED_FUNCTION_1_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_11(v1);

  return v4(v3);
}

uint64_t sub_26612B314()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_7(v0);
  *v1 = v2;
  v1[1] = sub_2660D3260;
  v3 = OUTLINED_FUNCTION_12_1();

  return v4(v3);
}

uint64_t objectdestroy_19Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26612B40C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_17_7(v6);
  *v7 = v8;
  v7[1] = sub_2660D3260;

  return sub_266128EF8(a1, v3, v4, v5);
}

uint64_t sub_26612B4D4()
{
  OUTLINED_FUNCTION_1_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_4(v1);

  return v4(v3);
}

uint64_t sub_26612B56C()
{
  OUTLINED_FUNCTION_1_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_4(v1);

  return v4(v3);
}

uint64_t sub_26612B604()
{
  OUTLINED_FUNCTION_1_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_11(v1);

  return v4(v3);
}

uint64_t sub_26612B698()
{
  OUTLINED_FUNCTION_1_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_11(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_12_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_21_9()
{

  JUMPOUT(0x26677CC30);
}

uint64_t OUTLINED_FUNCTION_29_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_35_4()
{

  return type metadata accessor for LaunchAppIntentResponse();
}

void OUTLINED_FUNCTION_41_2(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;

  sub_26612A450(0, v1, 0);
}

char *OUTLINED_FUNCTION_42_4()
{

  return LaunchAppIntentResponse.init(code:userActivity:)(5, 0);
}

uint64_t OUTLINED_FUNCTION_44_1()
{
}

uint64_t OUTLINED_FUNCTION_48_2(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void *OUTLINED_FUNCTION_55_2()
{
  sub_2660B9EB8((v0 + 208), v0 + 160);

  return memcpy((v1 + 16), (v0 + 40), 0xA8uLL);
}

double OUTLINED_FUNCTION_56_1()
{
  result = 0.0;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_2(uint64_t a1)
{
}

void OUTLINED_FUNCTION_59_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_60_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_62_2(uint64_t a1)
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_63_2()
{

  return [v1 (v0 + 1951)];
}

uint64_t OUTLINED_FUNCTION_64_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_266103A98(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_65_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_66_1()
{

  return sub_26618CB70();
}

uint64_t sub_26612BB2C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_26618B500();
  v2[5] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v2[6] = v4;
  v2[7] = swift_task_alloc();
  v5 = sub_26618C6B0();
  v2[8] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v2[9] = v6;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26612BC50, 0, 0);
}

uint64_t sub_26612BC50()
{
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v34 = __swift_project_value_buffer(v0[8], qword_2814B4A80);
  v35 = *(v2 + 16);
  v35(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2660B7000, v3, v4, "LaunchAppNeedsDisambiguationFlow.execute() called", v5, 2u);
    MEMORY[0x26677CC30](v5, -1, -1);
  }

  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];

  v36 = *(v8 + 8);
  v36(v6, v7);
  OUTLINED_FUNCTION_3_14();
  sub_26618B4F0();
  v12 = sub_26618B110();
  v13 = *(v10 + 8);
  v13(v9, v11);
  if (v12 & 1) != 0 || (OUTLINED_FUNCTION_3_14(), (sub_26618B190()) || (OUTLINED_FUNCTION_3_14(), (sub_26618B1A0()))
  {
    (v35)(v0[10], v34, v0[8]);
    v14 = sub_26618C690();
    v15 = sub_26618CAA0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2660B7000, v14, v15, "LaunchAppNeedsDisambiguationFlow.wrappedFlow.execute() called", v16, 2u);
      MEMORY[0x26677CC30](v16, -1, -1);
    }

    v17 = v0[10];
    v18 = v0[8];

    v36(v17, v18);
    v37 = (*MEMORY[0x277D5B870] + MEMORY[0x277D5B870]);
    v19 = swift_task_alloc();
    v0[13] = v19;
    *v19 = v0;
    v19[1] = sub_26611C858;
    v20 = v0[3];

    return v37(v20);
  }

  else
  {
    v22 = v0[11];
    v23 = v0[7];
    v24 = v0[8];
    v25 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C068, &unk_26618F7D0);
    v26 = sub_26618AE80();
    OUTLINED_FUNCTION_0_4(v26);
    *(swift_allocObject() + 16) = xmmword_26618E190;
    sub_26618B4F0();
    sub_26618AE70();
    v13(v23, v25);
    v27 = sub_26618AC10();

    (v35)(v22, v34, v24);
    v28 = sub_26618C690();
    v29 = sub_26618CAA0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2660B7000, v28, v29, "Device is not authenticated - pushing an unlock flow", v30, 2u);
      MEMORY[0x26677CC30](v30, -1, -1);
    }

    v31 = v0[11];
    v32 = v0[8];

    v36(v31, v32);
    v0[2] = v27;
    sub_26618AE60();
    sub_26618B330();

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_26612C140(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LaunchAppNeedsDisambiguationFlow();
  OUTLINED_FUNCTION_0_12();
  sub_26612C510(v2, v3, v4, &unk_2661923F0);
  return sub_26618AFB0();
}

uint64_t sub_26612C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for LaunchAppDisambiguationStrategy();
  sub_26612C510(&qword_28005C4E0, 255, type metadata accessor for LaunchAppDisambiguationStrategy, &unk_266191BE0);
  v9 = sub_26618AED0();
  v10 = v9(a1, a2);

  *&v22[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C648, &qword_266192480);
  swift_allocObject();

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C650, &qword_266192488);
  v12 = sub_26612C558();
  v13 = MEMORY[0x26677A1C0](v22, v11, v12);
  sub_2660C5864(a4, v22);
  sub_2660C5864(a5, v21);
  __swift_mutable_project_boxed_opaque_existential_1(v21, v21[3]);
  v20[3] = &type metadata for AppLaunchFlowFactoryImpl;
  v20[4] = &off_2877CD5D8;
  type metadata accessor for LaunchAppNeedsDisambiguationFlow();
  v14 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v20, &type metadata for AppLaunchFlowFactoryImpl);
  v14[11] = &type metadata for AppLaunchFlowFactoryImpl;
  v14[12] = &off_2877CD5D8;
  v14[2] = v13;
  sub_2660CD484(v22, (v14 + 3));

  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  *&v22[0] = v14;
  OUTLINED_FUNCTION_0_12();
  sub_26612C510(v15, v16, v17, &unk_2661923F0);
  v18 = sub_26618AFA0();

  return v18;
}

uint64_t sub_26612C408(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26611CD84;

  return sub_26612BB2C(a1);
}

uint64_t sub_26612C510(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_26612C558()
{
  result = qword_2814B4830;
  if (!qword_2814B4830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C650, &qword_266192488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B4830);
  }

  return result;
}

uint64_t sub_26612C5D4(uint64_t a1)
{
  sub_26618B810();
  type metadata accessor for BaseDialogProvider();
  v1 = swift_allocObject();
  v2 = sub_26618C460();

  v7[3] = v2;
  v7[4] = &off_2877CC660;
  v7[0] = sub_26618C450();
  sub_26618B470();
  swift_allocObject();
  v3 = sub_26618B460();
  sub_2660CFC00(v7, v6);
  v4 = sub_26612FA04(v8, v1, v6, v3);

  sub_2660CFC5C(v7);
  return v4;
}

uint64_t sub_26612C698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a1;
  v170 = a2;
  sub_26618B790();
  OUTLINED_FUNCTION_2_2();
  v156 = v3;
  v157 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_6();
  v155 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  MEMORY[0x28223BE20](v5 - 8);
  v154 = &v144[-v6];
  OUTLINED_FUNCTION_18_2();
  sub_26618B8E0();
  OUTLINED_FUNCTION_2_2();
  v152 = v8;
  v153 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_6();
  v151 = v9;
  OUTLINED_FUNCTION_18_2();
  v158 = sub_26618B980();
  OUTLINED_FUNCTION_2_2();
  v148 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_6();
  v147 = v12;
  OUTLINED_FUNCTION_18_2();
  v159 = sub_26618B840();
  OUTLINED_FUNCTION_2_2();
  v161 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_6();
  v160 = v15;
  v16 = OUTLINED_FUNCTION_18_2();
  v150 = type metadata accessor for AppLaunchIntent(v16);
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_4_6();
  v162 = v17;
  OUTLINED_FUNCTION_18_2();
  sub_26618C0E0();
  OUTLINED_FUNCTION_2_2();
  v163 = v19;
  v164 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_6();
  v165 = v20;
  OUTLINED_FUNCTION_18_2();
  v21 = sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v25);
  v27 = &v144[-v26];
  v28 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_24_1();
  v34 = (v32 - v33);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v40);
  v42 = &v144[-v41];
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  OUTLINED_FUNCTION_37_0(v28, qword_2814B4A98);
  v43 = v30;
  v44 = *(v30 + 16);
  v149 = v45;
  v167 = v44;
  v168 = (v30 + 16);
  v44(v42);
  v46 = sub_26618C690();
  v47 = sub_26618CAA0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_6_2();
    *v48 = 0;
    _os_log_impl(&dword_2660B7000, v46, v47, "LaunchAppNeedsValueStrategy.actionForInput() called", v48, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v49 = v28;
  v166 = *(v43 + 8);
  v166(v42, v28);
  v50 = v169;
  sub_26618B770();
  v51 = (*(v23 + 88))(v27, v21);
  if (v51 == *MEMORY[0x277D5C128])
  {
    (*(v23 + 96))(v27, v21);
    v53 = v163;
    v52 = v164;
    v54 = v165;
    (*(v163 + 32))(v165, v27, v164);
    v55 = v162;
    (*(v53 + 16))(v162, v54, v52);
    if (sub_2660C97B4())
    {
      sub_26618B290();
LABEL_43:
      sub_2660DD7D0(v55);
      return (*(v53 + 8))(v54, v52);
    }

    if (qword_2814B3D30 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_6_12();
    sub_26612F9BC(v72, 255, v73, &unk_2661939B8);
    sub_26618BDA0();
    if (v171 != 11)
    {
      v74 = sub_266146C4C(v171);
      if (v74 == 1852141679 && v75 == 0xE400000000000000)
      {
      }

      else
      {
        v77 = OUTLINED_FUNCTION_6_9(v74);

        if ((v77 & 1) == 0)
        {
          if (qword_2814B2C38 != -1)
          {
            OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
          }

          OUTLINED_FUNCTION_37_0(v28, qword_2814B4A80);
          OUTLINED_FUNCTION_16_7();
          v78();
          v79 = sub_26618C690();
          v80 = sub_26618CA90();
          if (OUTLINED_FUNCTION_16_4(v80))
          {
            *OUTLINED_FUNCTION_6_2() = 0;
            OUTLINED_FUNCTION_7_7(&dword_2660B7000, v81, v82, "Incorrect verb in intent for flow, ignoring input");
            v54 = v165;
            OUTLINED_FUNCTION_7_2();
          }

          OUTLINED_FUNCTION_21_7();
          v83();
          sub_26618B2B0();
          goto LABEL_43;
        }
      }
    }

    OUTLINED_FUNCTION_16_7();
    v103();
    v104 = sub_26618C690();
    v105 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_16_4(v105))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_7_7(&dword_2660B7000, v106, v107, "LaunchAppNeedsValueStrategy.actionForInput() handling");
      v54 = v165;
      OUTLINED_FUNCTION_7_2();
    }

    OUTLINED_FUNCTION_21_7();
    v108();
    sub_26618B2A0();
    goto LABEL_43;
  }

  if (v51 == *MEMORY[0x277D5C160])
  {
    (*(v23 + 96))(v27, v21);
    v57 = v160;
    v56 = v161;
    v58 = v159;
    (*(v161 + 32))(v160, v27, v159);
    v59 = v151;
    sub_26618B820();
    v60 = sub_26618B8B0();
    (*(v152 + 8))(v59, v153);
    v61 = v154;
    sub_266139C58(v60, v154);

    v62 = v158;
    if (__swift_getEnumTagSinglePayload(v61, 1, v158) == 1)
    {
      sub_2660C8040(v61, &qword_28005BF28, &qword_26618F960);
      if (qword_2814B2C38 != -1)
      {
        OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
      }

      OUTLINED_FUNCTION_37_0(v49, qword_2814B4A80);
      OUTLINED_FUNCTION_16_7();
      v63();
      v64 = sub_26618C690();
      v65 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_3(v65))
      {
        v66 = OUTLINED_FUNCTION_6_2();
        *v66 = 0;
        OUTLINED_FUNCTION_17_3();
        _os_log_impl(v67, v68, v69, v70, v66, 2u);
        OUTLINED_FUNCTION_7_2();
      }

      OUTLINED_FUNCTION_21_7();
      v71();
      sub_26618B2B0();
      return (*(v56 + 8))(v57, v58);
    }

    OUTLINED_FUNCTION_20_11();
    v101 = v147;
    (*(v59 + 32))(v147, v61, v62);
    if (sub_26618B940() & 1) != 0 || (sub_26618B930())
    {
      sub_26618B290();
LABEL_35:
      (*(v59 + 8))(v101, v62);
      return (*(v56 + 8))(v57, v58);
    }

    v109 = sub_266144F30();
    if (!v109)
    {
      sub_26618B2B0();
      goto LABEL_35;
    }

    v110 = v109;
    v111 = 1852141679;
    sub_26613BA0C();
    v113 = v112;
    v114 = sub_266145BC4(v112);
    if (v114 == 1852141679 && v115 == 0xE400000000000000)
    {
      goto LABEL_65;
    }

    v117 = OUTLINED_FUNCTION_6_9(v114);

    OUTLINED_FUNCTION_20_11();
    if (v117)
    {
      goto LABEL_67;
    }

    v111 = 0xE900000000000065;
    if (sub_266145BC4(v113) == 0x736972616D6D7573 && v118 == 0xE900000000000065)
    {
LABEL_65:
      OUTLINED_FUNCTION_20_11();
    }

    else
    {
      v120 = sub_26618D000();

      OUTLINED_FUNCTION_20_11();
      if (v120)
      {
        goto LABEL_67;
      }

      if (sub_266145BC4(v113) != 0x627265566F6ELL || v121 != 0xE600000000000000)
      {
        v123 = sub_26618D000();

        if ((v123 & 1) == 0)
        {
          v124 = v161;
          if (qword_2814B2C38 != -1)
          {
            OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
          }

          OUTLINED_FUNCTION_37_0(v49, qword_2814B4A80);
          OUTLINED_FUNCTION_16_7();
          v125();
          v126 = sub_26618C690();
          v127 = sub_26618CAB0();
          if (OUTLINED_FUNCTION_15_3(v127))
          {
            v111 = OUTLINED_FUNCTION_6_2();
            *v111 = 0;
            OUTLINED_FUNCTION_17_3();
            _os_log_impl(v128, v129, v130, v131, v111, 2u);
            OUTLINED_FUNCTION_20_11();
            OUTLINED_FUNCTION_7_2();
          }

          OUTLINED_FUNCTION_21_7();
          v132();
          goto LABEL_74;
        }

LABEL_67:
        v133 = __swift_project_boxed_opaque_existential_1((v145 + 152), *(v145 + 176));
        v134 = sub_2660FA19C(v133, v110);
        v124 = v161;
        if (qword_28005BC80 != -1)
        {
          swift_once();
        }

        v135 = sub_26612EAB0(v134, qword_28005D1A0);

        if (v135)
        {
          OUTLINED_FUNCTION_16_7();
          v136();
          v137 = sub_26618C690();
          v138 = sub_26618CAA0();
          if (OUTLINED_FUNCTION_15_3(v138))
          {
            v111 = OUTLINED_FUNCTION_6_2();
            *v111 = 0;
            OUTLINED_FUNCTION_17_3();
            _os_log_impl(v139, v140, v141, v142, v111, 2u);
            OUTLINED_FUNCTION_20_11();
            OUTLINED_FUNCTION_7_2();
          }

          OUTLINED_FUNCTION_21_7();
          v143();
          sub_26618B2A0();
          goto LABEL_75;
        }

LABEL_74:
        sub_26618B2B0();
LABEL_75:

        (*(v111 + 8))(v147, v62);
        return (*(v124 + 8))(v160, v58);
      }
    }

    goto LABEL_67;
  }

  v165 = v43 + 8;
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  OUTLINED_FUNCTION_37_0(v28, qword_2814B4A80);
  OUTLINED_FUNCTION_16_7();
  v84();
  v85 = v155;
  v86 = v156;
  v87 = v157;
  (*(v156 + 16))(v155, v50, v157);
  v88 = sub_26618C690();
  v89 = sub_26618CAB0();
  if (OUTLINED_FUNCTION_16_4(v89))
  {
    v90 = OUTLINED_FUNCTION_49_0();
    v169 = v49;
    v91 = v90;
    v164 = v90;
    v168 = OUTLINED_FUNCTION_45_1();
    v172 = v168;
    *v91 = 136315138;
    v92 = v146;
    LODWORD(v167) = v34;
    sub_26618B770();
    v93 = sub_266145588(v92);
    v94 = v87;
    v96 = v95;
    (*(v86 + 8))(v85, v94);
    v97 = sub_266103A98(v93, v96, &v172);

    v98 = v164;
    *(v164 + 4) = v97;
    _os_log_impl(&dword_2660B7000, v88, v167, "Unable to handle parse: %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v168);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v99 = v34;
    v100 = v169;
  }

  else
  {

    (*(v86 + 8))(v85, v87);
    v99 = v34;
    v100 = v49;
  }

  v166(v99, v100);
  sub_26618B2B0();
  return (*(v23 + 8))(v27, v21);
}

uint64_t sub_26612D594()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_26618C6B0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x2822009F8](sub_26612D640, 0, 0);
}

uint64_t sub_26612D640()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v2 = v0[5];
  v1 = v0[6];
  OUTLINED_FUNCTION_37_0(v0[4], qword_2814B4A98);
  (*(v2 + 16))(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_6_2();
    *v5 = 0;
    _os_log_impl(&dword_2660B7000, v3, v4, "LaunchAppNeedsValueStrategy.makePromptForValue() called", v5, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];

  (*(v7 + 8))(v6, v8);
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_2661059E8;

  return sub_26617B9FC();
}

uint64_t sub_26612D7B4()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_26618B790();
  v1[7] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B8E0();
  v1[10] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618B840();
  v1[13] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_8_2();
  type metadata accessor for AppLaunchIntent(0);
  v1[16] = OUTLINED_FUNCTION_8_2();
  v11 = sub_26618C6B0();
  v1[17] = v11;
  OUTLINED_FUNCTION_0_4(v11);
  v1[18] = v12;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v13 = sub_26618C0E0();
  v1[25] = v13;
  OUTLINED_FUNCTION_0_4(v13);
  v1[26] = v14;
  v1[27] = OUTLINED_FUNCTION_8_2();
  v15 = sub_26618B800();
  v1[28] = v15;
  OUTLINED_FUNCTION_0_4(v15);
  v1[29] = v16;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26612DA5C, 0, 0);
}

uint64_t sub_26612DA5C()
{
  v141 = v0;
  v1 = v0 + 31;
  v2 = v0[31];
  v4 = v0 + 29;
  v3 = v0[29];
  v5 = v0[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C388, qword_2661925C0);
  v136 = sub_26618B6B0();
  sub_26618B770();
  v6 = (*(v3 + 88))(v2, v5);
  if (v6 == *MEMORY[0x277D5C128])
  {
    v7 = v0[31];
    v8 = v0[26];
    v9 = v0[27];
    v10 = v0[25];
    (*(v0[29] + 96))(v7, v0[28]);
    (*(v8 + 32))(v9, v7, v10);
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    v11 = v0[24];
    v12 = v0[18];
    OUTLINED_FUNCTION_37_0(v0[17], qword_2814B4A98);
    v132 = v13;
    v130 = *(v12 + 16);
    v130(v11);
    v14 = sub_26618C690();
    v15 = sub_26618CAA0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_6_2();
      *v16 = 0;
      _os_log_impl(&dword_2660B7000, v14, v15, "LaunchApp.FlowStrategy.makeIntentFromParse() Creating intent from NLv3IntentOnly parse", v16, 2u);
      OUTLINED_FUNCTION_9_9();
    }

    v17 = v0[26];
    v18 = v0[27];
    v20 = v0[24];
    v19 = v0[25];
    v127 = v0[23];
    v22 = v0[17];
    v21 = v0[18];
    v23 = v0[16];
    v24 = v0[6];

    v25 = v20;
    v26 = *(v21 + 8);
    v26(v25, v22);
    (*(v17 + 16))(v23, v18, v19);
    v27 = __swift_project_boxed_opaque_existential_1((v24 + 152), *(v24 + 176));
    sub_26612F47C(v23, v27, v136);
    (v130)(v127, v132, v22);
    v28 = v136;
    v29 = sub_26618C690();
    LOBYTE(v17) = sub_26618CAD0();

    if (os_log_type_enabled(v29, v17))
    {
      v30 = OUTLINED_FUNCTION_49_0();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v28;
      *v31 = v28;
      v32 = v28;
      OUTLINED_FUNCTION_17_3();
      _os_log_impl(v33, v34, v35, v36, v30, 0xCu);
      sub_2660C8040(v31, &qword_28005C1F8, &unk_266190550);
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_7_3();
    }

    v37 = v0[23];
    v38 = v0[17];

    v26(v37, v38);
    v39 = [v28 requestedApplication];
    v40 = v39;
    if (v39)
    {
      v39 = type metadata accessor for Application();
    }

    else
    {
      v138 = 0;
      v139 = 0;
    }

    v93 = v0[26];
    v92 = v0[27];
    v94 = v0[25];
    v95 = v0[16];
    v96 = v0[3];
    v137 = v40;
    v140 = v39;
    type metadata accessor for LaunchAppIntent();
    sub_26618B4A0();
    sub_2660DD7D0(v95);
    (*(v93 + 8))(v92, v94);
    goto LABEL_34;
  }

  if (v6 != *MEMORY[0x277D5C160])
  {
    v134 = v0 + 28;
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v76 = v0[18];
    v75 = v0[19];
    v78 = v0[8];
    v77 = v0[9];
    v79 = v0[7];
    v80 = v0[4];
    OUTLINED_FUNCTION_37_0(v0[17], qword_2814B4A80);
    (*(v76 + 16))(v75);
    (*(v78 + 16))(v77, v80, v79);
    v81 = sub_26618C690();
    v82 = sub_26618CAB0();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = v0[30];
      v129 = v0[17];
      v131 = v0[19];
      v85 = v0[8];
      v84 = v0[9];
      v124 = v0[7];
      v126 = v0[18];
      v86 = OUTLINED_FUNCTION_49_0();
      v87 = OUTLINED_FUNCTION_45_1();
      v137 = v87;
      *v86 = 136315138;
      sub_26618B770();
      v88 = sub_266145588(v83);
      v90 = v89;
      (*(v85 + 8))(v84, v124);
      v4 = v0 + 29;
      v91 = sub_266103A98(v88, v90, &v137);

      *(v86 + 4) = v91;
      _os_log_impl(&dword_2660B7000, v81, v82, "Unable to process parse: %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v87);
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_7_2();

      (*(v126 + 8))(v131, v129);
    }

    else
    {
      v98 = v0[18];
      v97 = v0[19];
      v99 = v0[17];
      v101 = v0[8];
      v100 = v0[9];
      v102 = v0[7];

      (*(v101 + 8))(v100, v102);
      (*(v98 + 8))(v97, v99);
    }

    goto LABEL_28;
  }

  v41 = v0[15];
  v42 = v0[31];
  v43 = v0[14];
  v44 = v0[13];
  (*(v0[29] + 96))(v42, v0[28]);
  (*(v43 + 32))(v41, v42, v44);
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v134 = v0 + 13;
  v45 = v0[22];
  v46 = v0[18];
  OUTLINED_FUNCTION_37_0(v0[17], qword_2814B4A98);
  v125 = v47;
  v128 = *(v46 + 16);
  v128(v45);
  v48 = sub_26618C690();
  v49 = sub_26618CAA0();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = OUTLINED_FUNCTION_6_2();
    *v50 = 0;
    _os_log_impl(&dword_2660B7000, v48, v49, "LaunchApp.FlowStrategy.makeIntentFromParse() Creating intent from USO parse", v50, 2u);
    OUTLINED_FUNCTION_9_9();
  }

  v51 = v0[22];
  v53 = v0[17];
  v52 = v0[18];
  v55 = v0[11];
  v54 = v0[12];
  v56 = v0[10];

  v57 = *(v52 + 8);
  v57(v51, v53);
  sub_26618B820();
  v58 = sub_266144AE8();
  (*(v55 + 8))(v54, v56);
  v59 = v0[17];
  if (!v58)
  {
    (v128)(v0[20], v125, v0[17]);
    v103 = sub_26618C690();
    v104 = sub_26618CAB0();
    v4 = v0 + 14;
    if (OUTLINED_FUNCTION_15_3(v104))
    {
      v105 = OUTLINED_FUNCTION_6_2();
      *v105 = 0;
      OUTLINED_FUNCTION_17_3();
      _os_log_impl(v106, v107, v108, v109, v105, 2u);
      OUTLINED_FUNCTION_7_3();
    }

    v110 = v0[20];
    v111 = v0[17];

    v57(v110, v111);
    v1 = v0 + 15;
LABEL_28:
    sub_2660D3004();
    swift_allocError();
    *v112 = 0;
    v113 = *v1;
    v114 = *v134;
    v115 = *v4;
    swift_willThrow();

    (*(v115 + 8))(v113, v114);

    OUTLINED_FUNCTION_5_3();
    goto LABEL_35;
  }

  v135 = v57;
  v60 = v0[21];
  v61 = __swift_project_boxed_opaque_existential_1((v0[6] + 152), *(v0[6] + 176));
  v62 = v136;
  sub_26612EBE8(v58, v61, v136);
  (v128)(v60, v125, v59);

  v63 = sub_26618C690();
  v64 = sub_26618CAD0();

  v65 = os_log_type_enabled(v63, v64);
  v66 = v0[21];
  v67 = v0[17];
  if (v65)
  {
    v133 = v0[17];
    v68 = OUTLINED_FUNCTION_49_0();
    v69 = OUTLINED_FUNCTION_45_1();
    v137 = v69;
    *v68 = 136315138;
    v0[2] = v58;
    sub_26618C0D0();

    v70 = sub_26618C8D0();
    v72 = sub_266103A98(v70, v71, &v137);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_2660B7000, v63, v64, "LaunchApp.FlowStrategy.makeIntentFromParseNLv4Uso() Finished creating intent from parse: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    OUTLINED_FUNCTION_7_2();
    v62 = v136;
    OUTLINED_FUNCTION_7_2();

    v73 = v66;
    v74 = v133;
  }

  else
  {

    v73 = v66;
    v74 = v67;
  }

  v135(v73, v74);
  v117 = [v62 requestedApplication];
  v118 = v117;
  if (v117)
  {
    v117 = type metadata accessor for Application();
  }

  else
  {
    v138 = 0;
    v139 = 0;
  }

  v119 = v0[14];
  v120 = v0[15];
  v121 = v0[13];
  v96 = v0[3];
  v137 = v118;
  v140 = v117;
  type metadata accessor for LaunchAppIntent();
  sub_26618B4A0();

  (*(v119 + 8))(v120, v121);
LABEL_34:
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C380, &unk_266190DA0);
  __swift_storeEnumTagSinglePayload(v96, 0, 1, v122);

  OUTLINED_FUNCTION_5_3();
LABEL_35:

  return v116();
}

uint64_t sub_26612E5D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266107F90;

  return sub_26612D7B4();
}

uint64_t sub_26612E684()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266106AC4;

  return sub_26612D594();
}

uint64_t sub_26612E720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LaunchAppNeedsValueStrategy();
  *v8 = v4;
  v8[1] = sub_266107F90;

  return MEMORY[0x2821B9BF8](a1, a2, v9, a4);
}

uint64_t sub_26612E7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LaunchAppNeedsValueStrategy();
  *v8 = v4;
  v8[1] = sub_266107F90;

  return MEMORY[0x2821B9C00](a1, a2, v9, a4);
}

uint64_t sub_26612E8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for LaunchAppNeedsValueStrategy();
  *v12 = v6;
  v12[1] = sub_266107F90;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_26612E984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for LaunchAppNeedsValueStrategy();
  *v14 = v7;
  v14[1] = sub_266107F90;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_26612EAB0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  sub_26618D090();

  sub_26618C910();
  v11 = sub_26618D0C0();
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v11 & v12;
    if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v14 = (*(a2 + 48) + 16 * v13);
    if (*v14 == v10 && v14[1] == v9)
    {
      break;
    }

    v16 = sub_26618D000();
    v11 = v13 + 1;
  }

  while ((v16 & 1) == 0);

  return 0;
}

uint64_t sub_26612EBE8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_1();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_5();
  v104 = v14;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v102 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v102 - v19;
  v112[3] = &type metadata for ReferenceResolver;
  v112[4] = &off_2877CC6F0;
  v112[0] = swift_allocObject();
  sub_2660CFC00(a2, v112[0] + 16);
  v107 = a3;
  v21 = [a3 requestedApplication];
  if (!v21)
  {
    type metadata accessor for Application();
    v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v21 = OUTLINED_FUNCTION_10_8();
    [v107 setRequestedApplication_];
  }

  sub_266139FE4(v23, v24, v25, v26, v27, v28, v29, v30, v102, v103, v104, v105, v106, v107, v108, v109, v110[0], v110[1], v110[2], v110[3]);
  v105 = v8;
  if ((v31 & 1) == 0 && !sub_266139E9C())
  {
    v103 = v6;
    v58 = [v107 requestedApplication];
    if (v58)
    {
      v59 = v58;
      v60 = sub_26613B704();
      sub_26614484C(v60, v61, 0, 0, 0, 0);
    }

    v62 = __swift_project_boxed_opaque_existential_1(v112, &type metadata for ReferenceResolver);
    v63 = sub_2660FA19C(v62, a1);
    v64 = 0;
    v65 = MEMORY[0x277D84F90];
    v111[0] = MEMORY[0x277D84F90];
    v66 = *(v63 + 16);
    v106 = 0x8000000266199930;
    v67 = (v63 + 40);
    v6 = &off_279BC8000;
    while (1)
    {
      if (v66 == v64)
      {

        sub_266106F40(v65, v107);
        v6 = v103;
        goto LABEL_39;
      }

      if (v64 >= *(v63 + 16))
      {
        __break(1u);
        goto LABEL_55;
      }

      v69 = *(v67 - 1);
      v68 = *v67;

      v70 = [v107 isRemoteExecution];
      sub_26611C10C();
      v71 = sub_26618CB70();
      v72 = v71;
      if (v70)
      {
        v73 = sub_26618CBA0();

        if (v73)
        {
          v74 = v69 == 0x6C7070612E6D6F63 && v68 == 0xEC00000076742E65;
          if (v74 || (sub_26618D000() & 1) != 0)
          {
            v69 = 0xD000000000000015;
            v75 = v106;
            goto LABEL_35;
          }
        }
      }

      else
      {
      }

      v75 = v68;
LABEL_35:
      type metadata accessor for Application();
      v76 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      OUTLINED_FUNCTION_10_8();
      sub_26614484C(0, 0xE000000000000000, v69, v75, 0, 0);

      MEMORY[0x26677BD40](v77);
      if (*((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26618C9D0();
      }

      sub_26618C9F0();
      v65 = v111[0];
      v67 += 2;
      ++v64;
    }
  }

  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  OUTLINED_FUNCTION_37_0(v6, qword_2814B4A98);
  v32 = *(v8 + 16);
  v106 = v33;
  v103 = v32;
  v32(v20);
  v34 = sub_26618C690();
  v35 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_3(v35))
  {
    v36 = v8;
    v37 = OUTLINED_FUNCTION_6_2();
    *v37 = 0;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v38, v39, v40, v41, v37, 2u);
    v8 = v36;
    OUTLINED_FUNCTION_7_2();
  }

  v42 = *(v8 + 8);
  v42(v20, v6);
  sub_266106F40(MEMORY[0x277D84F90], v107);
  sub_26618BDF0();
  if (v111[3])
  {
    sub_2660D74A8(v111, v110);
    v43 = sub_26618BDD0();
    if (OUTLINED_FUNCTION_8_12(v43, v44, v45, v43) || (v46 = sub_26618BF80(), (OUTLINED_FUNCTION_8_12(v46, v47, v48, v46) & 1) != 0))
    {

      sub_26618BED0();

      if (v108)
      {
        sub_26618BB90();

        v49 = OUTLINED_FUNCTION_31_8();
        sub_266106F40(v49, v107);
      }
    }

    else
    {
      v95 = sub_26618BE50();
      if (OUTLINED_FUNCTION_8_12(v95, v96, v97, v95))
      {

        sub_26618BF10();
        swift_allocObject();
        sub_26618BF00();
        if (MEMORY[0x26677B1D0]())
        {
          v98 = OUTLINED_FUNCTION_31_8();
          sub_266106F40(v98, v107);
        }

        else
        {
          (v103)(v12, v106, v6);
          v99 = sub_26618C690();
          v100 = sub_26618CAB0();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = OUTLINED_FUNCTION_6_2();
            *v101 = 0;
            _os_log_impl(&dword_2660B7000, v99, v100, "Error building entity for reference resolution", v101, 2u);
            OUTLINED_FUNCTION_7_2();
          }

          else
          {
          }

          v42(v12, v6);
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v110);
  }

  sub_2660C8040(v111, &qword_28005C0A8, qword_26618FAE0);
  sub_2661040AC(v107);
  v50 = sub_2661046B8();

  if (!v50)
  {
    (v103)(v18, v106, v6);
    v51 = sub_26618C690();
    v52 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_3(v52))
    {
      v53 = OUTLINED_FUNCTION_6_2();
      *v53 = 0;
      OUTLINED_FUNCTION_17_3();
      _os_log_impl(v54, v55, v56, v57, v53, 2u);
      OUTLINED_FUNCTION_9_9();
    }

    v42(v18, v6);
  }

LABEL_39:
  if (qword_2814B2C40 != -1)
  {
LABEL_55:
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  OUTLINED_FUNCTION_37_0(v6, qword_2814B4A98);
  v79 = v104;
  v78 = v105;
  (*(v105 + 16))(v104);
  v80 = v107;
  v81 = sub_26618C690();
  v82 = v6;
  v83 = sub_26618CAA0();

  if (os_log_type_enabled(v81, v83))
  {
    v84 = OUTLINED_FUNCTION_49_0();
    v85 = OUTLINED_FUNCTION_45_1();
    v111[0] = v85;
    *v84 = 136315138;
    v86 = sub_2661040AC(v80);
    if (v86)
    {
      sub_266100294(v86);
      v88 = v87;
      v90 = v89;
    }

    else
    {
      v90 = 0xE200000000000000;
      v88 = 23899;
    }

    v91 = sub_266103A98(v88, v90, v111);

    *(v84 + 4) = v91;
    OUTLINED_FUNCTION_28_8(&dword_2660B7000, v92, v93, "LaunchAppConverter suggestedApplications: %s");
    __swift_destroy_boxed_opaque_existential_1(v85);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_7_3();
  }

  (*(v78 + 8))(v79, v82);
  return __swift_destroy_boxed_opaque_existential_1(v112);
}

uint64_t sub_26612F47C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_1();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v44[-1] - v13;
  v45 = &type metadata for ReferenceResolver;
  v46 = &off_2877CC6F0;
  v44[0] = swift_allocObject();
  sub_2660CFC00(a2, v44[0] + 16);
  v15 = [a3 requestedApplication];
  if (!v15)
  {
    type metadata accessor for Application();
    v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v15 = OUTLINED_FUNCTION_10_8();
    [a3 setRequestedApplication_];
  }

  v17 = [a3 requestedApplication];
  if (v17)
  {
    v18 = v17;
    sub_266144578();
  }

  if (sub_26614E894())
  {
    if (qword_2814B3DE0 != -1)
    {
      swift_once();
    }

    type metadata accessor for AppLaunchIntent(0);
    OUTLINED_FUNCTION_6_12();
    sub_26612F9BC(v19, 255, v20, &unk_2661939B8);
    sub_26618BDA0();
    switch(v43)
    {
      case 1:

        goto LABEL_11;
      case 4:
        goto LABEL_13;
      default:
        v21 = sub_26618D000();

        if (v21)
        {
LABEL_11:
          sub_26618BF10();
          swift_allocObject();
          sub_26618BF00();
          v22 = MEMORY[0x26677B1D0]();
          if (v22)
          {
            v23 = v22;
            __swift_project_boxed_opaque_existential_1(v44, v45);
            v24 = sub_266162360(v23);
            sub_266106F40(v24, a3);
          }

          else
          {
            if (qword_2814B2C40 != -1)
            {
              OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
            }

            OUTLINED_FUNCTION_37_0(v5, qword_2814B4A98);
            (*(v7 + 16))(v14);
            v26 = sub_26618C690();
            v27 = sub_26618CAB0();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = OUTLINED_FUNCTION_6_2();
              *v28 = 0;
              _os_log_impl(&dword_2660B7000, v26, v27, "Error building entity for reference resolution", v28, 2u);
              OUTLINED_FUNCTION_7_2();
            }

            else
            {
            }

            (*(v7 + 8))(v14, v5);
          }
        }

        else
        {
LABEL_13:
          __swift_project_boxed_opaque_existential_1(v44, v45);
          v25 = sub_266162714();
          sub_266106F40(v25, a3);
        }

        if (qword_2814B2C40 != -1)
        {
          OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
        }

        OUTLINED_FUNCTION_37_0(v5, qword_2814B4A98);
        (*(v7 + 16))(v11);
        v29 = a3;
        v30 = sub_26618C690();
        v31 = sub_26618CAA0();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = OUTLINED_FUNCTION_49_0();
          v33 = OUTLINED_FUNCTION_45_1();
          v43 = v33;
          *v32 = 136315138;
          v34 = sub_2661040AC(v29);
          if (v34)
          {
            sub_266100294(v34);
            v36 = v35;
            v38 = v37;
          }

          else
          {
            v38 = 0xE200000000000000;
            v36 = 23899;
          }

          v39 = sub_266103A98(v36, v38, &v43);

          *(v32 + 4) = v39;
          OUTLINED_FUNCTION_28_8(&dword_2660B7000, v40, v41, "LaunchAppConverter suggestedApplications: %s");
          __swift_destroy_boxed_opaque_existential_1(v33);
          OUTLINED_FUNCTION_9_9();
          OUTLINED_FUNCTION_7_3();
        }

        (*(v7 + 8))(v11, v5);
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_26612F9BC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_26612FA04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for BaseDialogProvider();
  v31[3] = v8;
  v31[4] = &off_2877CAA90;
  v31[0] = a2;
  v29 = &type metadata for ReferenceResolver;
  v30 = &off_2877CC6F0;
  v9 = swift_allocObject();
  v28[0] = v9;
  v10 = *(a3 + 16);
  *(v9 + 16) = *a3;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a3 + 32);
  v27[3] = sub_26618B470();
  v27[4] = MEMORY[0x277D5BD58];
  v27[0] = a4;
  type metadata accessor for LaunchAppNeedsValueStrategy();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v31, v8);
  MEMORY[0x28223BE20](v12);
  (*(v14 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);

  v26[3] = &type metadata for ReferenceResolver;
  v26[4] = &off_2877CC6F0;
  v19 = swift_allocObject();
  v26[0] = v19;
  v20 = *(v17 + 1);
  *(v19 + 16) = *v17;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v17 + 4);
  sub_2660C5864(a1, v11 + 16);
  sub_2660C5864(v26, v11 + 152);
  sub_2660C5864(v27, v11 + 192);
  sub_2660C5864(v11 + 16, v11 + 56);
  sub_2660C5864(v11 + 192, v11 + 96);
  v21 = sub_26618C8A0();
  LODWORD(v8) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v26);
  *(v11 + 144) = v8 == 1;
  sub_2660C5864(v11 + 56, v25);
  type metadata accessor for LocUtil();
  v22 = swift_allocObject();
  sub_2660CD484(v25, v22 + 16);
  *(v11 + 136) = v22;
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v11;
}

id OUTLINED_FUNCTION_10_8()
{

  return sub_2661038FC(0, 0, 0, 0xE000000000000000);
}

void OUTLINED_FUNCTION_28_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_31_8()
{
  __swift_project_boxed_opaque_existential_1((v1 - 128), *(v1 - 104));

  return sub_266162360(v0);
}

uint64_t sub_26612FDB4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D5BC40];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C660, &unk_2661926B0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_26612FE34(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_26618B030();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_26618C6B0();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26612FF50, 0, 0);
}

uint64_t sub_26612FF50()
{
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_2814B4A80);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2660B7000, v5, v6, "LaunchAppServerFallbackFlow.execute() called", v7, 2u);
    MEMORY[0x26677CC30](v7, -1, -1);
  }

  v9 = v0[7];
  v8 = v0[8];
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[3];
  v13 = v0[4];

  (*(v9 + 8))(v8, v10);
  (*(v13 + 104))(v11, *MEMORY[0x277D5B8A0], v12);
  sub_26618B370();
  (*(v13 + 8))(v11, v12);

  v14 = v0[1];

  return v14();
}

uint64_t sub_266130114(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LaunchAppServerFallbackFlow();
  sub_266130418();
  return sub_26618AFB0();
}

uint64_t sub_266130194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266130244;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_266130244(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_266130364(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26611BBA8;

  return sub_26612FE34(a1);
}

unint64_t sub_266130418()
{
  result = qword_28005C658;
  if (!qword_28005C658)
  {
    type metadata accessor for LaunchAppServerFallbackFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C658);
  }

  return result;
}

uint64_t sub_26613046C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_26618B500();
  v2[5] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v2[6] = v4;
  v2[7] = swift_task_alloc();
  v5 = sub_26618C6B0();
  v2[8] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v2[9] = v6;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266130590, 0, 0);
}

uint64_t sub_266130590()
{
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  v1 = v0[12];
  v2 = v0[9];
  v34 = __swift_project_value_buffer(v0[8], qword_2814B4A80);
  v35 = *(v2 + 16);
  v35(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_6_2();
    *v5 = 0;
    _os_log_impl(&dword_2660B7000, v3, v4, "LaunchAppUnsupportedValueFlow.execute() called", v5, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];

  v36 = *(v8 + 8);
  v36(v6, v7);
  OUTLINED_FUNCTION_3_14();
  sub_26618B4F0();
  v12 = sub_26618B110();
  v13 = *(v10 + 8);
  v13(v9, v11);
  if (v12 & 1) != 0 || (OUTLINED_FUNCTION_3_14(), (sub_26618B190()) || (OUTLINED_FUNCTION_3_14(), (sub_26618B1A0()))
  {
    (v35)(v0[10], v34, v0[8]);
    v14 = sub_26618C690();
    v15 = sub_26618CAA0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_6_2();
      *v16 = 0;
      _os_log_impl(&dword_2660B7000, v14, v15, "LaunchAppHandleIntentFlow.wrappedFlow.execute() called", v16, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    v17 = v0[10];
    v18 = v0[8];

    v36(v17, v18);
    v37 = (*MEMORY[0x277D5B870] + MEMORY[0x277D5B870]);
    v19 = swift_task_alloc();
    v0[13] = v19;
    *v19 = v0;
    v19[1] = sub_26611C858;
    v20 = v0[3];

    return v37(v20);
  }

  else
  {
    v22 = v0[11];
    v23 = v0[7];
    v24 = v0[8];
    v25 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C068, &unk_26618F7D0);
    v26 = sub_26618AE80();
    OUTLINED_FUNCTION_0_4(v26);
    *(swift_allocObject() + 16) = xmmword_26618E190;
    sub_26618B4F0();
    sub_26618AE70();
    v13(v23, v25);
    v27 = sub_26618AC10();

    (v35)(v22, v34, v24);
    v28 = sub_26618C690();
    v29 = sub_26618CAA0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_6_2();
      *v30 = 0;
      _os_log_impl(&dword_2660B7000, v28, v29, "Device is not authenticated - pushing an unlock flow", v30, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    v31 = v0[11];
    v32 = v0[8];

    v36(v31, v32);
    v0[2] = v27;
    sub_26618AE60();
    sub_26618B330();

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_266130A40(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LaunchAppUnsupportedValueFlow();
  OUTLINED_FUNCTION_0_13();
  sub_266131060(v2, v3, v4, &unk_266192738);
  return sub_26618AFB0();
}

uint64_t sub_266130ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v9 = sub_26618C6B0();
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C388, qword_2661925C0);
  v12 = sub_26618B6B0();
  v13 = [v12 isNLv4Parse];

  sub_26611C10C();
  v14 = sub_26618CB70();
  v15 = v14;
  if (!v13)
  {

LABEL_10:
    *&v39[0] = a3;
    type metadata accessor for LaunchAppUnsupportedValueStrategy();
    sub_266131060(qword_2814B3380, 255, type metadata accessor for LaunchAppUnsupportedValueStrategy, &unk_2661928B0);
    OUTLINED_FUNCTION_4_15();
    v25 = sub_26618AEF0();
    v26 = v25(a1, a2);

    *&v39[0] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C668, &unk_2661927C0);
    swift_allocObject();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C650, &qword_266192488);
    sub_26612C558();
    v27 = OUTLINED_FUNCTION_4_15();
    v28 = MEMORY[0x26677A110](v27);
    sub_2660C5864(a4, v39);
    sub_2660C5864(v36, v38);
    __swift_mutable_project_boxed_opaque_existential_1(v38, v38[3]);
    v37[3] = &type metadata for AppLaunchFlowFactoryImpl;
    v37[4] = &off_2877CD5D8;
    type metadata accessor for LaunchAppUnsupportedValueFlow();
    v29 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v37, &type metadata for AppLaunchFlowFactoryImpl);
    v29[11] = &type metadata for AppLaunchFlowFactoryImpl;
    v29[12] = &off_2877CD5D8;
    v29[2] = v28;
    sub_2660CD484(v39, (v29 + 3));

    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v38);
    *&v39[0] = v29;
    OUTLINED_FUNCTION_0_13();
    sub_266131060(v30, v31, v32, &unk_266192738);
    v24 = sub_26618AFA0();

    return v24;
  }

  v16 = sub_26618CBA0();

  if ((v16 & 1) == 0)
  {
    goto LABEL_10;
  }

  v17 = sub_26618B6C0();
  v18 = [v17 unsupportedReason];

  if (v18 != 5)
  {
    goto LABEL_10;
  }

  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  v19 = __swift_project_value_buffer(v9, qword_2814B4A80);
  v20 = v35;
  (*(v35 + 16))(v11, v19, v9);
  v21 = sub_26618C690();
  v22 = sub_26618CAA0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_6_2();
    *v23 = 0;
    _os_log_impl(&dword_2660B7000, v21, v22, "RCHChildFlowProducers.unsupportedValueFlowCompletion continues in server fallback flow", v23, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  (*(v20 + 8))(v11, v9);
  type metadata accessor for LaunchAppServerFallbackFlow();
  *&v39[0] = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C650, &qword_266192488);
  swift_allocObject();
  sub_266131060(&qword_28005C658, 255, type metadata accessor for LaunchAppServerFallbackFlow, &unk_266192628);
  OUTLINED_FUNCTION_4_15();
  return sub_26618AE90();
}

uint64_t sub_266130F7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26611CD84;

  return sub_26613046C(a1);
}

uint64_t sub_266131060(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2661310D0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  v7 = OUTLINED_FUNCTION_0_4(v6);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  v13 = *(a3 + 16);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v24 = MEMORY[0x277D84F90];
  sub_26612A5D0(0, v13, 0);
  v14 = v24;
  v15 = sub_26618AA00();
  OUTLINED_FUNCTION_0_4(v15);
  v17 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v22 = *(v18 + 72);
  while (1)
  {
    a1(v17);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v20 = *(v24 + 16);
    v19 = *(v24 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_26612A5D0(v19 > 1, v20 + 1, 1);
    }

    *(v24 + 16) = v20 + 1;
    sub_2661365D4(v12, v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20);
    v17 += v22;
    if (!--v13)
    {
      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2661312A0(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    sub_26618CE00();
    v9 = sub_26618C7A0();
    OUTLINED_FUNCTION_0_4(v9);
    v11 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    while (1)
    {
      a1(&v14, v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_26618CDE0();
      sub_26618CE10();
      sub_26618CE20();
      sub_26618CDF0();
      v11 += v13;
      if (!--v6)
      {
        return v15;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_2661313DC(uint64_t a1)
{
  sub_26618B810();
  v1 = type metadata accessor for BaseDialogProvider();
  v2 = swift_allocObject();
  sub_26618B810();
  type metadata accessor for LocUtil();
  v3 = swift_allocObject();
  sub_2660B9EB8(&v32, v3 + 16);
  v4 = sub_26618B470();
  swift_allocObject();
  v5 = sub_26618B460();
  v6 = type metadata accessor for MarketplaceInfoProvider();
  swift_allocObject();
  v7 = sub_26615E04C();
  if (qword_2814B4A70 != -1)
  {
    swift_once();
  }

  v8 = static InstalledAppProvider.shared;
  v33 = v1;
  v34 = &off_2877CAA90;
  *&v32 = v2;
  v30 = v4;
  v31 = MEMORY[0x277D5BD58];
  *&v29 = v5;
  v28[3] = &type metadata for AppLaunchFeatureFlagsImpl;
  v28[4] = &off_2877CD168;
  v27[4] = &off_2877CC370;
  v27[3] = v6;
  v27[0] = v7;
  v26 = &protocol witness table for InstalledAppProvider;
  v25 = type metadata accessor for InstalledAppProvider();
  *&v24 = v8;
  type metadata accessor for LaunchAppUnsupportedValueStrategy();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v1);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = (v12 - v11);
  (*(v14 + 16))(v12 - v11);
  __swift_mutable_project_boxed_opaque_existential_1(v28, &type metadata for AppLaunchFeatureFlagsImpl);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v27, v6);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  v18 = (v17 - v16);
  (*(v19 + 16))(v17 - v16);
  v20 = *v13;
  v21 = *v18;
  v9[10] = v1;
  v9[11] = &off_2877CAA90;
  v9[7] = v20;
  v9[22] = &type metadata for AppLaunchFeatureFlagsImpl;
  v9[23] = &off_2877CD168;
  v9[27] = v6;
  v9[28] = &off_2877CC370;
  v9[24] = v21;
  sub_2660B9EB8(v35, (v9 + 2));
  v9[12] = v3;
  sub_2660B9EB8(&v29, (v9 + 13));
  v9[18] = a1;
  sub_2660B9EB8(&v24, (v9 + 29));

  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(&v32);
  return v9;
}

uint64_t sub_266131764()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_26618C6B0();
  v1[5] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_8_2();
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26613180C()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  __swift_project_value_buffer(v0[5], qword_2814B4A98);
  v1 = OUTLINED_FUNCTION_8_3();
  v2(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_6_2();
    *v5 = 0;
    _os_log_impl(&dword_2660B7000, v3, v4, "LaunchApp.UnsupportedValueStrategy.makeUnsupportedValueOutput() called", v5, 2u);
    OUTLINED_FUNCTION_28_3();
  }

  v6 = OUTLINED_FUNCTION_12_1();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C388, qword_2661925C0);
  v8 = sub_26618B6B0();
  v0[8] = v8;
  v9 = sub_26618B6C0();
  v10 = [v9 unsupportedReason];

  LaunchAppApplicationUnsupportedReason.init(rawValue:)(v10);
  if (v11)
  {
    v12 = sub_2660D3004();
    OUTLINED_FUNCTION_31_5(&type metadata for AppLaunchError, v12);
    *v13 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_41_3();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[9] = v23;
    *v23 = v24;
    v23[1] = sub_266131A20;
    OUTLINED_FUNCTION_41_3();

    return sub_266131C7C();
  }
}

uint64_t sub_266131A20()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266131B1C()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_266131B80()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_266131BE4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_3_6();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_266131C0C()
{
  OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C388, qword_2661925C0);
  sub_26618B6B0();
  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_266131C7C()
{
  OUTLINED_FUNCTION_1_0();
  if (v1 == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 24) = v2;
    *v2 = v0;
    v2[1] = sub_266131DA4;

    return sub_2661327D4();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 16) = v4;
    *v4 = v0;
    v4[1] = sub_2660D2E00;

    return sub_266131E84();
  }
}

uint64_t sub_266131DA4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_266131E84()
{
  OUTLINED_FUNCTION_18();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v4);
  v1[11] = OUTLINED_FUNCTION_8_2();
  v5 = sub_26618B6A0();
  v1[12] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618C340();
  OUTLINED_FUNCTION_3_0(v7);
  v1[15] = OUTLINED_FUNCTION_8_2();
  v8 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266131F6C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[9];
  if (v1 == 4)
  {
    type metadata accessor for LaunchAppCATPatternsExecutor(0);
    sub_26618C330();
    v0[19] = sub_26618C2D0();
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_38_1(v4);

    return sub_2660BE600(0);
  }

  else if (v1 == 3)
  {
    type metadata accessor for LaunchAppCATPatternsExecutor(0);
    sub_26618C330();
    v0[16] = sub_26618C2D0();
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_38_1(v2);

    return sub_2660BF3BC(0);
  }

  else
  {
    v5 = sub_2660D3004();
    OUTLINED_FUNCTION_31_5(&type metadata for AppLaunchError, v5);
    *v6 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_40_4();

    OUTLINED_FUNCTION_5_3();

    return v7();
  }
}

uint64_t sub_266132140()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  v3[18] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266132248()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = v0[3];
  v2 = v0[10];
  v0[22] = v1;
  v1;
  sub_26618B1B0();
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_28_2((v2 + 104));
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[23] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_7_13(v3);
  OUTLINED_FUNCTION_41_3();

  return MEMORY[0x2821BB480](v5);
}

uint64_t sub_2661322F0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  v3[21] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2661323F8()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = v0[6];
  v2 = v0[10];
  v0[22] = v1;
  v1;
  sub_26618B1B0();
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_28_2((v2 + 104));
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[23] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_7_13(v3);
  OUTLINED_FUNCTION_41_3();

  return MEMORY[0x2821BB480](v5);
}

uint64_t sub_2661324A0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2661325B4()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();

  v1 = OUTLINED_FUNCTION_12_1();
  v2(v1);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_41_3();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_266132650()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_40_4();

  OUTLINED_FUNCTION_5_3();

  return v0();
}

uint64_t sub_2661326C8()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_40_4();

  OUTLINED_FUNCTION_5_3();

  return v0();
}

uint64_t sub_266132740()
{
  OUTLINED_FUNCTION_1_0();

  v1 = OUTLINED_FUNCTION_11_0();
  v2(v1);
  OUTLINED_FUNCTION_40_4();

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_2661327D4()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_26618C6B0();
  v1[5] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_8_2();
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26613287C()
{
  OUTLINED_FUNCTION_19();
  v1 = [*(v0 + 24) requestedApplication];
  if (v1 && (*(v0 + 64) = sub_26610410C(v1), (*(v0 + 72) = v2) != 0))
  {
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_266132A54;
    v4 = *(v0 + 24);

    return sub_266135728(v4);
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    __swift_project_value_buffer(*(v0 + 40), qword_2814B4A98);
    v6 = OUTLINED_FUNCTION_8_3();
    v7(v6);
    v8 = sub_26618C690();
    v9 = sub_26618CAB0();
    if (os_log_type_enabled(v8, v9))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v10, v11, "Unable to get app name, cannot construct UnsupportedValueStrategy response");
      OUTLINED_FUNCTION_28_3();
    }

    v12 = OUTLINED_FUNCTION_12_1();
    v13(v12);
    v14 = sub_2660D3004();
    OUTLINED_FUNCTION_31_5(&type metadata for AppLaunchError, v14);
    *v15 = 6;
    swift_willThrow();

    OUTLINED_FUNCTION_5_3();

    return v16();
  }
}

uint64_t sub_266132A54()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  v5[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else if (v3)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v5[12] = v12;
    *v12 = v13;
    v12[1] = sub_266132C40;

    return sub_266132EF4();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v5[13] = v14;
    *v14 = v15;
    v14[1] = sub_266132D68;

    return sub_2661343F0();
  }
}

uint64_t sub_266132C40()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_266132D68()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_266132E90()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_5_3();

  return v0();
}

uint64_t sub_266132EF4()
{
  OUTLINED_FUNCTION_18();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v1[22] = v5;
  v6 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v6);
  v1[27] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B6A0();
  v1[28] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[29] = v8;
  v1[30] = OUTLINED_FUNCTION_8_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C1E8, &qword_266192910);
  v1[31] = v9;
  OUTLINED_FUNCTION_3_0(v9);
  v1[32] = OUTLINED_FUNCTION_25_0();
  v1[33] = swift_task_alloc();
  v10 = type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(0);
  v1[34] = v10;
  OUTLINED_FUNCTION_3_0(v10);
  v1[35] = OUTLINED_FUNCTION_8_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C670, &qword_266192918);
  OUTLINED_FUNCTION_3_0(v11);
  v1[36] = OUTLINED_FUNCTION_8_2();
  v12 = sub_26618AA00();
  v1[37] = v12;
  OUTLINED_FUNCTION_0_4(v12);
  v1[38] = v13;
  v1[39] = OUTLINED_FUNCTION_25_0();
  v1[40] = swift_task_alloc();
  v14 = sub_26618C6B0();
  v1[41] = v14;
  OUTLINED_FUNCTION_0_4(v14);
  v1[42] = v15;
  v1[43] = OUTLINED_FUNCTION_25_0();
  v1[44] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

void sub_2661330FC()
{
  v54 = v0;
  if (qword_2814B2C38 != -1)
  {
LABEL_27:
    swift_once();
  }

  v1 = v0[44];
  v2 = v0[42];
  v3 = __swift_project_value_buffer(v0[41], qword_2814B4A80);
  v50 = *(v2 + 16);
  v51 = v3;
  v50(v1);
  v4 = sub_26618C690();
  v5 = sub_26618CA90();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_6_2();
    *v6 = 0;
    _os_log_impl(&dword_2660B7000, v4, v5, "LaunchAppUnsupportedValueStrategy: building view with app results", v6, 2u);
    MEMORY[0x26677CC30](v6, -1, -1);
  }

  v7 = v0[44];
  v9 = v0[41];
  v8 = v0[42];
  v10 = v0[25];

  v49 = *(v8 + 8);
  v49(v7, v9);
  v11 = sub_266135BF0(v10);
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *(v11 + 16);
    v52 = v0[38];
    v15 = (v52 + 32);
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      v0[45] = v16;
      if (v14 == v13)
      {
        break;
      }

      if (v13 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v17 = v0[36];
      *v53 = *(v12 + 16 * v13 + 32);
      sub_2660C924C(v53[0], v53[1]);
      sub_266133FA4(v53, v17);
      v19 = v0[36];
      v18 = v0[37];
      sub_2660C55C0(v53[0], v53[1]);
      if (__swift_getEnumTagSinglePayload(v19, 1, v18) == 1)
      {
        sub_2660BF79C(v0[36], &qword_28005C670, &qword_266192918);
      }

      else
      {
        v21 = v0[39];
        v20 = v0[40];
        v22 = v0[37];
        v23 = *v15;
        (*v15)(v20, v0[36], v22);
        v23(v21, v20, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_32_2();
          sub_266129CE4(v27, v28, v29, v30);
          v16 = v31;
        }

        v24 = *(v16 + 16);
        if (v24 >= *(v16 + 24) >> 1)
        {
          OUTLINED_FUNCTION_32_2();
          sub_266129CE4(v32, v33, v34, v35);
          v16 = v36;
        }

        v25 = v0[39];
        v26 = v0[37];
        *(v16 + 16) = v24 + 1;
        v23(v16 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v24, v25, v26);
      }

      ++v13;
    }

    if (*(v16 + 16))
    {
      __swift_project_boxed_opaque_existential_1((v0[26] + 192), *(v0[26] + 216));
      v37 = swift_task_alloc();
      v0[46] = v37;
      *v37 = v0;
      v37[1] = sub_2661335D0;
      OUTLINED_FUNCTION_20_2();

      __asm { BR              X3 }
    }
  }

  (v50)(v0[43], v51, v0[41]);
  v40 = sub_26618C690();
  v41 = sub_26618CAC0();
  if (os_log_type_enabled(v40, v41))
  {
    *OUTLINED_FUNCTION_6_2() = 0;
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v42, v43, "LaunchAppUnsupportedValueStrategy: attempted to create ResultBasedView, but found no app results");
    OUTLINED_FUNCTION_28_3();
  }

  v44 = OUTLINED_FUNCTION_12_1();
  (v49)(v44);
  v45 = sub_2660D3004();
  OUTLINED_FUNCTION_31_5(&type metadata for AppLaunchError, v45);
  *v46 = 8;
  swift_willThrow();
  OUTLINED_FUNCTION_25_8();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_20_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2661335D0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 376) = v3;

  v4 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2661336BC()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 360);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = sub_26617CDCC(*(v0 + 376));
  *(v0 + 384) = v5;
  v6 = *(v1 + 16);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 48) = v7 & 1;
  *(v0 + 56) = v6;

  v8 = swift_task_alloc();
  *(v0 + 392) = v8;
  *v8 = v0;
  v8[1] = sub_266133798;

  return sub_2660C19FC();
}

uint64_t sub_266133798()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v3[18] = v1;
  v3[19] = v5;
  v3[20] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  v3[50] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2661338AC()
{
  v36 = v0 + 8;
  v1 = v0[47];
  if (v1[2])
  {
    v2 = v1[7];
    v33 = v1[6];
    v34 = v1[4];
    v35 = v1[5];

    v32 = v2;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v32 = 0;
  }

  v3 = v0[45];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[26];

  sub_2660C5864(v6 + 232, v36);
  v7 = swift_task_alloc();
  *(v7 + 16) = v36;
  v8 = sub_2661310D0(sub_2660E1F5C, v7, v3);

  v9 = type metadata accessor for AppLaunchDataModels.AppResultSashModel(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
  sub_2660BF73C(v4, v5, &qword_28005C1E8, &qword_266192910);

  sub_26618AB90();
  sub_2660BF79C(v4, &qword_28005C1E8, &qword_266192910);
  v0[21] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C200, &qword_266194C10);
  sub_26618AB90();
  v10 = *(v8 + 16);

  if (v10 <= 1)
  {
    sub_2660E1F7C(v34, v35, v33, v32);
  }

  else if (v35)
  {
    v11 = v0[33];
    sub_26616DE6C();
    v12 = OUTLINED_FUNCTION_12_1();
    sub_2660BF73C(v12, v13, &qword_28005C1E8, &qword_266192910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C208, &unk_266192930);
    sub_26618ABC0();
    sub_2660BF79C(v11, &qword_28005C1E8, &qword_266192910);
    goto LABEL_9;
  }

LABEL_9:
  v14 = v0[19];
  v15 = v0[45];
  v16 = v0[35];
  v17 = v0[26];
  v0[51] = v14;
  __swift_destroy_boxed_opaque_existential_1(v36);
  sub_26618B1B0();
  *(swift_task_alloc() + 16) = v15;
  sub_26618B620();

  OUTLINED_FUNCTION_28_2((v17 + 104));
  v0[16] = type metadata accessor for AppLaunchDataModels(0);
  OUTLINED_FUNCTION_12_10();
  v0[17] = sub_266136654(v18, v19, &protocol conformance descriptor for AppLaunchDataModels);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 13);
  sub_26613651C(v16, boxed_opaque_existential_0, type metadata accessor for AppLaunchDataModels.AppResultWrapperModel);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v21 = swift_allocObject();
  v0[52] = v21;
  *(v21 + 16) = xmmword_26618F7E0;
  *(v21 + 32) = v14;
  v22 = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[53] = v23;
  *v23 = v24;
  v23[1] = sub_266133C90;
  OUTLINED_FUNCTION_34_5();

  return MEMORY[0x2821BB468](v25, v26, v27, v28, v29, v30);
}

uint64_t sub_266133C90()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 104));
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266133D90()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);

  (*(v2 + 8))(v3, v4);
  sub_26613657C(v1, type metadata accessor for AppLaunchDataModels.AppResultWrapperModel);

  OUTLINED_FUNCTION_5_3();

  return v5();
}

void sub_266133EB4()
{

  OUTLINED_FUNCTION_25_8();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_49_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266133FA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26618C6B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26618C3C0();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = *a1;
  v10 = a1[1];
  v12 = sub_26618AA00();
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_2660C924C(v11, v10);
  sub_26618C3B0();
  sub_266136654(&qword_28005C500, MEMORY[0x277D390F0], MEMORY[0x277D390E8]);
  sub_26618C3D0();
  if (v2)
  {
    if (qword_2814B2C38 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v5, qword_2814B4A80);
    (*(v6 + 16))(v8, v13, v5);
    v14 = v2;
    v15 = sub_26618C690();
    v16 = v8;
    v17 = sub_26618CAB0();

    if (os_log_type_enabled(v15, v17))
    {
      v18 = swift_slowAlloc();
      v31 = v6;
      v19 = v18;
      v20 = swift_slowAlloc();
      v30 = v16;
      v21 = v20;
      *&v32[0] = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v22 = sub_26618D040();
      v24 = sub_266103A98(v22, v23, v32);
      v29 = v5;
      v25 = a2;
      v26 = v24;

      *(v19 + 4) = v26;
      a2 = v25;
      _os_log_impl(&dword_2660B7000, v15, v17, "LaunchAppUnsupportedValueStrategy: unable to deserialize pegasus app result: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x26677CC30](v21, -1, -1);
      MEMORY[0x26677CC30](v19, -1, -1);

      (*(v31 + 8))(v30, v29);
    }

    else
    {

      (*(v6 + 8))(v16, v5);
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v27, 1, v12);
}

uint64_t sub_266134318(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_26618B650();
  sub_26618B680();
  sub_266148EFC();
  v5 = sub_26618B440();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  sub_26618B660();
  return sub_26618B640();
}

uint64_t sub_2661343F0()
{
  OUTLINED_FUNCTION_18();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v5 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  OUTLINED_FUNCTION_3_0(v5);
  v1[18] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618AB50();
  v1[19] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[20] = v7;
  v1[21] = OUTLINED_FUNCTION_25_0();
  v1[22] = swift_task_alloc();
  v8 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v8);
  v1[23] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618B6A0();
  v1[24] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[25] = v10;
  v1[26] = OUTLINED_FUNCTION_8_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4D0, &qword_266191AA8);
  OUTLINED_FUNCTION_3_0(v11);
  v1[27] = OUTLINED_FUNCTION_25_0();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266134574()
{
  v1 = *(v0 + 136);
  __swift_storeEnumTagSinglePayload(*(v0 + 232), 1, 1, *(v0 + 152));
  v2 = *(v1 + 144);
  if (v2)
  {
    v3 = v2;
    v4 = sub_26618C4C0();
    v6 = v5;

    v7 = 0;
    v8 = 0;
LABEL_8:
    *(v0 + 296) = v6;
    *(v0 + 304) = 0;
    *(v0 + 280) = v7;
    *(v0 + 288) = v8;
    v26 = *(v0 + 128);
    *(v0 + 16) = *(v0 + 120);
    *(v0 + 24) = v26;
    *(v0 + 32) = v4;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 40) = v6;
    *(v0 + 64) = 1;
    v27 = swift_task_alloc();
    *(v0 + 312) = v27;
    *v27 = v0;
    OUTLINED_FUNCTION_9_12(v27);

    return sub_2660C1068();
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 136) + 16), *(*(v0 + 136) + 40));
  v9 = OUTLINED_FUNCTION_11_0();
  if ((sub_2660C8128(v9, v10) & 1) == 0)
  {
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    v17 = *(v0 + 152);
    v18 = *(v0 + 128);
    v19 = *(v0 + 120);

    v7 = sub_26617CA00(0xD000000000000010, 0x80000002661993E0);
    v8 = v20;
    v21 = static AppSearchCommands.searchAppStoreAceCommand(appName:)(v19, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_26618E190;
    v23 = sub_26618AB80();
    v24 = MEMORY[0x277D63778];
    *(v22 + 56) = v23;
    *(v22 + 64) = v24;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v22 + 32));
    *boxed_opaque_existential_0 = v21;
    *(boxed_opaque_existential_0 + 8) = 0;
    (*(*(v23 - 8) + 104))();
    sub_26618AB60();
    sub_2660BF79C(v15, &qword_28005C4D0, &qword_266191AA8);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
    sub_266135C48(v16, v15);
    v4 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  v11 = *(v0 + 136);
  v12 = *__swift_project_boxed_opaque_existential_1((v11 + 192), *(v11 + 216));
  v13 = swift_task_alloc();
  *(v0 + 240) = v13;
  *v13 = v0;
  v13[1] = sub_266134878;

  return sub_2661361E0(v12, v11 + 232);
}

uint64_t sub_266134878()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  v1[31] = v3;
  v1[32] = v4;
  v1[33] = v5;
  v1[34] = v6;

  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266134968()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = *(v0 + 272);
    v3 = *(v0 + 248);
    if (v1 == 0x8000000266199A10 && v3 == 0xD000000000000012)
    {
      v39 = 0;
      v40 = 0;
    }

    else
    {
      if (OUTLINED_FUNCTION_26_5(v3))
      {
        v5 = 0;
        v6 = 0;
      }

      else
      {

        v5 = *(v0 + 264);
        v6 = *(v0 + 272);
      }

      if ((OUTLINED_FUNCTION_26_5(*(v0 + 248)) & 1) == 0)
      {
        v25 = v2;

        v7 = sub_26617CA00(0xD000000000000015, 0x8000000266199A30);
        if (v26)
        {
          v27 = *(v0 + 264);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4B0, &qword_266196770);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_26618E190;
          *(v28 + 56) = MEMORY[0x277D837D0];
          *(v28 + 64) = sub_2661120AC();
          *(v28 + 32) = v27;
          *(v28 + 40) = v25;

          v7 = sub_26618C8C0();
          v8 = v29;
        }

        else
        {
          v8 = 0;
        }

        v31 = *(v0 + 224);
        v30 = *(v0 + 232);
        v32 = *(v0 + 152);
        static AppSearchCommands.searchMarketplaceActionProperty(appName:marketplace:)(*(v0 + 120), *(v0 + 128), *(v0 + 248), v1);

        sub_2660BF79C(v30, &qword_28005C4D0, &qword_266191AA8);
        __swift_storeEnumTagSinglePayload(v31, 0, 1, v32);
        sub_266135C48(v31, v30);
        goto LABEL_18;
      }

      v39 = v5;
      v40 = v6;
    }

    v36 = *(v0 + 224);
    v37 = *(v0 + 232);
    v38 = *(v0 + 152);
    v9 = *(v0 + 128);
    v10 = *(v0 + 120);

    v11 = OUTLINED_FUNCTION_31_9();
    sub_2661364D0(v11, v12, v13, v14);

    v15 = OUTLINED_FUNCTION_31_9();
    sub_2660E1F7C(v15, v16, v17, v18);
    v7 = sub_26617CA00(0xD000000000000010, 0x80000002661993E0);
    v8 = v19;
    v20 = static AppSearchCommands.searchAppStoreAceCommand(appName:)(v10, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_26618E190;
    v22 = sub_26618AB80();
    v23 = MEMORY[0x277D63778];
    *(v21 + 56) = v22;
    *(v21 + 64) = v23;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v21 + 32));
    *boxed_opaque_existential_0 = v20;
    *(boxed_opaque_existential_0 + 8) = 0;
    (*(*(v22 - 8) + 104))();
    sub_26618AB60();
    sub_2660BF79C(v37, &qword_28005C4D0, &qword_266191AA8);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v38);
    sub_266135C48(v36, v37);
    v5 = v39;
    v6 = v40;
  }

  else
  {

    v7 = 0;
    v8 = 0;
    v5 = 0;
    v6 = 0;
  }

LABEL_18:
  *(v0 + 296) = 0;
  *(v0 + 304) = v6;
  *(v0 + 280) = v7;
  *(v0 + 288) = v8;
  v33 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 120);
  *(v0 + 24) = v33;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  *(v0 + 64) = v1 != 0;
  v34 = swift_task_alloc();
  *(v0 + 312) = v34;
  *v34 = v0;
  OUTLINED_FUNCTION_9_12(v34);

  return sub_2660C1068();
}

uint64_t sub_266134D4C(uint64_t a1)
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v3 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  *(v3 + 320) = v7;
  *(v3 + 328) = v1;

  if (v1)
  {
  }

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_41_3();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266134EC4(uint64_t a1)
{
  v2 = v1[36];
  sub_26618B1B0();
  sub_26618B620();
  if (!v2)
  {
LABEL_4:
    v6 = v1[40];
    OUTLINED_FUNCTION_28_2((v1[17] + 104));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v7 = swift_allocObject();
    v1[44] = v7;
    *(v7 + 16) = xmmword_26618F7E0;
    *(v7 + 32) = v6;
    v8 = v6;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v1[45] = v9;
    *v9 = v10;
    v9[1] = sub_266135428;
    OUTLINED_FUNCTION_49_1();

    return MEMORY[0x2821BB488](v11, v12, v13, v14, v15);
  }

  v3 = v1[27];
  v4 = v1[19];
  sub_2660BF73C(v1[29], v3, &qword_28005C4D0, &qword_266191AA8);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    v5 = v1[27];

    sub_2660BF79C(v5, &qword_28005C4D0, &qword_266191AA8);
    goto LABEL_4;
  }

  v17 = v1[40];
  v19 = v1[21];
  v18 = v1[22];
  v20 = v1[19];
  v21 = v1[20];
  v23 = v1[17];
  v22 = v1[18];
  (*(v21 + 32))(v18, v1[27], v20);
  (*(v21 + 16))(v19, v18, v20);
  AppLaunchDataModels.ButtonFallbackModel.init(buttonLabel:actionProperty:)();
  OUTLINED_FUNCTION_28_2((v23 + 104));
  v1[12] = type metadata accessor for AppLaunchDataModels(0);
  OUTLINED_FUNCTION_12_10();
  v1[13] = sub_266136654(v24, v25, &protocol conformance descriptor for AppLaunchDataModels);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 9);
  sub_26613651C(v22, boxed_opaque_existential_0, type metadata accessor for AppLaunchDataModels.ButtonFallbackModel);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v27 = swift_allocObject();
  v1[42] = v27;
  *(v27 + 16) = xmmword_26618F7E0;
  *(v27 + 32) = v17;
  v28 = v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v1[43] = v29;
  *v29 = v30;
  v29[1] = sub_26613520C;
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x2821BB478](v31, v32, v33, v34, v35, v36);
}

uint64_t sub_26613520C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 72));
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26613530C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  sub_26613657C(v2, type metadata accessor for AppLaunchDataModels.ButtonFallbackModel);
  v3 = OUTLINED_FUNCTION_11_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_18_9();
  v6(v5);
  sub_2660BF79C(v1, &qword_28005C4D0, &qword_266191AA8);

  OUTLINED_FUNCTION_5_3();

  return v7();
}

uint64_t sub_266135428()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266135528()
{
  v2 = OUTLINED_FUNCTION_18_9();
  v3(v2);
  sub_2660BF79C(v0, &qword_28005C4D0, &qword_266191AA8);

  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_266135608()
{
  sub_2660BF79C(*(v0 + 232), &qword_28005C4D0, &qword_266191AA8);

  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_266135728(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_3_6();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266135750()
{
  OUTLINED_FUNCTION_1_0();
  v1 = sub_266135BF0(*(v0 + 16));
  if (!v1)
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = *(v0 + 24);
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    v4 = OUTLINED_FUNCTION_11_0();
    if (sub_2660C8128(v4, v5) & 1) != 0 || (OUTLINED_FUNCTION_28_2((v3 + 16)), OUTLINED_FUNCTION_12_1(), (sub_26618B130()))
    {
      OUTLINED_FUNCTION_28_2((v3 + 16));
      OUTLINED_FUNCTION_12_1();
      if ((sub_26618B190() & 1) == 0)
      {
        if (*(*(v0 + 24) + 144))
        {
          sub_26618C4C0();
          if (v6)
          {
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_54();

  return v7();
}

uint64_t sub_266135850()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2660D3208(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));
  __swift_destroy_boxed_opaque_existential_1((v0 + 232));
  return v0;
}

uint64_t sub_2661358A8()
{
  sub_266135850();

  return MEMORY[0x2821FE8D8](v0, 272, 7);
}

uint64_t sub_266135900()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_266131764();
}

uint64_t sub_2661359AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266135A40;

  return sub_266131BE4(a1);
}

uint64_t sub_266135A40()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_54();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_266135B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LaunchAppUnsupportedValueStrategy();
  *v8 = v4;
  v8[1] = sub_2660D2E00;

  return MEMORY[0x2821B9E00](a1, a2, v9, a4);
}

uint64_t sub_266135BF0(void *a1)
{
  v1 = [a1 pegasusAppResults];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26618C9B0();

  return v3;
}

uint64_t sub_266135C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4D0, &qword_266191AA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266135CB8()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v0[7] = v3;
  v0[8] = v4;
  v5 = sub_26618AA00();
  v0[9] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v0[10] = v6;
  v0[11] = OUTLINED_FUNCTION_8_2();
  v7 = type metadata accessor for MarketplaceInfoProvider();
  v0[12] = v7;
  v0[5] = v7;
  v0[6] = &off_2877CC370;
  v0[2] = v2;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266135D8C()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v24 = MEMORY[0x277D84F90];
    sub_26612A450(0, v2, 0);
    v4 = v24;
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v22 = *(v3 + 56);
    v23 = v5;
    v7 = (v3 - 8);
    do
    {
      v23(v0[11], v6, v0[9]);
      v8 = sub_26618A9C0();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        v12 = sub_26618A9C0();
        v14 = v13;
      }

      else
      {
        v12 = 0xD000000000000012;
        v14 = 0x8000000266199A10;
      }

      (*v7)(v0[11], v0[9]);
      v16 = *(v24 + 16);
      v15 = *(v24 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_26612A450(v15 > 1, v16 + 1, 1);
      }

      *(v24 + 16) = v16 + 1;
      v17 = v24 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v6 += v22;
      --v2;
    }

    while (v2);
    v18 = v0 + 5;
  }

  else
  {
    v18 = v0 + 12;
    v4 = MEMORY[0x277D84F90];
  }

  v19 = *v18;
  v0[13] = sub_26613C2C0(v4);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v19);
  v20 = swift_task_alloc();
  v0[14] = v20;
  *v20 = v0;
  OUTLINED_FUNCTION_38_1(v20);

  return sub_26615E600();
}

uint64_t sub_266135FA8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 120) = v3;

  v4 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266136094()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = v0[15];
  if (!*(v1 + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = v0[15];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_32_2();
      sub_266129600();
      v1 = v17;
    }

    v3 = *(v1 + 16);
    if (v3 >= *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_32_2();
      sub_266129600();
      v1 = v18;
    }

    *(v1 + 16) = v3 + 1;
    v4 = v1 + 16 * v3;
    *(v4 + 32) = 0xD000000000000012;
    *(v4 + 40) = 0x8000000266199A10;
  }

  v5 = v0[13];
  v6 = v0[7];
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_266150124(sub_266136638, v7, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_41_3();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_2661361E0(uint64_t a1, uint64_t a2)
{
  v2[12] = a2;
  v4 = type metadata accessor for MarketplaceInfoProvider();
  v2[13] = v4;
  v2[5] = v4;
  v2[6] = &off_2877CC370;
  v2[2] = a1;

  return MEMORY[0x2822009F8](sub_266136270, 0, 0);
}

uint64_t sub_266136270()
{
  OUTLINED_FUNCTION_18();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[13]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_38_1(v1);

  return sub_26615E600();
}

uint64_t sub_266136304()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 120) = v3;

  v4 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2661363F0()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[15];
  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
  }

  else
  {

    v2 = 0x8000000266199A10;
    v3 = 0xD000000000000012;
  }

  sub_2660C5864(v0[12], (v0 + 7));
  sub_26617CF7C(v0 + 7, v3, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = OUTLINED_FUNCTION_11_0();

  return v5(v4);
}

void sub_2661364D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_26613651C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_16();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26613657C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_16();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2661365D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266136654(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_10_9()
{

  return sub_26618B620();
}

uint64_t OUTLINED_FUNCTION_26_5(uint64_t a1)
{

  return sub_26618D000();
}

uint64_t OUTLINED_FUNCTION_40_4()
{
}

uint64_t sub_266136804()
{
  sub_26618D0D0();
  sub_26618C4A0();
  sub_26618C910();

  sub_26618D0B0();
  return sub_26618CFD0();
}

id sub_2661368B0(void *a1)
{
  v1 = a1;
  DeviceUnit.description.getter();

  v2 = sub_26618C8A0();

  return v2;
}

uint64_t DeviceUnit.description.getter()
{
  sub_26618CD80();
  MEMORY[0x26677BCF0](0xD000000000000013, 0x8000000266199A90);
  v0 = sub_26618C4C0();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v0 = 0x3E6C696E3CLL;
    v2 = 0xE500000000000000;
  }

  MEMORY[0x26677BCF0](v0, v2);

  MEMORY[0x26677BCF0](0x747369737361202CLL, 0xEF203A6449746E61);
  v3 = sub_26618C4A0();
  MEMORY[0x26677BCF0](v3);

  MEMORY[0x26677BCF0](0x6D69786F7270202CLL, 0xED0000203A797469);
  sub_26618C4E0();
  v4 = sub_26618C5C0();
  MEMORY[0x26677BCF0](v4);

  MEMORY[0x26677BCF0](32032, 0xE200000000000000);
  return 0;
}

unint64_t sub_266136A60()
{
  result = qword_28005C678;
  if (!qword_28005C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C678);
  }

  return result;
}

uint64_t sub_266136B94(uint64_t *a1, uint64_t a2)
{
  v3 = sub_26618C6B0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v61 = &v59 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  if (qword_2814B2C40 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v3, qword_2814B4A98);
  v15 = *(v4 + 2);
  v64 = v14;
  v65 = v15;
  (v15)(v13);
  sub_2660DD6B8(a1, v66);
  v16 = sub_26618C690();
  v17 = sub_26618CAA0();
  sub_2660DD77C(a1);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v63 = v11;
    v19 = v18;
    v20 = swift_slowAlloc();
    v59 = v3;
    v60 = v4;
    v21 = v20;
    v66[0] = v20;
    *v19 = 136315138;
    v22 = sub_266137204();
    v24 = a1;
    v25 = sub_266103A98(v22, v23, v66);

    *(v19 + 4) = v25;
    a1 = v24;
    _os_log_impl(&dword_2660B7000, v16, v17, "#hal Invoking device resolution service with filter: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v3 = v59;
    v4 = v60;
    OUTLINED_FUNCTION_7_2();
    v11 = v63;
    OUTLINED_FUNCTION_7_2();
  }

  v26 = *(v4 + 1);
  v26(v13, v3);

  sub_2660DCE7C(v27);

  v66[0] = sub_266142B58(v28);
  sub_2661382C8(v66);

  v29 = v66[0];
  if (!sub_2661046B8())
  {

    return 1;
  }

  v65(v11, v64, v3);
  sub_2660DD6B8(a1, v66);

  v30 = sub_26618C690();
  v31 = sub_26618CAA0();
  sub_2660DD77C(a1);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v66[0] = v59;
    *v32 = 134218498;
    *(v32 + 4) = sub_2661046B8();

    *(v32 + 12) = 2080;
    v63 = v11;
    v33 = a1[10];
    v34 = sub_26618C5B0();
    v35 = MEMORY[0x26677BD80](v33, v34);
    v37 = sub_266103A98(v35, v36, v66);
    v60 = v26;
    v38 = v3;
    v39 = v37;

    *(v32 + 14) = v39;
    *(v32 + 22) = 2080;
    sub_26610027C(v29);
    v42 = sub_266103A98(v40, v41, v66);

    *(v32 + 24) = v42;
    v3 = v38;
    v26 = v60;
    _os_log_impl(&dword_2660B7000, v30, v31, "#hal %ld device(s) with supported actions %s: %s", v32, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v43 = v63;
  }

  else
  {

    v43 = v11;
  }

  v26(v43, v3);
  if (a1[4])
  {
    v44 = v26;
    goto LABEL_16;
  }

  if (a1[6])
  {
    v44 = v26;
    goto LABEL_16;
  }

  if (*(a1[7] + 16))
  {
    v44 = v26;
LABEL_16:
    KeyPath = swift_getKeyPath();
    v46 = sub_266137590(KeyPath, a1, v29);
    v48 = ~v47;

    if (v48)
    {

      return v46;
    }

    else
    {
      v49 = v62;
      v65(v62, v64, v3);
      v50 = sub_26618C690();
      v51 = sub_26618CAA0();
      if (os_log_type_enabled(v50, v51))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_2_16(&dword_2660B7000, v52, v53, "Returning all devices since the provided filter criteria did not match any devices");
        OUTLINED_FUNCTION_7_2();
      }

      v44(v49, v3);
    }

    return v29;
  }

  v65(v61, v64, v3);
  v55 = sub_26618C690();
  v56 = sub_26618CAA0();
  if (os_log_type_enabled(v55, v56))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_2_16(&dword_2660B7000, v57, v58, "Filter has no useful information. Returning all devices");
    OUTLINED_FUNCTION_7_2();
  }

  v26(v61, v3);
  return v29;
}

uint64_t sub_266137204()
{
  v1 = sub_2661372EC(v0);
  v2 = sub_2661373B4(v0);
  v4 = v3;
  sub_26618CD80();

  MEMORY[0x26677BCF0](v2, v4);

  MEMORY[0x26677BCF0](0x696C696261706163, 0xEE00203A73656974);
  v5 = *(v0 + 80);
  v6 = sub_26618C5B0();
  v7 = MEMORY[0x26677BD80](v5, v6);
  MEMORY[0x26677BCF0](v7);

  return v1;
}

uint64_t sub_2661372EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  sub_26618CD80();

  strcpy(v5, "deviceName: ");
  HIWORD(v5[1]) = -4864;
  MEMORY[0x26677BCF0](v2, v1);
  MEMORY[0x26677BCF0](2108450, 0xE300000000000000);
  return v5[0];
}

uint64_t sub_2661373B4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  MEMORY[0x26677BCF0]();
  MEMORY[0x26677BCF0](2108450, 0xE300000000000000);
  return 0x22203A6D6F6F72;
}