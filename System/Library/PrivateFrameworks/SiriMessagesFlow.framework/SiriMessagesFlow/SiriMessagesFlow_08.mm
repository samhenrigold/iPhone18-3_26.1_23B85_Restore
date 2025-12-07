unint64_t sub_267C4E1B8()
{
  result = qword_280229728;
  if (!qword_280229728)
  {
    sub_267EF5168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229728);
  }

  return result;
}

uint64_t sub_267C4E210(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C4E228()
{
  OUTLINED_FUNCTION_56();
  v1 = *MEMORY[0x277CE4228];
  v8 = (*(v0[3] + 8) + **(v0[3] + 8));
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_267C4E34C;
  v3 = v0[3];
  v4 = v0[2];
  v5.n128_u64[0] = 5.0;
  v6.n128_u64[0] = v1;

  return v8(v4, v3, v6, v5);
}

uint64_t sub_267C4E34C()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_267C4E474, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_4_3();

    return v7(v3);
  }
}

uint64_t sub_267C4E474()
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_267B93000, v4, v5, "#AFLocationService AFLocationServiceError %@", v8, 0xCu);
    sub_267C142D4(v9);
    MEMORY[0x26D60A7B0](v9, -1, -1);
    MEMORY[0x26D60A7B0](v8, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_3();

  return v12(0);
}

uint64_t sub_267C4E608(double a1, double a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *v2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C4E624()
{
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_28_0();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_267C4E6B4;
  v2 = OUTLINED_FUNCTION_9_9();

  return v3(v2);
}

uint64_t sub_267C4E6B4()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  OUTLINED_FUNCTION_4_3();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_267C4E7C4()
{
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_28_0();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_267C4E850;
  v2 = OUTLINED_FUNCTION_9_9();

  return v3(v2);
}

uint64_t sub_267C4E850()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_14();
  v4 = *v3;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v8 = *(v4 + 8);
  if (!v1)
  {
    v6 = v2;
    v7 = v0;
  }

  return v8(v6, v7);
}

uint64_t sub_267C4E94C()
{
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_267C4EA68;
  v2 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229730, &unk_267EFE1A0);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_267C4EBA4;
  v1[13] = &block_descriptor_3;
  v1[14] = v2;
  [v0 currentAuthorizationStyle_];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_267C4EA68()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    v5 = *(v1 + 144);
    v6 = *(v1 + 152);
    v7 = *(v2 + 8);

    return v7(v5, v6);
  }
}

uint64_t sub_267C4EBA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v8 = a4;

    return sub_267E98204();
  }

  else
  {
    v10 = *v7;

    return sub_267E92A64(v10, a2, a3);
  }
}

uint64_t sub_267C4EC30(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BF1F28;

  return sub_267C4E210(a1, a2);
}

uint64_t sub_267C4ECD4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C4ECE8()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_relationshipLabel;
  sub_267EF42F8();
  OUTLINED_FUNCTION_22();
  (*(v4 + 16))(v2, v1 + v3);
  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t sub_267C4ED80()
{
  OUTLINED_FUNCTION_12();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_267EF44C8();
  v0[5] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C4EE28()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v16 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  v15 = sub_267EF4918();
  sub_267EF4938();
  sub_267EF44A8();
  (*(v2 + 8))(v1, v3);
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297A8, &unk_267EFEFA0);
  v6 = OUTLINED_FUNCTION_47_3(v5);
  *(v6 + 16) = xmmword_267EFC020;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v8 = OUTLINED_FUNCTION_47_3(v7);
  *(v8 + 16) = xmmword_267EFCA40;
  *(v8 + 32) = sub_267E59EF0();
  *(v6 + 32) = v8;
  v9 = sub_267EF4918();
  sub_267EB7470(v9);
  v10 = sub_267E71558();

  sub_267D28C4C(v15, v10);
  sub_267BA9F38(0, &qword_280229788, 0x277D47630);
  v11 = v4;
  sub_267EF4388();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297B0, &unk_267EFE4E0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v12);

  OUTLINED_FUNCTION_1();

  return v13();
}

void sub_267C4F040()
{
  OUTLINED_FUNCTION_48_0();
  v0 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v6 = v5 - v4;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v7 = sub_267EF8A08();
  __swift_project_value_buffer(v7, qword_280240FB0);
  v8 = OUTLINED_FUNCTION_50_1();
  v9(v8);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_48();
    v19 = OUTLINED_FUNCTION_52();
    *v12 = 136315138;
    OUTLINED_FUNCTION_5_13();
    sub_267C58938(v13, v14, MEMORY[0x277D5C120]);
    sub_267EF9E58();
    (*(v2 + 8))(v6, v0);
    v15 = OUTLINED_FUNCTION_66();
    v18 = sub_267BA33E8(v15, v16, v17);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_267B93000, v10, v11, "actionForPromptForNameInput# Received input %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v2 + 8))(v6, v0);
  }

  sub_267C4F270();
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C4F270()
{
  v0 = sub_267EF4C08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267EF4B88();
  v4 = sub_267E57DFC(v3, &v14);
  (*(v1 + 8))(v3, v0, v4);
  if (v15)
  {
    sub_267B9A5E8(&v14, v16);
    v5 = v17;
    v6 = v18;
    __swift_project_boxed_opaque_existential_0(v16, v17);
    if ((*(v6 + 96))(v5, v6) & 1) != 0 || (v7 = v17, v8 = v18, __swift_project_boxed_opaque_existential_0(v16, v17), ((*(v8 + 104))(v7, v8)))
    {
      sub_267EF3E48();
    }

    else
    {
      sub_267EF3E58();
    }

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_267B9F98C(&v14, &unk_28022BBF0, &unk_267F01C60);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v9 = sub_267EF8A08();
    __swift_project_value_buffer(v9, qword_280240FB0);
    v10 = sub_267EF89F8();
    v11 = sub_267EF95D8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_267B93000, v10, v11, "UnsetRelationship# Not an SMS intent -> ignore", v12, 2u);
      MEMORY[0x26D60A7B0](v12, -1, -1);
    }

    return sub_267EF3E68();
  }
}

uint64_t sub_267C4F4C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C4F4D8()
{
  OUTLINED_FUNCTION_56();
  sub_267C4F550(*(v0 + 16));
  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267C4F550@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_267EF4C68();
  v27 = *(v1 - 8);
  v28 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - v4;
  v6 = sub_267EF6718();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = sub_267EF4C08();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267EF4B88();
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == *MEMORY[0x277D5C128])
  {
    (*(v14 + 96))(v16, v13);
    (*(v7 + 32))(v12, v16, v6);
    (*(v7 + 16))(v10, v12, v6);
    type metadata accessor for SmsNLv3Intent(0);
    swift_allocObject();
    v18 = sub_267EC41AC(v10);
    sub_267C56E98(v18, v29);

    return (*(v7 + 8))(v12, v6);
  }

  else
  {
    v20 = v29;
    if (v17 == *MEMORY[0x277D5C160])
    {
      (*(v14 + 96))(v16, v13);
      v22 = v27;
      v21 = v28;
      (*(v27 + 32))(v5, v16, v28);
      (*(v22 + 16))(v26, v5, v21);
      type metadata accessor for SmsNLv4Intent(0);
      swift_allocObject();
      sub_267DD5530();
      sub_267C57590(v23, v20);

      return (*(v22 + 8))(v5, v21);
    }

    else
    {
      sub_267C266B0();
      swift_allocError();
      *v24 = 0xD00000000000003DLL;
      v24[1] = 0x8000000267F13080;
      swift_willThrow();
      return (*(v14 + 8))(v16, v13);
    }
  }
}

uint64_t sub_267C4F960()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  v5 = v4;
  v6 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipTemplateProviding;
  OUTLINED_FUNCTION_10(&unk_267EFE4C8);
  v11 = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_267BBD07C;

  return v11(v5, v3, v0 + v6);
}

uint64_t sub_267C4FA1C(uint64_t a1, uint64_t a2)
{
  v3[17] = a1;
  v3[18] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v3[19] = swift_task_alloc();
  v5 = sub_267EF4228();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[22] = v6;
  v7 = swift_task_alloc();
  v3[23] = v7;
  *v7 = v3;
  v7[1] = sub_267C4FB58;

  return MEMORY[0x2821BB9A0](v6, a2);
}

uint64_t sub_267C4FB58()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 192) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C4FC58()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  OUTLINED_FUNCTION_21_4((v3 + 16));
  v4 = OUTLINED_FUNCTION_10_0();
  v5(v4);
  OUTLINED_FUNCTION_21_4((v3 + 16));
  v6 = OUTLINED_FUNCTION_10_0();
  v7(v6);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  sub_267C578DC(v1);
  v8 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v8);
  v9 = sub_267EF4CC8();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v2[3] = v9;
  v2[4] = v10;
  __swift_allocate_boxed_opaque_existential_0(v2);
  sub_267EF3F68();
  sub_267B9F98C(v0 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v1, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v11 = OUTLINED_FUNCTION_37_1();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_1();

  return v13();
}

uint64_t sub_267C4FE20()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267C4FE88(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C4FE9C()
{
  OUTLINED_FUNCTION_12();
  v1 = sub_267C4FEFC(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_267C4FEFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_267EF43F8();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_267EF2E38();
  v7 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_267BAF0DC(a1);
  v11 = MEMORY[0x277D84F90];
  v26 = v6;
  if (!v10)
  {
LABEL_9:
    v17 = v2[5];
    v18 = v2[6];
    __swift_project_boxed_opaque_existential_0(v2 + 2, v17);
    (*(v18 + 8))(&v28, v17, v18);
    __swift_project_boxed_opaque_existential_0(&v28, v29);
    sub_267EF3B68();
    v19 = v2[5];
    v20 = v2[6];
    __swift_project_boxed_opaque_existential_0(v2 + 2, v19);
    (*(v20 + 8))(v27, v19, v20);
    type metadata accessor for ContactIdOrBase64PersonIdentifierProvider();
    swift_initStackObject();
    sub_267E6F8FC(v11, v9, v27);
    __swift_destroy_boxed_opaque_existential_0(v27);
    (*(v7 + 8))(v9, v25);
    __swift_destroy_boxed_opaque_existential_0(&v28);
    sub_267DA84BC(v11);

    sub_267EF3998();
    swift_allocObject();
    v21 = sub_267EF3978();
    v22 = v2[5];
    v23 = v2[6];
    __swift_project_boxed_opaque_existential_0(v2 + 2, v22);
    (*(v23 + 8))(&v28, v22, v23);
    v24 = v26;
    sub_267EF43E8();
    type metadata accessor for DisambiguationListAdapter(0);
    swift_allocObject();
    return sub_267CF1BD0(v21, &v28, v24, 1);
  }

  v12 = v10;
  *&v28 = MEMORY[0x277D84F90];
  result = sub_267EF9BF8();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x26D609870](v14, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      sub_267E59EF0();

      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    while (v12 != v14);
    v11 = v28;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_267C50234()
{
  OUTLINED_FUNCTION_48_0();
  v126 = v0;
  v2 = v1;
  v137 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  v128 = (&v123 - v6);
  v7 = OUTLINED_FUNCTION_26_2();
  v127 = type metadata accessor for DirectInvocationUseCases(v7);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_60();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v123 - v13;
  sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v129 = v16;
  v130 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_0();
  v19 = v18 - v17;
  v138 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v136 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_60();
  v132 = v22 - v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  v133 = &v123 - v25;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v26);
  v135 = &v123 - v27;
  OUTLINED_FUNCTION_26_2();
  v28 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_0_0();
  v34 = v33 - v32;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v35 = sub_267EF8A08();
  v36 = __swift_project_value_buffer(v35, qword_280240FB0);
  v37 = *(v30 + 16);
  v139 = v2;
  v37(v34, v2, v28);
  v134 = v36;
  v38 = sub_267EF89F8();
  v39 = sub_267EF95C8();
  v40 = os_log_type_enabled(v38, v39);
  v131 = v19;
  v125 = v11;
  v124 = v14;
  if (v40)
  {
    v41 = OUTLINED_FUNCTION_48();
    v42 = OUTLINED_FUNCTION_52();
    v142[0] = v42;
    *v41 = 136315138;
    OUTLINED_FUNCTION_5_13();
    sub_267C58938(v43, v44, MEMORY[0x277D5C120]);
    v45 = sub_267EF9E58();
    v47 = v46;
    (*(v30 + 8))(v34, v28);
    v48 = sub_267BA33E8(v45, v47, v142);

    *(v41 + 4) = v48;
    _os_log_impl(&dword_267B93000, v38, v39, "#actionForPromptForContactDisambiguationInput(send) Received input %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v30 + 8))(v34, v28);
  }

  v49 = v135;
  sub_267EF4B88();
  v50 = v136;
  v51 = *(v136 + 88);
  v52 = v138;
  v53 = v51(v49, v138);
  v54 = *MEMORY[0x277D5C168];
  v55 = *(v50 + 8);
  v55(v49, v52);
  if (v53 == v54)
  {
    v56 = sub_267EF89F8();
    v57 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v57))
    {
      v58 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v58);
      v61 = "#actionForPromptForContactDisambiguationInput(send) Empty parse -> ignore";
LABEL_20:
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v59, v60, v61);
      OUTLINED_FUNCTION_32_0();
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v62 = v133;
  sub_267EF4B88();
  v63 = OUTLINED_FUNCTION_53_1();
  if ((v51)(v63) == *MEMORY[0x277D5C150])
  {
    v64 = OUTLINED_FUNCTION_53_1();
    v65(v64);
    v66 = v129;
    v67 = v130;
    v68 = v131;
    (*(v129 + 32))(v131, v62, v130);
    v69 = v128;
    sub_267B9CC04(v68, v128);
    if (__swift_getEnumTagSinglePayload(v69, 1, v127) == 1)
    {
      (*(v66 + 8))(v68, v67);
      sub_267B9F98C(v69, &unk_28022BBE0, qword_267EFD030);
    }

    else
    {
      OUTLINED_FUNCTION_17_6();
      v107 = v124;
      sub_267C58820(v69, v124, v108);
      OUTLINED_FUNCTION_16_5();
      v109 = v125;
      sub_267C588D8(v107, v125, v110);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_18_8();
        sub_267C58880(v109, v111);
        sub_267EF3E58();
        sub_267C58880(v107, v69);
        (*(v66 + 8))(v131, v67);
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_18_8();
      sub_267C58880(v107, v112);
      (*(v66 + 8))(v131, v67);
      sub_267C58880(v109, v69);
    }
  }

  else
  {
    v70 = OUTLINED_FUNCTION_53_1();
    (v55)(v70);
  }

  v71 = v132;
  sub_267EF4B88();
  sub_267E57DFC(v71, &v140);
  v72 = OUTLINED_FUNCTION_53_1();
  (v55)(v72);
  if (!v141)
  {
    sub_267B9F98C(&v140, &unk_28022BBF0, &unk_267F01C60);
    v56 = sub_267EF89F8();
    v80 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v80))
    {
      v81 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v81);
      v61 = "#actionForPromptForContactDisambiguationInput(send) Not and SMS input -> ignore";
      goto LABEL_20;
    }

LABEL_21:

    sub_267EF3E68();
    goto LABEL_41;
  }

  sub_267B9A5E8(&v140, v142);
  __swift_project_boxed_opaque_existential_0(v142, v143);
  v73 = OUTLINED_FUNCTION_26_0();
  if (v74(v73))
  {
    v75 = sub_267EF89F8();
    v76 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v76))
    {
      v77 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v77);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v78, v79, "#actionForPromptForContactDisambiguationInput Cancelled");
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF3E48();
  }

  else
  {
    v82 = *(v126 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver + 24);
    v83 = *(v126 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver + 32);
    __swift_project_boxed_opaque_existential_0((v126 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver), v82);
    v84 = sub_267EBE108(v142, v82, v83);
    v85 = sub_267EF89F8();
    v86 = sub_267EF95D8();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = OUTLINED_FUNCTION_48();
      *v87 = 134217984;
      *(v87 + 4) = v84[2];
      OUTLINED_FUNCTION_59_2(&dword_267B93000, v88, v89, "#actionForPromptForContactDisambiguationInput Found %ld recipients in SRR");
      OUTLINED_FUNCTION_32_0();
    }

    if (v84[2] && (v90 = v84[4], , , sub_267BAF0DC(v90)))
    {
      sub_267BBD0EC(0, (v90 & 0xC000000000000001) == 0, v90);
      if ((v90 & 0xC000000000000001) != 0)
      {
        v91 = MEMORY[0x26D609870](0, v90);
      }

      else
      {
        v91 = *(v90 + 32);
      }

      v92 = v91;

      v93 = v92;
      v94 = sub_267EF89F8();
      v95 = sub_267EF95D8();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = OUTLINED_FUNCTION_48();
        v97 = OUTLINED_FUNCTION_52();
        *&v140 = v97;
        *v96 = 136315138;
        v98 = [v93 displayName];
        v99 = sub_267EF9028();
        v101 = v100;

        v102 = sub_267BA33E8(v99, v101, &v140);

        *(v96 + 4) = v102;
        OUTLINED_FUNCTION_59_2(&dword_267B93000, v103, v104, "#actionForPromptForContactDisambiguationInput Found recipient '%s' in RRaaS");
        __swift_destroy_boxed_opaque_existential_0(v97);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v105 = *(v126 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_selectedPerson);
      *(v126 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_selectedPerson) = v93;
      v106 = v93;

      sub_267EF3E58();
    }

    else
    {

      v113 = v143;
      v114 = v144;
      __swift_project_boxed_opaque_existential_0(v142, v143);
      if (sub_267E58398(v113, v114) && (sub_267EC4E04(), v116 = v115, , v117 = *(v116 + 16), , v117))
      {
        sub_267EF3E58();
      }

      else
      {
        v118 = sub_267EF89F8();
        v119 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v119))
        {
          v120 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v120);
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v121, v122, "actionForPromptForContactDisambiguationInput# No contacts -> ignore");
          OUTLINED_FUNCTION_32_0();
        }

        sub_267EF3E68();
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v142);
LABEL_41:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C50C34()
{
  OUTLINED_FUNCTION_12();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229780, &qword_267EFE4B8);
  OUTLINED_FUNCTION_18(v5);
  v1[14] = OUTLINED_FUNCTION_2();
  v6 = type metadata accessor for SmsContactIntentNode(0);
  v1[15] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[16] = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  OUTLINED_FUNCTION_18(v7);
  v1[17] = OUTLINED_FUNCTION_2();
  v8 = type metadata accessor for DirectInvocationUseCases(0);
  v1[18] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v9 = sub_267EF4C08();
  v1[21] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[22] = v10;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v11 = sub_267EF4BE8();
  v1[25] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v1[26] = v12;
  v1[27] = OUTLINED_FUNCTION_2();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

void sub_267C50DF0(uint64_t a1)
{
  sub_267EF4B88();
  v2 = OUTLINED_FUNCTION_26_0();
  v4 = &unk_280240000;
  if (v3(v2) != *MEMORY[0x277D5C150])
  {
    (*(v1[22] + 8))(v1[24], v1[21]);
    goto LABEL_5;
  }

  v6 = v1[26];
  v5 = v1[27];
  v8 = v1[24];
  v7 = v1[25];
  v10 = v1[17];
  v9 = v1[18];
  (*(v1[22] + 96))(v8, v1[21]);
  (*(v6 + 32))(v5, v8, v7);
  sub_267B9CC04(v5, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v9) == 1)
  {
    v11 = v1[17];
    (*(v1[26] + 8))(v1[27], v1[25]);
    sub_267B9F98C(v11, &unk_28022BBE0, qword_267EFD030);
    goto LABEL_5;
  }

  v28 = v1[20];
  OUTLINED_FUNCTION_17_6();
  sub_267C58820(v29, v28, v30);
  OUTLINED_FUNCTION_16_5();
  v31 = OUTLINED_FUNCTION_66();
  sub_267C588D8(v31, v32, v33);
  OUTLINED_FUNCTION_26_0();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_267C58880(v1[20], type metadata accessor for DirectInvocationUseCases);
    v56 = OUTLINED_FUNCTION_66();
    v57(v56);
    v58 = OUTLINED_FUNCTION_37_1();
    sub_267C58880(v58, v59);
    goto LABEL_5;
  }

  v34 = v1[19];
  v36 = *v34;
  v35 = *(v34 + 8);
  if (qword_280228818 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v37 = sub_267EF8A08();
    __swift_project_value_buffer(v37, qword_280240FB0);

    v38 = sub_267EF89F8();
    v39 = sub_267EF95D8();

    v95 = v35;
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_48();
      v41 = OUTLINED_FUNCTION_52();
      v97 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_267BA33E8(v36, v35, &v97);
      OUTLINED_FUNCTION_57(&dword_267B93000, v42, v43, "#actionForPromptForContactDisambiguationInput(send) Item selection direct action with itemIdentifier=%s");
      __swift_destroy_boxed_opaque_existential_0(v41);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v44 = sub_267C516E8();
    v45 = sub_267BAF0DC(v44);
    for (i = 0; ; ++i)
    {
      if (v45 == i)
      {
        v35 = v36;

        v48 = 0;
        goto LABEL_42;
      }

      if ((v44 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x26D609870](i, v44);
      }

      else
      {
        if (i >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v47 = *(v44 + 8 * i + 32);
      }

      v48 = v47;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (sub_267BBDEAC() == v36 && v49 == v95)
      {
        v35 = v36;

LABEL_41:

LABEL_42:
        v65 = v1[13];
        v4 = &unk_280240000;
        v66 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_selectedPerson;
        v67 = *(v65 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_selectedPerson);
        *(v65 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_selectedPerson) = v48;
        v68 = v48;

        if (!v48)
        {
          v84 = v1[20];
          v97 = 0;
          v98 = 0xE000000000000000;
          sub_267EF9B68();
          MEMORY[0x26D608E60](0xD00000000000002ELL, 0x8000000267F13050);
          MEMORY[0x26D608E60](v35, v95);

          MEMORY[0x26D608E60](0x756F6620746F6E20, 0xEA0000000000646ELL);
          v85 = v97;
          v86 = v98;
          v87 = sub_267C266B0();
          OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v87);
          *v88 = v85;
          v88[1] = v86;
          swift_willThrow();
          OUTLINED_FUNCTION_4_13();
          sub_267C58880(v84, v89);
          v90 = OUTLINED_FUNCTION_44_0();
          v91(v90);
          goto LABEL_32;
        }

        v69 = sub_267EF89F8();
        v70 = sub_267EF95D8();

        v71 = os_log_type_enabled(v69, v70);
        v72 = v1[26];
        v73 = v1[27];
        v74 = v1[25];
        v75 = v1[20];
        if (v71)
        {
          v96 = v1[27];
          v76 = OUTLINED_FUNCTION_48();
          v77 = OUTLINED_FUNCTION_52();
          v97 = v77;
          *v76 = 136315138;
          v78 = *(v65 + v66);
          v1[9] = v78;
          v79 = v78;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229790, &qword_267EFE4C0);
          v80 = sub_267EF9098();
          v82 = sub_267BA33E8(v80, v81, &v97);

          *(v76 + 4) = v82;
          _os_log_impl(&dword_267B93000, v69, v70, "#actionForPromptForContactDisambiguationInput(send) Selected person by direct invocation %s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v77);
          v4 = &unk_280240000;
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_32_0();

          OUTLINED_FUNCTION_4_13();
          sub_267C58880(v75, v83);
          (*(v72 + 8))(v96, v74);
        }

        else
        {

          OUTLINED_FUNCTION_4_13();
          sub_267C58880(v75, v92);
          (*(v72 + 8))(v73, v74);
        }

LABEL_5:
        v12 = *(v1[13] + v4[204]);
        if (v12)
        {
          sub_267BA9F38(0, &qword_280229788, 0x277D47630);
          v13 = v12;
          v14 = sub_267E7E128(v13);
          v1[8] = v14;
          sub_267EF4508();

          goto LABEL_7;
        }

        v15 = v1[23];
        sub_267EF4B88();
        sub_267E57DFC(v15, v1 + 2);
        v16 = OUTLINED_FUNCTION_26_0();
        v17(v16);
        if (v1[5])
        {
          __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
          v18 = OUTLINED_FUNCTION_66();
          v20 = sub_267E58398(v18, v19);
          __swift_destroy_boxed_opaque_existential_0(v1 + 2);
          if (v20)
          {
            v22 = v1[14];
            v21 = v1[15];
            sub_267EC4E04();
            sub_267C8F068(v23, v22);

            if (__swift_getEnumTagSinglePayload(v22, 1, v21) == 1)
            {
              v24 = v1[14];

              v25 = &qword_280229780;
              v26 = &qword_267EFE4B8;
              v27 = v24;
              goto LABEL_30;
            }

            sub_267C58820(v1[14], v1[16], type metadata accessor for SmsContactIntentNode);
            sub_267C516E8();
            v60 = OUTLINED_FUNCTION_37_1();
            v62 = sub_267E63E64(v60, v61);

            if (v62)
            {
              sub_267BA9F38(0, &qword_280229788, 0x277D47630);
              v63 = v62;
              v64 = sub_267E7E128(v63);
              v1[7] = v64;
              sub_267EF4508();

              OUTLINED_FUNCTION_23_5();
LABEL_7:

              OUTLINED_FUNCTION_1();
LABEL_33:
              OUTLINED_FUNCTION_15();

              __asm { BRAA            X1, X16 }
            }

            v93 = sub_267C266B0();
            OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v93);
            *v94 = 0xD00000000000003FLL;
            v94[1] = 0x8000000267F13010;
            swift_willThrow();

            OUTLINED_FUNCTION_23_5();
LABEL_32:

            OUTLINED_FUNCTION_17();
            goto LABEL_33;
          }
        }

        else
        {
          v25 = &unk_28022BBF0;
          v26 = &unk_267F01C60;
          v27 = (v1 + 2);
LABEL_30:
          sub_267B9F98C(v27, v25, v26);
        }

        v52 = sub_267C266B0();
        OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v52);
        *v53 = 0xD000000000000030;
        v53[1] = 0x8000000267F12FD0;
        swift_willThrow();
        goto LABEL_32;
      }

      v35 = v36;
      v51 = sub_267EF9EA8();

      if (v51)
      {
        goto LABEL_41;
      }

      v36 = v35;
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }
}

uint64_t sub_267C516E8()
{
  v0 = sub_267EF39C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229778, &qword_267EFE4B0);
  v4 = sub_267EF4698();
  v16 = MEMORY[0x277D84F90];
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = *(v1 + 16);
    v6 = v1 + 16;
    v13 = v4;
    v14 = v7;
    v8 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v9 = *(v6 + 56);
    v10 = MEMORY[0x277D84F90];
    do
    {
      v14(v3, v8, v0);
      sub_267EF39B8();
      (*(v6 - 8))(v3, v0);
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v11 = swift_dynamicCast();
      if ((v11 & 1) != 0 && v15)
      {
        MEMORY[0x26D608F90](v11);
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v10 = v16;
      }

      v8 += v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v10;
}

uint64_t sub_267C518F8()
{
  OUTLINED_FUNCTION_12();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v5 = sub_267EF4228();
  v1[23] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[24] = v6;
  v1[25] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF4158();
  v1[26] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[27] = v8;
  v1[28] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF2E38();
  v1[29] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[30] = v10;
  v1[31] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267C51A38()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[22];
  v5 = sub_267C516E8();
  v6 = v4[5];
  v7 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v6);
  OUTLINED_FUNCTION_14_4();
  v8(v6, v7);
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_267EF3B68();
  type metadata accessor for ContactIdOrBase64PersonIdentifierProvider();
  swift_initStackObject();
  sub_267E6F8FC(v5, v2, v0 + 2);
  (*(v1 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_267DA84BC(v5);
  v9 = sub_267EF3998();
  OUTLINED_FUNCTION_97(v9);
  v0[32] = sub_267EF3978();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  sub_267EF4908();
  OUTLINED_FUNCTION_21_4(v4 + 2);
  v10 = OUTLINED_FUNCTION_10_0();
  v11(v10);
  sub_267DA149C();
  v0[33] = v12;

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v13 = v4[5];
  v14 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v13);
  (*(v14 + 8))(v13, v14);
  sub_267C54F98();

  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[34] = v15;
  *v15 = v16;
  v15[1] = sub_267C51CB0;
  v17 = v0[25];

  return MEMORY[0x2821BB9A8](v17);
}

uint64_t sub_267C51CB0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C51DB0()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[22];
  v6 = swift_task_alloc();
  v0[36] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v1;
  v6[5] = v3;
  v6[6] = v5;
  OUTLINED_FUNCTION_10(&unk_267F00B20);
  v12 = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[37] = v8;
  *v8 = v9;
  v8[1] = sub_267C51EA0;
  v10 = v0[19];

  return v12(v10, sub_267C58720, v6);
}

uint64_t sub_267C51EA0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 304) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C51FAC()
{
  OUTLINED_FUNCTION_56();

  v0 = OUTLINED_FUNCTION_45_5();
  v1(v0);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267C52038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();

  v10 = OUTLINED_FUNCTION_44_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_26_0();
  v13(v12);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_36_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_267C520E4()
{
  OUTLINED_FUNCTION_62();

  v0 = OUTLINED_FUNCTION_37_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_45_5();
  v3(v2);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267C521A8(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v46 = a6;
  v47 = a4;
  v48 = a5;
  v49 = a1;
  v43 = a3;
  v50 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v37 - v9;
  v10 = sub_267EF4CC8();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_267EF4158();
  v12 = *(v44 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v44);
  v45 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_267EF4228();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a7[5];
  v18 = a7[6];
  __swift_project_boxed_opaque_existential_0(a7 + 2, v19);
  (*(v18 + 8))(v55, v19, v18);
  v38 = a7[15];
  __swift_project_boxed_opaque_existential_0(v55, v56);
  LOBYTE(v18) = sub_267EF3C78();
  v20 = v56;
  v21 = v57;
  __swift_project_boxed_opaque_existential_0(v55, v56);
  if (v18)
  {
    LODWORD(v42) = sub_267BCD18C(v20, v21);
    v22 = *(v15 + 16);
    v37 = v14;
    v22(&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v14);
    sub_267B9AFEC(v55, &v51);
    v23 = v44;
    (*(v12 + 16))(v45, v46, v44);
    v24 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
    v27 = (*(v12 + 80) + v26 + 8) & ~*(v12 + 80);
    v28 = swift_allocObject();
    v29 = v50;
    *(v28 + 16) = v49;
    *(v28 + 24) = v29;
    (*(v15 + 32))(v28 + v24, v17, v37);
    sub_267B9A5E8(&v51, v28 + v25);
    *(v28 + v26) = v48;
    (*(v12 + 32))(v28 + v27, v45, v23);

    sub_267CF1150(v43, v55, v38, (v42 & 1) == 0, sub_267C58730, v28);
  }

  else
  {
    sub_267EF3BC8();
    v30 = v39;
    v31 = v44;
    (*(v12 + 16))(v39, v46, v44);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v32 = v40;
    sub_267EF3F68();
    sub_267B9F98C(&v51, &unk_28022CF80, &unk_267EFED50);
    sub_267B9F98C(v30, &unk_28022AE40, &unk_267EFCB60);
    v33 = v42;
    *(&v52 + 1) = v42;
    v53 = MEMORY[0x277D5C1D8];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v51);
    v35 = v41;
    (*(v41 + 16))(boxed_opaque_existential_0, v32, v33);
    v54 = 0;
    v49(&v51);
    (*(v35 + 8))(v32, v33);
    sub_267B9F98C(&v51, &unk_28022A480, &unk_267F029F0);
  }

  return __swift_destroy_boxed_opaque_existential_0(v55);
}

void sub_267C526E0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_267EF3E78();
  OUTLINED_FUNCTION_58();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_60();
  v64 = (v8 - v9);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  sub_267EF3868();
  OUTLINED_FUNCTION_58();
  v71 = v14;
  v72 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v69 = v16 - v15;
  OUTLINED_FUNCTION_26_2();
  sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v67 = v18;
  v68 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v66 = v20 - v19;
  OUTLINED_FUNCTION_26_2();
  v21 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_0();
  v27 = v26 - v25;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v28 = sub_267EF8A08();
  v29 = __swift_project_value_buffer(v28, qword_280240FB0);
  v30 = *(v23 + 16);
  v70 = v1;
  v30(v27, v1, v21);
  v65 = v29;
  v31 = sub_267EF89F8();
  v32 = sub_267EF95C8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_48();
    v62 = v3;
    v34 = v33;
    v35 = OUTLINED_FUNCTION_52();
    v63 = v4;
    v61 = v35;
    v73 = v35;
    *v34 = 136315138;
    OUTLINED_FUNCTION_5_13();
    sub_267C58938(v36, v37, MEMORY[0x277D5C120]);
    v38 = sub_267EF9E58();
    v39 = v12;
    v40 = v6;
    v42 = v41;
    (*(v23 + 8))(v27, v21);
    v43 = sub_267BA33E8(v38, v42, &v73);
    v6 = v40;
    v12 = v39;

    *(v34 + 4) = v43;
    _os_log_impl(&dword_267B93000, v31, v32, "actionForPromptForContactDisambiguationInput# Received input %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    v4 = v63;
    OUTLINED_FUNCTION_32_0();
    v3 = v62;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v23 + 8))(v27, v21);
  }

  v44 = v66;
  sub_267EF4B88();
  v45 = v69;
  sub_267EBF390(v69);
  (*(v67 + 8))(v44, v68);
  v47 = v71;
  v46 = v72;
  v48 = (*(v71 + 88))(v45, v72);
  if (v48 == *MEMORY[0x277D5B970])
  {
    sub_267EF3E48();
  }

  else if (v48 == *MEMORY[0x277D5B978] || v48 == *MEMORY[0x277D5B968])
  {
    sub_267EF3E58();
  }

  else
  {
    sub_267EF3E68();
    (*(v47 + 8))(v45, v46);
  }

  v50 = *(v6 + 16);
  v50(v12, v3, v4);
  v51 = sub_267EF89F8();
  v52 = sub_267EF95D8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_48();
    v54 = v6;
    v55 = OUTLINED_FUNCTION_52();
    v73 = v55;
    *v53 = 136315138;
    v50(v64, v12, v4);
    sub_267EF9098();
    (*(v54 + 8))(v12, v4);
    v56 = OUTLINED_FUNCTION_44_0();
    v59 = sub_267BA33E8(v56, v57, v58);

    *(v53 + 4) = v59;
    _os_log_impl(&dword_267B93000, v51, v52, "actionForPromptForContactDisambiguationInput# Result action %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v6 + 8))(v12, v4);
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C52C54()
{
  OUTLINED_FUNCTION_12();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_267EF3868();
  v0[4] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF4C08();
  v0[7] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C52D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v11 = v10[6];
  sub_267EF4B88();
  sub_267EBF390(v11);
  v12 = OUTLINED_FUNCTION_26_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_44_0();
  v16 = v15(v14);
  if (v16 == *MEMORY[0x277D5B978])
  {
    v17 = MEMORY[0x277D5BED8];
LABEL_5:
    v18 = v10[2];
    v19 = *v17;
    sub_267EF44F8();
    OUTLINED_FUNCTION_22();
    (*(v20 + 104))(v18, v19);

    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  if (v16 == *MEMORY[0x277D5B968])
  {
    v17 = MEMORY[0x277D5BED0];
    goto LABEL_5;
  }

  v22 = v10[5];
  v21 = v10[6];
  v23 = v10[4];
  v24 = sub_267C266B0();
  OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v24);
  *v25 = 0xD000000000000041;
  v25[1] = 0x8000000267F12F80;
  swift_willThrow();
  (*(v22 + 8))(v21, v23);

  OUTLINED_FUNCTION_17();
LABEL_7:
  OUTLINED_FUNCTION_36_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_267C52EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C52F0C()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipResponses;
  v3 = *(v1 + 112);
  OUTLINED_FUNCTION_10(&unk_267EFE490);
  v11 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v5;
  *v5 = v6;
  v5[1] = sub_267C52FCC;
  v7 = v0[4];
  v8 = v0[2];
  v9 = v0[3];

  return v11(v8, v9, v7, v1 + v2, v3);
}

uint64_t sub_267C52FCC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267C530AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_267EF8178();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  sub_267EF3CF8();
  v6[21] = swift_task_alloc();
  v8 = sub_267EF48A8();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C531FC, 0, 0);
}

uint64_t sub_267C531FC()
{
  OUTLINED_FUNCTION_12();
  __swift_project_boxed_opaque_existential_0(*(v0 + 120), *(*(v0 + 120) + 24));
  v1 = sub_267EF8F28();
  *(v0 + 200) = v1;
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_267C532D4;
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  return MEMORY[0x2821BB980](v4, v3, v1);
}

uint64_t sub_267C532D4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 216) = v5;
  *(v3 + 224) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C533DC()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[17];
  sub_267EF3C98();
  sub_267EF47A8();
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v2);
  OUTLINED_FUNCTION_14_4();
  v4(v2, v3);
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_26_0();
  v5 = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v5)
  {
    v6 = v0[27];
    v7 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v7);
    v0[29] = sub_267EF4188();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v9 = OUTLINED_FUNCTION_47_3(v8);
    v0[30] = v9;
    *(v9 + 16) = xmmword_267EFCA40;
    *(v9 + 32) = v6;
    v30 = OUTLINED_FUNCTION_25_3(MEMORY[0x277D5BD50]);
    v10 = v6;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[31] = v11;
    *v11 = v12;
    v11[1] = sub_267C5372C;
    v13 = v0[24];
    v14 = v0[12];

    return (v30)(v14, v9, v13);
  }

  else
  {
    v16 = v0[27];
    v18 = v0[19];
    v17 = v0[20];
    v19 = v0[18];
    OUTLINED_FUNCTION_22_0();
    sub_267DA18D4();
    v20 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v20);
    v0[32] = sub_267EF4188();
    v0[10] = v19;
    OUTLINED_FUNCTION_19_6();
    v0[11] = sub_267C58938(v21, v22, MEMORY[0x277D5D398]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    (*(v18 + 16))(boxed_opaque_existential_0, v17, v19);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v25 = OUTLINED_FUNCTION_47_3(v24);
    v0[33] = v25;
    *(v25 + 16) = xmmword_267EFCA40;
    *(v25 + 32) = v16;
    v31 = OUTLINED_FUNCTION_25_3(MEMORY[0x277D5BD40]);
    v26 = v16;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[34] = v27;
    *v27 = v28;
    v27[1] = sub_267C538D0;
    v29 = OUTLINED_FUNCTION_54_4();

    return (v31)(v29);
  }
}

uint64_t sub_267C536AC()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267C5372C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C53848()
{
  OUTLINED_FUNCTION_56();

  v1 = OUTLINED_FUNCTION_43_5();
  v2(v1);

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_267C538D0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C539F4()
{
  OUTLINED_FUNCTION_56();

  v1 = OUTLINED_FUNCTION_66();
  v2(v1);
  v3 = OUTLINED_FUNCTION_43_5();
  v4(v3);

  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t sub_267C53A98()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_267BBD07C;

  return MEMORY[0x2821BBAE0](v4, v2);
}

uint64_t sub_267C53B34(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C53B4C()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipTemplateProviding;
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipResponses;
  v4 = *(v1 + 112);
  OUTLINED_FUNCTION_10(&unk_267EFE480);
  v11 = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v6;
  *v6 = v7;
  v6[1] = sub_267C53C1C;
  v8 = v0[3];
  v9 = v0[2];

  return v11(v9, v8, v1 + v2, v1 + v3, v4);
}

uint64_t sub_267C53C1C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267C53CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a2;
  v6[14] = a4;
  v6[12] = a1;
  v6[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v6[18] = swift_task_alloc();
  v7 = sub_267EF83E8();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  v8 = sub_267EF8178();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v6[25] = swift_task_alloc();
  v9 = sub_267EF2BA8();
  v6[26] = v9;
  v6[27] = *(v9 - 8);
  v6[28] = swift_task_alloc();
  sub_267EF3CF8();
  v6[29] = swift_task_alloc();
  v10 = sub_267EF48A8();
  v6[30] = v10;
  v6[31] = *(v10 - 8);
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C53F78, 0, 0);
}

uint64_t sub_267C53F78()
{
  OUTLINED_FUNCTION_12();
  __swift_project_boxed_opaque_existential_0(*(v0 + 112), *(*(v0 + 112) + 24));
  v1 = sub_267EF8F28();
  *(v0 + 264) = v1;
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  *v2 = v0;
  v2[1] = sub_267C54050;
  v3 = *(v0 + 104);

  return MEMORY[0x2821BB988](v3, v1);
}

uint64_t sub_267C54050()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 280) = v5;
  *(v3 + 288) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C54158()
{
  v1 = v0[35];
  v2 = v0[16];
  sub_267EF3C88();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  v3 = [v1 catId];
  sub_267EF9028();

  OUTLINED_FUNCTION_37_1();
  sub_267EF47D8();
  __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
  OUTLINED_FUNCTION_14_4();
  v4 = OUTLINED_FUNCTION_26_0();
  v5(v4);
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_66();
  v6 = sub_267DBF878();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if ((v6 & 1) == 0)
  {
    v29 = v0[35];
    v30 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v30);
    v0[37] = sub_267EF4188();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v32 = OUTLINED_FUNCTION_47_3(v31);
    v0[38] = v32;
    *(v32 + 16) = xmmword_267EFCA40;
    *(v32 + 32) = v29;
    OUTLINED_FUNCTION_25_3(MEMORY[0x277D5BD50]);
    v33 = v29;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[39] = v34;
    *v34 = v35;
    v34[1] = sub_267C54658;
    OUTLINED_FUNCTION_15();

    __asm { BR              X3 }
  }

  v7 = v0[25];
  v8 = v0[26];
  sub_267EF2B88();
  result = __swift_getEnumTagSinglePayload(v7, 1, v8);
  if (result != 1)
  {
    v10 = v0[27];
    v11 = v0[28];
    v12 = v0[26];
    v38 = v0[24];
    v39 = v0[23];
    v13 = v0[21];
    v40 = v0[22];
    v41 = v0[35];
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[18];
    (*(v10 + 32))(v11, v0[25], v12);
    (*(v10 + 16))(v13, v11, v12);
    (*(v14 + 104))(v13, *MEMORY[0x277D5D6E0], v15);
    sub_267C7FE68();
    sub_267EFA028();
    sub_267B9F98C(v16, &qword_2802295B8, &qword_267EFDCB0);
    sub_267EF83F8();
    (*(v39 + 104))(v38, *MEMORY[0x277D5D358], v40);
    v17 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v17);
    v0[40] = sub_267EF4188();
    v0[10] = v40;
    OUTLINED_FUNCTION_19_6();
    v0[11] = sub_267C58938(v18, v19, MEMORY[0x277D5D398]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    (*(v39 + 16))(boxed_opaque_existential_0, v38, v40);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v22 = OUTLINED_FUNCTION_47_3(v21);
    v0[41] = v22;
    *(v22 + 16) = xmmword_267EFCA40;
    *(v22 + 32) = v41;
    OUTLINED_FUNCTION_25_3(MEMORY[0x277D5BD40]);
    v24 = v23;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[42] = v25;
    *v25 = v26;
    v25[1] = sub_267C5481C;
    OUTLINED_FUNCTION_54_4();
    OUTLINED_FUNCTION_15();

    __asm { BR              X4 }
  }

  __break(1u);
  return result;
}

uint64_t sub_267C545AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_267C54658()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C54774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();

  v11 = OUTLINED_FUNCTION_30_3();
  v12(v11);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_36_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_267C5481C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C54940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();

  v11 = OUTLINED_FUNCTION_37_1();
  v12(v11);
  v13 = OUTLINED_FUNCTION_66();
  v14(v13);
  v15 = OUTLINED_FUNCTION_30_3();
  v16(v15);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_36_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_267C54A20()
{
  OUTLINED_FUNCTION_12();
  v1[17] = v2;
  v1[18] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v1[19] = OUTLINED_FUNCTION_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  OUTLINED_FUNCTION_18(v4);
  v1[20] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF4228();
  v1[21] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[22] = v6;
  v1[23] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C54B1C()
{
  v12 = v0;
  v1 = v0[20];
  v2 = v0[18];
  sub_267EF7AE8();
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v3);
  (*(v4 + 8))(v11, v3, v4);
  v5 = sub_267EF7118();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  v6 = sub_267DE77AC(v11, v1);
  v0[24] = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[25] = v7;
  *v7 = v8;
  v7[1] = sub_267C54C4C;
  v9 = v0[23];

  return sub_267E4AEA0(v9, v6);
}

uint64_t sub_267C54C4C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C54D4C()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  OUTLINED_FUNCTION_21_4((v2 + 16));
  v4 = OUTLINED_FUNCTION_10_0();
  v5(v4);
  OUTLINED_FUNCTION_21_4((v2 + 16));
  v6 = OUTLINED_FUNCTION_10_0();
  v7(v6);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v8 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v8);
  v9 = sub_267EF4CC8();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v3[3] = v9;
  v3[4] = v10;
  __swift_allocate_boxed_opaque_existential_0(v3);
  sub_267EF3F98();
  sub_267B9F98C(v0 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v1, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v11 = OUTLINED_FUNCTION_44_0();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_1();

  return v13();
}

uint64_t sub_267C54F18()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_17();

  return v0();
}

void sub_267C54F98()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v74 = v2;
  v73 = v3;
  v4 = sub_267EF53D8();
  OUTLINED_FUNCTION_58();
  v76 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_60();
  v71 = (v7 - v8);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v9);
  v72 = (&v67 - v10);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  sub_267EF2E38();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v17 = v16 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCE30;
  if (qword_280228898 != -1)
  {
    swift_once();
  }

  v75 = v13;
  v19 = qword_280241050;
  v20 = sub_267EF54C8();
  v21 = MEMORY[0x277D5E210];
  *(inited + 56) = v20;
  *(inited + 64) = v21;
  *(inited + 32) = v19;
  v22 = qword_280228888;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_280241040;
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  *(inited + 104) = sub_267C586C4(&qword_280229758, &unk_28022CF00, &unk_267EFE460);
  *(inited + 72) = v23;
  v24 = qword_280228870;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_280241028;
  *(inited + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229760, &unk_267F004C0);
  *(inited + 144) = sub_267C586C4(&qword_280229768, &qword_280229760, &unk_267F004C0);
  *(inited + 112) = v25;
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);

  sub_267EF3B68();
  type metadata accessor for ContactIdOrBase64PersonIdentifierProvider();
  v26 = swift_initStackObject();
  v27 = v74;
  sub_267E6FE5C(v74, v17, v26, v28, v29, v30, v31, v32, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77[0], v77[1]);
  v34 = v33;
  v35 = OUTLINED_FUNCTION_50_1();
  v36(v35);
  sub_267C37CA8(inited, v34, v1);

  swift_setDeallocating();
  sub_267DB70BC();
  v37 = v75;
  sub_267C55710(v27);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v38 = sub_267EF8A08();
  __swift_project_value_buffer(v38, qword_280240FB0);
  v39 = v76;
  v40 = *(v76 + 16);
  v41 = v72;
  v40(v72, v37, v4);
  v42 = sub_267EF89F8();
  HIDWORD(v70) = sub_267EF95D8();
  if (os_log_type_enabled(v42, BYTE4(v70)))
  {
    v43 = OUTLINED_FUNCTION_48();
    v68 = v43;
    v69 = OUTLINED_FUNCTION_52();
    v78 = v69;
    *v43 = 136315138;
    v44 = v71;
    v40(v71, v41, v4);
    sub_267EF5458();
    v77[3] = v4;
    v77[4] = sub_267C58938(&qword_28022BAF0, MEMORY[0x277D5DC70], MEMORY[0x277D5DC50]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v77);
    v40(boxed_opaque_existential_0, v44, v4);
    v46 = sub_267EF5448();
    v48 = v47;
    v67 = v40;
    v49 = v4;
    v50 = *(v76 + 8);
    v50(v44, v4);
    v72 = v50;
    v50(v41, v4);
    __swift_destroy_boxed_opaque_existential_0(v77);
    v51 = sub_267BA33E8(v46, v48, &v78);
    v39 = v76;

    v52 = v68;
    *(v68 + 1) = v51;
    _os_log_impl(&dword_267B93000, v42, BYTE4(v70), "UnsetRelationshipContactDisambiguation# submitting NLv4 dialog act: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    v37 = v75;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v53 = v67;
  }

  else
  {

    v72 = *(v39 + 8);
    v72(v41, v4);
    v53 = v40;
    v49 = v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v54 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_267EFC020;
  v53(v55 + v54, v37, v49);
  sub_267EF4088();
  v56 = sub_267E7151C();

  v57 = sub_267EF89F8();
  v58 = sub_267EF95D8();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = OUTLINED_FUNCTION_48();
    v60 = OUTLINED_FUNCTION_52();
    v77[0] = v60;
    *v59 = 136315138;
    v61 = sub_267EF8AE8();
    v62 = MEMORY[0x26D608FD0](v56, v61);
    v64 = sub_267BA33E8(v62, v63, v77);

    *(v59 + 4) = v64;
    v37 = v75;
    OUTLINED_FUNCTION_57(&dword_267B93000, v65, v66, "UnsetRelationshipContactDisambiguation# Donating RRaaS entities: %s");
    __swift_destroy_boxed_opaque_existential_0(v60);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF4058();
  v72(v37, v49);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C55710(uint64_t a1)
{
  v19 = MEMORY[0x277D84F90];
  result = sub_267BAF0DC(a1);
  if (result)
  {
    v3 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D609870](v4, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v7 = sub_267EF8A08();
      __swift_project_value_buffer(v7, qword_280240FB0);
      v8 = v6;
      v9 = sub_267EF89F8();
      v10 = sub_267EF95D8();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = OUTLINED_FUNCTION_48();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        *(v11 + 4) = v8;
        *v12 = v8;
        v13 = v8;
        _os_log_impl(&dword_267B93000, v9, v10, "SendContactDisambiguation# adding context for intentPerson %@", v11, 0xCu);
        sub_267B9F98C(v12, &unk_280229E30, &unk_267EFC270);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v14 = sub_267EF6268();
      OUTLINED_FUNCTION_97(v14);
      sub_267EF6258();
      v15 = sub_267EF6168();
      OUTLINED_FUNCTION_97(v15);
      sub_267EF6158();
      v16 = [v8 displayName];
      sub_267EF9028();

      OUTLINED_FUNCTION_50_1();
      sub_267EF6148();

      sub_267EF6218();

      v17 = sub_267EF6448();
      OUTLINED_FUNCTION_97(v17);
      sub_267EF6438();
      sub_267EF61F8();

      MEMORY[0x26D608F90](v18);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      ++v4;
      OUTLINED_FUNCTION_50_1();
      sub_267EF9368();
    }

    while (v3 != v4);
  }

  sub_267BC8938();
}

void sub_267C559F8()
{
  v1 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_relationshipLabel;
  sub_267EF42F8();
  OUTLINED_FUNCTION_22();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipTemplateProviding));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipResponses));
  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_selectedPerson);
}

char *sub_267C55A88()
{
  v0 = sub_267B9DCC8();
  v1 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_relationshipLabel;
  sub_267EF42F8();
  OUTLINED_FUNCTION_22();
  (*(v2 + 8))(&v0[v1]);
  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipTemplateProviding]);
  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipResponses]);

  return v0;
}

uint64_t sub_267C55B18()
{
  sub_267C55A88();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SendMessageUnsetRelationshipFlowStrategy(uint64_t a1)
{
  result = qword_280229738;
  if (!qword_280229738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267C55BC0(uint64_t a1)
{
  result = sub_267EF42F8();
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

uint64_t sub_267C55C64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267C4ECD4(a1);
}

uint64_t sub_267C55D00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267C4ED80();
}

uint64_t sub_267C55DB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BBD07C;

  return sub_267C53B34(a1, a2);
}

uint64_t sub_267C55E5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267C53A98();
}

uint64_t sub_267C55EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821BA148](a1, a2, v9, a4);
}

uint64_t sub_267C55FE8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BBD07C;

  return sub_267C4F4C0(a1, a2);
}

uint64_t sub_267C56094()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267C4F960();
}

uint64_t sub_267C56140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821BA150](a1, a2, a3, v11, a5);
}

uint64_t sub_267C56210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821BA158](a1, a2, a3, v11, a5);
}

uint64_t sub_267C562E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821BA140](a1, a2, a3, v11, a5);
}

void sub_267C563B0()
{
  type metadata accessor for SendMessageUnsetRelationshipFlowStrategy(0);

  JUMPOUT(0x26D602FC0);
}

uint64_t sub_267C5642C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_267C564C8;

  return sub_267C4FE88(a2);
}

uint64_t sub_267C564C8()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_267C565C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267C50C34();
}

uint64_t sub_267C56674()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267C518F8();
}

uint64_t sub_267C56728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821BA160](a1, a2, a3, v11, a5);
}

uint64_t sub_267C567F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821BA168](a1, a2, a3, v11, a5);
}

uint64_t sub_267C568E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267C52C54();
}

uint64_t sub_267C56980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267BBD07C;

  return sub_267C52EF4(a1, a2, a3);
}

uint64_t sub_267C56A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_267BBD07C;

  return MEMORY[0x2821BA110](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_267C56B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_267BBD07C;

  return MEMORY[0x2821BA118](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_267C56BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_267BBD07C;

  return MEMORY[0x2821BA128](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_267C56CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_267BBD07C;

  return MEMORY[0x2821BA120](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_267C56DB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267C54A20();
}

uint64_t sub_267C56E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v48 - v5;
  v7 = sub_267EF5B58();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v56 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SmsContactIntentNode(0);
  v10 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_267EF59A8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v59 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v48 - v18;
  MEMORY[0x28223BE20](v17);
  if (a1)
  {
    v53 = v8;
    v49 = v48 - v20;
    v51 = a2;

    v50 = a1;
    sub_267EC4E04();
    v22 = *(v21 + 16);
    if (v22)
    {
      v58 = v7;
      v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v48[1] = v21;
      v24 = v21 + v23;
      v57 = *(v10 + 72);
      v25 = v53++;
      v54 = (v25 + 4);
      v52 = v14 + 32;
      v26 = MEMORY[0x277D84F90];
      v55 = v6;
      do
      {
        sub_267C588D8(v24, v12, type metadata accessor for SmsContactIntentNode);
        if (qword_280228850 != -1)
        {
          swift_once();
        }

        sub_267C58938(&qword_2802297A0, type metadata accessor for SmsContactIntentNode, &unk_267F07B20);
        sub_267EF5B08();
        v27 = v58;
        if (__swift_getEnumTagSinglePayload(v6, 1, v58) == 1)
        {
          sub_267C58880(v12, type metadata accessor for SmsContactIntentNode);
          sub_267B9F98C(v6, &qword_280229798, &unk_267EFE4D0);
        }

        else
        {
          v28 = v6;
          v29 = v13;
          v30 = v19;
          v31 = v56;
          (*v54)(v56, v28, v27);
          sub_267EF5998();
          (*v53)(v31, v27);
          sub_267C58880(v12, type metadata accessor for SmsContactIntentNode);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_267C7139C();
            v26 = v33;
          }

          v32 = *(v26 + 16);
          v19 = v30;
          if (v32 >= *(v26 + 24) >> 1)
          {
            sub_267C7139C();
            v26 = v34;
          }

          v13 = v29;
          *(v26 + 16) = v32 + 1;
          (*(v14 + 32))(v26 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v32, v59, v29);
          v6 = v55;
        }

        v24 += v57;
        --v22;
      }

      while (v22);
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    v37 = 0;
    v38 = *(v26 + 16);
    while (1)
    {
      if (v38 == v37)
      {

        v40 = sub_267EF4788();
        v41 = v51;
        v42 = 1;
        return __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
      }

      if (v37 >= *(v26 + 16))
      {
        break;
      }

      (*(v14 + 16))(v19, v26 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v37, v13);
      sub_267EF5D68();
      if (v39)
      {

        v43 = v49;
        (*(v14 + 32))(v49, v19, v13);
        v44 = sub_267EF5DC8();
        v59 = v45;
        v60 = v44;
        sub_267EF5DA8();
        v58 = v46;
        sub_267EF5D38();
        sub_267EF5D98();
        sub_267EF5DB8();
        v47 = v51;
        sub_267EF4778();

        (*(v14 + 8))(v43, v13);
        v40 = sub_267EF4788();
        v41 = v47;
        v42 = 0;
        return __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
      }

      ++v37;
      result = (*(v14 + 8))(v19, v13);
    }

    __break(1u);
  }

  else
  {
    v36 = sub_267EF4788();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v36);
  }

  return result;
}

uint64_t sub_267C57590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = *(a1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_recipientPersons);
    if (v3 >> 62)
    {
      if (sub_267EF9A68())
      {
        goto LABEL_4;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      sub_267BBD0EC(0, (v3 & 0xC000000000000001) == 0, v3);
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D609870](0, v3);
      }

      else
      {
      }

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
        v8 = swift_slowAlloc();
        v15 = v8;
        *v7 = 136315138;
        sub_267EF5C28();

        v9 = sub_267EF9098();
        v11 = sub_267BA33E8(v9, v10, &v15);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_267B93000, v5, v6, "UnsetRelationship# Found relationship person %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x26D60A7B0](v8, -1, -1);
        MEMORY[0x26D60A7B0](v7, -1, -1);
      }

      if (sub_267EF5BF8())
      {
        sub_267EF5EE8();
      }

      if (sub_267EF5BF8())
      {
        sub_267EF5EF8();
      }

      if (sub_267EF5BF8())
      {
        sub_267EF5F08();
      }

      sub_267EF5C18();
      if (sub_267EF5BF8())
      {
        sub_267EF5ED8();
      }

      sub_267EF4778();

      v12 = sub_267EF4788();
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v12);
    }
  }

  v14 = sub_267EF4788();

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v14);
}

uint64_t sub_267C578DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EF53D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  sub_267EF4148();
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v12 = swift_allocObject();
  v47 = xmmword_267EFC020;
  *(v12 + 16) = xmmword_267EFC020;
  *(v12 + 32) = sub_267BB90E4(1);
  *(v12 + 40) = v13;
  sub_267EF4108();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_267EFCE30;
  if (qword_280228898 != -1)
  {
    swift_once();
  }

  *(v14 + 32) = sub_267BCEF14();
  *(v14 + 40) = v15;
  if (qword_280228870 != -1)
  {
    swift_once();
  }

  *(v14 + 48) = sub_267BCEF2C();
  *(v14 + 56) = v16;
  if (qword_280228888 != -1)
  {
    swift_once();
  }

  *(v14 + 64) = sub_267BCEF48();
  *(v14 + 72) = v17;
  sub_267EF4118();
  sub_267EF4098();
  sub_267C583EC();
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v18 = sub_267EF8A08();
  __swift_project_value_buffer(v18, qword_280240FB0);
  v19 = *(v3 + 16);
  v48 = v11;
  v19(v9, v11, v2);
  v20 = sub_267EF89F8();
  v21 = sub_267EF95D8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v46 = a1;
    v23 = v22;
    v44 = v22;
    v45 = swift_slowAlloc();
    v50 = v45;
    *v23 = 136315138;
    v19(v6, v9, v2);
    sub_267EF5458();
    v49[3] = v2;
    v49[4] = sub_267C58938(&qword_28022BAF0, MEMORY[0x277D5DC70], MEMORY[0x277D5DC50]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v49);
    v19(boxed_opaque_existential_0, v6, v2);
    v42 = sub_267EF5448();
    v25 = v9;
    v26 = v2;
    v28 = v27;
    v43 = v21;
    v29 = *(v3 + 8);
    v30 = v6;
    v31 = v3;
    v29(v30, v26);
    v29(v25, v26);
    __swift_destroy_boxed_opaque_existential_0(v49);
    v32 = sub_267BA33E8(v42, v28, &v50);

    v33 = v44;
    *(v44 + 4) = v32;
    v34 = v33;
    _os_log_impl(&dword_267B93000, v20, v43, "UnsetRelationship# Sending SDA for prompt: %s", v33, 0xCu);
    v35 = v45;
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x26D60A7B0](v35, -1, -1);
    MEMORY[0x26D60A7B0](v34, -1, -1);
  }

  else
  {

    v29 = *(v3 + 8);
    v31 = v3;
    v29(v9, v2);
    v26 = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v36 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v47;
  v38 = v37 + v36;
  v39 = v48;
  v19(v38, v48, v26);
  sub_267EF4088();
  return (v29)(v39, v26);
}

uint64_t sub_267C57E40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_267EF47F8();
  sub_267EF4858();
  sub_267C57F04(v2);
  v3 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return sub_267EF4818();
}

uint64_t sub_267C57F04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EF53D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  sub_267EF4148();
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_267EFCC90;
  *(v11 + 32) = sub_267BB90E4(1);
  *(v11 + 40) = v12;
  *(v11 + 48) = sub_267BB90E4(0);
  *(v11 + 56) = v13;
  sub_267EF4108();
  v14 = swift_allocObject();
  v43 = xmmword_267EFC020;
  *(v14 + 16) = xmmword_267EFC020;
  if (qword_2802288C8 != -1)
  {
    swift_once();
  }

  *(v14 + 32) = sub_267BC9500();
  *(v14 + 40) = v15;
  sub_267EF4118();
  sub_267EF4098();
  sub_267C585AC();
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v16 = sub_267EF8A08();
  __swift_project_value_buffer(v16, qword_280240FB0);
  v17 = *(v3 + 16);
  v17(v8, v10, v2);
  v18 = sub_267EF89F8();
  v19 = sub_267EF95D8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = v20;
    v39 = swift_slowAlloc();
    v45 = v39;
    *v20 = 136315138;
    v21 = v42;
    v17(v42, v8, v2);
    sub_267EF5458();
    v37 = v19;
    v44[3] = v2;
    v44[4] = sub_267C58938(&qword_28022BAF0, MEMORY[0x277D5DC70], MEMORY[0x277D5DC50]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v44);
    v17(boxed_opaque_existential_0, v21, v2);
    v23 = sub_267EF5448();
    v40 = a1;
    v41 = v10;
    v25 = v24;
    v36 = v17;
    v26 = *(v3 + 8);
    v26(v21, v2);
    v26(v8, v2);
    __swift_destroy_boxed_opaque_existential_0(v44);
    v27 = sub_267BA33E8(v23, v25, &v45);
    v10 = v41;

    v28 = v38;
    *(v38 + 1) = v27;
    v29 = v28;
    _os_log_impl(&dword_267B93000, v18, v37, "UnsetRelationship# Sending SDA for Save confirmation: %s", v28, 0xCu);
    v30 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x26D60A7B0](v30, -1, -1);
    MEMORY[0x26D60A7B0](v29, -1, -1);

    v31 = v36;
  }

  else
  {

    v31 = v17;
    v26 = *(v3 + 8);
    v26(v8, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v32 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v43;
  v31(v33 + v32, v10, v2);
  sub_267EF4088();
  return (v26)(v10, v2);
}

uint64_t sub_267C583EC()
{
  sub_267EF6268();
  swift_allocObject();
  sub_267EF6258();
  sub_267EF6168();
  swift_allocObject();
  sub_267EF6158();
  sub_267EF6148();

  sub_267EF6218();

  sub_267EF6448();
  swift_allocObject();
  sub_267EF6438();
  sub_267EF61F8();
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v0 = sub_267EF8A08();
  __swift_project_value_buffer(v0, qword_280240FB0);
  v1 = sub_267EF89F8();
  v2 = sub_267EF95D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_267B93000, v1, v2, "UnsetRelationship# sending SystemPrompted dialog act for Unset Relationship Prompt", v3, 2u);
    MEMORY[0x26D60A7B0](v3, -1, -1);
  }

  sub_267DFDDC4();
}

uint64_t sub_267C585AC()
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v0 = sub_267EF8A08();
  __swift_project_value_buffer(v0, qword_280240FB0);
  v1 = sub_267EF89F8();
  v2 = sub_267EF95D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_267B93000, v1, v2, "UnsetRelationship# sending SystemOffered.UserWantedToProceed dialog act for Unset Relationship Prompt", v3, 2u);
    MEMORY[0x26D60A7B0](v3, -1, -1);
  }

  sub_267EF6448();
  swift_allocObject();
  sub_267EF6438();
  sub_267BBB050();
}

uint64_t sub_267C586C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267C58730(uint64_t a1)
{
  v3 = sub_267EF4228();
  OUTLINED_FUNCTION_30_0(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_267EF4158();
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v8);
  v14 = v1 + ((v8 + *(v10 + 80) + 8) & ~*(v10 + 80));

  return sub_267CF0C8C(a1, v11, v12, v1 + v5, (v1 + v7), v13, v14);
}

uint64_t sub_267C58820(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_22();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_267C58880(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267C588D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_22();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267C58938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_267C589E0()
{
  OUTLINED_FUNCTION_48_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_10(v6, v57[0]);
  v8 = MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_1(v8, v9, v10, v11, v12, v13, v14, v15, v57[0]);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v57 - v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v22);
  v24 = v57 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_16(v25, xmmword_267EFE4F0);
  v26 = *v0;
  if (*v0)
  {
    v27 = sub_267EF7958();
    v28 = v26;
  }

  else
  {
    v27 = OUTLINED_FUNCTION_38();
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
  }

  v29 = OUTLINED_FUNCTION_20_2(v27, v28);
  v30 = type metadata accessor for EditMessageAskForPayloadParameters(v29);
  OUTLINED_FUNCTION_35_6(v30[5], &unk_28022AE30, &qword_267EFC0B0);
  v31 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v24);
  if (v32)
  {

    sub_267B9F98C(v24, &unk_28022AE30, &qword_267EFC0B0);
    *(v25 + 96) = 0u;
    *(v25 + 112) = 0u;
  }

  else
  {
    *(v25 + 120) = v31;
    __swift_allocate_boxed_opaque_existential_0((v25 + 96));
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_36_5();
    v33();
  }

  OUTLINED_FUNCTION_12_1();
  *(v25 + 128) = 0xD00000000000001CLL;
  *(v25 + 136) = v34;
  OUTLINED_FUNCTION_50_5(v30[6], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v3);
  if (v32)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    *(v25 + 144) = 0u;
    *(v25 + 160) = 0u;
  }

  else
  {
    *(v25 + 168) = v31;
    __swift_allocate_boxed_opaque_existential_0((v25 + 144));
    OUTLINED_FUNCTION_2_2();
    (*(v35 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v25 + 176) = 0xD000000000000011;
  *(v25 + 184) = v36;
  OUTLINED_FUNCTION_49_3(v30[7], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v2);
  if (v32)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    *(v25 + 192) = 0u;
    *(v25 + 208) = 0u;
  }

  else
  {
    *(v25 + 216) = v31;
    __swift_allocate_boxed_opaque_existential_0((v25 + 192));
    OUTLINED_FUNCTION_2_2();
    (*(v37 + 32))();
  }

  OUTLINED_FUNCTION_9_10();
  *(v25 + 224) = v38;
  *(v25 + 232) = v39;
  OUTLINED_FUNCTION_48_4(v30[8], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v1);
  if (v32)
  {
    sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);
    *(v25 + 240) = 0u;
    *(v25 + 256) = 0u;
  }

  else
  {
    *(v25 + 264) = v31;
    __swift_allocate_boxed_opaque_existential_0((v25 + 240));
    OUTLINED_FUNCTION_2_2();
    (*(v40 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v25 + 272) = 0xD000000000000017;
  *(v25 + 280) = v41;
  v42 = MEMORY[0x277D839B0];
  *(v25 + 288) = 0;
  *(v25 + 312) = v42;
  *(v25 + 320) = 0x70756F7267;
  *(v25 + 328) = 0xE500000000000000;
  v43 = *(v0 + v30[9]);
  if (v43)
  {
    type metadata accessor for MessagesGroup(0);
    v44 = v43;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v25 + 344) = 0;
    *(v25 + 352) = 0;
  }

  *(v25 + 336) = v44;
  OUTLINED_FUNCTION_43_6();
  *(v25 + 360) = v45;
  *(v25 + 368) = v46;
  *(v25 + 376) = 0xE700000000000000;
  sub_267C2FB6C(v0 + v30[10], v19, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v19);
  if (v32)
  {

    sub_267B9F98C(v19, &unk_28022AE30, &qword_267EFC0B0);
    *(v25 + 384) = 0u;
    *(v25 + 400) = 0u;
  }

  else
  {
    *(v25 + 408) = v31;
    __swift_allocate_boxed_opaque_existential_0((v25 + 384));
    OUTLINED_FUNCTION_2_2();
    (*(v47 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v25 + 416) = 0xD000000000000014;
  *(v25 + 424) = v48;
  v49 = v57[0];
  sub_267C2FB6C(v0 + v30[11], v57[0], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v49);
  v50 = v57[1];
  if (v32)
  {
    sub_267B9F98C(v49, &unk_28022AE30, &qword_267EFC0B0);
    *(v25 + 432) = 0u;
    *(v25 + 448) = 0u;
  }

  else
  {
    *(v25 + 456) = v31;
    __swift_allocate_boxed_opaque_existential_0((v25 + 432));
    OUTLINED_FUNCTION_2_2();
    (*(v51 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v25 + 464) = 0xD000000000000013;
  *(v25 + 472) = v52;
  OUTLINED_FUNCTION_35_6(v30[12], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v50);
  if (v32)
  {
    sub_267B9F98C(v50, &unk_28022AE30, &qword_267EFC0B0);
    *(v25 + 480) = 0u;
    *(v25 + 496) = 0u;
  }

  else
  {
    *(v25 + 504) = v31;
    __swift_allocate_boxed_opaque_existential_0((v25 + 480));
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_36_5();
    v53();
  }

  OUTLINED_FUNCTION_22_3();
  *(v25 + 512) = v54;
  *(v25 + 520) = 0xE900000000000074;
  v55 = *(v0 + v30[13]);
  if (v55)
  {
    v56 = sub_267EF77C8();
  }

  else
  {
    v56 = 0;
    *(v25 + 536) = 0u;
  }

  *(v25 + 528) = v55;
  *(v25 + 552) = v56;

  OUTLINED_FUNCTION_47();
}

void sub_267C58FF4()
{
  OUTLINED_FUNCTION_48_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_10(v6, v83);
  v8 = MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_1(v8, v9, v10, v11, v12, v13, v14, v15, v83);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0();
  v88 = v17;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  v87 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  v86 = v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  v85 = v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77_0();
  v84 = v25;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77_0();
  v83 = v27;
  OUTLINED_FUNCTION_115();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v83 - v30;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v34);
  v36 = &v83 - v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_16(v37, xmmword_267EFE500);
  v38 = *v0;
  if (*v0)
  {
    v39 = sub_267EF7958();
    v40 = v38;
  }

  else
  {
    v39 = OUTLINED_FUNCTION_38();
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
  }

  *(v37 + 48) = v40;
  *(v37 + 72) = v39;
  *(v37 + 80) = 0x4468736153707061;
  *(v37 + 88) = 0xEB00000000617461;
  v41 = type metadata accessor for EditMessageConfirmEditParameters(0);
  OUTLINED_FUNCTION_35_6(v41[5], &unk_28022AE30, &qword_267EFC0B0);
  v42 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v36);
  if (v43)
  {

    sub_267B9F98C(v36, &unk_28022AE30, &qword_267EFC0B0);
    *(v37 + 96) = 0u;
    *(v37 + 112) = 0u;
  }

  else
  {
    *(v37 + 120) = v42;
    __swift_allocate_boxed_opaque_existential_0((v37 + 96));
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_36_5();
    v44();
  }

  OUTLINED_FUNCTION_12_1();
  *(v37 + 128) = 0xD000000000000012;
  *(v37 + 136) = v45;
  OUTLINED_FUNCTION_50_5(v41[6], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v3);
  if (v43)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    *(v37 + 144) = 0u;
    *(v37 + 160) = 0u;
  }

  else
  {
    *(v37 + 168) = v42;
    __swift_allocate_boxed_opaque_existential_0((v37 + 144));
    OUTLINED_FUNCTION_2_2();
    (*(v46 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v37 + 176) = 0xD000000000000012;
  *(v37 + 184) = v47;
  OUTLINED_FUNCTION_49_3(v41[7], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v2);
  v48 = v83;
  if (v43)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    *(v37 + 192) = 0u;
    *(v37 + 208) = 0u;
  }

  else
  {
    *(v37 + 216) = v42;
    __swift_allocate_boxed_opaque_existential_0((v37 + 192));
    OUTLINED_FUNCTION_2_2();
    (*(v49 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v37 + 224) = 0xD00000000000001CLL;
  *(v37 + 232) = v50;
  OUTLINED_FUNCTION_48_4(v41[8], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v1);
  v51 = v84;
  if (v43)
  {
    sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);
    *(v37 + 240) = 0u;
    *(v37 + 256) = 0u;
  }

  else
  {
    *(v37 + 264) = v42;
    __swift_allocate_boxed_opaque_existential_0((v37 + 240));
    OUTLINED_FUNCTION_2_2();
    (*(v52 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v37 + 272) = 0xD000000000000014;
  *(v37 + 280) = v53;
  sub_267C2FB6C(v0 + v41[9], v31, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v31);
  v54 = v86;
  if (v43)
  {
    sub_267B9F98C(v31, &unk_28022AE30, &qword_267EFC0B0);
    *(v37 + 288) = 0u;
    *(v37 + 304) = 0u;
  }

  else
  {
    *(v37 + 312) = v42;
    __swift_allocate_boxed_opaque_existential_0((v37 + 288));
    OUTLINED_FUNCTION_2_2();
    (*(v55 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v37 + 320) = 0xD000000000000011;
  *(v37 + 328) = v56;
  OUTLINED_FUNCTION_50_5(v41[10], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v48);
  v57 = v85;
  if (v43)
  {
    sub_267B9F98C(v48, &unk_28022AE30, &qword_267EFC0B0);
    *(v37 + 336) = 0u;
    *(v37 + 352) = 0u;
  }

  else
  {
    *(v37 + 360) = v42;
    __swift_allocate_boxed_opaque_existential_0((v37 + 336));
    OUTLINED_FUNCTION_2_2();
    (*(v58 + 32))();
  }

  OUTLINED_FUNCTION_9_10();
  *(v37 + 368) = v59;
  *(v37 + 376) = v60;
  OUTLINED_FUNCTION_49_3(v41[11], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v51);
  if (v43)
  {
    sub_267B9F98C(v51, &unk_28022AE30, &qword_267EFC0B0);
    *(v37 + 384) = 0u;
    *(v37 + 400) = 0u;
  }

  else
  {
    *(v37 + 408) = v42;
    __swift_allocate_boxed_opaque_existential_0((v37 + 384));
    OUTLINED_FUNCTION_2_2();
    (*(v61 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v37 + 416) = 0xD000000000000012;
  *(v37 + 424) = v62;
  sub_267C2FB6C(v0 + v41[12], v57, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v57);
  if (v43)
  {
    sub_267B9F98C(v57, &unk_28022AE30, &qword_267EFC0B0);
    *(v37 + 432) = 0u;
    *(v37 + 448) = 0u;
  }

  else
  {
    *(v37 + 456) = v42;
    __swift_allocate_boxed_opaque_existential_0((v37 + 432));
    OUTLINED_FUNCTION_2_2();
    (*(v63 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v37 + 464) = 0xD000000000000017;
  *(v37 + 472) = v64;
  v65 = MEMORY[0x277D839B0];
  *(v37 + 480) = 0;
  *(v37 + 504) = v65;
  *(v37 + 512) = 0x6D614E70756F7267;
  *(v37 + 520) = 0xE900000000000065;
  OUTLINED_FUNCTION_48_4(v41[13], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v54);
  if (v43)
  {
    sub_267B9F98C(v54, &unk_28022AE30, &qword_267EFC0B0);
    *(v37 + 528) = 0u;
    *(v37 + 544) = 0u;
  }

  else
  {
    *(v37 + 552) = v42;
    __swift_allocate_boxed_opaque_existential_0((v37 + 528));
    OUTLINED_FUNCTION_2_2();
    (*(v66 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v37 + 560) = 0xD000000000000011;
  *(v37 + 568) = v67;
  LOBYTE(v67) = *(v0 + v41[14]);
  *(v37 + 600) = v65;
  *(v37 + 576) = v67;
  OUTLINED_FUNCTION_43_6();
  *(v37 + 608) = v68;
  *(v37 + 616) = 0xE700000000000000;
  v69 = v87;
  sub_267C2FB6C(v0 + v41[15], v87, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v69);
  if (v43)
  {
    sub_267B9F98C(v69, &unk_28022AE30, &qword_267EFC0B0);
    *(v37 + 624) = 0u;
    *(v37 + 640) = 0u;
  }

  else
  {
    *(v37 + 648) = v42;
    __swift_allocate_boxed_opaque_existential_0((v37 + 624));
    OUTLINED_FUNCTION_2_2();
    (*(v70 + 32))();
  }

  v71 = v88;
  OUTLINED_FUNCTION_12_1();
  *(v37 + 656) = 0xD000000000000014;
  *(v37 + 664) = v72;
  sub_267C2FB6C(v0 + v41[16], v71, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v71);
  if (v43)
  {
    sub_267B9F98C(v71, &unk_28022AE30, &qword_267EFC0B0);
    *(v37 + 672) = 0u;
    *(v37 + 688) = 0u;
  }

  else
  {
    *(v37 + 696) = v42;
    __swift_allocate_boxed_opaque_existential_0((v37 + 672));
    OUTLINED_FUNCTION_2_2();
    (*(v73 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v37 + 704) = 0xD000000000000013;
  *(v37 + 712) = v74;
  v75 = v89;
  sub_267C2FB6C(v0 + v41[17], v89, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v75);
  if (v43)
  {
    sub_267B9F98C(v75, &unk_28022AE30, &qword_267EFC0B0);
    *(v37 + 720) = 0u;
    *(v37 + 736) = 0u;
  }

  else
  {
    *(v37 + 744) = v42;
    __swift_allocate_boxed_opaque_existential_0((v37 + 720));
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_36_5();
    v76();
  }

  OUTLINED_FUNCTION_22_3();
  *(v37 + 752) = v77;
  *(v37 + 760) = 0xEA00000000007374;
  v78 = *(v0 + v41[18]);
  *(v37 + 792) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v37 + 768) = v78;
  OUTLINED_FUNCTION_37_2();
  *(v37 + 800) = v79;
  *(v37 + 808) = 0xEF617461446E6F6FLL;
  v80 = v0 + v41[19];
  v81 = v90;
  sub_267C2FB6C(v80, v90, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v81);
  if (v43)
  {

    sub_267B9F98C(v81, &unk_28022AE30, &qword_267EFC0B0);
    *(v37 + 816) = 0u;
    *(v37 + 832) = 0u;
  }

  else
  {
    *(v37 + 840) = v42;
    __swift_allocate_boxed_opaque_existential_0((v37 + 816));
    OUTLINED_FUNCTION_2_2();
    (*(v82 + 32))();
  }

  OUTLINED_FUNCTION_47();
}

void sub_267C59A54()
{
  OUTLINED_FUNCTION_48_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_10(v6, v58);
  v8 = MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_1(v8, v9, v10, v11, v12, v13, v14, v15, v58);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0();
  v59 = v17;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_26_5();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v58 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v58 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_16(v27, xmmword_267EFE4F0);
  v28 = *v0;
  if (*v0)
  {
    v29 = sub_267EF7958();
    v30 = v28;
  }

  else
  {
    v29 = OUTLINED_FUNCTION_38();
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
  }

  v31 = OUTLINED_FUNCTION_20_2(v29, v30);
  v32 = type metadata accessor for EditMessageMessageEditedParameters(v31);
  sub_267C2FB6C(v0 + v32[5], v26, &unk_28022AE30, &qword_267EFC0B0);
  v33 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v26);
  if (v34)
  {

    sub_267B9F98C(v26, &unk_28022AE30, &qword_267EFC0B0);
    *(v27 + 96) = 0u;
    *(v27 + 112) = 0u;
  }

  else
  {
    *(v27 + 120) = v33;
    __swift_allocate_boxed_opaque_existential_0((v27 + 96));
    OUTLINED_FUNCTION_8_9();
    (*(v35 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v27 + 128) = 0xD000000000000012;
  *(v27 + 136) = v36;
  OUTLINED_FUNCTION_35_6(v32[6], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v24);
  if (v34)
  {
    sub_267B9F98C(v24, &unk_28022AE30, &qword_267EFC0B0);
    *(v27 + 144) = 0u;
    *(v27 + 160) = 0u;
  }

  else
  {
    *(v27 + 168) = v33;
    __swift_allocate_boxed_opaque_existential_0((v27 + 144));
    OUTLINED_FUNCTION_8_9();
    (*(v37 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v27 + 176) = 0xD000000000000012;
  *(v27 + 184) = v38;
  OUTLINED_FUNCTION_50_5(v32[7], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v3);
  v39 = v60;
  if (v34)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    *(v27 + 192) = 0u;
    *(v27 + 208) = 0u;
  }

  else
  {
    *(v27 + 216) = v33;
    __swift_allocate_boxed_opaque_existential_0((v27 + 192));
    OUTLINED_FUNCTION_8_9();
    (*(v40 + 32))();
  }

  OUTLINED_FUNCTION_9_10();
  *(v27 + 224) = v41;
  *(v27 + 232) = v42;
  OUTLINED_FUNCTION_49_3(v32[8], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v2);
  if (v34)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    *(v27 + 240) = 0u;
    *(v27 + 256) = 0u;
  }

  else
  {
    *(v27 + 264) = v33;
    __swift_allocate_boxed_opaque_existential_0((v27 + 240));
    OUTLINED_FUNCTION_8_9();
    (*(v43 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v27 + 272) = 0xD000000000000017;
  *(v27 + 280) = v44;
  v45 = MEMORY[0x277D839B0];
  *(v27 + 288) = 0;
  *(v27 + 312) = v45;
  *(v27 + 320) = 0x6D614E70756F7267;
  *(v27 + 328) = 0xE900000000000065;
  OUTLINED_FUNCTION_48_4(v32[9], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v1);
  if (v34)
  {
    sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);
    *(v27 + 336) = 0u;
    *(v27 + 352) = 0u;
  }

  else
  {
    *(v27 + 360) = v33;
    __swift_allocate_boxed_opaque_existential_0((v27 + 336));
    OUTLINED_FUNCTION_8_9();
    (*(v46 + 32))();
  }

  *(v27 + 368) = 0x7463617265746E69;
  *(v27 + 376) = 0xEF617461446E6F69;
  v47 = v59;
  sub_267C2FB6C(v0 + v32[10], v59, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v47);
  if (v34)
  {
    sub_267B9F98C(v47, &unk_28022AE30, &qword_267EFC0B0);
    *(v27 + 384) = 0u;
    *(v27 + 400) = 0u;
  }

  else
  {
    *(v27 + 408) = v33;
    __swift_allocate_boxed_opaque_existential_0((v27 + 384));
    OUTLINED_FUNCTION_8_9();
    (*(v48 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v27 + 416) = 0xD000000000000013;
  *(v27 + 424) = v49;
  OUTLINED_FUNCTION_35_6(v32[11], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v39);
  if (v34)
  {
    sub_267B9F98C(v39, &unk_28022AE30, &qword_267EFC0B0);
    *(v27 + 432) = 0u;
    *(v27 + 448) = 0u;
  }

  else
  {
    *(v27 + 456) = v33;
    __swift_allocate_boxed_opaque_existential_0((v27 + 432));
    OUTLINED_FUNCTION_8_9();
    (*(v50 + 32))();
  }

  OUTLINED_FUNCTION_22_3();
  *(v27 + 464) = v51;
  *(v27 + 472) = 0xEA00000000007374;
  v52 = *(v0 + v32[12]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v27 + 480) = v52;
  OUTLINED_FUNCTION_37_2();
  *(v27 + 504) = v53;
  *(v27 + 512) = v54;
  *(v27 + 520) = 0xEF617461446E6F6FLL;
  v55 = v0 + v32[13];
  v56 = v61;
  sub_267C2FB6C(v55, v61, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v56);
  if (v34)
  {

    sub_267B9F98C(v56, &unk_28022AE30, &qword_267EFC0B0);
    *(v27 + 528) = 0u;
    *(v27 + 544) = 0u;
  }

  else
  {
    *(v27 + 552) = v33;
    __swift_allocate_boxed_opaque_existential_0((v27 + 528));
    OUTLINED_FUNCTION_8_9();
    (*(v57 + 32))();
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C5A0E4()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for EditMessageAskForPayloadParameters(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C5A170()
{
  OUTLINED_FUNCTION_62();
  v2 = v0[5];
  v1 = v0[6];
  *v1 = 0;
  v3 = sub_267EF79B8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v3);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v3);
  *(v1 + *(v2 + 36)) = 0;
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v3);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v3);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v3);
  *(v1 + *(v2 + 52)) = 0;
  OUTLINED_FUNCTION_1_3();
  v29 = v25;
  v26 = swift_task_alloc();
  v0[7] = v26;
  *v26 = v0;
  v26[1] = sub_267C5A2F4;
  v27 = v0[6];

  return v29(v27);
}

uint64_t sub_267C5A2F4()
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

uint64_t sub_267C5A3F0()
{
  sub_267C589E0();
  *(v0 + 72) = v1;
  v2 = OUTLINED_FUNCTION_28_0();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_267C5A4A4;
  v3 = OUTLINED_FUNCTION_30_4();

  return v4(v3);
}

uint64_t sub_267C5A4A4()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C5A5D8()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_5_14();
  sub_267C5B564(v1, v2);

  OUTLINED_FUNCTION_4_3();
  v4 = *(v0 + 96);

  return v3(v4);
}

uint64_t sub_267C5A648()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_5_14();
  sub_267C5B564(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267C5A6B4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_5_14();
  sub_267C5B564(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267C5A720()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 112) = v5;
  v6 = type metadata accessor for EditMessageConfirmEditParameters(0);
  *(v1 + 48) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v1 + 56) = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C5A7B0()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = *(v0 + 112);
  v5 = sub_267EF79B8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  OUTLINED_FUNCTION_3_13(v2[6]);
  OUTLINED_FUNCTION_3_13(v2[7]);
  OUTLINED_FUNCTION_3_13(v2[8]);
  OUTLINED_FUNCTION_3_13(v2[9]);
  OUTLINED_FUNCTION_3_13(v2[10]);
  OUTLINED_FUNCTION_3_13(v2[11]);
  OUTLINED_FUNCTION_3_13(v2[12]);
  OUTLINED_FUNCTION_3_13(v2[13]);
  OUTLINED_FUNCTION_3_13(v2[15]);
  OUTLINED_FUNCTION_3_13(v2[16]);
  OUTLINED_FUNCTION_3_13(v2[17]);
  OUTLINED_FUNCTION_3_13(v2[19]);
  *v1 = 0;
  *(v1 + v2[14]) = v4;
  *(v1 + v2[18]) = v3;

  OUTLINED_FUNCTION_1_3();
  v13 = v9;
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_34_0(v10);

  return v13(v11);
}

uint64_t sub_267C5A920()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C5AA1C()
{
  sub_267C58FF4();
  v2 = v1;
  *(v0 + 80) = v1;
  v3 = OUTLINED_FUNCTION_28_0();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_267C5AAE4;

  return v5(0xD000000000000017, 0x8000000267F131A0, v2);
}

uint64_t sub_267C5AAE4()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C5AC18()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_6_8();
  sub_267C5B564(v1, v2);

  OUTLINED_FUNCTION_4_3();
  v4 = *(v0 + 104);

  return v3(v4);
}

uint64_t sub_267C5AC88()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_6_8();
  sub_267C5B564(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267C5ACF4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_6_8();
  sub_267C5B564(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267C5AD60()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for EditMessageMessageEditedParameters(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C5ADEC()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[2];
  v4 = sub_267EF79B8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  OUTLINED_FUNCTION_3_13(v2[6]);
  OUTLINED_FUNCTION_3_13(v2[7]);
  OUTLINED_FUNCTION_3_13(v2[8]);
  OUTLINED_FUNCTION_3_13(v2[9]);
  OUTLINED_FUNCTION_3_13(v2[10]);
  OUTLINED_FUNCTION_3_13(v2[11]);
  OUTLINED_FUNCTION_3_13(v2[13]);
  *v1 = 0;
  *(v1 + v2[12]) = v3;

  OUTLINED_FUNCTION_1_3();
  v12 = v8;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v10 = OUTLINED_FUNCTION_34_0(v9);

  return v12(v10);
}

uint64_t sub_267C5AF24()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C5B020()
{
  sub_267C59A54();
  *(v0 + 80) = v1;
  v2 = OUTLINED_FUNCTION_28_0();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_267C5B0D4;
  v3 = OUTLINED_FUNCTION_30_4();

  return v4(v3);
}

uint64_t sub_267C5B0D4()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C5B208()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_4_14();
  sub_267C5B564(v1, v2);

  OUTLINED_FUNCTION_4_3();
  v4 = *(v0 + 104);

  return v3(v4);
}

uint64_t sub_267C5B278()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_4_14();
  sub_267C5B564(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267C5B2E4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_4_14();
  sub_267C5B564(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

void sub_267C5B3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_267EF7B88();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v31 = OUTLINED_FUNCTION_18(v30);
  MEMORY[0x28223BE20](v31);
  sub_267C2FB6C(v25, &a9 - v32, &qword_280229E20, &unk_267EFDCC0);
  (*(v27 + 16))(v29, v23, v26);
  sub_267EF78B8();
  (*(v27 + 8))(v23, v26);
  sub_267B9F98C(v25, &qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C5B564(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267C5B604(uint64_t a1)
{
  sub_267C5B934(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_267C5B934(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_267C5B934(319, &qword_2802297E8, type metadata accessor for MessagesGroup, MEMORY[0x277D83D88]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_267C5B934(319, &qword_2802297F0, MEMORY[0x277D55B70], MEMORY[0x277D83D88]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_267C5B7C4(uint64_t a1)
{
  sub_267C5B934(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_267C5B934(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_267C5B934(319, &qword_280229808, MEMORY[0x277D55B70], MEMORY[0x277D83940]);
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

void sub_267C5B934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_267C5B9C0(uint64_t a1)
{
  sub_267C5B934(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_267C5B934(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_267C5B934(319, &qword_280229808, MEMORY[0x277D55B70], MEMORY[0x277D83940]);
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

uint64_t getEnumTagSinglePayload for MessagesSlotValidationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessagesSlotValidationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267C5BC80()
{
  result = qword_280229820;
  if (!qword_280229820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229820);
  }

  return result;
}

uint64_t sub_267C5BCFC(unsigned __int8 a1)
{
  sub_267EF9FC8();
  MEMORY[0x26D609CA0](a1);
  return sub_267EFA018();
}

void sub_267C5BD60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_267EF2CC8();
  OUTLINED_FUNCTION_58();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_60();
  v63 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  v15 = *a1;
  v16 = *(a1 + 8);
  LODWORD(v17) = *(a1 + 16);
  *&v74 = *a1;
  *(&v74 + 1) = v16;
  v75 = v17;
  sub_267C5DD80(&v74, v18, v19, v20, v21, v22, v23, v24, v58, v59, v60);
  v26 = v25 + 1;
  if (!__OFADD__(v25, 1))
  {
    v58 = v14;
    v27 = v15;
    v61 = v16;
    v62 = v15;
    v28 = v8;
    v30 = *(v3 + 24);
    v29 = *(v3 + 32);
    v67 = __swift_project_boxed_opaque_existential_0(v3, v30);
    *&v74 = v27;
    *(&v74 + 1) = v16;
    v75 = v17;
    v31 = ConversationEventStore.Event.rawValue.getter();
    v68 = v17;
    v71 = v31;
    v72 = v32;

    v33 = OUTLINED_FUNCTION_4_15();
    MEMORY[0x26D608E60](v33);

    v34 = *(v29 + 56);
    v59 = v26;
    v34(v26, v71, v72, v30, v29);

    v35 = *(v3 + 24);
    v36 = *(v3 + 32);
    v60 = __swift_project_boxed_opaque_existential_0(v3, v35);
    v76 = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v74);
    v65 = a2;
    v66 = v28;
    v38 = *(v28 + 16);
    v67 = v6;
    v64 = v38;
    v38(boxed_opaque_existential_0, a2, v6);
    a2 = v61;
    v26 = v62;
    v71 = v62;
    v72 = v61;
    v73 = v68;
    v69 = ConversationEventStore.Event.rawValue.getter();
    v70 = v39;

    v40 = OUTLINED_FUNCTION_3_14();
    MEMORY[0x26D608E60](v40);

    (*(v36 + 64))(&v74, v69, v70, v35, v36);
    v17 = v68;

    sub_267B9FF34(&v74, &qword_28022AEF0, &qword_267EFCDE0);
    if (!v17)
    {
      OUTLINED_FUNCTION_30_5();
      v41 = v67;
      v76 = v67;
      v42 = __swift_allocate_boxed_opaque_existential_0(&v74);
      v64(v42, v65, v41);
      (*(v35 + 64))(&v74, 0x614C664F65746144, 0xEE00746E69487473, v28, v35);
      sub_267B9FF34(&v74, &qword_28022AEF0, &qword_267EFCDE0);
      v74 = xmmword_267EFE6F0;
      v75 = 4;
      sub_267C5DEC0(&v74);
    }

    v43 = sub_267C28E68(v26, a2, v17, 0, 0);
    v14 = v67;
    if (v43)
    {
      v74 = xmmword_267EFE6F0;
      v75 = 4;
      v35 = v58;
      sub_267EF2CB8();
      sub_267C5BD60(&v74, v35);
      (*(v66 + 8))(v35, v14);
    }

    v6 = v63;
    if (!v17)
    {
      if (v26)
      {
        if (v26 == 8)
        {
          v44 = 0xEE006C617373696DLL;
          v45 = 0x736944796C726165;
        }

        else
        {
          if (v26 != 1)
          {
            goto LABEL_18;
          }

          v44 = 0x8000000267F13500;
          v45 = 0xD000000000000015;
        }
      }

      else
      {
        v44 = 0xE600000000000000;
        v45 = 0x746165706572;
      }

      OUTLINED_FUNCTION_30_5();
      v76 = MEMORY[0x277D837D0];
      *&v74 = v45;
      *(&v74 + 1) = v44;
      (*(v35 + 64))(&v74, 0x746E69487473614CLL, 0xEC00000064616552, v14, v35);
      sub_267B9FF34(&v74, &qword_28022AEF0, &qword_267EFCDE0);
      if (v26)
      {
        v14 = v67;
        LOBYTE(v17) = v68;
        if (v26 != 1)
        {
          goto LABEL_18;
        }

        v17 = "AnnounceMessagesInterruption";
        v46 = 0xD00000000000001DLL;
      }

      else
      {
        v46 = 0xD00000000000001ALL;
        v17 = "ExcessiveNotificationHintRead";
      }

      OUTLINED_FUNCTION_30_5();
      (*(v35 + 48))(1, v46, v17 | 0x8000000000000000, v14, v35);

      v14 = v67;
      LOBYTE(v17) = v68;
    }

LABEL_18:
    if (qword_280228818 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  __break(1u);
LABEL_23:
  OUTLINED_FUNCTION_0_10();
  swift_once();
LABEL_19:
  v47 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v47, qword_280240FB0);
  v64(v6, v65, v14);
  sub_267C5E960(v26, a2, v17);
  v48 = sub_267EF89F8();
  v49 = v17;
  v50 = sub_267EF95D8();
  sub_267C5E97C(v26, a2, v49);
  if (os_log_type_enabled(v48, v50))
  {
    OUTLINED_FUNCTION_52();
    v71 = OUTLINED_FUNCTION_33_2();
    *v3 = 136315650;
    *&v74 = v26;
    *(&v74 + 1) = a2;
    v75 = v49;
    v51 = ConversationEventStore.Event.rawValue.getter();
    sub_267BA33E8(v51, v52, &v71);
    v53 = v14;
    OUTLINED_FUNCTION_45_3();
    *(v3 + 4) = v14;
    *(v3 + 12) = 2048;
    *(v3 + 14) = v59;
    *(v3 + 22) = 2080;
    sub_267C5EDC0();
    v54 = sub_267EF9E58();
    v56 = v55;
    (*(v66 + 8))(v6, v53);
    v57 = sub_267BA33E8(v54, v56, &v71);

    *(v3 + 24) = v57;
    _os_log_impl(&dword_267B93000, v48, v50, "Storing Event '%s' in the store with usageCount '%ld', lastUsageDate: %s", v3, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_9_11();
  }

  else
  {

    (*(v66 + 8))(v6, v14);
  }
}

uint64_t sub_267C5C400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  v7 = &v63 - v6;
  v8 = sub_267EF2CC8();
  OUTLINED_FUNCTION_58();
  v66 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_60();
  v67 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v68 = &v63 - v14;
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = *(v2 + 24);
  v19 = *(v2 + 32);
  OUTLINED_FUNCTION_44_6();
  v72[0] = v15;
  v72[1] = v16;
  v73 = v17;
  v70 = ConversationEventStore.Event.rawValue.getter();
  v71 = v20;

  v21 = OUTLINED_FUNCTION_3_14();
  MEMORY[0x26D608E60](v21);

  v22 = v71;
  (*(v19 + 40))(&v74, v70, v71, v18, v19);

  if (v77)
  {
    v23 = swift_dynamicCast();
    OUTLINED_FUNCTION_34_5(v7, v23 ^ 1u);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      v24 = v66;
      v25 = v68;
      v65 = *(v66 + 32);
      v65(v68, v7, v8);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v26 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);
      v27 = v67;
      (*(v24 + 16))(v67, v25, v8);
      v28 = OUTLINED_FUNCTION_13_9();
      sub_267C5E960(v28, v29, v30);
      v31 = sub_267EF89F8();
      v32 = sub_267EF95D8();
      v33 = OUTLINED_FUNCTION_13_9();
      sub_267C5E97C(v33, v34, v35);
      if (os_log_type_enabled(v31, v32))
      {
        v36 = v24;
        v37 = OUTLINED_FUNCTION_35_0();
        v64 = swift_slowAlloc();
        v72[0] = v64;
        *v37 = 136315394;
        v74 = v15;
        v75 = v16;
        v76 = v17;
        v38 = ConversationEventStore.Event.rawValue.getter();
        v40 = sub_267BA33E8(v38, v39, v72);

        *(v37 + 4) = v40;
        *(v37 + 12) = 2080;
        sub_267C5EDC0();
        v41 = v67;
        v42 = sub_267EF9E58();
        v44 = v43;
        (*(v36 + 8))(v41, v8);
        v45 = sub_267BA33E8(v42, v44, v72);
        v25 = v68;

        *(v37 + 14) = v45;
        OUTLINED_FUNCTION_43_7(&dword_267B93000, v46, v47, "Read lastUsageTimestamp for event %s: %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      else
      {

        (*(v24 + 8))(v27, v8);
      }

      v61 = v69;
      v65(v69, v25, v8);
      v60 = 0;
      return OUTLINED_FUNCTION_34_5(v61, v60);
    }
  }

  else
  {
    sub_267B9FF34(&v74, &qword_28022AEF0, &qword_267EFCDE0);
    OUTLINED_FUNCTION_34_5(v7, 1);
  }

  sub_267B9FF34(v7, &qword_28022BD90, &unk_267EFCDD0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v48 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v48, qword_280240FB0);
  v49 = OUTLINED_FUNCTION_13_9();
  sub_267C5E960(v49, v50, v51);
  v52 = sub_267EF89F8();
  v53 = sub_267EF95D8();
  v54 = OUTLINED_FUNCTION_13_9();
  sub_267C5E97C(v54, v55, v56);
  if (os_log_type_enabled(v52, v53))
  {
    OUTLINED_FUNCTION_48();
    v72[0] = OUTLINED_FUNCTION_20_3();
    *v22 = 136315138;
    v74 = v15;
    v75 = v16;
    v76 = v17;
    v57 = ConversationEventStore.Event.rawValue.getter();
    v59 = sub_267BA33E8(v57, v58, v72);

    *(v22 + 4) = v59;
    _os_log_impl(&dword_267B93000, v52, v53, "No lastUsageTimestamp for event %s", v22, 0xCu);
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_11_11();
  }

  v60 = 1;
  v61 = v69;
  return OUTLINED_FUNCTION_34_5(v61, v60);
}

uint64_t ConversationEventStore.setDisabled(event:)()
{
  OUTLINED_FUNCTION_28_10();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = OUTLINED_FUNCTION_2_20();
  sub_267C5E960(v3, v4, v5);
  v6 = sub_267EF89F8();
  sub_267EF95D8();
  v7 = OUTLINED_FUNCTION_2_20();
  if (OUTLINED_FUNCTION_39_3(v7, v8, v9))
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_38_6();
    *v1 = 136315138;
    v15 = OUTLINED_FUNCTION_32_5(v10, v11, v12, v13, v14);
    v19 = OUTLINED_FUNCTION_46_3(v15, v16, v17, v18);

    *(v1 + 4) = v19;
    OUTLINED_FUNCTION_15_7();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_11_11();
  }

  v25 = v0[3];
  v26 = v0[4];
  v27 = __swift_project_boxed_opaque_existential_0(v0, v25);
  v35 = OUTLINED_FUNCTION_32_5(v27, v28, v29, v30, v31);
  v36 = v32;

  OUTLINED_FUNCTION_6_9();

  (*(v26 + 48))(1, v35, v36, v25, v26);
  OUTLINED_FUNCTION_27_1();
}

SiriMessagesFlow::ConversationEventStore::Hint_optional __swiftcall ConversationEventStore.Hint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267EF9D38();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ConversationEventStore.Hint.rawValue.getter()
{
  result = 0xD000000000000019;
  switch(*v0)
  {
    case 1:
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
    case 8:
      result = 0xD000000000000022;
      break;
    case 4:
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 9:
    case 0xC:
      result = 0xD000000000000025;
      break;
    case 0xA:
      result = 0xD000000000000027;
      break;
    case 0xB:
      result = 0xD00000000000002BLL;
      break;
    case 0xD:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267C5CC28@<X0>(unint64_t *a1@<X8>)
{
  result = ConversationEventStore.Hint.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ConversationEventStore.Event.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  switch(*(v0 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_40_3();
      v6 = v7 - 8;
      goto LABEL_9;
    case 2:
      OUTLINED_FUNCTION_40_3();
      v6 = v5 - 1;
LABEL_9:
      v22 = v6;
      goto LABEL_10;
    case 3:
      v22 = 0x6269726373627553;
LABEL_10:
      MEMORY[0x26D608E60](v1, v2);
      result = v22;
      break;
    case 4:
      switch(v1)
      {
        case 1:
          OUTLINED_FUNCTION_1_21();
          result = v12 + 17;
          break;
        case 2:
          OUTLINED_FUNCTION_1_21();
          result = v9 + 7;
          break;
        case 3:
          OUTLINED_FUNCTION_1_21();
          result = v10 + 8;
          break;
        case 4:
          OUTLINED_FUNCTION_1_21();
          result = v8 - 7;
          break;
        case 5:
          OUTLINED_FUNCTION_1_21();
          result = v13 + 11;
          break;
        case 6:
          goto LABEL_20;
        case 7:
          OUTLINED_FUNCTION_1_21();
          result = v11 - 3;
          break;
        default:
          OUTLINED_FUNCTION_1_21();
          result = v4 + 3;
          break;
      }

      break;
    default:
      switch(*v0)
      {
        case 1u:
        case 5u:
          OUTLINED_FUNCTION_1_21();
          result = v17 | 6;
          break;
        case 2u:
LABEL_20:
          OUTLINED_FUNCTION_1_21();
          result = v16 + 1;
          break;
        case 3u:
        case 8u:
          OUTLINED_FUNCTION_1_21();
          result = v21 + 9;
          break;
        case 4u:
        case 6u:
          OUTLINED_FUNCTION_1_21();
          result = v19 + 5;
          break;
        case 7u:
          result = 0xD000000000000019;
          break;
        case 9u:
        case 0xCu:
          OUTLINED_FUNCTION_1_21();
          result = v15 + 12;
          break;
        case 0xAu:
          OUTLINED_FUNCTION_1_21();
          result = v20 + 14;
          break;
        case 0xBu:
          OUTLINED_FUNCTION_1_21();
          result = v14 + 18;
          break;
        case 0xDu:
          OUTLINED_FUNCTION_1_21();
          result = v18 | 4;
          break;
        default:
          result = 0xD000000000000019;
          break;
      }

      break;
  }

  return result;
}

uint64_t sub_267C5CF54@<X0>(uint64_t *a1@<X8>)
{
  result = ConversationEventStore.Event.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_267C5CF7C(uint64_t a1, char a2)
{
  v5 = v2;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = OUTLINED_FUNCTION_2_20();
  if (sub_267C28E68(v10, v11, v12, 13, 0))
  {
    oslog = a2;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    OUTLINED_FUNCTION_18_9();
    v13 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
    v14 = OUTLINED_FUNCTION_2_20();
    sub_267C5E960(v14, v15, v16);
    v17 = sub_267EF89F8();
    v18 = sub_267EF95D8();
    v19 = OUTLINED_FUNCTION_2_20();
    sub_267C5E97C(v19, v20, v21);
    if (os_log_type_enabled(v17, v18))
    {
      v4 = OUTLINED_FUNCTION_35_0();
      v51 = swift_slowAlloc();
      *v4 = 136315394;
      v56 = v7;
      v57 = v8;
      v58 = v9;
      v53 = ConversationEventStore.Event.rawValue.getter();
      v54 = v22;

      MEMORY[0x26D608E60](0x6F466C6576654C2ELL, v3);

      v23 = sub_267BA33E8(v53, v54, &v51);

      *(v4 + 4) = v23;
      *(v4 + 12) = 2080;
      v24 = 0xE700000000000000;
      v25 = 0x6C6F72746E6F63;
      switch(oslog)
      {
        case 1:
          v26 = 1701998445;
          goto LABEL_17;
        case 2:
          v25 = 0xD000000000000011;
          v24 = 0x8000000267F0F8F0;
          break;
        case 3:
          v26 = 1936942444;
LABEL_17:
          v25 = v26 | 0x746E694800000000;
          v24 = 0xE900000000000073;
          break;
        default:
          break;
      }

      v3 = sub_267BA33E8(v25, v24, &v51);

      *(v4 + 14) = v3;
      OUTLINED_FUNCTION_43_7(&dword_267B93000, v41, v42, "#ConversationEventStore Storing %s with value of %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();

      OUTLINED_FUNCTION_18_9();
    }

    else
    {
    }

    v43 = v5[3];
    v44 = v5[4];
    __swift_project_boxed_opaque_existential_0(v5, v43);
    v45 = 0xE700000000000000;
    v46 = 0x6C6F72746E6F63;
    switch(oslog)
    {
      case 0:
        goto LABEL_24;
      case 1:
        v47 = 1701998445;
        goto LABEL_23;
      case 2:
        v46 = 0xD000000000000011;
        v45 = 0x8000000267F0F8F0;
        goto LABEL_24;
      case 3:
        v47 = 1936942444;
LABEL_23:
        v46 = v47 | 0x746E694800000000;
        v45 = 0xE900000000000073;
LABEL_24:
        v59 = MEMORY[0x277D837D0];
        v56 = v46;
        v57 = v45;
        v53 = v7;
        v54 = v8;
        v55 = v9;
        v51 = ConversationEventStore.Event.rawValue.getter();
        v52 = v48;

        MEMORY[0x26D608E60](v4, v3);

        (*(v44 + 64))(&v56, v51, v52, v43, v44);

        sub_267B9FF34(&v56, &qword_28022AEF0, &qword_267EFCDE0);
        break;
      default:
        JUMPOUT(0);
    }

    goto LABEL_25;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v27 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v27, qword_280240FB0);
  v28 = OUTLINED_FUNCTION_2_20();
  sub_267C5E960(v28, v29, v30);
  osloga = sub_267EF89F8();
  v31 = sub_267EF95E8();
  v32 = OUTLINED_FUNCTION_2_20();
  sub_267C5E97C(v32, v33, v34);
  if (os_log_type_enabled(osloga, v31))
  {
    v35 = OUTLINED_FUNCTION_48();
    v36 = OUTLINED_FUNCTION_52();
    v53 = v36;
    *v35 = 136315138;
    v56 = v7;
    v57 = v8;
    v58 = v9;
    v37 = ConversationEventStore.Event.rawValue.getter();
    sub_267BA33E8(v37, v38, &v53);
    OUTLINED_FUNCTION_43();

    *(v35 + 4) = &v56;
    _os_log_impl(&dword_267B93000, osloga, v31, "#ConversationEventStore levelForFactor should not be used for %s events", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

LABEL_25:
    OUTLINED_FUNCTION_41_0();
    return;
  }

  OUTLINED_FUNCTION_41_0();
}

void sub_267C5D410(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = OUTLINED_FUNCTION_5_15();
  if (sub_267C28E68(v5, v6, v7, 13, 0))
  {
    v8 = v1[3];
    v9 = v1[4];
    v10 = __swift_project_boxed_opaque_existential_0(v1, v8);
    v68 = v3;
    v69 = v2;
    v70 = v4;
    v66 = ConversationEventStore.Event.rawValue.getter();
    v67 = v11;

    MEMORY[0x26D608E60](0x6F466C6576654C2ELL, 0xEF726F7463614672);

    (*(v9 + 40))(v71, v66, v67, v8, v9);

    if (v71[3])
    {
      if (swift_dynamicCast())
      {
        v12 = sub_267C3C61C(v68, v69);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v13 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
        v14 = OUTLINED_FUNCTION_5_15();
        sub_267C5E960(v14, v15, v16);
        v17 = sub_267EF89F8();
        v18 = sub_267EF95D8();
        v19 = OUTLINED_FUNCTION_5_15();
        sub_267C5E97C(v19, v20, v21);
        if (os_log_type_enabled(v17, v18))
        {
          OUTLINED_FUNCTION_35_0();
          v65 = OUTLINED_FUNCTION_33_2();
          v66 = v65;
          *v10 = 136315394;
          v68 = OUTLINED_FUNCTION_31_6(v65, v22, v23, v24, v25);
          v69 = v26;

          MEMORY[0x26D608E60](0x6F466C6576654C2ELL, 0xEF726F7463614672);

          sub_267BA33E8(v68, v69, &v66);
          OUTLINED_FUNCTION_43();

          *(v10 + 4) = &v68;
          *(v10 + 6) = 2080;
          v27 = 0xE700000000000000;
          v28 = 0x6C6F72746E6F63;
          switch(v12)
          {
            case 0:
              goto LABEL_24;
            case 1:
              v29 = 1701998445;
              goto LABEL_23;
            case 2:
              v27 = 0x8000000267F0F8F0;
              v28 = 0xD000000000000011;
              goto LABEL_24;
            case 3:
              v29 = 1936942444;
LABEL_23:
              v28 = v29 | 0x746E694800000000;
              v27 = 0xE900000000000073;
LABEL_24:
              sub_267BA33E8(v28, v27, &v66);
              OUTLINED_FUNCTION_43();

              *(v10 + 14) = &v68;
              _os_log_impl(&dword_267B93000, v17, v18, "#ConversationEventStore Reading %s value: %s", v10, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_32_0();
              OUTLINED_FUNCTION_9_11();
              break;
            default:
              goto LABEL_15;
          }
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_267B9FF34(v71, &qword_28022AEF0, &qword_267EFCDE0);
    }

LABEL_15:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v49 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v49, qword_280240FB0);
    v50 = OUTLINED_FUNCTION_5_15();
    sub_267C5E960(v50, v51, v52);
    v53 = sub_267EF89F8();
    v54 = sub_267EF95D8();
    v55 = OUTLINED_FUNCTION_5_15();
    sub_267C5E97C(v55, v56, v57);
    if (os_log_type_enabled(v53, v54))
    {
      v58 = OUTLINED_FUNCTION_48();
      v59 = OUTLINED_FUNCTION_52();
      v66 = v59;
      *v58 = 136315138;
      v68 = OUTLINED_FUNCTION_31_6(v59, v60, v61, v62, v63);
      v69 = v64;

      MEMORY[0x26D608E60](0x6F466C6576654C2ELL, 0xEF726F7463614672);

      sub_267BA33E8(v68, v69, &v66);
      OUTLINED_FUNCTION_43();

      *(v58 + 4) = &v68;
      _os_log_impl(&dword_267B93000, v53, v54, "#ConversationEventStore No %s value in user defaults", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_9_11();
    }

    goto LABEL_20;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v30 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v30, qword_280240FB0);
  v31 = OUTLINED_FUNCTION_5_15();
  sub_267C5E960(v31, v32, v33);
  v34 = sub_267EF89F8();
  v35 = sub_267EF95E8();
  v36 = OUTLINED_FUNCTION_5_15();
  sub_267C5E97C(v36, v37, v38);
  if (os_log_type_enabled(v34, v35))
  {
    v39 = OUTLINED_FUNCTION_48();
    v40 = OUTLINED_FUNCTION_52();
    v68 = v40;
    *v39 = 136315138;
    v45 = OUTLINED_FUNCTION_31_6(v40, v41, v42, v43, v44);
    sub_267BA33E8(v45, v46, &v68);
    OUTLINED_FUNCTION_43();

    *(v39 + 4) = v1;
    OUTLINED_FUNCTION_42_4(&dword_267B93000, v47, v48, "#ConversationEventStore levelForFactor should not used for %s events");
    __swift_destroy_boxed_opaque_existential_0(v40);
    OUTLINED_FUNCTION_11_11();
    OUTLINED_FUNCTION_32_0();
  }

LABEL_20:
  OUTLINED_FUNCTION_41_0();
}

uint64_t sub_267C5D908@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v2);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - v4;
  v6 = sub_267EF2CC8();
  OUTLINED_FUNCTION_58();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_60();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = v1[3];
  v17 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v16);
  (*(v17 + 40))(v40, 0x614C664F65746144, 0xEE00746E69487473, v16, v17);
  if (v40[3])
  {
    v18 = swift_dynamicCast();
    OUTLINED_FUNCTION_34_5(v5, v18 ^ 1u);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {
      v19 = *(v8 + 32);
      v19(v15, v5, v6);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v20 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);
      (*(v8 + 16))(v12, v15, v6);
      v21 = sub_267EF89F8();
      v22 = sub_267EF95D8();
      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_35_0();
        v37 = OUTLINED_FUNCTION_33_2();
        v40[0] = v37;
        *v17 = 136315394;
        *(v17 + 4) = OUTLINED_FUNCTION_21_5();
        *(v17 + 12) = 2080;
        sub_267C5EDC0();
        v23 = sub_267EF9E58();
        v38 = v19;
        v25 = v24;
        (*(v8 + 8))(v12, v6);
        v26 = sub_267BA33E8(v23, v25, v40);
        v19 = v38;

        *(v17 + 14) = v26;
        _os_log_impl(&dword_267B93000, v21, v22, "Read lastUsageTimestamp for %s: %s", v17, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_9_11();
      }

      else
      {

        (*(v8 + 8))(v12, v6);
      }

      v31 = v39;
      v19(v39, v15, v6);
      v34 = 0;
      return OUTLINED_FUNCTION_34_5(v31, v34);
    }
  }

  else
  {
    sub_267B9FF34(v40, &qword_28022AEF0, &qword_267EFCDE0);
    OUTLINED_FUNCTION_34_5(v5, 1);
  }

  sub_267B9FF34(v5, &qword_28022BD90, &unk_267EFCDD0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v27 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v27, qword_280240FB0);
  v28 = sub_267EF89F8();
  v29 = sub_267EF95D8();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v39;
  if (v30)
  {
    v32 = OUTLINED_FUNCTION_48();
    v33 = OUTLINED_FUNCTION_52();
    v40[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = OUTLINED_FUNCTION_21_5();
    _os_log_impl(&dword_267B93000, v28, v29, "No lastUsageTimestamp for event %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v34 = 1;
  return OUTLINED_FUNCTION_34_5(v31, v34);
}

void sub_267C5DD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_28_10();
  v12 = *v11;
  v13 = OUTLINED_FUNCTION_44_6();
  v18 = OUTLINED_FUNCTION_16_6(v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_22_7(v18, v19);
  v20 = OUTLINED_FUNCTION_4_15();
  MEMORY[0x26D608E60](v20);

  OUTLINED_FUNCTION_14_12();
  v22 = v21();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v23 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v23, qword_280240FB0);
  v24 = OUTLINED_FUNCTION_7_11();
  sub_267C5E960(v24, v25, v26);
  v27 = sub_267EF89F8();
  sub_267EF95D8();
  v28 = OUTLINED_FUNCTION_7_11();
  if (OUTLINED_FUNCTION_39_3(v28, v29, v30))
  {
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_38_6();
    *a11 = 136315394;
    v36 = OUTLINED_FUNCTION_16_6(v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_46_3(v36, v37, v38, v39);
    OUTLINED_FUNCTION_45_3();
    *(a11 + 4) = v12;
    *(a11 + 12) = 2048;
    *(a11 + 14) = v22;
    OUTLINED_FUNCTION_15_7();
    _os_log_impl(v40, v41, v42, v43, v44, 0x16u);
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_11_11();
  }

  OUTLINED_FUNCTION_27_1();
}

void sub_267C5DEC0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v5);
  *&v38 = v2;
  *(&v38 + 1) = v3;
  LOBYTE(v39) = v4;
  v36 = ConversationEventStore.Event.rawValue.getter();
  v37 = v7;

  v8 = OUTLINED_FUNCTION_4_15();
  MEMORY[0x26D608E60](v8);

  (*(v6 + 56))(0, v36, v37, v5, v6);

  v9 = v1[3];
  v10 = v1[4];
  v11 = __swift_project_boxed_opaque_existential_0(v1, v9);
  v38 = 0u;
  v39 = 0u;
  v16 = OUTLINED_FUNCTION_32_5(v11, v12, v13, v14, v15);
  OUTLINED_FUNCTION_22_7(v16, v17);
  v18 = OUTLINED_FUNCTION_3_14();
  MEMORY[0x26D608E60](v18);

  (*(v10 + 64))(&v38, v34, v35, v9, v10);

  sub_267B9FF34(&v38, &qword_28022AEF0, &qword_267EFCDE0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v19 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);
  v20 = OUTLINED_FUNCTION_2_20();
  sub_267C5E960(v20, v21, v22);
  v23 = sub_267EF89F8();
  v24 = sub_267EF95D8();
  v25 = OUTLINED_FUNCTION_2_20();
  sub_267C5E97C(v25, v26, v27);
  if (os_log_type_enabled(v23, v24))
  {
    v28 = OUTLINED_FUNCTION_48();
    v29 = OUTLINED_FUNCTION_52();
    v36 = v29;
    *v28 = 136315138;
    *&v38 = v2;
    *(&v38 + 1) = v3;
    LOBYTE(v39) = v4;
    v30 = ConversationEventStore.Event.rawValue.getter();
    sub_267BA33E8(v30, v31, &v36);
    OUTLINED_FUNCTION_43();

    *(v28 + 4) = &v38;
    OUTLINED_FUNCTION_42_4(&dword_267B93000, v32, v33, "Reset Event '%s' in the store setting date of occurence to nil and the usage count to 0");
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_11_11();
    OUTLINED_FUNCTION_32_0();
  }
}

void sub_267C5E0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_28_10();
  v12 = *v11;
  v13 = OUTLINED_FUNCTION_44_6();
  v18 = OUTLINED_FUNCTION_16_6(v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_22_7(v18, v19);
  OUTLINED_FUNCTION_6_9();

  OUTLINED_FUNCTION_14_12();
  v21 = v20();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v22 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
  v23 = OUTLINED_FUNCTION_7_11();
  sub_267C5E960(v23, v24, v25);
  v26 = sub_267EF89F8();
  sub_267EF95D8();
  v27 = OUTLINED_FUNCTION_7_11();
  if (OUTLINED_FUNCTION_39_3(v27, v28, v29))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_38_6();
    *a11 = 136315394;
    v35 = OUTLINED_FUNCTION_16_6(v30, v31, v32, v33, v34);
    OUTLINED_FUNCTION_46_3(v35, v36, v37, v38);
    OUTLINED_FUNCTION_45_3();
    *(a11 + 4) = v12;
    *(a11 + 12) = 1024;
    *(a11 + 14) = v21 & 1;
    OUTLINED_FUNCTION_15_7();
    _os_log_impl(v39, v40, v41, v42, v43, 0x12u);
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_11_11();
  }

  OUTLINED_FUNCTION_27_1();
}

void sub_267C5E230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_28_10();
  v12 = *v11;
  v13 = OUTLINED_FUNCTION_44_6();
  v18 = OUTLINED_FUNCTION_16_6(v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_22_7(v18, v19);
  OUTLINED_FUNCTION_6_9();

  OUTLINED_FUNCTION_14_12();
  v20();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v21 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);
  v22 = OUTLINED_FUNCTION_7_11();
  sub_267C5E960(v22, v23, v24);
  v25 = sub_267EF89F8();
  sub_267EF95D8();
  v26 = OUTLINED_FUNCTION_7_11();
  if (OUTLINED_FUNCTION_39_3(v26, v27, v28))
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_38_6();
    *a11 = 136315138;
    v34 = OUTLINED_FUNCTION_16_6(v29, v30, v31, v32, v33);
    OUTLINED_FUNCTION_46_3(v34, v35, v36, v37);
    OUTLINED_FUNCTION_45_3();
    *(a11 + 4) = v12;
    OUTLINED_FUNCTION_15_7();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_11_11();
  }

  OUTLINED_FUNCTION_27_1();
}

BOOL sub_267C5E360()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v0);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - v2;
  sub_267C5D908(&v24 - v2);
  v4 = sub_267EF2CC8();
  v5 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
  sub_267B9FF34(v3, &qword_28022BD90, &unk_267EFCDD0);
  if (EnumTagSinglePayload == 1)
  {
    LOBYTE(v25) = 0;
    sub_267C5DD80(&v24, v7, v8, v9, v10, v11, v12, v13, 13, 0, v25);
    if (!v21)
    {
      LOBYTE(v25) = 0;
      sub_267C5DD80(&v24, v14, v15, v16, v17, v18, v19, v20, 0, 0, v25);
      return v22 != 0;
    }
  }

  return v5;
}

uint64_t sub_267C5E458@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  sub_267C5EE18(v1 + 40, &v24);
  if (v25)
  {
    sub_267B9A5E8(&v24, &v26);
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v8 = sub_267BEB478(0xD00000000000001CLL, 0x8000000267F13580);
    v9 = v8;
    if (v8)
    {
      v8 = sub_267BEB4DC();
      v10 = &off_2878D36E8;
    }

    else
    {
      v10 = 0;
      *(&v26 + 1) = 0;
      v27 = 0;
    }

    *&v26 = v9;
    v28 = v8;
    v29 = v10;
    if (v25)
    {
      sub_267B9FF34(&v24, &qword_280229840, &qword_267EFE9E0);
    }
  }

  if (v28)
  {
    sub_267B9A5E8(&v26, v30);
    v11 = v31;
    v12 = v32;
    __swift_project_boxed_opaque_existential_0(v30, v31);
    (*(v12 + 40))(&v26, 0xD00000000000001ALL, 0x8000000267F135A0, v11, v12);
    if (v28)
    {
      v13 = sub_267EF2CC8();
      v14 = swift_dynamicCast() ^ 1;
      v15 = v6;
      v16 = v13;
    }

    else
    {
      sub_267B9FF34(&v26, &qword_28022AEF0, &qword_267EFCDE0);
      v16 = sub_267EF2CC8();
      v15 = v6;
      v14 = 1;
    }

    __swift_storeEnumTagSinglePayload(v15, v14, 1, v16);
    sub_267C5EE88(v6, a1);
    return __swift_destroy_boxed_opaque_existential_0(v30);
  }

  else
  {
    sub_267B9FF34(&v26, &qword_280229840, &qword_267EFE9E0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v17 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v17, qword_280240FB0);
    v18 = sub_267EF89F8();
    v19 = sub_267EF95D8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_267B93000, v18, v19, "Couldn't open suite com.apple.assistant.backedup", v20, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v21 = sub_267EF2CC8();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v21);
  }
}

uint64_t sub_267C5E738()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_0(v0, v0[3]);
  v2 = OUTLINED_FUNCTION_29_4();
  v3(v2);
  v4 = v8[3];
  sub_267B9FF34(v8, &qword_28022AEF0, &qword_267EFCDE0);
  if (!v4)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  v5 = OUTLINED_FUNCTION_29_4();
  if (v6(v5))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_267C5E80C(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v5);
  v9[3] = MEMORY[0x277D837D0];
  v9[0] = a1;
  v9[1] = a2;
  v7 = *(v6 + 64);

  v7(v9, 0xD00000000000002CLL, 0x8000000267F13520, v5, v6);
  return sub_267B9FF34(v9, &qword_28022AEF0, &qword_267EFCDE0);
}

uint64_t sub_267C5E8F4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_267BA33E8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

_BYTE **sub_267C5E950(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_267C5E960(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 2)
  {
  }

  return result;
}

uint64_t sub_267C5E97C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 2)
  {
  }

  return result;
}

unint64_t sub_267C5E99C()
{
  result = qword_280229828;
  if (!qword_280229828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229828);
  }

  return result;
}

unint64_t sub_267C5E9F4()
{
  result = qword_280229830;
  if (!qword_280229830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229838, &qword_267EFE7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229830);
  }

  return result;
}

uint64_t sub_267C5EA60(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_267C5EAA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversationEventStore.Hint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConversationEventStore.Hint(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow22ConversationEventStoreV0E0O(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_267C5ECA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_267C5ECE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_267C5ED24(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

void *sub_267C5ED48(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = (a4)(&v7, a1, a2, a3);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_267C5ED90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_267C5EDC0()
{
  result = qword_28022BDE0;
  if (!qword_28022BDE0)
  {
    sub_267EF2CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BDE0);
  }

  return result;
}

uint64_t sub_267C5EE18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229840, &qword_267EFE9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C5EE88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C5EEF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_267EFA0A8();
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = 0;
    v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_267EF9B58();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v20[0] = a1;
          v20[1] = v19;
          if (*(v20 + v9) < 0)
          {
            switch(__clz(*(v20 + v9) ^ 0xFF))
            {
              case 0x1Au:
LABEL_19:
                v15 = 2;
                break;
              case 0x1Bu:
LABEL_20:
                v15 = 3;
                break;
              case 0x1Cu:
LABEL_21:
                v15 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v11 = v18;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_267EF9BC8();
          }

          v12 = *(v11 + v9);
          v13 = *(v11 + v9);
          if (v12 < 0)
          {
            switch(__clz(v13 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_19;
              case 0x1Bu:
                goto LABEL_20;
              case 0x1Cu:
                goto LABEL_21;
              default:
                break;
            }
          }
        }

LABEL_14:
        v15 = 1;
      }

LABEL_15:
      sub_267EFA0B8();
      v16 = sub_267EFA098();
      (*v10)(v7, v4);
      if ((v16 & 1) == 0)
      {
        v9 += v15;
        if (v9 < v8)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_267C5F164(uint64_t a1)
{
  v3 = v2;
  v109 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v108 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v107 = v8 - v7;
  v9 = OUTLINED_FUNCTION_26_2();
  v113 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult(v9);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6();
  v112 = v11;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  v114 = &v104 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229930, &qword_267EFEB88);
  OUTLINED_FUNCTION_18(v14);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  v117 = v16;
  v17 = OUTLINED_FUNCTION_26_2();
  type metadata accessor for FollowupOfferFlow.State(v17);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6();
  v115 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  v118 = &v104 - v21;
  OUTLINED_FUNCTION_26_2();
  v22 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_0_0();
  v28 = v27 - v26;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v29 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);
  v30 = *(v24 + 16);
  v111 = v24 + 16;
  v110 = v30;
  v30(v28, a1, v22);
  v116 = v2;
  v31 = sub_267EF89F8();
  sub_267EF95C8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_48();
    v106 = v2;
    v34 = v33;
    v35 = OUTLINED_FUNCTION_52();
    v122[0] = v35;
    *v34 = 136315138;
    sub_267C6AD98(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v36 = sub_267EF9E58();
    v37 = v28;
    v38 = v22;
    (*(v24 + 8))(v37, v22);
    v39 = OUTLINED_FUNCTION_108();
    sub_267BA33E8(v39, v40, v41);
    OUTLINED_FUNCTION_54();

    *(v34 + 4) = v36;
    _os_log_impl(&dword_267B93000, v31, v1, "#FollowupOfferFlow received input: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_45_2();
    v3 = v106;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v42 = v28;
    v38 = v22;
    (*(v24 + 8))(v42, v22);
  }

  v43 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  OUTLINED_FUNCTION_83(v3 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state, v123);
  OUTLINED_FUNCTION_4_16();
  v44 = v118;
  sub_267C6AC8C(v3 + v43, v118);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7 || ((1 << EnumCaseMultiPayload) & 0xB0) == 0)
  {

    v53 = sub_267EF89F8();
    sub_267EF95E8();

    if (OUTLINED_FUNCTION_116_0())
    {
      OUTLINED_FUNCTION_48();
      v54 = OUTLINED_FUNCTION_64_2();
      v122[0] = v54;
      *a1 = 136315138;
      OUTLINED_FUNCTION_4_16();
      sub_267C6AC8C(v3 + v43, v115);
      v55 = sub_267EF9098();
      v57 = sub_267BA33E8(v55, v56, v122);

      *(a1 + 4) = v57;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_1_22();
    sub_267BA0810(v44, v63);
    return 0;
  }

  v46 = v117;
  sub_267C63E8C(v117);
  v47 = type metadata accessor for FollowupOfferResponse(0);
  if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
  {
    v48 = v116;
    v49 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_56_2();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v51);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v49, v48, "#FollowupOfferFlow response not returned by strategy, ignoring input");
      OUTLINED_FUNCTION_26();
    }

    return 0;
  }

  if (__swift_getEnumTagSinglePayload(v46, 1, v113) != 1)
  {
    OUTLINED_FUNCTION_6_10();
    sub_267C6ACF4(v46, v114);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v66 = v112;
    __swift_storeEnumTagSinglePayload(v112, 1, 9, v65);
    v67 = OUTLINED_FUNCTION_61_0();
    v69 = sub_267E0B668(v67, v68);
    OUTLINED_FUNCTION_0_12();
    sub_267BA0810(v66, v70);
    if ((v69 & 1) != 0 && *(*(v3 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager) + 88))
    {
      v71 = v116;
      v72 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_56_2();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v74);
        OUTLINED_FUNCTION_48_3(&dword_267B93000, v72, v71, "#FollowupOfferFlow user rejected spoken message followup. Closing Siri.");
        OUTLINED_FUNCTION_26();
      }

      v75 = v3[6];
      __swift_project_boxed_opaque_existential_0(v3 + 2, v3[5]);
      v76 = OUTLINED_FUNCTION_43();
      v77(v76, v75);
      __swift_project_boxed_opaque_existential_0(v122, v122[3]);
      v78 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
      sub_267EF45E8();

      OUTLINED_FUNCTION_0_12();
      sub_267BA0810(v114, v79);
      __swift_destroy_boxed_opaque_existential_0(v122);
      return 0;
    }

    v80 = v107;
    sub_267EF4B88();
    v81 = sub_267E57DFC(v80, v122);
    (*(v108 + 8))(v80, v109, v81);
    sub_267C6AD4C(v122, v119, &unk_28022BBF0, &unk_267F01C60);
    v105 = a1;
    if (v120)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229210, &qword_267EFCB98);
      type metadata accessor for SmsNLv3Intent(0);
      if (swift_dynamicCast())
      {
        if (sub_267EC2D80() & 1) == 0 && sub_267EC4C40() == 8 && (sub_267EC3C50())
        {
          v82 = v3[6];
          __swift_project_boxed_opaque_existential_0(v3 + 2, v3[5]);
          v83 = OUTLINED_FUNCTION_43();
          v84(v83, v82);
          v85 = v121;
          __swift_project_boxed_opaque_existential_0(v119, v120);
          OUTLINED_FUNCTION_43();
          v86 = sub_267EF3C48();
          __swift_destroy_boxed_opaque_existential_0(v119);
          if ((v86 & 1) == 0)
          {
            v99 = v116;
            v100 = sub_267EF89F8();
            sub_267EF95C8();
            OUTLINED_FUNCTION_56_2();
            if (os_log_type_enabled(v100, v101))
            {
              v102 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_61(v102);
              _os_log_impl(&dword_267B93000, v100, v99, "#FollowupOfferFlow received content-only reply", v85, 2u);
              OUTLINED_FUNCTION_40_0();
            }

            v87 = sub_267EC4D94();
            v88 = v103;

            goto LABEL_32;
          }
        }
      }
    }

    else
    {
      sub_267B9F98C(v119, &unk_28022BBF0, &unk_267F01C60);
    }

    v87 = 0;
    v88 = 0;
LABEL_32:
    v89 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager);
    sub_267C6AD4C(v122, v119, &unk_28022BBF0, &unk_267F01C60);
    if (v120)
    {
      v90 = v121;
      __swift_project_boxed_opaque_existential_0(v119, v120);
      v91 = OUTLINED_FUNCTION_54();
      v93 = v92(v91, v90);
      __swift_destroy_boxed_opaque_existential_0(v119);
    }

    else
    {
      sub_267B9F98C(v119, &unk_28022BBF0, &unk_267F01C60);
      v93 = 0;
    }

    *(v89 + 426) = v93 & 1;
    sub_267C48258(v122, v89);
    sub_267B9F98C(v122, &unk_28022BBF0, &unk_267F01C60);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298F8, &qword_267EFEB58);
    v95 = *(v94 + 48);
    v96 = v115;
    v97 = (v115 + *(v94 + 64));
    OUTLINED_FUNCTION_6_10();
    sub_267C6ACF4(v98, v96);
    v110(v96 + v95, v105, v38);
    *v97 = v87;
    v97[1] = v88;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_66_3(v3 + v43, v119);
    sub_267BF8DEC(v96, v3 + v43);
    goto LABEL_36;
  }

  v52 = v115;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_3(v3 + v43, v122);
  sub_267BF8DEC(v52, v3 + v43);
LABEL_36:
  swift_endAccess();
  return 1;
}

uint64_t sub_267C5FB7C()
{
  OUTLINED_FUNCTION_12();
  v1[85] = v0;
  v1[84] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229950, &unk_267EFEBB0);
  OUTLINED_FUNCTION_18(v3);
  v1[86] = OUTLINED_FUNCTION_50();
  v1[87] = swift_task_alloc();
  v4 = sub_267EF4C08();
  v1[88] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[89] = v5;
  v1[90] = OUTLINED_FUNCTION_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_18(v6);
  v1[91] = OUTLINED_FUNCTION_50();
  v1[92] = swift_task_alloc();
  v7 = sub_267EF4BA8();
  v1[93] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[94] = v8;
  v1[95] = OUTLINED_FUNCTION_2();
  v9 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult(0);
  v1[96] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[97] = OUTLINED_FUNCTION_50();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v10 = type metadata accessor for FollowupOfferFlow.State(0);
  v1[101] = v10;
  OUTLINED_FUNCTION_18(v10);
  v1[102] = OUTLINED_FUNCTION_50();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267C5FD70()
{
  v279 = v1;
  v2 = v1;
  v3 = *(v1 + 840);
  v4 = *(v1 + 680);
  v5 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  *(v1 + 848) = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  OUTLINED_FUNCTION_83(v4 + v5, v1 + 368);
  OUTLINED_FUNCTION_4_16();
  sub_267C6AC8C(v4 + v5, v3);
  OUTLINED_FUNCTION_61_6();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v263 = v5;
      v264 = v4;
      v6 = *(v1 + 824);
      v7 = *(v2 + 800);
      v8 = *(v2 + 792);
      v9 = *(v2 + 760);
      v10 = *(v2 + 752);
      v269 = v2;
      v11 = *(v2 + 744);
      OUTLINED_FUNCTION_4_16();
      sub_267C6AC8C(v12, v6);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298F8, &qword_267EFEB58);
      v14 = *(v13 + 48);
      v15 = (v6 + *(v13 + 64));
      v17 = *v15;
      v16 = v15[1];
      OUTLINED_FUNCTION_6_10();
      sub_267C6ACF4(v6, v7);
      (*(v10 + 32))(v9, v6 + v14, v11);
      OUTLINED_FUNCTION_7_12();
      sub_267C6AC8C(v7, v8);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 9, v18);
      if (EnumTagSinglePayload == 9)
      {

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v122 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v122, qword_280240FB0);
        v123 = sub_267EF89F8();
        v124 = sub_267EF95C8();
        v2 = v269;
        if (OUTLINED_FUNCTION_7_2(v124))
        {
          v125 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_59(v125);
          OUTLINED_FUNCTION_38_1(&dword_267B93000, v126, v127, "#FollowupOfferFlow empty response, waiting for input");
          OUTLINED_FUNCTION_42_0();
        }

        v117 = *(v269 + 800);

        sub_267EF3FB8();
        v128 = OUTLINED_FUNCTION_26_0();
        v129(v128);
LABEL_88:
        OUTLINED_FUNCTION_0_12();
        v131 = v117;
LABEL_95:
        sub_267BA0810(v131, v130);
        goto LABEL_96;
      }

      if (EnumTagSinglePayload == 6)
      {
        if (!v16)
        {
          v165 = swift_task_alloc();
          *(v269 + 968) = v165;
          *v165 = v269;
          v165[1] = sub_267C626D0;
          OUTLINED_FUNCTION_39_0();

          return sub_267C6643C();
        }

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v113 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v113, qword_280240FB0);
        v114 = sub_267EF89F8();
        v115 = sub_267EF95C8();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = OUTLINED_FUNCTION_32();
          *v116 = 0;
          _os_log_impl(&dword_267B93000, v114, v115, "#FollowupOfferFlow pushing flow to confirm reply", v116, 2u);
          OUTLINED_FUNCTION_29_1();
        }

        v117 = *(v269 + 800);
        v118 = *(v269 + 760);
        v119 = *(v269 + 672);

        sub_267C68164(v118, v17, v16, v119);

        v120 = OUTLINED_FUNCTION_44_0();
        v121(v120);
        v2 = v269;
        goto LABEL_88;
      }

      v2 = v269;
      if (EnumTagSinglePayload)
      {
        v132 = *(v269 + 792);

        OUTLINED_FUNCTION_0_12();
        sub_267BA0810(v132, v133);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v134 = sub_267EF8A08();
        __swift_project_value_buffer(v134, qword_280240FB0);
        OUTLINED_FUNCTION_7_12();
        v135 = OUTLINED_FUNCTION_61_6();
        sub_267C6AC8C(v135, v136);
        v137 = sub_267EF89F8();
        sub_267EF95D8();
        OUTLINED_FUNCTION_64();
        v139 = os_log_type_enabled(v137, v138);
        v140 = *(v269 + 784);
        if (v139)
        {
          v141 = *(v269 + 776);
          OUTLINED_FUNCTION_48();
          v142 = OUTLINED_FUNCTION_64_2();
          v278[0] = v142;
          *v17 = 136315138;
          OUTLINED_FUNCTION_7_12();
          sub_267C6AC8C(v140, v141);
          OUTLINED_FUNCTION_86_1();
          sub_267EF9098();
          OUTLINED_FUNCTION_0_12();
          sub_267BA0810(v140, v143);
          v144 = OUTLINED_FUNCTION_86_1();
          v147 = sub_267BA33E8(v144, v145, v146);

          *(v17 + 4) = v147;
          OUTLINED_FUNCTION_21();
          _os_log_impl(v148, v149, v150, v151, v152, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v142);
          OUTLINED_FUNCTION_29_1();
          OUTLINED_FUNCTION_26();
        }

        else
        {

          OUTLINED_FUNCTION_0_12();
          sub_267BA0810(v140, v153);
        }

        v154 = *(v269 + 832);
        v155 = *(v269 + 800);
        v156 = *(v269 + 760);
        v157 = *(v269 + 752);
        v158 = *(v269 + 744);
        OUTLINED_FUNCTION_7_12();
        v159 = OUTLINED_FUNCTION_61_0();
        sub_267C6AC8C(v159, v160);
        OUTLINED_FUNCTION_61_6();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_66_3(v264 + v263, v269 + 512);
        sub_267BF8DEC(v154, v264 + v263);
        swift_endAccess();
        sub_267EF4018();
        (*(v157 + 8))(v156, v158);
        OUTLINED_FUNCTION_0_12();
        v131 = v155;
        goto LABEL_95;
      }

      v20 = *(v269 + 736);
      v21 = *(v269 + 680);

      v22 = OUTLINED_FUNCTION_61_6();
      sub_267BBE184(v22, v23, v24, v25);
      v26 = *(v21 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversation);
      OUTLINED_FUNCTION_83(v26 + 24, v269 + 392);
      v261 = v26;
      v262 = *(v26 + 24);
      v267 = *(v262 + 16);
      if (v267)
      {
        v5 = v269 + 336;

        v4 = 0;
        v27 = MEMORY[0x277D84F90];
        v20 = &qword_280229968;
        while (1)
        {
          v28 = v20;
          sub_267B9AFEC(v262 + 32 + 40 * v4, v2 + 16);
          v30 = *(v2 + 40);
          v29 = *(v2 + 48);
          __swift_project_boxed_opaque_existential_0((v2 + 16), v30);
          v26 = (*(v29 + 16))(v30, v29);

          __swift_destroy_boxed_opaque_existential_0((v2 + 16));
          if (v26 >> 62)
          {
            v31 = sub_267EF9A68();
          }

          else
          {
            v31 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v0 = v27 >> 62;
          if (v27 >> 62)
          {
            v32 = sub_267EF9A68();
          }

          else
          {
            v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v33 = (v32 + v31);
          if (__OFADD__(v32, v31))
          {
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            v258 = sub_267EABBB0();
            v259 = OUTLINED_FUNCTION_61_6();
            v260(v259);
            v190 = 0xE700000000000000;
            v191 = 0x696A6F6D6E6567;
            switch(v258)
            {
              case 1:
                v190 = 0xE500000000000000;
                v191 = 0x696A6F6D65;
                break;
              case 2:
                v190 = 0xE600000000000000;
                v191 = 0x696A6F6D656DLL;
                break;
              case 3:
                v191 = 0x72656B63697473;
                break;
              case 4:
                goto LABEL_115;
              default:
                goto LABEL_116;
            }

            goto LABEL_116;
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            break;
          }

          if (v0)
          {
            goto LABEL_18;
          }

          v34 = v27 & 0xFFFFFFFFFFFFFF8;
          v35 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
          if (v35 >= v33)
          {
            v276 = v27;
            goto LABEL_20;
          }

LABEL_19:
          v276 = sub_267EF9BB8();
          v34 = v276 & 0xFFFFFFFFFFFFFF8;
          v35 = *((v276 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_20:
          v273 = v4;
          v274 = v31;
          v36 = *(v34 + 16);
          v37 = v35 - v36;
          v33 = (v34 + 8 * v36);
          v270 = v34;
          if (v26 >> 62)
          {
            v38 = sub_267EF9A68();
            if (!v38)
            {
LABEL_34:

              v27 = v276;
              v20 = v28;
              if (v31 > 0)
              {
                goto LABEL_152;
              }

              goto LABEL_35;
            }

            v39 = v38;
            v40 = sub_267EF9A68();
            if (v37 < v40)
            {
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              OUTLINED_FUNCTION_0(&qword_280228818);
LABEL_54:
              v71 = sub_267EF8A08();
              OUTLINED_FUNCTION_30_1(v71, qword_280240FB0);
              v72 = sub_267EF89F8();
              v73 = sub_267EF95C8();
              if (OUTLINED_FUNCTION_7_2(v73))
              {
                v74 = OUTLINED_FUNCTION_32();
                OUTLINED_FUNCTION_59(v74);
                OUTLINED_FUNCTION_38_1(&dword_267B93000, v75, v76, "#FollowupOfferFlow readout stopped, hanging in there");
                OUTLINED_FUNCTION_42_0();
              }

              swift_task_alloc();
              OUTLINED_FUNCTION_76_3();
              *(v2 + 992) = v77;
              *v77 = v78;
              OUTLINED_FUNCTION_39_4(v77);
              OUTLINED_FUNCTION_39_0();

              return sub_267C64F04();
            }

            if (v39 < 1)
            {
              goto LABEL_159;
            }

            v4 = v40;
            v41 = v33 + 4;
            v20 = v28;
            v0 = sub_267BC1E20(&qword_28022A360, v28, &unk_267EFEBC0, MEMORY[0x277D83988]);
            for (i = 0; i != v39; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v20, &unk_267EFEBC0);
              v43 = OUTLINED_FUNCTION_44_0();
              v45 = sub_267C73FD8(v43, v44, v26);
              v47 = *v46;
              v45(v5, 0);
              v20 = v28;
              v41[i].isa = v47;
              v33 = &unk_267EFEBC0;
            }

            v2 = v269;
          }

          else
          {
            v4 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v4)
            {
              goto LABEL_34;
            }

            if (v37 < v4)
            {
              goto LABEL_158;
            }

            sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
            swift_arrayInitWithCopy();
            v20 = v28;
          }

          v27 = v276;
          if (v4 < v274)
          {
            goto LABEL_152;
          }

          if (v4 > 0)
          {
            v48 = *(v270 + 16);
            v49 = __OFADD__(v48, v4);
            v50 = v48 + v4;
            if (v49)
            {
              __break(1u);
              goto LABEL_156;
            }

            *(v270 + 16) = v50;
          }

LABEL_35:
          v4 = v273 + 1;
          if (v273 + 1 == v267)
          {

            goto LABEL_103;
          }
        }

        if (!v0)
        {
          goto LABEL_19;
        }

LABEL_18:
        sub_267EF9A68();
        goto LABEL_19;
      }

      v27 = MEMORY[0x277D84F90];
LABEL_103:
      v167 = sub_267BF6698();
      *(v2 + 888) = v167;
      if (!v167)
      {

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v197 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v197, qword_280240FB0);
        v198 = sub_267EF89F8();
        sub_267EF95E8();
        OUTLINED_FUNCTION_56_2();
        if (os_log_type_enabled(v198, v199))
        {
          v200 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_61(v200);
          _os_log_impl(&dword_267B93000, v198, v26, "#FollowupOfferFlow failed to get a targetMessage, a requirement for SendTapbackFlow", v20, 2u);
          OUTLINED_FUNCTION_40_0();
        }

        v201 = *(v2 + 832);
        v202 = *(v2 + 800);
        v203 = *(v2 + 760);
        v204 = *(v269 + 752);
        v205 = *(v269 + 744);
        v206 = *(v269 + 736);

        v207 = sub_267C266B0();
        v208 = OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v207);
        *v209 = 0xD00000000000003BLL;
        v209[1] = 0x8000000267F137D0;
        *v201 = v208;
        OUTLINED_FUNCTION_86_1();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_66_3(v264 + v263, v269 + 440);
        sub_267BF8DEC(v201, v264 + v263);
        swift_endAccess();
        sub_267EF4018();
        (*(v204 + 8))(v203, v205);
        v2 = v269;
        OUTLINED_FUNCTION_0_12();
        sub_267BA0810(v202, v210);
        sub_267B9F98C(v206, &qword_280229920, &unk_267F0ABD0);
        goto LABEL_96;
      }

      v168 = v167;
      v169 = *(v2 + 720);
      v170 = *(v2 + 712);
      v171 = *(v2 + 704);
      sub_267EF4B88();
      v172 = sub_267EBF874();
      v173 = *(v170 + 8);
      v173(v169, v171);
      v174 = sub_267C68D98(v172);
      *(v2 + 896) = v174;
      v175 = sub_267C68E2C(v168, v174);
      *(v2 + 904) = v175;

      LOBYTE(v169) = sub_267BE84FC(v176);

      if (v169)
      {
        v177 = *(v2 + 736);
        v178 = sub_267EF8198();
        if (__swift_getEnumTagSinglePayload(v177, 1, v178) == 1)
        {
          v179 = *(v2 + 720);
          v180 = *(v2 + 704);
          sub_267EF4B88();
          v181 = sub_267E57DFC(v179, (v2 + 296));
          (v173)(v179, v180, v181);
          if (*(v2 + 320))
          {
            __swift_project_boxed_opaque_existential_0((v2 + 296), *(v2 + 320));
            v182 = OUTLINED_FUNCTION_61_6();
            v184 = sub_267E583B0(v182, v183);
            *(v2 + 912) = v184;
            __swift_destroy_boxed_opaque_existential_0((v2 + 296));
            if (v184)
            {
              v185 = *(v184 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoReactionType);
              *(v2 + 920) = v185;
              if (v185)
              {

                v186 = sub_267EF60C8();
                *(v2 + 928) = v186;
                if (v186)
                {

                  if (qword_280228818 != -1)
                  {
                    OUTLINED_FUNCTION_0(&qword_280228818);
                  }

                  v187 = sub_267EF8A08();
                  __swift_project_value_buffer(v187, qword_280240FB0);
                  OUTLINED_FUNCTION_54();

                  v33 = sub_267EF89F8();
                  LOBYTE(v5) = sub_267EF95C8();

                  if (os_log_type_enabled(v33, v5))
                  {
                    v188 = *(v2 + 696);
                    v27 = OUTLINED_FUNCTION_48();
                    v4 = OUTLINED_FUNCTION_52();
                    v278[0] = v4;
                    *v27 = 136315138;
                    sub_267EF63B8();
                    v189 = sub_267EF63C8();
                    if (__swift_getEnumTagSinglePayload(v188, 1, v189) != 1)
                    {
                      goto LABEL_153;
                    }

                    sub_267B9F98C(*(v2 + 696), &qword_280229950, &unk_267EFEBB0);
LABEL_115:
                    v190 = 0xE700000000000000;
                    v191 = 0x6E776F6E6B6E75;
LABEL_116:
                    v192 = sub_267BA33E8(v191, v190, v278);

                    *(v27 + 4) = v192;
                    _os_log_impl(&dword_267B93000, v33, v5, "#FollowupOfferFlow: reaction category not supported: %s", v27, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v4);
                    OUTLINED_FUNCTION_45_2();
                    OUTLINED_FUNCTION_18_2();
                  }

                  v193 = *(v2 + 688);
                  sub_267EF63B8();
                  v194 = sub_267EF63C8();
                  v195 = __swift_getEnumTagSinglePayload(v193, 1, v194);
                  v196 = *(v2 + 688);
                  if (v195 == 1)
                  {
                    sub_267B9F98C(*(v2 + 688), &qword_280229950, &unk_267EFEBB0);
                  }

                  else
                  {
                    sub_267EABBB0();
                    (*(*(v194 - 8) + 8))(v196, v194);
                  }

                  swift_task_alloc();
                  OUTLINED_FUNCTION_76_3();
                  *(v2 + 936) = v230;
                  *v230 = v231;
                  OUTLINED_FUNCTION_39_4(v230);
                  goto LABEL_142;
                }

                v219 = sub_267EF60D8();
                if (v220)
                {
                  v221 = sub_267C5EEF8(v219, v220);

                  if (v221)
                  {

                    if (qword_280228818 != -1)
                    {
                      OUTLINED_FUNCTION_0(&qword_280228818);
                    }

                    v222 = sub_267EF8A08();
                    OUTLINED_FUNCTION_30_1(v222, qword_280240FB0);
                    v223 = sub_267EF89F8();
                    v224 = sub_267EF95C8();
                    if (OUTLINED_FUNCTION_7_2(v224))
                    {
                      v225 = OUTLINED_FUNCTION_32();
                      OUTLINED_FUNCTION_59(v225);
                      OUTLINED_FUNCTION_38_1(&dword_267B93000, v226, v227, "#FollowupOfferFlow: emoji tapback requested");
                      OUTLINED_FUNCTION_42_0();
                    }

                    swift_task_alloc();
                    OUTLINED_FUNCTION_76_3();
                    *(v2 + 944) = v228;
                    *v228 = v229;
                    OUTLINED_FUNCTION_39_4(v228);
LABEL_142:
                    OUTLINED_FUNCTION_39_0();

                    return sub_267C696D0();
                  }
                }
              }

              else
              {
              }
            }
          }

          else
          {
            sub_267B9F98C(v2 + 296, &unk_28022BBF0, &unk_267F01C60);
          }
        }

        v233 = *(v2 + 680);
        v271 = sub_267BAF0DC(v27);
        v275 = v168;

        sub_267B9AFEC(v233 + 16, v2 + 256);
        v234 = OUTLINED_FUNCTION_61_6();
        sub_267C6AD4C(v234, v235, v236, v237);

        v277 = v175;

        v238 = sub_267D53340();
        *(v2 + 240) = &type metadata for TapbackSender;
        *(v2 + 248) = &off_2878D3898;
        *(v2 + 216) = v238;
        *(v2 + 224) = v239;
        __swift_mutable_project_boxed_opaque_existential_1(v2 + 216, &type metadata for TapbackSender);
        OUTLINED_FUNCTION_23();
        v241 = v240;
        v242 = swift_task_alloc();
        v243 = *(v241 + 16);
        OUTLINED_FUNCTION_90_2();
        v243();
        v244 = *v242;
        *(v2 + 200) = &type metadata for TapbackSender;
        *(v2 + 208) = &off_2878D3898;
        *(v2 + 176) = v244;
        v245 = type metadata accessor for SendTapbackFlow(0);
        v246 = OUTLINED_FUNCTION_97(v245);
        v247 = __swift_mutable_project_boxed_opaque_existential_1(v2 + 176, &type metadata for TapbackSender);
        v248 = swift_task_alloc();
        OUTLINED_FUNCTION_90_2();
        v243();
        v249 = *v248;
        *(v2 + 160) = &type metadata for TapbackSender;
        *(v2 + 168) = &off_2878D3898;
        *(v2 + 136) = v249;
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v250 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v250, qword_280240FB0);
        v251 = sub_267EF89F8();
        v252 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_7_2(v252))
        {
          v253 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v253);
          OUTLINED_FUNCTION_48_3(&dword_267B93000, v251, v247, "#SendTapbackFlow initialized");
          OUTLINED_FUNCTION_26();
        }

        v254 = v271 > 1;
        v266 = *(v2 + 760);
        v268 = *(v2 + 800);
        v255 = *(v2 + 752);
        v272 = *(v2 + 736);
        v256 = *(v2 + 728);
        v265 = *(v2 + 744);

        *(v246 + 56) = v275;
        *(v246 + 64) = v254;
        sub_267BBE184(v256, v246 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state, &qword_280229920, &unk_267F0ABD0);
        type metadata accessor for SendTapbackFlow.State(0);
        swift_storeEnumTagMultiPayload();
        sub_267B9A5E8((v269 + 136), v246 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_tapbackSender);
        *(v246 + 72) = v174;
        *(v246 + 80) = v277;
        type metadata accessor for SendTapbackFlow.SendTapbackStatus(0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229958, &unk_267F09110);
        swift_storeEnumTagMultiPayload();
        sub_267B9A5E8((v269 + 256), v246 + 16);
        __swift_destroy_boxed_opaque_existential_0((v269 + 176));

        __swift_destroy_boxed_opaque_existential_0((v269 + 216));

        *(v269 + 648) = v246;
        sub_267C6AD98(&qword_280229960, type metadata accessor for SendTapbackFlow, &unk_267F090A8);

        sub_267EF3FA8();
        v2 = v269;

        (*(v255 + 8))(v266, v265);
        OUTLINED_FUNCTION_0_12();
        sub_267BA0810(v268, v257);
        sub_267B9F98C(v272, &qword_280229920, &unk_267F0ABD0);

LABEL_96:
        v161 = *(v2 + 840);
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_1_22();
        sub_267BA0810(v161, v162);

        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_39_0();

        __asm { BRAA            X1, X16 }
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v211 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v211, qword_280240FB0);
      v212 = sub_267EF89F8();
      v213 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_7_2(v213))
      {
        v214 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_59(v214);
        OUTLINED_FUNCTION_38_1(&dword_267B93000, v215, v216, "#FollowupOfferFlow: 3P app cannot send tapback");
        OUTLINED_FUNCTION_42_0();
      }

      *(v269 + 952) = *(v261 + 128);

      v217 = swift_task_alloc();
      *(v269 + 960) = v217;
      *v217 = v269;
      v217[1] = sub_267C62478;
      OUTLINED_FUNCTION_39_0();

      return sub_267C68F88();
    case 2u:
      v59 = *(v1 + 816);
      OUTLINED_FUNCTION_4_16();
      sub_267C6AC8C(v60, v59);
      *(v2 + 656) = *v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      if (!swift_dynamicCast())
      {

LABEL_72:
        if (qword_280228818 != -1)
        {
LABEL_156:
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v97 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v97, qword_280240FB0);

        v98 = sub_267EF89F8();
        sub_267EF95E8();

        if (OUTLINED_FUNCTION_116_0())
        {
          v99 = *(v2 + 832);
          v100 = v5;
          OUTLINED_FUNCTION_48();
          v278[0] = OUTLINED_FUNCTION_64_2();
          *v0 = 136315138;
          OUTLINED_FUNCTION_4_16();
          sub_267C6AC8C(v4 + v5, v99);
          v101 = sub_267EF9098();
          v103 = sub_267BA33E8(v101, v102, v278);

          *(v0 + 4) = v103;
          v5 = v100;
          OUTLINED_FUNCTION_21();
          _os_log_impl(v104, v105, v106, v107, v108, 0xCu);
          OUTLINED_FUNCTION_26_4();
          OUTLINED_FUNCTION_26();
        }

        v109 = *(v2 + 832);
        v110 = sub_267C266B0();
        v111 = OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v110);
        *v112 = 0xD00000000000002DLL;
        v112[1] = 0x8000000267F137A0;
        *v109 = v111;
        OUTLINED_FUNCTION_61_6();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_66_3(v4 + v5, v2 + 584);
        sub_267BF8DEC(v109, v4 + v5);
        swift_endAccess();
LABEL_76:
        sub_267EF4018();
        goto LABEL_96;
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v61 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v61, qword_280240FB0);
      v62 = sub_267EF89F8();
      v63 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_7_2(v63))
      {
        v64 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_59(v64);
        OUTLINED_FUNCTION_38_1(&dword_267B93000, v65, v66, "#FollowupOfferFlow handling SendTapbackFlowError");
        OUTLINED_FUNCTION_42_0();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_76_3();
      *(v2 + 1000) = v67;
      *v67 = v68;
      OUTLINED_FUNCTION_39_4(v67);
      OUTLINED_FUNCTION_39_0();

      return sub_267C69E1C();
    case 3u:
      *(v1 + 120) = &type metadata for Features;
      v51 = sub_267BAFCAC();
      *(v1 + 96) = 12;
      *(v1 + 128) = v51;
      v52 = sub_267EF5128();
      __swift_destroy_boxed_opaque_existential_0((v2 + 96));
      if (v52)
      {
        v53 = *(*(*(v2 + 680) + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager) + 416);
        if (v53)
        {
          if (*(v53 + 82) == 1)
          {
            v54 = *(v2 + 832);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_66_3(v4 + v5, v2 + 560);
            sub_267BF8DEC(v54, v4 + v5);
            swift_endAccess();
            OUTLINED_FUNCTION_80_2();
            swift_task_alloc();
            OUTLINED_FUNCTION_76_3();
            *(v2 + 856) = v55;
            *v55 = v56;
            v55[1] = sub_267C61970;
            OUTLINED_FUNCTION_39_0();

            __asm { BRAA            X3, X16 }
          }
        }
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v88 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v88, qword_280240FB0);
      v89 = sub_267EF89F8();
      v90 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_7_2(v90))
      {
        v91 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_59(v91);
        OUTLINED_FUNCTION_38_1(&dword_267B93000, v92, v93, "#FollowupOfferFlow prompting followup offer");
        OUTLINED_FUNCTION_42_0();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_76_3();
      *(v2 + 880) = v94;
      *v94 = v95;
      OUTLINED_FUNCTION_39_4(v94);
      OUTLINED_FUNCTION_39_0();

      return sub_267C65A5C();
    case 6u:
      if (qword_280228818 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_160;
    case 9u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v80 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v80, qword_280240FB0);
      v81 = sub_267EF89F8();
      v82 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_7_2(v82))
      {
        v83 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_59(v83);
        OUTLINED_FUNCTION_38_1(&dword_267B93000, v84, v85, "#FollowupOfferFlow reply completed");
        OUTLINED_FUNCTION_42_0();
      }

      v86 = *(v1 + 832);

      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
      __swift_storeEnumTagSinglePayload(v86, 5, 9, v87);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_66_3(v4 + v5, v2 + 536);
      sub_267BF8DEC(v86, v4 + v5);
      swift_endAccess();
      goto LABEL_76;
    default:
      goto LABEL_72;
  }
}

uint64_t sub_267C61970()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 864) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v3 + 872) = v10;
    *v10 = v11;
    v10[1] = sub_267C61ACC;

    return sub_267BF8E50();
  }
}

uint64_t sub_267C61ACC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C61BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();
  __swift_destroy_boxed_opaque_existential_0((v17 + 56));
  OUTLINED_FUNCTION_3_15();
  v32 = v19;
  v33 = v18;
  OUTLINED_FUNCTION_51_2();
  v34 = v21;
  v35 = v20;
  v36 = *(v17 + 688);
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v16, v22);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, v35, v36, a14, a15, a16);
}

uint64_t sub_267C61CA4()
{
  v27 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = *(v0 + 864);
  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 864);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_48();
    v9 = OUTLINED_FUNCTION_52();
    v26 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_267EF9F68();
    v12 = sub_267BA33E8(v10, v11, &v26);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_108_2(&dword_267B93000, v13, v14, "#FollowupOfferFlow failed to prompt for full read: %s, offering reply...");
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_45_2();
  }

  else
  {
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v15 = sub_267EF89F8();
  sub_267EF95C8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v17);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
    OUTLINED_FUNCTION_26();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 880) = v23;
  *v23 = v24;
  v23[1] = sub_267C61EDC;

  return sub_267C65A5C();
}

uint64_t sub_267C61EDC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C61FC0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C620A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();
  v17 = v16[114];
  v18 = v16[111];
  v19 = v16[100];
  v20 = v16[95];
  v21 = v16[94];
  v22 = v16[93];
  v42 = v16[92];

  (*(v21 + 8))(v20, v22);
  OUTLINED_FUNCTION_0_12();
  sub_267BA0810(v19, v23);
  sub_267B9F98C(v42, &qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_3_15();
  v38 = v25;
  v39 = v24;
  OUTLINED_FUNCTION_51_2();
  v40 = v27;
  v41 = v26;
  v43 = v16[86];
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v17, v28);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, v39, v40, v41, v43, a14, a15, a16);
}

uint64_t sub_267C62224()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C62308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();
  v17 = v16[112];
  v18 = v16[111];
  v19 = v16[100];
  v20 = v16[95];
  v21 = v16[94];
  v22 = v16[93];
  v23 = v16[92];

  (*(v21 + 8))(v20, v22);
  OUTLINED_FUNCTION_0_12();
  sub_267BA0810(v19, v24);
  sub_267B9F98C(v23, &qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_3_15();
  v39 = v26;
  v40 = v25;
  OUTLINED_FUNCTION_51_2();
  v41 = v28;
  v42 = v27;
  v43 = v16[86];
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v17, v29);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, v39, v40, v41, v42, v43, a14, a15, a16);
}

uint64_t sub_267C62478()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C62578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();
  v17 = v16[111];
  v18 = v16[100];
  v19 = v16[95];
  v20 = v16[94];
  v21 = v16[93];
  v22 = v16[92];

  (*(v20 + 8))(v19, v21);
  OUTLINED_FUNCTION_0_12();
  sub_267BA0810(v18, v23);
  sub_267B9F98C(v22, &qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_3_15();
  v38 = v25;
  v39 = v24;
  OUTLINED_FUNCTION_51_2();
  v40 = v27;
  v41 = v26;
  v42 = v16[86];
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v19, v28);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, v39, v40, v41, v42, a14, a15, a16);
}

uint64_t sub_267C626D0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 976) = v4;
  *(v2 + 984) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C627D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v19 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);
  v20 = sub_267EF89F8();
  sub_267EF95C8();
  OUTLINED_FUNCTION_56_2();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_59(v22);
    _os_log_impl(&dword_267B93000, v20, v17, "#FollowupOfferFlow response was confirmed and reply flow is available, pushing reply flow", v16, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v23 = v18[122];
  v24 = v18[106];
  v25 = v18[104];
  v47 = v18[95];
  v49 = v18[100];
  v26 = v18[94];
  v27 = v18[93];
  v28 = v18[85];

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_3(v28 + v24, (v18 + 52));
  sub_267BF8DEC(v25, v28 + v24);
  swift_endAccess();
  v18[79] = v23;
  type metadata accessor for SendMessageFlow(0);
  sub_267C6AD98(&qword_280229478, type metadata accessor for SendMessageFlow, &unk_267F0A980);

  sub_267EF3FA8();

  (*(v26 + 8))(v47, v27);
  OUTLINED_FUNCTION_0_12();
  sub_267BA0810(v49, v29);

  OUTLINED_FUNCTION_3_15();
  v44 = v31;
  v45 = v30;
  OUTLINED_FUNCTION_51_2();
  v46 = v33;
  v48 = v32;
  v50 = v18[86];
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v24, v34);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, v44, v45, v46, v48, v50, a14, a15, a16);
}

uint64_t sub_267C62A54()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C62B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_3_15();
  v32 = v19;
  v33 = v18;
  OUTLINED_FUNCTION_51_2();
  v34 = v21;
  v35 = v20;
  v36 = *(v17 + 688);
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v16, v22);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, v35, v36, a14, a15, a16);
}

uint64_t sub_267C62C24()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C62D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();

  OUTLINED_FUNCTION_3_15();
  v32 = v19;
  v33 = v18;
  OUTLINED_FUNCTION_51_2();
  v34 = v21;
  v35 = v20;
  v36 = *(v17 + 688);
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v16, v22);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, v35, v36, a14, a15, a16);
}

uint64_t sub_267C62DFC()
{
  v24 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = v0[123];
  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_48();
    v23 = OUTLINED_FUNCTION_52();
    *v6 = 136315138;
    swift_getErrorValue();
    v7 = sub_267EF9F68();
    v9 = sub_267BA33E8(v7, v8, &v23);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_267B93000, v4, v5, "#FollowupOfferFlow failed to create reply flow: %s", v6, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v10 = v0[123];
  v11 = v0[106];
  v12 = v0[104];
  v13 = v0[100];
  v14 = v0[85];
  OUTLINED_FUNCTION_93_1(v15, v0[101]);
  OUTLINED_FUNCTION_66_3(v14 + v11, (v0 + 61));
  v16 = v10;
  sub_267BF8DEC(v12, v14 + v11);
  swift_endAccess();
  sub_267EF4018();

  v17 = OUTLINED_FUNCTION_44_0();
  v18(v17);
  OUTLINED_FUNCTION_0_12();
  sub_267BA0810(v13, v19);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v13, v20);

  OUTLINED_FUNCTION_17();

  return v21();
}

uint64_t sub_267C6307C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowupOfferFlow.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = sub_267EF4BA8();
  v64 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v63 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229970, &unk_267F0E300);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v61 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = v57 - v11;
  v65 = type metadata accessor for SendTapbackFlow.SendTapbackStatus(0);
  v12 = MEMORY[0x28223BE20](v65);
  v67 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229958, &unk_267F09110);
  v17 = MEMORY[0x28223BE20](v16);
  v66 = (v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v57 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v57 - v22;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v24 = sub_267EF8A08();
  v25 = __swift_project_value_buffer(v24, qword_280240FB0);
  v68 = a1;
  sub_267C6AD4C(a1, v23, &qword_280229958, &unk_267F09110);
  v59 = v25;
  v26 = sub_267EF89F8();
  v27 = sub_267EF95D8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v58 = a2;
    v29 = v28;
    v30 = swift_slowAlloc();
    v57[1] = v4;
    v31 = v30;
    v69[0] = v30;
    *v29 = 136315138;
    sub_267C6AD4C(v23, v21, &qword_280229958, &unk_267F09110);
    v32 = sub_267EF9098();
    v57[0] = v15;
    v34 = v33;
    sub_267B9F98C(v23, &qword_280229958, &unk_267F09110);
    v35 = sub_267BA33E8(v32, v34, v69);
    v15 = v57[0];

    *(v29 + 4) = v35;
    _os_log_impl(&dword_267B93000, v26, v27, "#FollowupOfferFlow SendTapbackFlow completed with exit value: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x26D60A7B0](v31, -1, -1);
    v36 = v29;
    a2 = v58;
    MEMORY[0x26D60A7B0](v36, -1, -1);
  }

  else
  {

    sub_267B9F98C(v23, &qword_280229958, &unk_267F09110);
  }

  v37 = v67;
  v38 = v66;
  sub_267C6AD4C(v68, v66, &qword_280229958, &unk_267F09110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v6 = *v38;
    goto LABEL_15;
  }

  sub_267C6ACF4(v38, v15);
  sub_267C6AC8C(v15, v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_267BA0810(v15, type metadata accessor for SendTapbackFlow.SendTapbackStatus);
LABEL_14:
    sub_267BA0810(v37, type metadata accessor for SendTapbackFlow.SendTapbackStatus);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v37 = v15;
    goto LABEL_14;
  }

  v40 = v15;
  v41 = v60;
  sub_267BBE184(v37, v60, &qword_280229970, &unk_267F0E300);
  v42 = v61;
  sub_267C6AD4C(v41, v61, &qword_280229970, &unk_267F0E300);
  v43 = v62;
  if (__swift_getEnumTagSinglePayload(v42, 1, v62) == 1)
  {
    sub_267B9F98C(v42, &qword_280229970, &unk_267F0E300);
    sub_267C6AA68();
    v44 = swift_allocError();
    *v45 = 1;
    sub_267B9F98C(v41, &qword_280229970, &unk_267F0E300);
    sub_267BA0810(v15, type metadata accessor for SendTapbackFlow.SendTapbackStatus);
    *v6 = v44;
  }

  else
  {
    v48 = *(v64 + 32);
    v64 += 32;
    v48(v63, v42, v43);
    v49 = sub_267EF89F8();
    v50 = sub_267EF95D8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_267B93000, v49, v50, "#FollowupOfferFlow received tapbackUnsupported from SendTapbackFlow", v51, 2u);
      MEMORY[0x26D60A7B0](v51, -1, -1);
    }

    sub_267B9F98C(v41, &qword_280229970, &unk_267F0E300);
    sub_267BA0810(v40, type metadata accessor for SendTapbackFlow.SendTapbackStatus);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298F8, &qword_267EFEB58);
    v53 = *(v52 + 48);
    v54 = (v6 + *(v52 + 64));
    v55 = sub_267EF8198();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v55);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    __swift_storeEnumTagSinglePayload(v6, 0, 9, v56);
    v48(v6 + v53, v63, v43);
    *v54 = 0;
    v54[1] = 0;
  }

LABEL_15:
  swift_storeEnumTagMultiPayload();
  v46 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  swift_beginAccess();
  sub_267BF8DEC(v6, a2 + v46);
  return swift_endAccess();
}

uint64_t sub_267C6380C(uint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for FollowupOfferFlow.State(0);
  MEMORY[0x28223BE20](v31);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229978, &unk_267EFEBD0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v13 = sub_267EF8A08();
  __swift_project_value_buffer(v13, qword_280240FB0);
  v14 = *(v7 + 16);
  v14(v12, a1, v6);
  v15 = sub_267EF89F8();
  v16 = sub_267EF95D8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = v5;
    v20 = v19;
    v32[0] = v19;
    *v18 = 136315138;
    v14(v10, v12, v6);
    v21 = sub_267EF9098();
    v23 = v22;
    (*(v7 + 8))(v12, v6);
    v24 = sub_267BA33E8(v21, v23, v32);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_267B93000, v15, v16, "#FollowupOfferFlow reply flow completed with exit value: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v25 = v20;
    v5 = v29;
    MEMORY[0x26D60A7B0](v25, -1, -1);
    v26 = v18;
    a2 = v30;
    MEMORY[0x26D60A7B0](v26, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  swift_storeEnumTagMultiPayload();
  v27 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  swift_beginAccess();
  sub_267BF8DEC(v5, a2 + v27);
  return swift_endAccess();
}

uint64_t sub_267C63B84()
{
  type metadata accessor for FollowupOfferFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_0();
  v4 = v3 - v2;
  v5 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  OUTLINED_FUNCTION_83(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state, v12);
  OUTLINED_FUNCTION_4_16();
  sub_267C6AC8C(v0 + v5, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_10();
    v6 = OUTLINED_FUNCTION_3();
    return sub_267C6ACF4(v6, v7);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v9 = OUTLINED_FUNCTION_75_1();
    __swift_storeEnumTagSinglePayload(v9, 2, 9, v10);
    OUTLINED_FUNCTION_1_22();
    return sub_267BA0810(v4, v11);
  }
}

uint64_t sub_267C63C70()
{
  v1 = sub_267EF3868();
  OUTLINED_FUNCTION_58();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_100_0();
  __swift_project_boxed_opaque_existential_0(v8, v9);
  v10 = OUTLINED_FUNCTION_12_0();
  v11(v10);
  v12 = (*(v3 + 88))(v7, v1);
  if (v12 == *MEMORY[0x277D5B970])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v13 = OUTLINED_FUNCTION_75_1();
    v15 = 2;
LABEL_3:
    __swift_storeEnumTagSinglePayload(v13, v15, 9, v14);
LABEL_6:
    type metadata accessor for ReadingOfferBehaviorFlowFrameResult(0);
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    type metadata accessor for FollowupOfferResponse(0);
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_9();
    return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }

  if (v12 == *MEMORY[0x277D5B978])
  {
    (*(*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_strategy + 8) + 16))(**(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_strategy));
    goto LABEL_6;
  }

  if (v12 == *MEMORY[0x277D5B968])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v13 = OUTLINED_FUNCTION_75_1();
    v15 = 1;
    goto LABEL_3;
  }

  type metadata accessor for FollowupOfferResponse(0);
  v25 = OUTLINED_FUNCTION_75_1();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
  return (*(v3 + 8))(v7, v1);
}

void sub_267C63E8C(uint64_t a1@<X8>)
{
  v236 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_105();
  v221[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229928, &qword_267EFEB80);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v224 = v6;
  v7 = OUTLINED_FUNCTION_26_2();
  v225 = type metadata accessor for TapbackAction(v7);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6();
  v223 = v9;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v10);
  v222 = v221 - v11;
  v12 = OUTLINED_FUNCTION_26_2();
  v227 = type metadata accessor for FollowupOfferFlow.State(v12);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v226 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229930, &qword_267EFEB88);
  OUTLINED_FUNCTION_18(v16);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_105();
  v233 = v18;
  v19 = OUTLINED_FUNCTION_26_2();
  v237 = type metadata accessor for FollowupOfferResponse(v19);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_0();
  v229 = v22 - v21;
  OUTLINED_FUNCTION_26_2();
  sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v231 = v24;
  v232 = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_0();
  v230 = v26 - v25;
  OUTLINED_FUNCTION_26_2();
  v27 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6();
  v234 = v31;
  OUTLINED_FUNCTION_115();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = v221 - v34;
  MEMORY[0x28223BE20](v33);
  sub_267EF4B88();
  v36 = *(v29 + 88);
  v37 = OUTLINED_FUNCTION_86_1();
  v38 = v36(v37);
  v39 = *MEMORY[0x277D5C168];
  v40 = OUTLINED_FUNCTION_86_1();
  v235 = v41;
  (v41)(v40);
  if (v38 == v39)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v42 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v42, qword_280240FB0);
    v43 = sub_267EF89F8();
    v44 = sub_267EF95C8();
    v45 = OUTLINED_FUNCTION_27(v44);
    v46 = v237;
    if (v45)
    {
      v47 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61(v47);
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v48, v49, "#FollowupOfferFlow received empty input");
      OUTLINED_FUNCTION_40_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v50 = OUTLINED_FUNCTION_14_13();
    OUTLINED_FUNCTION_85_2(v50, 9, v51, v52);
    v53 = OUTLINED_FUNCTION_36_6();
    OUTLINED_FUNCTION_115_0(v53, v54, v55, v56);
    OUTLINED_FUNCTION_9();
    v60 = v46;
    goto LABEL_40;
  }

  sub_267EF4B88();
  v61 = v27;
  if ((v36)(v35, v27) == *MEMORY[0x277D5C150])
  {
    v62 = OUTLINED_FUNCTION_44_0();
    v63(v62);
    v65 = v230;
    v64 = v231;
    v66 = v35;
    v67 = v232;
    (*(v231 + 32))(v230, v66, v232);
    v68 = v233;
    sub_267D7129C(v65, v233);
    (*(v64 + 8))(v65, v67);
    v69 = v237;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68, 1, v237);
    v71 = v235;
    if (EnumTagSinglePayload != 1)
    {
      v112 = v68;
      v113 = v229;
      sub_267C6ACF4(v112, v229);
      v114 = v113;
      v115 = v236;
      sub_267C6ACF4(v114, v236);
      v57 = v115;
      v58 = 0;
LABEL_39:
      v59 = 1;
      v60 = v69;
LABEL_40:
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
      return;
    }

    sub_267B9F98C(v68, &qword_280229930, &qword_267EFEB88);
  }

  else
  {
    v72 = OUTLINED_FUNCTION_44_0();
    v71 = v235;
    (v235)(v72);
    v69 = v237;
  }

  v73 = v234;
  sub_267EF4B88();
  v74 = sub_267EBC978(v73, v238);
  v71(v73, v61, v74);
  if (*(&v238[1] + 1))
  {
    sub_267B9A5E8(v238, v241);
    __swift_project_boxed_opaque_existential_0(v241, *(&v241[1] + 1));
    v75 = OUTLINED_FUNCTION_16_1();
    v76(v75);
    OUTLINED_FUNCTION_87();
    if (v78)
    {
      if (!v77)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v79 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v79, qword_280240FB0);
      v80 = sub_267EF89F8();
      v81 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_27(v81))
      {
        v82 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_61(v82);
        OUTLINED_FUNCTION_28_11(&dword_267B93000, v83, v84, "#FollowupOfferFlow phone call intent -> call");
        OUTLINED_FUNCTION_40_0();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
      v85 = OUTLINED_FUNCTION_14_13();
      OUTLINED_FUNCTION_85_2(v85, 7, v86, v87);
      v88 = OUTLINED_FUNCTION_36_6();
      v92 = OUTLINED_FUNCTION_115_0(v88, v89, v90, v91);
      v93 = 0;
    }

    else
    {
      if (!v77)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v116 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v116, qword_280240FB0);
      v117 = sub_267EF89F8();
      v118 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_27(v118))
      {
        v119 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_61(v119);
        OUTLINED_FUNCTION_28_11(&dword_267B93000, v120, v121, "#FollowupOfferFlow phone call intent -> call person name");
        OUTLINED_FUNCTION_40_0();
      }

      v92 = v236;
      v93 = 1;
    }

    __swift_storeEnumTagSinglePayload(v92, v93, 1, v69);
    v122 = v241;
    goto LABEL_76;
  }

  sub_267B9F98C(v238, &qword_280229938, &unk_267EFEB90);
  sub_267EF4B88();
  v94 = sub_267E57DFC(v73, v241);
  v71(v73, v61, v94);
  if (!*(&v241[1] + 1))
  {
    sub_267B9F98C(v241, &unk_28022BBF0, &unk_267F01C60);
    OUTLINED_FUNCTION_87();
    if (!v77)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v123 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v123, qword_280240FB0);
    v124 = sub_267EF89F8();
    v125 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v125))
    {
      v126 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61(v126);
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v127, v128, "#FollowupOfferFlow unsupported input");
      OUTLINED_FUNCTION_40_0();
    }

    v57 = v236;
    v58 = 1;
    goto LABEL_39;
  }

  sub_267B9A5E8(v241, v244);
  v95 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  v96 = v228;
  OUTLINED_FUNCTION_83(v228 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state, v243);
  OUTLINED_FUNCTION_4_16();
  v97 = v96 + v95;
  v98 = v226;
  sub_267C6AC8C(v97, v226);
  LODWORD(v95) = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v98, v99);
  if (v95 == 4)
  {
    OUTLINED_FUNCTION_5_16();
    v100 = OUTLINED_FUNCTION_16_1();
    if (v101(v100))
    {
      OUTLINED_FUNCTION_87();
      if (!v77)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v102 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v102, qword_280240FB0);
      v103 = sub_267EF89F8();
      v104 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_27(v104))
      {
        v105 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_61(v105);
        OUTLINED_FUNCTION_28_11(&dword_267B93000, v106, v107, "#FollowupOfferFlow going from offerFullRead to reread");
        OUTLINED_FUNCTION_40_0();
      }

      goto LABEL_26;
    }

    OUTLINED_FUNCTION_5_16();
    v129 = OUTLINED_FUNCTION_16_1();
    if (v130(v129))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
      v108 = OUTLINED_FUNCTION_14_13();
      v111 = 1;
      goto LABEL_70;
    }
  }

  OUTLINED_FUNCTION_41_4();
  if (sub_267E58714() & 1) != 0 || (OUTLINED_FUNCTION_41_4(), (sub_267E587AC()))
  {
    OUTLINED_FUNCTION_87();
    if (!v77)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v131 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v131, qword_280240FB0);
    v132 = sub_267EF89F8();
    v133 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_27(v133))
    {
      v134 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61(v134);
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v135, v136, "#FollowupOfferFlow fresh request, restarting from root");
      OUTLINED_FUNCTION_40_0();
    }

LABEL_50:
    v137 = v236;
    v138 = 1;
    goto LABEL_73;
  }

  OUTLINED_FUNCTION_87();
  if (!v77)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v139 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v139, qword_280240FB0);
  sub_267B9AFEC(v244, v241);
  v140 = sub_267EF89F8();
  v141 = sub_267EF95C8();
  if (os_log_type_enabled(v140, v141))
  {
    v142 = OUTLINED_FUNCTION_48();
    *&v238[0] = OUTLINED_FUNCTION_52();
    *v142 = 136446210;
    __swift_project_boxed_opaque_existential_0(v241, *(&v241[1] + 1));
    v143 = OUTLINED_FUNCTION_4_1();
    LOBYTE(v239) = v144(v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229948, &qword_267EFEBA8);
    v145 = sub_267EF9098();
    v147 = v146;
    __swift_destroy_boxed_opaque_existential_0(v241);
    v148 = sub_267BA33E8(v145, v147, v238);

    *(v142 + 4) = v148;
    _os_log_impl(&dword_267B93000, v140, v141, "#FollowupOfferFlow have smsIntent, about to enter switch with smsIntent verb: %{public}s", v142, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_40_0();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v241);
  }

  OUTLINED_FUNCTION_5_16();
  v149 = OUTLINED_FUNCTION_16_1();
  if (v150(v149) & 1) != 0 || (OUTLINED_FUNCTION_5_16(), v151 = OUTLINED_FUNCTION_16_1(), (v152(v151)) || (OUTLINED_FUNCTION_5_16(), v153 = OUTLINED_FUNCTION_16_1(), (v154(v153)))
  {
    *(&v241[1] + 1) = &type metadata for Features;
    *&v241[2] = sub_267BAFCAC();
    LOBYTE(v241[0]) = 25;
    v155 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0(v241);
    if (v155)
    {
      __swift_project_boxed_opaque_existential_0(v244, v244[3]);
      v156 = v224;
      OUTLINED_FUNCTION_108();
      sub_267E58838(v157);
      if (__swift_getEnumTagSinglePayload(v156, 1, v225) == 1)
      {
        sub_267B9F98C(v156, &qword_280229928, &qword_267EFEB80);
      }

      else
      {
        sub_267C6ACF4(v156, v222);
        v164 = v223;
        OUTLINED_FUNCTION_90_2();
        sub_267C6ACF4(v165, v166);
        if (!swift_getEnumCaseMultiPayload())
        {
          OUTLINED_FUNCTION_90_2();
          sub_267BBE184(v175, v176, v177, &unk_267F0ABD0);
          v178 = v236;
          OUTLINED_FUNCTION_90_2();
          sub_267BBE184(v179, v180, v181, &unk_267F0ABD0);
          v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
          OUTLINED_FUNCTION_85_2(v178, 0, v183, v182);
          OUTLINED_FUNCTION_9();
          __swift_storeEnumTagSinglePayload(v184, v185, v186, v187);
          v137 = v178;
          goto LABEL_72;
        }

        sub_267BA0810(v164, type metadata accessor for TapbackAction);
      }

      sub_267EF8198();
      v167 = OUTLINED_FUNCTION_14_13();
      __swift_storeEnumTagSinglePayload(v167, 1, 1, v168);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
      v108 = OUTLINED_FUNCTION_36_6();
      goto LABEL_70;
    }
  }

  OUTLINED_FUNCTION_5_16();
  v158 = OUTLINED_FUNCTION_16_1();
  if (v159(v158))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v108 = OUTLINED_FUNCTION_14_13();
    v111 = 4;
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_5_16();
  v160 = OUTLINED_FUNCTION_16_1();
  if (v161(v160))
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_5_16();
  v162 = OUTLINED_FUNCTION_16_1();
  if (v163(v162) & 1) != 0 || (OUTLINED_FUNCTION_30_6(), v188 = OUTLINED_FUNCTION_16_1(), (v189(v188) & 1) == 0) && (OUTLINED_FUNCTION_30_6(), v190 = OUTLINED_FUNCTION_16_1(), (v191(v190)))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v108 = OUTLINED_FUNCTION_14_13();
    v111 = 6;
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_5_16();
  v192 = OUTLINED_FUNCTION_16_1();
  if ((v193(v192) & 1) == 0)
  {
    OUTLINED_FUNCTION_5_16();
    v205 = OUTLINED_FUNCTION_16_1();
    if (v206(v205))
    {
      type metadata accessor for ReadingOfferBehaviorFlowFrameResult(0);
      v169 = OUTLINED_FUNCTION_14_13();
      v170 = 1;
      goto LABEL_71;
    }

    v207 = OUTLINED_FUNCTION_41_4();
    if (sub_267E58398(v207, v208) && (v209 = sub_267EC2B64(), , (v209 & 1) != 0))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
      v108 = OUTLINED_FUNCTION_14_13();
      v111 = 7;
    }

    else
    {
      OUTLINED_FUNCTION_30_6();
      v210 = OUTLINED_FUNCTION_16_1();
      if ((v211(v210) & 1) == 0)
      {
        OUTLINED_FUNCTION_5_16();
        v212 = OUTLINED_FUNCTION_16_1();
        if ((v213(v212) & 1) == 0)
        {
          sub_267C63C70();
          goto LABEL_75;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
        v214 = OUTLINED_FUNCTION_14_13();
        OUTLINED_FUNCTION_85_2(v214, 5, v215, v216);
        v217 = OUTLINED_FUNCTION_36_6();
        OUTLINED_FUNCTION_115_0(v217, v218, v219, v220);
        OUTLINED_FUNCTION_9();
        v174 = v237;
LABEL_74:
        __swift_storeEnumTagSinglePayload(v137, v138, v173, v174);
LABEL_75:
        v122 = v244;
LABEL_76:
        __swift_destroy_boxed_opaque_existential_0(v122);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
      v108 = OUTLINED_FUNCTION_14_13();
      v111 = 8;
    }

LABEL_70:
    OUTLINED_FUNCTION_85_2(v108, v111, v109, v110);
    v169 = OUTLINED_FUNCTION_36_6();
LABEL_71:
    v137 = OUTLINED_FUNCTION_115_0(v169, v170, v171, v172);
LABEL_72:
    v138 = 0;
LABEL_73:
    v173 = 1;
    v174 = v69;
    goto LABEL_74;
  }

  v194 = *(*(v228 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager) + 416);
  if (!v194 || (OUTLINED_FUNCTION_83(v194 + 24, v242), v195 = *(v194 + 24), (v196 = *(v195 + 16)) == 0))
  {
LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v108 = OUTLINED_FUNCTION_14_13();
    v111 = 3;
    goto LABEL_70;
  }

  v197 = v195 + 32;
  v232 = v194;
  v233 = 0x8000000267F13710;

  v198 = 0;
  v199 = &qword_280229250;
  v200 = &qword_267EFFBF0;
  v234 = v196;
  v235 = v195;
  while (v198 < *(v195 + 16))
  {
    sub_267B9AFEC(v197, &v239);
    __swift_instantiateConcreteTypeFromMangledNameV2(v199, v200);
    if (swift_dynamicCast())
    {
      v196 = v200;
      v200 = v199;
      memcpy(v241, v238, sizeof(v241));
      v201 = sub_267E77D14(*&v241[4]);
      if (v202)
      {
        v199 = v201;
        v203 = v202;
        *&v238[0] = v201;
        *(&v238[0] + 1) = v202;
        v239 = 0xD000000000000010;
        v240 = v233;
        v69 = sub_267BB5034();
        v195 = MEMORY[0x277D837D0];
        if (OUTLINED_FUNCTION_111_1(&v239))
        {
          *&v238[0] = v199;
          *(&v238[0] + 1) = v203;
          v239 = 4024639;
          v240 = 0xE300000000000000;
          v204 = OUTLINED_FUNCTION_111_1(&v239);
          sub_267C6AC38(v241);

          OUTLINED_FUNCTION_97_2();
          if (v204)
          {

            goto LABEL_50;
          }

          goto LABEL_93;
        }
      }

      sub_267C6AC38(v241);
      OUTLINED_FUNCTION_97_2();
    }

    else
    {
      memset(v238, 0, sizeof(v238));
      sub_267B9F98C(v238, &qword_280229940, &qword_267EFEBA0);
    }

LABEL_93:
    v198 = (v198 + 1);
    v197 += 40;
    if (v196 == v198)
    {

      goto LABEL_26;
    }
  }

  __break(1u);
}

uint64_t sub_267C64F04()
{
  OUTLINED_FUNCTION_12();
  v1[26] = v2;
  v1[27] = v0;
  v3 = type metadata accessor for FollowupOfferFlow.State(0);
  v1[28] = v3;
  OUTLINED_FUNCTION_18(v3);
  v1[29] = OUTLINED_FUNCTION_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v4);
  v1[30] = OUTLINED_FUNCTION_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB70, &unk_267F0BA10);
  OUTLINED_FUNCTION_18(v5);
  v1[31] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4CC8();
  v1[32] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[33] = v7;
  v1[34] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267C65024()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_89_3();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 280) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_78_2(v1);

  return v4(v3);
}

uint64_t sub_267C65144()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 288) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}