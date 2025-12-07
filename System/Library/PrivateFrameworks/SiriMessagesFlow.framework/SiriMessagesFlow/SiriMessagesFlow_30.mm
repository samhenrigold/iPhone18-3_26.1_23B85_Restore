uint64_t sub_267E3EEF8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E3EFF4()
{
  OUTLINED_FUNCTION_56();
  v1 = sub_267E3DFFC();
  *(v0 + 72) = v1;
  v2 = OUTLINED_FUNCTION_28_0();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_267E3F0B8;

  return v4(0xD00000000000001DLL, 0x8000000267F1BB90, v1);
}

uint64_t sub_267E3F0B8(uint64_t a1)
{
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 88) = v1;

  if (!v1)
  {
    *(v5 + 96) = a1;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E3F1F0()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_3_68();
  sub_267E3F590(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E3F270()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_3_68();
  sub_267E3F590(v1, v2);

  OUTLINED_FUNCTION_4_3();
  v4 = *(v0 + 96);

  return v3(v4);
}

uint64_t sub_267E3F2EC()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_3_68();
  sub_267E3F590(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E3F3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_267EF7B88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v10 = OUTLINED_FUNCTION_18(v9);
  MEMORY[0x28223BE20](v10);
  sub_267BC9B04(a1, &v14 - v11, &qword_280229E20, &unk_267EFDCC0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_267EF78B8();
  (*(v6 + 8))(a2, v5);
  sub_267B9FED8(a1, &qword_280229E20, &unk_267EFDCC0);
  return v12;
}

uint64_t sub_267E3F590(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_267E3F634(uint64_t a1)
{
  sub_267E3F740(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_267E3F740(319, &qword_280229808, MEMORY[0x277D55B70], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_267E3F740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_22Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_61_3(*(a3 + 56));
  }

  v8 = v6;
  v9 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void __swift_store_extra_inhabitant_index_23Tm()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1 + *(v2 + 20);

    __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
  }

  else
  {
    *(v1 + *(v2 + 56)) = (v0 - 1);
  }
}

uint64_t sub_267E3F91C(uint64_t a1)
{
  sub_267E3F740(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_267E3F740(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_267E3F740(319, &qword_280229808, MEMORY[0x277D55B70], MEMORY[0x277D83940]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_267E3FA84(void (*a1)(void *, uint64_t, uint64_t), uint64_t a2)
{
  v4 = sub_267EF2E38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedInstance];
  if (v8 && (v9 = v8, type metadata accessor for MessagesFlowPluginBase(), ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), v26[1] = a2, v11 = a1, v12 = [objc_opt_self() bundleForClass_], sub_267EF2DE8(), v13 = sub_267EF2D48(), v15 = v14, (*(v5 + 8))(v7, v4), v27[0] = v13, v27[1] = v15, v26[4] = 45, v26[5] = 0xE100000000000000, v26[2] = 95, v26[3] = 0xE100000000000000, sub_267BB5034(), v16 = sub_267EF9938(), v18 = v17, , v19 = sub_267DFEA38(0xD000000000000011, 0x8000000267F11F50, 0xD000000000000022, 0x8000000267F11F70, v12, v16, v18, v9), v21 = v20, v9, v12, a1 = v11, v21))
  {
    v11(v19, v21, 0);
  }

  else
  {
    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    sub_267EF9B68();

    strcpy(v27, "No value in ");
    BYTE5(v27[1]) = 0;
    HIWORD(v27[1]) = -5120;
    MEMORY[0x26D608E60](0xD000000000000022, 0x8000000267F11F70);
    MEMORY[0x26D608E60](0x20726F6620, 0xE500000000000000);
    MEMORY[0x26D608E60](0xD000000000000011, 0x8000000267F11F50);
    v22 = v27[0];
    v23 = v27[1];
    sub_267C266B0();
    v24 = swift_allocError();
    *v25 = v22;
    v25[1] = v23;
    a1(v24, 0, 1);
  }
}

uint64_t sub_267E3FDC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267E3FE68;

  return MEMORY[0x2821BA1C0](a1, a2);
}

uint64_t sub_267E3FE68(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_267E3FFA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = sub_267EF7068();
  v6(&v8, a2);
  if (v4)
  {
  }

  return v8;
}

uint64_t sub_267E4007C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v66 - v8;
  v10 = sub_267EF3868();
  OUTLINED_FUNCTION_58();
  v71 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v70 = v14 - v13;
  sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v74 = v16;
  v75 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_0();
  v73 = v18 - v17;
  v19 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_0();
  v25 = v24 - v23;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v26 = sub_267EF8A08();
  v27 = __swift_project_value_buffer(v26, qword_280240FB0);
  v28 = *(v21 + 16);
  v76 = a1;
  v28(v25, a1, v19);
  v72 = v27;
  v29 = sub_267EF89F8();
  v30 = sub_267EF95C8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_48();
    v69 = a2;
    v32 = v31;
    v67 = OUTLINED_FUNCTION_52();
    v68 = v3;
    v79[0] = v67;
    *v32 = 136315138;
    sub_267E436CC(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v33 = sub_267EF9E58();
    v34 = v10;
    v35 = v9;
    v37 = v36;
    (*(v21 + 8))(v25, v19);
    v38 = sub_267BA33E8(v33, v37, v79);
    v9 = v35;
    v10 = v34;

    *(v32 + 4) = v38;
    _os_log_impl(&dword_267B93000, v29, v30, "#SearchForMessagesNeedsConfirmationFlowStrategy received input: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    v3 = v68;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v21 + 8))(v25, v19);
  }

  v39 = v73;
  sub_267EF4B88();
  v40 = sub_267E57DFC(v39, &v77);
  (*(v74 + 8))(v39, v75, v40);
  if (v78)
  {
    sub_267BE58F4(&v77, v79);
    v41 = v80;
    v42 = v81;
    __swift_project_boxed_opaque_existential_0(v79, v80);
    v43 = v70;
    (*(v42 + 320))(v41, v42);
    v44 = (*(v71 + 88))(v43, v10);
    if (v44 == *MEMORY[0x277D5B970])
    {
      v45 = sub_267EF89F8();
      v46 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v46))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v47, v48, "#SearchForMessagesNeedsConfirmationFlowStrategy request is cancelled");
        OUTLINED_FUNCTION_32_0();
      }
    }

    else
    {
      if (v44 == *MEMORY[0x277D5B978])
      {
        v54 = *MEMORY[0x277D5BED8];
        v55 = sub_267EF44F8();
        OUTLINED_FUNCTION_22();
        (*(v56 + 104))(v9, v54, v55);
        OUTLINED_FUNCTION_25_33();
        v57 = OBJC_IVAR____TtC16SiriMessagesFlow45SearchForMessageNeedsConfirmationFlowStrategy_confirmationResponse;
        OUTLINED_FUNCTION_24_32();
        sub_267CCED84(v9, v3 + v57);
        swift_endAccess();
        sub_267EF3E58();
        return __swift_destroy_boxed_opaque_existential_0(v79);
      }

      if (v44 != *MEMORY[0x277D5B968])
      {
        v62 = sub_267EF89F8();
        v63 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v63))
        {
          *OUTLINED_FUNCTION_32() = 0;
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v64, v65, "#SearchForMessagesNeedsConfirmationFlowStrategy no valid confirmation in the intent, ignoring");
          OUTLINED_FUNCTION_32_0();
        }

        sub_267EF3E68();
        (*(v71 + 8))(v70, v10);
        return __swift_destroy_boxed_opaque_existential_0(v79);
      }

      v58 = *MEMORY[0x277D5BED0];
      v59 = sub_267EF44F8();
      OUTLINED_FUNCTION_22();
      (*(v60 + 104))(v9, v58, v59);
      OUTLINED_FUNCTION_25_33();
      v61 = OBJC_IVAR____TtC16SiriMessagesFlow45SearchForMessageNeedsConfirmationFlowStrategy_confirmationResponse;
      OUTLINED_FUNCTION_24_32();
      sub_267CCED84(v9, v3 + v61);
      swift_endAccess();
    }

    sub_267EF3E48();
    return __swift_destroy_boxed_opaque_existential_0(v79);
  }

  sub_267B9F98C(&v77, &unk_28022BBF0, &unk_267F01C60);
  v49 = sub_267EF89F8();
  v50 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_36(v50))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v51, v52, "#SearchForMessagesNeedsConfirmationFlowStrategy unsupported input");
    OUTLINED_FUNCTION_32_0();
  }

  return sub_267EF3E68();
}

uint64_t sub_267E406C8()
{
  OUTLINED_FUNCTION_12();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_267EF4C08();
  v1[11] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v1[14] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v8 = sub_267EF44F8();
  v1[17] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[18] = v9;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v10 = sub_267EF44C8();
  v1[21] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[22] = v11;
  v1[23] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E40864()
{
  v75 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
  v4 = sub_267EF4908();
  sub_267EF4938();
  v5 = sub_267EF44B8();
  v7 = v6;
  (*(v1 + 8))(v2, v3);
  v73 = sub_267EF4918();
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
    v11 = v4;
    v12 = swift_slowAlloc();
    v74[0] = swift_slowAlloc();
    *v12 = 136315394;
    v0[6] = v11;
    sub_267EF7C38();
    sub_267E436CC(&qword_28022A060, MEMORY[0x277D55380], MEMORY[0x277D55390]);
    v13 = sub_267EF9E58();
    v15 = sub_267BA33E8(v13, v14, v74);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = sub_267BA33E8(v5, v7, v74);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_267B93000, v9, v10, "#SearchForMessagesNeedsConfirmationFlowStrategy parseConfirmationResponse app: %s parameterName: %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v17 = v0[16];
  v18 = v0[17];
  v19 = v0[10];
  v20 = OBJC_IVAR____TtC16SiriMessagesFlow45SearchForMessageNeedsConfirmationFlowStrategy_confirmationResponse;
  swift_beginAccess();
  sub_267CCED14(v19 + v20, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_267B9F98C(v0[16], &qword_280229310, &unk_267EFCF70);
    v21 = sub_267EF89F8();
    v22 = sub_267EF95E8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_32();
      *v23 = 0;
      _os_log_impl(&dword_267B93000, v21, v22, "#SearchForMessagesNeedsConfirmationFlowStrategy confirmationResponse is nil, this is not expected", v23, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    sub_267C4BE60();
    swift_allocError();
    *v24 = 0;
    v24[1] = 0;
    swift_willThrow();

LABEL_14:

    OUTLINED_FUNCTION_17();
    goto LABEL_23;
  }

  v26 = v0[12];
  v25 = v0[13];
  v28 = v0[10];
  v27 = v0[11];
  (*(v0[18] + 32))(v0[20], v0[16], v0[17]);
  v29 = v28 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer;
  sub_267EF4B88();
  v30 = swift_task_alloc();
  *(v30 + 16) = v29;
  *(v30 + 24) = v25;
  v31 = sub_267E4001C(sub_267D6BCA8);
  v33 = v32;

  (*(v26 + 8))(v25, v27);
  if (v33)
  {
    v34 = v31;
    v35 = sub_267EF89F8();
    v36 = sub_267EF95E8();
    sub_267C095E0(v31);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_48();
      v38 = OUTLINED_FUNCTION_52();
      v74[0] = v38;
      *v37 = 136315138;
      v0[5] = v31;
      v39 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v40 = sub_267EF9098();
      v42 = sub_267BA33E8(v40, v41, v74);

      *(v37 + 4) = v42;
      OUTLINED_FUNCTION_29_2(&dword_267B93000, v43, v44, "#SearchForMessagesNeedsConfirmationFlowStrategy parse conversion failed: %s");
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v45 = v0[20];
    v46 = v0[17];
    v47 = v0[18];
    swift_willThrow();

    (*(v47 + 8))(v45, v46);
    goto LABEL_14;
  }

  v49 = v0[19];
  v50 = v0[17];
  v51 = v0[18];
  (*(v51 + 104))(v49, *MEMORY[0x277D5BED8], v50);
  v52 = sub_267EF44E8();
  v72 = *(v51 + 8);
  v72(v49, v50);
  if (v52)
  {
    sub_267ECE738();
    v53 = v73;
    v54 = sub_267EF89F8();
    v55 = sub_267EF95D8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = OUTLINED_FUNCTION_48();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      *(v56 + 4) = v53;
      *v57 = v53;
      v58 = v53;
      _os_log_impl(&dword_267B93000, v54, v55, "#SearchForMessagesNeedsConfirmationFlowStrategy updated intent: %@", v56, 0xCu);
      sub_267B9F98C(v57, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267C095E0(v31);
  }

  else
  {
    sub_267C095E0(v31);
  }

  v59 = sub_267EF89F8();
  v60 = sub_267EF95D8();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = v0[15];
    v62 = OUTLINED_FUNCTION_48();
    v63 = OUTLINED_FUNCTION_52();
    v74[0] = v63;
    *v62 = 136315138;
    sub_267CCED14(v19 + v20, v61);
    v64 = sub_267EF9098();
    v66 = sub_267BA33E8(v64, v65, v74);

    *(v62 + 4) = v66;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v67, v68, "#SearchForMessagesNeedsConfirmationFlowStrategy confirmation response: %s");
    __swift_destroy_boxed_opaque_existential_0(v63);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v69 = v0[20];
  v70 = v0[17];
  sub_267CCED14(v19 + v20, v0[15]);
  sub_267BC1E68();
  sub_267EF4758();

  v72(v69, v70);

  OUTLINED_FUNCTION_17();
LABEL_23:

  return v48();
}

uint64_t sub_267E41074()
{
  OUTLINED_FUNCTION_12();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v4);
  v1[20] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF4228();
  v1[21] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[22] = v6;
  v1[23] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF44C8();
  v1[24] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[25] = v8;
  v1[26] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E41198()
{
  v25 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
  sub_267EF4938();
  v23 = sub_267EF44B8();
  v5 = v4;
  v6 = *(v1 + 8);
  v6(v2, v3);
  v0[27] = sub_267EF4908();
  v7 = sub_267EF4918();
  v0[28] = v7;
  sub_267EF4938();
  v8 = sub_267EF44B8();
  v10 = v9;
  v6(v2, v3);
  if (sub_267C7C47C(v8, v10) == 9)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v11 = sub_267EF8A08();
    __swift_project_value_buffer(v11, qword_280240FB0);

    v12 = sub_267EF89F8();
    v13 = sub_267EF95E8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_48();
      v15 = OUTLINED_FUNCTION_52();
      v24 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_267BA33E8(v23, v5, &v24);
      _os_log_impl(&dword_267B93000, v12, v13, "#SearchForMessagesNeedsConfirmationFlowStrategy unknown parameter: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267C4BE60();
    swift_allocError();
    *v16 = v23;
    v16[1] = v5;
    swift_willThrow();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_15();

    __asm { BRAA            X1, X16 }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[29] = v19;
  *v19 = v20;
  v19[1] = sub_267E41480;
  OUTLINED_FUNCTION_15();

  return sub_267E4182C();
}

uint64_t sub_267E41480()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 240) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_267E41584()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v16 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  v8 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v8);
  (*(v7 + 8))(v8, v7);
  v9 = v5[5];
  v10 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v9);
  (*(v10 + 8))(v9, v10);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  sub_267EF3BC8();
  sub_267E42638(v4);
  v11 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v11);
  v12 = sub_267EF4CC8();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v13 = MEMORY[0x277D5C1D8];
  v6[3] = v12;
  v6[4] = v13;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_267EF3F38();

  sub_267B9F98C(v0 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v3 + 8))(v2, v16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267E417A0()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E4182C()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 192) = v3;
  *(v1 + 56) = v4;
  v5 = sub_267EF2E38();
  *(v1 + 80) = v5;
  OUTLINED_FUNCTION_30_0(v5);
  *(v1 + 88) = v6;
  *(v1 + 96) = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v7);
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E41928()
{
  v50 = v0;
  switch(*(v0 + 192))
  {
    case 1:
      v1 = sub_267E2D6E4(*(v0 + 64));
      v2 = v1;
      if (v1)
      {
        if (sub_267BAF0DC(v1))
        {
          sub_267BBD0EC(0, (v2 & 0xC000000000000001) == 0, v2);
          if ((v2 & 0xC000000000000001) != 0)
          {
            v3 = MEMORY[0x26D609870](0, v2);
          }

          else
          {
            v3 = *(v2 + 32);
          }

          v4 = v3;
          v6 = *(v0 + 88);
          v5 = *(v0 + 96);
          v8 = *(v0 + 72);
          v7 = *(v0 + 80);

          __swift_project_boxed_opaque_existential_0((v8 + 16), *(v8 + 40));
          v9 = OUTLINED_FUNCTION_4_1();
          v10(v9);
          __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          OUTLINED_FUNCTION_4_1();
          sub_267EF3B68();
          v2 = sub_267BC20F4(v5, 0, 0, 0, v4);

          (*(v6 + 8))(v5, v7);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        }

        else
        {

          v2 = 0;
        }
      }

      *(v0 + 160) = v2;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 168) = v34;
      *v34 = v35;
      v34[1] = sub_267E421D4;
      OUTLINED_FUNCTION_20_28();
      OUTLINED_FUNCTION_64_3();

      return sub_267CE8FCC(v36, v37);
    case 2:
      v15 = sub_267E43628(*(v0 + 64));
      if (!v15)
      {
        goto LABEL_30;
      }

      if (*(v15 + 16))
      {

        sub_267EF90F8();

        v16 = 0;
      }

      else
      {

LABEL_30:
        v16 = 1;
      }

      v39 = *(v0 + 112);
      v40 = sub_267EF79B8();
      __swift_storeEnumTagSinglePayload(v39, v16, 1, v40);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 144) = v41;
      *v41 = v42;
      v41[1] = sub_267E4205C;
      OUTLINED_FUNCTION_20_28();
      OUTLINED_FUNCTION_64_3();

      result = sub_267CE8C84();
      break;
    case 3:
      sub_267D25830([*(v0 + 64) attributes], *(v0 + 120));
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 128) = v11;
      *v11 = v12;
      v11[1] = sub_267E41EE4;
      OUTLINED_FUNCTION_20_28();
      OUTLINED_FUNCTION_64_3();

      return sub_267CE8904();
    case 5:
      v17 = sub_267E2D700(*(v0 + 64));
      if (!v17)
      {
        goto LABEL_35;
      }

      v18 = v17;
      if (sub_267BAF0DC(v17))
      {
        sub_267BBD0EC(0, (v18 & 0xC000000000000001) == 0, v18);
        if ((v18 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x26D609870](0, v18);
        }

        else
        {
          v19 = *(v18 + 32);
        }

        v20 = v19;

        sub_267EF9618();

        v21 = 0;
      }

      else
      {

LABEL_35:
        v21 = 1;
      }

      v44 = *(v0 + 104);
      v45 = sub_267EF79B8();
      __swift_storeEnumTagSinglePayload(v44, v21, 1, v45);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 176) = v46;
      *v46 = v47;
      v46[1] = sub_267E42358;
      OUTLINED_FUNCTION_20_28();
      OUTLINED_FUNCTION_64_3();

      result = sub_267CE8AC4();
      break;
    default:
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
        v25 = *(v0 + 192);
        v26 = OUTLINED_FUNCTION_48();
        v27 = OUTLINED_FUNCTION_52();
        v49 = v27;
        *v26 = 136315138;
        v28 = sub_267C7C4C8(v25);
        v30 = sub_267BA33E8(v28, v29, &v49);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_267B93000, v23, v24, "SearchForMessages.confirmationDialog: resolving unexpected/unhandled parameterName %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      sub_267CCECC0();
      swift_allocError();
      *v31 = 4;
      swift_willThrow();
      OUTLINED_FUNCTION_27_29();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_64_3();

      __asm { BRAA            X1, X16 }

      return result;
  }

  return result;
}

uint64_t sub_267E41EE4()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 136) = v0;

  sub_267B9F98C(*(v2 + 120), &unk_28022AE30, &qword_267EFC0B0);
  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {

    OUTLINED_FUNCTION_5_59();

    return v8();
  }
}

uint64_t sub_267E4205C()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 152) = v0;

  sub_267B9F98C(*(v2 + 112), &unk_28022AE30, &qword_267EFC0B0);
  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {

    OUTLINED_FUNCTION_5_59();

    return v8();
  }
}

uint64_t sub_267E421D4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_267E42358()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 184) = v0;

  sub_267B9F98C(*(v2 + 104), &unk_28022AE30, &qword_267EFC0B0);
  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {

    OUTLINED_FUNCTION_5_59();

    return v8();
  }
}

uint64_t sub_267E424D0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_27_29();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E42548()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_27_29();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E425C0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_27_29();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E42638@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_267EF53D8();
  OUTLINED_FUNCTION_58();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  v14 = OUTLINED_FUNCTION_4_1();
  v15(v14);
  sub_267EF4148();
  __swift_project_boxed_opaque_existential_0(v51, v52);
  OUTLINED_FUNCTION_4_1();
  sub_267EF3B98();
  sub_267EF4128();
  __swift_destroy_boxed_opaque_existential_0(v51);
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v16 = swift_allocObject();
  v49 = xmmword_267EFC020;
  *(v16 + 16) = xmmword_267EFC020;
  if (qword_2802288C8 != -1)
  {
    swift_once();
  }

  *(v16 + 32) = sub_267BC9500();
  *(v16 + 40) = v17;
  sub_267EF4118();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_267F01440;
  *(v18 + 32) = sub_267BB90E4(0);
  *(v18 + 40) = v19;
  *(v18 + 48) = sub_267BB90E4(1);
  *(v18 + 56) = v20;
  *(v18 + 64) = sub_267BB90E4(2);
  *(v18 + 72) = v21;
  *(v18 + 80) = sub_267C8F86C(0);
  *(v18 + 88) = v22;
  sub_267EF4108();
  sub_267EF4098();
  sub_267EF6428();
  swift_allocObject();
  sub_267EF6418();
  sub_267BBB050();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v23 = sub_267EF8A08();
  __swift_project_value_buffer(v23, qword_280240FB0);
  v24 = *(v5 + 16);
  v24(v11, v13, v3);
  v25 = sub_267EF89F8();
  v26 = sub_267EF95D8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_48();
    v44 = v27;
    v45 = OUTLINED_FUNCTION_52();
    v50 = v45;
    *v27 = 136315138;
    v28 = v48;
    v24(v48, v11, v3);
    sub_267EF5458();
    v43 = v26;
    v52 = v3;
    v53 = sub_267E436CC(&qword_28022BAF0, MEMORY[0x277D5DC70], MEMORY[0x277D5DC50]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v51);
    v24(boxed_opaque_existential_0, v28, v3);
    v30 = sub_267EF5448();
    v46 = a1;
    v47 = v13;
    v32 = v31;
    v33 = v28;
    v34 = *(v5 + 8);
    v42 = v24;
    v34(v33, v3);
    v34(v11, v3);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v35 = sub_267BA33E8(v30, v32, &v50);
    v13 = v47;

    v36 = v44;
    *(v44 + 1) = v35;
    _os_log_impl(&dword_267B93000, v25, v43, "#SearchForMessageNeedsConfirmationFlowStrategy submitting NLv4 dialog act: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v37 = v42;
  }

  else
  {

    v34 = *(v5 + 8);
    v37 = v24;
    v34(v11, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v38 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v49;
  v37(v39 + v38, v13, v3);
  sub_267EF4088();
  return (v34)(v13, v3);
}

uint64_t sub_267E42BB0()
{
  v0 = sub_267C4779C();
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SearchForMessageNeedsConfirmationFlowStrategy_confirmationResponse, &qword_280229310, &unk_267EFCF70);

  return swift_deallocClassInstance();
}

void sub_267E42C3C(uint64_t a1)
{
  sub_267C25DD4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267E42CF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CFB43C;

  return sub_267E406C8();
}

uint64_t sub_267E42DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267E42E6C;

  return MEMORY[0x2821B9E10](a1, a2, v9, a4);
}

uint64_t sub_267E42E6C()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_267E42F5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CFB43C;

  return sub_267E41074();
}

uint64_t sub_267E43008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267CFB43C;

  return MEMORY[0x2821B9E28](a1, a2, a3, v11, a5);
}

uint64_t sub_267E430D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267CFB43C;

  return MEMORY[0x2821B9E38](a1, a2, a3, v11, a5);
}

uint64_t sub_267E431A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BF1CB4;

  return MEMORY[0x2821B9E30](a1, a2, v9, a4);
}

uint64_t sub_267E43270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267CFB43C;

  return MEMORY[0x2821B9E40](a1, a2, v9, a4);
}

uint64_t sub_267E43338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_267CFB43C;

  return MEMORY[0x2821B9E18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_267E43418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_267CFB43C;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_267E434F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy(0);
  *v14 = v7;
  v14[1] = sub_267CFB43C;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_267E43628(void *a1)
{
  v1 = [a1 searchTerms];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267E43680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_267E3FFA0(a1, a2, &qword_2802295F0, &unk_267F0B840);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_267E436CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_267E43718(uint64_t a1)
{
  sub_267EF2D78();
  v1 = sub_267BC2B54();

  return !v1;
}

uint64_t sub_267E437A8(uint64_t a1)
{
  v1 = sub_267EF2D78();
  if (!v2)
  {
    return 46;
  }

  v3 = v1;
  v4 = v2;
  v5 = v1 == 24938 && v2 == 0xE200000000000000;
  if (!v5 && (OUTLINED_FUNCTION_0_66(24938) & 1) == 0)
  {
    v6 = v3 == 26746 && v4 == 0xE200000000000000;
    if (!v6 && (OUTLINED_FUNCTION_0_66(26746) & 1) == 0)
    {
      v7 = v3 == 6649209 && v4 == 0xE300000000000000;
      if (!v7 && (sub_267EF9EA8() & 1) == 0)
      {
        if (v3 == 26740 && v4 == 0xE200000000000000)
        {
        }

        else
        {
          v10 = OUTLINED_FUNCTION_0_66(26740);

          if ((v10 & 1) == 0)
          {
            return 46;
          }
        }

        return 0;
      }
    }
  }

  v8 = 8552675;

  return v8;
}

uint64_t sub_267E438B8()
{
  result = [v0 reactionType];
  if (result != 1)
  {
    if (*MEMORY[0x277CD4530] == result)
    {
      return 2;
    }

    else if (*MEMORY[0x277CD4518] == result || *MEMORY[0x277CD4520] == result || *MEMORY[0x277CD44F8] == result || *MEMORY[0x277CD4500] == result || *MEMORY[0x277CD4510] == result || *MEMORY[0x277CD4528] == result)
    {
      return 0;
    }

    else if (*MEMORY[0x277CD4508] == result)
    {
      return 3;
    }

    else if (*MEMORY[0x277CD44F0] == result)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

unint64_t sub_267E439A0(char a1)
{
  result = 0x615479636167656CLL;
  switch(a1)
  {
    case 1:
      result = 0x706154696A6F6D65;
      break;
    case 2:
      result = 0x5472656B63697473;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x53646570706F7264;
      break;
    case 5:
      result = 0x636972656E6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267E43AF8(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x696A6F6D65;
  }

  if (*MEMORY[0x277CD4530] == a1)
  {
    return 0x72656B63697473;
  }

  if (*MEMORY[0x277CD4518] == a1)
  {
    v2 = 1701538156;
    return v2 & 0xFFFF0000FFFFFFFFLL | 0x6400000000;
  }

  if (*MEMORY[0x277CD4520] == a1)
  {
    v2 = 1702260588;
    return v2 & 0xFFFF0000FFFFFFFFLL | 0x6400000000;
  }

  if (*MEMORY[0x277CD44F8] == a1)
  {
    return 0x64656B696C736964;
  }

  if (*MEMORY[0x277CD4500] == a1)
  {
    return 0x7A69736168706D65;
  }

  if (*MEMORY[0x277CD4510] == a1)
  {
    return 0x6465686775616CLL;
  }

  if (*MEMORY[0x277CD4528] == a1)
  {
    return 0x6E6F697473657571;
  }

  if (*MEMORY[0x277CD4508] == a1)
  {
    return 0x65746172656E6567;
  }

  return 0x636972656E6567;
}

uint64_t sub_267E43D18()
{
  OUTLINED_FUNCTION_12();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_267EF3CF8();
  v1[14] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[15] = v4;
  v1[16] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF48A8();
  v1[17] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[18] = v6;
  v1[19] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v7);
  v1[20] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E43E28()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[13];
  type metadata accessor for SendMessageCATsSimple(0);
  sub_267EF7B68();
  v0[21] = sub_267EF79E8();
  v2 = *(*(v1 + 112) + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_isTriggeredByButtonTap);
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_267E43F04;

  return sub_267E9DA50(v2);
}

uint64_t sub_267E43F04()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 184) = v5;
  *(v3 + 192) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E4400C()
{
  OUTLINED_FUNCTION_53();
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = [*(v0 + 184) catId];
  v4 = sub_267EF9028();
  v6 = v5;

  sub_267EF3CA8();
  sub_267E47278(v4, v6, v1);

  v7 = OUTLINED_FUNCTION_26_0();
  v8(v7);
  __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
  v9 = OUTLINED_FUNCTION_38_0();
  v10(v9);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_38_0();
  LOBYTE(v2) = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v2)
  {
    v11 = *(v0 + 104);

    v12 = &unk_267F0C140;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *(v0 + 200) = v12;
  *(v0 + 208) = v11;
  v13 = *(v0 + 184);
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 88) = 0;
  v20 = OUTLINED_FUNCTION_27_30(&dword_267F0EE88);
  v14 = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 216) = v15;
  *v15 = v16;
  v15[1] = sub_267E441EC;
  v17 = *(v0 + 152);
  v18 = *(v0 + 96);

  return v20(v18, v13, v17, v0 + 56, v12, v11);
}

uint64_t sub_267E441EC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 224) = v0;

  sub_267B9FED8(v3 + 56, &qword_280229330, &qword_267F092F0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E4431C()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v1 = v0[23];
  sub_267BA1BFC(v0[25], v0[26]);

  v2 = OUTLINED_FUNCTION_26_0();
  v3(v2);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_125();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_267E443BC()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E4443C()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[23];
  sub_267BA1BFC(v0[25], v0[26]);

  v2 = OUTLINED_FUNCTION_66();
  v3(v2);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E444E0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_267EF8248();
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E445A8, 0, 0);
}

uint64_t sub_267E445A8()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_267EF8178();
  v0[6] = v3;
  v2[3] = v3;
  OUTLINED_FUNCTION_16_36();
  v2[4] = sub_267E48D88(v4, v5, MEMORY[0x277D5D398]);
  v0[7] = __swift_allocate_boxed_opaque_existential_0(v2);
  v6 = sub_267EF8198();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[8] = v7;
  *v7 = v8;
  v7[1] = sub_267E4469C;
  v9 = v0[4];

  return sub_267E469C4(v9);
}

uint64_t sub_267E4469C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E44780()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v1 = [*(*(v0 + 24) + 64) serviceName];
  if (v1)
  {
    v2 = v1;
    sub_267EF9028();
  }

  v3 = *(v0 + 56);
  OUTLINED_FUNCTION_63();
  sub_267EF84D8();
  OUTLINED_FUNCTION_5_0();
  (*(v4 + 104))(v3);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267E4487C()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 360) = v2;
  *(v1 + 112) = v3;
  *(v1 + 120) = v0;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  v6 = sub_267EF8198();
  *(v1 + 128) = v6;
  OUTLINED_FUNCTION_30_0(v6);
  *(v1 + 136) = v7;
  *(v1 + 144) = *(v8 + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_18(v9);
  *(v1 + 160) = OUTLINED_FUNCTION_2();
  v10 = sub_267EF8558();
  *(v1 + 168) = v10;
  OUTLINED_FUNCTION_30_0(v10);
  *(v1 + 176) = v11;
  *(v1 + 184) = OUTLINED_FUNCTION_2();
  v12 = sub_267EF3CF8();
  *(v1 + 192) = v12;
  OUTLINED_FUNCTION_30_0(v12);
  *(v1 + 200) = v13;
  *(v1 + 208) = OUTLINED_FUNCTION_2();
  v14 = sub_267EF48A8();
  *(v1 + 216) = v14;
  OUTLINED_FUNCTION_30_0(v14);
  *(v1 + 224) = v15;
  *(v1 + 232) = OUTLINED_FUNCTION_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v16);
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  v17 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v17);
  *(v1 + 256) = OUTLINED_FUNCTION_2();
  v18 = sub_267EF2E38();
  *(v1 + 264) = v18;
  OUTLINED_FUNCTION_30_0(v18);
  *(v1 + 272) = v19;
  *(v1 + 280) = OUTLINED_FUNCTION_2();
  v20 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_267E44AEC()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  v2 = OUTLINED_FUNCTION_13_8(v1, qword_280240FB0);
  v3 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#SendTapbackResponseProvider making confirmation output");
    OUTLINED_FUNCTION_26();
  }

  v7 = v0[15];

  sub_267EF6FF8();
  sub_267EF6FE8();
  sub_267EF6FB8();

  sub_267EF70E8();

  type metadata accessor for SendMessageCATsSimple(0);
  sub_267EF7B68();
  v0[36] = sub_267EF79E8();
  sub_267EF8188();
  sub_267EF90F8();

  sub_267EF79B8();
  OUTLINED_FUNCTION_19_5();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = [*(v7 + 64) sender];
  if (v12)
  {
    v13 = v12;
    v14 = sub_267BC20F4(v0[35], 0, 0, 0, v12);
  }

  else
  {
    v14 = 0;
  }

  v0[37] = v14;
  v15 = v0[14];
  sub_267BE8214();
  INMessageType.description.getter(v15);
  sub_267EF90F8();

  OUTLINED_FUNCTION_19_5();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = swift_task_alloc();
  v0[38] = v20;
  *v20 = v0;
  v20[1] = sub_267E44D5C;

  return sub_267E9C56C();
}

uint64_t sub_267E44D5C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v7 + 312) = v6;
  *(v7 + 320) = v0;

  OUTLINED_FUNCTION_394();
  sub_267B9FED8(v8, v9, v10);
  OUTLINED_FUNCTION_394();
  sub_267B9FED8(v11, v12, v13);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267E44EF4()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);
  v33 = *(v0 + 136);
  v34 = *(v0 + 192);
  v5 = *(v0 + 120);
  v35 = *(v0 + 104);
  v6 = [*(v0 + 312) catId];
  v7 = sub_267EF9028();
  v9 = v8;

  sub_267EF3C98();
  sub_267E47278(v7, v9, v1);

  (*(v2 + 8))(v1, v34);
  v10 = *(v33 + 16);
  v10(v3, v35, v4);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  sub_267EF8548();
  __swift_project_boxed_opaque_existential_0((v5 + 16), *(v5 + 40));
  v11 = OUTLINED_FUNCTION_38_0();
  v12(v11);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_38_0();
  LOBYTE(v5) = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v5)
  {
    v13 = *(v0 + 144);
    v14 = *(v0 + 136);
    v15 = *(v0 + 120);
    v10(*(v0 + 152), *(v0 + 104), *(v0 + 128));
    v16 = (v13 + ((*(v14 + 80) + 16) & ~*(v14 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_394();
    v18();
    *(v17 + v16) = v15;

    v19 = &unk_267F0C130;
  }

  else
  {
    v19 = 0;
    v17 = 0;
  }

  *(v0 + 328) = v19;
  *(v0 + 336) = v17;
  v20 = *(v0 + 312);
  v21 = *(v0 + 176);
  v22 = *(v0 + 184);
  v23 = *(v0 + 168);
  *(v0 + 80) = v23;
  OUTLINED_FUNCTION_3_69();
  *(v0 + 88) = sub_267E48D88(v24, v25, MEMORY[0x277D5D908]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  (*(v21 + 16))(boxed_opaque_existential_0, v22, v23);
  v36 = OUTLINED_FUNCTION_27_30(&dword_267F0EE88);
  v27 = v20;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 344) = v28;
  *v28 = v29;
  v28[1] = sub_267E451E8;
  v30 = *(v0 + 232);
  v31 = *(v0 + 96);

  return v36(v31, v20, v30, v0 + 56, v19, v17);
}

uint64_t sub_267E451E8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 352) = v0;

  if (!v0)
  {
    sub_267B9FED8(v3 + 56, &qword_280229330, &qword_267F092F0);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E45318()
{
  v1 = v0[39];
  v3 = v0[34];
  v2 = v0[35];
  v12 = v0[33];
  v4 = v0[28];
  v5 = v0[29];
  v6 = v0[27];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];
  sub_267BA1BFC(v0[41], v0[42]);

  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v2, v12);

  OUTLINED_FUNCTION_1();

  return v10();
}

uint64_t sub_267E4545C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  (*(v12[34] + 8))(v12[35], v12[33]);
  OUTLINED_FUNCTION_30_32();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_267E45514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = v12[39];
  v14 = v12[34];
  v29 = v12[35];
  v15 = v12[33];
  sub_267BA1BFC(v12[41], v12[42]);

  v16 = OUTLINED_FUNCTION_63();
  v17(v16);
  v18 = OUTLINED_FUNCTION_37_1();
  v19(v18);
  (*(v14 + 8))(v29, v15);
  sub_267B9FED8((v12 + 7), &qword_280229330, &qword_267F092F0);
  OUTLINED_FUNCTION_30_32();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t sub_267E45638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_267EF8248();
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E45704, 0, 0);
}

uint64_t sub_267E45704()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[2];
  v2 = sub_267EF8178();
  v0[7] = v2;
  v1[3] = v2;
  OUTLINED_FUNCTION_16_36();
  v1[4] = sub_267E48D88(v3, v4, MEMORY[0x277D5D398]);
  v0[8] = __swift_allocate_boxed_opaque_existential_0(v1);
  sub_267EF8198();
  OUTLINED_FUNCTION_5_0();
  v5 = OUTLINED_FUNCTION_66();
  v6(v5);
  OUTLINED_FUNCTION_19_5();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[9] = v11;
  *v11 = v12;
  v11[1] = sub_267E4582C;
  v13 = v0[5];

  return sub_267E469C4(v13);
}

uint64_t sub_267E4582C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E45910()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v1 = [*(*(v0 + 32) + 64) serviceName];
  if (v1)
  {
    v2 = v1;
    sub_267EF9028();
  }

  v3 = *(v0 + 64);
  OUTLINED_FUNCTION_63();
  sub_267EF84D8();
  OUTLINED_FUNCTION_5_0();
  (*(v4 + 104))(v3);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267E45A0C()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_267EF8558();
  v1[10] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF3CF8();
  v1[13] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF48A8();
  v1[16] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[17] = v9;
  v1[18] = OUTLINED_FUNCTION_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_18(v10);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v11);
  v1[21] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v12);
  v1[22] = OUTLINED_FUNCTION_2();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267E45BD8()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  v2 = OUTLINED_FUNCTION_13_8(v1, qword_280240FB0);
  v3 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#SendTapbackResponseProvider making tapback removed");
    OUTLINED_FUNCTION_26();
  }

  v7 = v0[20];

  type metadata accessor for SendMessageCATsSimple(0);
  sub_267EF7B68();
  v0[23] = sub_267EF79E8();
  v8 = OUTLINED_FUNCTION_37_1();
  sub_267E0BBB8(v8, v9);
  v10 = sub_267EF8198();
  v0[24] = v10;
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    sub_267B9FED8(v0[20], &qword_280229920, &unk_267F0ABD0);
    v11 = 1;
  }

  else
  {
    v12 = v0[20];
    sub_267EF8188();
    OUTLINED_FUNCTION_5_0();
    (*(v13 + 8))(v12, v10);
    OUTLINED_FUNCTION_63();
    sub_267EF90F8();

    v11 = 0;
  }

  v14 = v0[21];
  v15 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v14, v11, 1, v15);
  v16 = swift_task_alloc();
  v0[25] = v16;
  *v16 = v0;
  v16[1] = sub_267E45DF0;
  OUTLINED_FUNCTION_125();

  return sub_267E9E880();
}

uint64_t sub_267E45DF0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v9 + 208) = v8;
  *(v9 + 216) = v0;

  sub_267B9FED8(v5, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E45F40()
{
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];
  v17 = v0[13];
  v18 = v0[12];
  v19 = v0[24];
  v4 = v0[11];
  v20 = v0[10];
  v22 = v0[26];
  v5 = [v22 catId];
  sub_267EF9028();

  sub_267EF3C98();
  v6 = OUTLINED_FUNCTION_26_0();
  sub_267E47278(v6, v7, v2);

  (*(v3 + 8))(v2, v17);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v19);
  sub_267EF8548();
  v0[5] = v20;
  OUTLINED_FUNCTION_3_69();
  v0[6] = sub_267E48D88(v8, v9, MEMORY[0x277D5D908]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  (*(v4 + 16))(boxed_opaque_existential_0, v18, v20);
  v21 = OUTLINED_FUNCTION_27_30(&dword_267F0EE88);
  v11 = v22;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[28] = v12;
  *v12 = v13;
  v12[1] = sub_267E46124;
  v14 = v0[18];
  v15 = v0[7];

  return v21(v15, v22, v14, v0 + 2, 0, 0);
}

uint64_t sub_267E46124()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 232) = v0;

  if (!v0)
  {
    sub_267B9FED8(v3 + 16, &qword_280229330, &qword_267F092F0);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E46254()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);

  (*(v1 + 8))(v2, v3);
  v4 = OUTLINED_FUNCTION_63();
  v5(v4);

  OUTLINED_FUNCTION_1();

  return v6();
}

uint64_t sub_267E46350()
{
  OUTLINED_FUNCTION_38_24();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E463F4()
{
  v1 = OUTLINED_FUNCTION_37_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_66();
  v4(v3);
  sub_267B9FED8(v0 + 16, &qword_280229330, &qword_267F092F0);
  OUTLINED_FUNCTION_38_24();

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E464F0()
{
  OUTLINED_FUNCTION_12();
  v0[2] = v1;
  v2 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v2);
  v0[3] = OUTLINED_FUNCTION_2();
  v3 = sub_267EF48A8();
  v0[4] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E465B4()
{
  OUTLINED_FUNCTION_53();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v2 = sub_267EF8A08();
  v3 = OUTLINED_FUNCTION_13_8(v2, qword_280240FB0);
  v4 = sub_267EF95D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v5);
    _os_log_impl(&dword_267B93000, v3, v4, "#SendTapbackResponseProvider making empty output", v0, 2u);
    OUTLINED_FUNCTION_26();
  }

  v6 = [objc_allocWithZone(MEMORY[0x277D052B8]) init];
  v1[7] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_267EFCA40;
  *(v7 + 32) = [objc_allocWithZone(MEMORY[0x277D052B0]) init];
  sub_267BA9F38(0, &unk_28022CF70, 0x277D052B0);
  v8 = sub_267EF92D8();

  [v6 setDialog_];

  sub_267EF3C98();
  OUTLINED_FUNCTION_11_18();
  sub_267EF47A8();
  sub_267EF4198();
  swift_allocObject();
  v1[8] = sub_267EF4188();
  v9 = swift_allocObject();
  v1[9] = v9;
  *(v9 + 16) = xmmword_267EFCA40;
  *(v9 + 32) = v6;
  v16 = OUTLINED_FUNCTION_27_30(MEMORY[0x277D5BD50]);
  v10 = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[10] = v11;
  *v11 = v12;
  v11[1] = sub_267E4681C;
  v13 = v1[6];
  v14 = v1[2];

  return v16(v14, v9, v13);
}

uint64_t sub_267E4681C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E46938()
{
  OUTLINED_FUNCTION_56();

  v1 = OUTLINED_FUNCTION_66();
  v2(v1);

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_267E469C4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E469EC()
{
  OUTLINED_FUNCTION_53();
  v1 = *(*(v0 + 40) + 64);
  v2 = [v1 sender];
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_267EFCA40;
    *(v4 + 32) = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = sub_267BE8214();
  v6 = *(v0 + 40);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_0((v6 + 72), *(v6 + 96));

    sub_267BB4A3C();
    v7 = sub_267DA2578(v4);
    v9 = v8;

    v10 = [v1 groupName];
    v11 = [v1 recipients];
    if (v11)
    {
      v12 = v11;
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v13 = sub_267EF92F8();
    }

    else
    {
      v13 = 0;
    }

    __swift_project_boxed_opaque_existential_0((v6 + 72), *(v6 + 96));
    sub_267BB4A3C();
    if (v10)
    {
      v18 = v10;

      v19 = [v18 spokenPhrase];
      v20 = sub_267EF9028();
      v22 = v21;
    }

    else
    {
      v20 = sub_267DA2578(v13);
      v22 = v24;
    }
  }

  else
  {
    v14 = [v1 groupName];
    __swift_project_boxed_opaque_existential_0((v6 + 72), *(v6 + 96));

    sub_267BB4A3C();
    if (v14)
    {
      v15 = v14;

      v16 = [v15 spokenPhrase];
      v7 = sub_267EF9028();
      v9 = v17;
    }

    else
    {
      v7 = sub_267DA2578(v4);
      v9 = v23;
    }

    v20 = 0;
    v22 = 0;
  }

  *(v0 + 16) = v7;
  *(v0 + 24) = v9;
  *(v0 + 48) = v20;
  *(v0 + 56) = v22;
  if (sub_267BAF0DC(v4))
  {
    sub_267BBD0EC(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x26D609870](0, v4);
    }

    else
    {
      v25 = *(v4 + 32);
    }

    v26 = v25;
  }

  else
  {

    v26 = 0;
  }

  v27 = *(v0 + 40);
  sub_267E46F9C(v26);
  v29 = v28;

  LOBYTE(v27) = sub_267BDAF74(*(v27 + 56));
  *(v0 + 80) = v27 & 1;
  *(v0 + 64) = sub_267DA8838(v29);

  if (v27)
  {
    v30 = swift_task_alloc();
    *(v0 + 72) = v30;
    *v30 = v0;
    v30[1] = sub_267E46E30;

    return sub_267C8F96C(sub_267BDA6DC, 0);
  }

  else
  {
    OUTLINED_FUNCTION_35_24();
    sub_267EF8238();
    OUTLINED_FUNCTION_17();

    return v32();
  }
}

uint64_t sub_267E46E30()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 81) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E46F1C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_35_24();
  sub_267EF8238();
  OUTLINED_FUNCTION_17();

  return v0();
}

void sub_267E46F9C(void *a1)
{
  v3 = [*(v1 + 64) recipients];
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v6 = sub_267EF92F8();

    v26 = v4;
    v7 = sub_267BAF0DC(v6);
    for (i = 0; v7 != i; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26D609870](i, v6);
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if ([v9 isMe])
      {
      }

      else
      {
        sub_267EF9BD8();
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }
    }

    v11 = v26;
    if (a1 && v26)
    {
      sub_267C74A48();
      if (sub_267BAF0DC(v26) < 0)
      {
        goto LABEL_38;
      }

      if (__OFADD__(sub_267BAF0DC(v26), 1))
      {
LABEL_39:
        __break(1u);
        return;
      }

      v12 = a1;
      sub_267CA5F78();
      sub_267C73758(0, 0, 1, v12);
      v11 = v26;
    }

    if (v11)
    {
      v13 = sub_267BAF0DC(v11);
      v14 = 0;
      v15 = MEMORY[0x277D84F90];
      while (v13 != v14)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x26D609870](v14, v11);
        }

        else
        {
          if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v16 = *(v11 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_36;
        }

        v19 = sub_267BBD380(v16);
        v21 = v20;

        ++v14;
        if (v21)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_19_5();
            sub_267BF4EE8();
            v15 = v24;
          }

          v22 = *(v15 + 16);
          if (v22 >= *(v15 + 24) >> 1)
          {
            OUTLINED_FUNCTION_19_5();
            sub_267BF4EE8();
            v15 = v25;
          }

          *(v15 + 16) = v22 + 1;
          v23 = v15 + 16 * v22;
          *(v23 + 32) = v19;
          *(v23 + 40) = v21;
          v14 = v18;
        }
      }
    }
  }
}

uint64_t sub_267E47278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_267EF3CF8();
  MEMORY[0x28223BE20](v8);
  (*(v10 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  OUTLINED_FUNCTION_11_18();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();

  v11 = sub_267EF47D8();
  sub_267E473F0(v11);
  v12 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  return sub_267EF4818();
}

uint64_t sub_267E474B0()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 224) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v0;
  v4 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v4);
  *(v1 + 96) = OUTLINED_FUNCTION_2();
  v5 = sub_267EF48A8();
  *(v1 + 104) = v5;
  OUTLINED_FUNCTION_30_0(v5);
  *(v1 + 112) = v6;
  *(v1 + 120) = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_18(v7);
  *(v1 + 128) = OUTLINED_FUNCTION_2();
  v8 = sub_267EF8558();
  *(v1 + 136) = v8;
  OUTLINED_FUNCTION_30_0(v8);
  *(v1 + 144) = v9;
  *(v1 + 152) = OUTLINED_FUNCTION_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v10);
  *(v1 + 160) = OUTLINED_FUNCTION_2();
  v11 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v11);
  *(v1 + 168) = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E4763C()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  v2 = OUTLINED_FUNCTION_13_8(v1, qword_280240FB0);
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#SendTapbackResponseProvider making category unsupported + offer reply dialog");
    OUTLINED_FUNCTION_26();
  }

  v7 = *(v0 + 224);

  type metadata accessor for SendMessageCATsSimple(0);
  sub_267EF7B68();
  *(v0 + 176) = sub_267EF79E8();
  v8 = 1;
  switch(v7)
  {
    case 4:
      break;
    default:
      sub_267EF90F8();

      v8 = 0;
      break;
  }

  v9 = *(v0 + 160);
  v10 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v9, v8, 1, v10);
  v11 = swift_task_alloc();
  *(v0 + 184) = v11;
  *v11 = v0;
  v11[1] = sub_267E47818;

  return sub_267E9E5F0();
}

uint64_t sub_267E47818()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v9 + 192) = v8;
  *(v9 + 200) = v0;

  sub_267B9FED8(v5, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E47968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = v12[24];
  v15 = v12[16];
  v14 = v12[17];
  v16 = *(v12[11] + 112);
  v17 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback;
  swift_beginAccess();
  sub_267E0BBB8(v16 + v17, v15);
  sub_267EF8548();
  sub_267EF3C98();
  *(swift_task_alloc() + 16) = v13;
  sub_267EF47A8();

  v12[5] = v14;
  OUTLINED_FUNCTION_3_69();
  v12[6] = sub_267E48D88(v18, v19, MEMORY[0x277D5D908]);
  __swift_allocate_boxed_opaque_existential_0(v12 + 2);
  OUTLINED_FUNCTION_394();
  v20();
  v33 = OUTLINED_FUNCTION_27_30(&dword_267F0EE88);
  v21 = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v12[26] = v22;
  *v22 = v23;
  v22[1] = sub_267E47B08;
  OUTLINED_FUNCTION_40();

  return v30(v24, v25, v26, v27, v28, v29, v30, v31, v33, a10, a11, a12);
}

uint64_t sub_267E47B08()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 216) = v0;

  if (!v0)
  {
    sub_267B9FED8(v3 + 16, &qword_280229330, &qword_267F092F0);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E47C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v14 = *(v12 + 112);
  v13 = *(v12 + 120);
  v15 = *(v12 + 104);
  v27 = *(v12 + 96);

  (*(v14 + 8))(v13, v15);
  v16 = OUTLINED_FUNCTION_37_1();
  v17(v16);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, a10, a11, a12);
}

uint64_t sub_267E47D0C()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_40_19();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_267E47D94()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();

  v1 = OUTLINED_FUNCTION_37_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_66();
  v4(v3);
  sub_267B9FED8(v0 + 16, &qword_280229330, &qword_267F092F0);
  OUTLINED_FUNCTION_40_19();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267E47E74()
{
  OUTLINED_FUNCTION_12();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v3);
  v1[9] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF48A8();
  v1[10] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v6);
  v1[13] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E47F58()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  v2 = OUTLINED_FUNCTION_13_8(v1, qword_280240FB0);
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#SendTapbackResponseProvider making generic tapback failed + offer reply dialog");
    OUTLINED_FUNCTION_26();
  }

  type metadata accessor for SendMessageCATsSimple(0);
  sub_267EF7B68();
  *(v0 + 112) = sub_267EF79E8();
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_267E4807C;

  return sub_267E9E7D8();
}

uint64_t sub_267E4807C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E48184()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 128);
  sub_267EF3C98();
  *(swift_task_alloc() + 16) = v1;
  sub_267EF47A8();

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v8 = OUTLINED_FUNCTION_27_30(&dword_267F0EE88);
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 144) = v3;
  *v3 = v4;
  v3[1] = sub_267E482B0;
  v5 = *(v0 + 96);
  v6 = *(v0 + 56);

  return v8(v6, v1, v5, v0 + 16, 0, 0);
}

uint64_t sub_267E482B0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 152) = v0;

  sub_267B9FED8(v3 + 16, &qword_280229330, &qword_267F092F0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E483E0()
{
  OUTLINED_FUNCTION_62();

  v1 = OUTLINED_FUNCTION_26_0();
  v2(v1);

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_267E48480()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E48500()
{
  OUTLINED_FUNCTION_56();

  v1 = OUTLINED_FUNCTION_66();
  v2(v1);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E4859C(int a1, id a2, uint64_t a3)
{
  v3 = [a2 catId];
  sub_267EF9028();

  sub_267EF47D8();
  sub_267EF47F8();
  sub_267EF4858();
  return sub_267EF4888();
}

uint64_t sub_267E48624()
{
  OUTLINED_FUNCTION_12();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v5);
  v1[21] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4228();
  v1[22] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[23] = v7;
  v1[24] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E486F8()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  v2 = OUTLINED_FUNCTION_13_8(v1, qword_280240FB0);
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#SendTapbackResponseProvider: in makeThirdPartyNoTapbackOfferReply");
    OUTLINED_FUNCTION_26();
  }

  type metadata accessor for MessagesApp(0);

  v8 = sub_267EC814C(v7);
  v0[25] = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[26] = v9;
  *v9 = v10;
  v9[1] = sub_267E48820;
  v11 = v0[24];

  return sub_267E4B44C(v11, v8);
}

uint64_t sub_267E48820()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E4891C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v15 = *(v0 + 176);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_0((v4 + 16), *(v4 + 40));
  v6 = OUTLINED_FUNCTION_10_0();
  v7(v6);
  __swift_project_boxed_opaque_existential_0((v4 + 16), *(v4 + 40));
  v8 = OUTLINED_FUNCTION_10_0();
  v9(v8);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v10 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v10);
  v11 = sub_267EF4CC8();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v12 = MEMORY[0x277D5C1D8];
  v5[3] = v11;
  v5[4] = v12;
  __swift_allocate_boxed_opaque_existential_0(v5);
  sub_267EF3F58();

  sub_267B9FED8(v0 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v3, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v2 + 8))(v1, v15);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_1();

  return v13();
}

uint64_t sub_267E48B04()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E48B74()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
}

uint64_t sub_267E48BB4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return v0;
}

uint64_t sub_267E48BF4()
{
  sub_267E48BB4();

  return swift_deallocClassInstance();
}

uint64_t sub_267E48C8C()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  v4 = sub_267EF8198();
  OUTLINED_FUNCTION_30_0(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = *(v0 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_267BBD07C;

  return sub_267E45638(v3, v0 + v6, v8);
}

uint64_t sub_267E48D88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267E48DD0()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_267BAEBEC;

  return sub_267E444E0(v3, v0);
}

uint64_t sub_267E48E64()
{
  OUTLINED_FUNCTION_12();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v1[8] = sub_267EF7D48();
  OUTLINED_FUNCTION_34_2();
  v1[9] = v6;
  v1[10] = swift_task_alloc();
  v1[11] = sub_267EF7D38();
  OUTLINED_FUNCTION_34_2();
  v1[12] = v7;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_267E48F90()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_267EF4428();
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D55410])
  {
    v4 = v0[14];
    v5 = v0[15];
    v6 = v0[11];
    v7 = v0[12];
    v8 = v0[10];
    (*(v0[9] + 96))(v8, v0[8]);
    (*(v7 + 32))(v5, v8, v6);
    v9 = (v7 + 16);
    v10 = *(v7 + 16);
    v10(v4, v5, v6);
    v11 = (*(v7 + 88))(v4, v6);
    if (v11 == *MEMORY[0x277D553F0])
    {
      v12 = v0[14];
      v13 = v0[6];
      v14 = v0[5];
      (*(v0[12] + 96))(v12, v0[11]);
      v0[23] = *v12;
      (*(v13 + 16))(v14, v13);
      OUTLINED_FUNCTION_2_17();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[24] = v15;
      *v15 = v16;
      OUTLINED_FUNCTION_8_50(v15);
      OUTLINED_FUNCTION_15();

      __asm { BRAA            X4, X16 }
    }

    if (v11 == *MEMORY[0x277D553F8])
    {
      v31 = v0[14];
      v32 = v0[11];
      v33 = v0[12];
      v34 = *(v33 + 8);
      v0[16] = v34;
      v0[17] = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v34(v31, v32);
      v35 = OUTLINED_FUNCTION_13_39();
      v36(v35);
      OUTLINED_FUNCTION_2_17();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[18] = v37;
      *v37 = v38;
      OUTLINED_FUNCTION_8_50(v37);
      OUTLINED_FUNCTION_15();

      __asm { BRAA            X3, X16 }
    }

    if (v11 == *MEMORY[0x277D553E8])
    {
      v41 = v0[6];
      v42 = v0[5];
      v43 = OUTLINED_FUNCTION_13_39();
      v44(v43);
      (*(v41 + 24))(v42, v41);
      v0[20] = v45;
      OUTLINED_FUNCTION_2_17();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[21] = v46;
      *v46 = v47;
      OUTLINED_FUNCTION_8_50(v46);
      OUTLINED_FUNCTION_15();

      __asm { BRAA            X5, X16 }
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v50 = v0[15];
    v51 = v0[13];
    v52 = v0[11];
    v53 = sub_267EF8A08();
    __swift_project_value_buffer(v53, qword_280240FB0);
    v10(v51, v50, v52);
    v54 = sub_267EF89F8();
    v55 = sub_267EF95E8();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v0[13];
    v58 = v0[11];
    if (v56)
    {
      v59 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v59 = 138412290;
      sub_267E4A038(&qword_28022C970, MEMORY[0x277D55400], MEMORY[0x277D55408]);
      swift_allocError();
      v10(v60, v57, v58);
      v61 = _swift_stdlib_bridgeErrorToNSError();
      v62 = OUTLINED_FUNCTION_10_42();
      v9(v62);
      *(v59 + 4) = v61;
      *v68 = v61;
      _os_log_impl(&dword_267B93000, v54, v55, "#SendMessageAppResolutionOnDeviceFlowStrategy unknown error: %@", v59, 0xCu);
      sub_267C142D4(v68);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      v63 = OUTLINED_FUNCTION_10_42();
      v9(v63);
    }

    v65 = v0[14];
    v64 = v0[15];
    v66 = v0[11];
    sub_267C4BE60();
    swift_allocError();
    *v67 = 0;
    v67[1] = 0;
    swift_willThrow();
    (v9)(v64, v66);
    (v9)(v65, v66);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);

    v20 = sub_267EF89F8();
    v21 = sub_267EF95E8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v0[4];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v69 = v24;
      *v23 = 136315138;
      v0[2] = v22;
      sub_267EF4458();
      sub_267E4A038(&qword_28022C968, MEMORY[0x277D5BEB0], MEMORY[0x277D5BEB8]);
      v25 = sub_267EF9E58();
      v27 = sub_267BA33E8(v25, v26, &v69);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_267B93000, v20, v21, "#SendMessageAppResolutionOnDeviceFlowStrategy unexpected reason: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267C4BE60();
    swift_allocError();
    *v28 = 0;
    v28[1] = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_5_60();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267E497FC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 152) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E498FC()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_11_43();
  v1(v0);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E49988()
{
  OUTLINED_FUNCTION_56();
  *(*v1 + 176) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267E49AB4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 200) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E49BB4()
{
  OUTLINED_FUNCTION_56();

  v0 = OUTLINED_FUNCTION_11_43();
  v1(v0);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E49C48()
{
  OUTLINED_FUNCTION_56();
  (*(v0 + 128))(*(v0 + 120), *(v0 + 88));
  OUTLINED_FUNCTION_5_60();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E49CD0()
{
  OUTLINED_FUNCTION_56();
  (*(v0[12] + 8))(v0[15], v0[11]);
  OUTLINED_FUNCTION_5_60();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E49D60()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_5_60();

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E49E00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return MEMORY[0x2821BB9F8](a1);
}

uint64_t sub_267E49EB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return MEMORY[0x2821BBA08](a1);
}

uint64_t sub_267E49F50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BBD07C;

  return MEMORY[0x2821BBA00](a1, a2);
}

uint64_t sub_267E4A038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267E4A0C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4A0DC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v4 = OUTLINED_FUNCTION_43_1(v3);
  v5 = OUTLINED_FUNCTION_38_25(v4);
  OUTLINED_FUNCTION_16(v5, xmmword_267EFC020);
  v6 = 0;
  if (v2)
  {
    v6 = sub_267EF7958();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_40_20(v6);
  OUTLINED_FUNCTION_9_48();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_40(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2_62(v8);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_267E4A1EC()
{
  OUTLINED_FUNCTION_26_32();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1(v1);
  OUTLINED_FUNCTION_3_70(v2, xmmword_267EFC020);
  if (v0)
  {
    v3 = sub_267EF7AE8();
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_38();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_62_12(v3, v4);
  OUTLINED_FUNCTION_57_17();
  OUTLINED_FUNCTION_31_24(37);
}

uint64_t sub_267E4A290()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v5);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E4A32C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_52_5(v2);
  v0[8] = v3;
  v4 = OUTLINED_FUNCTION_4_8(v3, xmmword_267EFCC90);
  OUTLINED_FUNCTION_56_18(v4, v5, &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v6) == 1)
  {
    sub_267B9FED8(v0[7], &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v7();
  }

  v8 = v0[6];
  OUTLINED_FUNCTION_12_1();
  *(v3 + 80) = 0xD000000000000013;
  *(v3 + 88) = v9;
  sub_267BC9B04(v10, v8, &unk_28022AE30, &qword_267EFC0B0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v1) == 1)
  {
    sub_267B9FED8(v0[6], &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v1;
    __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v11();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[9] = v12;
  *v12 = v13;
  OUTLINED_FUNCTION_27_2(v12);
  OUTLINED_FUNCTION_34_26();
  OUTLINED_FUNCTION_30_2();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_267E4A524()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

uint64_t sub_267E4A654()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E4A6C4()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v4);
  v1[5] = OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E4A74C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1(v1);
  *(OUTLINED_FUNCTION_37_7(v2) + 16) = xmmword_267EFC020;
  OUTLINED_FUNCTION_12_1();
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = v4;
  OUTLINED_FUNCTION_56_18(v3, v5, &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v6) == 1)
  {
    sub_267B9FED8(*(v0 + 40), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v7();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_14_19(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_34_26();
  OUTLINED_FUNCTION_30_2();

  return v15(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_267E4A8AC()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v4);
  v1[5] = OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E4A934()
{
  OUTLINED_FUNCTION_62();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1(v1);
  v3 = OUTLINED_FUNCTION_37_7(v2);
  *(v3 + 16) = xmmword_267EFC020;
  strcpy((v3 + 32), "replyPayload");
  *(v3 + 45) = 0;
  *(v3 + 46) = -5120;
  OUTLINED_FUNCTION_56_18(v3, v4, &unk_28022AE30, &qword_267EFC0B0);
  v5 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v5) == 1)
  {
    sub_267B9FED8(*(v0 + 40), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v6();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v12 = v7;
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_14_19(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_41_17();

  return v12();
}

uint64_t sub_267E4AAAC()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v4);
  v1[5] = OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E4AB34()
{
  OUTLINED_FUNCTION_62();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1(v1);
  v3 = OUTLINED_FUNCTION_37_7(v2);
  v4 = OUTLINED_FUNCTION_4_8(v3, xmmword_267EFC020);
  OUTLINED_FUNCTION_56_18(v4, v5, &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v6) == 1)
  {
    sub_267B9FED8(*(v0 + 40), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v7();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v13 = v8;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_14_19(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_41_17();

  return v13();
}

uint64_t sub_267E4AC8C()
{
  OUTLINED_FUNCTION_26_32();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1(v1);
  OUTLINED_FUNCTION_3_70(v2, xmmword_267EFC020);
  if (v0)
  {
    v3 = sub_267EF7AE8();
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_38();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_62_12(v3, v4);
  OUTLINED_FUNCTION_57_17();
  OUTLINED_FUNCTION_31_24(36);
}

uint64_t sub_267E4AD30()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267E4ADE8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267E4AEA0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4AEB8()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v4 = OUTLINED_FUNCTION_43_1(v3);
  v5 = OUTLINED_FUNCTION_38_25(v4);
  OUTLINED_FUNCTION_3_70(v5, xmmword_267EFC020);
  v6 = 0;
  if (v2)
  {
    v6 = sub_267EF7AE8();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_40_20(v6);
  OUTLINED_FUNCTION_9_48();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_40(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2_62(v8);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_267E4AFA0()
{
  OUTLINED_FUNCTION_26_32();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1(v1);
  OUTLINED_FUNCTION_3_70(v2, xmmword_267EFC020);
  if (v0)
  {
    v3 = sub_267EF7AE8();
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_38();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_62_12(v3, v4);
  OUTLINED_FUNCTION_57_17();
  OUTLINED_FUNCTION_31_24(41);
}

uint64_t sub_267E4B044()
{
  OUTLINED_FUNCTION_26_32();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1(v1);
  OUTLINED_FUNCTION_3_70(v2, xmmword_267EFC020);
  if (v0)
  {
    v3 = sub_267EF7AE8();
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_38();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_62_12(v3, v4);
  OUTLINED_FUNCTION_57_17();
  OUTLINED_FUNCTION_31_24(35);
}

uint64_t sub_267E4B0E8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267E4B1A0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

void sub_267E4B2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v24);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v25);
  v27 = &a9 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v29 = OUTLINED_FUNCTION_52_5(v28);
  *(v29 + 16) = xmmword_267EFCC90;
  OUTLINED_FUNCTION_12_1();
  *(v30 + 32) = 0xD000000000000015;
  *(v30 + 40) = v31;
  OUTLINED_FUNCTION_65_13();
  v32 = sub_267EF79B8();
  if (__swift_getEnumTagSinglePayload(v27, 1, v32) == 1)
  {
    sub_267B9FED8(v27, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    *(v29 + 72) = v32;
    __swift_allocate_boxed_opaque_existential_0((v29 + 48));
    OUTLINED_FUNCTION_5_0();
    (*(v33 + 32))();
  }

  *(v29 + 80) = 0xD000000000000013;
  *(v29 + 88) = 0x8000000267F1BD50;
  *(v29 + 120) = MEMORY[0x277D839B0];
  *(v29 + 96) = v23 & 1;
  sub_267EF78C8();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267E4B44C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4B464()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v4 = OUTLINED_FUNCTION_43_1(v3);
  v5 = OUTLINED_FUNCTION_38_25(v4);
  OUTLINED_FUNCTION_16(v5, xmmword_267EFC020);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_40_20(v6);
  OUTLINED_FUNCTION_9_48();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_40(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2_62(v8);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_267E4B574(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4B58C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v4 = OUTLINED_FUNCTION_43_1(v3);
  v5 = OUTLINED_FUNCTION_38_25(v4);
  OUTLINED_FUNCTION_16(v5, xmmword_267EFC020);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_40_20(v6);
  OUTLINED_FUNCTION_9_48();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_40(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2_62(v8);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_267E4B674()
{
  OUTLINED_FUNCTION_12();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v6);
  v1[7] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E4B700()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  v0[8] = v2;
  *(v2 + 16) = xmmword_267EFCE30;
  OUTLINED_FUNCTION_12_1();
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = v4;
  OUTLINED_FUNCTION_56_18(v3, v5, &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v6) == 1)
  {
    sub_267B9FED8(v0[7], &unk_28022AE30, &qword_267EFC0B0);
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
  }

  else
  {
    *(v2 + 72) = v1;
    __swift_allocate_boxed_opaque_existential_0((v2 + 48));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v7();
  }

  v8 = v0[4];
  *(v2 + 80) = 7368801;
  *(v2 + 88) = 0xE300000000000000;
  if (v8)
  {
    v9 = type metadata accessor for MessagesApp(0);
    v10 = v8;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_38();
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  v11 = v0[5];
  *(v2 + 96) = v10;
  *(v2 + 120) = v9;
  *(v2 + 128) = 0x7453656369766564;
  *(v2 + 136) = 0xEB00000000657461;
  v12 = 0;
  if (v11)
  {
    v12 = sub_267EF7AE8();
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v11;
  *(v2 + 168) = v12;
  v17 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[9] = v13;
  *v13 = v14;
  v13[1] = sub_267E4B934;
  v15 = v0[2];

  return v17(v15, 0xD00000000000001DLL, 0x8000000267F11620, v2);
}

uint64_t sub_267E4B934()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

uint64_t sub_267E4BA58()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

void sub_267E4BABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v24);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v25);
  v27 = &a9 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v29 = OUTLINED_FUNCTION_52_5(v28);
  *(v29 + 16) = xmmword_267EFCC90;
  OUTLINED_FUNCTION_12_1();
  *(v30 + 32) = 0xD000000000000016;
  *(v30 + 40) = v31;
  OUTLINED_FUNCTION_65_13();
  v32 = sub_267EF79B8();
  if (__swift_getEnumTagSinglePayload(v27, 1, v32) == 1)
  {
    sub_267B9FED8(v27, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    *(v29 + 72) = v32;
    __swift_allocate_boxed_opaque_existential_0((v29 + 48));
    OUTLINED_FUNCTION_5_0();
    (*(v33 + 32))();
  }

  *(v29 + 80) = 7368801;
  *(v29 + 88) = 0xE300000000000000;
  if (v23)
  {
    v34 = type metadata accessor for MessagesApp(0);
    v35 = v23;
  }

  else
  {
    v34 = OUTLINED_FUNCTION_38();
    *(v29 + 104) = 0;
    *(v29 + 112) = 0;
  }

  *(v29 + 96) = v35;
  *(v29 + 120) = v34;
  OUTLINED_FUNCTION_57_17();
  sub_267EF78C8();

  OUTLINED_FUNCTION_47();
}

void sub_267E4BC68()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v12 = swift_allocObject();
  v13 = OUTLINED_FUNCTION_42_21(v12, xmmword_267F01440);
  v14 = MEMORY[0x277D839B0];
  v13[3].n128_u8[0] = v7;
  v15 = OUTLINED_FUNCTION_33_19(v13, v14);
  *(v15 + 96) = v5;
  v17 = OUTLINED_FUNCTION_36_23(v15, v16);
  *(v17 + 144) = v3;
  *(v17 + 168) = v18;
  *(v17 + 176) = 0xD000000000000011;
  *(v17 + 184) = 0x8000000267F150A0;
  sub_267BC9B04(v1, v11, &unk_28022AE30, &qword_267EFC0B0);
  v19 = sub_267EF79B8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v19) == 1)
  {
    sub_267B9FED8(v11, &unk_28022AE30, &qword_267EFC0B0);
    *(v12 + 192) = 0u;
    *(v12 + 208) = 0u;
  }

  else
  {
    *(v12 + 216) = v19;
    __swift_allocate_boxed_opaque_existential_0((v12 + 192));
    OUTLINED_FUNCTION_5_0();
    (*(v20 + 32))();
  }

  sub_267EF78C8();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267E4BE34()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 74) = v3;
  *(v1 + 73) = v4;
  *(v1 + 72) = v5;
  *(v1 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v7);
  *(v1 + 40) = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E4BEC8()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 74);
  v5 = *(v0 + 73);
  v6 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_37_7(v7);
  v9 = OUTLINED_FUNCTION_42_21(v8, xmmword_267F01440);
  v10 = MEMORY[0x277D839B0];
  v9[3].n128_u8[0] = v6;
  v11 = OUTLINED_FUNCTION_33_19(v9, v10);
  *(v11 + 96) = v5;
  v13 = OUTLINED_FUNCTION_36_23(v11, v12);
  *(v13 + 144) = v4;
  *(v13 + 168) = v14;
  *(v13 + 176) = 0xD000000000000011;
  *(v13 + 184) = 0x8000000267F150A0;
  sub_267BC9B04(v3, v2, &unk_28022AE30, &qword_267EFC0B0);
  v15 = sub_267EF79B8();
  if (__swift_getEnumTagSinglePayload(v2, 1, v15) == 1)
  {
    sub_267B9FED8(*(v0 + 40), &unk_28022AE30, &qword_267EFC0B0);
    *(v1 + 192) = 0u;
    *(v1 + 208) = 0u;
  }

  else
  {
    *(v1 + 216) = v15;
    __swift_allocate_boxed_opaque_existential_0((v1 + 192));
    OUTLINED_FUNCTION_5_0();
    (*(v16 + 32))();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_14_19(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_13(v18);
  OUTLINED_FUNCTION_34_26();

  return v20();
}

uint64_t sub_267E4C09C()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v5);
  v1[6] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E4C124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v11 = v10[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v13 = OUTLINED_FUNCTION_52_5(v12);
  v10[7] = v13;
  OUTLINED_FUNCTION_16(v13, xmmword_267EFCC90);
  v14 = 0;
  if (v11)
  {
    v14 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  v15 = v10[6];
  OUTLINED_FUNCTION_50_10(v14);
  sub_267BC9B04(v16, v15, &unk_28022AE30, &qword_267EFC0B0);
  v17 = sub_267EF79B8();
  v18 = OUTLINED_FUNCTION_15_1(v17);
  v19 = v10[6];
  if (v18 == 1)
  {

    sub_267B9FED8(v19, &unk_28022AE30, &qword_267EFC0B0);
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
  }

  else
  {
    *(v13 + 120) = v9;
    __swift_allocate_boxed_opaque_existential_0((v13 + 96));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v20();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v33 = v21;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v10[8] = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_27_2(v22);
  OUTLINED_FUNCTION_41_17();
  OUTLINED_FUNCTION_68();

  return v28(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33);
}

uint64_t sub_267E4C2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4C2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v13 = *(v11 + 24);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v15 = OUTLINED_FUNCTION_52_5(v14);
  v16 = OUTLINED_FUNCTION_58_15(v15);
  OUTLINED_FUNCTION_16(v16, xmmword_267EFCC90);
  if (v13)
  {
    v17 = type metadata accessor for MessagesApp(0);
    v18 = v13;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_38();
    v12[7] = 0;
    v12[8] = 0;
  }

  v19 = OUTLINED_FUNCTION_4_59(v17, v18);
  if (v10)
  {
    v19 = sub_267EF77C8();
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_63_12(v19);
  OUTLINED_FUNCTION_25_34();

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_14_19(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_15_39(v21);
  OUTLINED_FUNCTION_35_25();
  OUTLINED_FUNCTION_68();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_267E4C3F4(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4C410()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  v3 = *(v0 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v5 = OUTLINED_FUNCTION_52_5(v4);
  v6 = OUTLINED_FUNCTION_38_25(v5);
  *(v6 + 16) = xmmword_267EFCC90;
  *(v6 + 32) = 0x6552656E4F736168;
  *(v6 + 40) = 0xEF746E6569706963;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v3;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0x6E65697069636572;
  *(v6 + 88) = 0xE900000000000074;
  v8 = 0;
  if (v2)
  {
    v8 = sub_267EF77C8();
  }

  else
  {
    v1[13] = 0;
    v1[14] = 0;
  }

  v1[12] = v2;
  v1[15] = v8;
  OUTLINED_FUNCTION_9_48();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_13_40(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_2_62(v10);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v16(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_267E4C550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4C568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v13 = *(v11 + 24);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v15 = OUTLINED_FUNCTION_52_5(v14);
  v16 = OUTLINED_FUNCTION_58_15(v15);
  OUTLINED_FUNCTION_16(v16, xmmword_267EFCC90);
  if (v13)
  {
    v17 = sub_267EF7958();
    v18 = v13;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_38();
    v12[7] = 0;
    v12[8] = 0;
  }

  v19 = OUTLINED_FUNCTION_4_59(v17, v18);
  if (v10)
  {
    v19 = sub_267EF77C8();
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_63_12(v19);
  OUTLINED_FUNCTION_25_34();

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_14_19(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_15_39(v21);
  OUTLINED_FUNCTION_35_25();
  OUTLINED_FUNCTION_68();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_267E4C674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4C68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v13 = *(v11 + 24);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v15 = OUTLINED_FUNCTION_52_5(v14);
  v16 = OUTLINED_FUNCTION_58_15(v15);
  OUTLINED_FUNCTION_16(v16, xmmword_267EFCC90);
  if (v13)
  {
    v17 = type metadata accessor for MessagesApp(0);
    v18 = v13;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_38();
    v12[7] = 0;
    v12[8] = 0;
  }

  v19 = OUTLINED_FUNCTION_4_59(v17, v18);
  if (v10)
  {
    v19 = sub_267EF77C8();
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_63_12(v19);
  OUTLINED_FUNCTION_25_34();

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_14_19(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_15_39(v21);
  OUTLINED_FUNCTION_35_25();
  OUTLINED_FUNCTION_68();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_267E4C798(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4C7B0()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v4 = OUTLINED_FUNCTION_43_1(v3);
  v5 = OUTLINED_FUNCTION_38_25(v4);
  OUTLINED_FUNCTION_16(v5, xmmword_267EFC020);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_40_20(v6);
  OUTLINED_FUNCTION_9_48();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_40(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2_62(v8);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_267E4C898(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4C8B0()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v4 = OUTLINED_FUNCTION_43_1(v3);
  *(OUTLINED_FUNCTION_38_25(v4) + 16) = xmmword_267EFC020;
  OUTLINED_FUNCTION_22_3();
  v7 = OUTLINED_FUNCTION_59_17(v5, v6);
  if (v2)
  {
    v7 = sub_267EF77C8();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_40_20(v7);
  OUTLINED_FUNCTION_9_48();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_13_40(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_2_62(v9);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v15(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_267E4C99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4C9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v13 = *(v11 + 24);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v15 = OUTLINED_FUNCTION_52_5(v14);
  v16 = OUTLINED_FUNCTION_58_15(v15);
  OUTLINED_FUNCTION_16(v16, xmmword_267EFCC90);
  if (v13)
  {
    v17 = type metadata accessor for MessagesApp(0);
    v18 = v13;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_38();
    v12[7] = 0;
    v12[8] = 0;
  }

  v19 = OUTLINED_FUNCTION_4_59(v17, v18);
  if (v10)
  {
    v19 = sub_267EF77C8();
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_63_12(v19);
  OUTLINED_FUNCTION_25_34();

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_14_19(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_15_39(v21);
  OUTLINED_FUNCTION_35_25();
  OUTLINED_FUNCTION_68();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_267E4CAC0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267E4CB78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4CB90()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v4 = OUTLINED_FUNCTION_43_1(v3);
  *(OUTLINED_FUNCTION_38_25(v4) + 16) = xmmword_267EFC020;
  OUTLINED_FUNCTION_22_3();
  v7 = OUTLINED_FUNCTION_59_17(v5, v6);
  if (v2)
  {
    v7 = sub_267EF77C8();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_40_20(v7);
  OUTLINED_FUNCTION_9_48();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_13_40(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_2_62(v9);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v15(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_267E4CC7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4CC94()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v4 = OUTLINED_FUNCTION_43_1(v3);
  v5 = OUTLINED_FUNCTION_38_25(v4);
  *(v5 + 16) = xmmword_267EFC020;
  strcpy((v5 + 32), "personHandle");
  *(v5 + 45) = 0;
  *(v5 + 46) = -5120;
  v6 = 0;
  if (v2)
  {
    v6 = sub_267EF7578();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_40_20(v6);
  OUTLINED_FUNCTION_9_48();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_40(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2_62(v8);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_267E4CD9C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267E4CE54()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v5);
  v1[6] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E4CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v11 = v10[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v13 = OUTLINED_FUNCTION_52_5(v12);
  v10[7] = v13;
  OUTLINED_FUNCTION_16(v13, xmmword_267EFCC90);
  v14 = 0;
  if (v11)
  {
    v14 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  v15 = v10[6];
  OUTLINED_FUNCTION_50_10(v14);
  sub_267BC9B04(v16, v15, &unk_28022AE30, &qword_267EFC0B0);
  v17 = sub_267EF79B8();
  v18 = OUTLINED_FUNCTION_15_1(v17);
  v19 = v10[6];
  if (v18 == 1)
  {

    sub_267B9FED8(v19, &unk_28022AE30, &qword_267EFC0B0);
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
  }

  else
  {
    *(v13 + 120) = v9;
    __swift_allocate_boxed_opaque_existential_0((v13 + 96));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v20();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v33 = v21;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v10[8] = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_27_2(v22);
  OUTLINED_FUNCTION_41_17();
  OUTLINED_FUNCTION_68();

  return v28(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33);
}

uint64_t sub_267E4D090()
{
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow11MessagesApp7Builder_name);

  return swift_deallocClassInstance();
}

uint64_t sub_267E4D114(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCC16SiriMessagesFlow11MessagesApp7Builder_name;
  swift_beginAccess();
  sub_267C12290(a1 + v3, v1 + OBJC_IVAR____TtC16SiriMessagesFlow11MessagesApp_name);
  LOBYTE(v3) = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow11MessagesApp7Builder_isDesignedByApple);

  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow11MessagesApp_isDesignedByApple) = v3;
  return v1;
}

uint64_t sub_267E4D19C(uint64_t a1, char a2)
{
  type metadata accessor for MessagesApp.Builder(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtCC16SiriMessagesFlow11MessagesApp7Builder_name;
  v6 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v4 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCC16SiriMessagesFlow11MessagesApp7Builder_isDesignedByApple;
  *(v4 + OBJC_IVAR____TtCC16SiriMessagesFlow11MessagesApp7Builder_isDesignedByApple) = 0;
  swift_beginAccess();
  sub_267BE855C(a1, v4 + v5);
  swift_endAccess();
  *(v4 + v7) = a2;
  type metadata accessor for MessagesApp(0);
  v8 = swift_allocObject();
  sub_267E4D114(v4);
  sub_267BBD6F0(a1);
  return v8;
}

uint64_t sub_267E4D278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v10 || (result = sub_267EF9EA8(), (result & 1) != 0))
  {
    sub_267C12290(v3 + OBJC_IVAR____TtC16SiriMessagesFlow11MessagesApp_name, v9);
    v12 = sub_267EF79B8();
    if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
    {
      result = sub_267BBD6F0(v9);
LABEL_8:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(*(v12 - 8) + 32))(boxed_opaque_existential_0, v9, v12);
  }

  else
  {
    if (a1 != 0xD000000000000011 || 0x8000000267F11A00 != a2)
    {
      result = sub_267EF9EA8();
      if ((result & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v15 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow11MessagesApp_isDesignedByApple);
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v15;
  }

  return result;
}

uint64_t sub_267E4D41C(uint64_t a1, uint64_t a2)
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

uint64_t sub_267E4D470(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_267E4D4C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267E4D41C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_267E4D4F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267E4D470(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267E4D52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267E4D41C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267E4D560(uint64_t a1)
{
  v2 = sub_267E4DDB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267E4D59C(uint64_t a1)
{
  v2 = sub_267E4DDB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267E4D5D8()
{
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow11MessagesApp_name);

  return swift_deallocClassInstance();
}

void sub_267E4D66C(uint64_t a1)
{
  sub_267C11A54(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267E4D710(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C9C8, &qword_267F0C420);
  OUTLINED_FUNCTION_58();
  v5 = v4;
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267E4DDB0();
  sub_267EFA088();
  v12[15] = 0;
  sub_267EF79B8();
  OUTLINED_FUNCTION_0_67();
  sub_267E4DD68(v9, v10, MEMORY[0x277D55C50]);
  sub_267EF9DF8();
  if (!v1)
  {
    v12[14] = 1;
    sub_267EF9E18();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_267E4D8AC(void *a1)
{
  v2 = swift_allocObject();
  sub_267E4D9BC(a1);
  return v2;
}

void sub_267E4D924(uint64_t a1)
{
  sub_267C11A54(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id *sub_267E4D9BC(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  v7 = v15 - v6;
  v15[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C9B8, &qword_267F0C418);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v8);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267E4DDB0();
  sub_267EFA078();
  if (v2)
  {

    type metadata accessor for MessagesApp(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_267EF79B8();
    v17 = 0;
    OUTLINED_FUNCTION_0_67();
    sub_267E4DD68(v9, v10, MEMORY[0x277D55C60]);
    sub_267EF9D88();
    sub_267C12220(v7, v1 + OBJC_IVAR____TtC16SiriMessagesFlow11MessagesApp_name);
    v16 = 1;
    v12 = sub_267EF9DA8();
    v13 = OUTLINED_FUNCTION_8_32();
    v14(v13);
    *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow11MessagesApp_isDesignedByApple) = v12 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_267E4DC88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267E4D8AC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_267E4DD68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267E4DDB0()
{
  result = qword_28022C9C0;
  if (!qword_28022C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C9C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessagesApp.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267E4DEE4()
{
  result = qword_28022C9D0;
  if (!qword_28022C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C9D0);
  }

  return result;
}

unint64_t sub_267E4DF3C()
{
  result = qword_28022C9D8;
  if (!qword_28022C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C9D8);
  }

  return result;
}

unint64_t sub_267E4DF94()
{
  result = qword_28022C9E0;
  if (!qword_28022C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C9E0);
  }

  return result;
}

uint64_t sub_267E4DFE8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 56) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return v3;
}

uint64_t sub_267E4E014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_35();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_29();
  a16 = v18;
  v21 = *(v18[8] + 32);
  if ((*(v21 + 82) & 1) == 0)
  {
    v29 = *(v21 + 144);
    v18[9] = v29;
    if (!v29)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v49 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v49, qword_280240FB0);
      v23 = sub_267EF89F8();
      v50 = sub_267EF95E8();
      if (!OUTLINED_FUNCTION_27(v50))
      {
        goto LABEL_17;
      }

      v51 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_59(v51);
      v28 = "#NotificationAppendingAction Notification ID is not available in the conversation";
      goto LABEL_16;
    }

    v30 = *(v21 + 136);
    v31 = objc_allocWithZone(MEMORY[0x277D47618]);

    v32 = [v31 init];
    v18[10] = v32;
    sub_267E51C1C(v30, v29, v32);
    v33 = sub_267EF9028();
    sub_267E51C74(v33, v34, v32);
    sub_267BA9F38(0, &qword_280229538, 0x277CCABB0);
    v35 = sub_267EF97E8();
    [v32 setSupportsSpokenNotifications_];

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v36 = sub_267EF8A08();
    v18[11] = OUTLINED_FUNCTION_30_1(v36, qword_280240FB0);
    v37 = v32;
    v38 = sub_267EF89F8();
    v39 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v39))
    {
      v40 = OUTLINED_FUNCTION_48();
      v41 = swift_slowAlloc();
      a9 = v41;
      *v40 = 136315138;
      v42 = sub_267BE28D0(v37, &selRef_afterNotificationId);
      v44 = v43;

      if (!v44)
      {
        __break(1u);
        return MEMORY[0x2821BB6A0](v45, v46, v47, v48);
      }

      sub_267BA33E8(v42, v44, &a9);
      OUTLINED_FUNCTION_79();
      *(v40 + 4) = v42;
      _os_log_impl(&dword_267B93000, v38, v39, "#NotificationAppendingAction Searching notifications after %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }

    v61 = *(v18[8] + 40);
    v18[12] = v61;
    v62 = v61[5];
    v63 = v61[6];
    __swift_project_boxed_opaque_existential_0(v61 + 2, v62);
    (*(v63 + 24))(v62, v63);
    __swift_project_boxed_opaque_existential_0(v18 + 2, v18[5]);
    v64 = swift_task_alloc();
    v18[13] = v64;
    sub_267BA9F38(0, &qword_28022C9F8, 0x277D47620);
    *v64 = v18;
    v64[1] = sub_267E4E3F0;
    OUTLINED_FUNCTION_36_0();

    return MEMORY[0x2821BB6A0](v45, v46, v47, v48);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v22 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
  v23 = sub_267EF89F8();
  v24 = sub_267EF95D8();
  if (!OUTLINED_FUNCTION_27(v24))
  {
    goto LABEL_17;
  }

  v25 = OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_59(v25);
  v28 = "#NotificationAppendingAction Not fetching new message since we offered to read full message";
LABEL_16:
  OUTLINED_FUNCTION_1_7(&dword_267B93000, v26, v27, v28);
  OUTLINED_FUNCTION_32_0();
LABEL_17:

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10);
}

uint64_t sub_267E4E3F0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v5;
  *(v3 + 120) = v0;

  if (v0)
  {

    v6 = sub_267E4E98C;
  }

  else
  {
    v6 = sub_267E4E500;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_267E4E500()
{
  v23 = v0;
  v1 = *(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = sub_267E51CD8(v1);
  if (v2)
  {
    v3 = v2;
    v22 = MEMORY[0x277D84F90];
    v4 = sub_267BAF0DC(v2);
    for (i = 0; v4 != i; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D609870](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      sub_267BE28D0(v6, &selRef_notificationId);
      if (!v8)
      {
        goto LABEL_28;
      }

      v9 = sub_267E2D478();

      if (v9)
      {
      }

      else
      {
        sub_267EF9BD8();
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }
    }

    v10 = *(v0 + 120);

    v22 = sub_267D326FC(v11);
    sub_267BDE58C(&v22, sub_267BE6A4C, sub_267D2FE8C, sub_267E50B94, sub_267E50300);
    if (!v10)
    {

      v12 = v22;
      goto LABEL_20;
    }
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
LABEL_20:
    *(v0 + 128) = v12;

    v13 = sub_267EF89F8();
    v14 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v14))
    {
      v15 = OUTLINED_FUNCTION_48();
      *v15 = 134217984;
      *(v15 + 4) = sub_267BAF0DC(v12);

      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
      OUTLINED_FUNCTION_29_1();
    }

    else
    {
    }

    v21 = swift_task_alloc();
    *(v0 + 136) = v21;
    *v21 = v0;
    v21[1] = sub_267E4E81C;

    sub_267E4EB14(v12);
  }
}

uint64_t sub_267E4E81C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_267E4E928, 0, 0);
}

uint64_t sub_267E4E928()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E4E98C()
{
  v23 = v0;
  v2 = v0[15];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v2;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = v0[10];
    v8 = OUTLINED_FUNCTION_48();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v0[7] = v6;
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v11 = sub_267EF9098();
    sub_267BA33E8(v11, v12, &v22);
    OUTLINED_FUNCTION_79();
    *(v8 + 4) = v1;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    v18 = v0[15];
    v19 = v0[10];
  }

  OUTLINED_FUNCTION_17();

  return v20();
}

uint64_t sub_267E4EB14(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4EB28()
{
  v1 = *(v0[3] + 32);
  v0[4] = v1;
  v2 = v1;

  v49 = sub_267EF7C18();
  v4 = v3;

  if (v4)
  {
    v48 = v0;
    v5 = v0[2];
    v51 = MEMORY[0x277D84F90];
    v6 = sub_267BAF0DC(v5);
    v7 = 0;
    v8 = v2;
    while (1)
    {
      if (v6 == v7)
      {

        v20 = sub_267BAF0DC(v51);
        v21 = 0;
        v22 = MEMORY[0x277D84F90];
LABEL_32:
        v50 = v22;
        v48[5] = v22;
        while (v20 != v21)
        {
          if ((v51 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x26D609870](v21, v51);
          }

          else
          {
            if (v21 >= *(v51 + 16))
            {
              goto LABEL_64;
            }

            v23 = *(v51 + 8 * v21 + 32);
          }

          v24 = v23;
          v25 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_63;
          }

          v26 = sub_267BE28D0(v23, &selRef_notificationId);
          v28 = v27;

          ++v21;
          if (v28)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_267BF4EE8();
              v50 = v32;
            }

            v30 = *(v50 + 16);
            if (v30 >= *(v50 + 24) >> 1)
            {
              sub_267BF4EE8();
              v50 = v33;
            }

            v22 = v50;
            *(v50 + 16) = v30 + 1;
            v31 = v50 + 16 * v30;
            *(v31 + 32) = v26;
            *(v31 + 40) = v28;
            v21 = v25;
            goto LABEL_32;
          }
        }

        if (*(v50 + 16))
        {
          v34 = v8[16];
          v48[6] = v34;

          v35 = swift_task_alloc();
          v48[7] = v35;
          *v35 = v48;
          v35[1] = sub_267E4F000;

          return sub_267E4F268(v50, v34);
        }

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v44 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v44, qword_280240FB0);
        v38 = sub_267EF89F8();
        v45 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_27(v45))
        {
          v46 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_59(v46);
          v43 = "#NotificationAppendingAction No notifications for current conversation";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26D609870](v7, v48[2]);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v9 = *(v5 + 32 + 8 * v7);
      }

      v10 = v9;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v11 = sub_267BE28D0(v9, &selRef_threadIdentifier);
      v13 = v8[14];
      if (v12)
      {
        if (!v13)
        {

          goto LABEL_29;
        }

        if (v11 == v8[13] && v12 == v13)
        {
        }

        else
        {
          v15 = sub_267EF9EA8();

          if ((v15 & 1) == 0)
          {
            break;
          }
        }
      }

      else if (v13)
      {
        break;
      }

      v16 = sub_267BE28D0(v10, &selRef_applicationId);
      if (!v17)
      {
        break;
      }

      if (v16 == v49 && v17 == v4)
      {
      }

      else
      {
        v19 = sub_267EF9EA8();

        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
LABEL_29:
      ++v7;
    }

    goto LABEL_29;
  }

  if (qword_280228818 != -1)
  {
LABEL_65:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v37 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v37, qword_280240FB0);
  v38 = sub_267EF89F8();
  v39 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_27(v39))
  {
    v40 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_59(v40);
    v43 = "#NotificationAppendingAction Application ID is missing for the conversation";
LABEL_57:
    OUTLINED_FUNCTION_1_7(&dword_267B93000, v41, v42, v43);
    OUTLINED_FUNCTION_32_0();
  }

LABEL_58:

  OUTLINED_FUNCTION_17();

  return v47();
}

uint64_t sub_267E4F000()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  *(v6 + 64) = v5;

  return MEMORY[0x2822009F8](sub_267E4F110, 0, 0);
}

uint64_t sub_267E4F110()
{
  v1 = sub_267BAF0DC(*(v0 + 64));
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  if (v1)
  {
    v4 = sub_267BAF0DC(*(v0 + 64));

    sub_267C38BC8(v4);

    sub_267E4F9C0(v2, v3);
  }

  else
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v5 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v7))
    {
      v8 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v8);
      _os_log_impl(&dword_267B93000, v6, v7, "#NotificationAppendingAction Failed to fetch messages for current conversation", v2, 2u);
      OUTLINED_FUNCTION_26();
    }
  }

  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_267E4F268(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4F280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_35();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_29();
  a16 = v18;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v22 = sub_267EF8A08();
  v18[13] = OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);

  v23 = sub_267EF89F8();
  v24 = sub_267EF95D8();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = v18[10];
    v25 = v18[11];
    v27 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    *v27 = 136315394;
    v18[9] = v25;
    sub_267EF7C38();
    sub_267BE2AF4(&qword_28022A060, 255, MEMORY[0x277D55380], MEMORY[0x277D55390]);
    v28 = sub_267EF9E58();
    v19 = sub_267BA33E8(v28, v29, &a9);

    *(v27 + 4) = v19;
    *(v27 + 12) = 2080;
    v30 = MEMORY[0x26D608FD0](v26, MEMORY[0x277D837D0]);
    v32 = sub_267BA33E8(v30, v31, &a9);

    *(v27 + 14) = v32;
    _os_log_impl(&dword_267B93000, v23, v24, "#NotificationAppendingAction Fetching messages from %s for notification IDs: %s", v27, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  v33 = v18[10];
  v18[7] = MEMORY[0x277D84F90];
  v34 = *(v33 + 16);
  v18[14] = v34;
  if (v34)
  {
    v18[15] = *(v18[12] + 40);
    v18[16] = 0;
    OUTLINED_FUNCTION_3_71(v33);
    v35 = OUTLINED_FUNCTION_19_37();
    v19(v35);
    v36 = swift_task_alloc();
    v18[19] = v36;
    *v36 = v18;
    OUTLINED_FUNCTION_1_76(v36);
    OUTLINED_FUNCTION_36_0();

    return sub_267C86680(v37, v38, v39, v40);
  }

  else
  {
    OUTLINED_FUNCTION_36_0();

    return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10);
  }
}

uint64_t sub_267E4F510()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  *v4 = *v1;
  v3[20] = v5;
  v3[21] = v0;

  __swift_destroy_boxed_opaque_existential_0(v3 + 2);
  if (v0)
  {
    v6 = sub_267E4F794;
  }

  else
  {

    v6 = sub_267E4F628;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267E4F628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();

  v12 = sub_267EF89F8();
  v13 = sub_267EF95D8();
  v14 = OUTLINED_FUNCTION_5_2(v13);
  v15 = v10[20];
  if (v14)
  {
    v16 = OUTLINED_FUNCTION_48();
    *v16 = 134217984;
    *(v16 + 4) = sub_267BAF0DC(v15);

    _os_log_impl(&dword_267B93000, v12, v13, "#NotificationAppendingAction Fetched %ld messages", v16, 0xCu);
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  sub_267BD057C(v10[20]);
  OUTLINED_FUNCTION_24_33();
  if (v18)
  {
    OUTLINED_FUNCTION_36_0();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  else
  {
    v10[16] = v17;
    OUTLINED_FUNCTION_3_71(v10[10] + 16 * v17);
    v28 = OUTLINED_FUNCTION_19_37();
    v11(v28);
    v29 = swift_task_alloc();
    v10[19] = v29;
    *v29 = v10;
    OUTLINED_FUNCTION_1_76(v29);
    OUTLINED_FUNCTION_36_0();

    return sub_267C86680(v30, v31, v32, v33);
  }
}

uint64_t sub_267E4F794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_35();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_29();
  a16 = v18;
  v22 = v18[21];

  v23 = v22;
  v24 = sub_267EF89F8();
  v25 = sub_267EF95E8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v18[21];
    v19 = v18[17];
    v27 = v18[18];
    v28 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    *v28 = 136315394;
    sub_267BA33E8(v19, v27, &a9);
    OUTLINED_FUNCTION_79();
    *(v28 + 4) = v19;
    *(v28 + 12) = 2080;
    v18[8] = v26;
    v29 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v30 = sub_267EF9098();
    sub_267BA33E8(v30, v31, &a9);
    OUTLINED_FUNCTION_79();
    *(v28 + 14) = v19;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    v37 = v18[21];
  }

  OUTLINED_FUNCTION_24_33();
  if (v39)
  {
    OUTLINED_FUNCTION_36_0();

    return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
  }

  else
  {
    v18[16] = v38;
    OUTLINED_FUNCTION_3_71(v18[10] + 16 * v38);
    v49 = OUTLINED_FUNCTION_19_37();
    v19(v49);
    v50 = swift_task_alloc();
    v18[19] = v50;
    *v50 = v18;
    OUTLINED_FUNCTION_1_76(v50);
    OUTLINED_FUNCTION_36_0();

    return sub_267C86680(v51, v52, v53, v54);
  }
}

void sub_267E4F9C0(uint64_t a1, void *a2)
{
  v60 = sub_267EF2E38();
  OUTLINED_FUNCTION_23();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v56 = *(v2 + 32);
  v10 = v56[16];
  v55 = a2;
  if (a2[2])
  {
    v11 = a2[5];
    v58 = a2[4];
  }

  else
  {
    v58 = 0;
    v11 = 0;
  }

  v57 = v2;
  v12 = *(v2 + 40);
  v14 = v12[5];
  v13 = v12[6];
  __swift_project_boxed_opaque_existential_0(v12 + 2, v14);
  v15 = *(v13 + 8);

  v15(&v67, v14, v13);
  __swift_project_boxed_opaque_existential_0(&v67, *(&v68 + 1));
  sub_267EF3B68();
  LOBYTE(v15) = v12[11] != 0;
  sub_267EF42D8();
  sub_267EF6FF8();
  sub_267EF6FE8();
  sub_267EF6FB8();

  sub_267EF42C8();

  v16 = sub_267BDD444(a1, v10, v62, 0, 2u, v58, v11, v9, 0, 0, v15);

  __swift_destroy_boxed_opaque_existential_0(v62);
  (*(v5 + 8))(v9, v60);
  __swift_destroy_boxed_opaque_existential_0(&v67);
  if (!sub_267BAF0DC(v16))
  {
    goto LABEL_12;
  }

  sub_267BBD0EC(0, (v16 & 0xC000000000000001) == 0, v16);
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x26D609870](0, v16);
  }

  else
  {
    v17 = *(v16 + 32);
  }

  v18 = v57;

  swift_beginAccess();
  v19 = *(v17 + 24);

  if (*(v19 + 16))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v20 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);

    v21 = sub_267EF89F8();
    v22 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v22))
    {
      v23 = OUTLINED_FUNCTION_48();
      *v23 = 134217984;
      *(v23 + 4) = *(v19 + 16);

      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }

    v38 = v56[11];
    v39 = v56[12];

    sub_267E2C9F8(v38, v39, v19, v55);

    v40 = *(v19 + 16);
    if (v40)
    {
      v66 = MEMORY[0x277D84F90];
      sub_267BE50EC();
      v41 = v66;
      v61 = *(v57 + 48);
      v42 = v19 + 32;
      do
      {
        sub_267B9AFEC(v42, v65);
        sub_267B9AFEC(v65, v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(v65);
          v67 = v62[0];
          v68 = v62[1];
          v69 = v62[2];
          v70 = v63;
          type metadata accessor for ReadAudioComponentAction();
          swift_allocObject();
          v43 = sub_267E38820(&v67, v12);
          v44 = type metadata accessor for ReadAudioComponentAction;
          v45 = &unk_267F0B9C8;
          v46 = &qword_280229268;
        }

        else
        {
          type metadata accessor for DefaultReadComponentAction();
          swift_allocObject();
          v43 = sub_267BF902C(v65, v12, v61);
          v44 = type metadata accessor for DefaultReadComponentAction;
          v45 = &unk_267F00350;
          v46 = &qword_280229258;
        }

        v47 = sub_267BE2AF4(v46, 255, v44, v45);

        __swift_destroy_boxed_opaque_existential_0(v64);
        v66 = v41;
        v48 = v41[2];
        if (v48 >= v41[3] >> 1)
        {
          sub_267BE50EC();
          v41 = v66;
        }

        v41[2] = v48 + 1;
        v49 = &v41[2 * v48];
        v49[4] = v43;
        v49[5] = v47;
        v42 += 40;
        --v40;
      }

      while (v40);

      v18 = v57;
    }

    else
    {

      v41 = MEMORY[0x277D84F90];
    }

    if (sub_267C96D2C())
    {
      swift_getObjectType();
      v50 = *(v18 + 48);
      type metadata accessor for NotificationAppendingAction();
      v51 = swift_allocObject();
      *(v51 + 56) = 0;
      *(v51 + 16) = 0;
      *(v51 + 24) = 0;
      *(v51 + 32) = v56;
      *(v51 + 40) = v12;
      *(v51 + 48) = v50;
      sub_267BE2AF4(&qword_28022C9F0, v52, type metadata accessor for NotificationAppendingAction, &unk_267F0C618);

      sub_267EF3DB8();
      swift_unknownObjectRelease();
    }

    sub_267C36888(v41);
    if (v41[2])
    {
      v53 = v41[4];
      v54 = *(*(v41[5] + 8) + 8);
      swift_unknownObjectRetain();
    }

    else
    {
      v53 = 0;
      v54 = 0;
    }

    swift_beginAccess();
    *(v18 + 16) = v53;
    *(v18 + 24) = v54;
    swift_unknownObjectRelease();
  }

  else
  {
LABEL_12:

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v29 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);
    v30 = sub_267EF89F8();
    v31 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_36(v31))
    {
      v32 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v32);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_26();
    }
  }
}

uint64_t sub_267E50108()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_267E50140()
{
  sub_267E50108();

  return swift_deallocClassInstance();
}

uint64_t sub_267E50198()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267E2B1EC;

  return sub_267E4E000();
}

void sub_267E50300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_267EF2CC8();
  v8 = MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v32 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v36 = (v10 + 8);
    v39 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v34 = v14;
      v35 = a3;
      v16 = *(v39 + 8 * a3);
      v33 = v15;
      v17 = v15;
      do
      {
        v18 = *v14;
        v19 = v16;
        v20 = v18;
        v21 = [v19 date];
        if (!v21)
        {
          __break(1u);
LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v22 = v21;
        sub_267EF2C98();

        v23 = [v20 date];
        if (!v23)
        {
          goto LABEL_12;
        }

        v24 = v23;
        v25 = v37;
        sub_267EF2C98();

        v40 = sub_267EF2C68();
        v26 = v17;
        v27 = *v36;
        v28 = v25;
        v29 = v38;
        (*v36)(v28, v38);
        v27(v12, v29);

        if ((v40 & 1) == 0)
        {
          break;
        }

        if (!v39)
        {
          goto LABEL_13;
        }

        v30 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v30;
        v14 -= 8;
        ++v17;
      }

      while (v26 != -1);
      a3 = v35 + 1;
      v14 = v34 + 8;
      v15 = v33 - 1;
      if (v35 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }
}

void sub_267E5053C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_91:
    v110 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v92 = v8 + 16;
      v91 = *(v8 + 2);
      while (v91 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v93 = v8;
        v8 += 16 * v91;
        v94 = *v8;
        v95 = &v92[2 * v91];
        v96 = *(v95 + 1);
        sub_267E51518((*a3 + 8 * *v8), (*a3 + 8 * *v95), (*a3 + 8 * v96), v110);
        if (v5)
        {
          break;
        }

        if (v96 < v94)
        {
          goto LABEL_117;
        }

        if (v91 - 2 >= *v92)
        {
          goto LABEL_118;
        }

        *v8 = v94;
        *(v8 + 1) = v96;
        v97 = *v92 - v91;
        if (*v92 < v91)
        {
          goto LABEL_119;
        }

        v91 = *v92 - 1;
        sub_267EAAFF4(v95 + 16, v97, v95);
        *v92 = v91;
        v8 = v93;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v8 = sub_267EAAFE0(v8);
    goto LABEL_93;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_22;
    }

    v99 = v8;
    v110 = v5;
    v11 = *(*a3 + 8 * v10);
    v12 = (*a3 + 8 * v7);
    v13 = 8 * v7;
    v15 = *v12;
    v14 = v12 + 2;
    v8 = v15;
    v106 = v6;
    sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
    v16 = v11;
    v17 = v10;
    v18 = v15;
    v5 = sub_267BDE844(v16, v18);

    v19 = v106;
    v10 = v17;
    v101 = v9;
    v20 = v9 + 2;
    do
    {
      v21 = v20;
      v22 = v10 + 1;
      if (v22 >= v19)
      {
        v10 = v19;
        if (v5)
        {
          goto LABEL_8;
        }

LABEL_20:
        v5 = v110;
        v8 = v99;
        v9 = v101;
        goto LABEL_22;
      }

      v23 = *(v14 - 1);
      v24 = *v14;
      v25 = v22;
      v26 = v23;
      v8 = sub_267BDE844(v24, v26);

      v10 = v25;
      ++v14;
      v20 = v21 + 1;
      v19 = v106;
    }

    while ((v5 & 1) == v8);
    if ((v5 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    v9 = v101;
    if (v10 < v101)
    {
      goto LABEL_123;
    }

    if (v101 >= v10)
    {
      v5 = v110;
      v8 = v99;
    }

    else
    {
      v27 = v19 >= v21 ? v21 : v19;
      v28 = 8 * v27 - 8;
      v29 = v10;
      v30 = v101;
      v5 = v110;
      v8 = v99;
      do
      {
        if (v30 != --v29)
        {
          v31 = *a3;
          if (!*a3)
          {
            goto LABEL_130;
          }

          v32 = *(v31 + v13);
          *(v31 + v13) = *(v31 + v28);
          *(v31 + v28) = v32;
        }

        ++v30;
        v28 -= 8;
        v13 += 8;
      }

      while (v30 < v29);
    }

LABEL_22:
    v33 = a3[1];
    if (v10 < v33)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_122;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v10 < v9)
    {
      goto LABEL_121;
    }

    v110 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267C70730(0, *(v8 + 2) + 1, 1, v8);
      v8 = v89;
    }

    v48 = *(v8 + 2);
    v47 = *(v8 + 3);
    v5 = v48 + 1;
    v108 = v10;
    if (v48 >= v47 >> 1)
    {
      sub_267C70730(v47 > 1, v48 + 1, 1, v8);
      v8 = v90;
    }

    *(v8 + 2) = v5;
    v49 = v8 + 32;
    v50 = &v8[16 * v48 + 32];
    *v50 = v9;
    *(v50 + 1) = v108;
    v105 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v48)
    {
      while (1)
      {
        v51 = v5 - 1;
        v52 = &v49[16 * v5 - 16];
        v53 = &v8[16 * v5];
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_59:
          if (v57)
          {
            goto LABEL_108;
          }

          v69 = *v53;
          v68 = *(v53 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_111;
          }

          v73 = *(v52 + 1);
          v74 = v73 - *v52;
          if (__OFSUB__(v73, *v52))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v71, v74))
          {
            goto LABEL_116;
          }

          if (v71 + v74 >= v56)
          {
            if (v56 < v74)
            {
              v51 = v5 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v5 < 2)
        {
          goto LABEL_110;
        }

        v76 = *v53;
        v75 = *(v53 + 1);
        v64 = __OFSUB__(v75, v76);
        v71 = v75 - v76;
        v72 = v64;
LABEL_74:
        if (v72)
        {
          goto LABEL_113;
        }

        v78 = *v52;
        v77 = *(v52 + 1);
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_115;
        }

        if (v79 < v71)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v51 - 1 >= v5)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v83 = &v49[16 * v51 - 16];
        v84 = *v83;
        v85 = &v49[16 * v51];
        v86 = *(v85 + 1);
        sub_267E51518((*a3 + 8 * *v83), (*a3 + 8 * *v85), (*a3 + 8 * v86), v105);
        v5 = v110;
        if (v110)
        {
          goto LABEL_101;
        }

        if (v86 < v84)
        {
          goto LABEL_103;
        }

        v87 = v8;
        v8 = *(v8 + 2);
        if (v51 > v8)
        {
          goto LABEL_104;
        }

        *v83 = v84;
        *(v83 + 1) = v86;
        if (v51 >= v8)
        {
          goto LABEL_105;
        }

        v110 = 0;
        v5 = (v8 - 1);
        sub_267EAAFF4(v85 + 16, &v8[-v51 - 1], &v49[16 * v51]);
        *(v87 + 2) = v8 - 1;
        v88 = v8 > 2;
        v8 = v87;
        if (!v88)
        {
          goto LABEL_88;
        }
      }

      v58 = &v49[16 * v5];
      v59 = *(v58 - 8);
      v60 = *(v58 - 7);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_106;
      }

      v63 = *(v58 - 6);
      v62 = *(v58 - 5);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_107;
      }

      v65 = *(v53 + 1);
      v66 = v65 - *v53;
      if (__OFSUB__(v65, *v53))
      {
        goto LABEL_109;
      }

      v64 = __OFADD__(v56, v66);
      v67 = v56 + v66;
      if (v64)
      {
        goto LABEL_112;
      }

      if (v67 >= v61)
      {
        v81 = *v52;
        v80 = *(v52 + 1);
        v64 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v64)
        {
          goto LABEL_120;
        }

        if (v56 < v82)
        {
          v51 = v5 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v7 = v108;
    v6 = a3[1];
    v5 = v110;
    if (v108 >= v6)
    {
      goto LABEL_91;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_124;
  }

  if (v9 + a4 >= v33)
  {
    v34 = a3[1];
  }

  else
  {
    v34 = v9 + a4;
  }

  if (v34 < v9)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v10 == v34)
  {
    goto LABEL_39;
  }

  v100 = v8;
  v110 = v5;
  v35 = *a3;
  sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
  v36 = v35 + 8 * v10 - 8;
  v102 = v9;
  v37 = v9 - v10;
  v104 = v34;
LABEL_32:
  v107 = v10;
  v38 = *(v35 + 8 * v10);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    v41 = *v40;
    v42 = v38;
    v43 = v41;
    v44 = sub_267BDE844(v42, v43);

    if (!v44)
    {
LABEL_37:
      v10 = v107 + 1;
      v36 += 8;
      --v37;
      if (v107 + 1 == v104)
      {
        v10 = v104;
        v5 = v110;
        v8 = v100;
        v9 = v102;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v35)
    {
      break;
    }

    v45 = *v40;
    v38 = *(v40 + 8);
    *v40 = v38;
    *(v40 + 8) = v45;
    v40 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

void sub_267E50B94(char **a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v134 = a1;
  v148 = sub_267EF2CC8();
  v6 = MEMORY[0x28223BE20](v148);
  v145 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v131 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v138 = &v131 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v14 = MEMORY[0x28223BE20](v13);
  v133 = &v131 - v15;
  MEMORY[0x28223BE20](v14);
  v142 = a3;
  v19 = a3[1];
  if (v19 >= 1)
  {
    v131 = a4;
    v132 = &v131 - v17;
    v137 = v18;
    v20 = 0;
    v147 = (v16 + 8);
    v21 = MEMORY[0x277D84F90];
    v22 = &selRef_personTypes;
    while (1)
    {
      v23 = v20;
      v24 = v20 + 1;
      v135 = v23;
      if (v24 < v19)
      {
        v146 = v19;
        v25 = *v142;
        v144 = v24;
        v26 = *(v25 + 8 * v23);
        v27 = *(v25 + 8 * v24);
        v28 = v26;
        v29 = [v27 v22[424]];
        if (!v29)
        {
          goto LABEL_140;
        }

        v30 = v29;
        v31 = v23;
        v149 = v27;
        v32 = v132;
        sub_267EF2C98();

        v33 = [v28 v22[424]];
        if (!v33)
        {
          goto LABEL_141;
        }

        v34 = v33;
        v35 = v133;
        sub_267EF2C98();

        LODWORD(v141) = sub_267EF2C68();
        v36 = *v147;
        v37 = v35;
        v38 = v148;
        (*v147)(v37, v148);
        v139 = v36;
        (v36)(v32, v38);

        v136 = 8 * v31;
        a4 = (v25 + 8 * v31 + 16);
        v39 = (v31 + 2);
        v24 = v144;
        v22 = &selRef_personTypes;
        v40 = v146;
        v140 = v21;
        while (1)
        {
          v41 = v39;
          if (v24 + 1 >= v40)
          {
            break;
          }

          v144 = v24;
          v42 = *(a4 - 1);
          v43 = *a4;
          v44 = v42;
          v45 = [v43 v22[424]];
          if (!v45)
          {
            goto LABEL_135;
          }

          v46 = v45;
          v149 = v41;
          v47 = v137;
          sub_267EF2C98();

          v48 = [v44 v22[424]];
          if (!v48)
          {
            goto LABEL_134;
          }

          v49 = v48;
          v50 = v138;
          sub_267EF2C98();

          LODWORD(v49) = sub_267EF2C68() & 1;
          v51 = v50;
          v52 = v148;
          v53 = v139;
          (v139)(v51, v148);
          v53(v47, v52);

          a4 += 8;
          v24 = v144 + 1;
          v41 = v149;
          v39 = v149 + 1;
          v22 = &selRef_personTypes;
          v21 = v140;
          v40 = v146;
          if ((v141 & 1) != v49)
          {
            goto LABEL_13;
          }
        }

        v24 = v40;
LABEL_13:
        if (v141)
        {
          v54 = v135;
          if (v24 < v135)
          {
            goto LABEL_127;
          }

          if (v135 < v24)
          {
            if (v40 >= v41)
            {
              v55 = v41;
            }

            else
            {
              v55 = v40;
            }

            v56 = 8 * v55 - 8;
            v57 = v24;
            v58 = v136;
            do
            {
              if (v54 != --v57)
              {
                v59 = *v142;
                if (!*v142)
                {
                  goto LABEL_138;
                }

                v60 = *(v59 + v58);
                *(v59 + v58) = *(v59 + v56);
                *(v59 + v56) = v60;
              }

              ++v54;
              v56 -= 8;
              v58 += 8;
            }

            while (v54 < v57);
          }
        }
      }

      v61 = v142[1];
      if (v24 < v61)
      {
        if (__OFSUB__(v24, v135))
        {
          goto LABEL_126;
        }

        if (v24 - v135 < v131)
        {
          v62 = &v131[v135];
          if (__OFADD__(v135, v131))
          {
            goto LABEL_128;
          }

          if (v62 >= v61)
          {
            v62 = v142[1];
          }

          if (v62 >= v135)
          {
            if (v24 == v62)
            {
              goto LABEL_43;
            }

            v140 = v21;
            v146 = *v142;
            v63 = v146 + 8 * v24 - 8;
            v64 = (v135 - v24);
            v136 = v62;
LABEL_33:
            v144 = v24;
            v65 = *(v146 + 8 * v24);
            v139 = v64;
            v66 = v64;
            v141 = v63;
            while (1)
            {
              v67 = *v63;
              v68 = v65;
              v69 = v67;
              v70 = [v68 v22[424]];
              if (!v70)
              {
                goto LABEL_132;
              }

              v71 = v70;
              sub_267EF2C98();

              v72 = [v69 v22[424]];
              if (!v72)
              {
                break;
              }

              v73 = v72;
              v149 = v68;
              a4 = v66;
              v74 = v145;
              sub_267EF2C98();

              LOBYTE(v73) = sub_267EF2C68();
              v75 = *v147;
              v76 = v74;
              v77 = v148;
              (*v147)(v76, v148);
              v75(v10, v77);

              if ((v73 & 1) == 0)
              {
                v22 = &selRef_personTypes;
LABEL_41:
                v24 = v144 + 1;
                v63 = v141 + 8;
                v64 = v139 - 1;
                if (v144 + 1 == v136)
                {
                  v24 = v136;
                  v21 = v140;
                  goto LABEL_43;
                }

                goto LABEL_33;
              }

              if (!v146)
              {
                goto LABEL_133;
              }

              v78 = *v63;
              v65 = *(v63 + 8);
              *v63 = v65;
              *(v63 + 8) = v78;
              v63 -= 8;
              ++v66;
              v22 = &selRef_personTypes;
              if (a4 == -1)
              {
                goto LABEL_41;
              }
            }

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
            goto LABEL_142;
          }

LABEL_129:
          __break(1u);
LABEL_130:
          v21 = sub_267EAAFE0(v21);
          goto LABEL_97;
        }
      }

LABEL_43:
      if (v24 < v135)
      {
        goto LABEL_125;
      }

      v144 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267C70730(0, *(v21 + 16) + 1, 1, v21);
        v21 = v121;
      }

      v80 = *(v21 + 16);
      v79 = *(v21 + 24);
      a4 = (v80 + 1);
      v81 = v144;
      if (v80 >= v79 >> 1)
      {
        sub_267C70730(v79 > 1, v80 + 1, 1, v21);
        v81 = v144;
        v21 = v122;
      }

      *(v21 + 16) = a4;
      v82 = v21 + 32;
      v83 = (v21 + 32 + 16 * v80);
      *v83 = v135;
      v83[1] = v81;
      v149 = *v134;
      if (!v149)
      {
        goto LABEL_139;
      }

      if (v80)
      {
        break;
      }

LABEL_92:
      v19 = v142[1];
      v20 = v144;
      if (v144 >= v19)
      {
        goto LABEL_95;
      }
    }

    while (1)
    {
      v84 = a4 - 1;
      v85 = (v82 + 16 * (a4 - 1));
      v86 = (v21 + 16 * a4);
      if (a4 >= 4)
      {
        break;
      }

      if (a4 == 3)
      {
        v87 = *(v21 + 32);
        v88 = *(v21 + 40);
        v97 = __OFSUB__(v88, v87);
        v89 = v88 - v87;
        v90 = v97;
LABEL_63:
        if (v90)
        {
          goto LABEL_112;
        }

        v102 = *v86;
        v101 = v86[1];
        v103 = __OFSUB__(v101, v102);
        v104 = v101 - v102;
        v105 = v103;
        if (v103)
        {
          goto LABEL_115;
        }

        v106 = v85[1];
        v107 = v106 - *v85;
        if (__OFSUB__(v106, *v85))
        {
          goto LABEL_118;
        }

        if (__OFADD__(v104, v107))
        {
          goto LABEL_120;
        }

        if (v104 + v107 >= v89)
        {
          if (v89 < v107)
          {
            v84 = a4 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      if (a4 < 2)
      {
        goto LABEL_114;
      }

      v109 = *v86;
      v108 = v86[1];
      v97 = __OFSUB__(v108, v109);
      v104 = v108 - v109;
      v105 = v97;
LABEL_78:
      if (v105)
      {
        goto LABEL_117;
      }

      v111 = *v85;
      v110 = v85[1];
      v97 = __OFSUB__(v110, v111);
      v112 = v110 - v111;
      if (v97)
      {
        goto LABEL_119;
      }

      if (v112 < v104)
      {
        goto LABEL_92;
      }

LABEL_85:
      if (v84 - 1 >= a4)
      {
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
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
        goto LABEL_129;
      }

      if (!*v142)
      {
        goto LABEL_136;
      }

      v116 = v21;
      a4 = (v82 + 16 * (v84 - 1));
      v117 = *a4;
      v118 = v82 + 16 * v84;
      v21 = *(v118 + 8);
      v119 = v143;
      sub_267E51754((*v142 + 8 * *a4), (*v142 + 8 * *v118), (*v142 + 8 * v21), v149);
      v143 = v119;
      if (v119)
      {
        goto LABEL_105;
      }

      if (v21 < v117)
      {
        goto LABEL_107;
      }

      v120 = *(v116 + 16);
      if (v84 > v120)
      {
        goto LABEL_108;
      }

      *a4 = v117;
      *(a4 + 1) = v21;
      if (v84 >= v120)
      {
        goto LABEL_109;
      }

      a4 = (v120 - 1);
      sub_267EAAFF4((v118 + 16), v120 - 1 - v84, (v82 + 16 * v84));
      v21 = v116;
      *(v116 + 16) = v120 - 1;
      v22 = &selRef_personTypes;
      if (v120 <= 2)
      {
        goto LABEL_92;
      }
    }

    v91 = v82 + 16 * a4;
    v92 = *(v91 - 64);
    v93 = *(v91 - 56);
    v97 = __OFSUB__(v93, v92);
    v94 = v93 - v92;
    if (v97)
    {
      goto LABEL_110;
    }

    v96 = *(v91 - 48);
    v95 = *(v91 - 40);
    v97 = __OFSUB__(v95, v96);
    v89 = v95 - v96;
    v90 = v97;
    if (v97)
    {
      goto LABEL_111;
    }

    v98 = v86[1];
    v99 = v98 - *v86;
    if (__OFSUB__(v98, *v86))
    {
      goto LABEL_113;
    }

    v97 = __OFADD__(v89, v99);
    v100 = v89 + v99;
    if (v97)
    {
      goto LABEL_116;
    }

    if (v100 >= v94)
    {
      v114 = *v85;
      v113 = v85[1];
      v97 = __OFSUB__(v113, v114);
      v115 = v113 - v114;
      if (v97)
      {
        goto LABEL_124;
      }

      if (v89 < v115)
      {
        v84 = a4 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_63;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_95:
  a4 = *v134;
  if (!*v134)
  {
LABEL_142:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_97:
  v124 = (v21 + 16);
  v123 = *(v21 + 16);
  while (v123 >= 2)
  {
    if (!*v142)
    {
      goto LABEL_137;
    }

    v125 = v21;
    v21 += 16 * v123;
    v126 = *v21;
    v127 = &v124[2 * v123];
    v128 = *(v127 + 1);
    v129 = v143;
    sub_267E51754((*v142 + 8 * *v21), (*v142 + 8 * *v127), (*v142 + 8 * v128), a4);
    v143 = v129;
    if (v129)
    {
      break;
    }

    if (v128 < v126)
    {
      goto LABEL_121;
    }

    if (v123 - 2 >= *v124)
    {
      goto LABEL_122;
    }

    *v21 = v126;
    *(v21 + 8) = v128;
    v130 = *v124 - v123;
    if (*v124 < v123)
    {
      goto LABEL_123;
    }

    v123 = *v124 - 1;
    sub_267EAAFF4(v127 + 16, v130, v127);
    *v124 = v123;
    v21 = v125;
  }

LABEL_105:
}

uint64_t sub_267E51518(char *a1, void **a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_267C74A34(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v6;
      v14 = *v4;
      sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
      v15 = v13;
      v16 = v14;
      v17 = sub_267BDE844(v15, v16);

      if (!v17)
      {
        break;
      }

      v18 = v6;
      v19 = v7 == v6++;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      v5 = v12;
    }

    v18 = v4;
    v19 = v7 == v4++;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v18;
    goto LABEL_13;
  }

  sub_267C74A34(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v36 = v4;
LABEL_15:
  v20 = v6 - 1;
  v21 = v5 - 1;
  while (v10 > v4 && v6 > v7)
  {
    v23 = v21;
    v24 = v7;
    v25 = *(v10 - 1);
    v26 = v20;
    v27 = *v20;
    sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
    v28 = v25;
    v29 = v27;
    v30 = sub_267BDE844(v28, v29);

    v5 = v23;
    v31 = v23 + 1;
    if (v30)
    {
      v19 = v31 == v6;
      v32 = v26;
      v6 = v26;
      v7 = v24;
      v4 = v36;
      if (!v19)
      {
        *v5 = *v32;
        v6 = v32;
      }

      goto LABEL_15;
    }

    if (v10 != v31)
    {
      *v23 = *(v10 - 1);
    }

    v21 = v23 - 1;
    --v10;
    v20 = v26;
    v7 = v24;
    v4 = v36;
  }

LABEL_28:
  v33 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v33])
  {
    memmove(v6, v4, 8 * v33);
  }

  return 1;
}

uint64_t sub_267E51754(char *a1, char *a2, char *a3, char *a4)
{
  v63 = sub_267EF2CC8();
  v8 = MEMORY[0x28223BE20](v63);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v56 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v59 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  i = &v56 - v15;
  v16 = (a2 - a1) / 8;
  v62 = (v17 + 8);
  v18 = (a3 - a2) / 8;
  if (v16 < v18)
  {
    sub_267C74A34(a1, (a2 - a1) / 8, a4);
    v19 = &a4[8 * v16];
    v20 = &selRef_personTypes;
    v64 = v19;
    v65 = a3;
    while (1)
    {
      if (a4 >= v19 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_31;
      }

      v22 = a1;
      v66 = a2;
      v23 = *a2;
      v24 = *a4;
      v25 = v23;
      v26 = v24;
      result = [v25 v20[424]];
      if (!result)
      {
        __break(1u);
        goto LABEL_39;
      }

      v28 = result;
      v29 = a4;
      v30 = i;
      sub_267EF2C98();

      result = [v26 v20[424]];
      if (!result)
      {
        goto LABEL_40;
      }

      v31 = result;
      v32 = v59;
      sub_267EF2C98();

      LOBYTE(v31) = sub_267EF2C68();
      v33 = *v62;
      v34 = v32;
      v35 = v63;
      (*v62)(v34, v63);
      v33(v30, v35);

      if ((v31 & 1) == 0)
      {
        break;
      }

      v36 = v66;
      a2 = v66 + 8;
      v37 = v22;
      if (v22 != v66)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 = v37 + 8;
      v19 = v64;
      a3 = v65;
      v20 = &selRef_personTypes;
    }

    v36 = a4;
    a4 += 8;
    v37 = v22;
    a2 = v66;
    if (v22 == v29)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v37 = *v36;
    goto LABEL_14;
  }

  sub_267C74A34(a2, (a3 - a2) / 8, a4);
  v19 = &a4[8 * v18];
  v38 = &selRef_personTypes;
  v57 = a4;
  v58 = a1;
LABEL_16:
  v39 = (a2 - 8);
  v40 = a3 - 8;
  v66 = a2;
  for (i = a2 - 8; v19 > a4 && a2 > a1; v39 = i)
  {
    v65 = v40;
    v42 = v19 - 8;
    v43 = *v39;
    v44 = *(v19 - 1);
    v45 = v43;
    result = [v44 v38[424]];
    if (!result)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v46 = result;
    v64 = v19;
    sub_267EF2C98();

    result = [v45 v38[424]];
    if (!result)
    {
      goto LABEL_41;
    }

    v47 = result;
    v48 = v60;
    sub_267EF2C98();

    LOBYTE(v47) = sub_267EF2C68();
    v49 = *v62;
    v50 = v48;
    v51 = v63;
    (*v62)(v50, v63);
    v49(v12, v51);

    if (v47)
    {
      v19 = v64;
      a3 = v65;
      v53 = i;
      a2 = i;
      a4 = v57;
      a1 = v58;
      v38 = &selRef_personTypes;
      if (v65 + 8 != v66)
      {
        *v65 = *i;
        a2 = v53;
      }

      goto LABEL_16;
    }

    v52 = v65;
    a4 = v57;
    if (v64 != v65 + 8)
    {
      *v65 = *v42;
    }

    v40 = v52 - 8;
    v19 = v42;
    a2 = v66;
    a1 = v58;
    v38 = &selRef_personTypes;
  }

LABEL_31:
  v54 = (v19 - a4) / 8;
  if (a2 != a4 || a2 >= &a4[8 * v54])
  {
    memmove(a2, a4, 8 * v54);
  }

  return 1;
}

uint64_t sub_267E51BAC(void *a1)
{
  v1 = [a1 attachmentFiles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
  v3 = sub_267EF92F8();

  return v3;
}

void sub_267E51C1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();
  [a3 setAfterNotificationId_];
}

void sub_267E51C74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setPriority_];
}

uint64_t sub_267E51CD8(void *a1)
{
  v2 = [a1 notifications];

  if (!v2)
  {
    return 0;
  }

  sub_267BA9F38(0, &qword_28022A398, 0x277D47608);
  v3 = sub_267EF92F8();

  return v3;
}

void sub_267E51D84(uint64_t a1)
{
  sub_267DDD74C();
  if (v1 <= 0x3F)
  {
    sub_267E51E78(319);
    if (v2 <= 0x3F)
    {
      sub_267C82D70(319);
      if (v3 <= 0x3F)
      {
        sub_267C82CB0(319);
        if (v4 <= 0x3F)
        {
          sub_267C82D18(319);
          if (v5 <= 0x3F)
          {
            sub_267EF2E38();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_267E51E78(uint64_t a1)
{
  if (!qword_28022C178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022C180, &qword_267F096B0);
    v1 = sub_267EF9888();
    if (!v2)
    {
      atomic_store(v1, &qword_28022C178);
    }
  }
}

uint64_t sub_267E51EDC()
{
  OUTLINED_FUNCTION_12();
  v1[31] = v2;
  v1[32] = v0;
  v1[29] = v3;
  v1[30] = v4;
  v1[28] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v1[33] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF2BA8();
  v1[34] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[35] = v7;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v8 = sub_267EF2E08();
  v1[38] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[39] = v9;
  v1[40] = OUTLINED_FUNCTION_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A290, &qword_267F00A00);
  v1[41] = OUTLINED_FUNCTION_2();
  v10 = sub_267EF2E38();
  v1[42] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[43] = v11;
  v1[44] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E52098()
{
  v87 = v0;
  v1 = *(v0 + 256);
  sub_267DB9740();
  *(v0 + 360) = v2;
  v3 = *(v1 + 72);
  *(v0 + 368) = v3;
  if (v3)
  {
    v5 = *(v0 + 344);
    v4 = *(v0 + 352);
    v6 = *(v0 + 336);
    v7 = *(v0 + 224);
    v8 = v7[5];
    v9 = v7[6];
    __swift_project_boxed_opaque_existential_0(v7 + 2, v8);
    (*(v9 + 8))(v8, v9);
    __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
    sub_267EF3B68();
    v10 = v7[52];

    v11 = sub_267BC20F4(v4, 0, 0, v10, v3);

    (*(v5 + 8))(v4, v6);
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  else
  {
    v11 = 0;
  }

  *(v0 + 376) = v11;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 40) = &type metadata for Features;
  *(v0 + 48) = sub_267BAFCAC();
  *(v0 + 16) = 4;
  v12 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if ((v12 & 1) == 0)
  {
    goto LABEL_30;
  }

  v13 = *(v0 + 320);
  v14 = *(v0 + 328);
  v15 = *(v0 + 304);
  v16 = *(v0 + 312);
  type metadata accessor for ImageComponent(0);
  sub_267EF2E18();
  sub_267EF2DF8();
  (*(v16 + 8))(v13, v15);
  v17 = sub_267EF2D68();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v17);
  v19 = *(v0 + 328);
  if (EnumTagSinglePayload == 1)
  {
    sub_267B9F98C(*(v0 + 328), &unk_28022A290, &qword_267F00A00);
LABEL_30:
    v55 = *(v0 + 224);
    if (*(v55 + 88))
    {
      OUTLINED_FUNCTION_10(&unk_267F08D50);
      v56 = swift_task_alloc();
      *(v0 + 448) = v56;
      *v56 = v0;
      OUTLINED_FUNCTION_1_77(v56);
      OUTLINED_FUNCTION_15();

      __asm { BR              X3 }
    }

    v59 = *(v0 + 376);
    v60 = *(v0 + 360);
    v61 = *(v0 + 256);
    v62 = *(v0 + 232);
    v63 = *(v0 + 240);
    v64 = __swift_project_boxed_opaque_existential_0(*(v0 + 248), *(*(v0 + 248) + 24));
    sub_267BB8364(v64);
    v65 = swift_task_alloc();
    *(v0 + 488) = v65;
    v65[2] = v63;
    v65[3] = v0 + 184;
    v65[4] = v59;
    v65[5] = v60;
    v65[6] = v62;
    v65[7] = v55;
    v65[8] = v61;
    v66 = swift_task_alloc();
    *(v0 + 496) = v66;
    *v66 = v0;
    OUTLINED_FUNCTION_2_63(v66);
    OUTLINED_FUNCTION_15();

    return sub_267D430BC();
  }

  v20 = sub_267EF2D58();
  v22 = v21;
  (*(*(v17 - 8) + 8))(v19, v17);
  if (v20 == 28261 && v22 == 0xE200000000000000)
  {

    if (!v3)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v17 = sub_267EF9EA8();

    if (!v3 || (v17 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v24 = v3;
  if (sub_267DEAC40() || (v25 = *(*(v0 + 256) + 40), !sub_267BAF0DC(v25)) || ((v26 = OUTLINED_FUNCTION_45_23(), sub_267BBD0EC(v26, v27, v28), v17) ? (v29 = MEMORY[0x26D609870](0, v25)) : (v29 = *(v25 + 32)), (v30 = sub_267E5607C(v29)) == 0))
  {
LABEL_29:

    goto LABEL_30;
  }

  v31 = v30;
  if (!sub_267BAF0DC(v30))
  {

    goto LABEL_29;
  }

  v32 = OUTLINED_FUNCTION_45_23();
  sub_267BBD0EC(v32, v33, v34);
  if (v17)
  {
    v35 = MEMORY[0x26D609870](0, v31);
  }

  else
  {
    v35 = *(v31 + 32);
  }

  v36 = v35;
  *(v0 + 384) = v35;

  v37 = [v36 fileURL];
  if (!v37)
  {

    goto LABEL_30;
  }

  v38 = v37;
  sub_267EF2B48();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v39 = *(v0 + 280);
  v40 = sub_267EF8A08();
  *(v0 + 392) = __swift_project_value_buffer(v40, qword_280240FB0);
  v41 = *(v39 + 16);
  v42 = OUTLINED_FUNCTION_61_0();
  v41(v42);
  v43 = sub_267EF89F8();
  v44 = sub_267EF95D8();
  v45 = os_log_type_enabled(v43, v44);
  v47 = *(v0 + 280);
  v46 = *(v0 + 288);
  v48 = *(v0 + 272);
  if (v45)
  {
    v49 = OUTLINED_FUNCTION_48();
    v84 = OUTLINED_FUNCTION_52();
    v86 = v84;
    *v49 = 136315138;
    sub_267E55B4C(&qword_28022AE70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v50 = sub_267EF9E58();
    v85 = v41;
    v52 = v51;
    v53 = *(v47 + 8);
    v53(v46, v48);
    v54 = sub_267BA33E8(v50, v52, &v86);
    v41 = v85;

    *(v49 + 4) = v54;
    _os_log_impl(&dword_267B93000, v43, v44, "#ImageComponent image file url %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v84);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v53 = *(v47 + 8);
    v53(v46, v48);
  }

  *(v0 + 400) = v53;
  v69 = *(*(v0 + 224) + 416);
  if (v69 && (v70 = [*(*(v69 + 168) + 16) smsContext]) != 0)
  {
    v71 = v70;
    v72 = [v70 richAttachmentIntelligenceFeatureUsage];

    if (v72)
    {
      [v72 addIsReadingIntelligenceAttempted_];
    }
  }

  else
  {
    v72 = 0;
  }

  *(v0 + 408) = v72;
  v73 = *(v0 + 296);
  v75 = *(v0 + 264);
  v74 = *(v0 + 272);
  sub_267B9AFEC(*(v0 + 224) + 304, v0 + 56);
  (v41)(v75, v73, v74);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v74);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 416) = v79;
  *v79 = v80;
  v79[1] = sub_267E527D8;
  OUTLINED_FUNCTION_15();

  return sub_267E535F0(v81, v82);
}

uint64_t sub_267E527D8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  v10[53] = v8;
  v10[54] = v9;
  v10[55] = v0;

  sub_267B9F98C(v5, &qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E52904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_90();
  a20 = v23;
  v27 = v23[54];
  if (v27)
  {

    v28 = sub_267EF89F8();
    v29 = sub_267EF95D8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v23[53];
      v31 = OUTLINED_FUNCTION_48();
      v32 = OUTLINED_FUNCTION_52();
      a11 = v32;
      *v31 = 136380675;

      v24 = sub_267BA33E8(v30, v27, &a11);

      *(v31 + 4) = v24;
      _os_log_impl(&dword_267B93000, v28, v29, "#ImageComponent Image caption is %{private}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v23[25] = v23[53];
    v23[26] = v27;
    if (qword_2802287D0 != -1)
    {
      swift_once();
    }

    v33 = sub_267EF2728();
    v22 = __swift_project_value_buffer(v33, qword_280240EC0);
    sub_267BB5034();
    OUTLINED_FUNCTION_22_0();
    sub_267EF9908();
    if (v34)
    {

      v35 = 0;
      v36 = 0;
    }

    else
    {
      v35 = v23[53];
      v36 = v23[54];
    }

    v23[23] = v35;
    v23[24] = v36;
    v37 = v36 != 0;
  }

  else
  {
    v37 = 0;
  }

  v38 = v23[51];
  if (v38)
  {
    v27 = v38;
    [v27 addIsReadingIntelligenceUsed_];
  }

  OUTLINED_FUNCTION_41_18();

  __swift_destroy_boxed_opaque_existential_0(v23 + 7);
  v22(v37, v27);
  if (*(v23[28] + 88))
  {
    OUTLINED_FUNCTION_10(&unk_267F08D50);
    v54 = v39;
    v40 = swift_task_alloc();
    v23[56] = v40;
    *v40 = v23;
    OUTLINED_FUNCTION_1_77(v40);
    OUTLINED_FUNCTION_64_3();

    return v44(v41, v42, v43, v44, v45, v46, v47, v48, a9, v54, a11, a12, a13, a14);
  }

  else
  {
    v50 = OUTLINED_FUNCTION_39_21();
    sub_267BB8364(v50);
    v51 = swift_task_alloc();
    OUTLINED_FUNCTION_24_34(v51);
    v52 = swift_task_alloc();
    v23[62] = v52;
    *v52 = v23;
    OUTLINED_FUNCTION_2_63(v52);
    OUTLINED_FUNCTION_11_44();
    OUTLINED_FUNCTION_64_3();

    return sub_267D430BC();
  }
}

uint64_t sub_267E52BD4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 456) = v3;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E52CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v25 = sub_267EF8A08();
  __swift_project_value_buffer(v25, qword_280240FB0);

  v26 = sub_267EF89F8();
  v27 = sub_267EF95D8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v22 + 456);
    v29 = OUTLINED_FUNCTION_48();
    v30 = OUTLINED_FUNCTION_52();
    a11 = v30;
    *v29 = 136315138;
    *(v22 + 216) = v28;
    type metadata accessor for MessagesSpokenDialogContext();
    sub_267E55B4C(&qword_280228FB8, type metadata accessor for MessagesSpokenDialogContext, &unk_267F0F670);
    sub_267EF7B58();
    v31 = sub_267EF8F08();
    v33 = v32;

    v34 = sub_267BA33E8(v31, v33, &a11);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_267B93000, v26, v27, "#ImageComponent SpokenDialogContext: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v35 = *(v22 + 456);
  v36 = *(v22 + 376);
  v37 = *(v22 + 360);
  v38 = *(v22 + 256);
  v39 = *(v22 + 240);
  v40 = *(v22 + 224);
  v41 = __swift_project_boxed_opaque_existential_0(*(v22 + 248), *(*(v22 + 248) + 24));
  sub_267BB8364(v41);
  v42 = swift_task_alloc();
  *(v22 + 464) = v42;
  v42[2] = v39;
  v42[3] = v22 + 184;
  v42[4] = v36;
  v42[5] = v37;
  v42[6] = v35;
  v42[7] = v40;
  v42[8] = v38;
  v43 = swift_task_alloc();
  *(v22 + 472) = v43;
  *v43 = v22;
  v43[1] = sub_267E52F3C;
  OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_64_3();

  return sub_267D45894();
}

uint64_t sub_267E52F3C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 480) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E53058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_122();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_267E53118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_19_38();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_267E531C0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[20] = v1;
  v2[21] = v4;
  v2[22] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 504) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E532DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_19_38();

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_122();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_267E5337C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_19_38();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_267E5341C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v16 = sub_267EF89F8();
  v17 = sub_267EF95E8();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v14[55];
  if (v18)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_267B93000, v16, v17, "#ImageComponent timed out fetching image caption!", v15, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v20 = v14[51];
  if (v20)
  {
    v16 = v20;
    [v16 addIsReadingIntelligenceUsed:0];
  }

  OUTLINED_FUNCTION_41_18();

  __swift_destroy_boxed_opaque_existential_0(v14 + 7);
  v17(v16, v19);
  if (*(v14[28] + 88))
  {
    OUTLINED_FUNCTION_10(&unk_267F08D50);
    v36 = v21;
    v22 = swift_task_alloc();
    v14[56] = v22;
    *v22 = v14;
    OUTLINED_FUNCTION_1_77(v22);
    OUTLINED_FUNCTION_64_3();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, v36, a12, a13, a14);
  }

  else
  {
    v32 = OUTLINED_FUNCTION_39_21();
    sub_267BB8364(v32);
    v33 = swift_task_alloc();
    OUTLINED_FUNCTION_24_34(v33);
    v34 = swift_task_alloc();
    v14[62] = v34;
    *v34 = v14;
    OUTLINED_FUNCTION_2_63(v34);
    OUTLINED_FUNCTION_11_44();
    OUTLINED_FUNCTION_64_3();

    return sub_267D430BC();
  }
}

uint64_t sub_267E535F0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_267E53614, 0, 0);
}

uint64_t sub_267E53614()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 64) = v5;
  *v5 = v6;
  v5[1] = sub_267E53714;
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277D837D0];

  return MEMORY[0x282200740](v0 + 16, v7, v4, 0, 0, &unk_267F0C778, v2, v8);
}

uint64_t sub_267E53714()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E53830()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E5388C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = sub_267EF8248();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E539CC, 0, 0);
}

void sub_267E539CC()
{
  v2 = *(v0 + 56);
  SpokenImageComponentParameters = type metadata accessor for SearchForMessagesReadSpokenImageComponentParameters(0);
  *(v0 + 192) = SpokenImageComponentParameters;
  v4 = SpokenImageComponentParameters[8];
  sub_267B9F98C(v2 + v4, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters(0);
  v6 = sub_267EF79B8();
  *(v0 + 200) = v6;
  OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_47_16();
  v8(v7);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v6);
  OUTLINED_FUNCTION_34_27();
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_24_5(SpokenImageComponentParameters[12]);
  *(v0 + 32) = *(v1 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_24_5(SpokenImageComponentParameters[13]);
  *(v0 + 40) = *(v1 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_24_5(SpokenImageComponentParameters[15]);
  *(v0 + 48) = *(v1 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_23_0();
  v31 = *(v0 + 160);
  v32 = *(v0 + 56);
  OUTLINED_FUNCTION_2_1();
  v33 = sub_267BD3DDC(v31, v32 + SpokenImageComponentParameters[17]);
  *(v0 + 208) = 0;
  v12 = *(v0 + 72);
  if (v12[1])
  {
    v32 = *(v0 + 152);
    v4 = *v12;

    sub_267EF90F8();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  OUTLINED_FUNCTION_25_35(v33, v13);
  v14 = SpokenImageComponentParameters[14];

  OUTLINED_FUNCTION_52_15();

  *(v1 + v14) = ComponentPatternCommonParameters;
  v15 = SpokenImageComponentParameters[16];

  *(v1 + v15) = v4;
  v16 = sub_267EF7998();
  *(v0 + 240) = OUTLINED_FUNCTION_51_16(v16, v17);
  v18 = sub_267BDAF74(v15);
  *(v0 + 256) = v18 & 1;
  if (v18)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v19 = swift_task_alloc();
    *(v0 + 248) = v19;
    *v19 = v0;
    v19[1] = sub_267E53EE8;
    OUTLINED_FUNCTION_89();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_40_21();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v32)
  {
    v22 = OUTLINED_FUNCTION_6_46();
    v23(v22);
  }

  else
  {
    OUTLINED_FUNCTION_21_28();
    v24 = OUTLINED_FUNCTION_13_41();
    v25(v24);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_36_2(v26, v27, v28);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_89();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267E53EE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 257) = v3;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E53FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v35 = *(v14 + 208);
  sub_267EF7C18();
  v16 = 0xE000000000000000;
  if (v15)
  {
    v16 = v15;
  }

  v34 = v16;
  sub_267EF8238();
  sub_267EF8348();
  if (v35)
  {
    v17 = OUTLINED_FUNCTION_6_46();
    v18(v17);
  }

  else
  {
    OUTLINED_FUNCTION_21_28();
    v35 = v19;
    v20 = OUTLINED_FUNCTION_13_41();
    v21(v20);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_36_2(v22, v23, v24);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, v35, a11, a12, a13, a14);
}

uint64_t sub_267E54160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = sub_267EF8248();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E542A0, 0, 0);
}

void sub_267E542A0()
{
  v2 = *(v0 + 56);
  ImageComponentParameters = type metadata accessor for SearchForMessagesReadImageComponentParameters(0);
  *(v0 + 192) = ImageComponentParameters;
  v4 = ImageComponentParameters[8];
  sub_267B9F98C(v2 + v4, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters(0);
  v6 = sub_267EF79B8();
  *(v0 + 200) = v6;
  OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_47_16();
  v8(v7);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v6);
  OUTLINED_FUNCTION_34_27();
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_24_5(ImageComponentParameters[13]);
  *(v0 + 32) = *(v1 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_24_5(ImageComponentParameters[14]);
  *(v0 + 40) = *(v1 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_24_5(ImageComponentParameters[16]);
  *(v0 + 48) = *(v1 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_23_0();
  v31 = *(v0 + 160);
  v32 = *(v0 + 56);
  OUTLINED_FUNCTION_2_1();
  v33 = sub_267BD3DDC(v31, v32 + ImageComponentParameters[17]);
  *(v0 + 208) = 0;
  v12 = *(v0 + 72);
  if (v12[1])
  {
    v32 = *(v0 + 152);
    v4 = *v12;

    sub_267EF90F8();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  OUTLINED_FUNCTION_25_35(v33, v13);
  v14 = ImageComponentParameters[15];

  OUTLINED_FUNCTION_52_15();

  *(v1 + v14) = ComponentPatternCommonParameters;
  v15 = ImageComponentParameters[9];

  *(v1 + v15) = v4;
  v16 = sub_267EF7998();
  *(v0 + 240) = OUTLINED_FUNCTION_51_16(v16, v17);
  v18 = sub_267BDAF74(v15);
  *(v0 + 256) = v18 & 1;
  if (v18)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v19 = swift_task_alloc();
    *(v0 + 248) = v19;
    *v19 = v0;
    v19[1] = sub_267E547BC;
    OUTLINED_FUNCTION_89();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_40_21();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v32)
  {
    v22 = OUTLINED_FUNCTION_6_46();
    v23(v22);
  }

  else
  {
    OUTLINED_FUNCTION_21_28();
    v24 = OUTLINED_FUNCTION_13_41();
    v25(v24);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_36_2(v26, v27, v28);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_89();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267E547BC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 257) = v3;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E548A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_267E548C8, 0, 0);
}

uint64_t sub_267E548C8()
{
  OUTLINED_FUNCTION_12();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  OUTLINED_FUNCTION_10(&unk_267F00578);
  v5 = v2;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_267E5498C;

  return v5(sub_267E565A8, v1);
}

uint64_t sub_267E5498C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *(v6 + 48) = v5;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E54A90()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  if (v1)
  {
    if (sub_267BAF0DC(*(v0 + 48)))
    {
      v2 = *(v0 + 48) & 0xC000000000000001;
      sub_267BBD0EC(0, v2 == 0, v1);
      if (v2)
      {
        v3 = MEMORY[0x26D609870](0, v1);
      }

      else
      {
        v3 = *(v1 + 32);
      }

      v4 = v3;

      v1 = sub_267EF67A8();
      v6 = v5;

      goto LABEL_8;
    }

    v1 = 0;
  }

  v6 = 0xE000000000000000;
LABEL_8:
  v7 = *(v0 + 8);

  return v7(v1, v6);
}

uint64_t sub_267E54B74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  __swift_project_boxed_opaque_existential_0(a3, a3[3]);

  sub_267EF67E8();
}

uint64_t sub_267E54C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0) - 8);
  v5[14] = v6;
  v5[15] = *(v6 + 64);
  v5[16] = swift_task_alloc();
  v7 = *(type metadata accessor for ImageComponent(0) - 8);
  v5[17] = v7;
  v5[18] = *(v7 + 64);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E54D88, 0, 0);
}

uint64_t sub_267E54D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v16 = *(v14 + 152);
  v15 = *(v14 + 160);
  v17 = *(v14 + 136);
  v18 = *(v14 + 144);
  v19 = *(v14 + 128);
  v21 = *(v14 + 104);
  v20 = *(v14 + 112);
  v23 = *(v14 + 88);
  v22 = *(v14 + 96);
  v39 = *(v14 + 120);
  v40 = *(v14 + 80);
  v41 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v41);
  sub_267E562D4(v23, v16);
  sub_267B9AFEC(v22, v14 + 16);
  sub_267BB170C(v21, v19, &qword_280229E20, &unk_267EFDCC0);
  v24 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v25 = (v18 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v20 + 80) + v25 + 40) & ~*(v20 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  sub_267E56338(v16, v27 + v24);
  sub_267B9A5E8((v14 + 16), v27 + v25);
  sub_267C26704(v19, v27 + v26);
  sub_267E55494(v15, &unk_267F0C788, v27);
  sub_267B9F98C(v15, &unk_28022AE50, &unk_267EFD130);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v41);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  sub_267E55494(v15, &unk_267F0C798, v28);
  sub_267B9F98C(v15, &unk_28022AE50, &unk_267EFD130);
  v29 = swift_task_alloc();
  *(v14 + 168) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CA18, &unk_267F0C7A0);
  *v29 = v14;
  v29[1] = sub_267E54FC4;
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_64_3();

  return MEMORY[0x2822004D0](v30, v31, v32, v33, v34, v35, v36, v37, v39, v40, v41, a12, a13, a14);
}

uint64_t sub_267E54FC4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E550BC()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    sub_267EF9468();
    *v2 = v3;
    v2[1] = v1;
  }

  else
  {
    sub_267C266B0();
    swift_allocError();
    *v5 = 0xD00000000000002FLL;
    v5[1] = 0x8000000267F1BEA0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E551F8()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E55270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v9 = swift_task_alloc();
  *(v6 + 24) = v9;
  *v9 = v6;
  v9[1] = sub_267E55320;

  return sub_267E548A8(a5, a6);
}

uint64_t sub_267E55320(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_9_1();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_5();
  *v10 = v9;

  if (v2)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 32) = a2;
    *(v7 + 40) = a1;
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_267E55464()
{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[5];
  v2[1] = v1;
  OUTLINED_FUNCTION_17();
  return v3();
}

uint64_t sub_267E55494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  sub_267BB170C(a1, v17 - v8, &unk_28022AE50, &unk_267EFD130);
  v10 = sub_267EF93F8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_267B9F98C(v9, &unk_28022AE50, &unk_267EFD130);
  }

  else
  {
    sub_267EF93E8();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_267EF93A8();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  v15 = (v13 | v11);
  if (v13 | v11)
  {
    v18[0] = 0;
    v18[1] = 0;
    v15 = v18;
    v18[2] = v11;
    v18[3] = v13;
  }

  v17[1] = 1;
  v17[2] = v15;
  v17[3] = v14;
  swift_task_create();
}