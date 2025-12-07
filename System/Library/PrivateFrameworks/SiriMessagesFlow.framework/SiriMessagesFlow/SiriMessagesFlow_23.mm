uint64_t sub_267D9E028()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_267EF7408();
  v1[5] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC48, &unk_267F08548);
  OUTLINED_FUNCTION_18(v5);
  v1[8] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF7438();
  v1[9] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF7458();
  v1[12] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267D9E190(uint64_t a1)
{
  sub_267EF4488();
  sub_267EF7418();
  v2 = sub_267BC2EE0(0x656D686361747461);
  *(v1 + 120) = v2;

  v3 = OUTLINED_FUNCTION_26_0();
  v4(v3);
  if (!v2)
  {
    goto LABEL_25;
  }

  v5 = *(v1 + 64);
  v6 = *(v1 + 40);
  sub_267C8F490(v2, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  v8 = *(v1 + 64);
  if (EnumTagSinglePayload == 1)
  {
    sub_267B9F98C(v8, &qword_28022BC48, &unk_267F08548);
  }

  else
  {
    if ((*(*(v1 + 48) + 88))(v8, *(v1 + 40)) == *MEMORY[0x277D1C678])
    {
      v10 = *(v1 + 80);
      v9 = *(v1 + 88);
      v12 = *(v1 + 64);
      v11 = *(v1 + 72);

      v13 = OUTLINED_FUNCTION_44_0();
      v14(v13);
      (*(v10 + 32))(v9, v12, v11);
      v15 = sub_267EF7428();
      if (v16)
      {
        v17 = *(v1 + 24);
        *(v17 + 176) = v15;
        *(v17 + 184) = v16;

        *(v17 + 168) = 1;
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v18 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
        v19 = sub_267EF89F8();
        v20 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_10_2(v20))
        {
          v21 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v21);
          OUTLINED_FUNCTION_3_0(&dword_267B93000, v22, v23, "#SendMessageShimFlow showing photo picker, attaching dummy");
          OUTLINED_FUNCTION_26();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        v2 = swift_allocObject();
        *(v2 + 16) = xmmword_267EFCA40;
        *(v2 + 32) = [objc_allocWithZone(MEMORY[0x277CD4070]) init];
        v24 = OUTLINED_FUNCTION_26_0();
        v25(v24);
        goto LABEL_25;
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v34 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v34, qword_280240FB0);
      v35 = sub_267EF89F8();
      v36 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_5_2(v36))
      {
        v37 = OUTLINED_FUNCTION_32();
        *v37 = 0;
        _os_log_impl(&dword_267B93000, v35, v36, "#SendMessageShimFlow photos candidates missing search query", v37, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v38 = OUTLINED_FUNCTION_26_0();
      v39(v38);
      goto LABEL_24;
    }

    (*(*(v1 + 48) + 8))(*(v1 + 64), *(v1 + 40));
  }

  v26 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  v27 = *(v2 + 16);
  *(v1 + 128) = v27;
  if (v27)
  {
    v28 = *(v1 + 40);
    v29 = *(v1 + 48);
    v30 = *(v29 + 16);
    v29 += 16;
    v31 = *(v29 + 64);
    *(v1 + 184) = v31;
    *(v1 + 136) = *(v29 + 56);
    *(v1 + 144) = v30;
    *(v1 + 152) = 0;
    *(v1 + 160) = v26;
    v30(*(v1 + 56), *(v1 + 120) + ((v31 + 32) & ~v31), v28);
    v32 = swift_task_alloc();
    *(v1 + 168) = v32;
    *v32 = v1;
    OUTLINED_FUNCTION_7_34(v32);

    return sub_267C7D4D8();
  }

  if (!sub_267BAF0DC(MEMORY[0x277D84F90]))
  {

LABEL_24:
    v2 = 0;
    goto LABEL_25;
  }

  *(*(v1 + 24) + 145) = 1;
  v2 = MEMORY[0x277D84F90];
LABEL_25:

  OUTLINED_FUNCTION_4_3();

  return v40(v2);
}

uint64_t sub_267D9E604()
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

uint64_t sub_267D9E6EC()
{
  v1 = *(v0 + 176);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  if (v1)
  {
    v2 = (v0 + 16);
    v3 = *(v0 + 176);
    MEMORY[0x26D608F90]();
    if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_267EF9328();
    }

    sub_267EF9368();
  }

  else
  {
    v2 = (v0 + 160);
  }

  v4 = *v2;
  v5 = *(v0 + 152) + 1;
  if (v5 == *(v0 + 128))
  {

    if (sub_267BAF0DC(v4))
    {
      *(*(v0 + 24) + 145) = 1;
    }

    else
    {

      v4 = 0;
    }

    OUTLINED_FUNCTION_4_3();

    return v8(v4);
  }

  else
  {
    *(v0 + 152) = v5;
    *(v0 + 160) = v4;
    (*(v0 + 144))(*(v0 + 56), *(v0 + 120) + ((*(v0 + 184) + 32) & ~*(v0 + 184)) + *(v0 + 136) * v5, *(v0 + 40));
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_7_34(v6);

    return sub_267C7D4D8();
  }
}

void sub_267D9E8B8()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v44 = v2;
  v41 = v3;
  v42 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v43 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  v13 = v12 - v11;
  sub_267B9B050((v1 + 2), v49);
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  sub_267B9B050(qword_2802405A0, v48);
  v14 = type metadata accessor for AppInfoBuilder();
  v15 = swift_allocObject();
  if (qword_280228730 != -1)
  {
    swift_once();
  }

  v16 = qword_280240A10;
  __swift_mutable_project_boxed_opaque_existential_1(v48, v48[3]);
  v47[3] = &type metadata for CATProvider;
  v47[4] = &off_2878CE7A0;
  v46[3] = &type metadata for MessagesFeatureFlagsImpl;
  v46[4] = off_2878D1228;
  v45[4] = &off_2878D24C8;
  v45[3] = v14;
  v45[0] = v15;
  type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy(0);
  v17 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v47, &type metadata for CATProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v46, &type metadata for MessagesFeatureFlagsImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v45, v14);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_0();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v21;

  v24 = v41;

  v25 = sub_267DF6184(v24, 0, v44, v49, v23, 0, v16, v17);
  __swift_destroy_boxed_opaque_existential_0(v45);
  __swift_destroy_boxed_opaque_existential_0(v46);
  __swift_destroy_boxed_opaque_existential_0(v47);
  __swift_destroy_boxed_opaque_existential_0(v48);
  v26 = OBJC_IVAR____TtC16SiriMessagesFlow19SendMessageShimFlow_ifClientActionParse;
  sub_267EF4498();
  OUTLINED_FUNCTION_22();
  (*(v27 + 16))(v9, v1 + v26);
  (*(v5 + 104))(v9, *MEMORY[0x277D5C138], v42);
  sub_267EF4B98();
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16SiriMessagesFlow19SendMessageShimFlow_siriKitFlowFactory), *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow19SendMessageShimFlow_siriKitFlowFactory + 24));
  v28 = sub_267DF176C(v25, v13);
  v29 = v1[7];
  v30 = v1[8];
  v31 = v1[9];
  *(v1 + 7) = xmmword_267F03710;
  v1[9] = 0x8000000000000000;
  sub_267DA0398(v29, v30, v31);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v32 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v32, qword_280240FB0);
  v33 = sub_267EF89F8();
  v34 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_36(v34))
  {
    v35 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v35);
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v36, v37, "#SendMessageShimFlow pushing AppResolutionFlow");
    OUTLINED_FUNCTION_26();
  }

  v49[0] = v28;
  v38 = swift_allocObject();
  v38[2] = v1;
  v38[3] = v24;
  v38[4] = v44;
  v39 = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC30, &unk_267F08538);
  sub_267DA0408();
  sub_267EF3FC8();

  OUTLINED_FUNCTION_35_16();
  v40(v13, v43);

  OUTLINED_FUNCTION_47();
}

void sub_267D9EDD4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v70 = a4;
  v7 = sub_267EF2FC8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v65 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = (&v65 - v15);
  v17 = *(v8 + 16);
  v17(&v65 - v15, a1, v7);
  v18 = (*(v8 + 88))(v16, v7);
  if (v18 == *MEMORY[0x277D5B410])
  {
    (*(v8 + 96))(v16, v7);
    v19 = *v16;
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
      v71 = v19;
      v72 = v24;
      *v23 = 136315138;
      sub_267EF7C38();
      sub_267B9DEA4(&qword_28022A060, MEMORY[0x277D55380], MEMORY[0x277D55390]);
      v25 = sub_267EF9E58();
      v27 = sub_267BA33E8(v25, v26, &v72);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_267B93000, v21, v22, "#SendMessageShimFlow AppResolutionFlow resolved app: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x26D60A7B0](v24, -1, -1);
      MEMORY[0x26D60A7B0](v23, -1, -1);
    }

    v28 = a2[7];
    v29 = a2[8];
    v30 = a2[9];
    a2[7] = v19;
    a2[8] = a3;
    a2[9] = v70;
    v31 = a3;

    v32 = v28;
    v33 = v29;
    v34 = v30;
LABEL_19:
    sub_267DA0398(v32, v33, v34);
    return;
  }

  if (v18 == *MEMORY[0x277D5B408])
  {
    (*(v8 + 96))(v16, v7);
    v35 = *v16;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v36 = sub_267EF8A08();
    __swift_project_value_buffer(v36, qword_280240FB0);
    v37 = v35;
    v38 = sub_267EF89F8();
    v39 = sub_267EF95E8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v35;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_267B93000, v38, v39, "#SendMessageShimFlow AppResolutionFlow returned error: %@", v40, 0xCu);
      sub_267B9F98C(v41, &unk_280229E30, &unk_267EFC270);
      MEMORY[0x26D60A7B0](v41, -1, -1);
      MEMORY[0x26D60A7B0](v40, -1, -1);
    }

    v32 = a2[7];
    v33 = a2[8];
    v34 = a2[9];
    a2[7] = v35;
    *(a2 + 4) = xmmword_267F083A0;
    goto LABEL_19;
  }

  if (v18 == *MEMORY[0x277D5B418])
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v44 = sub_267EF8A08();
    __swift_project_value_buffer(v44, qword_280240FB0);
    v45 = sub_267EF89F8();
    v46 = sub_267EF95D8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_267B93000, v45, v46, "#SendMessageShimFlow AppResolutionFlow returned cancelled, completing", v47, 2u);
      MEMORY[0x26D60A7B0](v47, -1, -1);
    }

    v32 = a2[7];
    v33 = a2[8];
    v34 = a2[9];
    *(a2 + 7) = xmmword_267F083B0;
    a2[9] = 0x8000000000000000;
    goto LABEL_19;
  }

  v70 = a1;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v48 = sub_267EF8A08();
  __swift_project_value_buffer(v48, qword_280240FB0);
  v17(v14, v70, v7);
  v49 = sub_267EF89F8();
  v50 = sub_267EF95E8();
  v68 = v49;
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v72 = v67;
    *v51 = 136315138;
    v17(v11, v14, v7);
    v65 = sub_267EF9098();
    v66 = v50;
    v53 = v52;
    v54 = *(v8 + 8);
    v69 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v54(v14, v7);
    v55 = sub_267BA33E8(v65, v53, &v72);

    v56 = v51;
    *(v51 + 4) = v55;
    v57 = v68;
    _os_log_impl(&dword_267B93000, v68, v66, "#SendMessageShimFlow AppResolutionFlow returned unexpected result: %s", v56, 0xCu);
    v58 = v67;
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x26D60A7B0](v58, -1, -1);
    MEMORY[0x26D60A7B0](v56, -1, -1);
  }

  else
  {

    v54 = *(v8 + 8);
    v69 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v54(v14, v7);
  }

  type metadata accessor for SendMessageShimFlow.SendMessageShimFlowError(0);
  sub_267B9DEA4(&qword_28022BC40, type metadata accessor for SendMessageShimFlow.SendMessageShimFlowError, &unk_267F0857C);
  v59 = swift_allocError();
  v61 = v60;
  v17(v60, v70, v7);
  __swift_storeEnumTagSinglePayload(v61, 0, 1, v7);
  v62 = a2[7];
  v63 = a2[8];
  v64 = a2[9];
  a2[7] = v59;
  *(a2 + 4) = xmmword_267F083A0;
  sub_267DA0398(v62, v63, v64);
  v54(v16, v7);
}

void sub_267D9F59C()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v53 = v4;
  v54 = v3;
  v62 = v5;
  v6 = sub_267EF7B88();
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v61 = v0;
  sub_267B9B050((v0 + 2), &v82);
  v8 = type metadata accessor for SiriKitFlowFactoryImpl();
  v9 = swift_allocObject();
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  type metadata accessor for SendMessageCATs(0);
  sub_267EF7B68();
  v58 = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
  v57 = sub_267BB4A3C();
  v10 = type metadata accessor for ShareSheetProvider();
  v11 = swift_allocObject();
  v81[3] = v8;
  v81[4] = &off_2878CFE90;
  v81[0] = v9;
  v79 = v10;
  v80 = &off_2878D0D48;
  v78[0] = v11;
  v76 = &type metadata for MessagesFeatureFlagsImpl;
  v77 = off_2878D1228;
  v60 = type metadata accessor for SendMessageFlow(0);
  v59 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v81, v8);
  v56 = &v53;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v15 = (v14 - v13);
  (*(v16 + 16))(v14 - v13);
  __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
  v55 = &v53;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
  v22 = *v15;
  v23 = *v20;
  v73 = v8;
  v74 = &off_2878CFE90;
  *&v72 = v22;
  v70 = v10;
  v71 = &off_2878D0D48;
  v68 = off_2878D1228;
  *&v69 = v23;
  v67 = &type metadata for MessagesFeatureFlagsImpl;
  v24 = v54;

  v25 = v53;

  sub_267BCE788(v25);
  v26 = v2;
  if (![v25 outgoingMessageType])
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v27 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v27, qword_280240FB0);
    v28 = sub_267EF89F8();
    v29 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v29))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_29_19(&dword_267B93000, v30, v29, "#SendMessageFlow outgoingMessageType is unknown, defaulting to text");
      OUTLINED_FUNCTION_29_1();
    }

    v65 = MEMORY[0x277D83B88];
    v64[0] = 1;
    sub_267ECE290();
    sub_267B9F98C(v64, &qword_28022AEF0, &qword_267EFCDE0);
  }

  if (*(v2 + 16) != 5)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v31 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v31, qword_280240FB0);
    v32 = sub_267EF89F8();
    v33 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v33))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_29_19(&dword_267B93000, v34, v33, "#SendMessageFlow non-shim intent request, marking as app selected by user");
      OUTLINED_FUNCTION_29_1();
    }

    *(v2 + 96) = 1;
  }

  v35 = v24;
  v36 = v83;
  v37 = v84;
  __swift_project_boxed_opaque_existential_0(&v82, v83);
  v38 = *(v37 + 24);
  v39 = v25;
  v38(v64, v36, v37);
  __swift_project_boxed_opaque_existential_0(v64, v65);
  OUTLINED_FUNCTION_54_1();
  sub_267EF45B8();
  __swift_project_boxed_opaque_existential_0(v63, v63[3]);
  OUTLINED_FUNCTION_54_1();
  sub_267EF42B8();
  if (v40)
  {
    v41 = sub_267EF8FF8();
  }

  else
  {
    v41 = 0;
  }

  v42 = v59;
  __swift_destroy_boxed_opaque_existential_0(v63);
  __swift_destroy_boxed_opaque_existential_0(v64);
  [v39 _setOriginatingDeviceIdsIdentifier_];

  v43 = v42 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
  *v43 = v35;
  *(v43 + 8) = v39;
  *(v43 + 16) = v26;
  *(v43 + 40) = 1;
  type metadata accessor for SendMessageFlow.State(0);
  swift_storeEnumTagMultiPayload();
  sub_267B9A5E8(&v72, v42 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory);
  v44 = v57;
  *(v42 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs) = v58;
  *(v42 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs) = v44;
  sub_267B9A5E8(&v66, v42 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags);
  sub_267B9A5E8(&v69, v42 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider);
  sub_267B9A5E8(&v82, v42 + 16);
  __swift_destroy_boxed_opaque_existential_0(v75);
  __swift_destroy_boxed_opaque_existential_0(v78);
  __swift_destroy_boxed_opaque_existential_0(v81);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v45 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v45, qword_280240FB0);
  v46 = sub_267EF89F8();
  v47 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_5_2(v47))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_29_19(&dword_267B93000, v48, v47, "#SendMessageShimFlow pushing SendMessageFlow");
    OUTLINED_FUNCTION_29_1();
  }

  v49 = v61;
  v50 = v61[7];
  v51 = v61[8];
  v52 = v61[9];
  *(v61 + 7) = xmmword_267F083B0;
  v49[9] = 0x8000000000000000;
  sub_267DA0398(v50, v51, v52);
  *&v82 = v42;
  sub_267B9DEA4(&qword_280229478, type metadata accessor for SendMessageFlow, &unk_267F0A980);
  sub_267EF3FF8();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267D9FC54()
{
  sub_267DA0398(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = OBJC_IVAR____TtC16SiriMessagesFlow19SendMessageShimFlow_ifClientActionParse;
  sub_267EF4498();
  OUTLINED_FUNCTION_22();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow19SendMessageShimFlow_contactResolver));
  return __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow19SendMessageShimFlow_siriKitFlowFactory));
}

uint64_t sub_267D9FCD4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267DA0398(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = OBJC_IVAR____TtC16SiriMessagesFlow19SendMessageShimFlow_ifClientActionParse;
  sub_267EF4498();
  OUTLINED_FUNCTION_22();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow19SendMessageShimFlow_contactResolver));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow19SendMessageShimFlow_siriKitFlowFactory));
  return v0;
}

uint64_t sub_267D9FD60()
{
  sub_267D9FCD4();

  return swift_deallocClassInstance();
}

uint64_t sub_267D9FDE0(uint64_t a1)
{
  result = sub_267EF4498();
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

unint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow015SendMessageShimC0C5StateO(void *a1)
{
  v1 = a1[2];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_267D9FEA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFE && *(a1 + 24))
    {
      v2 = *a1 + 16381;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 50) >> 12) | (4 * ((*(a1 + 16) >> 50) & 0xC00 | ((*(a1 + 16) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
      if (v2 >= 0x3FFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_267D9FF1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_267D9FFA0(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    *(result + 16) = v2;
  }

  else
  {
    *result = 8 * (a2 - 2);
    *(result + 8) = xmmword_267F083C0;
  }

  return result;
}

uint64_t sub_267DA0018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267DA00C8;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_267DA00C8()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_4_3();

  return v2(v1);
}

uint64_t sub_267DA01DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267DA0278;

  return sub_267D9BE78();
}

uint64_t sub_267DA0278()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_267DA0364@<X0>(uint64_t a1@<X8>)
{
  result = sub_267D9BA50();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_267DA0398(void *a1, void *a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {
  }

  else if (!(a3 >> 62))
  {
  }
}

unint64_t sub_267DA0408()
{
  result = qword_28022BC38;
  if (!qword_28022BC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022BC30, &unk_267F08538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BC38);
  }

  return result;
}

id sub_267DA048C(id result, void *a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {

    return result;
  }

  else if (!(a3 >> 62))
  {

    v5 = a2;
  }

  return result;
}

uint64_t sub_267DA0518(uint64_t a1)
{
  v1 = sub_267EF2FC8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void *sub_267DA0570()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for ConversationActionGroup(0);
  swift_allocObject();

  v3 = sub_267BE6480(v1, v2, 0, 1);
  sub_267DA0EC8(&unk_28022BC80, type metadata accessor for ConversationActionGroup, &unk_267F0D600);
  return v3;
}

uint64_t sub_267DA0618@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_267EF4548();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC68, &unk_267F08710);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v67 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v67 - v13;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v15 = sub_267EF8A08();
  __swift_project_value_buffer(v15, qword_280240FB0);
  sub_267DA0E58(a1, v14);
  v16 = sub_267EF89F8();
  v17 = sub_267EF95D8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v67 = a2;
    v20 = v19;
    v72[0] = v19;
    *v18 = 136315138;
    sub_267DA0E58(v14, v12);
    v21 = sub_267EF9098();
    v23 = v22;
    sub_267B9FF34(v14, &qword_28022BC68, &unk_267F08710);
    v24 = sub_267BA33E8(v21, v23, v72);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_267B93000, v16, v17, "#OfferContinueReadingReturnGroup acting on exit value for offer reply: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    a2 = v67;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    sub_267B9FF34(v14, &qword_28022BC68, &unk_267F08710);
  }

  v25 = v71;
  sub_267DA0E58(a1, v9);
  v26 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v26) == 1)
  {
LABEL_7:
    v27 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (os_log_type_enabled(v27, v28))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v29, v30, "#OfferContinueReadingReturnGroup moving to ReadingTerminatedActionGroup");
      OUTLINED_FUNCTION_32_0();
    }

    type metadata accessor for ReadingTerminatedActionGroup(0);
    swift_allocObject();

    v32 = sub_267DFA1D0(v31, 0);
    v33 = &unk_28022BC70;
    v34 = type metadata accessor for ReadingTerminatedActionGroup;
    v35 = &unk_267F0D600;
LABEL_10:
    v36 = sub_267DA0EC8(v33, v34, v35);
    *a2 = v32;
    a2[1] = v36;
LABEL_15:
    v43 = v70;
    (*(v69 + 104))(a2, *MEMORY[0x277D5BF58], v70);
    v44 = a2;
    v45 = v43;
  }

  else
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    switch(__swift_getEnumTagSinglePayload(v9, 9, v37))
    {
      case 1u:
      case 2u:
        goto LABEL_7;
      case 3u:
        goto LABEL_24;
      case 4u:
      case 5u:
      case 6u:
      case 9u:
        goto LABEL_12;
      case 7u:
        v53 = *(v25 + 16);
        v54 = *(v53 + 88);
        v55 = *(v53 + 96);

        v56 = sub_267BFB790(v54, v55, 1);

        if (v56)
        {
          v57 = type metadata accessor for FlowLocatorPhoneFlowFinder();
          inited = swift_initStackObject();
          v72[3] = v57;
          v72[4] = &off_2878D76D0;
          v72[0] = inited;
          sub_267CAA984(a2);

          return __swift_destroy_boxed_opaque_existential_0(v72);
        }

        v59 = sub_267EF89F8();
        v60 = sub_267EF95E8();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v72[0] = v62;
          *v61 = 136315138;
          v63 = a2;
          v64 = *(v53 + 88);
          v65 = *(v53 + 96);

          v66 = sub_267BA33E8(v64, v65, v72);

          *(v61 + 4) = v66;
          a2 = v63;
          _os_log_impl(&dword_267B93000, v59, v60, "#OfferContinueReadingReturnGroup Unable to get previous conversation from next conversation %s -> repeat the prompt", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v62);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_32_0();
        }

LABEL_24:
        sub_267DA0CDC(a2);
        v44 = a2;
        v45 = v70;
        break;
      case 8u:
        v47 = *(v25 + 16);
        v48 = *(v25 + 24);
        v49 = *(v47 + 88);
        v50 = *(v47 + 96);

        v51 = sub_267BFB790(v49, v50, 1);

        v52 = v68;
        sub_267DA0CDC(v68);
        type metadata accessor for ReadSenderInfoActionGroup(0);
        swift_allocObject();
        v32 = sub_267C4BF48(v48, v51, v52);
        v33 = &unk_28022BC78;
        v34 = type metadata accessor for ReadSenderInfoActionGroup;
        v35 = &unk_267EFE040;
        goto LABEL_10;
      default:
        sub_267B9FF34(v9, &qword_280229920, &unk_267F0ABD0);
LABEL_12:
        v38 = sub_267EF89F8();
        v39 = sub_267EF95D8();
        if (os_log_type_enabled(v38, v39))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v40, v41, "#OfferContinueReadingReturnGroup moving to next group");
          OUTLINED_FUNCTION_32_0();
        }

        *a2 = sub_267DA0570();
        a2[1] = v42;
        goto LABEL_15;
    }
  }

  return __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
}

uint64_t sub_267DA0CDC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);
  v5 = sub_267EF89F8();
  v6 = sub_267EF95D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_267B93000, v5, v6, "#OfferContinueReadingReturnGroup creating continue-to-read offer transition again for native flow", v7, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v8 = *(v2 + 16);
  v9 = *(v2 + 24);

  return sub_267CAA1C0(v8, v9, a1);
}

uint64_t sub_267DA0DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for OfferContinueReadingReturnGroup();

  return sub_267EF44D8();
}

uint64_t sub_267DA0E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC68, &unk_267F08710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DA0EC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_267DA0F10(void *a1, uint64_t a2, uint64_t a3)
{
  sub_267EF3F28();
  OUTLINED_FUNCTION_58();
  v39 = v7;
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v38 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A4B0, &unk_267F00CC0);
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v11);
  v43 = &v37 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v13);
  v15 = (&v37 - v14);
  v16 = sub_267EF4228();
  OUTLINED_FUNCTION_58();
  v41 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_0();
  v21 = v20 - v19;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267BB4A3C();
  type metadata accessor for MessagesApp(0);
  sub_267EF7C38();

  v42 = a2;
  v22 = a3;
  v23 = sub_267EF7C08();
  v24 = sub_267EC814C(v23);
  sub_267C7FD8C(v24);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    swift_willThrowTypedImpl();
  }

  else
  {
    v25 = v41;
    (*(v41 + 32))(v21, v15, v16);
    v15 = [objc_allocWithZone(MEMORY[0x277D47A18]) init];
    v26 = sub_267EF4218();
    v27 = v43;
    sub_267C8EFF0(v26, v43);

    v28 = sub_267EF4378();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v28);
    v30 = v25;
    if (EnumTagSinglePayload == 1)
    {
      sub_267B9F98C(v43, &qword_28022A4B0, &unk_267F00CC0);
      v31 = 0;
    }

    else
    {
      v32 = v38;
      v33 = v43;
      sub_267EF4368();
      (*(*(v28 - 8) + 8))(v33, v28);
      sub_267EF3F18();
      (*(v39 + 8))(v32, v40);
      v31 = sub_267EF8FF8();
    }

    [v15 setText_];

    v34 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
    sub_267DA34BC(v42, v22, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_267EFCA40;
    *(v35 + 32) = v34;
    sub_267DA3648(v35, v15, &selRef_setCommands_);
    (*(v30 + 8))(v21, v16);
  }

  return v15;
}

id sub_267DA133C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  v12 = v11 - v10;
  v13 = [objc_allocWithZone(MEMORY[0x277D473F0]) init];
  sub_267BA9F38(0, &qword_28022BCC0, 0x277D47418);
  v14 = a1;
  v15 = sub_267EF9788();
  [v13 setHandledIntent_];

  v16 = v13;
  sub_267DA3520(a2, a3, v16);
  sub_267EF2D18();
  sub_267EF2CE8();
  OUTLINED_FUNCTION_74_0();
  (*(v8 + 8))(v12, v6);
  v17 = OUTLINED_FUNCTION_108();
  sub_267E7F030(v17, v18, v16);

  return v16;
}

void sub_267DA149C()
{
  OUTLINED_FUNCTION_48_0();
  v34 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_267EF4CD8();
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v11 = v10 - v9;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v12 = sub_267EF8A08();
  __swift_project_value_buffer(v12, qword_280240FB0);
  v13 = sub_267EF89F8();
  v14 = sub_267EF95D8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_267B93000, v13, v14, "#AceViewProviderUtils building disambiguation snippet", v15, 2u);
    MEMORY[0x26D60A7B0](v15, -1, -1);
  }

  v16 = v4[4];
  v17 = OUTLINED_FUNCTION_131(v4);
  v18 = sub_267BCD18C(v17, v16) ^ 1;
  OUTLINED_FUNCTION_5_45();
  if (sub_267EF3BE8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_267EFCA40;
    v20 = sub_267EF3948();
    v21 = (*(v34 + 24))(v20, v18 & 1, v2);
LABEL_11:
    v25 = v21;

    *(v19 + 32) = v25;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_45();
  if (sub_267EF3C28())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_267EFCA40;
    v22 = sub_267EF3948();
    __swift_project_boxed_opaque_existential_0(v4, v4[3]);
    v23 = sub_267EF3BC8();
    v21 = (*(v34 + 32))(v22, v23 & 1, v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_5_45();
  if (sub_267EF3C48())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_267EFCA40;
    v24 = sub_267EF3948();
    v21 = (*(v34 + 16))(v24, v18 & 1, v2);
    goto LABEL_11;
  }

  v26 = sub_267EF3948();
  (*(v7 + 104))(v11, *MEMORY[0x277D5C1E0], v5);
  v27 = (*(v34 + 8))(v26, v18 & 1, v11, v2);

  (*(v7 + 8))(v11, v5);
  v28 = sub_267EF7C18();
  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0x6C7070612E6D6F63;
  }

  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0xEE00697269732E65;
  }

  v32 = [objc_allocWithZone(MEMORY[0x277D47B08]) init];
  if (sub_267BAF0DC(MEMORY[0x277D84F90]))
  {
    sub_267DA35D0(MEMORY[0x277D84F90], v32);
  }

  sub_267DA3578(v30, v31, v32);

  [v27 setSash_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  OUTLINED_FUNCTION_94();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_267EFCA40;
  *(v33 + 32) = v27;
LABEL_12:
  OUTLINED_FUNCTION_47();
}

void sub_267DA18D4()
{
  OUTLINED_FUNCTION_48_0();
  v30 = v0;
  v31 = v1;
  v32 = v2;
  v29 = sub_267EF8228();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_60();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v28 - v17;
  sub_267C7FE88();
  v19 = sub_267EFA028();
  v21 = v20;
  sub_267B9F98C(v18, &qword_2802295B8, &qword_267EFDCB0);
  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  v28[1] = v22;
  sub_267EF78D8();
  sub_267EFA028();
  sub_267B9F98C(v15, &qword_2802295B8, &qword_267EFDCB0);
  v23 = *(v4 + 104);
  v24 = v29;
  v23(v11, *MEMORY[0x277D5D4E8], v29);
  v23(v8, *MEMORY[0x277D5D4F0], v24);

  v25 = v31;
  sub_267EF8538();
  v26 = *MEMORY[0x277D5D388];
  sub_267EF8178();
  OUTLINED_FUNCTION_22();
  (*(v27 + 104))(v25, v26);
  OUTLINED_FUNCTION_47();
}

id sub_267DA1B74()
{
  sub_267BA9F38(0, &qword_28022A0B0, 0x277D47B10);
  sub_267EF4208();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  sub_267BF5748();
  sub_267EF8FC8();
  OUTLINED_FUNCTION_104_0();

  v2 = sub_267EF41E8();
  return sub_267E7E88C(v1, v0, v2, v3, 0, 0, 0);
}

id sub_267DA1C44(uint64_t a1)
{
  v2 = sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v8 = v7 - v6;
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_267D99844(a1, v9);
  sub_267EF2D18();
  sub_267EF2CE8();
  OUTLINED_FUNCTION_74_0();
  (*(v4 + 8))(v8, v2);
  v10 = OUTLINED_FUNCTION_108();
  sub_267E7F030(v10, v11, v9);

  return v9;
}

id sub_267DA1D4C(uint64_t a1)
{
  v3 = sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v10 = [objc_allocWithZone(MEMORY[0x277D47AE0]) init];
  sub_267EF2D18();
  sub_267EF2CE8();
  OUTLINED_FUNCTION_104_0();
  (*(v5 + 8))(v9, v3);
  sub_267E7F030(v1, v2, v10);

  v11 = sub_267EF9508();
  [v10 setToneLibraryAlertType_];

  sub_267EF83A8();
  if (v12)
  {
    v13 = sub_267EF8FF8();
  }

  else
  {
    v13 = 0;
  }

  [v10 setItemURL_];

  return v10;
}

void sub_267DA1EB4()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v2 = sub_267EF8428();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v8 = v7 - v6;
  v9 = sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v15 = v14 - v13;
  v16 = v1[4];
  v17 = OUTLINED_FUNCTION_131(v1);
  if ((sub_267BCD18C(v17, v16) & 1) == 0)
  {
    v18 = [objc_allocWithZone(MEMORY[0x277D47B40]) init];
    sub_267EF2D18();
    v19 = sub_267EF2CE8();
    v21 = v20;
    (*(v11 + 8))(v15, v9);
    sub_267E7F030(v19, v21, v18);

    v22 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
    [v22 setEyesFree_];
    sub_267BA9F38(0, &unk_28022BC90, 0x277D5C220);
    (*(v4 + 104))(v8, *MEMORY[0x277D5D778], v2);
    v23 = sub_267EF8418();
    v25 = v24;
    (*(v4 + 8))(v8, v2);
    v26 = sub_267BEA93C(v23, v25);
    v27 = objc_opt_self();
    v28 = [v27 runSiriKitExecutorCommandWithContext:v22 payload:v26];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_267EFCA40;
    *(v29 + 32) = [v27 wrapCommandInStartLocalRequest_];
    sub_267DA3648(v29, v18, &selRef_setSuccessCommands_);
  }

  OUTLINED_FUNCTION_47();
}

void sub_267DA2180()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v48 = v4;
  v49 = v3;
  v5 = sub_267EF2A58();
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_60();
  v46 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  if (!v2)
  {
    goto LABEL_26;
  }

  v14 = sub_267BAF0DC(v2);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
LABEL_25:
    v53 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
    sub_267BF5748();
    sub_267EF8FC8();

LABEL_26:
    OUTLINED_FUNCTION_47();
    return;
  }

  v16 = v14;
  v53 = MEMORY[0x277D84F90];
  sub_267BC7934(0, v14 & ~(v14 >> 63), 0);
  if (v16 < 0)
  {
    goto LABEL_30;
  }

  v45 = v13;
  v15 = v53;
  v17 = sub_267BAF0DC(v2);
  v18 = 0;
  v47 = v2 & 0xFFFFFFFFFFFFFF8;
  v43 = v2;
  v44 = v7 + 32;
  v42 = v7 + 8;
  v51 = v2 & 0xC000000000000001;
  v52 = v17 & ~(v17 >> 63);
  v19 = v48;
  v50 = v16;
  while (v52 != v18)
  {
    if (v51)
    {
      v20 = MEMORY[0x26D609870](v18, v2);
    }

    else
    {
      if (v18 >= *(v47 + 16))
      {
        goto LABEL_29;
      }

      v20 = *(v2 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = v19[4];
    v23 = OUTLINED_FUNCTION_131(v19);
    if ((sub_267BCD18C(v23, v22) & 1) == 0)
    {
      sub_267DA2864();
      OUTLINED_FUNCTION_104_0();

      goto LABEL_18;
    }

    v24 = [v21 nameComponents];
    if (!v24)
    {
      v35 = [v21 displayName];
      sub_267EF9028();
      OUTLINED_FUNCTION_104_0();

      goto LABEL_18;
    }

    v25 = v24;
    sub_267EF2A18();

    v26 = OUTLINED_FUNCTION_11_34();
    v27(v26);
    v28 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
    v29 = sub_267EF29E8();
    v30 = v5;
    v31 = [v28 stringFromPersonNameComponents_];

    sub_267EF9028();
    OUTLINED_FUNCTION_104_0();

    v32 = HIBYTE(v0) & 0xF;
    if ((v0 & 0x2000000000000000) == 0)
    {
      v32 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v33 = OUTLINED_FUNCTION_11_34();
      v34(v33);

      v5 = v30;
      v2 = v43;
      v19 = v48;
LABEL_18:
      v53 = v15;
      goto LABEL_19;
    }

    v39 = [v21 displayName];
    sub_267EF9028();
    OUTLINED_FUNCTION_104_0();

    v40 = OUTLINED_FUNCTION_11_34();
    v41(v40);

    v53 = v15;
    v5 = v30;
    v2 = v43;
    v19 = v48;
LABEL_19:
    v37 = *(v15 + 16);
    v36 = *(v15 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_267BC7934((v36 > 1), v37 + 1, 1);
      v15 = v53;
    }

    *(v15 + 16) = v37 + 1;
    v38 = v15 + 16 * v37;
    *(v38 + 32) = v22;
    *(v38 + 40) = v0;
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_28;
    }

    if (v50 == ++v18)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_267DA2578(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v3 = OUTLINED_FUNCTION_18(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_60();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  if (!a1)
  {
    return 0;
  }

  if (!(a1 >> 62))
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 > 1)
    {
      goto LABEL_4;
    }

LABEL_8:
    if (v13)
    {
      sub_267BBD0EC(0, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x26D609870](0, a1);
      }

      else
      {
        v17 = *(a1 + 32);
      }

      v18 = v17;
      v19 = [objc_opt_self() sharedDefaults];
      v20 = [v19 shortNameFormatPrefersNicknames];

      if (v20)
      {
        v21 = [v18 nameComponents];
        if (v21)
        {
          v22 = v21;
          sub_267EF2A18();

          sub_267EF2A58();
          v23 = 0;
        }

        else
        {
          sub_267EF2A58();
          v23 = 1;
        }

        OUTLINED_FUNCTION_18_24(v6, v23);
        sub_267D2E49C(v6, v9);
        sub_267EF2A58();
        v14 = 0;
        v24 = 0;
        if (!OUTLINED_FUNCTION_17_22(v9))
        {
          v14 = sub_267EF2A28();
          v24 = v25;
        }

        sub_267B9F98C(v9, &unk_28022BCA0, &unk_267EFD990);
      }

      else
      {
        v14 = 0;
        v24 = 0;
      }

      if (sub_267DEAC8C(v14, v24))
      {

        v26 = [v18 displayName];
        v14 = sub_267EF9028();

        return v14;
      }

      if (v24)
      {
        return v14;
      }
    }

    return 0;
  }

  if (sub_267EF9A68() < 2)
  {
    v13 = sub_267EF9A68();
    goto LABEL_8;
  }

LABEL_4:
  sub_267C7FEA8();
  v14 = sub_267EFA028();
  v16 = v15;
  sub_267B9F98C(v12, &qword_2802295B8, &qword_267EFDCB0);
  if (!v16)
  {
    return 0;
  }

  return v14;
}

void sub_267DA2864()
{
  OUTLINED_FUNCTION_48_0();
  v73 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_60();
  v71 = v9 - v10;
  v12 = MEMORY[0x28223BE20](v11);
  v72 = &v70 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v70 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  OUTLINED_FUNCTION_18(v19);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v24 = OUTLINED_FUNCTION_18(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_60();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v70 - v29;
  v31 = sub_267EF79B8();
  OUTLINED_FUNCTION_58();
  v75 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_60();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v74 = &v70 - v38;
  swift_beginAccess();
  v39 = sub_267C8EB50(v4, *(v2 + 80));
  if (!v39)
  {
    v40 = [v6 displayName];
    sub_267EF9028();
LABEL_10:
    OUTLINED_FUNCTION_14_32();

    goto LABEL_21;
  }

  v40 = v39;
  v70 = v6;
  v41 = [v39 relationship];
  if (v41)
  {
    v42 = v41;
    sub_267EAEBF4(v41);
    OUTLINED_FUNCTION_74_0();

    OUTLINED_FUNCTION_108();
    sub_267EF90F8();

    v44 = v74;
    v43 = v75;
    (*(v75 + 32))(v74, v36, v31);
    sub_267EF7758();
    swift_allocObject();
    sub_267EF7748();
    (*(v43 + 16))(v30, v44, v31);
    OUTLINED_FUNCTION_18_24(v30, 0);
    sub_267EF76F8();

    sub_267B9F98C(v30, &unk_28022AE30, &qword_267EFC0B0);
    sub_267EF7708();

    v45 = sub_267EF7738();

    sub_267EF78A8();
    v46 = v73;
    sub_267B9AFEC(v73, &v76);
    sub_267EF7878();
    sub_267EF7638();
    sub_267EF77A8();
    if (OUTLINED_FUNCTION_17_22(v27) == 1)
    {
      sub_267B9F98C(v27, &unk_28022AE30, &qword_267EFC0B0);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v47 = sub_267EF8A08();
      __swift_project_value_buffer(v47, qword_280240FB0);
      v48 = sub_267EF89F8();
      v49 = sub_267EF95E8();
      v50 = os_log_type_enabled(v48, v49);
      v51 = v70;
      v52 = v74;
      if (v50)
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_267B93000, v48, v49, "Unable to get relationship name from DialogPerson", v53, 2u);
        MEMORY[0x26D60A7B0](v53, -1, -1);
      }

      v54 = [v51 displayName];
      sub_267EF9028();
      OUTLINED_FUNCTION_14_32();

      (*(v75 + 8))(v52, v31);
    }

    else
    {
      v71 = sub_267EF7998();
      v72 = v45;
      v59 = v58;
      v60 = *(v43 + 8);
      v60(v27, v31);
      __swift_project_boxed_opaque_existential_0(v46, v46[3]);
      sub_267EF3B68();
      v61 = sub_267EF2E38();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v61);
      sub_267D5ECBC(v22, v71, v59);
      OUTLINED_FUNCTION_14_32();

      sub_267B9F98C(v22, &unk_28022AF10, &unk_267F001E0);
      v60(v44, v31);
    }

    goto LABEL_21;
  }

  v55 = [v40 nameComponents];
  if (v55)
  {
    v56 = v55;
    sub_267EF2A18();

    v57 = 0;
  }

  else
  {
    v57 = 1;
  }

  sub_267EF2A58();
  OUTLINED_FUNCTION_18_24(v16, v57);
  sub_267D2E49C(v16, v18);
  if (OUTLINED_FUNCTION_17_22(v18))
  {
    sub_267B9F98C(v18, &unk_28022BCA0, &unk_267EFD990);
LABEL_17:
    if ((sub_267DE9BAC() & 1) == 0 || (v62 = [v40 personHandle]) == 0 || (sub_267BBE048(v62), !v63))
    {
      v64 = [v70 displayName];
      sub_267EF9028();
      OUTLINED_FUNCTION_14_32();

      goto LABEL_21;
    }

    goto LABEL_10;
  }

  sub_267EF2A28();
  OUTLINED_FUNCTION_14_32();
  sub_267B9F98C(v18, &unk_28022BCA0, &unk_267EFD990);
  if (!v27)
  {
    goto LABEL_17;
  }

  v65 = [v70 nameComponents];
  if (v65)
  {
    v66 = v65;
    v67 = v71;
    sub_267EF2A18();

    v68 = 0;
  }

  else
  {
    v68 = 1;
    v67 = v71;
  }

  v69 = v72;
  OUTLINED_FUNCTION_18_24(v67, v68);
  sub_267D2E49C(v67, v69);
  if (OUTLINED_FUNCTION_17_22(v69))
  {

    sub_267B9F98C(v69, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    sub_267EF2A28();
    OUTLINED_FUNCTION_74_0();

    sub_267B9F98C(v69, &unk_28022BCA0, &unk_267EFD990);
    if (v67)
    {
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_47();
}

void sub_267DA2FC4()
{
  OUTLINED_FUNCTION_48_0();
  sub_267EF3F28();
  OUTLINED_FUNCTION_58();
  v37 = v1;
  v38 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_0();
  v36 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A4B0, &unk_267F00CC0);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = sub_267EF4228();
  OUTLINED_FUNCTION_58();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_0();
  v21 = v20 - v19;
  sub_267C7FE68();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_267B9F98C(v14, &qword_2802295B8, &qword_267EFDCB0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v22 = sub_267EF8A08();
    __swift_project_value_buffer(v22, qword_280240FB0);
    v23 = sub_267EF89F8();
    v24 = sub_267EF95E8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_267B93000, v23, v24, "Unable to get label for Siri Settings button", v25, 2u);
      MEMORY[0x26D60A7B0](v25, -1, -1);
    }
  }

  else
  {
    (*(v17 + 32))(v21, v14, v15);
    v26 = [objc_allocWithZone(MEMORY[0x277D47AC8]) init];
    sub_267EF2B88();
    v27 = sub_267EF2BA8();
    v28 = 0;
    if (__swift_getEnumTagSinglePayload(v11, 1, v27) != 1)
    {
      v28 = sub_267EF2AF8();
      (*(*(v27 - 8) + 8))(v11, v27);
    }

    [v26 setRef_];

    v29 = [objc_allocWithZone(MEMORY[0x277D47A18]) init];
    v30 = sub_267EF4218();
    sub_267C8EFF0(v30, v7);

    v31 = sub_267EF4378();
    if (__swift_getEnumTagSinglePayload(v7, 1, v31) == 1)
    {
      sub_267B9F98C(v7, &qword_28022A4B0, &unk_267F00CC0);
      v32 = 0;
    }

    else
    {
      v33 = v36;
      sub_267EF4368();
      (*(*(v31 - 8) + 8))(v7, v31);
      sub_267EF3F18();
      (*(v37 + 8))(v33, v38);
      v32 = sub_267EF8FF8();
    }

    [v29 setText_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_267EFCA40;
    *(v34 + 32) = v26;
    sub_267DA3648(v34, v29, &selRef_setCommands_);
    (*(v17 + 8))(v21, v15);
  }

  OUTLINED_FUNCTION_47();
}

void sub_267DA34BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();
  [a3 setBundleId_];
}

void sub_267DA3520(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();
  [a3 setAppId_];
}

void sub_267DA3578(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();
  [a3 setApplicationBundleIdentifier_];
}

void sub_267DA35D0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A400, &qword_267F08350);
  v3 = sub_267EF92D8();
  [a2 setCommands_];
}

void sub_267DA3648(uint64_t a1, void *a2, SEL *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A400, &qword_267F08350);
  v5 = sub_267EF92D8();

  [a2 *a3];
}

uint64_t sub_267DA36E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 280) = a4;
  *(v5 + 288) = a5;
  return MEMORY[0x2822009F8](sub_267DA3700, 0, 0);
}

uint64_t sub_267DA3700()
{
  OUTLINED_FUNCTION_62();
  sub_267C2FB6C(v0[35], (v0 + 26), &qword_280229910, &unk_267EFEB70);
  v1 = v0[29];
  if (v1)
  {
    v2 = v0[30];
    __swift_project_boxed_opaque_existential_0(v0 + 26, v0[29]);
    v7 = (*(v2 + 64) + **(v2 + 64));
    v3 = swift_task_alloc();
    v0[37] = v3;
    *v3 = v0;
    v3[1] = sub_267DA3894;
    v4 = v0[36];

    return v7(v4, v1, v2);
  }

  else
  {
    sub_267B9F98C((v0 + 26), &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_17();

    return v6();
  }
}

uint64_t sub_267DA3894(char a1)
{
  v4 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v5 = sub_267DA3A84;
  }

  else
  {
    *(v4 + 312) = a1 & 1;
    v5 = sub_267DA39C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267DA39C0()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 312);
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 288);
    sub_267BEB520(v2 + 152, v0 + 16);
    ConversationEventStore.setDisabled(event:)();
    sub_267B9EF14(v0 + 16);
    sub_267BEB520(v2 + 152, v0 + 112);
    ConversationEventStore.setDisabled(event:)();
    sub_267B9EF14(v0 + 112);
  }

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267DA3A84()
{
  v16 = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = *(v0 + 304);
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 304);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_267EF9F68();
    v12 = sub_267BA33E8(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_267B93000, v4, v5, "#SpokenMessagesFollowupReturnGroup Long message check failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_267DA3C28@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v117 = a2;
  v118 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  MEMORY[0x28223BE20](v6 - 8);
  v113 = &v111 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v8 - 8);
  v116 = &v111 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC68, &unk_267F08710);
  OUTLINED_FUNCTION_22();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v111 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v111 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = (&v111 - v20);
  if (qword_280228818 != -1)
  {
    goto LABEL_57;
  }

LABEL_2:
  v22 = sub_267EF8A08();
  v23 = __swift_project_value_buffer(v22, qword_280240FB0);
  sub_267C2FB6C(a1, v21, &qword_28022BC68, &unk_267F08710);
  v24 = sub_267EF89F8();
  v25 = sub_267EF95D8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v115 = v23;
    v112 = v13;
    v111 = a1;
    v27 = v26;
    v28 = swift_slowAlloc();
    v114 = a3;
    v29 = v28;
    v119[0] = v28;
    *v27 = 136315138;
    sub_267C2FB6C(v21, v19, &qword_28022BC68, &unk_267F08710);
    v30 = sub_267EF9098();
    v19 = v31;
    v32 = v21;
    v21 = v118;
    sub_267B9F98C(v32, &qword_28022BC68, &unk_267F08710);
    v33 = sub_267BA33E8(v30, v19, v119);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_267B93000, v24, v25, "#SpokenMessagesFollowupReturnGroup getNextGroupTransition %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    a3 = v114;
    OUTLINED_FUNCTION_32_0();
    a1 = v111;
    v13 = v112;
    v23 = v115;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    sub_267B9F98C(v21, &qword_28022BC68, &unk_267F08710);
    v21 = v118;
  }

  sub_267C2FB6C(a1, v16, &qword_28022BC68, &unk_267F08710);
  v34 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v34) == 1)
  {
    goto LABEL_6;
  }

  sub_267C2FB6C(v16, v13, &qword_28022BC68, &unk_267F08710);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
  switch(__swift_getEnumTagSinglePayload(v13, 9, v38))
  {
    case 1u:
      v39 = sub_267EF89F8();
      v40 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v40))
      {
        v41 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v41);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v42, v43, "#SpokenMessagesFollowupReturnGroup Rejecting request to reply");
        OUTLINED_FUNCTION_26();
      }

      OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_20_21();
      v44 = sub_267EF93F8();
      OUTLINED_FUNCTION_5_46(v44);
      OUTLINED_FUNCTION_2_47();
      OUTLINED_FUNCTION_17_23();
      v45 = swift_allocObject();
      OUTLINED_FUNCTION_1_56(v45);
      OUTLINED_FUNCTION_16_25(v46, v47);
      swift_retain_n();

      OUTLINED_FUNCTION_10_5();
      sub_267E8FA18();

      OUTLINED_FUNCTION_12_27();
      type metadata accessor for ReadingTerminatedActionGroup(0);
      swift_allocObject();

      v49 = sub_267DFA1D0(v48, a3);
      v50 = &unk_28022BC70;
      v51 = type metadata accessor for ReadingTerminatedActionGroup;
      goto LABEL_38;
    case 3u:
      v66 = sub_267EF89F8();
      v67 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v67))
      {
        v68 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v68);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v69, v70, "#SpokenMessagesFollowupReturnGroup Re-reading conversation");
        OUTLINED_FUNCTION_26();
      }

      OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_20_21();
      v71 = sub_267EF93F8();
      OUTLINED_FUNCTION_5_46(v71);
      OUTLINED_FUNCTION_2_47();
      OUTLINED_FUNCTION_17_23();
      v72 = swift_allocObject();
      OUTLINED_FUNCTION_1_56(v72);
      OUTLINED_FUNCTION_16_25(v73, v74);
      swift_retain_n();

      OUTLINED_FUNCTION_10_5();
      sub_267E8FA18();

      OUTLINED_FUNCTION_12_27();
      v75 = *(v19 + 52);
      if (v75)
      {
        *(v75 + 82) = 0;
      }

      v120 = &type metadata for Features;
      v121 = sub_267BAFCAC();
      LOBYTE(v119[0]) = 12;

      v76 = sub_267EF5128();
      __swift_destroy_boxed_opaque_existential_0(v119);
      if (v76)
      {
        v77 = *(v19 + 52);
        if (v77)
        {

          sub_267E2B73C(0, v77);
          v19 = v117;
        }
      }

      type metadata accessor for SpokenConversationActionGroup(0);
      swift_allocObject();
      v49 = sub_267EB74EC(a3, v19, 0);
      v50 = &qword_280229138;
      v51 = type metadata accessor for SpokenConversationActionGroup;
LABEL_38:
      v78 = sub_267DA49DC(v50, v51, &unk_267F0D600);
      *v21 = v49;
      v21[1] = v78;
      v79 = *MEMORY[0x277D5BF58];
      v80 = sub_267EF4548();
      OUTLINED_FUNCTION_22();
      (*(v81 + 104))(v21, v79, v80);
      v36 = v21;
      v37 = 0;
      v35 = v80;
      goto LABEL_50;
    case 5u:
      v115 = v23;
      OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_20_21();
      v52 = sub_267EF93F8();
      OUTLINED_FUNCTION_5_46(v52);
      OUTLINED_FUNCTION_2_47();
      OUTLINED_FUNCTION_17_23();
      v53 = swift_allocObject();
      OUTLINED_FUNCTION_1_56(v53);
      OUTLINED_FUNCTION_16_25(v54, v55);

      OUTLINED_FUNCTION_10_5();
      sub_267E8FA18();

      OUTLINED_FUNCTION_12_27();
      if (*(a3 + 112))
      {
        v116 = v16;
        v114 = a3;

        sub_267E2C8B0();
        a3 = v56;
        v16 = sub_267BAF0DC(v56);
        v57 = 0;
        v19 = (a3 & 0xC000000000000001);
        v58 = MEMORY[0x277D84F90];
        while (v16 != v57)
        {
          if (v19)
          {
            MEMORY[0x26D609870](v57, a3);
          }

          else
          {
            if (v57 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_53;
            }
          }

          if (__OFADD__(v57, 1))
          {
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            OUTLINED_FUNCTION_0(&qword_280228818);
            goto LABEL_2;
          }

          sub_267DE2198();
          a1 = v59;

          v60 = a1[2];
          v13 = *(v58 + 16);
          v21 = &v13[v60];
          if (__OFADD__(v13, v60))
          {
            goto LABEL_54;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v21 > *(v58 + 24) >> 1)
          {
            sub_267BF4EE8();
            v58 = v61;
          }

          if (a1[2])
          {
            if ((*(v58 + 24) >> 1) - *(v58 + 16) < v60)
            {
              goto LABEL_56;
            }

            swift_arrayInitWithCopy();

            if (v60)
            {
              v63 = *(v58 + 16);
              v64 = __OFADD__(v63, v60);
              v65 = v63 + v60;
              if (v64)
              {
                __break(1u);
                return result;
              }

              *(v58 + 16) = v65;
            }
          }

          else
          {

            if (v60)
            {
              goto LABEL_55;
            }
          }

          ++v57;
        }

        v93 = *(v114 + 128);
        type metadata accessor for MarkMessagesAsReadAction();
        swift_allocObject();
        v94 = sub_267C138B4(v58, v93, v117);
        swift_bridgeObjectRetain_n();

        v95 = sub_267EF89F8();
        v96 = sub_267EF95D8();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 134217984;
          v98 = *(v58 + 16);

          *(v97 + 4) = v98;

          _os_log_impl(&dword_267B93000, v95, v96, "#SpokenMessagesFollowupReturnGroup Marking %ld messages as read", v97, 0xCu);
          OUTLINED_FUNCTION_32_0();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v104 = v118;
        v16 = v116;
        v105 = v113;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B10, &qword_267EFEFB0);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_267EFC020;
        v107 = sub_267DA49DC(&qword_28022BCC8, type metadata accessor for MarkMessagesAsReadAction, &unk_267EFC938);
        *(v106 + 32) = v94;
        *(v106 + 40) = v107;
        v108 = sub_267EF4548();
        __swift_storeEnumTagSinglePayload(v105, 1, 1, v108);
        sub_267EF4338();
        swift_allocObject();
        v109 = sub_267EF4328();
        v110 = sub_267DA49DC(&qword_280229148, MEMORY[0x277D5BDD0], MEMORY[0x277D5BDC8]);
        *v104 = v109;
        v104[1] = v110;
        (*(*(v108 - 8) + 104))(v104, *MEMORY[0x277D5BF58], v108);
        v36 = v104;
        v37 = 0;
        v35 = v108;
      }

      else
      {
        v99 = sub_267EF89F8();
        v100 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v100))
        {
          v101 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v101);
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v102, v103, "#SpokenMessagesFollowupReturnGroup App conversation identifier is not available");
          OUTLINED_FUNCTION_26();
        }

LABEL_6:
        v35 = sub_267EF4548();
        v36 = v21;
        v37 = 1;
      }

LABEL_50:
      __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
      return sub_267B9F98C(v16, &qword_28022BC68, &unk_267F08710);
    case 7u:
      v82 = sub_267EF89F8();
      v83 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v83))
      {
        v84 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v84);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v85, v86, "#SpokenMessagesFollowupReturnGroup Call requested, moving to CallSenderActionGroup");
        OUTLINED_FUNCTION_26();
      }

      OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_20_21();
      v87 = sub_267EF93F8();
      __swift_storeEnumTagSinglePayload(v116, 1, 1, v87);
      OUTLINED_FUNCTION_2_47();
      OUTLINED_FUNCTION_17_23();
      v88 = swift_allocObject();
      OUTLINED_FUNCTION_1_56(v88);
      *(v89 + 64) = v90;
      a1[9] = v117;
      a1[10] = a3;

      OUTLINED_FUNCTION_10_5();
      sub_267E8FA18();

      OUTLINED_FUNCTION_12_27();
      v91 = type metadata accessor for FlowLocatorPhoneFlowFinder();
      inited = swift_initStackObject();
      v120 = v91;
      v121 = &off_2878D76D0;
      v119[0] = inited;
      sub_267CAA984(v21);
      __swift_destroy_boxed_opaque_existential_0(v119);
      return sub_267B9F98C(v16, &qword_28022BC68, &unk_267F08710);
    default:
      sub_267BA1B7C(v13);
      goto LABEL_6;
  }
}

uint64_t sub_267DA48B4()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_6_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_44(v1);

  return sub_267DA36E0(v3, v4, v5, v6, v7);
}

uint64_t sub_267DA4948()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_6_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_44(v1);

  return sub_267DA36E0(v3, v4, v5, v6, v7);
}

uint64_t sub_267DA49DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267DA4A24(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC50, &qword_267F08558);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_267EF6A08();
  v10 = MEMORY[0x28223BE20](v9);
  v31 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = v13;
  v30 = &v25 - v12;
  v14 = 0;
  v15 = *(a3 + 16);
  v32 = (v13 + 32);
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 == v14)
    {
      return v33;
    }

    v16 = *(type metadata accessor for SmsContactIntentNode(0) - 8);
    a1(a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_267B9FED8(v8, &qword_28022BC50, &qword_267F08558);
      ++v14;
    }

    else
    {
      v17 = *v32;
      (*v32)(v30, v8, v9);
      v28 = v17;
      v17(v31, v30, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267C711EC();
        v33 = v21;
      }

      v18 = *(v33 + 16);
      v19 = v18 + 1;
      if (v18 >= *(v33 + 24) >> 1)
      {
        v26 = *(v33 + 16);
        v27 = v18 + 1;
        sub_267C711EC();
        v18 = v26;
        v19 = v27;
        v33 = v22;
      }

      ++v14;
      v20 = v33;
      *(v33 + 16) = v19;
      v28((v20 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v18), v31, v9);
    }
  }

  v23 = v33;

  return v23;
}

void sub_267DA4D44(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = sub_267BAF0DC(a3);
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D609870](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v15 = v8;
    a1(&v14, &v15);
    if (v3)
    {

      return;
    }

    v9 = v14;
    if (v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267C71474();
        v7 = v11;
      }

      v10 = *(v7 + 16);
      if (v10 >= *(v7 + 24) >> 1)
      {
        sub_267C71474();
        v7 = v12;
      }

      *(v7 + 16) = v10 + 1;
      *(v7 + 8 * v10 + 32) = v9;
    }

    ++v6;
  }
}

void *sub_267DA4F24(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = result;
  v7 = 0;
  v14 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v8 = *(a3 + 16);
  while (1)
  {
    if (v8 == v7)
    {
      return v14;
    }

    if (v7 >= v8)
    {
      break;
    }

    v9 = a4(0);
    v11 = *(v9 - 8);
    result = (v9 - 8);
    v10 = v11;
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_14;
    }

    result = (v6)(&v16, a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v7);
    if (v4)
    {
      v13 = v14;

      return v13;
    }

    ++v7;
    if (v16)
    {
      MEMORY[0x26D608F90](result);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      result = sub_267EF9368();
      v14 = v17;
      v7 = v12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_267DA509C(uint64_t a1, uint64_t a2)
{
  v111 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD0, &qword_267F08750);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105();
  v120 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  OUTLINED_FUNCTION_18(v6);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  v9 = &v110 - v8;
  v10 = sub_267EF5B58();
  OUTLINED_FUNCTION_58();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v126 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD8, &unk_267F0ECC0);
  v17 = OUTLINED_FUNCTION_18(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v110 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE0, &qword_267F08758);
  OUTLINED_FUNCTION_18(v21);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_105();
  v131 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  OUTLINED_FUNCTION_18(v24);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v25);
  v27 = &v110 - v26;
  v28 = sub_267EF5A88();
  OUTLINED_FUNCTION_58();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_0_0();
  v134 = v33 - v32;
  v34 = type metadata accessor for SmsContactIntentNode(0);
  v115 = *(v34 - 8);
  MEMORY[0x28223BE20](v34 - 8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v110 - v37;
  v39 = 0;
  v116 = a2;
  v117 = *(a2 + 16);
  v125 = (v12 + 32);
  v124 = (v12 + 8);
  v129 = v30 + 8;
  v130 = (v30 + 32);
  v113 = MEMORY[0x277D84F90];
  v127 = v10;
  v128 = v9;
  v122 = v20;
  v114 = &v110 - v37;
LABEL_2:
  v40 = v39;
LABEL_3:
  if (v40 != v117)
  {
    v41 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v42 = *(v115 + 72);
    v121 = v40 + 1;
    v119 = v41;
    v118 = v42;
    sub_267DA6FC0(v116 + v41 + v42 * v40, v38);
    result = sub_267EF5B38();
    v44 = result;
    v45 = 0;
    v46 = *(result + 16);
    v132 = result;
    v133 = v46;
    for (i = result + 32; ; i += 40)
    {
      if (v133 == v45)
      {

        v38 = v114;
        v36 = sub_267DA7088(v114);
        v40 = v121;
        goto LABEL_3;
      }

      if (v45 >= *(v44 + 16))
      {
        __break(1u);
        return result;
      }

      sub_267B9AFEC(i, v136);
      sub_267B9AFEC(v136, v135);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCF0, &qword_267F08768);
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v48, v49, v50, v28);
        (*v130)(v134, v27, v28);
        v51 = sub_267EF5A78();
        v52 = *(v51 + 16);
        if (v52)
        {
          v53 = v52 - 1;
          v54 = sub_267EF5958();
          OUTLINED_FUNCTION_5_0();
          (*(v55 + 16))(v20, v51 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v53, v54);
          v56 = v20;
          v57 = 0;
        }

        else
        {
          v54 = sub_267EF5958();
          v56 = OUTLINED_FUNCTION_19_24();
        }

        __swift_storeEnumTagSinglePayload(v56, v57, 1, v54);

        sub_267EF5958();
        v70 = OUTLINED_FUNCTION_19_24();
        OUTLINED_FUNCTION_5_1(v70, v71, v54);
        if (v83)
        {
          v72 = OUTLINED_FUNCTION_2_48();
          v73(v72);
          sub_267B9FED8(v20, &qword_28022BCD8, &unk_267F0ECC0);
          sub_267EF5908();
          v79 = v131;
          OUTLINED_FUNCTION_78();
          __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
          goto LABEL_22;
        }

        v78 = v131;
        sub_267EF5918();
        v79 = v78;
        v80 = *(v54 - 8);
        v81 = *(v80 + 8);
        v81(v20, v54);
        v82 = sub_267EF5908();
        OUTLINED_FUNCTION_5_1(v78, 1, v82);
        if (v83)
        {
          v84 = OUTLINED_FUNCTION_2_48();
          v85(v84);
          v10 = v127;
          v9 = v128;
LABEL_22:
          sub_267B9FED8(v79, &qword_28022BCE0, &qword_267F08758);
LABEL_23:
          v44 = v132;
LABEL_24:
          result = __swift_destroy_boxed_opaque_existential_0(v136);
          goto LABEL_25;
        }

        sub_267B9FED8(v78, &qword_28022BCE0, &qword_267F08758);
        v86 = sub_267EF5A78();
        v87 = *(v86 + 16);
        if (v87)
        {
          v88 = v123;
          (*(v80 + 16))(v123, v86 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * (v87 - 1), v54);
          v89 = 0;
        }

        else
        {
          v89 = 1;
          v88 = v123;
        }

        __swift_storeEnumTagSinglePayload(v88, v89, 1, v54);

        v90 = OUTLINED_FUNCTION_19_24();
        OUTLINED_FUNCTION_5_1(v90, v91, v54);
        if (v83)
        {
          v92 = OUTLINED_FUNCTION_2_48();
          v93(v92);
          v94 = v88;
          v95 = &qword_28022BCD8;
          v96 = &unk_267F0ECC0;
LABEL_35:
          sub_267B9FED8(v94, v95, v96);
          v10 = v127;
          v9 = v128;
          v20 = v122;
          goto LABEL_23;
        }

        v97 = v120;
        sub_267EF58F8();
        v81(v88, v54);
        v98 = sub_267EF58E8();
        OUTLINED_FUNCTION_5_1(v97, 1, v98);
        if (v99)
        {
          v100 = OUTLINED_FUNCTION_2_48();
          v101(v100);
          v94 = v97;
          v95 = &qword_28022BCD0;
          v96 = &qword_267F08750;
          goto LABEL_35;
        }

        v66 = sub_267EF58D8();
        v102 = OUTLINED_FUNCTION_2_48();
        v103(v102);
        OUTLINED_FUNCTION_5_0();
        (*(v104 + 8))(v97, v98);
        v10 = v127;
        v9 = v128;
        v20 = v122;
        v44 = v132;
      }

      else
      {
        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v58, v59, v60, v28);
        sub_267B9FED8(v27, &qword_28022BCE8, &qword_267F08760);
        sub_267B9AFEC(v136, v135);
        if ((swift_dynamicCast() & 1) == 0)
        {
          OUTLINED_FUNCTION_78();
          __swift_storeEnumTagSinglePayload(v67, v68, v69, v10);
          sub_267B9FED8(v9, &qword_280229798, &unk_267EFE4D0);
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v61, v62, v63, v10);
        v64 = v126;
        v65 = (*v125)(v126, v9, v10);
        v66 = sub_267EC0AC4(v65);
        (*v124)(v64, v10);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v136);
      if (v66)
      {

        v38 = v114;
        sub_267DA7024(v114, v112);
        v105 = v113;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v137 = v105;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_267C7235C(0, *(v105 + 16) + 1, 1);
          v105 = v137;
        }

        v39 = v121;
        v108 = *(v105 + 16);
        v107 = *(v105 + 24);
        if (v108 >= v107 >> 1)
        {
          sub_267C7235C(v107 > 1, v108 + 1, 1);
          v105 = v137;
        }

        *(v105 + 16) = v108 + 1;
        v113 = v105;
        v36 = sub_267DA7024(v112, v105 + v119 + v108 * v118);
        goto LABEL_2;
      }

LABEL_25:
      ++v45;
    }
  }

  MEMORY[0x28223BE20](v36);
  *(&v110 - 2) = v111;
  v109 = sub_267DA4A24(sub_267DA70E4, (&v110 - 4), v113);

  return v109;
}

uint64_t sub_267DA5ADC@<X0>(uint64_t a1@<X8>)
{
  v160 = a1;
  type metadata accessor for SmsContactIntentNode(0);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6();
  v146 = v3;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v4);
  v153 = v145 - v5;
  v164 = sub_267EF6AE8();
  OUTLINED_FUNCTION_58();
  v152 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v151 = v9 - v8;
  sub_267EF6A18();
  OUTLINED_FUNCTION_58();
  v155 = v11;
  v156 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v13);
  v150 = v145 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229EC0, &qword_267EFF9A8);
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6();
  v159 = v17;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  v154 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77_0();
  v149 = v22;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v23);
  v163 = v145 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC50, &qword_267F08558);
  OUTLINED_FUNCTION_18(v25);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCF8, &qword_267F08770);
  OUTLINED_FUNCTION_18(v27);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD00, &qword_267F08778);
  OUTLINED_FUNCTION_18(v29);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_105();
  v148 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD08, &qword_267F08780);
  OUTLINED_FUNCTION_18(v32);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_105();
  v147 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD10, &qword_267F08788);
  OUTLINED_FUNCTION_18(v35);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v36);
  v38 = v145 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD18, &unk_267F08790);
  OUTLINED_FUNCTION_18(v39);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v40);
  v42 = v145 - v41;
  v43 = sub_267EF59A8();
  OUTLINED_FUNCTION_58();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_0_0();
  v49 = v48 - v47;
  v162 = sub_267EF6A08();
  OUTLINED_FUNCTION_58();
  v158 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6();
  v157 = v52;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v53);
  v55 = v145 - v54;
  sub_267EF69F8();
  v161 = v1;
  sub_267D6BECC(v42);
  OUTLINED_FUNCTION_5_1(v42, 1, v43);
  if (v61)
  {
    sub_267B9FED8(v42, &qword_28022BD18, &unk_267F08790);
    v56 = v161;
    v57 = v163;
  }

  else
  {
    (*(v45 + 32))(v49, v42, v43);
    OUTLINED_FUNCTION_7_35();
    sub_267EF5D48();
    v58 = sub_267EF55E8();
    v59 = OUTLINED_FUNCTION_19_24();
    OUTLINED_FUNCTION_5_1(v59, v60, v58);
    v145[0] = v45;
    if (v61)
    {
      sub_267B9FED8(v38, &qword_28022BD10, &qword_267F08788);
    }

    else
    {
      sub_267EF55D8();
      OUTLINED_FUNCTION_5_0();
      (*(v62 + 8))(v38, v58);
      sub_267EF6928();
    }

    OUTLINED_FUNCTION_7_35();
    sub_267EF5DC8();
    v63 = v147;
    if (v64 || (OUTLINED_FUNCTION_7_35(), sub_267EF5D98(), v65))
    {
      sub_267EF69E8();
    }

    OUTLINED_FUNCTION_7_35();
    sub_267EF5D38();
    if (v66)
    {
      sub_267EF6918();
    }

    OUTLINED_FUNCTION_7_35();
    sub_267EF5DA8();
    if (v67)
    {
      sub_267EF68F8();
    }

    OUTLINED_FUNCTION_7_35();
    sub_267EF5DB8();
    if (v68)
    {
      sub_267EF69C8();
    }

    OUTLINED_FUNCTION_7_35();
    sub_267EF5D58();
    v69 = sub_267EF55F8();
    OUTLINED_FUNCTION_5_1(v63, 1, v69);
    if (v61)
    {
      sub_267B9FED8(v63, &qword_28022BD08, &qword_267F08780);
    }

    else
    {
      sub_267DA71E0(&qword_28022BD20, MEMORY[0x277D5E408], MEMORY[0x277D5E410]);
      sub_267EF9298();
      OUTLINED_FUNCTION_5_0();
      (*(v70 + 8))(v63, v69);
      sub_267EF6938();
    }

    v56 = v161;
    OUTLINED_FUNCTION_7_35();
    sub_267EF5D88();
    v57 = v163;
    if (v71)
    {
      sub_267EF6958();
    }

    v72 = v148;
    OUTLINED_FUNCTION_7_35();
    sub_267EF5D78();
    v73 = sub_267EF5608();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v73);
    sub_267B9FED8(v72, &qword_28022BD00, &qword_267F08778);
    if (EnumTagSinglePayload != 1)
    {
      OUTLINED_FUNCTION_7_35();
      sub_267EF5D68();
      if (v75)
      {
      }
    }

    sub_267EF6998();
    OUTLINED_FUNCTION_7_35();
    sub_267EF5D68();
    if (v76)
    {
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v77, v78, v79, v162);
      sub_267EF6B98();
      sub_267EF6BA8();
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
      sub_267EF6948();
    }

    (*(v145[0] + 8))(v49, v43);
  }

  if (qword_280228858 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_8_39();
  sub_267DA71E0(v84, v85, &unk_267F07B20);
  sub_267EF5B28();
  if (v166)
  {
    v86 = sub_267EF69D8();
    OUTLINED_FUNCTION_16_26(v86, v87);
    OUTLINED_FUNCTION_11_35();
    if (v88 || (v89 = sub_267EF6908(), OUTLINED_FUNCTION_16_26(v89, v90), OUTLINED_FUNCTION_11_35(), v91) || (v92 = sub_267EF68E8(), OUTLINED_FUNCTION_16_26(v92, v93), OUTLINED_FUNCTION_11_35(), v94))
    {
    }

    else
    {
      sub_267EF69E8();
    }
  }

  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v164);
  if (qword_280228878 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_48();
  v98 = sub_267DEAC8C(v165, v166);

  if (!v98)
  {
    (*(v155 + 104))(v150, *MEMORY[0x277D56010], v156);
    OUTLINED_FUNCTION_3_48();
    v107 = v149;
LABEL_51:
    sub_267EF6AD8();
    sub_267B9FED8(v57, &qword_280229EC0, &qword_267EFF9A8);
    OUTLINED_FUNCTION_9();
    v101 = v164;
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v164);
    v111 = v107;
LABEL_52:
    sub_267DA7100(v111, v57);
    goto LABEL_53;
  }

  if (qword_280228880 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_48();
  v99 = sub_267DEAC8C(v165, v166);

  if (!v99)
  {
    (*(v155 + 104))(v145[3], *MEMORY[0x277D56008], v156);
    OUTLINED_FUNCTION_3_48();
    v107 = v145[2];
    goto LABEL_51;
  }

  if (qword_280228888 != -1)
  {
    swift_once();
  }

  sub_267EF5B28();
  v100 = v166;
  v101 = v164;
  if (v166)
  {
    v102 = v165;
    v103 = HIBYTE(v166) & 0xF;
    if ((v166 & 0x2000000000000000) == 0)
    {
      v103 = v165 & 0xFFFFFFFFFFFFLL;
    }

    if (v103)
    {

      v104 = sub_267D6DC7C();
      if (v104 == 41 || (v105 = sub_267D6DC24(v104)) == 0)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v136 = sub_267EF8A08();
        __swift_project_value_buffer(v136, qword_280240FB0);

        v137 = sub_267EF89F8();
        v138 = sub_267EF95D8();

        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v165 = v140;
          *v139 = 136315138;
          *(v139 + 4) = sub_267BA33E8(v102, v100, &v165);
          _os_log_impl(&dword_267B93000, v137, v138, "ContactMapping# Unable to map provided contact type %s", v139, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v140);
          v56 = v161;
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_32_0();
        }
      }

      else
      {
        v106 = v105;
        sub_267EF9028();
      }

      (*(v155 + 104))(v145[1], *MEMORY[0x277D56018], v156);
      v141 = v154;
      sub_267EF6AD8();
      sub_267B9FED8(v57, &qword_280229EC0, &qword_267EFF9A8);
      OUTLINED_FUNCTION_9();
      v101 = v164;
      __swift_storeEnumTagSinglePayload(v142, v143, v144, v164);
      v111 = v141;
      goto LABEL_52;
    }

    v101 = v164;
  }

LABEL_53:
  v112 = v159;
  sub_267DA7170(v57, v159);
  if (__swift_getEnumTagSinglePayload(v112, 1, v101) == 1)
  {
    sub_267B9FED8(v112, &qword_280229EC0, &qword_267EFF9A8);
  }

  else
  {
    v114 = v151;
    v113 = v152;
    (*(v152 + 32))(v151, v112, v101);
    (*(v113 + 16))(v154, v114, v101);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v101);
    sub_267EF69A8();
    (*(v113 + 8))(v114, v101);
  }

  v118 = v162;
  v119 = v157;
  sub_267EF69F8();
  v120 = sub_267EF6968();
  v121 = v158;
  v122 = *(v158 + 8);
  v122(v119, v118);
  if (v120)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v123 = sub_267EF8A08();
    __swift_project_value_buffer(v123, qword_280240FB0);
    v124 = v153;
    sub_267DA6FC0(v56, v153);
    v125 = sub_267EF89F8();
    v126 = sub_267EF95D8();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v165 = v128;
      *v127 = 136315138;
      sub_267DA6FC0(v124, v146);
      v129 = sub_267EF9098();
      v131 = v130;
      sub_267DA7088(v124);
      v132 = sub_267BA33E8(v129, v131, &v165);

      *(v127 + 4) = v132;
      _os_log_impl(&dword_267B93000, v125, v126, "ContactMapping# converted contact is empty: %s", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v128);
      OUTLINED_FUNCTION_32_0();
      v118 = v162;
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      sub_267DA7088(v124);
    }

    sub_267B9FED8(v163, &qword_280229EC0, &qword_267EFF9A8);
    v122(v55, v118);
    v134 = 1;
    v133 = v160;
  }

  else
  {
    sub_267B9FED8(v163, &qword_280229EC0, &qword_267EFF9A8);
    v133 = v160;
    (*(v121 + 32))(v160, v55, v118);
    v134 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v133, v134, 1, v118);
}

uint64_t sub_267DA6AEC()
{
  v0 = sub_267EF61C8();
  OUTLINED_FUNCTION_58();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v6 = v5 - v4;
  if (qword_280228870 != -1)
  {
    swift_once();
  }

  type metadata accessor for SmsContactIntentNode(0);
  OUTLINED_FUNCTION_8_39();
  sub_267DA71E0(v7, v8, &unk_267F07B20);
  sub_267EF5B28();
  v9 = 0;
  if (v12 - 31 <= 1)
  {
    sub_267EF65B8();
    swift_allocObject();
    sub_267EF65A8();
    (*(v2 + 104))(v6, *MEMORY[0x277D5EE50], v0);
    sub_267EF6598();
    (*(v2 + 8))(v6, v0);
    sub_267EF6168();
    swift_allocObject();
    v10 = sub_267EF6158();

    sub_267EF5DE8();

    v9 = MEMORY[0x26D6059D0](v10);
  }

  return v9;
}

uint64_t sub_267DA6CE0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_267DA6AEC();
  if (!v5)
  {
    return sub_267DA5ADC(a2);
  }

  v6 = v5;
  if (qword_280228818 != -1)
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
    _os_log_impl(&dword_267B93000, v8, v9, "ContactMapping# resolving contact reference", v10, 2u);
    MEMORY[0x26D60A7B0](v10, -1, -1);
  }

  v11 = sub_267D270C4(v6, a1);
  if (v2)
  {
    v13 = v2;
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      v18 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v19 = sub_267EF9098();
      v21 = sub_267BA33E8(v19, v20, &v26);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_267B93000, v14, v15, "ContactMapping# failed to resolve reference: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x26D60A7B0](v17, -1, -1);
      MEMORY[0x26D60A7B0](v16, -1, -1);
    }

    else
    {
    }

    v25 = sub_267EF6A08();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v25);
  }

  else
  {
    v23 = v11;
    if (v11 == 1)
    {
      v24 = sub_267EF6A08();
      __swift_storeEnumTagSinglePayload(a2, 1, 1, v24);
    }

    else
    {
      sub_267D27798(v11, v12, a2);
    }
  }
}

uint64_t sub_267DA6FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsContactIntentNode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DA7024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsContactIntentNode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DA7088(uint64_t a1)
{
  v2 = type metadata accessor for SmsContactIntentNode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267DA7100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229EC0, &qword_267EFF9A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DA7170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229EC0, &qword_267EFF9A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DA71E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267DA7228()
{

  return swift_deallocClassInstance();
}

uint64_t sub_267DA7284()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return result;
}

uint64_t sub_267DA7298@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v69 = a8;
  v78 = a6;
  v67 = a4;
  v71 = a9;
  v77 = sub_267EF6A88();
  OUTLINED_FUNCTION_58();
  v75 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v76 = v16;
  sub_267EF6B88();
  OUTLINED_FUNCTION_58();
  v72 = v18;
  v73 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v74 = v19;
  v20 = sub_267EF6B38();
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_2_0();
  v70 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  MEMORY[0x28223BE20](v22 - 8);
  v80 = &v63 - v23;
  v24 = sub_267EF2E38();
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_2_0();
  v79 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v27 = MEMORY[0x28223BE20](v26);
  v66 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v63 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v63 - v32;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v34 = sub_267EF8A08();
  __swift_project_value_buffer(v34, qword_280240FB0);
  sub_267BB16A4(a7, v33, &qword_280229430, &qword_267EFD2C0);

  v35 = sub_267EF89F8();
  v36 = sub_267EF95D8();

  v37 = os_log_type_enabled(v35, v36);
  v68 = a1;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v64 = a5;
    v39 = v38;
    v40 = swift_slowAlloc();
    v65 = a3;
    v63 = v40;
    v82 = a2;
    v83[0] = v40;
    *v39 = 136315394;
    v81 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v41 = sub_267EF9098();
    v43 = a7;
    v44 = sub_267BA33E8(v41, v42, v83);

    *(v39 + 4) = v44;
    a7 = v43;
    *(v39 + 12) = 2080;
    sub_267BB16A4(v33, v31, &qword_280229430, &qword_267EFD2C0);
    v45 = sub_267EF9098();
    v47 = v46;
    sub_267C334FC(v33);
    v48 = sub_267BA33E8(v45, v47, v83);

    *(v39 + 14) = v48;
    _os_log_impl(&dword_267B93000, v35, v36, "#SiriKitContactResolving CRR config creation with appIdentifier:%s, crrCommsAppSelectionJointId:%s", v39, 0x16u);
    v49 = v63;
    swift_arrayDestroy();
    v50 = v49;
    a3 = v65;
    MEMORY[0x26D60A7B0](v50, -1, -1);
    v51 = v39;
    v52 = v64;
    MEMORY[0x26D60A7B0](v51, -1, -1);

    if (!v52)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_267EF6F98();
    sub_267EF37B8();
    v54 = v53;

    if (v54)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_267C334FC(v33);
  if (a5)
  {
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:
  v81 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229438, &unk_267F01FB0);
  sub_267EF9098();
  __swift_project_boxed_opaque_existential_0(v67, v67[3]);
  sub_267EF3B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_267EFC020;
  v56 = 0x8000000267F10280;
  v57 = 0xD000000000000013;
  if (a2)
  {
    v57 = v68;
    v56 = a2;
  }

  *(v55 + 32) = v57;
  *(v55 + 40) = v56;
  sub_267BB16A4(v69, v80, &qword_280229428, &unk_267F00E50);
  v58 = a7;
  v59 = v66;
  sub_267BB16A4(v58, v66, &qword_280229430, &qword_267EFD2C0);
  v60 = sub_267EF2D28();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v60);

  if (EnumTagSinglePayload == 1)
  {
    sub_267C334FC(v59);
  }

  else
  {
    sub_267EF2CE8();
    (*(*(v60 - 8) + 8))(v59, v60);
  }

  sub_267EF6B28();
  (*(v72 + 104))(v74, *MEMORY[0x277D56148], v73);
  (*(v75 + 104))(v76, *MEMORY[0x277D560D0], v77);
  return sub_267EF6AF8();
}

void sub_267DA798C(void *a1)
{
  if (![a1 attributes])
  {
    v3 = sub_267DA7B4C(a1);
    if (!v3 || (v4 = *(v3 + 16), , !v4))
    {
      v5 = sub_267DE92F0(a1);
      if (!v5 || (v6 = *(v5 + 16), , !v6))
      {
        v7 = sub_267E2D798(a1);
        if (!v7 || (v8 = *(v7 + 16), , !v8))
        {
          v9 = sub_267BCEA0C(a1);
          if (!v9 || (sub_267BAF0DC(v9), OUTLINED_FUNCTION_45_3(), !v1))
          {
            v10 = sub_267E43628(a1);
            if (!v10 || (v11 = *(v10 + 16), , !v11))
            {
              sub_267BC1E68();
              [a1 copy];
              sub_267EF99B8();
              v12 = swift_unknownObjectRelease();
              OUTLINED_FUNCTION_0_45(v12);
              sub_267DE9088();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_267DA7A98(void *a1)
{
  if (([a1 attributes] & 2) == 0)
  {
    return 0;
  }

  v4 = sub_267E2D6E4(a1);
  if (!v4 || (sub_267BAF0DC(v4), OUTLINED_FUNCTION_45_3(), !v1))
  {
    v5 = sub_267E2D700(a1);
    if (!v5 || (sub_267BAF0DC(v5), OUTLINED_FUNCTION_45_3(), !v1))
    {
      v6 = sub_267E2D78C(a1);
      if (!v6 || (v7 = *(v6 + 16), , !v7))
      {
        result = [a1 dateTimeRange];
        if (!result)
        {
          return result;
        }
      }
    }
  }

  return 1;
}

uint64_t sub_267DA7B4C(void *a1)
{
  v1 = [a1 contents];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF92F8();

  return v3;
}

void *sub_267DA7BA4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v19 - v7);
  type metadata accessor for ConversationAppendingAction();
  swift_allocObject();
  v9 = sub_267D27A0C(a1, a2);
  v10 = sub_267BE6C54(a2);
  v11 = sub_267DA8268(&qword_28022B0B8, type metadata accessor for ConversationAppendingAction, &unk_267F04B60);
  v10[3] = v9;
  v10[4] = v11;
  swift_retain_n();

  swift_unknownObjectRelease();
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = a2;
  v12[4] = v5;
  type metadata accessor for OfferTransitionActionGroup(0);
  swift_allocObject();
  v13 = sub_267CFB440(sub_267DA8238, v12);

  v14 = sub_267DA8268(&qword_280229990, type metadata accessor for OfferTransitionActionGroup, &unk_267F02F50);
  *v8 = v13;
  v8[1] = v14;
  v15 = *MEMORY[0x277D5BF58];
  v16 = sub_267EF4548();
  (*(*(v16 - 8) + 104))(v8, v15, v16);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
  v17 = OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition;
  swift_beginAccess();
  sub_267C13844(v8, v10 + v17);
  swift_endAccess();

  return v10;
}

uint64_t sub_267DA7E3C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v6 = sub_267EF4548();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = qword_280228818;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_267EF8A08();
    __swift_project_value_buffer(v12, qword_280240FB0);
    v13 = sub_267EF89F8();
    v14 = sub_267EF95D8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_267B93000, v13, v14, "#ConversationAppendingActionGroup creating offer transition for native flow", v15, 2u);
      MEMORY[0x26D60A7B0](v15, -1, -1);
    }

    sub_267CAA1C0(v10, a2, v9);
    a3(v9);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v16 = sub_267EF8A08();
    __swift_project_value_buffer(v16, qword_280240FB0);
    v17 = sub_267EF89F8();
    v18 = sub_267EF95D8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_267B93000, v17, v18, "#ConversationAppendingActionGroup no more conversation", v19, 2u);
      MEMORY[0x26D60A7B0](v19, -1, -1);
    }

    type metadata accessor for RequestConclusionActionGroup(0);
    swift_allocObject();

    v21 = sub_267DFA04C(v20);
    v22 = sub_267DA8268(&qword_28022BD38, type metadata accessor for RequestConclusionActionGroup, &unk_267F0D600);
    *v9 = v21;
    v9[1] = v22;
    (*(v7 + 104))(v9, *MEMORY[0x277D5BF58], v6);
    a3(v9);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_267DA8158()
{
  sub_267BA0068();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConversationAppendingActionGroup(uint64_t a1)
{
  result = qword_28022BD28;
  if (!qword_28022BD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267DA8268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267DA82B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_267BC7934(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_267BC7934((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_267DA8380(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_267C723B4(0, v1, 0);
    v4 = a1 + 56;
    v2 = v13;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229AC8, &qword_267EFEF58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BE00, &qword_267EFEF48);
      swift_dynamicCast();
      v6 = *(v13 + 16);
      v5 = *(v13 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_267C723B4(v5 > 1, v6 + 1, 1);
      }

      *(v13 + 16) = v6 + 1;
      v7 = (v13 + 32 * v6);
      v7[4] = v9;
      v7[5] = v10;
      v7[6] = v11;
      v7[7] = v12;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_267DA84BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_267EF9A68();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x277D84F90];
  result = sub_267C72434(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D609870](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      swift_dynamicCast();
      v10 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_267C72434((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      sub_267BA7F4C(&v9, (v3 + 32 * v8 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_267DA8624(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    OUTLINED_FUNCTION_4_46();
    sub_267C72454();
    v4 = v1 + 32;
    v3 = v9;
    do
    {
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE10, &qword_267EFEED0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B18, &qword_267EFEFB8);
      swift_dynamicCast();
      v5 = v8;
      v6 = *(v9 + 16);
      if (v6 >= *(v9 + 24) >> 1)
      {
        sub_267C72454();
        v5 = v8;
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 16 * v6 + 32) = v5;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_267DA874C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = OUTLINED_FUNCTION_4_46();
    sub_267C72434(v4, v5, v6);
    v3 = v12;
    v7 = v1 + 40;
    do
    {

      swift_dynamicCast();
      v12 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_267C72434((v8 > 1), v9 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v9 + 1;
      sub_267BA7F4C(&v11, (v3 + 32 * v9 + 32));
      v7 += 16;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_267DA8838(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = OUTLINED_FUNCTION_4_46();
    sub_267BE8B74(v4, v5, v6);
    v3 = v13;
    v7 = v1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
      swift_dynamicCast();
      v8 = v12;
      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_267BE8B74((v9 > 1), v10 + 1, 1);
        v8 = v12;
      }

      *(v13 + 16) = v10 + 1;
      *(v13 + 16 * v10 + 32) = v8;
      v7 += 16;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_267DA893C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_267C7279C(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_267B9AFEC(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDE8, &qword_267F08928);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BDF0, &unk_267EFEF00);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_267C7279C((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_267B9A5E8(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_267DA8A74(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v104 = a7;
  v108 = a6;
  v97 = a5;
  *&v117 = a2;
  v94 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD40, &unk_267F003E0);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v109 = v10;
  OUTLINED_FUNCTION_26_2();
  v112 = sub_267EF6EA8();
  OUTLINED_FUNCTION_58();
  v89 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v15 = v14 - v13;
  v113 = sub_267EF6F58();
  OUTLINED_FUNCTION_58();
  v111 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v20 = v19 - v18;
  v101 = sub_267EF2CC8();
  OUTLINED_FUNCTION_58();
  v100 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_0();
  v99 = v24 - v23;
  OUTLINED_FUNCTION_26_2();
  v98 = sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v96 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_0();
  v95 = v28 - v27;
  OUTLINED_FUNCTION_26_2();
  v92 = sub_267EF6EB8();
  OUTLINED_FUNCTION_58();
  v91 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_0_0();
  v90 = v32 - v31;
  OUTLINED_FUNCTION_26_2();
  v33 = sub_267EF6D88();
  OUTLINED_FUNCTION_58();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v38);
  v40 = &v87 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v41);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v42);
  v44 = &v87 - v43;
  v103 = sub_267EF6F08();
  OUTLINED_FUNCTION_58();
  v116 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_0_0();
  v49 = v48 - v47;
  if (qword_280228818 != -1)
  {
LABEL_26:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v105 = v40;
  v106 = v35;
  v107 = v33;
  v88 = v15;
  v110 = v20;
  v50 = sub_267EF8A08();
  __swift_project_value_buffer(v50, qword_280240FB0);
  v51 = sub_267EF89F8();
  v15 = sub_267EF95D8();
  v52 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v52, v53))
  {
    OUTLINED_FUNCTION_14_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_24_23();
    _os_log_impl(v54, v55, v56, v57, v58, v59);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  sub_267EF6EF8();
  v20 = v49;
  sub_267EF6EE8();

  v115 = v49;
  sub_267EF6ED8();
  v35 = *&a4[OBJC_IVAR____TtC16SiriMessagesFlow13MessagesGroup_membersOtherThanYou];
  a4 = sub_267BAF0DC(v35);
  v40 = 0;
  *&v117 = v35 & 0xC000000000000001;
  v33 = v35 & 0xFFFFFFFFFFFFFF8;
  v118 = MEMORY[0x277D84F90];
  while (a4 != v40)
  {
    if (v117)
    {
      v49 = MEMORY[0x26D609870](v40, v35);
    }

    else
    {
      if (v40 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v49 = *(v35 + 8 * v40 + 32);
    }

    v15 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v20 = v49;
    sub_267EF7788();
    v60 = sub_267EF79B8();
    if (__swift_getEnumTagSinglePayload(v44, 1, v60) == 1)
    {

      sub_267B9F98C(v44, &unk_28022AE30, &qword_267EFC0B0);
      ++v40;
    }

    else
    {
      v20 = sub_267EF7998();
      v62 = v61;

      (*(*(v60 - 8) + 8))(v44, v60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267BF4EE8();
        v118 = v65;
      }

      v49 = *(v118 + 16);
      if (v49 >= *(v118 + 24) >> 1)
      {
        sub_267BF4EE8();
        v118 = v66;
      }

      v63 = v118;
      *(v118 + 16) = v49 + 1;
      v64 = v63 + 16 * v49;
      *(v64 + 32) = v20;
      *(v64 + 40) = v62;
      v40 = v15;
    }
  }

  v67 = v93;
  sub_267EF6D78();
  sub_267EF7C18();
  sub_267EF6D48();
  (*(v91 + 16))(v90, v97, v92);
  sub_267EF6D58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD50, &qword_267F088B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD58, &qword_267F088C0);
  OUTLINED_FUNCTION_20_22();
  v68 = swift_allocObject();
  v117 = xmmword_267EFC020;
  *(v68 + 16) = xmmword_267EFC020;
  v69 = (v68 + v15);
  *v69 = 0xD000000000000018;
  v69[1] = 0x8000000267F19D80;
  sub_267EF9318();

  sub_267EF6F88();
  sub_267EF8F28();
  sub_267EF6D38();
  v70 = v95;
  sub_267EF2D18();
  sub_267EF2CE8();
  (*(v96 + 8))(v70, v98);
  sub_267EF6CF8();
  sub_267EF6CE8();
  (*(v100 + 16))(v99, v104, v101);
  sub_267EF6D68();
  sub_267EF6D18();
  v72 = v105;
  v71 = v106;
  v73 = v107;
  (*(v106 + 32))(v105, v67, v107);
  (*(v71 + 16))(v102, v72, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD60, &qword_267F088C8);
  inited = swift_initStackObject();
  *(inited + 16) = v117;
  *(inited + 32) = 0x746E4570756F7247;
  *(inited + 40) = 0xEB00000000797469;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD68, &qword_267F088D0);
  v75 = v116;
  v76 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = v117;
  v78 = *(v75 + 16);
  v79 = v103;
  v78(v77 + v76, v115, v103);
  *(inited + 48) = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD70, &qword_267F00648);
  sub_267EF8F28();
  v80 = v110;
  sub_267EF6F18();
  v81 = v109;
  sub_267B9A598(v108, v109, &unk_28022BD40, &unk_267F003E0);
  v82 = v112;
  if (__swift_getEnumTagSinglePayload(v81, 1, v112) == 1)
  {
    sub_267B9F98C(v81, &unk_28022BD40, &unk_267F003E0);
  }

  else
  {
    v83 = v89;
    v84 = v88;
    (*(v89 + 32))(v88, v81, v82);
    v85 = v114;
    sub_267EF6F48();
    if (v85)
    {
    }

    (*(v83 + 8))(v84, v82);
  }

  sub_267C167B0();
  (*(v111 + 8))(v80, v113);
  (*(v71 + 8))(v72, v73);
  return (*(v116 + 8))(v115, v79);
}

uint64_t sub_267DA9594(uint64_t a1, int a2)
{
  v4 = sub_267EF2E38();
  OUTLINED_FUNCTION_58();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v38 = sub_267EF2D48();
  v39 = v11;
  v12 = sub_267BB5034();
  v13 = OUTLINED_FUNCTION_23_19(v12, MEMORY[0x277D837D0]);

  if (v13)
  {
    v14 = 1;
    if ((a2 & 1) == 0)
    {
LABEL_3:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v15 = sub_267EF8A08();
      __swift_project_value_buffer(v15, qword_280240FB0);
      (*(v6 + 16))(v10, a1, v4);
      v16 = sub_267EF89F8();
      v17 = sub_267EF95C8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        OUTLINED_FUNCTION_48_7();
        v19 = swift_slowAlloc();
        v38 = v19;
        *v18 = 136315394;
        v20 = sub_267EF2D48();
        v37 = v14;
        v21 = a2;
        v23 = v22;
        (*(v6 + 8))(v10, v4);
        v24 = sub_267BA33E8(v20, v23, &v38);
        a2 = v21;
        v14 = v37;

        *(v18 + 4) = v24;
        *(v18 + 12) = 1024;
        *(v18 + 14) = v37 & 1;
        _os_log_impl(&dword_267B93000, v16, v17, "#RecentInteractionUtils Using RecentInteractionUtils enabled for %s - %{BOOL}d ", v18, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v19);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      else
      {

        (*(v6 + 8))(v10, v4);
      }

      return (v14 | a2) & 1;
    }
  }

  else
  {
    v38 = sub_267EF2D48();
    v39 = v25;
    v14 = OUTLINED_FUNCTION_23_19(v38, MEMORY[0x277D837D0]);

    if ((a2 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v26 = sub_267EF8A08();
  __swift_project_value_buffer(v26, qword_280240FB0);
  v27 = sub_267EF89F8();
  sub_267EF95C8();
  v28 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_14_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_24_23();
    _os_log_impl(v30, v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  return (v14 | a2) & 1;
}

uint64_t sub_267DA98DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v141 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD80, &qword_267F088E0);
  OUTLINED_FUNCTION_18(v6);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  v142 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A1F0, &qword_267F00640);
  OUTLINED_FUNCTION_58();
  v148 = v10;
  v149 = v9;
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  v147 = v12;
  OUTLINED_FUNCTION_26_2();
  sub_267EF6E88();
  OUTLINED_FUNCTION_58();
  v150 = v13;
  v151 = v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6();
  v144 = v15;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v16);
  v145 = v139 - v17;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v18);
  v146 = v139 - v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_45_0();
  v152 = v21;
  OUTLINED_FUNCTION_26_2();
  v155 = sub_267EF6CD8();
  OUTLINED_FUNCTION_58();
  v162 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_45_0();
  v154 = v25;
  OUTLINED_FUNCTION_26_2();
  v26 = sub_267EF2E88();
  OUTLINED_FUNCTION_58();
  v160 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0_0();
  v157 = v30 - v29;
  OUTLINED_FUNCTION_26_2();
  v158 = sub_267EF2E98();
  OUTLINED_FUNCTION_58();
  v156 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_0_0();
  v35 = v34 - v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v36);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_105();
  v159 = v38;
  OUTLINED_FUNCTION_26_2();
  v161 = sub_267EF2CC8();
  OUTLINED_FUNCTION_58();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_14_33();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_45_0();
  v153 = v43;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v44 = sub_267EF8A08();
  v45 = __swift_project_value_buffer(v44, qword_280240FB0);
  v46 = sub_267EF89F8();
  v47 = sub_267EF95D8();
  v48 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v48, v49))
  {
    OUTLINED_FUNCTION_14_0();
    v50 = swift_slowAlloc();
    v140 = v26;
    *v50 = 0;
    _os_log_impl(&dword_267B93000, v46, v47, "#RecentInteractionUtils determining if we can refer to group as the group", v50, 2u);
    v26 = v140;
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  if (!a2)
  {
    v57 = sub_267EF89F8();
    sub_267EF95D8();
    v60 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v60, v61))
    {
LABEL_10:
      OUTLINED_FUNCTION_14_0();
      v62 = swift_slowAlloc();
      *v62 = 0;
      OUTLINED_FUNCTION_12_28();
      _os_log_impl(v63, v64, v65, v66, v62, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

LABEL_11:

LABEL_14:
    v90 = 0;
    return v90 & 1;
  }

  v139[1] = a2;
  v140 = a3;
  sub_267EF2E78();
  v51 = v160;
  v52 = v157;
  (*(v160 + 13))(v157, *MEMORY[0x277CC9980], v26);
  sub_267EF2CB8();
  v53 = v159;
  sub_267EF2E68();
  v54 = *(v40 + 8);
  v55 = v3;
  v56 = v161;
  v54(v55, v161);
  (*(v51 + 1))(v52, v26);
  (*(v156 + 8))(v35, v158);
  if (__swift_getEnumTagSinglePayload(v53, 1, v56) == 1)
  {
    sub_267B9F98C(v53, &qword_28022BD90, &unk_267EFCDD0);
    v57 = sub_267EF89F8();
    sub_267EF95E8();
    v58 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v58, v59))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v157 = v40 + 8;
  v158 = v45;
  v160 = v54;
  v67 = v153;
  (*(v40 + 32))(v153, v53, v56);
  v68 = v143;
  sub_267EF6CC8();
  sub_267EF6CA8();
  v159 = *(v162 + 8);
  v162 += 8;
  v159(v68, v155);
  v69 = v144;
  sub_267EF6E78();
  v70 = v145;
  sub_267EF6E18();
  v71 = v150;
  v73 = v151 + 8;
  v72 = *(v151 + 8);
  v72(v69, v150);
  v74 = v146;
  sub_267EF6E08();
  v72(v70, v71);
  v75 = v147;
  (*(v40 + 16))(v147, v67, v56);
  v77 = v148;
  v76 = v149;
  (*(v148 + 104))(v75, *MEMORY[0x277D5FF18], v149);
  v78 = v152;
  sub_267EF6E48();
  (*(v77 + 8))(v75, v76);
  v79 = v74;
  v80 = v72;
  v72(v79, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD98, &qword_267F088E8);
  v81 = sub_267EF6DD8();
  OUTLINED_FUNCTION_58();
  v83 = v82;
  OUTLINED_FUNCTION_20_22();
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_267EFC020;
  (*(v83 + 104))(v84 + v75, *MEMORY[0x277D5FF98], v81);
  v86 = sub_267EF6DE8();

  v87 = v142;
  sub_267C8EAAC();
  v88 = sub_267EF6DC8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v87, 1, v88);
  v90 = EnumTagSinglePayload != 1;
  sub_267B9F98C(v87, &unk_28022BD80, &qword_267F088E0);
  v91 = *(v86 + 16);
  if (v91 != 2)
  {
    if (v91 == 1)
    {

      v92 = sub_267EF89F8();
      v93 = sub_267EF95D8();
      v94 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 67109120;
        *(v96 + 4) = EnumTagSinglePayload != 1;
        _os_log_impl(&dword_267B93000, v92, v93, "#RecentInteractionUtils can shorten group description : %{BOOL}d", v96, 8u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v97 = OUTLINED_FUNCTION_19_25();
      v80(v97);
      v159(v154, v155);
LABEL_21:
      v160(v153, v161);
      return v90 & 1;
    }

    v98 = sub_267EF89F8();
    sub_267EF95D8();
    v99 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v99, v100))
    {
      OUTLINED_FUNCTION_21_0();
      v101 = swift_slowAlloc();
      *v101 = 134217984;
      v102 = *(v86 + 16);

      *(v101 + 4) = v102;

      OUTLINED_FUNCTION_12_28();
      _os_log_impl(v103, v104, v105, v106, v101, 0xCu);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v118 = OUTLINED_FUNCTION_19_25();
    v80(v118);
    v119 = OUTLINED_FUNCTION_25_23();
    v120(v119);
LABEL_13:
    v160(v153, v161);
    goto LABEL_14;
  }

  if (EnumTagSinglePayload == 1)
  {

    v107 = sub_267EF89F8();
    sub_267EF95D8();
    v108 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v108, v109))
    {
      OUTLINED_FUNCTION_14_0();
      v110 = swift_slowAlloc();
      *v110 = 0;
      OUTLINED_FUNCTION_12_28();
      _os_log_impl(v111, v112, v113, v114, v110, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v115 = OUTLINED_FUNCTION_19_25();
    v80(v115);
    v116 = OUTLINED_FUNCTION_25_23();
    v117(v116);
    goto LABEL_13;
  }

  v121 = sub_267DAA7E4(v140, v86, v78);

  v122 = *(v121 + 16);
  if (v122)
  {
    v151 = v73;
    v163 = MEMORY[0x277D84F90];
    sub_267C722DC();
    v123 = 32;
    v124 = v163;
    do
    {

      v126 = sub_267D2F824(v125);
      v163 = v124;
      v127 = v124[2];
      if (v127 >= v124[3] >> 1)
      {
        sub_267C722DC();
        v124 = v163;
      }

      v124[2] = v127 + 1;
      v124[v127 + 4] = v126;
      v123 += 8;
      --v122;
    }

    while (v122);
  }

  else
  {

    v124 = MEMORY[0x277D84F90];
  }

  v128 = v124[2];
  if (v128)
  {
    if (v128 != 1)
    {
      v129 = v124[4];
      v130 = v124[5];

      v90 = sub_267DAB32C(v130, v129);

      v131 = sub_267EF89F8();
      v132 = sub_267EF95D8();
      v133 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        *v135 = 67109376;
        *(v135 + 4) = v90 & 1;
        *(v135 + 8) = 1024;
        *(v135 + 10) = v90 & 1;
        _os_log_impl(&dword_267B93000, v131, v132, "#RecentInteractionUtils groups are disjoint : %{BOOL}d, can shorten group description : %{BOOL}d", v135, 0xEu);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v136 = OUTLINED_FUNCTION_19_25();
      v80(v136);
      v137 = OUTLINED_FUNCTION_25_23();
      v138(v137);
      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_267DAA6C8(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B110, &qword_267F04E38);
  v4 = sub_267EF92D8();
  v10[0] = 0;
  v5 = [v2 unifiedContactsMatchingPredicate:a1 keysToFetch:v4 error:v10];

  v6 = v10[0];
  if (v5)
  {
    sub_267BA9F38(0, &unk_28022B120, 0x277CBDA58);
    a1 = sub_267EF92F8();
    v7 = v6;
  }

  else
  {
    v8 = v10[0];
    sub_267EF2A78();

    swift_willThrow();
  }

  return a1;
}

uint64_t sub_267DAA7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v99 = a3;
  v98 = a1;
  v6 = sub_267EF6F88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v117 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDA8, &qword_267F088F0);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = &v81 - v10;
  v101 = sub_267EF6E88();
  v11 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v97 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDB0, &qword_267F088F8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v94 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = &v81 - v16;
  v112 = sub_267EF6CD8();
  v17 = *(v112 - 8);
  v18 = MEMORY[0x28223BE20](v112);
  v96 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v111 = &v81 - v20;
  v104 = sub_267EF6DC8();
  v21 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v88 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDB8, &qword_267F08900);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v102 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v81 - v26;
  v28 = a2 + 64;
  v29 = 1 << *(a2 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(a2 + 64);
  v84 = (v29 + 63) >> 6;
  v87 = v21 + 16;
  v86 = v21 + 32;
  v110 = (v17 + 8);
  v100 = (v11 + 8);
  v85 = "tionAppendingActionGroup";
  v118 = v7 + 16;
  v91 = v7;
  v120 = (v7 + 8);
  v89 = v21;
  v95 = (v21 + 8);
  v90 = a2;

  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  v83 = &qword_267F088F8;
  v82 = &qword_28022BDB0;
  v103 = v27;
  v92 = a2 + 64;
  v116 = v6;
  while (1)
  {
    v113 = v33;
    if (!v31)
    {
      break;
    }

    v115 = v4;
    v109 = v32;
    v34 = v32;
LABEL_11:
    v108 = (v31 - 1) & v31;
    v37 = __clz(__rbit64(v31)) | (v34 << 6);
    v38 = (*(v90 + 48) + 16 * v37);
    v40 = *v38;
    v39 = v38[1];
    v41 = v89;
    v42 = v88;
    v43 = v104;
    (*(v89 + 16))(v88, *(v90 + 56) + *(v89 + 72) * v37, v104);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDC0, &qword_267F08908);
    v45 = *(v44 + 48);
    v46 = v102;
    *v102 = v40;
    *(v46 + 1) = v39;
    v35 = v46;
    (*(v41 + 32))(&v46[v45], v42, v43);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v44);

    v36 = v114;
    v4 = v115;
    v27 = v103;
LABEL_12:
    sub_267BBE134(v35, v27, &qword_28022BDB8, &qword_267F08900);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDC0, &qword_267F08908);
    if (__swift_getEnumTagSinglePayload(v27, 1, v47) == 1)
    {

      return v113;
    }

    v48 = *(v47 + 48);
    v49 = v96;
    sub_267EF6CC8();
    sub_267EF6C88();

    v50 = *v110;
    (*v110)(v49, v112);
    v51 = v97;
    sub_267EF6E08();
    sub_267EF6E68();
    if (v4)
    {

      (*v100)(v51, v101);
      v50(v111, v112);
      v80 = v113;

      (*v95)(&v27[v48], v104);
      return v80;
    }

    v107 = v50;
    (*v100)(v51, v101);
    v52 = v94;
    sub_267B9A598(v36, v94, &qword_28022BDB0, &qword_267F088F8);
    v53 = sub_267EF6D88();
    if (__swift_getEnumTagSinglePayload(v52, 1, v53) == 1)
    {
      goto LABEL_44;
    }

    v54 = sub_267EF6D28();
    (*(*(v53 - 8) + 8))(v52, v53);
    v55 = v116;
    if (*(v54 + 16))
    {
      v56 = sub_267BA9948();
      v17 = v93;
      if (v57)
      {
        (*(v91 + 16))(v93, *(v54 + 56) + *(v91 + 72) * v56, v55);
        v58 = 0;
      }

      else
      {
        v58 = 1;
      }
    }

    else
    {
      v58 = 1;
      v17 = v93;
    }

    __swift_storeEnumTagSinglePayload(v17, v58, 1, v55);

    if (__swift_getEnumTagSinglePayload(v17, 1, v55) == 1)
    {
      goto LABEL_43;
    }

    v59 = sub_267EF6F68();
    v119 = *v120;
    result = v119(v17, v55);
    if (!v59)
    {
      goto LABEL_45;
    }

    v105 = v59;
    v106 = v48;
    v115 = 0;
    v61 = *(v59 + 16);
    if (v61)
    {
      v62 = v59 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
      v63 = *(v91 + 72);
      v64 = *(v91 + 16);
      v65 = MEMORY[0x277D84F90];
      do
      {
        v66 = v117;
        v64(v117, v62, v55);
        v67 = sub_267EF6F78();
        v69 = v68;
        v119(v66, v55);
        if (v69)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_267BF4EE8();
            v65 = v72;
          }

          v70 = *(v65 + 16);
          if (v70 >= *(v65 + 24) >> 1)
          {
            sub_267BF4EE8();
            v65 = v73;
          }

          *(v65 + 16) = v70 + 1;
          v71 = v65 + 16 * v70;
          *(v71 + 32) = v67;
          *(v71 + 40) = v69;
          v55 = v116;
        }

        v62 += v63;
        --v61;
      }

      while (v61);
    }

    else
    {
      v65 = MEMORY[0x277D84F90];
    }

    v17 = sub_267DA82B0(v65);

    v74 = v113;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267C71018();
      v74 = v78;
    }

    v4 = v115;
    v27 = v103;
    v31 = v108;
    v75 = *(v74 + 16);
    v76 = v74;
    if (v75 >= *(v74 + 24) >> 1)
    {
      sub_267C71018();
      v76 = v79;
    }

    sub_267B9F98C(v114, &qword_28022BDB0, &qword_267F088F8);
    v107(v111, v112);
    *(v76 + 16) = v75 + 1;
    v33 = v76;
    *(v76 + 8 * v75 + 32) = v17;
    (*v95)(&v27[v106], v104);
    v28 = v92;
    v32 = v109;
  }

  v35 = v102;
  v36 = v114;
  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v84)
    {
      v109 = v32;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDC0, &qword_267F08908);
      __swift_storeEnumTagSinglePayload(v35, 1, 1, v77);
      v108 = 0;
      goto LABEL_12;
    }

    v31 = *(v28 + 8 * v34);
    ++v32;
    if (v31)
    {
      v115 = v4;
      v109 = v34;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_43:
  v83 = &qword_267F088F0;
  v82 = &qword_28022BDA8;
  v94 = v17;
LABEL_44:
  result = sub_267B9F98C(v94, v82, v83);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_267DAB32C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v24 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      sub_267EF9FC8();

      sub_267EF9128();
      v18 = sub_267EFA018();
      v19 = ~(-1 << *(v6 + 32));
      do
      {
        v20 = v18 & v19;
        if (((*(v6 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {

          v4 = v24;
          goto LABEL_13;
        }

        v21 = (*(v6 + 48) + 16 * v20);
        if (*v21 == v17 && v21[1] == v16)
        {
          break;
        }

        v23 = sub_267EF9EA8();
        v18 = v20 + 1;
      }

      while ((v23 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_267DAB504(uint64_t a1, uint64_t a2)
{
  v23 = sub_267EF2CC8();
  OUTLINED_FUNCTION_58();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v7 = v6 - v5;
  v8 = sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_0();
  v14 = v13 - v12;
  v15 = sub_267EF6EB8();
  OUTLINED_FUNCTION_58();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_0();
  v21 = v20 - v19;
  sub_267EF6D78();
  sub_267EF7C18();
  sub_267EF6D48();
  (*(v17 + 104))(v21, *MEMORY[0x277D5FFB0], v15);
  sub_267EF6D58();
  sub_267EF2D18();
  sub_267EF2CE8();
  (*(v10 + 8))(v14, v8);
  sub_267EF6CF8();
  sub_267EF6CE8();
  (*(v3 + 16))(v7, a2, v23);
  sub_267EF6D68();
  return sub_267EF6D18();
}

uint64_t sub_267DAB760(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v253 = a6;
  v264 = a5;
  v258 = a3;
  v9 = sub_267EF2CC8();
  v236 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v229 = &v229 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v231 = &v229 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v233 = &v229 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v265 = &v229 - v17;
  MEMORY[0x28223BE20](v16);
  v266 = &v229 - v18;
  v274 = sub_267EF6DC8();
  v272 = *(v274 - 8);
  v19 = MEMORY[0x28223BE20](v274);
  v235 = &v229 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v237 = &v229 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v263 = &v229 - v24;
  MEMORY[0x28223BE20](v23);
  v259 = &v229 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDB8, &qword_267F08900);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v270 = &v229 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v268 = (&v229 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD80, &qword_267F088E0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v230 = &v229 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v234 = &v229 - v34;
  MEMORY[0x28223BE20](v33);
  v232 = &v229 - v35;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDC0, &qword_267F08908);
  MEMORY[0x28223BE20](v273);
  v275 = (&v229 - v36);
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDC8, &qword_267F08910);
  *&v251 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v250 = (&v229 - v37);
  v38 = sub_267EF6E88();
  v261 = *(v38 - 1);
  v262 = v38;
  v39 = MEMORY[0x28223BE20](v38);
  v246 = (&v229 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x28223BE20](v39);
  v248 = &v229 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v249 = (&v229 - v44);
  MEMORY[0x28223BE20](v43);
  v260 = &v229 - v45;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDD0, &qword_267F08918);
  v271 = *(v269 - 1);
  MEMORY[0x28223BE20](v269);
  v247 = (&v229 - v46);
  v47 = sub_267EF6CD8();
  v48 = *(v47 - 8);
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v229 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49);
  v245 = &v229 - v53;
  MEMORY[0x28223BE20](v52);
  v257 = &v229 - v54;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v55 = sub_267EF8A08();
  v56 = __swift_project_value_buffer(v55, qword_280240FB0);

  v254 = v56;
  v57 = sub_267EF89F8();
  v58 = sub_267EF95D8();

  v59 = os_log_type_enabled(v57, v58);
  v267 = v9;
  v256 = v47;
  v239 = a4;
  v255 = a1;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v276 = v61;
    *v60 = 136315394;
    *(v60 + 4) = sub_267BA33E8(v255, a2, &v276);
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_267BA33E8(v258, a4, &v276);
    _os_log_impl(&dword_267B93000, v57, v58, "#RecentInteractionUtils determining if name is identifying: %s : %s", v60, 0x16u);
    swift_arrayDestroy();
    v62 = v61;
    v47 = v256;
    MEMORY[0x26D60A7B0](v62, -1, -1);
    v63 = v60;
    a1 = v255;
    MEMORY[0x26D60A7B0](v63, -1, -1);
  }

  v238 = a2;
  v64 = sub_267DAD6E4(a1, a2);
  sub_267EF6CC8();
  v65 = v247;
  *v247 = v64;
  v241 = *MEMORY[0x277D5FF28];
  v66 = v271;
  v67 = *(v271 + 104);
  v243 = v271 + 104;
  v244 = v67;
  v68 = v269;
  v67(v65);
  v253 = v64;

  v69 = v245;
  sub_267EF6C98();
  v70 = *(v66 + 8);
  v271 = v66 + 8;
  v242 = v70;
  v70(v65, v68);
  v71 = *(v48 + 8);
  v240 = v48 + 8;
  v71(v51, v47);
  sub_267EF6CA8();
  v245 = v71;
  v71(v69, v47);
  v72 = v246;
  sub_267EF6E78();
  v73 = v248;
  sub_267EF6E08();
  v74 = v262;
  v261 = *(v261 + 8);
  (v261)(v72, v262);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDD8, &qword_267F08920);
  v75 = sub_267EF6EB8();
  v76 = *(v75 - 8);
  v77 = *(v76 + 72);
  v78 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_267EFCC90;
  v80 = v79 + v78;
  v81 = *(v76 + 104);
  v81(v80, *MEMORY[0x277D5FFC0], v75);
  v82 = v80 + v77;
  v83 = v74;
  v81(v82, *MEMORY[0x277D5FFB0], v75);
  v84 = v250;
  *v250 = v79;
  v85 = v251;
  v86 = v241;
  v87 = v252;
  (*(v251 + 104))(v84, v241, v252);
  v88 = v249;
  sub_267EF6E38();
  (*(v85 + 8))(v84, v87);
  v89 = v261;
  (v261)(v73, v83);
  *v65 = &unk_2878CA280;
  v90 = v269;
  (v244)(v65, v86, v269);
  v91 = v260;
  sub_267EF6E28();
  v92 = v65;
  v93 = v89;
  v242(v92, v90);
  v89(v88, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD98, &qword_267F088E8);
  v94 = sub_267EF6DD8();
  v95 = *(v94 - 8);
  v96 = (*(v95 + 80) + 32) & ~*(v95 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_267EFC020;
  (*(v95 + 104))(v97 + v96, *MEMORY[0x277D5FF98], v94);
  v98 = sub_267EF6DE8();
  v93(v91, v83);

  v99 = v98 + 64;
  v100 = 1 << *(v98 + 32);
  v101 = -1;
  if (v100 < 64)
  {
    v101 = ~(-1 << v100);
  }

  v102 = v101 & *(v98 + 64);
  v103 = (v100 + 63) >> 6;
  v269 = (v272 + 16);

  v104 = 0;
  v262 = MEMORY[0x277D84F90];
  v105 = v239;
  v106 = v270;
  v264 = v98;
  v271 = v98 + 64;
  v107 = v253;
  v108 = v253;
  while (v102)
  {
LABEL_13:
    v110 = __clz(__rbit64(v102));
    v102 &= v102 - 1;
    v111 = v110 | (v104 << 6);
    v112 = (*(v98 + 48) + 16 * v111);
    v83 = *v112;
    v113 = v112[1];
    v114 = v275;
    (*(v272 + 16))(v275 + *(v273 + 48), *(v98 + 56) + *(v272 + 72) * v111, v274);
    *v114 = v83;
    v114[1] = v113;
    v115 = v83 == v258 && v113 == v105;
    if (v115 || (sub_267EF9EA8() & 1) != 0)
    {

      sub_267B9F98C(v275, &qword_28022BDC0, &qword_267F08908);
      v99 = v271;
      v107 = v108;
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_267B9F98C(v275, &qword_28022BDC0, &qword_267F08908);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = v271;
      v117 = v105;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_267BF4EE8();
        v262 = v122;
      }

      v118 = v262[2];
      v119 = v118 + 1;
      if (v118 >= v262[3] >> 1)
      {
        v261 = v118 + 1;
        sub_267BF4EE8();
        v119 = v261;
        v262 = v123;
      }

      v120 = v262;
      v262[2] = v119;
      v121 = &v120[2 * v118];
      v121[4] = v83;
      v121[5] = v113;
      v105 = v117;
      v98 = v264;
      v107 = v108;
    }
  }

  while (1)
  {
    v109 = v104 + 1;
    if (__OFADD__(v104, 1))
    {
      __break(1u);
LABEL_89:
      (*v261)(v233, v98);
LABEL_56:
      v190 = v245;
      v191 = v253;

      v192 = v238;

      v193 = sub_267EF89F8();
      v194 = sub_267EF95D8();

      if (!os_log_type_enabled(v193, v194))
      {

        v202 = v257;
        v198 = v191;
        v199 = v252;
        if (!v198)
        {
LABEL_81:
          v181 = 0;
          v182 = 0;
          goto LABEL_82;
        }

LABEL_65:
        if (v199 == v105 && v198 == v102)
        {
          v182 = 1;
        }

        else
        {
          v182 = sub_267EF9EA8();
          if (v199 != v105)
          {
            goto LABEL_74;
          }
        }

        if (v198 == v102)
        {

          v181 = 256;
LABEL_82:
          v190(v202, v83);
          return v181 | v182 & 1u;
        }

LABEL_74:
        v204 = sub_267EF9EA8();

        if (v204)
        {
          v181 = 256;
        }

        else
        {
          v181 = 0;
        }

        goto LABEL_82;
      }

      v195 = v190;
      v196 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v276 = v197;
      *v196 = v251;
      *(v196 + 4) = sub_267BA33E8(v255, v192, &v276);
      *(v196 + 12) = 1024;
      v198 = v191;
      if (v191)
      {
        v199 = v252;
        if (v252 == v105 && v198 == v102)
        {
          v201 = 1;
          *(v196 + 14) = 1;
          *(v196 + 18) = 1024;
LABEL_80:
          *(v196 + 20) = v201;

          _os_log_impl(&dword_267B93000, v193, v194, "#RecentInteractionUtils sender is the only contact with %s that we've interacted with today : %{BOOL}d, use conversational name : %{BOOL}d", v196, 0x18u);
          __swift_destroy_boxed_opaque_existential_0(v197);
          MEMORY[0x26D60A7B0](v197, -1, -1);
          MEMORY[0x26D60A7B0](v196, -1, -1);

          v202 = v257;
          v190 = v195;
          v83 = v256;
          if (!v198)
          {
            goto LABEL_81;
          }

          goto LABEL_65;
        }

        *(v196 + 14) = sub_267EF9EA8() & 1;
        *(v196 + 18) = 1024;
        if (sub_267EF9EA8())
        {
          v201 = 1;
          goto LABEL_80;
        }
      }

      else
      {
        *(v196 + 14) = 0;
        *(v196 + 18) = 1024;
        v199 = v252;
      }

      v201 = 0;
      goto LABEL_80;
    }

    if (v109 >= v103)
    {
      break;
    }

    v102 = *(v99 + 8 * v109);
    ++v104;
    if (v102)
    {
      v104 = v109;
      goto LABEL_13;
    }
  }

  sub_267BD2558(v262);

  v124 = *(v98 + 16);
  v125 = v274;
  if (v124 && (v124 != 1 || (v126 = v232, sub_267C8EAAC(), v127 = __swift_getEnumTagSinglePayload(v126, 1, v125), v128 = v126, v99 = v271, sub_267B9F98C(v128, &unk_28022BD80, &qword_267F088E0), v127 == 1)))
  {
    v129 = 1 << *(v98 + 32);
    v130 = -1;
    if (v129 < 64)
    {
      v130 = ~(-1 << v129);
    }

    v131 = v130 & *(v98 + 64);
    v105 = (v129 + 63) >> 6;
    v275 = (v272 + 32);
    v261 = v236 + 8;
    v262 = (v272 + 8);

    v252 = 0;
    v253 = 0;
    v102 = 0;
    *&v132 = 136315650;
    v251 = v132;
    v133 = v263;
    v260 = v105;
    while (1)
    {
      if (!v131)
      {
        while (1)
        {
          v134 = v102 + 1;
          if (__OFADD__(v102, 1))
          {
            break;
          }

          if (v134 >= v105)
          {
            v142 = v273;
            __swift_storeEnumTagSinglePayload(v106, 1, 1, v273);
            v131 = 0;
            goto LABEL_37;
          }

          v131 = *(v99 + 8 * v134);
          ++v102;
          if (v131)
          {
            v102 = v134;
            goto LABEL_36;
          }
        }

        __break(1u);
        goto LABEL_85;
      }

      v134 = v102;
LABEL_36:
      v135 = __clz(__rbit64(v131));
      v131 &= v131 - 1;
      v136 = v135 | (v134 << 6);
      v137 = (*(v98 + 48) + 16 * v136);
      v139 = *v137;
      v138 = v137[1];
      v140 = v272;
      v141 = v259;
      (*(v272 + 16))(v259, *(v98 + 56) + *(v272 + 72) * v136, v125);
      v142 = v273;
      v143 = *(v273 + 48);
      *v106 = v139;
      *(v106 + 1) = v138;
      (*(v140 + 32))(&v106[v143], v141, v125);
      __swift_storeEnumTagSinglePayload(v106, 0, 1, v142);

      v133 = v263;
LABEL_37:
      v144 = v268;
      sub_267BBE134(v106, v268, &qword_28022BDB8, &qword_267F08900);
      if (__swift_getEnumTagSinglePayload(v144, 1, v142) == 1)
      {
        break;
      }

      v83 = *v144;
      v107 = v144[1];
      (*v275)(v133, v144 + *(v142 + 48), v125);
      v145 = v266;
      sub_267EF2CA8();
      v146 = v265;
      sub_267EF6DA8();
      sub_267EF2C38();
      v148 = v147;
      v149 = *v261;
      v150 = v267;
      (*v261)(v146, v267);
      v149(v145, v150);
      if (v148 <= 86400.0)
      {
        v252 = v83;
        v151 = *v269;
        v83 = v274;
        (*v269)(v237, v133, v274);
        v152 = v235;
        v151(v235, v133, v83);
        v153 = v107;

        v154 = sub_267EF89F8();
        v155 = sub_267EF95D8();

        v156 = os_log_type_enabled(v154, v155);
        v105 = v260;
        if (v156)
        {
          v157 = swift_slowAlloc();
          v248 = swift_slowAlloc();
          v276 = v248;
          *v157 = v251;
          v158 = sub_267BA33E8(v252, v153, &v276);
          v244 = v157;
          *(v157 + 4) = v158;
          *(v157 + 12) = 2080;
          v159 = v266;
          v249 = v153;
          v160 = v237;
          sub_267EF6DA8();
          sub_267C5EDC0();
          v161 = v267;
          v250 = sub_267EF9E58();
          v163 = v162;
          LODWORD(v247) = v155;
          v164 = v235;
          v149(v159, v161);
          v246 = v154;
          v165 = *v262;
          v166 = v274;
          (*v262)(v160, v274);
          v167 = sub_267BA33E8(v250, v163, &v276);

          v83 = v244;
          *(v244 + 14) = v167;
          *(v83 + 22) = 2048;
          v168 = sub_267EF6DB8();
          v250 = v165;
          (v165)(v164, v166);
          *(v83 + 24) = v168;
          v169 = v246;
          _os_log_impl(&dword_267B93000, v246, v247, "#RecentInteractionUtils contactId: %s interacted with most recently on %s with frequency %ld", v83, 0x20u);
          v170 = v248;
          swift_arrayDestroy();
          MEMORY[0x26D60A7B0](v170, -1, -1);
          MEMORY[0x26D60A7B0](v83, -1, -1);

          v125 = v166;
          v107 = v249;
        }

        else
        {
          v171 = *v262;
          v125 = v274;
          (*v262)(v152, v274);

          v250 = v171;
          (v171)(v237, v125);
          v107 = v153;
        }

        v133 = v263;
        v98 = v264;
        v106 = v270;
        if (v253)
        {

          v217 = v238;

          v218 = sub_267EF89F8();
          v219 = sub_267EF95D8();

          if (os_log_type_enabled(v218, v219))
          {
            v220 = v125;
            v221 = swift_slowAlloc();
            v222 = swift_slowAlloc();
            v276 = v222;
            *v221 = 136315138;
            *(v221 + 4) = sub_267BA33E8(v255, v217, &v276);
            _os_log_impl(&dword_267B93000, v218, v219, "#RecentInteractionUtils at least two interactions within the last day for %s, use full name", v221, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v222);
            MEMORY[0x26D60A7B0](v222, -1, -1);
            MEMORY[0x26D60A7B0](v221, -1, -1);

            v223 = v263;
            v224 = v220;
          }

          else
          {

            v223 = v263;
            v224 = v125;
          }

          (v250)(v223, v224);
          (v245)(v257, v256);
          v182 = 0;
          v181 = 0;
          return v181 | v182 & 1u;
        }

        (v250)(v263, v125);
        v253 = v107;
        v99 = v271;
      }

      else
      {
        v125 = v274;
        (*v262)(v133, v274);

        v106 = v270;
        v99 = v271;
        v98 = v264;
        v105 = v260;
      }
    }

    v180 = v234;
    v105 = v258;
    v102 = v239;
    sub_267C8EAAC();
    if (__swift_getEnumTagSinglePayload(v180, 1, v125) == 1)
    {

      sub_267B9F98C(v180, &unk_28022BD80, &qword_267F088E0);
      v83 = v256;
      goto LABEL_56;
    }

    v183 = v231;
    sub_267EF6DA8();
    v184 = *v262;
    (*v262)(v180, v125);
    v185 = v233;
    v98 = v267;
    (*(v236 + 32))(v233, v183, v267);
    v186 = v230;
    sub_267C8EAAC();

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v186, 1, v125);
    v83 = v256;
    if (EnumTagSinglePayload == 1)
    {
      (*v261)(v185, v98);
      sub_267B9F98C(v186, &unk_28022BD80, &qword_267F088E0);
      goto LABEL_56;
    }

    v188 = sub_267EF6D98();
    v189 = v186;
    v107 = v188;
    v184(v189, v125);
    if (sub_267DE0CF0(v107))
    {
      (*v261)(v233, v98);

      goto LABEL_56;
    }

LABEL_85:
    v206 = sub_267DE0D1C(v107);

    if (v206 <= 0)
    {
      goto LABEL_89;
    }

    v207 = v229;
    (*(v236 + 16))(v229, v233, v98);
    v208 = sub_267EF89F8();
    v209 = sub_267EF95D8();
    v210 = &unk_267F08000;
    if (os_log_type_enabled(v208, v209))
    {
      v211 = swift_slowAlloc();
      *v211 = 67109120;
      v212 = v266;
      sub_267EF2CA8();
      sub_267EF2C38();
      v214 = v213;
      v215 = *v261;
      (*v261)(v212, v98);
      v215(v207, v98);
      *(v211 + 4) = v214 < 172800.0;
      _os_log_impl(&dword_267B93000, v208, v209, "#RecentInteractionUtils no context for user - using conversational name : %{BOOL}d", v211, 8u);
      v216 = v211;
      v210 = &unk_267F08000;
      MEMORY[0x26D60A7B0](v216, -1, -1);
    }

    else
    {
      v215 = *v261;
      (*v261)(v207, v98);
      v212 = v266;
    }

    v225 = v245;

    sub_267EF2CA8();
    v226 = v233;
    sub_267EF2C38();
    v228 = v227;
    v215(v212, v98);
    v215(v226, v98);
    v225(v257, v256);
    v181 = 0;
    v182 = v228 < v210[278];
  }

  else
  {
    v172 = v238;

    v173 = sub_267EF89F8();
    v174 = sub_267EF95D8();

    v175 = os_log_type_enabled(v173, v174);
    v176 = v256;
    if (v175)
    {
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v276 = v178;
      *v177 = 136315394;
      *(v177 + 4) = sub_267BA33E8(v255, v172, &v276);
      *(v177 + 12) = 2048;
      v179 = *(v98 + 16);

      *(v177 + 14) = v179;

      _os_log_impl(&dword_267B93000, v173, v174, "#RecentInteractionUtils 1 day interaction count with %s is %ld, use conversational name", v177, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v178);
      MEMORY[0x26D60A7B0](v178, -1, -1);
      MEMORY[0x26D60A7B0](v177, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (v245)(v257, v176);
    v181 = 256;
    v182 = 1;
  }

  return v181 | v182 & 1u;
}

char *sub_267DAD6E4(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_267EF8FF8();
  v4 = [v2 predicateForContactsMatchingName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_267EFCA40;
  *(v5 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v6 = sub_267DAA6C8(v4, v5);

  v7 = sub_267BAF0DC(v6);
  if (!v7)
  {

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v21 = MEMORY[0x277D84F90];
  result = sub_267BC7934(0, v7 & ~(v7 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v21;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D609870](v10, v6);
      }

      else
      {
        v12 = *(v6 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 identifier];
      v15 = sub_267EF9028();
      v17 = v16;

      v19 = *(v21 + 16);
      v18 = *(v21 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_267BC7934((v18 > 1), v19 + 1, 1);
      }

      ++v10;
      *(v21 + 16) = v19 + 1;
      v20 = v21 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
    }

    while (v8 != v10);

    return v11;
  }

  __break(1u);
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

uint64_t sub_267DAD92C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_267DAD974(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_267DAD99C(uint64_t *a1, int8x16_t *a2)
{
  v2 = a2[2].u8[0];
  v3 = *a1;
  v4 = a1[1];
  if (!*(a1 + 32))
  {
    if (!a2[2].i8[0])
    {
      if (v3 != a2->i64[0] || v4 != a2->i64[1])
      {
        OUTLINED_FUNCTION_24_24();
        if ((sub_267EF9EA8() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_24();
          goto LABEL_35;
        }
      }

      return 0;
    }

    v11 = 0;
    goto LABEL_23;
  }

  if (*(a1 + 32) != 1)
  {
    if (v2 == 2)
    {
      OUTLINED_FUNCTION_114_6(a2[1], *a2);
      if (!v12)
      {
        return 0;
      }

      v11 = 1;
      goto LABEL_25;
    }

    v11 = 1;
    if (!a2[2].i8[0])
    {
      return v11 < v2;
    }

LABEL_23:
    if (v2 == 1)
    {
      v2 = 2;
      return v11 < v2;
    }

LABEL_25:
    v2 = 1;
    return v11 < v2;
  }

  if (v2 != 1)
  {
    v11 = 2;
    if (!a2[2].i8[0])
    {
      return v11 < v2;
    }

    goto LABEL_23;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = a2[1].i64[0];
  v8 = a2[1].i64[1];
  if (v3 != a2->i64[0] || v4 != a2->i64[1])
  {
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_117_0();
    if ((sub_267EF9EA8() & 1) == 0)
    {
      OUTLINED_FUNCTION_61_0();
      OUTLINED_FUNCTION_117_0();
      goto LABEL_35;
    }
  }

  if (v5 == v7 && v6 == v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_116_6();
  if (sub_267EF9EA8())
  {
    return 0;
  }

  OUTLINED_FUNCTION_116_6();
LABEL_35:

  return sub_267EF9EA8();
}

uint64_t sub_267DADB00(uint64_t *a1, int8x16_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (!*(a1 + 32))
  {
    if (!a2[2].i8[0])
    {
      if (v4 != a2->i64[0] || v5 != a2->i64[1])
      {
        goto LABEL_19;
      }

      return 1;
    }

    return 0;
  }

  if (*(a1 + 32) != 1)
  {
    if (a2[2].i8[0] == 2)
    {
      OUTLINED_FUNCTION_114_6(a2[1], *a2);
      if (!v15)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a2[2].i8[0] != 1)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[1].i64[0];
  v9 = a2[1].i64[1];
  v10 = v4 == a2->i64[0] && v5 == a2->i64[1];
  if (v10 || (v11 = sub_267EF9EA8(), result = 0, (v11 & 1) != 0))
  {
    if (v6 != v8 || v7 != v9)
    {
      OUTLINED_FUNCTION_24_24();
LABEL_19:

      return sub_267EF9EA8();
    }

    return 1;
  }

  return result;
}

BOOL sub_267DADBF4(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6 = a1[2].i8[0];
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_267DADC40(v5, v7);
}

BOOL sub_267DADC40(int8x16_t *a1, void *a2)
{
  v2 = a1[2].u8[0];
  v3 = *a2;
  v4 = a2[1];
  if (!*(a2 + 32))
  {
    if (a1[2].i8[0])
    {
      v11 = 0;
      goto LABEL_23;
    }

    v14 = v3 == a1->i64[0] && v4 == a1->i64[1];
    if (!v14 && (sub_267EF9EA8() & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_32:
    v13 = 0;
    return (v13 & 1) == 0;
  }

  if (*(a2 + 32) != 1)
  {
    if (v2 != 2)
    {
      v11 = 1;
      if (!a1[2].i8[0])
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    v12 = vorrq_s8(*a1, a1[1]);
    if (vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)))
    {
      v11 = 1;
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  if (v2 == 1)
  {
    v5 = a2[2];
    v6 = a2[3];
    v7 = a1[1].i64[0];
    v8 = a1[1].i64[1];
    v9 = v3 == a1->i64[0] && v4 == a1->i64[1];
    if (!v9 && (sub_267EF9EA8() & 1) == 0 || (v5 == v7 ? (v10 = v6 == v8) : (v10 = 0), !v10 && (sub_267EF9EA8() & 1) == 0))
    {
LABEL_33:
      v13 = sub_267EF9EA8();
      return (v13 & 1) == 0;
    }

    goto LABEL_32;
  }

  v11 = 2;
  if (a1[2].i8[0])
  {
LABEL_23:
    if (v2 == 1)
    {
      v2 = 2;
      goto LABEL_26;
    }

LABEL_25:
    v2 = 1;
  }

LABEL_26:
  v13 = v11 < v2;
  return (v13 & 1) == 0;
}

BOOL sub_267DADDD8(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_267DADE24(v5, v7);
}

BOOL sub_267DADE24(void *a1, int8x16_t *a2)
{
  v2 = a2[2].u8[0];
  v3 = *a1;
  v4 = a1[1];
  if (!*(a1 + 32))
  {
    if (a2[2].i8[0])
    {
      v11 = 0;
      goto LABEL_23;
    }

    v14 = v3 == a2->i64[0] && v4 == a2->i64[1];
    if (!v14 && (sub_267EF9EA8() & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_32:
    v13 = 0;
    return (v13 & 1) == 0;
  }

  if (*(a1 + 32) != 1)
  {
    if (v2 != 2)
    {
      v11 = 1;
      if (!a2[2].i8[0])
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    v12 = vorrq_s8(*a2, a2[1]);
    if (vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)))
    {
      v11 = 1;
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  if (v2 == 1)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = a2[1].i64[0];
    v8 = a2[1].i64[1];
    v9 = v3 == a2->i64[0] && v4 == a2->i64[1];
    if (!v9 && (sub_267EF9EA8() & 1) == 0 || (v5 == v7 ? (v10 = v6 == v8) : (v10 = 0), !v10 && (sub_267EF9EA8() & 1) == 0))
    {
LABEL_33:
      v13 = sub_267EF9EA8();
      return (v13 & 1) == 0;
    }

    goto LABEL_32;
  }

  v11 = 2;
  if (a2[2].i8[0])
  {
LABEL_23:
    if (v2 == 1)
    {
      v2 = 2;
      goto LABEL_26;
    }

LABEL_25:
    v2 = 1;
  }

LABEL_26:
  v13 = v11 < v2;
  return (v13 & 1) == 0;
}

uint64_t sub_267DADFBC(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6 = a1[2].i8[0];
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_267DAE008(v5, v7) & 1;
}

uint64_t sub_267DAE008(int8x16_t *a1, void *a2)
{
  v2 = a1[2].u8[0];
  v3 = *a2;
  v4 = a2[1];
  if (!*(a2 + 32))
  {
    if (a1[2].i8[0])
    {
      v11 = 0;
      goto LABEL_23;
    }

    v14 = v3 == a1->i64[0] && v4 == a1->i64[1];
    if (!v14 && (sub_267EF9EA8() & 1) == 0)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (*(a2 + 32) != 1)
  {
    if (v2 != 2)
    {
      v11 = 1;
      if (!a1[2].i8[0])
      {
        return v11 < v2;
      }

      goto LABEL_23;
    }

    v12 = vorrq_s8(*a1, a1[1]);
    if (vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)))
    {
      v11 = 1;
      goto LABEL_25;
    }

    return 0;
  }

  if (v2 != 1)
  {
    v11 = 2;
    if (!a1[2].i8[0])
    {
      return v11 < v2;
    }

LABEL_23:
    if (v2 == 1)
    {
      v2 = 2;
      return v11 < v2;
    }

LABEL_25:
    v2 = 1;
    return v11 < v2;
  }

  v5 = a2[2];
  v6 = a2[3];
  v7 = a1[1].i64[0];
  v8 = a1[1].i64[1];
  v9 = v3 == a1->i64[0] && v4 == a1->i64[1];
  if (v9 || (sub_267EF9EA8() & 1) != 0)
  {
    v10 = v5 == v7 && v6 == v8;
    if (v10 || (sub_267EF9EA8() & 1) != 0)
    {
      return 0;
    }
  }

LABEL_33:

  return sub_267EF9EA8();
}

unint64_t sub_267DAE1C0()
{
  result = qword_28022BE18;
  if (!qword_28022BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BE18);
  }

  return result;
}

uint64_t sub_267DAE214()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267DAE278()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v4;
  v3[5] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 104) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DAE380()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_23_12();

  return v0();
}

uint64_t sub_267DAE3E0()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267DAE43C()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267DAE498()
{
  result = 1954047348;
  switch(*(v0 + 48))
  {
    case 1:
      result = 0x696A6F6D65;
      break;
    case 2:
      result = 0x696A6F6D6E6567;
      break;
    case 3:
      result = 0x696A6F6D656DLL;
      break;
    case 4:
      result = 0x636972656E6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267DAE520(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  switch(*(a1 + 48))
  {
    case 1:
      if (*(a2 + 48) != 1)
      {
        return 0;
      }

      v24 = *(a2 + 16);
      v25 = v4 == *a2 && v5 == *(a2 + 8);
      if (!v25 && (sub_267EF9EA8() & 1) == 0)
      {
        return 0;
      }

      return v6 == v24;
    case 2:
      if (*(a2 + 48) != 2)
      {
        return 0;
      }

      v14 = *(a2 + 16);
      v13 = *(a2 + 24);
      if (v4 == *a2 && v5 == *(a2 + 8))
      {
        if (v6 != v14)
        {
          return 0;
        }

        return v7 == v13;
      }

      v16 = sub_267EF9EA8();
      result = 0;
      if ((v16 & 1) != 0 && v6 == v14)
      {
        return v7 == v13;
      }

      return result;
    case 3:
      if (*(a2 + 48) != 3)
      {
        return 0;
      }

      v17 = *(a2 + 16);
      v18 = *(a2 + 24);
      v20 = *(a2 + 32);
      v19 = *(a2 + 40);
      v21 = v4 == *a2 && v5 == *(a2 + 8);
      if (!v21 && (sub_267EF9EA8() & 1) == 0)
      {
        return 0;
      }

      if (v6 == v17 && v7 == v18)
      {
        if (v8 != v20)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_24_24();
        v23 = sub_267EF9EA8();
        result = 0;
        if ((v23 & 1) == 0 || v8 != v20)
        {
          return result;
        }
      }

      return v9 == v19;
    case 4:
      if (*(a2 + 48) != 4)
      {
        return 0;
      }

      return v4 == *a2 && v5 == *(a2 + 8);
    default:
      if (*(a2 + 48))
      {
        return 0;
      }

      if (v4 == *a2 && v5 == *(a2 + 8))
      {
        return 1;
      }

      return sub_267EF9EA8();
  }
}

NSObject *sub_267DAE6FC(NSObject *a1, uint64_t isa, void *a3)
{
  if (qword_280228818 != -1)
  {
LABEL_106:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v5 = sub_267EF8A08();
  __swift_project_value_buffer(v5, qword_280240FB0);
  v6 = a1;
  v7 = sub_267EF89F8();
  v8 = sub_267EF95D8();
  v106 = v6;
  if (OUTLINED_FUNCTION_27(v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v106;
    *v10 = v106;
    *(v9 + 12) = 2048;
    *(v9 + 14) = [v106 length];
    OUTLINED_FUNCTION_45();
    _os_log_impl(v11, v12, v13, v14, v9, 0x16u);
    sub_267B9FF34(v10, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v7 = v6;
  }

  v113 = MEMORY[0x277D84F90];
  if (isa)
  {
    v108 = *(isa + 16);
    if (v108)
    {
      v15 = sub_267EF89F8();
      v16 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v16))
      {
        v17 = OUTLINED_FUNCTION_32();
        *v17 = 0;
        OUTLINED_FUNCTION_45();
        _os_log_impl(v18, v19, v20, v21, v17, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v22 = 0;
      v104 = *MEMORY[0x277CD45A0];
      v23 = isa + 32;
      v103 = *MEMORY[0x277CD45A8];
      while (1)
      {
        sub_267EF9028();
        OUTLINED_FUNCTION_72_10();
        if (v24)
        {

          v25 = OUTLINED_FUNCTION_97_8();
          if (v26)
          {
            OUTLINED_FUNCTION_51_11(v25);
          }

          else
          {
            OUTLINED_FUNCTION_61_12();
          }
        }

        else
        {
          OUTLINED_FUNCTION_61_12();
        }

        if (!v112)
        {
          break;
        }

        OUTLINED_FUNCTION_74_7();
        if (!swift_dynamicCast())
        {
          goto LABEL_19;
        }

        v27 = v109;
LABEL_20:
        sub_267EF9028();
        OUTLINED_FUNCTION_72_10();
        if (v28 && (v29 = OUTLINED_FUNCTION_97_8(), (v30 & 1) != 0))
        {
          OUTLINED_FUNCTION_51_11(v29);
        }

        else
        {
          OUTLINED_FUNCTION_61_12();
        }

        if (v112)
        {
          OUTLINED_FUNCTION_74_7();
          if (swift_dynamicCast())
          {
            v31 = v109;
            goto LABEL_29;
          }
        }

        else
        {
          sub_267B9FF34(v111, &qword_28022AEF0, &qword_267EFCDE0);
        }

        v31 = -100;
LABEL_29:

        v32 = sub_267EF89F8();
        v33 = sub_267EF95D8();

        if (OUTLINED_FUNCTION_99())
        {
          v107 = v31;
          v34 = OUTLINED_FUNCTION_48();
          isa = OUTLINED_FUNCTION_52();
          v111[0] = isa;
          *v34 = 136315138;
          v35 = sub_267EF8F08();
          v37 = v22;
          v38 = sub_267BA33E8(v35, v36, v111);

          *(v34 + 4) = v38;
          v22 = v37;
          _os_log_impl(&dword_267B93000, v32, v33, "#ContentProcessor.convertContentToTokens glyph dictionary: %s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(isa);
          OUTLINED_FUNCTION_42_0();
          v31 = v107;
          OUTLINED_FUNCTION_32_0();
        }

        a1 = sub_267EF89F8();
        v39 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_27(v39))
        {
          isa = swift_slowAlloc();
          *isa = 134218752;
          *(isa + 4) = v31;
          *(isa + 12) = 2048;
          *(isa + 14) = v22;
          *(isa + 22) = 2048;
          *(isa + 24) = v31;
          *(isa + 32) = 2048;
          *(isa + 34) = v27;
          _os_log_impl(&dword_267B93000, a1, v33, "#ContentProcessor.convertContentToTokens glyphIndex: %ld, startIndex: %ld, endIndex: %ld, count: %ld", isa, 0x2Au);
          OUTLINED_FUNCTION_42_0();
        }

        if (__OFSUB__(v31, v22))
        {
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        if (v31 - v22 >= 1)
        {
          v40 = sub_267EF89F8();
          v41 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_5_2(v41))
          {
            *OUTLINED_FUNCTION_32() = 0;
            OUTLINED_FUNCTION_102_5(&dword_267B93000, v40, v41, "#ContentProcessor.convertContentToTokens appending text before glyph");
            OUTLINED_FUNCTION_42_0();
          }

          v42 = [v106 substringWithRange:v22, v31 - v22];
          v43 = sub_267EF9028();
          v45 = v44;

          sub_267DAF858(v43, v45, a3);
          v47 = v46;

          sub_267C9B3F8(v47);
        }

        sub_267EF9028();
        OUTLINED_FUNCTION_72_10();
        if (v48 && (v49 = OUTLINED_FUNCTION_97_8(), (v50 & 1) != 0))
        {
          OUTLINED_FUNCTION_51_11(v49);
        }

        else
        {
          OUTLINED_FUNCTION_61_12();
        }

        if (!v112)
        {
          sub_267B9FF34(v111, &qword_28022AEF0, &qword_267EFCDE0);
LABEL_49:

LABEL_50:
          v54 = sub_267EF89F8();
          v55 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v55))
          {
            v56 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_79_9(v56);
            OUTLINED_FUNCTION_102_5(&dword_267B93000, v54, v57, "#ContentProcessor.convertContentToTokens appending ContentToken.generic");
            OUTLINED_FUNCTION_42_0();
          }

          a1 = v113;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_4_7();
            sub_267C70E54();
            a1 = v79;
          }

          isa = a1[2].isa;
          OUTLINED_FUNCTION_60_8();
          if (v59)
          {
            OUTLINED_FUNCTION_7_36(v58);
            sub_267C70E54();
            a1 = v80;
          }

          OUTLINED_FUNCTION_80_6();
          *(v60 + 32) = v31;
          *(v60 + 40) = v27;
          *(v60 + 48) = 0u;
          *(v60 + 64) = 0u;
          *(v60 + 80) = 4;
          v113 = a1;
          goto LABEL_57;
        }

        OUTLINED_FUNCTION_74_7();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_49;
        }

        if (v104 == v109)
        {
          sub_267EF9028();
          OUTLINED_FUNCTION_72_10();
          if (v51 && (v52 = OUTLINED_FUNCTION_97_8(), (v53 & 1) != 0))
          {
            OUTLINED_FUNCTION_51_11(v52);
          }

          else
          {
            OUTLINED_FUNCTION_61_12();
          }

          if (v112)
          {
            OUTLINED_FUNCTION_74_7();
            if (swift_dynamicCast())
            {

              v61 = sub_267EF89F8();
              v62 = sub_267EF95D8();
              if (OUTLINED_FUNCTION_27(v62))
              {
                v63 = OUTLINED_FUNCTION_32();
                OUTLINED_FUNCTION_79_9(v63);
                OUTLINED_FUNCTION_102_5(&dword_267B93000, v61, v64, "#ContentProcessor.convertContentToTokens appending ContentToken.genmoji");
                OUTLINED_FUNCTION_42_0();
              }

              a1 = v113;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_4_7();
                sub_267C70E54();
                a1 = v81;
              }

              isa = a1[2].isa;
              OUTLINED_FUNCTION_60_8();
              if (v59)
              {
                OUTLINED_FUNCTION_7_36(v65);
                sub_267C70E54();
                a1 = v82;
              }

              OUTLINED_FUNCTION_80_6();
              *(v66 + 32) = v109;
              *(v66 + 40) = v110;
              *(v66 + 48) = v31;
              *(v66 + 56) = v27;
              *(v66 + 64) = 0;
              *(v66 + 72) = 0;
              *(v66 + 80) = 2;
              goto LABEL_93;
            }
          }

          else
          {
            sub_267B9FF34(v111, &qword_28022AEF0, &qword_267EFCDE0);
          }
        }

        else if (v103 != v109)
        {
          goto LABEL_49;
        }

        sub_267EF9028();
        OUTLINED_FUNCTION_72_10();
        if (v67 && (v68 = OUTLINED_FUNCTION_97_8(), (v69 & 1) != 0))
        {
          OUTLINED_FUNCTION_51_11(v68);
        }

        else
        {
          OUTLINED_FUNCTION_61_12();
        }

        if (!v112)
        {
          goto LABEL_82;
        }

        OUTLINED_FUNCTION_74_7();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_49;
        }

        sub_267EF9028();
        OUTLINED_FUNCTION_72_10();
        if (v70 && (v71 = OUTLINED_FUNCTION_97_8(), (v72 & 1) != 0))
        {
          OUTLINED_FUNCTION_51_11(v71);
        }

        else
        {
          OUTLINED_FUNCTION_61_12();
        }

        if (!v112)
        {
LABEL_82:

          sub_267B9FF34(v111, &qword_28022AEF0, &qword_267EFCDE0);
          goto LABEL_50;
        }

        OUTLINED_FUNCTION_74_7();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_49;
        }

        v73 = sub_267EF89F8();
        v74 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_27(v74))
        {
          v75 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_79_9(v75);
          OUTLINED_FUNCTION_102_5(&dword_267B93000, v73, v76, "#ContentProcessor.convertContentToTokens appending ContentToken.memoji");
          OUTLINED_FUNCTION_42_0();
        }

        a1 = v113;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_4_7();
          sub_267C70E54();
          a1 = v83;
        }

        isa = a1[2].isa;
        OUTLINED_FUNCTION_60_8();
        if (v59)
        {
          OUTLINED_FUNCTION_7_36(v77);
          sub_267C70E54();
          a1 = v84;
        }

        OUTLINED_FUNCTION_80_6();
        *(v78 + 32) = v109;
        *(v78 + 40) = v110;
        *(v78 + 48) = v109;
        *(v78 + 56) = v110;
        *(v78 + 64) = v31;
        *(v78 + 72) = v27;
        *(v78 + 80) = 3;
LABEL_93:
        v113 = a1;
LABEL_57:
        v22 = v31 + v27;
        if (__OFADD__(v31, v27))
        {
          goto LABEL_105;
        }

        v23 += 8;
        if (!--v108)
        {
          if (v22 < [v106 length])
          {
            v91 = sub_267EF89F8();
            v92 = sub_267EF95D8();
            if (os_log_type_enabled(v91, v92))
            {
              v93 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_42(v93);
              OUTLINED_FUNCTION_17_0(&dword_267B93000, v94, v95, "#ContentProcessor.convertContentToTokens appending trailing ContentToken.text");
              OUTLINED_FUNCTION_26();
            }

            v96 = [v106 substringFromIndex:v31 + v27];
            v97 = sub_267EF9028();
            v99 = v98;

            sub_267DAF858(v97, v99, a3);
            v101 = v100;

            sub_267C9B3F8(v101);
            return v113;
          }

          return a1;
        }
      }

      sub_267B9FF34(v111, &qword_28022AEF0, &qword_267EFCDE0);
LABEL_19:
      v27 = 1;
      goto LABEL_20;
    }
  }

  v85 = sub_267EF89F8();
  a1 = sub_267EF95D8();
  if (os_log_type_enabled(v85, a1))
  {
    v86 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v86);
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v87, v88, "#ContentProcessor.convertContentToTokens no inlineGlyphContent to unpack");
    OUTLINED_FUNCTION_26();
  }

  v89 = sub_267EF9028();
  sub_267DAF858(v89, v90, a3);
  OUTLINED_FUNCTION_43();

  return a1;
}

uint64_t sub_267DAF228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267DAF240()
{
  v45 = v0;
  if (qword_280228818 != -1)
  {
LABEL_33:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);

  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  v4 = OUTLINED_FUNCTION_27(v3);
  v5 = *(v0 + 32);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_52();
    v44 = v7;
    *v6 = 134218242;
    *(v6 + 4) = *(v5 + 16);

    *(v6 + 12) = 2080;
    v8 = MEMORY[0x26D608FD0](v5, &unk_2878D5700);
    v10 = sub_267BA33E8(v8, v9, &v44);

    *(v6 + 14) = v10;
    OUTLINED_FUNCTION_45();
    _os_log_impl(v11, v12, v13, v14, v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v15 = *(v0 + 32);
  v16 = *(v15 + 16);
  if (v16 == 1 && !*(v15 + 80))
  {
    OUTLINED_FUNCTION_17();

    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_470();

    return v35();
  }

  else
  {
    v39 = v0;
    v0 = 0;
    v17 = v15 + 80;
    v37 = v15 + 80;
    v38 = MEMORY[0x277D84F90];
LABEL_8:
    v18 = (v17 + 56 * v0);
    while (v16 != v0)
    {
      if (v0 >= v16)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (__OFADD__(v0, 1))
      {
        goto LABEL_32;
      }

      v20 = *(v18 - 6);
      v19 = *(v18 - 5);
      v21 = *(v18 - 4);
      v22 = *v18;
      v42 = *(v18 - 2);
      v43 = *(v18 - 1);
      v40 = (v0 + 1);
      v41 = *(v18 - 3);
      if (*v18)
      {
        sub_267DB3764(v20, v19, v21, *(v18 - 3), *(v18 - 2), *(v18 - 1), v22);
LABEL_20:
        v27 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_4_7();
          sub_267C70E54();
          v27 = v30;
        }

        v17 = v37;
        v28 = *(v27 + 16);
        v2 = (v28 + 1);
        if (v28 >= *(v27 + 24) >> 1)
        {
          sub_267C70E54();
          v27 = v31;
        }

        *(v27 + 16) = v2;
        v38 = v27;
        v29 = v27 + 56 * v28;
        *(v29 + 32) = v20;
        *(v29 + 40) = v19;
        *(v29 + 48) = v21;
        *(v29 + 56) = v41;
        *(v29 + 64) = v42;
        *(v29 + 72) = v43;
        *(v29 + 80) = v22;
        v0 = v40;
        goto LABEL_8;
      }

      v39[2] = v20;
      v39[3] = v19;
      v23 = qword_2802287D0;

      if (v23 != -1)
      {
        OUTLINED_FUNCTION_38_17();
        swift_once();
      }

      v24 = sub_267EF2728();
      __swift_project_value_buffer(v24, qword_280240EC0);
      sub_267BB5034();
      OUTLINED_FUNCTION_54_11();
      sub_267EF9908();
      if ((v25 & 1) == 0)
      {
        goto LABEL_20;
      }

      v2 = sub_267EF89F8();
      v26 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v26))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_102_5(&dword_267B93000, v2, v26, "#ContentProcessor.makeTextFromTokens Text content is not readable - skipping");
        OUTLINED_FUNCTION_42_0();
      }

      sub_267DB37C4(v20, v19, v21, v41, v42, v43, 0);

      ++v0;
      v18 += 56;
    }

    sub_267DAFD14(v38);
    OUTLINED_FUNCTION_43();

    v39[7] = sub_267DB09D8(v2);

    v32 = swift_task_alloc();
    v39[8] = v32;
    *v32 = v39;
    v32[1] = sub_267DAF688;
    OUTLINED_FUNCTION_470();

    return sub_267DB0E48();
  }
}

uint64_t sub_267DAF688()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_9_1();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  v7[9] = v0;

  if (!v0)
  {
    v7[10] = v3;
    v7[11] = v5;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267DAF79C()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_23_12();

  return v0();
}

uint64_t sub_267DAF7FC()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

void sub_267DAF858(uint64_t a1, uint64_t a2, void *a3)
{
  sub_267EF2D48();
  sub_267EF8FF8();
  OUTLINED_FUNCTION_43();

  v4 = CEMCreateEmojiLocaleData();

  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  v6 = v5 + 16;
  v7 = sub_267EF8FF8();
  CFStringGetLength(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v5;
  aBlock[4] = sub_267DB3824;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267C14628;
  aBlock[3] = &block_descriptor_16;
  v10 = _Block_copy(aBlock);
  v11 = v7;

  CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
  _Block_release(v10);
  swift_beginAccess();
  v12 = *(v8 + 16);
  Length = CFStringGetLength(v11);

  if (__OFSUB__(Length, v12))
  {
    __break(1u);
    goto LABEL_10;
  }

  v24.location = v12;
  v24.length = Length - v12;
  v14 = CFStringCreateWithSubstring(0, v11, v24);
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  MutableCopy = CFStringCreateMutableCopy(0, 0, v14);
  CFStringTrimWhitespace(MutableCopy);
  if (!MutableCopy)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (CFStringGetLength(MutableCopy))
  {
    v17 = sub_267EF9028();
    v19 = v18;
    swift_beginAccess();
    sub_267C705FC();
    v20 = *(*v6 + 16);
    sub_267C7062C(v20);
    v21 = *v6;
    *(v21 + 16) = v20 + 1;
    v22 = v21 + 56 * v20;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 80) = 0;
    *v6 = v21;
    swift_endAccess();
  }

  if (v4)
  {
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
}

void sub_267DAFB28(uint64_t a1, CFIndex a2, CFIndex a3, uint64_t a4, const __CFString *a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v12.location = *(a6 + 16);
  if (__OFSUB__(a2, v12.location))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12.length = a2 - v12.location;
  v13 = CFStringCreateWithSubstring(0, a5, v12);
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  MutableCopy = CFStringCreateMutableCopy(0, 0, v13);
  CFStringTrimWhitespace(MutableCopy);
  if (MutableCopy)
  {

    if (CFStringGetLength(MutableCopy))
    {
      v16 = sub_267EF9028();
      v18 = v17;
      swift_beginAccess();
      sub_267C705FC();
      v19 = *(*(a7 + 16) + 16);
      sub_267C7062C(v19);
      v20 = *(a7 + 16);
      *(v20 + 16) = v19 + 1;
      v21 = v20 + 56 * v19;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      *(v21 + 48) = 0u;
      *(v21 + 64) = 0u;
      *(v21 + 80) = 0;
      *(a7 + 16) = v20;
      swift_endAccess();
    }

    v30.location = a2;
    v30.length = a3;
    v22 = CFStringCreateWithSubstring(0, a5, v30);
    if (v22)
    {
      v23 = v22;
      v24 = sub_267EF9028();
      v26 = v25;
      swift_beginAccess();
      sub_267C705FC();
      v27 = *(*(a7 + 16) + 16);
      sub_267C7062C(v27);
      v28 = *(a7 + 16);
      *(v28 + 16) = v27 + 1;
      v29 = v28 + 56 * v27;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      *(v29 + 48) = 1;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      *(v29 + 72) = 0;
      *(v29 + 80) = 1;
      *(a7 + 16) = v28;
      swift_endAccess();
    }

    if (!__OFADD__(a2, a3))
    {
      swift_beginAccess();
      *(a6 + 16) = a2 + a3;
      return;
    }

    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
}

void sub_267DAFD14(uint64_t a1)
{
  if (qword_280228818 != -1)
  {
LABEL_129:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  OUTLINED_FUNCTION_43();

  v3 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    v4 = OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_52();
    v245 = v5;
    *v4 = 136315138;
    v6 = MEMORY[0x26D608FD0](a1, &unk_2878D5700);
    v8 = sub_267BA33E8(v6, v7, &v245);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_20();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  if (!*(a1 + 16))
  {
    return;
  }

  v14 = (a1 + 80);
  v244 = MEMORY[0x277D84F90];
  while (1)
  {
    v15 = *(v14 - 6);
    v16 = *(v14 - 3);
    v17 = *(v14 - 2);
    v18 = *v14;
    OUTLINED_FUNCTION_49_14();
    v243 = v23;
    if (!v21)
    {
      v61 = v17;
      v62 = v19;
      v63 = v22;
      v64 = v16;
      v65 = v16;
      v66 = v18;
      v67 = v61;
      v68 = v20;
      v237 = v66;
      sub_267DB3764(v15, v19, v22, v65, v61, v20, v66);
      v69 = v244;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267C70E54();
        v69 = v215;
      }

      v71 = *(v69 + 16);
      v70 = *(v69 + 24);
      if (v71 >= v70 >> 1)
      {
        OUTLINED_FUNCTION_13_33(v70);
        sub_267C70E54();
        v72 = v62;
        v69 = v216;
      }

      else
      {
        v72 = v62;
      }

      v244 = v69;
      *(v69 + 16) = v71 + 1;
      v73 = v69 + 56 * v71;
      *(v73 + 32) = v15;
      *(v73 + 40) = v72;
      *(v73 + 48) = v63;
      *(v73 + 56) = v64;
      *(v73 + 64) = v67;
      *(v73 + 72) = v68;
      v74 = v237;
LABEL_24:
      *(v73 + 80) = v74;
      goto LABEL_112;
    }

    v24 = v15;
    v25 = v244 + 56 * v21;
    v26 = *(v25 - 24);
    a1 = *(v25 - 16);
    v27 = *(v25 - 8);
    v241 = v19;
    v242 = *v25;
    v28 = *(v25 + 8);
    v29 = *(v25 + 16);
    v30 = *(v25 + 24);
    v239 = v22;
    v240 = v20;
    if (v18 == 3)
    {
      break;
    }

    if (v18 == 2)
    {
      if (v30 != 2)
      {
        v75 = v24;
        OUTLINED_FUNCTION_111_4();
        sub_267DB3764(v116, v117, v118, v119, v120, v121, 2u);
        goto LABEL_107;
      }

      v229 = *(v25 - 8);
      v75 = v24;
      v76 = v24 == v26 && v19 == a1;
      v30 = v16;
      if (v76)
      {
        sub_267DB3764(v24, v19, v22, v16, v17, v20, 2u);
      }

      else
      {
        a1 = v19;
        v77 = v20;
        v78 = v22;
        v79 = sub_267EF9EA8();
        v80 = OUTLINED_FUNCTION_66();
        sub_267DB3764(v80, v81, v78, v30, v17, v77, 2u);
        if ((v79 & 1) == 0)
        {
          goto LABEL_107;
        }
      }

      OUTLINED_FUNCTION_49_14();
      if (!v127)
      {
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267D5FFC8();
        v244 = v217;
      }

      OUTLINED_FUNCTION_49_14();
      if (!v128)
      {
        goto LABEL_127;
      }

      OUTLINED_FUNCTION_11_36(v128);
      if (__OFADD__(v30, v242))
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_20();
      if (v115)
      {
        OUTLINED_FUNCTION_13_33(v129);
        sub_267C70E54();
        v244 = v218;
      }

      OUTLINED_FUNCTION_25_24();
      *(v73 + 32) = v75;
      *(v73 + 40) = v241;
      *(v73 + 48) = v229;
      *(v73 + 56) = v30 + v242;
      *(v73 + 64) = 0;
      *(v73 + 72) = 0;
      v74 = 2;
      goto LABEL_24;
    }

    if (v18 != 1)
    {
      v106 = v17;
      v107 = *(v25 - 24);
      v231 = v106;
      sub_267DB3764(v24, v19, v22, v16, v106, v20, v18);
      OUTLINED_FUNCTION_46_15();
      sub_267DB3764(v108, v109, v110, v111, v28, v29, v30);
      if (v18 != 4 || v30 != 4)
      {
        goto LABEL_105;
      }

      OUTLINED_FUNCTION_49_14();
      if (!v112)
      {
        goto LABEL_133;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267D5FFC8();
        v244 = v221;
      }

      OUTLINED_FUNCTION_49_14();
      if (!v113)
      {
        goto LABEL_134;
      }

      OUTLINED_FUNCTION_11_36(v113);
      if (__OFADD__(v241, a1))
      {
        goto LABEL_135;
      }

      OUTLINED_FUNCTION_23_20();
      if (v115)
      {
        OUTLINED_FUNCTION_13_33(v114);
        sub_267C70E54();
        v244 = v222;
      }

      OUTLINED_FUNCTION_25_24();
      *(v73 + 32) = v107;
      *(v73 + 40) = v241 + a1;
      *(v73 + 48) = 0u;
      *(v73 + 64) = 0u;
      v74 = 4;
      goto LABEL_24;
    }

    if (v30 != 1)
    {

      goto LABEL_106;
    }

    v234 = *(v25 + 16);
    v235 = *(v25 + 8);
    v31 = *(v25 - 24);
    sub_267EF2D48();
    OUTLINED_FUNCTION_59_12();
    sub_267DB3764(v32, v33, v34, v35, v36, v37, v38);
    OUTLINED_FUNCTION_46_15();
    sub_267DB3764(v39, v40, v41, v42, v28, v29, 1u);
    v225 = v16;
    v231 = v17;
    OUTLINED_FUNCTION_59_12();
    sub_267DB3764(v43, v44, v45, v46, v47, v48, v49);
    v232 = v31;
    OUTLINED_FUNCTION_46_15();
    sub_267DB3764(v50, v51, v52, v53, v28, v29, 1u);
    sub_267EF8FF8();
    OUTLINED_FUNCTION_43();

    v54 = CEMCreateEmojiLocaleData();

    v226 = v24;
    v55 = sub_267EF8FF8();
    v56 = CEMEmojiTokenCreateWithString();

    v57 = CEMEmojiTokenCopyNameWithCount();
    if (v54)
    {
      swift_unknownObjectRelease();
    }

    if (v56)
    {
      swift_unknownObjectRelease();
    }

    if (v57)
    {
      v58 = objc_opt_self();
      if (OUTLINED_FUNCTION_92_7(v58))
      {
        v245 = 0;
        v246 = 0;
        sub_267EF9018();

        if (v246)
        {
          v59 = v246;
          v60 = v245;
          goto LABEL_81;
        }
      }

      else
      {
      }
    }

    v60 = 0;
    v59 = 0;
LABEL_81:
    sub_267EF2D48();
    v165 = v164;
    v166 = sub_267EF8FF8();

    v167 = CEMCreateEmojiLocaleData();

    sub_267EF8FF8();
    v168 = OUTLINED_FUNCTION_43();
    sub_267DB37C4(v168, a1, v27, v242, v235, v29, 1u);
    v169 = CEMEmojiTokenCreateWithString();

    v171 = CEMEmojiTokenCopyNameWithCount();
    if (v167)
    {
      swift_unknownObjectRelease();
    }

    v172 = v59;
    if (v169)
    {
      swift_unknownObjectRelease();
    }

    LOBYTE(v18) = 1;
    if (!v171)
    {
      v174 = 0;
      v176 = v239;
      v175 = v240;
      if (v59)
      {
        goto LABEL_95;
      }

      goto LABEL_90;
    }

    v173 = objc_opt_self();
    if (OUTLINED_FUNCTION_92_7(v173))
    {
      v245 = 0;
      v246 = 0;
      sub_267EF9018();

      v171 = v246;
      if (v246)
      {
        v174 = v245;
        goto LABEL_94;
      }
    }

    else
    {
    }

    v174 = 0;
    v171 = 0;
LABEL_94:
    v175 = v240;
    v176 = v239;
    if (v59)
    {
LABEL_95:
      if (!v171)
      {
        v24 = v226;
        v16 = v225;
        OUTLINED_FUNCTION_123_1(v226, v241, v176, v225, v170, v175);

        goto LABEL_104;
      }

      v177 = v176;
      if (v60 == v174 && v172 == v171)
      {
      }

      else
      {
        v185 = sub_267EF9EA8();

        if ((v185 & 1) == 0)
        {
          v24 = v226;
          OUTLINED_FUNCTION_82_6();
          v16 = v186;
          OUTLINED_FUNCTION_123_1(v187, v188, v189, v186, v190, v191);
LABEL_102:
          LOBYTE(v18) = 1;
LABEL_104:
          v29 = v234;
          LOBYTE(v30) = 1;
          v28 = v235;
LABEL_105:
          OUTLINED_FUNCTION_46_15();
          sub_267DB37C4(v192, v193, v194, v195, v28, v29, v30);
          v17 = v231;
LABEL_106:
          v30 = v16;
          v75 = v24;
LABEL_107:
          v196 = v30;
          v197 = v75;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_40();
            sub_267C70E54();
            v244 = v213;
          }

          v199 = *(v244 + 16);
          v198 = *(v244 + 24);
          v201 = v240;
          v200 = v241;
          if (v199 >= v198 >> 1)
          {
            OUTLINED_FUNCTION_13_33(v198);
            sub_267C70E54();
            v201 = v240;
            v200 = v241;
            v244 = v214;
          }

          *(v244 + 16) = v199 + 1;
          v202 = v244 + 56 * v199;
          *(v202 + 32) = v197;
          *(v202 + 40) = v200;
          *(v202 + 48) = v239;
          *(v202 + 56) = v196;
          *(v202 + 64) = v17;
          *(v202 + 72) = v201;
          *(v202 + 80) = v18;
          goto LABEL_112;
        }
      }

      goto LABEL_115;
    }

LABEL_90:
    v177 = v176;
    if (v171)
    {
      v24 = v226;
      OUTLINED_FUNCTION_82_6();
      OUTLINED_FUNCTION_123_1(v178, v179, v180, v181, v182, v183);
      v16 = v225;

      goto LABEL_102;
    }

LABEL_115:
    sub_267DB37C4(v232, a1, v27, v242, v235, v234, 1u);
    OUTLINED_FUNCTION_82_6();
    OUTLINED_FUNCTION_123_1(v203, v204, v205, v206, v207, v208);
    OUTLINED_FUNCTION_49_14();
    if (!v209)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267D5FFC8();
      v244 = v223;
    }

    OUTLINED_FUNCTION_49_14();
    if (!v210)
    {
      goto LABEL_137;
    }

    OUTLINED_FUNCTION_11_36(v210);
    if (__OFADD__(v177, v27))
    {
      goto LABEL_138;
    }

    OUTLINED_FUNCTION_23_20();
    if (v115)
    {
      OUTLINED_FUNCTION_13_33(v211);
      sub_267C70E54();
      v244 = v224;
    }

    OUTLINED_FUNCTION_25_24();
    *(v212 + 32) = v226;
    *(v212 + 40) = v241;
    *(v212 + 48) = v177 + v27;
    *(v212 + 56) = 0;
    *(v212 + 64) = 0;
    *(v212 + 72) = 0;
    *(v212 + 80) = 1;
LABEL_112:
    v14 += 56;
    if (v243 == 1)
    {
      return;
    }
  }

  v228 = *(v25 - 16);
  v230 = *(v25 - 8);
  v236 = *(v25 + 8);
  v233 = *(v25 - 24);
  if (v30 != 3)
  {
    v122 = v24;
    v227 = v24;
    v123 = v20;
    v124 = v22;
    sub_267DB3764(v122, v19, v22, v16, v17, v20, 3u);
    v125 = OUTLINED_FUNCTION_66();
    sub_267DB3764(v125, v126, v124, v16, v17, v123, 3u);
    sub_267DB3764(v233, a1, v230, v242, v28, v29, v30);

    v99 = v233;
    v101 = a1;
    v75 = v227;
    v102 = v230;
    v103 = v242;
    v104 = v236;
    v100 = v29;
    v105 = v30;
    v30 = v16;
    goto LABEL_51;
  }

  v75 = v24;
  if (v24 == v26 && v19 == a1)
  {
    OUTLINED_FUNCTION_111_4();
    v131 = v130;
    v84 = v132;
    sub_267DB3764(v133, v134, v135, v136, v137, v130, 3u);
    v138 = OUTLINED_FUNCTION_66();
    sub_267DB3764(v138, v139, v230, v242, v236, v29, 3u);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_64_9();
    sub_267DB3764(v140, v141, v142, v143, v17, v131, 3u);
    v144 = OUTLINED_FUNCTION_66();
    sub_267DB3764(v144, v145, v230, v242, v236, v29, 3u);

    v86 = v230;
  }

  else
  {
    v83 = v19;
    v84 = v22;
    v238 = sub_267EF9EA8();
    v85 = v83;
    v30 = v16;
    v86 = v27;
    sub_267DB3764(v75, v85, v84, v16, v17, v240, 3u);
    v87 = OUTLINED_FUNCTION_113_6();
    sub_267DB3764(v87, v88, v89, v90, v236, v29, 3u);
    OUTLINED_FUNCTION_64_9();
    sub_267DB3764(v91, v92, v93, v94, v17, v240, 3u);
    v95 = OUTLINED_FUNCTION_113_6();
    sub_267DB3764(v95, v96, v97, v98, v236, v29, 3u);

    if ((v238 & 1) == 0)
    {

      v99 = v233;
      v100 = v29;
      v101 = v228;
      v102 = v27;
      v103 = v242;
      v104 = v236;
      v105 = 3;
LABEL_51:
      sub_267DB37C4(v99, v101, v102, v103, v104, v100, v105);
      goto LABEL_107;
    }
  }

  if (v84 == v86 && v30 == v242)
  {

    OUTLINED_FUNCTION_64_9();
    v151 = v156;
    sub_267DB37C4(v157, v158, v159, v160, v17, v156, 3u);
    v150 = v84;
    OUTLINED_FUNCTION_64_9();
  }

  else
  {
    v147 = v84;
    v148 = v86;
    v149 = sub_267EF9EA8();

    if ((v149 & 1) == 0)
    {

      sub_267DB37C4(v233, v228, v148, v242, v236, v29, 3u);
      goto LABEL_107;
    }

    v150 = v147;
    v151 = v240;
    sub_267DB37C4(v75, v241, v147, v30, v17, v240, 3u);
    v152 = v233;
    v153 = v228;
    v154 = v148;
    v155 = v242;
  }

  sub_267DB37C4(v152, v153, v154, v155, v236, v29, 3u);
  OUTLINED_FUNCTION_49_14();
  if (v161)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267D5FFC8();
      v244 = v219;
    }

    OUTLINED_FUNCTION_49_14();
    if (!v162)
    {
      goto LABEL_131;
    }

    OUTLINED_FUNCTION_11_36(v162);
    if (__OFADD__(v151, v29))
    {
      goto LABEL_132;
    }

    OUTLINED_FUNCTION_23_20();
    if (v115)
    {
      OUTLINED_FUNCTION_13_33(v163);
      sub_267C70E54();
      v244 = v220;
    }

    OUTLINED_FUNCTION_25_24();
    *(v73 + 32) = v75;
    *(v73 + 40) = v241;
    *(v73 + 48) = v150;
    *(v73 + 56) = v30;
    *(v73 + 64) = v236;
    *(v73 + 72) = v151 + v29;
    v74 = 3;
    goto LABEL_24;
  }

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
}

uint64_t sub_267DB09D8(uint64_t a1)
{
  if (qword_280228818 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v2 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);

    v3 = sub_267EF89F8();
    sub_267EF95D8();

    if (OUTLINED_FUNCTION_99())
    {
      v4 = OUTLINED_FUNCTION_48();
      v5 = OUTLINED_FUNCTION_52();
      v73 = v5;
      *v4 = 136315138;
      v6 = MEMORY[0x26D608FD0](a1, &unk_2878D5700);
      v8 = sub_267BA33E8(v6, v7, &v73);

      *(v4 + 4) = v8;
      OUTLINED_FUNCTION_20();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v14 = *(a1 + 16);
    if (!v14)
    {
      break;
    }

    v15 = (a1 + 80);
    v68 = xmmword_267EFCC90;
    a1 = MEMORY[0x277D84F90];
    v69 = MEMORY[0x277D84F90];
    while (1)
    {
      v16 = *(v15 - 6);
      v17 = *(v15 - 5);
      v18 = *(v15 - 4);
      v19 = *(v15 - 2);
      v20 = *(v15 - 1);
      v21 = *v15;
      if (*v15)
      {
        v70 = *(v15 - 3);
        v71 = v14;
        sub_267DB3764(v16, v17, v18, v70, v19, v20, v21);
        v22 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_4_7();
          sub_267C70E54();
          a1 = v59;
        }

        v24 = *(a1 + 16);
        v23 = *(a1 + 24);
        if (v24 >= v23 >> 1)
        {
          OUTLINED_FUNCTION_7_36(v23);
          sub_267C70E54();
          a1 = v60;
        }

        *(a1 + 16) = v24 + 1;
        v25 = a1 + 56 * v24;
        *(v25 + 32) = v16;
        *(v25 + 40) = v17;
        *(v25 + 48) = v18;
        *(v25 + 56) = v70;
        *(v25 + 64) = v19;
        *(v25 + 72) = v22;
        *(v25 + 80) = v21;
        v14 = v71;
        goto LABEL_26;
      }

      if (*(a1 + 16))
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229C98, &qword_267EFF200);
      v45 = swift_allocObject();
      OUTLINED_FUNCTION_112_6(v45, v46, v47, v48, v49, v50, v51, v52, v53, v68, *(&v68 + 1), v54);
      *(v55 + 64) = v19;
      *(v55 + 72) = v20;
      *(v55 + 80) = 0;
      v56 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_7();
        sub_267C70F28();
        v56 = v61;
      }

      v58 = *(v56 + 16);
      v57 = *(v56 + 24);
      if (v58 >= v57 >> 1)
      {
        OUTLINED_FUNCTION_7_36(v57);
        sub_267C70F28();
        v56 = v62;
      }

      *(v56 + 16) = v58 + 1;
      v69 = v56;
      *(v56 + 8 * v58 + 32) = v45;
LABEL_25:
      a1 = MEMORY[0x277D84F90];
LABEL_26:
      v15 += 56;
      if (!--v14)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229C88, &unk_267EFF1F0);
    v72 = v19;
    inited = swift_initStackObject();
    *(inited + 16) = v68;
    *(inited + 32) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229C98, &qword_267EFF200);
    v27 = swift_allocObject();
    OUTLINED_FUNCTION_112_6(v27, v28, v29, v30, v31, v32, v33, v34, v35, v68, *(&v68 + 1), v36);
    *(v37 + 64) = v72;
    *(v37 + 72) = v20;
    *(v37 + 80) = 0;
    *(inited + 40) = v37;
    v38 = v69;
    v39 = *(v69 + 16);
    if (!__OFADD__(v39, 2))
    {

      if (!swift_isUniquelyReferenced_nonNull_native() || (v40 = *(v69 + 24) >> 1, v40 < v39 + 2))
      {
        sub_267C70F28();
        v38 = v41;
        v40 = *(v41 + 24) >> 1;
      }

      if (v40 - *(v38 + 16) < 2)
      {
        goto LABEL_37;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229C90, &unk_267F08A70);
      swift_arrayInitWithCopy();

      v42 = *(v38 + 16);
      v43 = __OFADD__(v42, 2);
      v44 = v42 + 2;
      if (v43)
      {
        goto LABEL_38;
      }

      v69 = v38;
      *(v38 + 16) = v44;
      goto LABEL_25;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  a1 = MEMORY[0x277D84F90];
  v69 = MEMORY[0x277D84F90];
LABEL_29:
  if (*(a1 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_6_40();
      sub_267C70F28();
      v69 = v66;
    }

    v64 = *(v69 + 16);
    v63 = *(v69 + 24);
    if (v64 >= v63 >> 1)
    {
      OUTLINED_FUNCTION_8_2(v63);
      sub_267C70F28();
      v69 = v67;
    }

    result = v69;
    *(v69 + 16) = v64 + 1;
    *(v69 + 8 * v64 + 32) = a1;
  }

  else
  {

    return v69;
  }

  return result;
}

uint64_t sub_267DB0E48()
{
  OUTLINED_FUNCTION_12();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = sub_267EF79B8();
  v0[11] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v0[12] = v5;
  v0[13] = OUTLINED_FUNCTION_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v0[14] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4228();
  v0[15] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v0[16] = v7;
  v0[17] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DB0F70()
{
  v124 = v0;
  if (qword_280228818 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v1 = sub_267EF8A08();
    v0[18] = OUTLINED_FUNCTION_30_1(v1, qword_280240FB0);

    v2 = sub_267EF89F8();
    v3 = sub_267EF95D8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[8];
      v5 = OUTLINED_FUNCTION_48();
      v6 = OUTLINED_FUNCTION_52();
      v123 = v6;
      *v5 = 136315138;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229C90, &unk_267F08A70);
      v8 = MEMORY[0x26D608FD0](v4, v7);
      v10 = sub_267BA33E8(v8, v9, &v123);

      *(v5 + 4) = v10;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    v17 = v0[8];
    v18 = *(v17 + 16);
    v19 = MEMORY[0x277D84F90];
    v0[20] = 0;
    v0[21] = v19;
    v0[19] = v18;
    if (!v18)
    {
      break;
    }

    OUTLINED_FUNCTION_106_3(v17);
    v20 = MEMORY[0x277D84F90];
    if (!v21)
    {
      LOBYTE(v22) = 0;
      v19 = MEMORY[0x277D84F90];
LABEL_43:
      v82 = *(v19 + 16);
      if (v82)
      {
        v0[4] = v20;
        sub_267C7220C(0, v82, 0);
        v83 = v0[4];
        v84 = v19 + 40;
        do
        {

          OUTLINED_FUNCTION_290();
          sub_267EF90F8();

          v0[4] = v83;
          v86 = *(v83 + 16);
          v85 = *(v83 + 24);
          if (v86 >= v85 >> 1)
          {
            v90 = OUTLINED_FUNCTION_8_2(v85);
            sub_267C7220C(v90, v86 + 1, 1);
            v83 = v0[4];
          }

          *(v83 + 16) = v86 + 1;
          OUTLINED_FUNCTION_9_4();
          v89(v83 + v87 + *(v88 + 40) * v86);
          v84 += 16;
          --v82;
        }

        while (v82);
      }

      else
      {

        v83 = MEMORY[0x277D84F90];
      }

      v0[45] = v83;
      v91 = v0[14];
      v92 = v0[11];
      sub_267EF90F8();

      __swift_storeEnumTagSinglePayload(v91, 0, 1, v92);
      v93 = swift_task_alloc();
      v94 = OUTLINED_FUNCTION_32_14(v93);
      *v94 = v95;
      OUTLINED_FUNCTION_3_49(v94);
      v96 = v0[14];
      LOBYTE(v128) = v22;
      v127 = v96;
      v125 = 0;
      OUTLINED_FUNCTION_470();

      return sub_267CE99E4();
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0xE000000000000000;
    while (2)
    {
      v0[26] = v24;
      v0[27] = v19;
      v0[24] = v23;
      v0[25] = v25;
      OUTLINED_FUNCTION_15_29();
      if (!v28)
      {
        v29 = v27 + 56 * v26;
        v30 = *(v29 + 32);
        v0[28] = v30;
        v31 = *(v29 + 40);
        v0[29] = v31;
        v0[30] = *(v29 + 48);
        v32 = *(v29 + 56);
        v0[31] = v32;
        v33 = *(v29 + 64);
        v0[32] = v33;
        v34 = *(v29 + 72);
        v0[33] = v34;
        switch(*(v29 + 80))
        {
          case 1:
            v120 = v33;
            v121 = v34;
            v122 = v19;
            v119 = v23;
            v37 = v0[10];
            sub_267EF2D48();
            OUTLINED_FUNCTION_94_7();
            OUTLINED_FUNCTION_66();
            sub_267EF8FF8();
            OUTLINED_FUNCTION_43();

            v38 = CEMCreateEmojiLocaleData();

            v39 = sub_267EF8FF8();
            v40 = CEMEmojiTokenCreateWithString();

            v41 = CEMEmojiTokenCopyNameWithCount();
            if (v38)
            {
              swift_unknownObjectRelease();
            }

            if (v40)
            {
              swift_unknownObjectRelease();
            }

            if (!v41)
            {
              goto LABEL_27;
            }

            v42 = objc_opt_self();
            v43 = OUTLINED_FUNCTION_92_7(v42);
            if (!v43)
            {

LABEL_27:
              OUTLINED_FUNCTION_128_3();
              v52 = sub_267EF89F8();
              v53 = sub_267EF95E8();
              if (OUTLINED_FUNCTION_5_2(v53))
              {
                v54 = OUTLINED_FUNCTION_48();
                v55 = OUTLINED_FUNCTION_52();
                v126 = v22;
                v123 = v55;
                *v54 = 136315138;
                v117 = v32;
                v56 = v25;
                v57 = sub_267BA33E8(v30, v31, &v123);
                v58 = OUTLINED_FUNCTION_35_17();
                sub_267DB37C4(v58, v59, v60, v61, v120, v121, 1u);
                *(v54 + 4) = v57;
                v25 = v56;
                OUTLINED_FUNCTION_125_4(&dword_267B93000, v52, v53, "#ContentProcessor.makeTextFromGroupedContentTokens Failed to get description of emoji: %s");
                OUTLINED_FUNCTION_86_8();
                v22 = v126;
                OUTLINED_FUNCTION_32_0();
                OUTLINED_FUNCTION_42_0();

                v62 = OUTLINED_FUNCTION_35_17();
                v65 = v117;
              }

              else
              {

                v66 = OUTLINED_FUNCTION_35_17();
                sub_267DB37C4(v66, v67, v68, v32, v120, v121, 1u);
                v62 = OUTLINED_FUNCTION_35_17();
                v65 = v32;
              }

              sub_267DB37C4(v62, v63, v64, v65, v120, v121, 1u);
              v23 = v119;
              v19 = v122;
              goto LABEL_31;
            }

            OUTLINED_FUNCTION_126_5(v43);

            v44 = v0[3];
            if (!v44)
            {
              goto LABEL_27;
            }

            OUTLINED_FUNCTION_104_6();
            v118 = v25;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_6_40();
              sub_267BF4EE8();
              v122 = v70;
            }

            v46 = *(v122 + 16);
            v45 = *(v122 + 24);
            if (v46 >= v45 >> 1)
            {
              OUTLINED_FUNCTION_8_2(v45);
              sub_267BF4EE8();
              v122 = v71;
            }

            *(v122 + 16) = v46 + 1;
            v47 = v122 + 16 * v46;
            *(v47 + 32) = v40;
            *(v47 + 40) = v44;
            v19 = v122;
            v48 = OUTLINED_FUNCTION_35_17();
            sub_267DB37C4(v48, v49, v50, v32, v120, v51, 1u);
            v25 = v118;
            v23 = v119;
LABEL_31:
            OUTLINED_FUNCTION_18_26();
            if (!v69)
            {
              continue;
            }

            v20 = MEMORY[0x277D84F90];
            break;
          case 2:

            v102 = swift_task_alloc();
            v103 = OUTLINED_FUNCTION_90_7(v102);
            *v103 = v104;
            OUTLINED_FUNCTION_1_57(v103);
            goto LABEL_56;
          case 3:

            v98 = swift_task_alloc();
            v99 = OUTLINED_FUNCTION_57_1(v98);
            *v99 = v100;
            OUTLINED_FUNCTION_4_47(v99);
            v128 = v32;
            v129 = v101;
            OUTLINED_FUNCTION_8_40();
            OUTLINED_FUNCTION_43_17();
            goto LABEL_57;
          case 4:
            v105 = swift_task_alloc();
            v106 = OUTLINED_FUNCTION_89_9(v105);
            *v106 = v107;
            OUTLINED_FUNCTION_0_46(v106);
            OUTLINED_FUNCTION_43_17();
LABEL_56:
            OUTLINED_FUNCTION_29_20();
LABEL_57:
            OUTLINED_FUNCTION_470();

            return sub_267D1374C(v108, v109, v110, v111, v112, v113, v114, v115);
          default:
            OUTLINED_FUNCTION_127_4();

            v22 = !v23 || (OUTLINED_FUNCTION_10_31(), !v36) || *(v35 + 56 * v36 + 24) != 0;
            v23 = v30;
            v25 = v31;
            goto LABEL_31;
        }

        goto LABEL_43;
      }

      break;
    }

    __break(1u);
LABEL_61:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  if (sub_267E43718(v16))
  {
    v0[7] = v19;
  }

  else
  {
    v0[6] = v19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  sub_267BF5748();
  sub_267EF8FC8();

  v72 = sub_267EF89F8();
  v73 = sub_267EF95D8();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = OUTLINED_FUNCTION_48();
    v75 = OUTLINED_FUNCTION_52();
    v123 = v75;
    *v74 = 136315138;
    v76 = OUTLINED_FUNCTION_26_0();
    *(v74 + 4) = sub_267BA33E8(v76, v77, v78);
    _os_log_impl(&dword_267B93000, v72, v73, "#ContentProcessor.makeTextFromGroupedContentTokens resulting string: %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v75);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_470();

  return v79();
}

uint64_t sub_267DB184C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  *v4 = *v1;
  v3[35] = v5;
  v3[36] = v6;
  v3[37] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DB1980()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  *v4 = *v1;
  v3[39] = v5;
  v3[40] = v6;
  v3[41] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DB24E4()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 344) = v5;
  *(v3 + 352) = v6;

  if (v0)
  {

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_30_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DB2654()
{
  OUTLINED_FUNCTION_85_8();
  OUTLINED_FUNCTION_120_4();
  v3 = v1[44];
  v112 = v1[27];
  if (v3)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v1[27];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_49:
      OUTLINED_FUNCTION_6_40();
      sub_267BF4EE8();
      v112 = v107;
    }

    v5 = *(v112 + 16);
    OUTLINED_FUNCTION_60_8();
    if (v7)
    {
      OUTLINED_FUNCTION_7_36(v6);
      sub_267BF4EE8();
      v112 = v108;
    }

    v8 = v1[43];

    *(v112 + 16) = v0;
    v9 = v112 + 16 * v5;
    *(v9 + 32) = v8;
    *(v9 + 40) = v3;
  }

  v10 = v1[24];
  v0 = v1[25];
LABEL_7:
  v111 = v0;
  v109 = v10;
  while (1)
  {
    OUTLINED_FUNCTION_18_26();
    if (v12)
    {
      break;
    }

    v1[26] = v11;
    v1[27] = v112;
    v1[24] = v10;
    v1[25] = v0;
    OUTLINED_FUNCTION_15_29();
    if (v7)
    {
      __break(1u);
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_105_8();
    v14 = v13[4];
    v1[28] = v14;
    OUTLINED_FUNCTION_19_26(v13);
    v1[33] = *(v15 + 72);
    switch(*(v15 + 80))
    {
      case 1:
        v16 = sub_267EF2D48();

        OUTLINED_FUNCTION_66();
        sub_267EF8FF8();
        OUTLINED_FUNCTION_43();

        v17 = CEMCreateEmojiLocaleData();

        v113 = v14;
        OUTLINED_FUNCTION_91_2();
        sub_267EF8FF8();
        OUTLINED_FUNCTION_108_6();
        v18 = CEMEmojiTokenCreateWithString();

        v19 = OUTLINED_FUNCTION_99_7();
        if (v17)
        {
          swift_unknownObjectRelease();
        }

        if (v18)
        {
          swift_unknownObjectRelease();
        }

        if (!v19)
        {
          goto LABEL_24;
        }

        v20 = objc_opt_self();
        v21 = OUTLINED_FUNCTION_92_7(v20);
        if (v21)
        {
          OUTLINED_FUNCTION_126_5(v21);

          v3 = v1[3];
          if (v3)
          {
            OUTLINED_FUNCTION_104_6();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_6_40();
              sub_267BF4EE8();
              v112 = v73;
            }

            OUTLINED_FUNCTION_78_11();
            if (v7)
            {
              OUTLINED_FUNCTION_7_36(v22);
              sub_267BF4EE8();
              v112 = v74;
            }

            OUTLINED_FUNCTION_84_7(v112);
            OUTLINED_FUNCTION_193();
            OUTLINED_FUNCTION_59_12();
            sub_267DB37C4(v23, v24, v25, v26, v27, v28, v29);
            v10 = v109;
            goto LABEL_27;
          }
        }

        else
        {
        }

LABEL_24:
        OUTLINED_FUNCTION_128_3();
        v3 = sub_267EF89F8();
        v30 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_27(v30))
        {
          v31 = OUTLINED_FUNCTION_48();
          v32 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_33_12(v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
          v42 = OUTLINED_FUNCTION_91_2();
          v110 = sub_267BA33E8(v42, v43, v44);
          OUTLINED_FUNCTION_193();
          OUTLINED_FUNCTION_59_12();
          sub_267DB37C4(v45, v46, v47, v48, v49, v50, v51);
          v10 = v109;
          *(v31 + 4) = v110;
          OUTLINED_FUNCTION_125_4(&dword_267B93000, v3, v17, "#ContentProcessor.makeTextFromGroupedContentTokens Failed to get description of emoji: %s");
          OUTLINED_FUNCTION_86_8();
          v0 = v111;
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_42_0();

          OUTLINED_FUNCTION_59_12();
          sub_267DB37C4(v52, v53, v54, v55, v56, v57, v58);
          continue;
        }

        v3 = v113;
        OUTLINED_FUNCTION_12_29();
        OUTLINED_FUNCTION_59_12();
        sub_267DB37C4(v59, v60, v61, v62, v63, v64, v65);
        OUTLINED_FUNCTION_12_29();
        OUTLINED_FUNCTION_59_12();
        sub_267DB37C4(v66, v67, v68, v69, v70, v71, v72);
LABEL_27:
        v0 = v111;
        break;
      case 2:

        v90 = swift_task_alloc();
        v91 = OUTLINED_FUNCTION_90_7(v90);
        *v91 = v92;
        OUTLINED_FUNCTION_1_57(v91);
        goto LABEL_40;
      case 3:

        v84 = swift_task_alloc();
        v85 = OUTLINED_FUNCTION_57_1(v84);
        *v85 = v86;
        OUTLINED_FUNCTION_4_47(v85);
        OUTLINED_FUNCTION_8_40();
        OUTLINED_FUNCTION_43_17();
        goto LABEL_41;
      case 4:
        v87 = swift_task_alloc();
        v88 = OUTLINED_FUNCTION_89_9(v87);
        *v88 = v89;
        OUTLINED_FUNCTION_0_46(v88);
        OUTLINED_FUNCTION_43_17();
LABEL_40:
        OUTLINED_FUNCTION_29_20();
LABEL_41:
        OUTLINED_FUNCTION_63_9();

        return sub_267D1374C(v93, v94, v95, v96, v97, v98, v99, v100);
      default:
        OUTLINED_FUNCTION_127_4();

        OUTLINED_FUNCTION_83_7();
        v10 = v14;
        v0 = v2;
        if (v3)
        {
          OUTLINED_FUNCTION_10_31();
          v10 = v14;
          v0 = v2;
          if (v76)
          {
            OUTLINED_FUNCTION_21_21(v75);
            v10 = v14;
            v0 = v2;
          }
        }

        goto LABEL_7;
    }
  }

  v77 = *(v112 + 16);
  if (v77)
  {
    OUTLINED_FUNCTION_53_12(MEMORY[0x277D84F90]);
    v78 = v1[4];
    v79 = v112 + 40;
    do
    {
      OUTLINED_FUNCTION_98_7();
      OUTLINED_FUNCTION_26_0();
      sub_267EF90F8();

      OUTLINED_FUNCTION_52_11();
      if (v7)
      {
        v83 = OUTLINED_FUNCTION_8_2(v80);
        OUTLINED_FUNCTION_95_7(v83);
        v78 = v1[4];
      }

      v81 = OUTLINED_FUNCTION_14_34();
      v82(v81);
      v79 += 16;
      --v77;
    }

    while (v77);
  }

  else
  {

    v78 = MEMORY[0x277D84F90];
  }

  v1[45] = v78;
  OUTLINED_FUNCTION_16_27();
  sub_267EF90F8();

  OUTLINED_FUNCTION_45_15();
  v103 = swift_task_alloc();
  v104 = OUTLINED_FUNCTION_32_14(v103);
  *v104 = v105;
  OUTLINED_FUNCTION_3_49(v104);
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_62_7();

  return sub_267CE99E4();
}

uint64_t sub_267DB2BE0()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 376) = v0;

  sub_267B9FF34(*(v2 + 112), &unk_28022AE30, &qword_267EFC0B0);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DB2D4C()
{
  OUTLINED_FUNCTION_85_8();
  v121 = v1;
  v122 = v2;
  OUTLINED_FUNCTION_120_4();
  v120 = v0;
  v0[5] = sub_267EF41F8();
  v3 = v0 + 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  sub_267BF5748();
  v4 = sub_267EF8FC8();
  v6 = v5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v0[21];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v9 = *(v8 + 16);
    if (v9 >= *(v8 + 24) >> 1)
    {
      sub_267BF4EE8();
      v8 = v111;
    }

    v10 = (*(v0[16] + 8))(v0[17], v0[15]);
    *(v8 + 16) = v9 + 1;
    v11 = v8 + 16 * v9;
    *(v11 + 32) = v4;
    *(v11 + 40) = v6;
    v12 = v0[19];
    v13 = v0[20] + 1;
    v0[20] = v13;
    v0[21] = v8;
    if (v13 == v12)
    {
      if (sub_267E43718(v10))
      {
        v3[2] = v8;
      }

      else
      {
        v3[1] = v8;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
      sub_267EF8FC8();

      v63 = sub_267EF89F8();
      sub_267EF95D8();

      if (OUTLINED_FUNCTION_99())
      {
        v64 = OUTLINED_FUNCTION_48();
        v65 = OUTLINED_FUNCTION_52();
        v119 = v65;
        *v64 = 136315138;
        v66 = OUTLINED_FUNCTION_290();
        *(v64 + 4) = sub_267BA33E8(v66, v67, v68);
        OUTLINED_FUNCTION_45();
        _os_log_impl(v69, v70, v71, v72, v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      OUTLINED_FUNCTION_23_12();
      v73 = OUTLINED_FUNCTION_290();

      return v74(v73);
    }

    OUTLINED_FUNCTION_106_3(v0[8] + 8 * v13);
    v14 = MEMORY[0x277D84F90];
    if (!v15)
    {
      LODWORD(v4) = 0;
      v18 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }

    v113 = v3 - 3;

    v4 = 0;
    v16 = 0;
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    v19 = 0xE000000000000000;
    v112 = v3;
LABEL_9:
    v0[26] = v17;
    v0[27] = v18;
    v0[24] = v16;
    v0[25] = v19;
    OUTLINED_FUNCTION_15_29();
    if (!v20)
    {
      break;
    }

    __break(1u);
LABEL_63:
    OUTLINED_FUNCTION_4_7();
    sub_267BF4EE8();
    v8 = v110;
  }

  v118 = v18;
  OUTLINED_FUNCTION_105_8();
  v6 = *(v21 + 32);
  v0[28] = v6;
  v22 = *(v21 + 40);
  v0[29] = v22;
  v0[30] = *(v21 + 48);
  v23 = *(v21 + 56);
  v0[31] = v23;
  v24 = *(v21 + 64);
  v0[32] = v24;
  v25 = *(v21 + 72);
  v0[33] = v25;
  switch(*(v21 + 80))
  {
    case 1:
      v116 = v19;
      v117 = v25;
      v115 = v16;
      v123 = v4;
      sub_267EF2D48();

      v29 = sub_267EF8FF8();

      v30 = CEMCreateEmojiLocaleData();

      v31 = sub_267EF8FF8();
      v32 = CEMEmojiTokenCreateWithString();

      v33 = CEMEmojiTokenCopyNameWithCount();
      if (v30)
      {
        swift_unknownObjectRelease();
      }

      if (v32)
      {
        swift_unknownObjectRelease();
      }

      if (!v33)
      {
        goto LABEL_30;
      }

      v34 = objc_opt_self();
      if (!OUTLINED_FUNCTION_92_7(v34))
      {

LABEL_30:

        v45 = sub_267EF89F8();
        v46 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_5_2(v46))
        {
          v47 = OUTLINED_FUNCTION_48();
          v119 = OUTLINED_FUNCTION_52();
          *v47 = 136315138;
          v114 = v23;
          v48 = sub_267BA33E8(v6, v22, &v119);
          v49 = OUTLINED_FUNCTION_30_23();
          sub_267DB37C4(v49, v50, v51, v52, v24, v117, 1u);
          *(v47 + 4) = v48;
          _os_log_impl(&dword_267B93000, v45, v46, "#ContentProcessor.makeTextFromGroupedContentTokens Failed to get description of emoji: %s", v47, 0xCu);
          OUTLINED_FUNCTION_86_8();
          v3 = v112;
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_26();

          v53 = OUTLINED_FUNCTION_30_23();
          v56 = v114;
        }

        else
        {

          v57 = OUTLINED_FUNCTION_30_23();
          sub_267DB37C4(v57, v58, v59, v23, v24, v117, 1u);
          v53 = OUTLINED_FUNCTION_30_23();
          v56 = v23;
        }

        sub_267DB37C4(v53, v54, v55, v56, v24, v117, 1u);
        v4 = v123;
        v16 = v115;
        v19 = v116;
        goto LABEL_34;
      }

      *v113 = 0;
      v113[1] = 0;
      sub_267EF9018();

      v35 = v0[3];
      if (!v35)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_104_6();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_40();
        sub_267BF4EE8();
        v118 = v61;
      }

      v37 = *(v118 + 16);
      v36 = *(v118 + 24);
      if (v37 >= v36 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v36);
        sub_267BF4EE8();
        v118 = v62;
      }

      *(v118 + 16) = v37 + 1;
      v38 = v118 + 16 * v37;
      *(v38 + 32) = v23;
      *(v38 + 40) = v35;
      v39 = OUTLINED_FUNCTION_30_23();
      v40 = v24;
      v18 = v41;
      sub_267DB37C4(v39, v42, v43, v23, v40, v44, 1u);
      v4 = v123;
      v16 = v115;
      v19 = v116;
LABEL_35:
      OUTLINED_FUNCTION_18_26();
      if (!v60)
      {
        goto LABEL_9;
      }

      v14 = MEMORY[0x277D84F90];
      break;
    case 2:

      v95 = swift_task_alloc();
      v96 = OUTLINED_FUNCTION_90_7(v95);
      *v96 = v97;
      OUTLINED_FUNCTION_1_57(v96);
      goto LABEL_58;
    case 3:

      v91 = swift_task_alloc();
      v92 = OUTLINED_FUNCTION_57_1(v91);
      *v92 = v93;
      OUTLINED_FUNCTION_4_47(v92);
      v124 = v23;
      v125 = v94;
      OUTLINED_FUNCTION_8_40();
      OUTLINED_FUNCTION_43_17();
      goto LABEL_59;
    case 4:
      v98 = swift_task_alloc();
      v99 = OUTLINED_FUNCTION_89_9(v98);
      *v99 = v100;
      OUTLINED_FUNCTION_0_46(v99);
      OUTLINED_FUNCTION_43_17();
LABEL_58:
      OUTLINED_FUNCTION_29_20();
LABEL_59:
      OUTLINED_FUNCTION_63_9();

      return sub_267D1374C(v101, v102, v103, v104, v105, v106, v107, v108);
    default:
      v26 = v0[20];

      if (v26)
      {
        OUTLINED_FUNCTION_10_31();
        v18 = v118;
        if (v28)
        {
          v4 = *(v27 + 56 * v28 + 24) != 0;
        }

        else
        {
          v4 = 1;
        }

        v16 = v6;
        v19 = v22;
      }

      else
      {
        v4 = 1;
        v16 = v6;
        v19 = v22;
LABEL_34:
        v18 = v118;
      }

      goto LABEL_35;
  }

LABEL_45:
  v123 = v4;
  v76 = *(v18 + 16);
  if (v76)
  {
    v0[4] = v14;
    sub_267C7220C(0, v76, 0);
    v77 = v0[4];
    v78 = v18 + 40;
    do
    {

      sub_267EF90F8();

      v0[4] = v77;
      v80 = *(v77 + 16);
      v79 = *(v77 + 24);
      if (v80 >= v79 >> 1)
      {
        v84 = OUTLINED_FUNCTION_7_36(v79);
        sub_267C7220C(v84, v85, v86);
        v77 = *(v3 - 1);
      }

      *(v77 + 16) = v80 + 1;
      OUTLINED_FUNCTION_9_4();
      v83(v77 + v81 + *(v82 + 40) * v80);
      v78 += 16;
      --v76;
    }

    while (v76);
  }

  else
  {

    v77 = MEMORY[0x277D84F90];
  }

  v0[45] = v77;
  OUTLINED_FUNCTION_16_27();
  sub_267EF90F8();

  OUTLINED_FUNCTION_45_15();
  v87 = swift_task_alloc();
  v88 = OUTLINED_FUNCTION_32_14(v87);
  *v88 = v89;
  OUTLINED_FUNCTION_3_49(v88);
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_62_7();

  return sub_267CE99E4();
}