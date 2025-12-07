void sub_267C65240()
{
  sub_267B9AFEC((v0 + 2), (v0 + 7));
  sub_267B9AFEC((v0 + 2), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A470, &unk_267EFDC70);
  if (swift_dynamicCast())
  {
    v1 = v0[32];
    v33 = v0;
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
    v5 = OUTLINED_FUNCTION_108();
    v6(v5);
    v7 = sub_267EF4CB8();
    v40 = MEMORY[0x277D84F90];
    v8 = sub_267BAF0DC(v7);
    for (i = 0; v8 != i; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D609870](i, v7);
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v10 = *(v7 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
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

    v13 = v40;
    v14 = sub_267BAF0DC(v40);
    if (!v14)
    {
LABEL_39:

      v28 = MEMORY[0x277D5C1D8];
      v33[20] = v33[32];
      v33[21] = v28;
      __swift_allocate_boxed_opaque_existential_0(v33 + 17);
      sub_267EF4C78();
      sub_267EF4C88();
      sub_267EF4C98();
      v29 = OUTLINED_FUNCTION_108();
      v30(v29);
      v0 = v33;
      __swift_destroy_boxed_opaque_existential_0(v33 + 7);
      sub_267B9A5E8((v0 + 17), (v0 + 7));
      goto LABEL_40;
    }

    v15 = v14;
    sub_267EF9BF8();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v17 = v40 & 0xC000000000000001;
      v34 = v40 + 32;
      v35 = v40 & 0xC000000000000001;
      v36 = v15;
      v37 = v40;
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_47;
        }

        if (v17)
        {
          v19 = MEMORY[0x26D609870]();
        }

        else
        {
          if (v16 >= *(v13 + 16))
          {
            goto LABEL_48;
          }

          v19 = *(v34 + 8 * v16);
        }

        v20 = v19;
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (v21)
        {
          v38 = v21;
          v39 = v20;
          v22 = sub_267D99704(v38);
          if (v22)
          {
            v23 = v22;
            v41 = MEMORY[0x277D84F90];
            v24 = sub_267BAF0DC(v22);
            for (j = 0; ; ++j)
            {
              if (v24 == j)
              {

                sub_267E7F03C(v41, v38);
                v15 = v36;
                v13 = v37;
                v17 = v35;
                goto LABEL_37;
              }

              if ((v23 & 0xC000000000000001) != 0)
              {
                v26 = MEMORY[0x26D609870](j, v23);
              }

              else
              {
                if (j >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_44;
                }

                v26 = *(v23 + 8 * j + 32);
              }

              v27 = v26;
              if (__OFADD__(j, 1))
              {
                break;
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
              }

              else
              {
                sub_267EF9BD8();
                sub_267EF9C08();
                OUTLINED_FUNCTION_26_0();
                sub_267EF9C18();
                sub_267EF9BE8();
              }
            }

            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

LABEL_37:
        }

        sub_267EF9BD8();
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
        v16 = v18;
        if (v18 == v15)
        {
          goto LABEL_39;
        }
      }
    }

LABEL_49:
    __break(1u);
  }

  else
  {
    v12 = v0[31];
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v0[32]);
    sub_267B9F98C(v12, &qword_28022BB70, &unk_267F0BA10);
LABEL_40:
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[37] = v31;
    *v31 = v32;
    v31[1] = sub_267C65720;

    sub_267BF8E50();
  }
}

uint64_t sub_267C65720()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C65804()
{
  OUTLINED_FUNCTION_56();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267C65894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_113();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_29();
  a16 = v18;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v21 = v18[36];
  v22 = sub_267EF8A08();
  __swift_project_value_buffer(v22, qword_280240FB0);
  v23 = OUTLINED_FUNCTION_54();
  v24 = sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_116_0())
  {
    v25 = v18[36];
    OUTLINED_FUNCTION_48();
    v26 = OUTLINED_FUNCTION_64_2();
    a10 = v26;
    *v21 = 136315138;
    v18[25] = v25;
    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v28 = sub_267EF9098();
    v30 = sub_267BA33E8(v28, v29, &a10);

    *(v21 + 1) = v30;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_26();
  }

  v36 = v18[36];
  v37 = v18[29];
  v38 = v18[27];
  OUTLINED_FUNCTION_93_1(v39, v18[28]);
  v40 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  OUTLINED_FUNCTION_66_3(v38 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state, (v18 + 22));
  v41 = v36;
  sub_267BF8DEC(v37, v38 + v40);
  swift_endAccess();
  sub_267EF4018();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_91_0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10);
}

uint64_t sub_267C65A5C()
{
  OUTLINED_FUNCTION_12();
  v1[14] = v2;
  v1[15] = v0;
  v3 = type metadata accessor for FollowupOfferFlow.State(0);
  v1[16] = v3;
  OUTLINED_FUNCTION_18(v3);
  v1[17] = OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267C65AD8()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_89_3();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 144) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_78_2(v1);

  return v4(v3);
}

uint64_t sub_267C65BF8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C65CDC()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267C65D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_113();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_29();
  a16 = v18;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v21 = v18[19];
  v22 = sub_267EF8A08();
  __swift_project_value_buffer(v22, qword_280240FB0);
  v23 = OUTLINED_FUNCTION_54();
  v24 = sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_116_0())
  {
    v25 = v18[19];
    OUTLINED_FUNCTION_48();
    v26 = OUTLINED_FUNCTION_64_2();
    a10 = v26;
    *v21 = 136315138;
    v18[13] = v25;
    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v28 = sub_267EF9098();
    v30 = sub_267BA33E8(v28, v29, &a10);

    *(v21 + 1) = v30;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_26();
  }

  v36 = v18[19];
  v37 = v18[17];
  v38 = v18[15];
  OUTLINED_FUNCTION_93_1(v39, v18[16]);
  v40 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  OUTLINED_FUNCTION_46_4(v38 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state);
  v41 = v36;
  sub_267BF8DEC(v37, v38 + v40);
  swift_endAccess();
  sub_267EF4018();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_91_0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10);
}

uint64_t sub_267C65EE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished + 8);

    v1(v3);
    sub_267BA1BFC(v1, v2);
  }

  return sub_267EF3FB8();
}

uint64_t sub_267C65F54()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C66050()
{
  OUTLINED_FUNCTION_56();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95C8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v5);
    OUTLINED_FUNCTION_48_3(&dword_267B93000, v3, v0, "#FollowupOfferFlow offer prompt published, waiting for input");
    OUTLINED_FUNCTION_26();
  }

  sub_267C65EE0();

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267C66150()
{
  v33 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 80) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  OUTLINED_FUNCTION_26_0();
  if (swift_dynamicCast())
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v4 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);
    v5 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v7);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v5, v2, "#FollowupOfferFlow offer prompt was interrupted due to barge-in, waiting for input");
      OUTLINED_FUNCTION_26();
    }

    sub_267C65EE0();
    v8 = OUTLINED_FUNCTION_26_0();
    v9(v8);
    v10 = *(v0 + 80);
  }

  else
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v11 = *(v0 + 168);
    v12 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v12, qword_280240FB0);
    v13 = v11;
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 168);
      v17 = OUTLINED_FUNCTION_48();
      v18 = OUTLINED_FUNCTION_52();
      v32 = v18;
      *v17 = 136315138;
      *(v0 + 88) = v16;
      v19 = v16;
      v20 = sub_267EF9098();
      v22 = sub_267BA33E8(v20, v21, &v32);

      *(v17 + 4) = v22;
      OUTLINED_FUNCTION_57(&dword_267B93000, v23, v24, "#FollowupOfferFlow publishing output failed: %s");
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_45_2();
    }

    v25 = *(v0 + 168);
    v26 = *(v0 + 128);
    v27 = *(v0 + 112);
    *v26 = v25;
    swift_storeEnumTagMultiPayload();
    v28 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
    OUTLINED_FUNCTION_66_3(v27 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state, v0 + 56);
    v29 = v25;
    sub_267BF8DEC(v26, v27 + v28);
    swift_endAccess();
    sub_267EF4018();
    v10 = v25;
  }

  OUTLINED_FUNCTION_17();

  return v30();
}

uint64_t sub_267C6643C()
{
  OUTLINED_FUNCTION_12();
  v1[61] = v2;
  v1[62] = v0;
  v3 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v3);
  v1[63] = OUTLINED_FUNCTION_2();
  v4 = swift_task_alloc();
  v1[64] = v4;
  *v4 = v1;
  v4[1] = sub_267C664F0;

  return sub_267C673E0();
}

uint64_t sub_267C664F0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 520) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_267C66630()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);

  v2 = sub_267EF89F8();
  v3 = sub_267EF95C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = sub_267E2B564(v4);

    _os_log_impl(&dword_267B93000, v2, v3, "#FollowupOfferFlow initializing SendMessageFlow with single sender or group: %{BOOL}d", v4, 8u);
    OUTLINED_FUNCTION_18_2();
  }

  else
  {
  }

  v5 = *(v0 + 520);
  swift_retain_n();
  v6 = v5;
  v7 = sub_267EF89F8();
  v8 = sub_267EF95D8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 520);
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_40_2();
    *v6 = 138412546;
    *(v6 + 1) = v9;
    *v10 = v9;
    *(v6 + 6) = 1024;
    v11 = sub_267E2B564(v9);

    *(v6 + 14) = v11;

    _os_log_impl(&dword_267B93000, v7, v8, "#FollowupOfferFlow initializing SendMessageFlow with intent: %@, with single sender or group: %{BOOL}d", v6, 0x12u);
    sub_267B9F98C(v10, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  v12 = *(v0 + 520);
  v13 = *(v0 + 496);
  type metadata accessor for SendMessageState();
  v14 = (*(*(v13 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_strategy + 8) + 24))(**(v13 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_strategy));
  v15 = v14;
  v16 = sub_267E2B564(v14);
  v17 = sub_267C67068();
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = 256;
  }

  v19 = v18 & 0xFFFFFFFE | v15 & 1;
  if (v17)
  {
    v20 = 0x10000;
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_267C67298();
  v23 = sub_267D60CC0(v19 | v20, v21, v22);
  sub_267ED9A2C(v12);
  v25 = v24;
  if (v24)
  {
  }

  v26 = *(v0 + 520);
  v27 = *(v0 + 496);
  *(v23 + 209) = v25 != 0;

  sub_267C3954C(1);

  sub_267EF3838();
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  sub_267EF3B18();
  v28 = [v26 typeName];
  sub_267EF9028();

  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = v23;
  v30 = v26;
  v73 = v23;

  sub_267EF3B08();
  sub_267EF3848();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v31 = *(*(v27 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversation) + 128);
  sub_267B9AFEC(v27 + 16, v0 + 56);
  sub_267B9AFEC(v27 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_siriKitFlowFactory, v0 + 96);
  v32 = qword_2802286F0;
  v76 = v31;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  v33 = *(v0 + 520);
  type metadata accessor for SendMessageCATs(0);
  sub_267EF7B68();
  v75 = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
  v74 = sub_267BB4A3C();
  v34 = type metadata accessor for ShareSheetProvider();
  v35 = swift_allocObject();
  v36 = *(v0 + 120);
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, v36);
  OUTLINED_FUNCTION_23();
  v39 = v38;
  v40 = OUTLINED_FUNCTION_2();
  (*(v39 + 16))(v40, v37, v36);
  v41 = *v40;
  v42 = type metadata accessor for SiriKitFlowFactoryImpl();
  *(v0 + 160) = v42;
  *(v0 + 168) = &off_2878CFE90;
  *(v0 + 136) = v41;
  *(v0 + 200) = v34;
  *(v0 + 208) = &off_2878D0D48;
  *(v0 + 176) = v35;
  *(v0 + 240) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 248) = off_2878D1228;
  v43 = type metadata accessor for SendMessageFlow(0);
  v44 = OUTLINED_FUNCTION_97(v43);
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v42);
  OUTLINED_FUNCTION_23();
  v47 = v46;
  v48 = OUTLINED_FUNCTION_2();
  (*(v47 + 16))(v48, v45, v42);
  v49 = *(v0 + 200);
  v50 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, v49);
  OUTLINED_FUNCTION_23();
  v52 = v51;
  v53 = OUTLINED_FUNCTION_2();
  (*(v52 + 16))(v53, v50, v49);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, *(v0 + 240));
  v54 = *v48;
  v55 = *v53;
  *(v0 + 280) = v42;
  *(v0 + 288) = &off_2878CFE90;
  *(v0 + 256) = v54;
  *(v0 + 320) = v34;
  *(v0 + 328) = &off_2878D0D48;
  *(v0 + 296) = v55;
  *(v0 + 360) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 368) = off_2878D1228;
  sub_267BCE788(v33);
  if (![v33 outgoingMessageType])
  {
    v56 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = OUTLINED_FUNCTION_32();
      *v58 = 0;
      _os_log_impl(&dword_267B93000, v56, v42, "#SendMessageFlow outgoingMessageType is unknown, defaulting to text", v58, 2u);
      OUTLINED_FUNCTION_29_1();
    }

    *(v0 + 480) = MEMORY[0x277D83B88];
    *(v0 + 456) = 1;
    sub_267ECE290();
    sub_267B9F98C(v0 + 456, &qword_28022AEF0, &qword_267EFCDE0);
  }

  if (*(v73 + 16) != 5)
  {
    v59 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = OUTLINED_FUNCTION_32();
      *v61 = 0;
      _os_log_impl(&dword_267B93000, v59, v42, "#SendMessageFlow non-shim intent request, marking as app selected by user", v61, 2u);
      OUTLINED_FUNCTION_29_1();
    }

    *(v73 + 96) = 1;
  }

  v62 = *(v0 + 520);
  v63 = *(v0 + 80);
  v64 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), v63);
  v65 = *(v64 + 24);
  v66 = v62;
  v65(v63, v64);
  __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
  OUTLINED_FUNCTION_43();
  sub_267EF45B8();
  __swift_project_boxed_opaque_existential_0((v0 + 416), *(v0 + 440));
  OUTLINED_FUNCTION_43();
  sub_267EF42B8();
  if (v67)
  {
    v68 = sub_267EF8FF8();
  }

  else
  {
    v68 = 0;
  }

  v69 = *(v0 + 520);
  __swift_destroy_boxed_opaque_existential_0((v0 + 416));
  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  [v69 _setOriginatingDeviceIdsIdentifier_];

  v70 = v44 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
  *v70 = v76;
  *(v70 + 8) = v69;
  *(v70 + 16) = v73;
  *(v70 + 40) = 1;
  type metadata accessor for SendMessageFlow.State(0);
  swift_storeEnumTagMultiPayload();
  sub_267B9A5E8((v0 + 256), v44 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory);
  *(v44 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs) = v75;
  *(v44 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs) = v74;
  sub_267B9A5E8((v0 + 336), v44 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags);
  sub_267B9A5E8((v0 + 296), v44 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider);
  sub_267B9A5E8((v0 + 56), v44 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  OUTLINED_FUNCTION_4_3();

  return v71(v44);
}

uint64_t sub_267C67004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267EF7C38();
  sub_267C7A584();
  sub_267EF7C08();
  sub_267EF3AD8();
  v4 = *(*(a3 + 136) + 16);
  return sub_267EF3AB8();
}

uint64_t sub_267C67068()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversation);
  OUTLINED_FUNCTION_83(v1 + 24, v19);
  sub_267C8F7C0(*(v1 + 24), &v16);
  if (!v17)
  {
    sub_267B9F98C(&v16, &qword_280229910, &unk_267EFEB70);
    return 0;
  }

  sub_267B9A5E8(&v16, v20);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager);
  v3 = v20[4];
  __swift_project_boxed_opaque_existential_0(v20, v20[3]);
  v4 = OUTLINED_FUNCTION_43();
  v5(v4, v3);
  OUTLINED_FUNCTION_83(v2 + 248, v15);

  OUTLINED_FUNCTION_61_0();
  sub_267BB7A18();

  if (v18 != 1)
  {
    if (v18 != 255)
    {
      sub_267B9F98C(&v16, &qword_280229918, &qword_267F003B0);
    }

    __swift_destroy_boxed_opaque_existential_0(v20);
    return 0;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v7 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v7, qword_280240FB0);

  v8 = sub_267EF89F8();
  v9 = sub_267EF95C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_52();
    *v10 = 136446210;
    v11 = OUTLINED_FUNCTION_3();
    v14 = sub_267BA33E8(v11, v12, v13);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_267B93000, v8, v9, "#TextComponent processedContent is .differentLanguage(%{public}s)", v10, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v20);
  return 1;
}

uint64_t sub_267C67298()
{
  OUTLINED_FUNCTION_101();
  sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_0();
  v3 = v2 - v1;
  sub_267EF4B88();
  sub_267E57DFC(v3, &v9);
  v4 = OUTLINED_FUNCTION_3();
  v5(v4);
  if (v10)
  {
    sub_267B9A5E8(&v9, v11);
    __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    v6 = OUTLINED_FUNCTION_61_0();
    if (sub_267E583B0(v6, v7))
    {
      sub_267DD2D80();
    }

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    sub_267B9F98C(&v9, &unk_28022BBF0, &unk_267F01C60);
  }

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267C673E0()
{
  OUTLINED_FUNCTION_12();
  v1[44] = v2;
  v1[45] = v0;
  v3 = sub_267EF4BA8();
  v1[46] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[47] = v4;
  v1[48] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF7008();
  v1[49] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[50] = v6;
  v1[51] = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  OUTLINED_FUNCTION_18(v7);
  v1[52] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF4C08();
  v1[53] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[54] = v9;
  v1[55] = OUTLINED_FUNCTION_50();
  v1[56] = swift_task_alloc();
  v10 = sub_267EF4BE8();
  v1[57] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[58] = v11;
  v1[59] = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267C675A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_41();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_57_2();
  a22 = v24;
  v27 = [objc_allocWithZone(MEMORY[0x277CD4078]) init];
  v24[27] = 1;
  v24[60] = v27;
  v28 = MEMORY[0x277D83B88];
  v24[30] = MEMORY[0x277D83B88];
  sub_267ECE290();
  sub_267B9F98C((v24 + 27), &qword_28022AEF0, &qword_267EFCDE0);
  sub_267EF4B88();
  v29 = OUTLINED_FUNCTION_44_0();
  if (v30(v29) == *MEMORY[0x277D5C150])
  {
    v31 = v24[59];
    v32 = v24[52];
    (*(v24[54] + 96))(v24[56], v24[53]);
    v33 = OUTLINED_FUNCTION_100_0();
    v34(v33);
    sub_267B9CC04(v31, v32);
    v35 = type metadata accessor for DirectInvocationUseCases(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v35);
    v37 = v24[52];
    if (EnumTagSinglePayload == 1)
    {
      v38 = &unk_28022BBE0;
      v39 = qword_267EFD030;
      v40 = v24[52];
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_267BA0810(v37, type metadata accessor for DirectInvocationUseCases);
        goto LABEL_17;
      }

      v62 = sub_267EF8228();
      OUTLINED_FUNCTION_58();
      v64 = v63;
      v66 = (*(v65 + 88))(v37, v62);
      v67 = *MEMORY[0x277D5D450];
      (*(v64 + 8))(v37, v62);
      if (v66 != v67)
      {
LABEL_17:
        v68 = *(v24[45] + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversation);
        v69 = *(v68 + 112);
        if (v69)
        {
          v70 = *(v68 + 104);
          v71 = MEMORY[0x277D837D0];
        }

        else
        {
          v70 = 0;
          v71 = 0;
          v24[37] = 0;
        }

        v24[35] = v70;
        v24[36] = v69;
        v24[38] = v71;

        sub_267ECE290();
        v72 = OUTLINED_FUNCTION_44_0();
        v73(v72);
        sub_267B9F98C((v24 + 35), &qword_28022AEF0, &qword_267EFCDE0);
        OUTLINED_FUNCTION_109_2();

        OUTLINED_FUNCTION_4_3();
        OUTLINED_FUNCTION_15();

        return v76(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16);
      }

      v24[42] = v28;
      v24[39] = 2;
      sub_267ECE290();
      v38 = &qword_28022AEF0;
      v39 = &qword_267EFCDE0;
      v40 = (v24 + 39);
    }

    sub_267B9F98C(v40, v38, v39);
    goto LABEL_17;
  }

  v41 = v24[55];
  v42 = v24[53];
  v43 = v24[45];
  v44 = *(v24[54] + 8);
  (v44)(v24[56], v42);
  v45 = v43 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_transformer;
  sub_267EF4B88();
  v46 = swift_task_alloc();
  *(v46 + 16) = v45;
  *(v46 + 24) = v41;
  v47 = sub_267E43714();
  v49 = v48;
  v24[61] = v47;

  (v44)(v41, v42);
  if (v49)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v50 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v50, qword_280240FB0);
    v51 = v47;
    v52 = sub_267EF89F8();
    v53 = sub_267EF95E8();
    sub_267C095E0(v47);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_48();
      v55 = OUTLINED_FUNCTION_52();
      a12 = v55;
      *v54 = 136315138;
      v24[43] = v47;
      v56 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v57 = sub_267EF9098();
      v59 = sub_267BA33E8(v57, v58, &a12);

      *(v54 + 4) = v59;
      OUTLINED_FUNCTION_57(&dword_267B93000, v60, v61, "#FollowupOfferFlow failed to convert intent: %s");
      __swift_destroy_boxed_opaque_existential_0(v55);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_45_2();
    }

    swift_willThrow();
LABEL_39:
    OUTLINED_FUNCTION_110_4();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_15();

    return v124(v123, v124, v125, v126, v127, v128, v129, v130, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  sub_267ECE5F0();
  if (sub_267BCEA0C(v27))
  {
  }

  else
  {
    v83 = [v27 speakableGroupName];
    if (v83)
    {
    }

    else
    {
      v84 = *(v24[45] + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversation);
      v85 = *(v84 + 112);
      if (v85)
      {
        v86 = *(v84 + 104);
        v87 = MEMORY[0x277D837D0];
      }

      else
      {
        v86 = 0;
        v87 = 0;
        v24[33] = 0;
      }

      v24[31] = v86;
      v24[32] = v85;
      v24[34] = v87;

      sub_267ECE290();
      sub_267B9F98C((v24 + 31), &qword_28022AEF0, &qword_267EFCDE0);
    }
  }

  v88 = v24[55];
  v89 = v24[53];
  sub_267EF4B88();
  v90 = sub_267E57DFC(v88, v24 + 7);
  v44(v88, v89, v90);
  if (!v24[10])
  {
    sub_267B9F98C((v24 + 7), &unk_28022BBF0, &unk_267F01C60);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v105 = sub_267EF8A08();
    __swift_project_value_buffer(v105, qword_280240FB0);
    v106 = OUTLINED_FUNCTION_100_0();
    v107(v106);
    v108 = sub_267EF89F8();
    v109 = sub_267EF95E8();
    if (os_log_type_enabled(v108, v109))
    {
      v111 = v24[47];
      v110 = v24[48];
      a10 = v24[46];
      v112 = OUTLINED_FUNCTION_48();
      a11 = OUTLINED_FUNCTION_52();
      a12 = a11;
      *v112 = 136315138;
      sub_267EF4B88();
      v113 = sub_267EF9098();
      v115 = v114;
      (*(v111 + 8))(v110, a10);
      v116 = sub_267BA33E8(v113, v115, &a12);

      *(v112 + 4) = v116;
      OUTLINED_FUNCTION_108_2(&dword_267B93000, v117, v118, "#FollowupOfferFlow unsupported input: %s");
      __swift_destroy_boxed_opaque_existential_0(a11);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_45_2();
    }

    else
    {

      v119 = OUTLINED_FUNCTION_100_0();
      v120(v119);
    }

    v121 = sub_267C266B0();
    OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v121);
    *v122 = 0xD000000000000024;
    v122[1] = 0x8000000267F136E0;
    swift_willThrow();

    sub_267C095E0(v47);
    goto LABEL_39;
  }

  v91 = v24[45];
  sub_267B9A5E8((v24 + 7), (v24 + 2));
  __swift_project_boxed_opaque_existential_0((v91 + 16), *(v91 + 40));
  v92 = OUTLINED_FUNCTION_12_0();
  v93(v92);
  __swift_project_boxed_opaque_existential_0((v91 + 16), *(v91 + 40));
  v94 = OUTLINED_FUNCTION_12_0();
  v95(v94);
  __swift_project_boxed_opaque_existential_0(v24 + 17, v24[20]);
  OUTLINED_FUNCTION_12_0();
  sub_267EF3C28();
  __swift_project_boxed_opaque_existential_0((v91 + 16), *(v91 + 40));
  v96 = OUTLINED_FUNCTION_4_1();
  v97(v96);
  __swift_project_boxed_opaque_existential_0(v24 + 22, v24[25]);
  OUTLINED_FUNCTION_4_1();
  sub_267EF3B78();
  v98 = swift_task_alloc();
  v24[62] = v98;
  *v98 = v24;
  v98[1] = sub_267C67EB8;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15();

  return sub_267E0BF50(v99, v100, v101, v102, v103);
}

uint64_t sub_267C67EB8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[63] = v0;

  (*(v3[50] + 8))(v3[51], v3[49]);
  __swift_destroy_boxed_opaque_existential_0(v3 + 12);
  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 22);
    __swift_destroy_boxed_opaque_existential_0(v3 + 17);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C68004()
{
  OUTLINED_FUNCTION_62();
  sub_267C095E0(*(v0 + 488));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_109_2();

  OUTLINED_FUNCTION_4_3();
  v2 = *(v0 + 480);

  return v1(v2);
}

uint64_t sub_267C680AC()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 480);
  sub_267C095E0(*(v0 + 488));

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  OUTLINED_FUNCTION_110_4();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267C68164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v31 = a2;
  v33 = a1;
  v35 = a4;
  v34 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OUTLINED_FUNCTION_26_2();
  type metadata accessor for FollowupOfferFlow.State(v12);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v16 = v15 - v14;
  sub_267B9AFEC((v4 + 2), v37);
  v17 = qword_2802286F0;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  sub_267B9AFEC(qword_2802405A0, v36);
  __swift_mutable_project_boxed_opaque_existential_1(v36, v36[3]);
  sub_267C6AABC(v37);
  __swift_destroy_boxed_opaque_existential_0(v36);
  v18 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v4[5]);
  v19 = OUTLINED_FUNCTION_43();
  v20(v19, v18);
  v36[0] = v31;
  v36[1] = a3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298D8, &unk_267EFEB40);
  OUTLINED_FUNCTION_97(v21);
  v22 = OUTLINED_FUNCTION_101();
  type metadata accessor for ReplyConfirmationFlowStrategy(v22);
  sub_267C6AD98(&qword_2802298E0, type metadata accessor for ReplyConfirmationFlowStrategy, &unk_267F02390);
  v23 = sub_267EF3298();
  swift_storeEnumTagMultiPayload();
  v24 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  OUTLINED_FUNCTION_66_3(v5 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state, v37);
  sub_267BF8DEC(v16, v5 + v24);
  swift_endAccess();
  *&v37[0] = v23;
  v25 = v32;
  v26 = v34;
  (*(v8 + 16))(v32, v33, v34);
  v27 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v5;
  (*(v8 + 32))(v28 + v27, v25, v26);
  sub_267BC1E20(&qword_2802298E8, &qword_2802298D8, &unk_267EFEB40, MEMORY[0x277D5B670]);

  sub_267EF3FA8();
}

uint64_t sub_267C68494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v5 = type metadata accessor for FollowupOfferFlow.State(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v82 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v75 - v11;
  v13 = sub_267EF4B48();
  v84 = *(v13 - 8);
  v85 = v13;
  MEMORY[0x28223BE20](v13);
  v83 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298F0, &qword_267EFEB50);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v89 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v75 - v19;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v21 = sub_267EF8A08();
  v22 = __swift_project_value_buffer(v21, qword_280240FB0);
  v87 = *(v16 + 16);
  v88 = a1;
  v87(v20, a1, v15);
  v81 = v22;
  v23 = sub_267EF89F8();
  v24 = v16;
  v25 = sub_267EF95C8();
  if (os_log_type_enabled(v23, v25))
  {
    v26 = swift_slowAlloc();
    v79 = v7;
    v27 = v26;
    v28 = swift_slowAlloc();
    v80 = a2;
    v77 = v28;
    v90[0] = v28;
    *v27 = 136315138;
    sub_267BC1E20(&qword_280229908, &qword_2802298F0, &qword_267EFEB50, MEMORY[0x277D5BC48]);
    v29 = v24;
    v76 = v24;
    v30 = sub_267EF9E58();
    v78 = v12;
    v32 = v31;
    v33 = v20;
    v34 = *(v29 + 8);
    v34(v33, v15);
    v35 = sub_267BA33E8(v30, v32, v90);
    v12 = v78;

    *(v27 + 4) = v35;
    _os_log_impl(&dword_267B93000, v23, v25, "#FollowupOfferFlow exitValue from PromptForConfirmationFlow: %s", v27, 0xCu);
    v36 = v77;
    __swift_destroy_boxed_opaque_existential_0(v77);
    a2 = v80;
    MEMORY[0x26D60A7B0](v36, -1, -1);
    v37 = v27;
    v7 = v79;
    MEMORY[0x26D60A7B0](v37, -1, -1);

    v38 = v15;
    v39 = v76;
  }

  else
  {

    v40 = v20;
    v34 = *(v24 + 8);
    v34(v40, v15);
    v38 = v15;
    v39 = v24;
  }

  v41 = v89;
  v87(v89, v88, v38);
  v42 = (*(v39 + 88))(v41, v38);
  if (v42 == *MEMORY[0x277D5BC38])
  {
    (*(v39 + 96))(v41, v38);
    v43 = v83;
    v44 = v84;
    v45 = v85;
    (*(v84 + 32))(v83, v41, v85);
    sub_267EF4B38();
    (*(v44 + 8))(v43, v45);
    v46 = sub_267EF44F8();
    if (__swift_getEnumTagSinglePayload(v12, 1, v46) != 1)
    {
      v60 = v82;
      sub_267C6AD4C(v12, v82, &qword_280229310, &unk_267EFCF70);
      v61 = *(v46 - 8);
      v62 = (*(v61 + 88))(v60, v46);
      if (v62 == *MEMORY[0x277D5BED8])
      {
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298F8, &qword_267EFEB58);
        v48 = *(v63 + 48);
        v49 = (v7 + *(v63 + 64));
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
        v51 = v7;
        v52 = 6;
        goto LABEL_18;
      }

      if (v62 == *MEMORY[0x277D5BED0])
      {
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298F8, &qword_267EFEB58);
        v48 = *(v72 + 48);
        v49 = (v7 + *(v72 + 64));
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
        v51 = v7;
        v52 = 1;
        goto LABEL_18;
      }

      (*(v61 + 8))(v82, v46);
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298F8, &qword_267EFEB58);
    v48 = *(v47 + 48);
    v49 = (v7 + *(v47 + 64));
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v51 = v7;
    v52 = 2;
LABEL_18:
    __swift_storeEnumTagSinglePayload(v51, v52, 9, v50);
    v73 = sub_267EF4BA8();
    (*(*(v73 - 8) + 16))(v7 + v48, v86, v73);
    *v49 = 0;
    v49[1] = 0;
    swift_storeEnumTagMultiPayload();
    v74 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
    swift_beginAccess();
    sub_267BF8DEC(v7, a2 + v74);
    swift_endAccess();
    return sub_267B9F98C(v12, &qword_280229310, &unk_267EFCF70);
  }

  if (v42 == *MEMORY[0x277D5BC40])
  {
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298F8, &qword_267EFEB58);
    v54 = *(v53 + 48);
    v55 = (v7 + *(v53 + 64));
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    __swift_storeEnumTagSinglePayload(v7, 2, 9, v56);
    v57 = sub_267EF4BA8();
    (*(*(v57 - 8) + 16))(v7 + v54, v86, v57);
    *v55 = 0;
    v55[1] = 0;
    swift_storeEnumTagMultiPayload();
    v58 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
    swift_beginAccess();
    sub_267BF8DEC(v7, a2 + v58);
    return swift_endAccess();
  }

  else
  {
    v64 = sub_267EF89F8();
    v65 = sub_267EF95E8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = v7;
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_267B93000, v64, v65, "#FollowupOfferFlow unexpected exit value from PromptForConfirmationFlow", v67, 2u);
      v68 = v67;
      v7 = v66;
      MEMORY[0x26D60A7B0](v68, -1, -1);
    }

    sub_267C266B0();
    v69 = swift_allocError();
    *v70 = 0xD000000000000034;
    v70[1] = 0x8000000267F136A0;
    *v7 = v69;
    swift_storeEnumTagMultiPayload();
    v71 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
    swift_beginAccess();
    sub_267BF8DEC(v7, a2 + v71);
    swift_endAccess();
    return (v34)(v41, v38);
  }
}

uint64_t sub_267C68D98(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackState;
  v5 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackState);
  if (v5)
  {
    *(v5 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_isTriggeredByButtonTap) = a1 & 1;
    v6 = v5;
  }

  else
  {
    v7 = type metadata accessor for SendTapbackState(0);
    OUTLINED_FUNCTION_97(v7);
    v6 = sub_267DBFA18(a1 & 1);
    *(v2 + v4) = v6;
  }

  return v6;
}

void *sub_267C68E2C(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackResponseProvider;
  v5 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackResponseProvider);
  if (v5)
  {
    v5[14] = a2;
  }

  else
  {
    v7 = *(*(v2 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversation) + 128);
    v8 = qword_2802286F0;

    if (v8 != -1)
    {
      OUTLINED_FUNCTION_4_0(&qword_2802286F0);
    }

    sub_267B9AFEC(qword_2802405A0, v13);
    sub_267B9AFEC(v2 + 16, v12);
    __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
    v11[3] = &type metadata for CATProvider;
    v11[4] = &off_2878CE7A0;
    type metadata accessor for SendTapbackResponseProvider();
    v5 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v11, &type metadata for CATProvider);
    v5[12] = &type metadata for CATProvider;
    v5[13] = &off_2878CE7A0;
    v5[7] = v7;
    v5[8] = a1;
    v5[14] = a2;
    sub_267B9A5E8(v12, (v5 + 2));

    v9 = a1;
    __swift_destroy_boxed_opaque_existential_0(v11);
    __swift_destroy_boxed_opaque_existential_0(v13);
    *(v2 + v4) = v5;
  }

  return v5;
}

uint64_t sub_267C68F88()
{
  OUTLINED_FUNCTION_12();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = type metadata accessor for FollowupOfferFlow.State(0);
  v1[17] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[18] = OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C69008(uint64_t a1)
{
  v27 = v2;
  v4 = v2[16];
  v5 = *(v4 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackResponseProvider);
  v2[19] = v5;
  if (v5)
  {
    v6 = v2[18];
    swift_storeEnumTagMultiPayload();
    v7 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
    OUTLINED_FUNCTION_66_3(v4 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state, (v2 + 10));

    sub_267BF8DEC(v6, v4 + v7);
    swift_endAccess();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v2[20] = v8;
    *v8 = v9;
    v8[1] = sub_267C69290;

    return sub_267E48624();
  }

  else
  {
    v11 = sub_267C6AA68();
    v12 = OUTLINED_FUNCTION_61_1(&type metadata for SendTapbackFlowError, v11);
    OUTLINED_FUNCTION_74_2(v12, v13);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v14 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v14, qword_280240FB0);
    v15 = v1;
    v16 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_95();
    if (OUTLINED_FUNCTION_99())
    {
      v3 = OUTLINED_FUNCTION_48();
      v26 = OUTLINED_FUNCTION_52();
      *v3 = 136315138;
      v2[13] = v1;
      v17 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v18 = sub_267EF9098();
      v20 = sub_267BA33E8(v18, v19, &v26);

      *(v3 + 4) = v20;
      OUTLINED_FUNCTION_29_2(&dword_267B93000, v21, v22, "#FollowupOfferFlow: unsupportedThirdPartyAppOfferReply making output failed: %s");
      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_29_1();
    }

    OUTLINED_FUNCTION_81_3();
    v23 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
    OUTLINED_FUNCTION_46_4(v3 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state);
    v24 = v1;
    sub_267BF8DEC(v16, v3 + v23);
    swift_endAccess();
    sub_267EF4018();

    OUTLINED_FUNCTION_17();

    return v25();
  }
}

uint64_t sub_267C69290()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v3 + 176) = v10;
    *v10 = v11;
    v10[1] = sub_267C693EC;

    return sub_267BF8E50();
  }
}

uint64_t sub_267C693EC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C694D0()
{
  OUTLINED_FUNCTION_12();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267C69538()
{
  OUTLINED_FUNCTION_29();
  v17 = v0;

  v2 = *(v0 + 168);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v3 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v3, qword_280240FB0);
  v4 = v2;
  v5 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    v1 = OUTLINED_FUNCTION_48();
    v16 = OUTLINED_FUNCTION_52();
    *v1 = 136315138;
    *(v0 + 104) = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v7 = sub_267EF9098();
    v9 = sub_267BA33E8(v7, v8, &v16);

    *(v1 + 4) = v9;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v10, v11, "#FollowupOfferFlow: unsupportedThirdPartyAppOfferReply making output failed: %s");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_81_3();
  v12 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  OUTLINED_FUNCTION_46_4(v1 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state);
  v13 = v2;
  sub_267BF8DEC(v5, v1 + v12);
  swift_endAccess();
  sub_267EF4018();

  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_267C696D0()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 168) = v2;
  *(v1 + 104) = v3;
  *(v1 + 112) = v0;
  v4 = type metadata accessor for FollowupOfferFlow.State(0);
  *(v1 + 120) = v4;
  OUTLINED_FUNCTION_18(v4);
  *(v1 + 128) = OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C69750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v13 = *(v11[14] + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackResponseProvider);
  v11[17] = v13;
  if (v13)
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v11[18] = v14;
    *v14 = v15;
    v14[1] = sub_267C69944;
    OUTLINED_FUNCTION_91_0();

    return sub_267E474B0();
  }

  else
  {
    v18 = sub_267C6AA68();
    v19 = OUTLINED_FUNCTION_61_1(&type metadata for SendTapbackFlowError, v18);
    OUTLINED_FUNCTION_74_2(v19, v20);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v21 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);
    v22 = v10;
    sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_95();
    if (OUTLINED_FUNCTION_99())
    {
      OUTLINED_FUNCTION_48();
      v23 = OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_120_1(5.7779e-34);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_98_0(v24);
      OUTLINED_FUNCTION_29_2(&dword_267B93000, v25, v26, "#FollowupOfferFlow: unsupportedTapbackCategoryOfferReply publishing output failed: %@");
      sub_267B9F98C(v23, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_29_1();
    }

    OUTLINED_FUNCTION_118_2();
    OUTLINED_FUNCTION_49_4();
    OUTLINED_FUNCTION_46_4(v12 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state);
    v27 = v10;
    OUTLINED_FUNCTION_117_3();
    swift_endAccess();
    sub_267EF4018();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_91_0();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }
}

uint64_t sub_267C69944()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C69A40()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_112_1();
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  OUTLINED_FUNCTION_66_3(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state, v2 + 80);
  sub_267BF8DEC(v1, v0 + v3);
  swift_endAccess();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v4 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);
  v5 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v7);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_26();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v2 + 160) = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_104_1(v13);

  return sub_267BF8E50();
}

uint64_t sub_267C69B74()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C69C58()
{
  OUTLINED_FUNCTION_12();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267C69CC0()
{
  OUTLINED_FUNCTION_62();

  v2 = *(v0 + 152);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v3 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v3, qword_280240FB0);
  v4 = v2;
  sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v6);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v7, v8, "#FollowupOfferFlow: unsupportedTapbackCategoryOfferReply publishing output failed: %@");
    sub_267B9F98C(v5, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_118_2();
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_46_4(v1 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state);
  v9 = v2;
  OUTLINED_FUNCTION_117_3();
  swift_endAccess();
  sub_267EF4018();

  OUTLINED_FUNCTION_17();

  return v10();
}

uint64_t sub_267C69E1C()
{
  OUTLINED_FUNCTION_12();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for FollowupOfferFlow.State(0);
  v1[15] = v3;
  OUTLINED_FUNCTION_18(v3);
  v1[16] = OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267C69E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v13 = *(v11[14] + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackResponseProvider);
  v11[17] = v13;
  if (v13)
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v11[18] = v14;
    *v14 = v15;
    v14[1] = sub_267C6A088;
    OUTLINED_FUNCTION_91_0();

    return sub_267E47E74();
  }

  else
  {
    v18 = sub_267C6AA68();
    v19 = OUTLINED_FUNCTION_61_1(&type metadata for SendTapbackFlowError, v18);
    OUTLINED_FUNCTION_74_2(v19, v20);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v21 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);
    v22 = v10;
    sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_95();
    if (OUTLINED_FUNCTION_99())
    {
      OUTLINED_FUNCTION_48();
      v23 = OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_120_1(5.7779e-34);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_98_0(v24);
      OUTLINED_FUNCTION_29_2(&dword_267B93000, v25, v26, "#FollowupOfferFlow: tapbackFailedPromptForReply publishing output failed: %@");
      sub_267B9F98C(v23, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_29_1();
    }

    OUTLINED_FUNCTION_118_2();
    OUTLINED_FUNCTION_49_4();
    OUTLINED_FUNCTION_46_4(v12 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state);
    v27 = v10;
    OUTLINED_FUNCTION_117_3();
    swift_endAccess();
    sub_267EF4018();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_91_0();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }
}

uint64_t sub_267C6A088()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C6A184()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_112_1();
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  OUTLINED_FUNCTION_66_3(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state, v2 + 80);
  sub_267BF8DEC(v1, v0 + v3);
  swift_endAccess();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v4 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);
  v5 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v7);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_26();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v2 + 160) = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_104_1(v13);

  return sub_267BF8E50();
}

uint64_t sub_267C6A2B8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C6A39C()
{
  OUTLINED_FUNCTION_62();

  v2 = *(v0 + 152);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v3 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v3, qword_280240FB0);
  v4 = v2;
  sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v6);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v7, v8, "#FollowupOfferFlow: tapbackFailedPromptForReply publishing output failed: %@");
    sub_267B9F98C(v5, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_118_2();
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_46_4(v1 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state);
  v9 = v2;
  OUTLINED_FUNCTION_117_3();
  swift_endAccess();
  sub_267EF4018();

  OUTLINED_FUNCTION_17();

  return v10();
}

uint64_t sub_267C6A4F8()
{
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_siriKitFlowFactory));
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_transformer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  OUTLINED_FUNCTION_22();
  (*(v4 + 8))(v0 + v3);

  v5 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished);
  v6 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished + 8);

  return sub_267BA1BFC(v5, v6);
}

void sub_267C6A624(uint64_t a1)
{
  type metadata accessor for FollowupOfferFlow.State(319);
  if (v1 <= 0x3F)
  {
    sub_267C6A728(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_267C6A728(uint64_t a1)
{
  if (!qword_2802298A8)
  {
    sub_267EF4C08();
    sub_267BA9F38(255, &qword_28022AE60, 0x277CD4078);
    v1 = sub_267EF7078();
    if (!v2)
    {
      atomic_store(v1, &qword_2802298A8);
    }
  }
}

void sub_267C6A7A0(uint64_t a1)
{
  sub_267C6A828(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ReadingOfferBehaviorFlowFrameResult(319);
    if (v2 <= 0x3F)
    {
      sub_267C1B358();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_267C6A828(uint64_t a1)
{
  if (!qword_2802298C0)
  {
    type metadata accessor for ReadingOfferBehaviorFlowFrameResult(255);
    sub_267EF4BA8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022A300, &qword_267EFEEE0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2802298C0);
    }
  }
}

uint64_t sub_267C6A8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267BF1F28;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_267C6A9A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267C5FB7C();
}

unint64_t sub_267C6AA68()
{
  result = qword_2802298D0;
  if (!qword_2802298D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802298D0);
  }

  return result;
}

uint64_t sub_267C6AABC(__int128 *a1)
{
  v6[3] = &type metadata for CATProvider;
  v6[4] = &off_2878CE7A0;
  type metadata accessor for ReplyConfirmationFlowStrategy(0);
  v2 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v6, &type metadata for CATProvider);
  *(v2 + 80) = &type metadata for CATProvider;
  *(v2 + 88) = &off_2878CE7A0;
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow29ReplyConfirmationFlowStrategy_confirmationResponse;
  v4 = sub_267EF44F8();
  __swift_storeEnumTagSinglePayload(v2 + v3, 1, 1, v4);
  sub_267B9A5E8(a1, v2 + 16);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v2;
}

uint64_t sub_267C6AB64(uint64_t a1)
{
  v3 = sub_267EF4BA8();
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_267C68494(a1, v5, v6);
}

uint64_t sub_267C6ABD4@<X0>(void *a1@<X2>, uint64_t *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  result = sub_267E3FF78(a3, a4);
  if (v4)
  {
    *a1 = v4;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_267C6AC8C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v4(v3);
  OUTLINED_FUNCTION_22();
  v5 = OUTLINED_FUNCTION_61_0();
  v6(v5);
  return a2;
}

uint64_t sub_267C6ACF4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v4(v3);
  OUTLINED_FUNCTION_22();
  v5 = OUTLINED_FUNCTION_61_0();
  v6(v5);
  return a2;
}

uint64_t sub_267C6AD4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_123(a1, a2, a3, a4);
  OUTLINED_FUNCTION_22();
  v5 = OUTLINED_FUNCTION_61_0();
  v6(v5);
  return v4;
}

uint64_t sub_267C6AD98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267C6ADE8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v75 = a4;
  v76 = a3;
  sub_267EF4548();
  OUTLINED_FUNCTION_23();
  v77 = v7;
  v78 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v74 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  OUTLINED_FUNCTION_23();
  v84 = v11;
  MEMORY[0x28223BE20](v12);
  v83 = v73 - v13;
  v14 = sub_267EF7B88();
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_0_0();
  v81 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v82 = v73 - v21;
  v22 = sub_267BFB860();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v87 = v20;
  v23 = sub_267EF8A08();
  __swift_project_value_buffer(v23, qword_280240FB0);
  v24 = sub_267EF89F8();
  v25 = sub_267EF95D8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_267B93000, v24, v25, "#ConversationActionGroup creating FollowupOfferFlow flow with ReplyOfferFlowStrategy", v26, 2u);
    MEMORY[0x26D60A7B0](v26, -1, -1);
  }

  v85 = v10;

  sub_267B9AFEC(a2 + 16, v108);
  v107 = 0;
  v105 = 0u;
  v106 = 0u;
  if (qword_2802286F0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
  v27 = sub_267BB4A3C();
  v103 = &type metadata for MessagesFeatureFlagsImpl;
  v104 = off_2878D1228;
  v100 = &type metadata for CATProvider;
  v101 = &off_2878CE7A0;
  type metadata accessor for ReplyOfferFlowStrategy(0);
  OUTLINED_FUNCTION_27_4();
  v28 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v102, &type metadata for MessagesFeatureFlagsImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v99, &type metadata for CATProvider);
  v97 = &type metadata for MessagesFeatureFlagsImpl;
  v98 = off_2878D1228;
  v94 = &type metadata for CATProvider;
  v95 = &off_2878CE7A0;
  v29 = OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_confirmedResponse;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
  __swift_storeEnumTagSinglePayload(v28 + v29, 6, 9, v30);
  v31 = OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversationManager;
  *(v28 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversationManager) = 0;
  *(v28 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation) = a1;
  sub_267B9AFEC(&v93, v28 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_catProvider);
  sub_267C2FB6C(&v105, &v88, &qword_2802299B0, &unk_267F00D00);
  v79 = a1;
  v86 = v22;
  if (v89)
  {
    sub_267B9A5E8(&v88, &v90);
  }

  else
  {
    v32 = v109;
    v33 = v110;
    __swift_project_boxed_opaque_existential_0(v108, v109);
    v80 = v27;
    v34 = *(v33 + 1);

    v35 = v33;
    v22 = v86;
    v34(&v90, v32, v35);
    v36 = sub_267BFA8F4(&v90);
    __swift_destroy_boxed_opaque_existential_0(&v90);
    v91 = type metadata accessor for SearchForMessagesCATPatternsExecutor(0);
    v92 = &off_2878D3460;
    *&v90 = v36;
    if (v89)
    {
      sub_267B9F98C(&v88, &qword_2802299B0, &unk_267F00D00);
    }
  }

  sub_267B9A5E8(&v90, v28 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns);
  __swift_project_boxed_opaque_existential_0(&v93, v94);
  v37 = sub_267BB4A3C();

  sub_267B9F98C(&v105, &qword_2802299B0, &unk_267F00D00);
  *(v28 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_labelsCATs) = v37;
  sub_267B9A5E8(&v96, v28 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_featureFlags);
  *(v28 + v31) = a2;

  sub_267B9AFEC(v108, v28 + 16);
  __swift_destroy_boxed_opaque_existential_0(&v93);
  __swift_destroy_boxed_opaque_existential_0(v108);
  __swift_destroy_boxed_opaque_existential_0(v99);
  __swift_destroy_boxed_opaque_existential_0(&v102);
  v38 = v82;
  v39 = v85;
  __swift_storeEnumTagSinglePayload(v82, 1, 1, v85);
  v40 = type metadata accessor for SiriKitFlowFactoryImpl();
  v41 = swift_allocObject();
  type metadata accessor for SendMessageCATs(0);
  sub_267EF7B68();
  v81 = sub_267EF78E8();
  v109 = v40;
  v110 = &off_2878CFE90;
  v108[0] = v41;
  type metadata accessor for FollowupOfferFlow(0);
  OUTLINED_FUNCTION_27_4();
  v73[1] = v42;
  v43 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v108, v40);
  v80 = v73;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_0_0();
  v47 = (v46 - v45);
  (*(v48 + 16))(v46 - v45);
  v49 = *v47;
  *(&v106 + 1) = v40;
  v107 = &off_2878CFE90;
  *&v105 = v49;
  *(v43 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackResponseProvider) = 0;
  *(v43 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackState) = 0;
  v50 = (v43 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished);
  *v50 = 0;
  v50[1] = 0;
  v51 = (v43 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_strategy);
  *v51 = v28;
  v51[1] = &off_2878D94A8;
  v52 = v79;
  *(v43 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversation) = v79;
  *(v43 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager) = a2;
  v53 = v87;
  sub_267C2FB6C(v38, v87, &qword_2802299A8, &unk_267F00CF0);
  if (__swift_getEnumTagSinglePayload(v53, 1, v39) == 1)
  {
    v54 = type metadata accessor for EmptyReferenceResolver();
    v55 = swift_allocObject();
    v103 = v54;
    v104 = sub_267C6BAC4(&qword_2802299B8, type metadata accessor for EmptyReferenceResolver, &unk_267F04AA8);
    *&v102 = v55;
    v100 = sub_267EF68A8();
    v101 = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v99);

    sub_267EF6898();
    sub_267B9AFEC(a2 + 16, &v96);
    sub_267B9AFEC(v99, &v93);
    sub_267B9AFEC(&v102, &v90);
    v56 = swift_allocObject();
    sub_267B9A5E8(&v96, v56 + 16);
    sub_267B9A5E8(&v93, v56 + 56);
    sub_267B9A5E8(&v90, v56 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
    v57 = v83;
    v58 = v87;
    sub_267EF7058();
    sub_267B9F98C(v38, &qword_2802299A8, &unk_267F00CF0);
    __swift_destroy_boxed_opaque_existential_0(v99);
    __swift_destroy_boxed_opaque_existential_0(&v102);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 1, v39);
    v60 = v84;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v58, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {

    sub_267B9F98C(v38, &qword_2802299A8, &unk_267F00CF0);
    v57 = v83;
    v60 = v84;
    (v84[4])(v83, v53, v39);
  }

  (v60[4])(v43 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_transformer, v57, v39);
  sub_267B9A5E8(&v105, v43 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_siriKitFlowFactory);
  type metadata accessor for FollowupOfferFlow.State(0);
  swift_storeEnumTagMultiPayload();
  *(v43 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_sendMessageCATs) = v81;
  sub_267B9AFEC(a2 + 16, &v102);
  sub_267B9A5E8(&v102, v43 + 16);
  __swift_destroy_boxed_opaque_existential_0(v108);
  v109 = &type metadata for MessagesFeatureFlagsImpl;
  v110 = off_2878D1228;
  v87 = type metadata accessor for OfferReplyReturnGroup();
  v61 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v108, &type metadata for MessagesFeatureFlagsImpl);
  v61[8] = &type metadata for MessagesFeatureFlagsImpl;
  v61[9] = off_2878D1228;
  v61[2] = a2;
  v61[3] = v52;
  v61[4] = v22;

  __swift_destroy_boxed_opaque_existential_0(v108);
  v62 = *(v52 + 168);
  sub_267EF3838();
  v85 = v110;
  v84 = __swift_project_boxed_opaque_existential_0(v108, v109);
  sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_267BB41B0(ObjCClassFromMetadata);
  if (v65)
  {
    sub_267EF3B18();
    v66 = swift_allocObject();
    *(v66 + 16) = v52;
    *(v66 + 24) = v62;

    LOBYTE(v105) = 1;
    sub_267EF3B08();
    sub_267EF3848();

    __swift_destroy_boxed_opaque_existential_0(v108);
    v108[0] = v43;
    *&v105 = v61;
    sub_267EF33F8();
    OUTLINED_FUNCTION_27_4();
    swift_allocObject();
    sub_267C6BAC4(&qword_2802299C0, type metadata accessor for FollowupOfferFlow, &unk_267EFEAE0);
    sub_267C6BAC4(&qword_2802299C8, type metadata accessor for OfferReplyReturnGroup, &unk_267F0CDE8);

    v67 = sub_267EF33E8();
    v68 = v74;
    *v74 = v67;
    v69 = *MEMORY[0x277D5B898];
    sub_267EF3758();
    OUTLINED_FUNCTION_22();
    (*(v70 + 104))(v68, v69);
    v72 = v77;
    v71 = v78;
    (*(v77 + 104))(v68, *MEMORY[0x277D5BF50], v78);
    v76(v68);

    return (*(v72 + 8))(v68, v71);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267C6BA40(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_267EF3AD8();
  v4 = *(a3 + 16);
  return sub_267EF3AB8();
}

uint64_t sub_267C6BAC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267C6BB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v159 = a2;
  v161 = sub_267EF57C8();
  OUTLINED_FUNCTION_58();
  v158 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v157 = v5;
  OUTLINED_FUNCTION_26_2();
  v156 = sub_267EF5AA8();
  OUTLINED_FUNCTION_58();
  v155 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v154 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299D0, &unk_267F09690);
  MEMORY[0x28223BE20](v9 - 8);
  v163 = (v149 - v10);
  OUTLINED_FUNCTION_26_2();
  v165 = sub_267EF5318();
  OUTLINED_FUNCTION_58();
  v167 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v168 = v13;
  OUTLINED_FUNCTION_26_2();
  v14 = sub_267EF51F8();
  OUTLINED_FUNCTION_58();
  v164 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v166 = v17;
  OUTLINED_FUNCTION_26_2();
  v18 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_267EF4C68();
  OUTLINED_FUNCTION_58();
  v169 = v24;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v149 - v30;
  MEMORY[0x28223BE20](v29);
  v171 = v149 - v32;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v33 = sub_267EF8A08();
  v170 = __swift_project_value_buffer(v33, qword_280240FB0);
  v34 = sub_267EF89F8();
  v35 = sub_267EF95D8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_32();
    v160 = v31;
    v37 = v14;
    v38 = v28;
    v39 = a1;
    v40 = v20;
    v41 = v18;
    v42 = v36;
    *v36 = 0;
    _os_log_impl(&dword_267B93000, v34, v35, "#Transformer.getReplyAnnouncementParseTransformer .transform was called", v36, 2u);
    v43 = v42;
    v18 = v41;
    v20 = v40;
    a1 = v39;
    v28 = v38;
    v14 = v37;
    v31 = v160;
    MEMORY[0x26D60A7B0](v43, -1, -1);
  }

  (*(v20 + 16))(v23, a1, v18);
  v44 = (*(v20 + 88))(v23, v18);
  if (v44 == *MEMORY[0x277D5C160])
  {
    v45 = v44;
    v160 = v14;
    v151 = v20;
    v46 = *(v20 + 96);
    v152 = v18;
    v46(v23, v18);
    v47 = v169;
    v48 = v171;
    v49 = v172;
    (*(v169 + 32))(v171, v23, v172);
    v50 = *(v47 + 16);
    v50(v31, v48, v49);
    v51 = sub_267EF89F8();
    v52 = sub_267EF95D8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v173[0] = v54;
      *v53 = 136315138;
      v50(v28, v31, v172);
      v55 = sub_267EF9098();
      v57 = v56;
      v153 = *(v169 + 8);
      v153(v31, v172);
      v58 = sub_267BA33E8(v55, v57, v173);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_267B93000, v51, v52, "#Transformer.getReplyAnnouncementParseTransformer parse is a usoParse: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      OUTLINED_FUNCTION_5_17();
      MEMORY[0x26D60A7B0](v53, -1, -1);
    }

    else
    {

      v153 = *(v47 + 8);
      v153(v31, v49);
    }

    v72 = v160;
    v73 = v166;
    v74 = v167;
    sub_267EF4C48();
    v75 = sub_267EF51B8();
    v76 = v163;
    sub_267C8EFA8(v75, v163);
    v77 = v76;

    v78 = v76;
    v79 = v165;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v165);
    v81 = v168;
    if (EnumTagSinglePayload == 1)
    {
      sub_267C6C940(v77, &qword_2802299D0);
      v82 = sub_267EF89F8();
      v83 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_36(v83))
      {
        v84 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_61(v84);
        OUTLINED_FUNCTION_4_5(&dword_267B93000, v85, v86, "#Transformer.getReplyAnnouncementParseTransformer did not have a userDialogAct");
        OUTLINED_FUNCTION_5_17();
      }

      sub_267EF71B8();
      v87 = sub_267C6C8E8();
      v88 = OUTLINED_FUNCTION_3_2(v87);
      OUTLINED_FUNCTION_9_12(v88, v89);
      OUTLINED_FUNCTION_1_23();
      *v91 = v90 | 2;
      v91[1] = v92;
      OUTLINED_FUNCTION_6_11();
      (*(v93 + 104))();
      swift_willThrow();
      goto LABEL_40;
    }

    v150 = v45;
    (*(v74 + 32))(v168, v77, v79);
    v94 = v162;
    v95 = sub_267EF5478();
    if (!v94)
    {
      v96 = v95;
      if (sub_267BAF0DC(v95))
      {
        sub_267BBD0EC(0, (v96 & 0xC000000000000001) == 0, v96);
        if ((v96 & 0xC000000000000001) != 0)
        {
          v97 = MEMORY[0x26D609870](0, v96);
        }

        else
        {
          v97 = *(v96 + 32);
        }

        sub_267EF5CF8();
        v162 = v97;

        if (v173[3])
        {
          sub_267EF5FE8();
          if (swift_dynamicCast())
          {
            v98 = v173[6];
            sub_267EF6658();
            swift_allocObject();
            v149[1] = sub_267EF6648();

            sub_267EF6348();
            v149[2] = v98;

            v99 = v173[0];
            if (v173[0])
            {
              sub_267EF64C8();
              swift_allocObject();
              v100 = sub_267EF64B8();
              sub_267EF5C88();
              v149[3] = v99;
              if (v101)
              {
                OUTLINED_FUNCTION_7_13();
                sub_267EF6498();

                v102 = sub_267EF56A8();
                v103 = MEMORY[0x277D84F90];
                if (!v102)
                {
                  v102 = MEMORY[0x277D84F90];
                }

                v104 = *(v102 + 16);
                if (v104)
                {
                  v170 = v100;
                  v105 = v155 + 16;
                  v163 = *(v155 + 16);
                  v106 = (*(v155 + 80) + 32) & ~*(v155 + 80);
                  v155 = v102;
                  v107 = v102 + v106;
                  v108 = *(v105 + 56);
                  v109 = (v105 - 8);
                  v110 = v156;
                  v111 = v154;
                  do
                  {
                    (v163)(v111, v107, v110);
                    if (sub_267EF64A8())
                    {
                      sub_267EF5678();
                    }

                    (*v109)(v111, v110);
                    v107 += v108;
                    --v104;
                  }

                  while (v104);

                  v74 = v167;
                  OUTLINED_FUNCTION_7_13();
                  v103 = MEMORY[0x277D84F90];
                }

                else
                {
                }

                v138 = sub_267EF5698();
                if (!v138)
                {
                  v138 = v103;
                }

                v139 = v138[2];
                if (v139)
                {
                  v140 = v157;
                  v170 = *(v158 + 16);
                  v141 = *(v158 + 80);
                  v163 = v138;
                  v142 = v138 + ((v141 + 32) & ~v141);
                  v143 = *(v158 + 72);
                  v144 = (v158 + 8);
                  v145 = v161;
                  do
                  {
                    v170(v140, v142, v145);
                    if (sub_267EF64A8())
                    {
                      sub_267EF5668();
                    }

                    v145 = v161;
                    (*v144)(v140, v161);
                    v142 += v143;
                    --v139;
                  }

                  while (v139);

                  v79 = v165;
                  v73 = v166;
                  v74 = v167;
                }

                else
                {

                  v79 = v165;
                  v73 = v166;
                }
              }

              sub_267EF6638();

              v81 = v168;
            }

            v146 = v159;
            sub_267E83968(v159);

            (*(v74 + 8))(v81, v79);
            (*(v164 + 8))(v73, v160);
            v147 = OUTLINED_FUNCTION_10_13();
            v148(v147);
            return (*(v151 + 104))(v146, v150, v152);
          }
        }

        else
        {
          sub_267C6C940(v173, &qword_28022AEF0);
        }

        v124 = sub_267EF89F8();
        v125 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_36(v125))
        {
          v126 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_61(v126);
          OUTLINED_FUNCTION_4_5(&dword_267B93000, v127, v128, "#Transformer.getReplyAnnouncementParseTransformer could not convert UsoTask to replyTask");
          OUTLINED_FUNCTION_5_17();
        }

        sub_267EF71B8();
        v129 = sub_267C6C8E8();
        v130 = OUTLINED_FUNCTION_3_2(v129);
        OUTLINED_FUNCTION_9_12(v130, v131);
        OUTLINED_FUNCTION_1_23();
        *v133 = v132 + 12;
        v133[1] = v134;
        OUTLINED_FUNCTION_6_11();
        (*(v135 + 104))();
        swift_willThrow();
      }

      else
      {

        v112 = sub_267EF89F8();
        v113 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_36(v113))
        {
          v114 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_61(v114);
          OUTLINED_FUNCTION_4_5(&dword_267B93000, v115, v116, "#Transformer.getReplyAnnouncementParseTransformer External_UDA does not have a first task");
          OUTLINED_FUNCTION_5_17();
        }

        sub_267EF71B8();
        v117 = sub_267C6C8E8();
        v118 = OUTLINED_FUNCTION_3_2(v117);
        OUTLINED_FUNCTION_9_12(v118, v119);
        OUTLINED_FUNCTION_1_23();
        *v120 = v122;
        v120[1] = v121;
        OUTLINED_FUNCTION_6_11();
        (*(v123 + 104))();
        swift_willThrow();
      }
    }

    (*(v74 + 8))(v81, v79);
LABEL_40:
    (*(v164 + 8))(v73, v72);
    v136 = OUTLINED_FUNCTION_10_13();
    return v137(v136);
  }

  (*(v20 + 8))(v23, v18);
  v59 = sub_267EF89F8();
  v60 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_36(v60))
  {
    v61 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_61(v61);
    OUTLINED_FUNCTION_4_5(&dword_267B93000, v62, v63, "#Transformer.getReplyAnnouncementParseTransformer parse was not a .uso parse");
    MEMORY[0x26D60A7B0](v35, -1, -1);
  }

  sub_267EF71B8();
  v64 = sub_267C6C8E8();
  v65 = OUTLINED_FUNCTION_3_2(v64);
  OUTLINED_FUNCTION_9_12(v65, v66);
  OUTLINED_FUNCTION_1_23();
  *v67 = v69;
  v67[1] = v68;
  OUTLINED_FUNCTION_6_11();
  (*(v70 + 104))();
  return swift_willThrow();
}

unint64_t sub_267C6C8E8()
{
  result = qword_2802299D8;
  if (!qword_2802299D8)
  {
    sub_267EF71B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802299D8);
  }

  return result;
}

uint64_t sub_267C6C940(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_12(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(v2, v5);
  return v2;
}

uint64_t sub_267C6C9C0(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  __swift_project_boxed_opaque_existential_0(v3 + 2, v3[5]);
  if (sub_267EF3C28())
  {
    v6 = __swift_project_boxed_opaque_existential_0(v3 + 12, v3[15]);
    v7 = *v6;
    v8 = v6[1];

    return sub_267CA0B94(v7, v8, a2, a3);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_7_2(v12))
    {
      v13 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v13);
      OUTLINED_FUNCTION_1_1(&dword_267B93000, v14, v15, "#UnsupportedWithLowQualityVoiceOnWatchStrategy not watch, skip check");
      OUTLINED_FUNCTION_29_1();
    }

    return (a2)(0, 0);
  }
}

void sub_267C6CAEC(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = qword_280228818;
    v5 = a1;
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);
    v32 = v5;
    v7 = sub_267EF89F8();
    v8 = sub_267EF95D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v32;
      *v10 = a1;
      v11 = v32;
      _os_log_impl(&dword_267B93000, v7, v8, "#UnsupportedWithLowQualityVoiceOnWatchStrategy retrieved voice: %@", v9, 0xCu);
      sub_267B9FF34(v10, &unk_280229E30, &unk_267EFC270);
      MEMORY[0x26D60A7B0](v10, -1, -1);
      MEMORY[0x26D60A7B0](v9, -1, -1);
    }

    v12 = sub_267EF7238() & 0xFFFFFFFFFFFFFFFELL;
    v13 = sub_267EF89F8();
    v14 = sub_267EF95D8();
    v15 = OUTLINED_FUNCTION_7_2(v14);
    if (v12 == 2)
    {
      if (v15)
      {
        v16 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v16);
        OUTLINED_FUNCTION_1_1(&dword_267B93000, v17, v18, "#UnsupportedWithLowQualityVoiceOnWatchStrategy premium voice available on watch, supported");
        OUTLINED_FUNCTION_29_1();
      }

      a2(0, 0);
    }

    else
    {
      if (v15)
      {
        v28 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v28);
        OUTLINED_FUNCTION_1_1(&dword_267B93000, v29, v30, "#UnsupportedWithLowQualityVoiceOnWatchStrategy premium voice is not available on watch, not supported");
        OUTLINED_FUNCTION_29_1();
      }

      sub_267C6D4D4();
      v31 = swift_allocError();
      a2(v31, 0);
    }

    v27 = v32;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_7_2(v21))
    {
      v22 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v22);
      OUTLINED_FUNCTION_1_1(&dword_267B93000, v23, v24, "#UnsupportedWithLowQualityVoiceOnWatchStrategy failed to get voice");
      OUTLINED_FUNCTION_29_1();
    }

    sub_267C266B0();
    v25 = swift_allocError();
    *v26 = 0xD000000000000019;
    v26[1] = 0x8000000267F13A80;
    a2(v25, 1);
    v27 = v25;
  }
}

uint64_t sub_267C6CE10(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v7 = sub_267EF7B88();
  MEMORY[0x28223BE20](v7 - 8);
  v13[0] = a1;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if (swift_dynamicCast())
  {
    type metadata accessor for MessagesCATs(0);
    sub_267EF7B68();
    sub_267EF78E8();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = a2;
    v9[4] = a3;

    sub_267CB3348();
  }

  else
  {
    v13[1] = 0xE000000000000000;
    sub_267EF9B68();
    MEMORY[0x26D608E60](0xD000000000000044, 0x8000000267F13A30);
    sub_267EF9C58();
    sub_267C266B0();
    v11 = swift_allocError();
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v13[0] = v11;
    v14 = 1;
    a2(v13);
    return sub_267B9FF34(v13, &unk_28022A480, &unk_267F029F0);
  }
}

uint64_t sub_267C6D014(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4)
{
  v26 = a4;
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_267EF4CC8();
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_267EF4228();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v24 - v16);
  sub_267C6D464(a1, &v24 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v28 = *v17;
    v18 = v28;
    v31 = 1;
    v19 = v28;
    v27(&v28);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v20 = sub_267EF4158();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v20);
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_267EF3F98();
    sub_267B9FF34(&v28, &unk_28022CF80, &unk_267EFED50);
    sub_267B9FF34(v7, &unk_28022AE40, &unk_267EFCB60);
    *(&v29 + 1) = v8;
    v30 = MEMORY[0x277D5C1D8];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v28);
    v22 = v25;
    (*(v25 + 16))(boxed_opaque_existential_0, v10, v8);
    v31 = 0;
    v27(&v28);
    (*(v22 + 8))(v10, v8);
    (*(v12 + 8))(v14, v11);
  }

  return sub_267B9FF34(&v28, &unk_28022A480, &unk_267F029F0);
}

void *sub_267C6D388()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  return v0;
}

uint64_t sub_267C6D3B8()
{
  sub_267C6D388();

  return swift_deallocClassInstance();
}

uint64_t sub_267C6D464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_267C6D4D4()
{
  result = qword_2802299E0;
  if (!qword_2802299E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802299E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UnsupportedWithLowQualityVoiceOnWatchStrategy.UnsupportedReason(_BYTE *result, int a2, int a3)
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

unint64_t sub_267C6D5D8()
{
  result = qword_2802299E8;
  if (!qword_2802299E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802299E8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_267C6D640(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_267C6D680(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_267C6D6D0()
{
  OUTLINED_FUNCTION_48_0();
  v47 = v0;
  v48 = v1;
  v45 = v2;
  v4 = v3;
  v6 = v5;
  v46 = v7;
  type metadata accessor for ComponentReadingRecord(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v11 = v10 - v9;
  v12 = *(v4 + 104);
  v13 = *(v4 + 112);
  *v11 = v12;
  *(v11 + 8) = v13;
  v14 = v6[4];
  v49 = v6;
  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v15 = *(v14 + 16);

  v16 = OUTLINED_FUNCTION_54_0();
  v17 = v15(v16);

  v18 = sub_267C705A8(v17);
  v19 = 0;
  v50 = MEMORY[0x277D84F90];
  while (v18 != v19)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x26D609870](v19, v17);
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    v23 = [v20 sender];
    if (v23)
    {
      v24 = v23;
      v44 = sub_267DE9B04();
      v26 = v25;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267BF4EE8();
        v50 = v29;
      }

      v27 = *(v50 + 16);
      if (v27 >= *(v50 + 24) >> 1)
      {
        sub_267BF4EE8();
        v50 = v30;
      }

      *(v50 + 16) = v27 + 1;
      v28 = v50 + 16 * v27;
      *(v28 + 32) = v44;
      *(v28 + 40) = v26;
      v19 = v22;
    }

    else
    {

      ++v19;
    }
  }

  *(v11 + 48) = v50;
  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  *(v11 + 56) = sub_267EF9E58();
  *(v11 + 64) = v31;
  __swift_project_boxed_opaque_existential_0(v48, v48[3]);
  OUTLINED_FUNCTION_54_0();
  *(v11 + 16) = sub_267EF4258();
  *(v11 + 24) = v32;
  *(v11 + 89) = sub_267BF4920();
  if (v45)
  {

    v33 = 0xE600000000000000;
    v34 = 0x6E656B6F7073;
  }

  else
  {
    v33 = 0xE700000000000000;
    v34 = 0x746C7561666564;
  }

  *(v11 + 32) = v34;
  *(v11 + 40) = v33;
  sub_267EF2CB8();

  sub_267B9AFEC(v6, v54);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if (OUTLINED_FUNCTION_58_2(v35, v36, v37, &type metadata for GenericCountableComponent))
  {
    v38 = v51;
  }

  else
  {
    v38 = 18;
  }

  *(v11 + 72) = v38;
  v39 = sub_267B9AFEC(v49, v54);
  v42 = OUTLINED_FUNCTION_58_2(v39, v40, v41, &type metadata for GenericCountableComponent);
  if (v42)
  {
    v43 = v52;
  }

  else
  {
    v43 = 0;
  }

  *(v11 + 80) = v43;
  *(v11 + 88) = v42 ^ 1;
  *(v11 + 90) = v47 & 1;
  sub_267C721A8(v11, v46);
  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C6DA84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x8000000267F13B50 == a2;
  if (v3 || (sub_267EF9EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000267F13B70 == a2;
    if (v6 || (sub_267EF9EA8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4D676E6964616572 && a2 == 0xEB0000000065646FLL;
      if (v7 || (sub_267EF9EA8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x737265646E6573 && a2 == 0xE700000000000000;
        if (v8 || (sub_267EF9EA8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E656E6F706D6F63 && a2 == 0xED00006570795474;
          if (v9 || (sub_267EF9EA8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x8000000267F13B90 == a2;
            if (v10 || (sub_267EF9EA8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x8000000267F13BB0 == a2;
              if (v11 || (sub_267EF9EA8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x8000000267F13BD0 == a2;
                if (v12 || (sub_267EF9EA8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x8000000267F13BF0 == a2;
                  if (v13 || (sub_267EF9EA8() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_267EF9EA8();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_267C6DDA8(char a1)
{
  result = 0x4D676E6964616572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0x737265646E6573;
      break;
    case 4:
      result = 0x6E656E6F706D6F63;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x6D617473656D6974;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t sub_267C6DF00(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229C68, &qword_267EFF1E8);
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267C74614();
  sub_267EFA088();
  LOBYTE(v15) = 0;
  OUTLINED_FUNCTION_30_7();
  sub_267EF9DC8();
  if (!v2)
  {
    OUTLINED_FUNCTION_11_12(1);
    sub_267EF9DC8();
    OUTLINED_FUNCTION_11_12(2);
    sub_267EF9E08();
    v15 = *(v3 + 48);
    HIBYTE(v14) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
    sub_267C746BC(&qword_280229C70, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_30_7();
    sub_267EF9E28();
    OUTLINED_FUNCTION_11_12(4);
    sub_267EF9E08();
    LOBYTE(v15) = *(v3 + 72);
    HIBYTE(v14) = 5;
    sub_267C74728();
    OUTLINED_FUNCTION_30_7();
    sub_267EF9DF8();
    OUTLINED_FUNCTION_11_12(6);
    sub_267EF9DE8();
    LOBYTE(v15) = 7;
    OUTLINED_FUNCTION_30_7();
    sub_267EF9E18();
    LOBYTE(v15) = 8;
    OUTLINED_FUNCTION_30_7();
    sub_267EF9E18();
    type metadata accessor for ComponentReadingRecord(0);
    LOBYTE(v15) = 9;
    sub_267EF2CC8();
    OUTLINED_FUNCTION_27_5();
    sub_267C7477C(v11, v12, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_30_7();
    sub_267EF9E28();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_267C6E1F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_267EF2CC8();
  OUTLINED_FUNCTION_58();
  v34 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229C40, &qword_267EFF1E0);
  OUTLINED_FUNCTION_58();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for ComponentReadingRecord(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  v38 = a1;
  v39 = (v18 - v17);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267C74614();
  v36 = v14;
  sub_267EFA078();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v38);
  }

  v31 = v9;
  v32 = v4;
  v19 = v11;
  LOBYTE(v41) = 0;
  v20 = sub_267EF9D58();
  v21 = v39;
  *v39 = v20;
  v21[1] = v22;
  v33 = v22;
  OUTLINED_FUNCTION_8_11(1);
  v21[2] = sub_267EF9D58();
  v21[3] = v23;
  OUTLINED_FUNCTION_8_11(2);
  v21[4] = sub_267EF9D98();
  v21[5] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  v40 = 3;
  sub_267C746BC(&qword_280229C50, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_267EF9DB8();
  v21[6] = v41;
  OUTLINED_FUNCTION_8_11(4);
  v21[7] = sub_267EF9D98();
  v21[8] = v25;
  v40 = 5;
  sub_267C74668();
  sub_267EF9D88();
  *(v21 + 72) = v41;
  OUTLINED_FUNCTION_8_11(6);
  v21[10] = sub_267EF9D78();
  *(v21 + 88) = v26 & 1;
  OUTLINED_FUNCTION_8_11(7);
  *(v21 + 89) = sub_267EF9DA8() & 1;
  OUTLINED_FUNCTION_8_11(8);
  *(v21 + 90) = sub_267EF9DA8() & 1;
  LOBYTE(v41) = 9;
  OUTLINED_FUNCTION_27_5();
  sub_267C7477C(v27, v28, MEMORY[0x277CC95A0]);
  sub_267EF9DB8();
  (*(v19 + 8))(v36, v37);
  v29 = v39;
  (*(v34 + 32))(v39 + *(v15 + 52), v31, v32);
  sub_267C720E8(v29, v35);
  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  return sub_267C7214C(v29);
}

uint64_t sub_267C6E76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267C6DA84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267C6E7B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267C6DDA0();
  *a1 = result;
  return result;
}

uint64_t sub_267C6E7DC(uint64_t a1)
{
  v2 = sub_267C74614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267C6E818(uint64_t a1)
{
  v2 = sub_267C74614();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_267C6E884()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v64 = v4;
  v65 = v5;
  v63 = v6;
  v8 = v7;
  v10 = v9;
  v11 = sub_267EF9078();
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_0_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A18, &qword_267EFEE90);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v62 - v16;

  v18 = sub_267C6F164(9uLL, v10);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if ((v23 & 1) == 0)
  {
    goto LABEL_2;
  }

  v62 = v8;
  v8 = v14;
  v3 = v1;
  sub_267EF9ED8();
  swift_unknownObjectRetain_n();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x277D84F90];
  }

  v1 = *(v27 + 16);

  if (__OFSUB__(v24 >> 1, v22))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v1 != ((v24 >> 1) - v22))
  {
LABEL_29:
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_53_4();
LABEL_2:
    sub_267C73C10(v18, v20, v22, v24);
    v26 = v25;
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v26 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_53_4();
  if (!v26)
  {
    v26 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

LABEL_10:
  sub_267C720E8(v8, v17);
  v28 = *(v26 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = v26;
  if (!isUniquelyReferenced_nonNull_native || v28 >= *(v26 + 24) >> 1)
  {
    if (*(v26 + 16) <= v28 + 1)
    {
      v30 = v28 + 1;
    }

    else
    {
      v30 = *(v26 + 16);
    }

    v26 = sub_267C71654(isUniquelyReferenced_nonNull_native, v30, 1, v26);
    v72 = v26;
  }

  sub_267C732B8(0, 0, 1, v17);
  v72 = v26;
  sub_267EF2678();
  swift_allocObject();
  sub_267EF2668();
  v66 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299F8, &unk_267EFEE78);
  sub_267C73D14(&qword_280229A20, &qword_280229A28, &unk_267EFF190, MEMORY[0x277D83948]);
  v31 = sub_267EF2658();
  v33 = v32;

  sub_267EF9068();
  sub_267EF9048();
  v35 = v34;
  sub_267BBE0DC(v31, v33);
  if (v35)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v36 = sub_267EF8A08();
    __swift_project_value_buffer(v36, qword_280240FB0);
    v37 = sub_267EF89F8();
    v38 = sub_267EF95D8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_267B93000, v37, v38, "#ComponentReadingHistory writing data to knowledge store", v39, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v40 = sub_267EF8FF8();

    v66 = &type metadata for ComponentReadingHistory;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299F0, &unk_267EFEE68);
    v41 = sub_267EF9098();
    v43 = v42;
    v66 = v63;
    v67 = v64;

    MEMORY[0x26D608E60](v41, v43);

    v44 = sub_267EF8FF8();

    v45 = swift_allocObject();
    *(v45 + 16) = v3;
    *(v45 + 24) = v1;
    v70 = sub_267C73E04;
    v71 = v45;
    v66 = MEMORY[0x277D85DD0];
    v67 = 1107296256;
    v68 = sub_267C6F524;
    v69 = &block_descriptor_9;
    v46 = _Block_copy(&v66);

    OUTLINED_FUNCTION_46_5();
    [v47 v48];
    _Block_release(v46);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v49 = sub_267EF8A08();
    __swift_project_value_buffer(v49, qword_280240FB0);
    v50 = sub_267EF89F8();
    v51 = sub_267EF95E8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v66 = v53;
      *v52 = 136315138;
      v54 = type metadata accessor for ComponentReadingRecord(0);

      v56 = MEMORY[0x26D608FD0](v55, v54);
      v57 = v3;
      v59 = v58;

      v60 = sub_267BA33E8(v56, v59, &v66);
      v3 = v57;

      *(v52 + 4) = v60;
      _os_log_impl(&dword_267B93000, v50, v51, "#ComponentReadingHistory Unable to convert records data to String. Records: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267C73DB0();
    v61 = swift_allocError();
    v3();
  }

  OUTLINED_FUNCTION_47();
}

unint64_t sub_267C6F01C(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v14 = sub_267EF9CC8();

    return v14;
  }

  v8 = sub_267C705A8(a2);
  v9 = sub_267C74154(0, a1, v8);
  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  if (v11 < 0)
  {
    goto LABEL_16;
  }

  sub_267C72F48(0, a2);
  sub_267C72F48(v11, a2);
  if ((a2 & 0xC000000000000001) != 0 && v11)
  {
    sub_267BA9F38(0, a3, a4);

    v12 = 0;
    do
    {
      v13 = v12 + 1;
      sub_267EF9B98();
      v12 = v13;
    }

    while (v11 != v13);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

unint64_t sub_267C6F164(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_267C74154(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_267C704DC(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_267C6F1F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_46_5();
    sub_267EF9168();
    v3 = sub_267EF9278();

    return v3;
  }

  return result;
}

void sub_267C6F2B0(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    v4 = a1;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v5 = sub_267EF8A08();
    __swift_project_value_buffer(v5, qword_280240FB0);
    v6 = a1;
    v7 = sub_267EF89F8();
    v8 = sub_267EF95E8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_267B93000, v7, v8, "#ComponentReadingHistory failed to write data to knowledge store: %@", v9, 0xCu);
      sub_267B9F98C(v10, &unk_280229E30, &unk_267EFC270);
      MEMORY[0x26D60A7B0](v10, -1, -1);
      MEMORY[0x26D60A7B0](v9, -1, -1);
    }

    v13 = a1;
    a2(a1);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v14 = sub_267EF8A08();
    __swift_project_value_buffer(v14, qword_280240FB0);
    v15 = sub_267EF89F8();
    v16 = sub_267EF95D8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_267B93000, v15, v16, "#ComponentReadingHistory finished writing data to knowledge store", v17, 2u);
      MEMORY[0x26D60A7B0](v17, -1, -1);
    }

    a2(0);
  }
}

void sub_267C6F524(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_267C6F590(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 < 0.0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_267BA33E8(0xD00000000000003ALL, 0x8000000267F13AA0, &v18);
      _os_log_impl(&dword_267B93000, v14, v15, "Fatal error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    result = sub_267EF9C98();
    __break(1u);
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    *(v6 + 32) = a3;

    OUTLINED_FUNCTION_46_5();
    sub_267C6FA20(v7, v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_267C6F770(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, double a4)
{
  v27[1] = a3;
  v28 = a2;
  v32 = sub_267EF2CC8();
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ComponentReadingRecord(0);
  v9 = *(v31 - 8);
  v10 = MEMORY[0x28223BE20](v31);
  v29 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - v12;
  v14 = 0;
  v30 = a1;
  v15 = *(a1 + 16);
  v16 = (v6 + 8);
  v17 = MEMORY[0x277D84F90];
  while (v15 != v14)
  {
    v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v19 = *(v9 + 72);
    sub_267C720E8(v30 + v18 + v19 * v14, v13);
    sub_267EF2CB8();
    sub_267EF2C38();
    v21 = v20;
    (*v16)(v8, v32);
    if (v21 <= a4)
    {
      sub_267C721A8(v13, v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_267C72494(0, *(v17 + 16) + 1, 1);
        v17 = v33;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v27[0] = v24 + 1;
        sub_267C72494(v23 > 1, v24 + 1, 1);
        v25 = v27[0];
        v17 = v33;
      }

      ++v14;
      *(v17 + 16) = v25;
      sub_267C721A8(v29, v17 + v18 + v24 * v19);
    }

    else
    {
      sub_267C7214C(v13);
      ++v14;
    }
  }

  v28(v17);
}

void sub_267C6FA20(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4, void *a5)
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);
  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_267B93000, v9, v10, "#ComponentReadingHistory reading data from knowledge store", v11, 2u);
    MEMORY[0x26D60A7B0](v11, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299F0, &unk_267EFEE68);
  v12 = sub_267EF9098();
  v14 = v13;

  MEMORY[0x26D608E60](v12, v14);

  v15 = sub_267EF8FF8();

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v18[4] = sub_267C71FB0;
  v18[5] = v16;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_267C70424;
  v18[3] = &block_descriptor_4;
  v17 = _Block_copy(v18);

  [a5 valueForKey:v15 completionHandler:v17];
  _Block_release(v17);
}

void sub_267C6FC48(void *a1, uint64_t a2, void (*a3)(void))
{
  v6 = sub_267EF9078();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v11 = sub_267EF8A08();
    __swift_project_value_buffer(v11, qword_280240FB0);
    v12 = a1;
    v13 = sub_267EF89F8();
    v14 = sub_267EF95E8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_267B93000, v13, v14, "#ComponentReadingHistory failed to read data from knowledge store: %@", v15, 0xCu);
      sub_267B9F98C(v16, &unk_280229E30, &unk_267EFC270);
      MEMORY[0x26D60A7B0](v16, -1, -1);
      MEMORY[0x26D60A7B0](v15, -1, -1);
    }

    a3(MEMORY[0x277D84F90]);

    return;
  }

  sub_267C71FB8(a2, v38);
  if (v38[3])
  {
    if (swift_dynamicCast())
    {
      sub_267EF9068();
      v19 = sub_267EF9038();
      v21 = v20;

      (*(v7 + 8))(v9, v6);
      if (v21 >> 60 != 15)
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v22 = sub_267EF8A08();
        __swift_project_value_buffer(v22, qword_280240FB0);
        v23 = sub_267EF89F8();
        v24 = sub_267EF95D8();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_267B93000, v23, v24, "#ComponentReadingHistory finished reading data from knowledge store", v25, 2u);
          MEMORY[0x26D60A7B0](v25, -1, -1);
        }

        sub_267EF2648();
        swift_allocObject();
        sub_267EF2638();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299F8, &unk_267EFEE78);
        sub_267C73D14(&qword_280229A00, &qword_280229A08, &unk_267EFF1B8, MEMORY[0x277D83978]);
        sub_267EF2628();

        a3(v38[0]);
        sub_267BBE0C8(v19, v21);

        return;
      }
    }
  }

  else
  {
    sub_267B9F98C(v38, &qword_28022AEF0, &qword_267EFCDE0);
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v26 = sub_267EF8A08();
  __swift_project_value_buffer(v26, qword_280240FB0);
  sub_267C71FB8(a2, v38);
  v27 = sub_267EF89F8();
  v28 = sub_267EF95D8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v30;
    *v29 = 136315138;
    sub_267C71FB8(v38, &v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEF0, &qword_267EFCDE0);
    v31 = sub_267EF9098();
    v33 = v32;
    sub_267B9F98C(v38, &qword_28022AEF0, &qword_267EFCDE0);
    v34 = sub_267BA33E8(v31, v33, &v37);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_267B93000, v27, v28, "#ComponentReadingHistory Found no entries or unable to convert result to String or data, assuming store is empty. Result %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x26D60A7B0](v30, -1, -1);
    MEMORY[0x26D60A7B0](v29, -1, -1);
  }

  else
  {

    sub_267B9F98C(v38, &qword_28022AEF0, &qword_267EFCDE0);
  }

  a3(MEMORY[0x277D84F90]);
}

uint64_t sub_267C70424(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a3;
    sub_267BA7F4C(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v6 = a2;
  swift_unknownObjectRetain();
  v5(a2, v10);

  return sub_267B9F98C(v10, &qword_28022AEF0, &qword_267EFCDE0);
}

unint64_t sub_267C704DC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for ComponentReadingRecord(0);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_267C70584(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_267C705A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_267EF9A68();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_267C70644()
{
  OUTLINED_FUNCTION_26_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_21();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_18_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_10_14();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A60, &qword_267EFEED8);
    v8 = OUTLINED_FUNCTION_37_3(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_7_14();
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
      memmove(v8 + 4, v0 + 4, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    OUTLINED_FUNCTION_40_4(v11);
  }
}

void sub_267C70768()
{
  OUTLINED_FUNCTION_26_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_21();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_18_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_10_14();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B30, &unk_267EFEFD0);
    v8 = OUTLINED_FUNCTION_52_2(v7);
    OUTLINED_FUNCTION_16_7(v8);
    OUTLINED_FUNCTION_47_4(v9);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_42_5();
  if (v1)
  {
    if (v3 != v0 || &v11[120 * v2] <= v10)
    {
      memmove(v10, v11, 120 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_267C70850()
{
  OUTLINED_FUNCTION_26_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_21();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_18_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_35_7();
  if (v2)
  {
    v13 = OUTLINED_FUNCTION_50_6(v7, v8, v9, v10, v11, v12);
    v14 = OUTLINED_FUNCTION_37_3(v13);
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_7_14();
    v14[2] = v3;
    v14[3] = v15;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = OUTLINED_FUNCTION_55_3();
  if (v1)
  {
    if (v14 != v0 || &v17[16 * v3] <= v16)
    {
      memmove(v16, v17, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v16, v17, 16 * v3);
  }
}

void sub_267C70908()
{
  OUTLINED_FUNCTION_5_18();
  if (v4)
  {
    OUTLINED_FUNCTION_4_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_23_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_39_5(v2, v5, &qword_28022AF30, &qword_267EFF048);
  OUTLINED_FUNCTION_22_8();
  sub_267EF6288();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_20_4();
  if (v1)
  {
    OUTLINED_FUNCTION_17_7(v8, MEMORY[0x277D5EF80]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }
}

void sub_267C709E0()
{
  OUTLINED_FUNCTION_5_18();
  if (v4)
  {
    OUTLINED_FUNCTION_4_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_23_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_39_5(v2, v5, &qword_280229BA0, &qword_267EFF050);
  OUTLINED_FUNCTION_22_8();
  sub_267EF5518();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_20_4();
  if (v1)
  {
    OUTLINED_FUNCTION_17_7(v8, MEMORY[0x277D5E388]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }
}

void sub_267C70B00()
{
  OUTLINED_FUNCTION_5_18();
  if (v4)
  {
    OUTLINED_FUNCTION_4_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_23_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_39_5(v2, v5, &qword_280229B98, &qword_267EFF040);
  OUTLINED_FUNCTION_22_8();
  sub_267EF2CC8();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_20_4();
  if (v1)
  {
    OUTLINED_FUNCTION_17_7(v8, MEMORY[0x277CC9578]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }
}

void sub_267C70BD8()
{
  OUTLINED_FUNCTION_5_18();
  if (v4)
  {
    OUTLINED_FUNCTION_4_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_23_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_39_5(v2, v5, &qword_280229BB8, &qword_267EFF060);
  OUTLINED_FUNCTION_22_8();
  sub_267EF2BA8();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_20_4();
  if (v1)
  {
    OUTLINED_FUNCTION_17_7(v8, MEMORY[0x277CC9260]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }
}

void sub_267C70CB0()
{
  OUTLINED_FUNCTION_5_18();
  if (v4)
  {
    OUTLINED_FUNCTION_4_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_23_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_39_5(v2, v5, &qword_280229A80, &qword_267F00430);
  OUTLINED_FUNCTION_22_8();
  sub_267EF8AE8();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_20_4();
  if (v1)
  {
    OUTLINED_FUNCTION_17_7(v8, MEMORY[0x277D5FEB0]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }
}

void sub_267C70D88()
{
  OUTLINED_FUNCTION_26_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_21();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_18_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_10_14();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CB0, &qword_267EFF218);
    v8 = OUTLINED_FUNCTION_37_3(v7);
    OUTLINED_FUNCTION_16_7(v8);
    OUTLINED_FUNCTION_13_10(v9);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_42_5();
  if (v1)
  {
    if (v3 != v0 || &v11[32 * v2] <= v10)
    {
      memmove(v10, v11, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_267C70E54()
{
  OUTLINED_FUNCTION_26_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_21();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_18_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_10_14();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229C98, &qword_267EFF200);
    v8 = OUTLINED_FUNCTION_52_2(v7);
    OUTLINED_FUNCTION_16_7(v8);
    OUTLINED_FUNCTION_47_4(v9);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_42_5();
  if (v1)
  {
    if (v3 != v0 || &v11[56 * v2] <= v10)
    {
      memmove(v10, v11, 56 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_267C70F4C()
{
  OUTLINED_FUNCTION_26_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_21();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_18_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_35_7();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B68, &qword_267EFF010);
    v8 = OUTLINED_FUNCTION_37_3(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_14_14();
    v8[2] = v3;
    v8[3] = 2 * v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_55_3();
  if (v1)
  {
    if (v8 != v0 || &v11[8 * v3] <= v10)
    {
      memmove(v10, v11, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, 8 * v3);
  }
}

void sub_267C7103C()
{
  OUTLINED_FUNCTION_5_18();
  if (v4)
  {
    OUTLINED_FUNCTION_4_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_23_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_39_5(v2, v5, &qword_280229AB0, &qword_267EFEF38);
  OUTLINED_FUNCTION_22_8();
  sub_267EF3D18();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_20_4();
  if (v1)
  {
    OUTLINED_FUNCTION_17_7(v8, MEMORY[0x277D5BAF8]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }
}

void sub_267C71114()
{
  OUTLINED_FUNCTION_5_18();
  if (v4)
  {
    OUTLINED_FUNCTION_4_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_23_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_39_5(v2, v5, &qword_280229AE8, &qword_267EFEF78);
  OUTLINED_FUNCTION_22_8();
  sub_267EF3E38();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_20_4();
  if (v1)
  {
    OUTLINED_FUNCTION_17_7(v8, MEMORY[0x277D5BCB0]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }
}

void sub_267C711EC()
{
  OUTLINED_FUNCTION_5_18();
  if (v4)
  {
    OUTLINED_FUNCTION_4_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_23_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_39_5(v2, v5, &qword_280229B00, &unk_267EFEF90);
  OUTLINED_FUNCTION_22_8();
  sub_267EF6A08();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_20_4();
  if (v1)
  {
    OUTLINED_FUNCTION_17_7(v8, MEMORY[0x277D55FF8]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }
}

void sub_267C712C4()
{
  OUTLINED_FUNCTION_5_18();
  if (v4)
  {
    OUTLINED_FUNCTION_4_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_23_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_39_5(v2, v5, &qword_280229A88, &qword_267EFEF10);
  OUTLINED_FUNCTION_22_8();
  sub_267EF4C08();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_20_4();
  if (v1)
  {
    OUTLINED_FUNCTION_17_7(v8, MEMORY[0x277D5C170]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }
}

void sub_267C7139C()
{
  OUTLINED_FUNCTION_5_18();
  if (v4)
  {
    OUTLINED_FUNCTION_4_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_23_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_39_5(v2, v5, &qword_280229BE8, &unk_267EFF090);
  OUTLINED_FUNCTION_22_8();
  sub_267EF59A8();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_20_4();
  if (v1)
  {
    OUTLINED_FUNCTION_17_7(v8, MEMORY[0x277D5E668]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }
}

void sub_267C71498()
{
  OUTLINED_FUNCTION_26_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_21();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_18_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_10_14();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229AD0, &qword_267EFEF60);
    v8 = OUTLINED_FUNCTION_37_3(v7);
    OUTLINED_FUNCTION_16_7(v8);
    OUTLINED_FUNCTION_13_10(v9);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_42_5();
  if (v1)
  {
    if (v3 != v0 || &v11[32 * v2] <= v10)
    {
      memmove(v10, v11, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_267C71568()
{
  OUTLINED_FUNCTION_26_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_21();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_18_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_10_14();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B10, &qword_267EFEFB0);
    v8 = OUTLINED_FUNCTION_37_3(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_7_14();
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
      memmove(v8 + 4, v0 + 4, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B18, &qword_267EFEFB8);
    OUTLINED_FUNCTION_40_4(v11);
  }
}

void *sub_267C71654(void *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_267BCDA64(v9, a2, &qword_280229A10, &qword_267EFEE88, type metadata accessor for ComponentReadingRecord);
  v11 = *(type metadata accessor for ComponentReadingRecord(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_267BCD994(a4 + v12, v9, v10 + v12, type metadata accessor for ComponentReadingRecord);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_267C71778()
{
  OUTLINED_FUNCTION_5_18();
  if (v4)
  {
    OUTLINED_FUNCTION_4_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_23_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_39_5(v2, v5, &qword_280229BD0, &qword_267EFF078);
  OUTLINED_FUNCTION_22_8();
  sub_267EF8D48();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_20_4();
  if (v1)
  {
    OUTLINED_FUNCTION_17_7(v8, MEMORY[0x277D72A78]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }
}

void sub_267C71850()
{
  OUTLINED_FUNCTION_26_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_21();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_18_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_35_7();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229C00, &qword_267EFF0A8);
    v8 = OUTLINED_FUNCTION_37_3(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_14_14();
    v8[2] = v3;
    v8[3] = 2 * v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_55_3();
  if (v1)
  {
    if (v8 != v0 || &v11[8 * v3] <= v10)
    {
      memmove(v10, v11, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, 8 * v3);
  }
}

void sub_267C7191C()
{
  OUTLINED_FUNCTION_26_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_21();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_18_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_10_14();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A90, &qword_267EFEF18);
    v8 = OUTLINED_FUNCTION_52_2(v7);
    OUTLINED_FUNCTION_16_7(v8);
    OUTLINED_FUNCTION_47_4(v9);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 48 * v2 <= (v3 + 32))
    {
      memmove((v3 + 32), (v0 + 32), 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A98, &qword_267EFEF20);
    OUTLINED_FUNCTION_40_4(v11);
  }
}

void sub_267C71A08()
{
  OUTLINED_FUNCTION_5_18();
  if (v4)
  {
    OUTLINED_FUNCTION_4_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_23_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_39_5(v2, v5, &qword_280229BD8, &qword_267EFF080);
  OUTLINED_FUNCTION_22_8();
  sub_267EF4378();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_20_4();
  if (v1)
  {
    OUTLINED_FUNCTION_17_7(v8, MEMORY[0x277D5BDD8]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }
}

void sub_267C71AE0()
{
  OUTLINED_FUNCTION_5_18();
  if (v4)
  {
    OUTLINED_FUNCTION_4_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_23_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_39_5(v2, v5, &qword_280229BC0, &qword_267EFF068);
  OUTLINED_FUNCTION_22_8();
  sub_267EF39C8();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_20_4();
  if (v1)
  {
    OUTLINED_FUNCTION_17_7(v8, MEMORY[0x277D5B998]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }
}

void *sub_267C71BB8(void *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_267BCDA64(v9, a2, &qword_280229218, &unk_267EFCBA0, MEMORY[0x277D5B800]);
  v11 = *(sub_267EF3488() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_267BCD994(a4 + v12, v9, v10 + v12, MEMORY[0x277D5B800]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_267C71CDC()
{
  OUTLINED_FUNCTION_26_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_21();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_18_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_35_7();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229AF8, &qword_267EFEF88);
    v8 = OUTLINED_FUNCTION_37_3(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    v8[2] = v3;
    v8[3] = 2 * ((v9 - 32) / 4);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_55_3();
  if (v1)
  {
    if (v8 != v0 || &v11[4 * v3] <= v10)
    {
      memmove(v10, v11, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, 4 * v3);
  }
}

void sub_267C71DB0()
{
  OUTLINED_FUNCTION_5_18();
  if (v4)
  {
    OUTLINED_FUNCTION_4_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_23_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_39_5(v2, v5, &qword_280229B78, &qword_267EFF020);
  OUTLINED_FUNCTION_22_8();
  sub_267EF56E8();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_20_4();
  if (v1)
  {
    OUTLINED_FUNCTION_17_7(v8, MEMORY[0x277D5E460]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }
}

void *sub_267C71EAC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v5 = OUTLINED_FUNCTION_37_3(v4);
  _swift_stdlib_malloc_size(v5);
  OUTLINED_FUNCTION_7_14();
  v5[2] = a1;
  v5[3] = v6;
  return v5;
}

void *sub_267C71F14(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v5 = OUTLINED_FUNCTION_37_3(v4);
  _swift_stdlib_malloc_size(v5);
  OUTLINED_FUNCTION_14_14();
  v5[2] = a1;
  v5[3] = (2 * v6) | 1;
  return v5;
}

char *sub_267C71F84(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_29_5(a3, result);
  }

  return result;
}

uint64_t sub_267C71FB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEF0, &qword_267EFCDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ComponentReadingRecord(uint64_t a1)
{
  result = qword_280229C08;
  if (!qword_280229C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267C72074(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_267C720E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentReadingRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C7214C(uint64_t a1)
{
  v2 = type metadata accessor for ComponentReadingRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267C721A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentReadingRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_267C72264(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_267C7286C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_267C72434(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_267C72BCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_267C7252C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_267C72CD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_267C7279C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_267C72E10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_267C7286C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229AF8, &qword_267EFEF88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

void sub_267C7296C()
{
  OUTLINED_FUNCTION_48_0();
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_2_21();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_18_10();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  else
  {
    v12 = v1;
  }

  v15 = *(v10 + 16);
  if (v12 <= v15)
  {
    v16 = *(v10 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_50_6(v0, v1, v2, v3, v4, v5);
  v17 = *(v9(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_41_5((v21 - v19) / v18);
LABEL_18:
  v9(0);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_20_4();
  if (v11)
  {
    sub_267BCD994(v10 + v23, v15, v20 + v23, v7);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_47();
}

void sub_267C72AFC()
{
  OUTLINED_FUNCTION_59_5();
  OUTLINED_FUNCTION_12_8();
  if (v6)
  {
    OUTLINED_FUNCTION_2_21();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_18_10();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_24_4();
  if (v3)
  {
    v15 = OUTLINED_FUNCTION_50_6(v9, v10, v11, v12, v13, v14);
    v16 = OUTLINED_FUNCTION_37_3(v15);
    v17 = _swift_stdlib_malloc_size(v16);
    OUTLINED_FUNCTION_41_5((v17 - 32) / 32);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_48_5();
  if (v1)
  {
    if (v16 != v0 || v5 + 32 * v2 <= v4)
    {
      v19 = OUTLINED_FUNCTION_68_0();
      memmove(v19, v20, v21);
    }

    v0[2] = 0;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_19();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    OUTLINED_FUNCTION_25_9(v24);
  }

  OUTLINED_FUNCTION_60_2();
}

char *sub_267C72BCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229AD0, &qword_267EFEF60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_267C72CD8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A90, &qword_267EFEF18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A98, &qword_267EFEF20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_267C72E10(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A78, &qword_267EFEEF8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BDF0, &unk_267EFEF00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_267C72F48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_267EF9A68();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_267C72FA0()
{
  OUTLINED_FUNCTION_48_0();
  v5 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = *v0;
  v10 = v9 + 32 + 40 * v1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  OUTLINED_FUNCTION_57_4(v11);
  v12 = __OFSUB__(v7, v5);
  v13 = v7 - v5;
  if (v12)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = *(v9 + 16);
  v15 = v14 - v8;
  if (__OFSUB__(v14, v8))
  {
    goto LABEL_20;
  }

  v16 = (v10 + 40 * v7);
  v17 = (v9 + 32 + 40 * v8);
  if (v16 != v17 || &v17[40 * v15] <= v16)
  {
    memmove(v16, v17, 40 * v15);
    v14 = *(v9 + 16);
  }

  v12 = __OFADD__(v14, v13);
  v19 = v14 + v13;
  if (v12)
  {
    goto LABEL_21;
  }

  *(v9 + 16) = v19;
LABEL_12:
  if (v7 >= 1)
  {
    if (*(v6 + 16) == v7)
    {
      swift_arrayInitWithCopy();
      goto LABEL_15;
    }

LABEL_22:
    __break(1u);
    return;
  }

LABEL_15:
  OUTLINED_FUNCTION_47();
}

void sub_267C730A8()
{
  OUTLINED_FUNCTION_48_0();
  v5 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = *v0;
  v10 = *v0 + 32;
  v11 = v10 + 40 * v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B88, &qword_267EFF030);
  swift_arrayDestroy();
  v12 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v11 + 40 * v7;
  if (!v12)
  {
LABEL_12:
    if (v7 < 1)
    {
LABEL_16:
      sub_267B9F98C(v6, &qword_280229B90, &qword_267EFF038);
      OUTLINED_FUNCTION_47();
      return;
    }

    v20 = 0;
    while ((v20 & 1) == 0)
    {
      sub_267B9AFEC(v6, v11);
      v11 += 40;
      v20 = 1;
      if (v11 >= v13)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_20;
  }

  v14 = *(v9 + 16);
  v15 = v14 - v8;
  if (!__OFSUB__(v14, v8))
  {
    v16 = (v10 + 40 * v8);
    if (v13 != v16 || v16 + 40 * v15 <= v13)
    {
      memmove((v11 + 40 * v7), v16, 40 * v15);
      v14 = *(v9 + 16);
    }

    v18 = __OFADD__(v14, v12);
    v19 = v14 + v12;
    if (v18)
    {
      goto LABEL_21;
    }

    *(v9 + 16) = v19;
    goto LABEL_12;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_267C731C8()
{
  OUTLINED_FUNCTION_59_5();
  v9 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_20;
  }

  v0 = v8;
  v3 = v7;
  v10 = *v1;
  v1 = (*v1 & 0xFFFFFFFFFFFFFF8);
  v4 = v1 + 4;
  v2 = &v1[v6 + 4];
  sub_267EF3928();
  OUTLINED_FUNCTION_54_0();
  swift_arrayDestroy();
  v11 = __OFSUB__(v0, v9);
  v9 = v0 - v9;
  if (v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v5 = v10 >> 62;
  if (!(v10 >> 62))
  {
    v12 = v1[2];
    goto LABEL_6;
  }

LABEL_21:
  v12 = sub_267EF9A68();
LABEL_6:
  v13 = v12 - v3;
  if (__OFSUB__(v12, v3))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v2 + 8 * v0);
  v15 = &v4[v3];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v5)
  {
    v17 = sub_267EF9A68();
  }

  else
  {
    v17 = v1[2];
  }

  if (__OFADD__(v17, v9))
  {
    goto LABEL_23;
  }

  v1[2] = v17 + v9;
LABEL_17:
  if (v0 <= 0)
  {
    OUTLINED_FUNCTION_60_2();
    return;
  }

LABEL_24:
  __break(1u);
}

void sub_267C732B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(type metadata accessor for ComponentReadingRecord(0) - 8);
  v11 = *(v10 + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v14 = v13 + v11 * a1;
  swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v14 + v11 * a3;
  if (v15)
  {
    v17 = *(v9 + 16);
    if (!__OFSUB__(v17, a2))
    {
      sub_267BCD994(v13 + v11 * a2, v17 - a2, v14 + v11 * a3, type metadata accessor for ComponentReadingRecord);
      v18 = *(v9 + 16);
      v19 = __OFADD__(v18, v15);
      v20 = v18 + v15;
      if (!v19)
      {
        *(v9 + 16) = v20;
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (a3 < 1 || v11 * a3 < 1)
  {
LABEL_14:
    sub_267B9F98C(a4, &qword_280229A18, &qword_267EFEE90);
    return;
  }

  v22 = 0;
  while ((v22 & 1) == 0)
  {
    sub_267C720E8(a4, v14);
    v14 += v11;
    v22 = 1;
    if (v14 >= v16)
    {
      goto LABEL_14;
    }
  }

LABEL_19:
  __break(1u);
}

void sub_267C73428()
{
  OUTLINED_FUNCTION_48_0();
  v11 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
    goto LABEL_27;
  }

  v0 = v10;
  v4 = v9;
  v3 = v8;
  v12 = *v1;
  v1 = (*v1 & 0xFFFFFFFFFFFFFF8);
  v5 = v1 + 4;
  v2 = &v1[v7 + 4];
  v13 = sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v14 = OUTLINED_FUNCTION_57_4(v13);
  v15 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v15)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v6 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v16 = v1[2];
    goto LABEL_6;
  }

LABEL_28:
  v16 = sub_267EF9A68();
LABEL_6:
  v17 = v16 - v3;
  if (__OFSUB__(v16, v3))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v18 = (v2 + 8 * v4);
  v19 = &v5[v3];
  if (v18 != v19 || &v19[8 * v17] <= v18)
  {
    memmove(v18, v19, 8 * v17);
  }

  if (v6)
  {
    v14 = sub_267EF9A68();
  }

  else
  {
    v14 = v1[2];
  }

  if (__OFADD__(v14, v11))
  {
    goto LABEL_30;
  }

  v1[2] = v14 + v11;
LABEL_17:
  if (v4 < 1)
  {
    OUTLINED_FUNCTION_47();

    return;
  }

  MEMORY[0x28223BE20](v14);
  if (v0 < 0 || (v0 & 0x4000000000000000) != 0)
  {
LABEL_31:
    sub_267C741E8(v0, sub_267C74308);
    goto LABEL_22;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10) == v4)
  {
    swift_arrayInitWithCopy();
LABEL_22:

    OUTLINED_FUNCTION_47();
    return;
  }

  __break(1u);
}

void sub_267C735E0()
{
  OUTLINED_FUNCTION_48_0();
  v12 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
    goto LABEL_25;
  }

  v0 = v11;
  v3 = v10;
  v4 = v9;
  v2 = v8;
  v13 = *v1;
  v6 = *v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v6 + 32;
  v5 = v6 + 32 + 8 * v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BC8, &qword_267EFF070);
  swift_arrayDestroy();
  v14 = __OFSUB__(v3, v12);
  v12 = v3 - v12;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v1 = (v5 + 8 * v3);
  if (!v12)
  {
    goto LABEL_17;
  }

  v5 = v13 >> 62;
  if (!(v13 >> 62))
  {
    v15 = *(v6 + 16);
    goto LABEL_6;
  }

LABEL_26:
  v15 = sub_267EF9A68();
LABEL_6:
  v16 = v15 - v4;
  if (__OFSUB__(v15, v4))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v17 = (v7 + 8 * v4);
  if (v1 != v17 || &v17[8 * v16] <= v1)
  {
    memmove(v1, v17, 8 * v16);
  }

  if (v5)
  {
    v19 = sub_267EF9A68();
  }

  else
  {
    v19 = *(v6 + 16);
  }

  if (__OFADD__(v19, v12))
  {
    goto LABEL_28;
  }

  *(v6 + 16) = v19 + v12;
LABEL_17:
  if (v3 < 1)
  {
    OUTLINED_FUNCTION_47();
  }

  else
  {
    v20 = v6 + 8 * v2;
    *(v20 + 32) = v0;
    if (v20 + 40 < v1)
    {

      __break(1u);
    }

    OUTLINED_FUNCTION_47();
  }
}

void sub_267C7376C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unint64_t *a5, void *a6)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = a3;
  v8 = a2;
  v21 = a4;
  v13 = *v7;
  v9 = *v7 & 0xFFFFFFFFFFFFFF8;
  v10 = v9 + 32;
  v7 = (v9 + 32 + 8 * a1);
  sub_267BA9F38(0, a5, a6);
  swift_arrayDestroy();
  v14 = __OFSUB__(v6, v12);
  v12 = v6 - v12;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v12)
  {
    goto LABEL_17;
  }

  v11 = v13 >> 62;
  if (!(v13 >> 62))
  {
    v15 = *(v9 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v15 = sub_267EF9A68();
LABEL_6:
  v16 = &v15[-v8];
  if (__OFSUB__(v15, v8))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = &v7[v6];
  v18 = (v10 + 8 * v8);
  if (v17 != v18 || &v18[8 * v16] <= v17)
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v11)
  {
    v15 = sub_267EF9A68();
  }

  else
  {
    v15 = *(v9 + 16);
  }

  if (__OFADD__(v15, v12))
  {
    goto LABEL_27;
  }

  *(v9 + 16) = &v15[v12];
LABEL_17:
  v15 = v21;
  if (v6 >= 1)
  {
    *v7 = v21;
    if (v6 == 1)
    {
      return;
    }

LABEL_28:
    v20 = v15;
    __break(1u);
    return;
  }
}

unint64_t sub_267C738B8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  OUTLINED_FUNCTION_54_0();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = *(v7 + 16);
  v12 = v11 - a2;
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || v13 + 8 * v12 <= result)
  {
    result = memmove(result, v13, 8 * v12);
    v11 = *(v7 + 16);
  }

  v9 = __OFADD__(v11, v10);
  v15 = v11 + v10;
  if (v9)
  {
    goto LABEL_17;
  }

  *(v7 + 16) = v15;
LABEL_12:
  if (a3 > 0)
  {
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_267C73988(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_267C73A28()
{
  OUTLINED_FUNCTION_59_5();
  v4 = v3 >> 1;
  v5 = (v3 >> 1) - v0;
  if (__OFSUB__(v3 >> 1, v0))
  {
    __break(1u);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = v2;
    v7 = v1;
    v8 = v0;
    if (v5 >= 1)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v10 = OUTLINED_FUNCTION_37_3(v9);
      _swift_stdlib_malloc_size(v10);
      OUTLINED_FUNCTION_14_14();
      v10[2] = v5;
      v10[3] = (2 * v11) | 1;
    }

    if (v4 != v8)
    {
      sub_267BA9F38(0, v7, v6);
      swift_arrayInitWithCopy();
LABEL_8:
      OUTLINED_FUNCTION_60_2();
      return;
    }
  }

  __break(1u);
}

void sub_267C73B1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B38, &unk_267F02C60);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_16_7(v8);
      *(v4 + 16) = v6;
      *(v4 + 24) = 2 * (v9 / 40);
    }

    if (v5 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_267C73C10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (v5)
  {
    sub_267BCDA64(v5, 0, &qword_280229A10, &qword_267EFEE88, type metadata accessor for ComponentReadingRecord);
    if (v4 != a3)
    {
      type metadata accessor for ComponentReadingRecord(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_267C73D14(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802299F8, &unk_267EFEE78);
    sub_267C7477C(a2, type metadata accessor for ComponentReadingRecord, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267C73DB0()
{
  result = qword_280229A30;
  if (!qword_280229A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229A30);
  }

  return result;
}

void *sub_267C73E24(uint64_t a1, uint64_t (*a2)(uint64_t *, void *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v4 = sub_267EF9A68();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v5 = sub_267C71F14(v4, 0);

    a2 = a2(&v7, v5 + 4, v4, a1);
    sub_267C095D8(v7);
    if (a2 == v4)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v4 = *(a1 + 16);
    if (!v4)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v5;
}

void *sub_267C73EDC(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_267C71F14(v2, 0);

    MEMORY[0x26D609850](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_267EF9A68();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_267C73F78(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_14(a1, a2, a3);
  if (v4)
  {
    OUTLINED_FUNCTION_56_3();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_19();
    v5 = MEMORY[0x26D609870](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_28_12();
}

uint64_t sub_267C73FD8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_14(a1, a2, a3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_51_3();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_19();
    v5 = MEMORY[0x26D609870](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_28_12();
}

uint64_t sub_267C74030(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_14(a1, a2, a3);
  if (v4)
  {
    OUTLINED_FUNCTION_56_3();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_19();
    v5 = MEMORY[0x26D609870](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_28_12();
}

uint64_t sub_267C7408C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_14(a1, a2, a3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_51_3();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_19();
    v5 = MEMORY[0x26D609870](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_28_12();
}

uint64_t sub_267C740EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_14(a1, a2, a3);
  if (v4)
  {
    OUTLINED_FUNCTION_56_3();
    v5 = swift_unknownObjectRetain();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_19();
    v5 = MEMORY[0x26D609870](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_28_12();
}

uint64_t sub_267C74154(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_36_7(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_267C741E8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = sub_267C7424C(a1);
  v4 = v3[2];

  return a2((v3 + 4), v4);
}

void *sub_267C7424C(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_267C73EDC(a1);

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

_BYTE *storeEnumTagSinglePayload for ComponentReadingHistoryError(_BYTE *result, int a2, int a3)
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

void sub_267C743F8(uint64_t a1)
{
  v1 = MEMORY[0x277D837D0];
  sub_267C7456C(319, &qword_280229C18, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    sub_267C7456C(319, &qword_280229C20, v1, MEMORY[0x277D83940]);
    if (v3 <= 0x3F)
    {
      sub_267C7456C(319, &qword_280229C28, &type metadata for CountableComponentType, MEMORY[0x277D83D88]);
      if (v4 <= 0x3F)
      {
        sub_267C7456C(319, &qword_280229C30, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
        if (v5 <= 0x3F)
        {
          sub_267EF2CC8();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_267C7456C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_267C745C0()
{
  result = qword_280229C38;
  if (!qword_280229C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229C38);
  }

  return result;
}

unint64_t sub_267C74614()
{
  result = qword_280229C48;
  if (!qword_280229C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229C48);
  }

  return result;
}

unint64_t sub_267C74668()
{
  result = qword_280229C58;
  if (!qword_280229C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229C58);
  }

  return result;
}

uint64_t sub_267C746BC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28022BCB0, &unk_267EFCA30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267C74728()
{
  result = qword_280229C78;
  if (!qword_280229C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229C78);
  }

  return result;
}

uint64_t sub_267C7477C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ComponentReadingRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ComponentReadingRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267C7492C()
{
  result = qword_280229CB8;
  if (!qword_280229CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229CB8);
  }

  return result;
}

unint64_t sub_267C74984()
{
  result = qword_280229CC0;
  if (!qword_280229CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229CC0);
  }

  return result;
}

unint64_t sub_267C749DC()
{
  result = qword_280229CC8;
  if (!qword_280229CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229CC8);
  }

  return result;
}

uint64_t sub_267C74A4C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  type metadata accessor for MessagesSpokenDialogContext();
  sub_267B9AFEC(a4, v12);

  sub_267D4E710(a1, v12, a5, v13);

  sub_267D4F010(v13, a6);
  a2();
}

uint64_t sub_267C74B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_267B9AFEC(a3, v13);
  v11 = swift_allocObject();
  v11[2] = sub_267C36688;
  v11[3] = v10;
  sub_267B9A5E8(v13, (v11 + 4));
  v11[9] = a4;
  v11[10] = a5;

  sub_267C6F590(sub_267C76AF8, v11, 900.0);
}

uint64_t sub_267C74C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v6 = sub_267EF2E38();
  v5[36] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v5[37] = v7;
  v5[38] = swift_task_alloc();
  v8 = sub_267EF79B8();
  v5[39] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v5[40] = v9;
  v5[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C74D98, 0, 0);
}

uint64_t sub_267C74D98()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = *(v2 + 88);
  sub_267BD997C();
  sub_267BD9E24();
  v4 = *(v1 + 416);
  v73 = *(v2 + 112);

  sub_267EF90F8();

  v5 = *(v2 + 40);
  if (v4)
  {
    v6 = *(v4 + 128);
  }

  else
  {
    v6 = 0;
  }

  v72 = sub_267C7540C(v5, v6);

  if (v0[5])
  {
    result = sub_267BB16A4((v0 + 2), (v0 + 22), &qword_280229910, &unk_267EFEB70);
    v8 = v0[25];
    if (!v8)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v9 = v0[26];
    __swift_project_boxed_opaque_existential_0(v0 + 22, v0[25]);
    OUTLINED_FUNCTION_2_22();
    v11 = v10(v8, v9);
    v13 = OUTLINED_FUNCTION_6_13(v11, v12);

    __swift_destroy_boxed_opaque_existential_0(v0 + 22);
    v14 = v13 ^ 1;
  }

  else
  {
    v14 = 1;
  }

  v71 = v14;
  if (v0[10])
  {
    result = sub_267BB16A4((v0 + 7), (v0 + 17), &qword_280229910, &unk_267EFEB70);
    v15 = v0[20];
    if (!v15)
    {
LABEL_42:
      __break(1u);
      return result;
    }

    v16 = v0[21];
    __swift_project_boxed_opaque_existential_0(v0 + 17, v0[20]);
    OUTLINED_FUNCTION_2_22();
    v18 = v17(v15, v16);
    v20 = OUTLINED_FUNCTION_6_13(v18, v19);

    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    v21 = v20 ^ 1;
  }

  else
  {
    v21 = 1;
  }

  v70 = v21;
  if (v3 && (v22 = OUTLINED_FUNCTION_11_13()) != 0)
  {
    v23 = v22;
    v69 = [v22 isMe];
  }

  else
  {
    v69 = 0;
  }

  v24 = OUTLINED_FUNCTION_11_13();
  if (v24 && (v25 = v0[27], v24, v26 = *(v25 + 72), *(v26 + 16) == 1))
  {
    v27 = OUTLINED_FUNCTION_11_13();
    v28 = *(v26 + 32);
    v29 = v28 == 0;
    if (v27)
    {
      v30 = v27;
      if (v28)
      {
        sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
        v31 = v28;
        OUTLINED_FUNCTION_26_0();
        v29 = sub_267EF9818();

        v30 = v31;
      }

      else
      {
        v29 = 0;
      }
    }
  }

  else
  {
    v29 = 0;
  }

  result = sub_267BAF0DC(v0[29]);
  if (__OFSUB__(result, 2))
  {
    __break(1u);
    goto LABEL_41;
  }

  v66 = result - 2;
  v67 = result;
  v68 = v29;
  if (v3)
  {
    v32 = OUTLINED_FUNCTION_11_13();
    if (v32)
    {
      v33 = v32;
      v35 = v0[37];
      v34 = v0[38];
      v36 = v0[36];
      __swift_project_boxed_opaque_existential_0((v0[28] + 16), *(v0[28] + 40));
      v37 = OUTLINED_FUNCTION_4_1();
      v38(v37);
      __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
      OUTLINED_FUNCTION_4_1();
      sub_267EF3B68();
      sub_267BC20F4(v34, 0, 0, v4, v33);

      (*(v35 + 8))(v34, v36);
      __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    }

    INMessageType.description.getter([v3 messageType]);
    sub_267EF90F8();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = v0[31];
  v41 = 1;
  __swift_storeEnumTagSinglePayload(v0[35], v39, 1, v0[39]);
  if (v40)
  {
    sub_267EF90F8();
    v41 = 0;
  }

  v42 = 1;
  __swift_storeEnumTagSinglePayload(v0[34], v41, 1, v0[39]);
  if (v3 && (v43 = [v3 paymentAmount]) != 0 && (v44 = v43, v45 = objc_msgSend(v43, sel_amount), v44, v45))
  {
    [v45 doubleValue];
    v47 = v46;

    v42 = 0;
    v64 = v47;
  }

  else
  {
    v64 = 0;
  }

  v48 = v0[40];
  v49 = v0[39];
  v50 = v0[34];
  v51 = v0[35];
  v65 = v0[41];
  v53 = v0[32];
  v52 = v0[33];
  type metadata accessor for MessagesReferencedReactionMessage(0);

  v55 = sub_267C1106C(v54, v51, v50, v64, v42);
  type metadata accessor for MessagesAggregatedReactionComponentDialogContext(0);
  sub_267C75638(v72);
  sub_267EF90F8();

  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v49);
  (*(v48 + 16))(v53, v65, v49);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v49);
  v62 = sub_267C99378(v52, v73, v71 & 1, v70 & 1, v53, v69, v68 & 1, v55, 0, 0, 0, COERCE__INT64(v67), 0, COERCE__INT64(v66), 0);

  (*(v48 + 8))(v65, v49);
  sub_267B9FF34((v0 + 7), &qword_280229910, &unk_267EFEB70);
  sub_267B9FF34((v0 + 2), &qword_280229910, &unk_267EFEB70);

  v63 = v0[1];

  return v63(v62);
}

uint64_t sub_267C7540C(unint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v4 = sub_267BE84FC(v3);

    if ((v4 & 1) == 0)
    {
      return 4;
    }
  }

  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_267EF9A68())
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D609870](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (sub_267D6023C())
      {
        if (v7 > 1u)
        {
          goto LABEL_26;
        }

        v11 = sub_267EF9EA8();

        if (v11)
        {
          return 3;
        }

        v7 = 1;
      }

      else if (sub_267D602A8())
      {
        if (v7 && v7 != 2)
        {
LABEL_26:

          return 3;
        }

        v12 = sub_267EF9EA8();

        if (v12)
        {
          return 3;
        }

        v7 = 2;
      }

      else
      {
      }

      ++v6;
      if (v10 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return 0;
}

unint64_t sub_267C75638(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x736B636162706174;
      break;
    case 2:
      result = 0x53646570706F7264;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267C756EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[148] = a5;
  v5[147] = a4;
  v5[146] = a3;
  v5[145] = a2;
  v5[144] = a1;
  v6 = sub_267EF2E38();
  v5[149] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v5[150] = v7;
  v5[151] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v5[152] = swift_task_alloc();
  v5[153] = swift_task_alloc();
  v5[154] = swift_task_alloc();
  v5[155] = swift_task_alloc();
  v5[156] = swift_task_alloc();
  v5[157] = swift_task_alloc();
  v5[158] = swift_task_alloc();
  v5[159] = swift_task_alloc();
  v5[160] = swift_task_alloc();
  v5[161] = swift_task_alloc();
  v5[162] = swift_task_alloc();
  v5[163] = swift_task_alloc();
  v5[164] = swift_task_alloc();
  v5[165] = swift_task_alloc();
  v8 = sub_267EF79B8();
  v5[166] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v5[167] = v9;
  v5[168] = swift_task_alloc();
  v5[169] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C758E8, 0, 0);
}

uint64_t sub_267C758E8(uint64_t a1)
{
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_280228820);
  }

  v2 = *(v1 + 1152);
  v3 = qword_280240FC8;
  v4 = sub_267EF95D8();
  v171 = v3;
  sub_267EF8998("Beginning to create ReactionComponentDialogContext..", 52, 2, &dword_267B93000, v3, v4, MEMORY[0x277D84F90]);
  v5 = *(v2 + 88);
  sub_267BD997C();
  sub_267BD9E24();
  v157 = *(v2 + 112);
  if (!v5)
  {
    v11 = 1;
    v10 = 1;
    goto LABEL_17;
  }

  sub_267BB16A4(v1 + 736, v1 + 1056, &qword_280229910, &unk_267EFEB70);
  if (*(v1 + 1080))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (swift_dynamicCast())
    {
      memcpy((v1 + 616), (v1 + 496), 0x71uLL);
      v6 = *(v1 + 704);
      v7 = v6;
      sub_267C77240(v1 + 616);
      if (v6)
      {
        sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
        v8 = v5;
        OUTLINED_FUNCTION_26_0();
        v9 = sub_267EF9818();

        v10 = v9 ^ 1;
        goto LABEL_11;
      }
    }
  }

  else
  {
    sub_267B9FF34(v1 + 1056, &qword_280229910, &unk_267EFEB70);
  }

  v10 = 1;
LABEL_11:
  sub_267BB16A4(v1 + 776, v1 + 1096, &qword_280229910, &unk_267EFEB70);
  if (*(v1 + 1120))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (swift_dynamicCast())
    {
      memcpy((v1 + 376), (v1 + 256), 0x71uLL);
      v12 = *(v1 + 464);
      v13 = v12;
      sub_267C77240(v1 + 376);
      if (v12)
      {
        sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
        v14 = v5;
        OUTLINED_FUNCTION_26_0();
        v15 = sub_267EF9818();

        v11 = v15 ^ 1;
        goto LABEL_17;
      }
    }
  }

  else
  {
    sub_267B9FF34(v1 + 1096, &qword_280229910, &unk_267EFEB70);
  }

  v11 = 1;
LABEL_17:
  if (*(v1 + 760))
  {
    result = sub_267BB16A4(v1 + 736, v1 + 1016, &qword_280229910, &unk_267EFEB70);
    if (!*(v1 + 1040))
    {
      __break(1u);
      goto LABEL_102;
    }

    v17 = sub_267C76C74(v1 + 1016, *(v1 + 1152));
    __swift_destroy_boxed_opaque_existential_0((v1 + 1016));
    v18 = v17 ^ 1;
  }

  else
  {
    v18 = 1;
  }

  if (*(v1 + 800))
  {
    result = sub_267BB16A4(v1 + 776, v1 + 976, &qword_280229910, &unk_267EFEB70);
    if (*(v1 + 1000))
    {
      v19 = sub_267C76C74(v1 + 976, *(v1 + 1152));
      __swift_destroy_boxed_opaque_existential_0((v1 + 976));
      v20 = v19 ^ 1;
      goto LABEL_25;
    }

LABEL_102:
    __break(1u);
    return result;
  }

  v20 = 1;
LABEL_25:
  v158 = v20;
  v164 = sub_267C76B08(*(v1 + 1152));
  if (v5 && (v21 = [v5 sender]) != 0)
  {
    v22 = v21;
    v23 = [v21 isMe];
  }

  else
  {
    v23 = 0;
  }

  v24 = [v5 sender];
  v169 = v18;
  if (v24 && (v25 = *(v1 + 1152), v24, v26 = *(v25 + 72), *(v26 + 16) == 1))
  {
    v27 = [v5 sender];
    v28 = *(v26 + 32);
    if (v27)
    {
      v29 = v27;
      if (v28)
      {
        sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
        v30 = v28;
        OUTLINED_FUNCTION_26_0();
        v153 = sub_267EF9818();

        v29 = v30;
      }

      else
      {
        v153 = 0;
      }
    }

    else
    {
      v153 = v28 == 0;
    }
  }

  else
  {
    v153 = 0;
  }

  v31 = *(v1 + 1152);
  v32 = *(v31 + 56);
  sub_267EF90F8();

  v33 = *(v31 + 40);
  v34 = sub_267BAF0DC(v33);
  v166 = v5;
  v155 = v11;
  v156 = v10;
  v154 = v23;
  if (!v34)
  {
    v35 = 0;
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_8_12();
  while (1)
  {
    v35 = MEMORY[0x26D609870](0, v33);
LABEL_41:
    v36 = [v35 reaction];

    if (v36)
    {
      v37 = v36;
      v38 = sub_267E438B8();

      sub_267E439A0(v38);
      sub_267EF90F8();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = *(v1 + 1344);
    v41 = 1;
    __swift_storeEnumTagSinglePayload(*(v1 + 1320), v39, 1, *(v1 + 1328));
    v152 = sub_267E43A84(v32);
    sub_267E43AF8(v32);
    sub_267EF90F8();

    v168 = v36;
    if (!v34)
    {
      v32 = 0;
LABEL_51:
      v45 = v5;
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_8_12();
    if (v40)
    {
      v42 = MEMORY[0x26D609870](0, v33);
    }

    else
    {
      v42 = *(v33 + 32);
    }

    v43 = v42;
    v44 = [v42 reaction];

    v32 = [v44 sticker];
    if (!v32)
    {
      goto LABEL_51;
    }

    sub_267BC3164(v32, &selRef_stickerDescription);
    v45 = v5;
    if (v46)
    {
      v47 = *(v1 + 1328);
      sub_267EF90F8();

      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
      goto LABEL_54;
    }

    v41 = 0;
LABEL_52:
    __swift_storeEnumTagSinglePayload(*(v1 + 1312), 1, 1, *(v1 + 1328));
    if (v41)
    {
      v159 = v32;
      v51 = 1;
      __swift_storeEnumTagSinglePayload(*(v1 + 1304), 1, 1, *(v1 + 1328));
      v33 = 0;
      v151 = 0;
      goto LABEL_58;
    }

LABEL_54:
    v52 = v32;
    sub_267BC3164(v52, &selRef_avatarDescriptor);
    v159 = v32;
    if (v53)
    {
      sub_267EF90F8();

      v54 = 0;
    }

    else
    {
      v54 = 1;
    }

    __swift_storeEnumTagSinglePayload(*(v1 + 1304), v54, 1, *(v1 + 1328));
    v55 = v52;
    v56 = [v55 type];
    v34 = *MEMORY[0x277CD4598];

    v151 = v56 == v34;
    v57 = v55;
    v58 = [v57 type];
    v32 = *MEMORY[0x277CD4590];

    v51 = 0;
    v33 = v58 == v32;
LABEL_58:
    v59 = sub_267BAF0DC(*(v1 + 1168));
    if (!__OFSUB__(v59, 2))
    {
      break;
    }

    __break(1u);
  }

  v148 = v59 - 2;
  v149 = v59;
  v150 = v33;
  __swift_storeEnumTagSinglePayload(*(v1 + 1296), 1, 1, *(v1 + 1328));
  if (!v168 || (sub_267BC3164(v168, &selRef_emoji), !v60))
  {
    if (v51)
    {
      goto LABEL_71;
    }

    sub_267BC3164(v159, &selRef_emoji);
    if (!v73)
    {
      goto LABEL_71;
    }

    v74 = *(v1 + 1208);
    v75 = *(v1 + 1200);
    v76 = *(v1 + 1192);
    v77 = *(v1 + 1160);
    v78 = v77[5];
    v79 = v77[6];
    __swift_project_boxed_opaque_existential_0(v77 + 2, v78);
    (*(v79 + 8))(v78, v79);
    __swift_project_boxed_opaque_existential_0((v1 + 896), *(v1 + 920));
    sub_267EF3B68();
    v80 = OUTLINED_FUNCTION_26_0();
    sub_267C1433C(v80, v81, 1, v74, 1);
    v83 = v82;

    (*(v75 + 8))(v74, v76);
    __swift_destroy_boxed_opaque_existential_0((v1 + 896));
    v72 = 1280;
    if (!v83)
    {
      v67 = 1;
      goto LABEL_69;
    }

LABEL_66:
    v45 = v166;
    sub_267EF90F8();

    v67 = 0;
    goto LABEL_70;
  }

  v61 = *(v1 + 1208);
  v62 = *(v1 + 1200);
  v63 = *(v1 + 1192);
  v64 = *(v1 + 1160);
  v65 = v64[5];
  v66 = v64[6];
  __swift_project_boxed_opaque_existential_0(v64 + 2, v65);
  (*(v66 + 8))(v65, v66);
  __swift_project_boxed_opaque_existential_0((v1 + 936), *(v1 + 960));
  sub_267EF3B68();
  v67 = 1;
  v68 = OUTLINED_FUNCTION_26_0();
  sub_267C1433C(v68, v69, 1, v61, 1);
  v71 = v70;

  (*(v62 + 8))(v61, v63);
  __swift_destroy_boxed_opaque_existential_0((v1 + 936));
  v72 = 1288;
  if (v71)
  {
    goto LABEL_66;
  }

LABEL_69:
  v45 = v166;
LABEL_70:
  v84 = *(v1 + 1328);
  v85 = *(v1 + v72);
  sub_267B9FF34(*(v1 + 1296), &unk_28022AE30, &qword_267EFC0B0);
  __swift_storeEnumTagSinglePayload(v85, v67, 1, v84);
  sub_267C12220(*(v1 + v72), *(v1 + 1296));
LABEL_71:
  if (v45)
  {
    v86 = [v45 sender];
    if (v86)
    {
      v87 = v86;
      v88 = *(v1 + 1208);
      v89 = *(v1 + 1160);
      __swift_project_boxed_opaque_existential_0(v89 + 2, v89[5]);
      v90 = OUTLINED_FUNCTION_4_1();
      v91(v90);
      __swift_project_boxed_opaque_existential_0((v1 + 856), *(v1 + 880));
      OUTLINED_FUNCTION_4_1();
      sub_267EF3B68();
      v92 = v89[52];

      sub_267BC20F4(v88, 0, 0, v92, v87);

      v93 = OUTLINED_FUNCTION_26_0();
      v94(v93);
      v45 = v166;
      __swift_destroy_boxed_opaque_existential_0((v1 + 856));
    }

    INMessageType.description.getter([v45 messageType]);
    sub_267EF90F8();

    v95 = 0;
  }

  else
  {
    v95 = 1;
  }

  v96 = *(v1 + 1184);
  v97 = 1;
  __swift_storeEnumTagSinglePayload(*(v1 + 1272), v95, 1, *(v1 + 1328));
  if (v96)
  {
    sub_267EF90F8();
    v97 = 0;
  }

  v98 = 1;
  __swift_storeEnumTagSinglePayload(*(v1 + 1264), v97, 1, *(v1 + 1328));
  if (v45 && (v99 = [v45 paymentAmount]) != 0)
  {
    v100 = v99;
    v101 = [v99 amount];

    if (v101)
    {
      [v101 doubleValue];
      v103 = v102;

      v98 = 0;
      v101 = v103;
    }

    else
    {
      v98 = 1;
    }
  }

  else
  {
    v101 = 0;
  }

  v104 = *(v1 + 1272);
  v105 = *(v1 + 1264);
  type metadata accessor for MessagesReferencedReactionMessage(0);

  v107 = sub_267C1106C(v106, v104, v105, v101, v98);
  v108 = sub_267EF95D8();
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v109 = OUTLINED_FUNCTION_9_14(v147);
  *(v109 + 16) = xmmword_267EFC020;
  v145 = v107;
  *(v1 + 1136) = v107;
  sub_267BFBA4C(&qword_280229CE8, type metadata accessor for MessagesReferencedReactionMessage, &unk_267EFC588);
  sub_267EF7B58();
  v110 = MEMORY[0x277D837D0];
  v111 = sub_267EF8F08();
  v113 = v112;

  *(v109 + 56) = v110;
  v146 = sub_267BFBEB4();
  *(v109 + 64) = v146;
  *(v109 + 32) = v111;
  *(v109 + 40) = v113;
  sub_267EF8998("#MessagesDialogContextFactory ReactionComponentDialogContext referencedMessage: %@", 82, 2, &dword_267B93000, v171, v108, v109);

  if (v169)
  {
LABEL_84:
    v114 = !v164 & v169;
  }

  else
  {
    sub_267BB16A4(v1 + 736, v1 + 816, &qword_280229910, &unk_267EFEB70);
    if (*(v1 + 840))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
      if (swift_dynamicCast())
      {
        memcpy((v1 + 136), (v1 + 16), 0x71uLL);
        sub_267C77240(v1 + 136);
        if ((v158 & 1) == 0)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
      sub_267B9FF34(v1 + 816, &qword_280229910, &unk_267EFEB70);
    }

    v114 = 1;
  }

  v138 = v114;
  if (*(v1 + 760))
  {
    v139 = 0;
    v137 = 0;
  }

  else
  {
    v115 = *(*(v1 + 1160) + 104);
    v137 = v115 == 1;
    LOBYTE(v139) = v115 > 2;
    BYTE4(v139) = v115 == 2;
  }

  v116 = *(v1 + 1344);
  v143 = *(v1 + 1336);
  v144 = *(v1 + 1352);
  v117 = *(v1 + 1328);
  v118 = *(v1 + 1320);
  v119 = *(v1 + 1312);
  v140 = v119;
  v141 = v118;
  v160 = *(v1 + 1296);
  v161 = *(v1 + 1304);
  v120 = *(v1 + 1248);
  v121 = *(v1 + 1240);
  v165 = *(v1 + 1224);
  v162 = *(v1 + 1232);
  v163 = *(v1 + 1216);
  v122 = *(v143 + 16);
  v167 = *(v1 + 1256);
  v122(v167);
  OUTLINED_FUNCTION_9();
  v142 = v117;
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v117);
  (v122)(v120, v116, v117);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v117);
  type metadata accessor for MessagesReactionComponentDialogContext(0);
  OUTLINED_FUNCTION_10_15(v118, v121);
  OUTLINED_FUNCTION_10_15(v119, v162);
  OUTLINED_FUNCTION_10_15(v161, v165);
  OUTLINED_FUNCTION_10_15(v160, v163);

  v170 = sub_267D33D4C(v152, v151, v150, v157, v156 & 1, v155 & 1, v169 & 1, v158 & 1, v167, v120, v154, v153 & 1, v145, (v138 | v137) & 1, BYTE4(v139), v139, v121, v162, v165, v163, COERCE__INT64(v149), 0, COERCE__INT64(v148), 0);
  v129 = sub_267EF95D8();
  v130 = OUTLINED_FUNCTION_9_14(v147);
  *(v130 + 16) = xmmword_267EFC020;
  *(v1 + 1144) = v170;
  sub_267BFBA4C(&qword_280229CF0, type metadata accessor for MessagesReactionComponentDialogContext, &unk_267F050B8);
  sub_267EF7B58();
  v131 = MEMORY[0x277D837D0];
  v132 = sub_267EF8F08();
  v134 = v133;

  *(v130 + 56) = v131;
  *(v130 + 64) = v146;
  *(v130 + 32) = v132;
  *(v130 + 40) = v134;
  sub_267EF8998("#MessagesDialogContextFactory ReactionComponentDialogContext: %@", 64, 2, &dword_267B93000, v171, v129, v130);

  sub_267B9FF34(v160, &unk_28022AE30, &qword_267EFC0B0);
  sub_267B9FF34(v161, &unk_28022AE30, &qword_267EFC0B0);
  sub_267B9FF34(v140, &unk_28022AE30, &qword_267EFC0B0);
  v135 = *(v143 + 8);
  v135(v116, v142);
  sub_267B9FF34(v141, &unk_28022AE30, &qword_267EFC0B0);
  v135(v144, v142);
  sub_267B9FF34(v1 + 776, &qword_280229910, &unk_267EFEB70);
  sub_267B9FF34(v1 + 736, &qword_280229910, &unk_267EFEB70);

  v136 = *(v1 + 8);

  return v136(v170);
}

BOOL sub_267C76B08(const void *a1)
{
  v17[3] = &type metadata for ReactionComponent;
  v17[4] = sub_267C77294();
  v17[0] = swift_allocObject();
  memcpy((v17[0] + 16), a1, 0x71uLL);
  sub_267B9AFEC(v17, v14);
  sub_267C772E8(a1, &v11);
  while (1)
  {
    v2 = v15;
    v3 = v16;
    __swift_project_boxed_opaque_existential_0(v14, v15);
    (*(v3 + 32))(v2, v3);
    sub_267BD997C();

    v4 = v10;
    if (!v10)
    {
      sub_267B9FF34(&v9, &qword_280229910, &unk_267EFEB70);
      goto LABEL_7;
    }

    sub_267B9A5E8(&v9, &v11);
    v5 = v12;
    v6 = v13;
    v7 = __swift_project_boxed_opaque_existential_0(&v11, v12);
    if ((sub_267C00958(v14, v7, v5, v6) & 1) == 0)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0(v14);
    sub_267B9A5E8(&v11, v14);
  }

  __swift_destroy_boxed_opaque_existential_0(&v11);
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0(v14);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return v4 == 0;
}

uint64_t sub_267C76C74(uint64_t a1, const void *a2)
{
  v39[3] = &type metadata for ReactionComponent;
  v39[4] = sub_267C77294();
  v39[0] = swift_allocObject();
  memcpy((v39[0] + 16), a2, 0x71uLL);
  sub_267B9AFEC(a1, v37);
  sub_267B9AFEC(v39, v38);
  sub_267C772E8(a2, __src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      sub_267B9A5E8(__src, __dst);
      sub_267B9A5E8(v34, v33);
      v4 = __dst[3];
      v5 = __dst[4];
      __swift_project_boxed_opaque_existential_0(__dst, __dst[3]);
      v6 = (*(v5 + 16))(v4, v5);
      v7 = v33[3];
      v8 = v33[4];
      __swift_project_boxed_opaque_existential_0(v33, v33[3]);
      v9 = (*(v8 + 16))(v7, v8);
      v10 = v9;
      if (v6)
      {
        if (v9)
        {
          sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
          v11 = sub_267EF9818();
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        if (!v9)
        {
          v11 = 1;
          goto LABEL_34;
        }

        v11 = 0;
        v6 = v9;
      }

LABEL_34:
      __swift_destroy_boxed_opaque_existential_0(v33);
      v29 = __dst;
LABEL_39:
      __swift_destroy_boxed_opaque_existential_0(v29);
      goto LABEL_40;
    }

    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, 0x71uLL);
      sub_267B9A5E8(v34, v33);
      v12 = __dst[9];
      if (*(__dst[9] + 16) == 1)
      {
        v13 = v33[3];
        v14 = v33[4];
        __swift_project_boxed_opaque_existential_0(v33, v33[3]);
        v15 = (*(v14 + 16))(v13, v14);
        v16 = v15;
        if (*(v12 + 16))
        {
          v17 = *(v12 + 32);
          if (v15)
          {
            if (!v17)
            {
LABEL_11:
              sub_267C77240(__dst);

LABEL_37:
              v11 = 0;
              goto LABEL_38;
            }

LABEL_19:
            sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
            v22 = v17;
            v11 = sub_267EF9818();
            sub_267C77240(__dst);

LABEL_38:
            v29 = v33;
            goto LABEL_39;
          }

          goto LABEL_43;
        }

LABEL_35:

        goto LABEL_36;
      }

      goto LABEL_36;
    }

    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  if (swift_dynamicCast())
  {
    memcpy(__dst, __src, 0x71uLL);
    if (swift_dynamicCast())
    {
      sub_267B9A5E8(v34, v33);
      v18 = __dst[9];
      if (*(__dst[9] + 16) == 1)
      {
        v19 = v33[3];
        v20 = v33[4];
        __swift_project_boxed_opaque_existential_0(v33, v33[3]);
        v21 = (*(v20 + 16))(v19, v20);
        v16 = v21;
        if (*(v18 + 16))
        {
          v17 = *(v18 + 32);
          if (v21)
          {
            if (!v17)
            {
              goto LABEL_11;
            }

            goto LABEL_19;
          }

LABEL_43:
          v31 = v17;
          sub_267C77240(__dst);
          if (!v17)
          {
            v11 = 1;
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

LABEL_36:
      sub_267C77240(__dst);
      goto LABEL_37;
    }

    if (swift_dynamicCast())
    {
      memcpy(v33, v34, 0x71uLL);
      if (*(v33[9] + 16) == 1 && *(__dst[9] + 16) == 1)
      {
        v23 = *(v33[9] + 32);
        v24 = *(__dst[9] + 32);
        v25 = v23;
        v26 = v24;
        if (v23 == 1)
        {
          sub_267C77240(__dst);
          sub_267C77240(v33);
          if (v24 == 1)
          {
LABEL_25:
            v11 = 1;
LABEL_40:
            __swift_destroy_boxed_opaque_existential_0(v38);
            __swift_destroy_boxed_opaque_existential_0(v37);
            goto LABEL_41;
          }

          goto LABEL_54;
        }

        if (v24 != 1)
        {
          if (v23)
          {
            if (v24)
            {
              sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
              v11 = sub_267EF9818();
              sub_267C77240(__dst);
              sub_267C77240(v33);
              sub_267C77344(v24);
              sub_267C77344(v23);
              goto LABEL_40;
            }

            sub_267C77240(__dst);
            sub_267C77240(v33);
            v32 = v23;
            goto LABEL_55;
          }

          sub_267C77240(__dst);
          sub_267C77240(v33);
          if (!v24)
          {
            goto LABEL_25;
          }

LABEL_54:
          v32 = v24;
LABEL_55:
          sub_267C77344(v32);
          goto LABEL_49;
        }

        sub_267C77344(v23);
      }

      sub_267C77240(__dst);
      sub_267C77240(v33);
LABEL_49:
      v11 = 0;
      goto LABEL_40;
    }

    sub_267C77240(__dst);
  }

  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v27 = qword_280240FC8;
  v28 = sub_267EF95E8();
  sub_267EF8998("Tried comparing unknown type of component senders", 49, 2, &dword_267B93000, v27, v28, MEMORY[0x277D84F90]);
  sub_267B9FF34(v37, &qword_280229D00, &unk_267EFF350);
  v11 = 0;
LABEL_41:
  __swift_destroy_boxed_opaque_existential_0(v39);
  return v11 & 1;
}

unint64_t sub_267C77294()
{
  result = qword_280229CF8;
  if (!qword_280229CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229CF8);
  }

  return result;
}

void sub_267C77344(id a1)
{
  if (a1 != 1)
  {
  }
}

void *sub_267C77354(void *a1, __int128 *a2)
{
  v2[2] = a1;
  v4 = a1;
  v5 = [v4 originalURL];
  if (v5)
  {
    v6 = v5;
    v7 = sub_267EF9028();
    v9 = v8;
  }

  else
  {

    v7 = 0;
    v9 = 0;
  }

  v2[3] = v7;
  v2[4] = v9;
  sub_267B9A5E8(a2, (v2 + 5));
  return v2;
}

uint64_t sub_267C773E4()
{
  OUTLINED_FUNCTION_12();
  v1[9] = v2;
  v1[10] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v3);
  v1[11] = swift_task_alloc();
  v4 = sub_267EF2BA8();
  v1[12] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[13] = v5;
  v1[14] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C774C4()
{
  OUTLINED_FUNCTION_56();
  if (!*(v0[10] + 32))
  {
    goto LABEL_4;
  }

  v1 = v0[11];
  v2 = v0[12];
  sub_267EF2B88();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_267BF9988(v0[11], &qword_280229E20, &unk_267EFDCC0);
LABEL_4:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v3 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v3, qword_280240FB0);
    v4 = sub_267EF89F8();
    v5 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v5))
    {
      v6 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v6);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v7, v8, "#AppleMapsLinkParser URL missing");
      OUTLINED_FUNCTION_26();
    }

LABEL_9:
    v9 = v0[9];

    *v9 = xmmword_267EFC050;
    v9[1] = 0u;
    v9[2] = 0u;
    v9[3] = 0u;
    OUTLINED_FUNCTION_17();

    return v10();
  }

  (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
  if ((sub_267BF7B18() & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v16 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
    v17 = sub_267EF89F8();
    v18 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v18))
    {
      v19 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v19);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v20, v21, "#AppleMapsLinkParser Trying to get address from an invalid maps link");
      OUTLINED_FUNCTION_26();
    }

    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[12];

    (*(v23 + 8))(v22, v24);
    goto LABEL_9;
  }

  v12 = v0[14];
  v13 = swift_task_alloc();
  v0[15] = v13;
  *(v13 + 16) = v12;
  v14 = swift_task_alloc();
  v0[16] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D08, &qword_267EFF3D0);
  *v14 = v0;
  v14[1] = sub_267C7779C;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0x6572646441746567, 0xEC00000029287373, sub_267C7972C, v13, v15);
}

uint64_t sub_267C7779C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C7789C()
{
  v118 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v0[17] = v1;
  if (v2)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v3 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v3, qword_280240FB0);
    v4 = v2;
    v5 = sub_267EF89F8();
    v6 = sub_267EF95E8();

    if (!os_log_type_enabled(v5, v6))
    {

      goto LABEL_22;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v117[0] = v8;
    *v7 = 136315138;
    v0[8] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D18, &qword_267EFF3E0);
    v10 = sub_267EF9098();
    v12 = sub_267BA33E8(v10, v11, v117);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_267B93000, v5, v6, "#AppleMapsLinkParser There is an error creating a new MKUrlParser %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v13 = v2;
    goto LABEL_6;
  }

  if (!v1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v70 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v70, qword_280240FB0);
    v71 = sub_267EF89F8();
    v72 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v72))
    {
      v73 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v73);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v74, v75, "#AppleMapsLinkParser MKUrlParser is nil");
      OUTLINED_FUNCTION_26();
    }

    v77 = v0[13];
    v76 = v0[14];
    v78 = v0[12];

    (*(v77 + 8))(v76, v78);
    goto LABEL_23;
  }

  [v1 parseIncludingCustomParameters_];
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v14 = sub_267EF8A08();
  v0[18] = __swift_project_value_buffer(v14, qword_280240FB0);
  v15 = v1;
  v16 = sub_267EF89F8();
  v17 = sub_267EF95D8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v117[0] = v19;
    *v18 = 136315138;
    [v15 centerCoordinate];
    v0[6] = v20;
    v0[7] = v21;
    type metadata accessor for CLLocationCoordinate2D(0);
    v22 = sub_267EF9098();
    v24 = sub_267BA33E8(v22, v23, v117);

    *(v18 + 4) = v24;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  sub_267BE28D0(v15, &selRef_addressString);
  if (v30)
  {

    result = sub_267BE28D0(v15, &selRef_addressString);
    if (!v32)
    {
      __break(1u);
      goto LABEL_60;
    }

    v33 = result;
    v34 = v32;

    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      objc_allocWithZone(MEMORY[0x277CCA948]);
      v36 = sub_267BD346C(16);
      v79 = v36;
      if (!v36)
      {
        v5 = sub_267EF89F8();
        v37 = sub_267EF95E8();
        if (!OUTLINED_FUNCTION_27(v37))
        {

          goto LABEL_7;
        }

        v38 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v38);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v39, v40, v41, v42, v43, 2u);
        OUTLINED_FUNCTION_29_1();

        v13 = 0;
LABEL_6:

LABEL_7:
LABEL_22:
        v44 = OUTLINED_FUNCTION_15_9();
        v45(v44);
LABEL_23:
        v46 = 0;
        v116 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 1;
LABEL_24:
        v53 = v0[9];

        *v53 = v46;
        v53[1] = v52;
        v53[2] = v116;
        v53[3] = v47;
        v53[4] = v48;
        v53[5] = v49;
        v53[6] = v50;
        v53[7] = v51;
        OUTLINED_FUNCTION_17();

        return v54();
      }

      result = sub_267BE28D0(v15, &selRef_addressString);
      if (v80)
      {
        v81 = sub_267EF8FF8();

        result = sub_267BE28D0(v15, &selRef_addressString);
        if (v82)
        {
          v83 = MEMORY[0x26D608EC0](result);

          v84 = [v79 matchesInString:v81 options:0 range:{0, v83}];

          sub_267BA9F38(0, &qword_280229D10, 0x277CCACC0);
          v85 = sub_267EF92F8();

          if (sub_267BAF0DC(v85))
          {
            sub_267BBD0EC(0, (v85 & 0xC000000000000001) == 0, v85);
            if ((v85 & 0xC000000000000001) != 0)
            {
              v86 = MEMORY[0x26D609870](0, v85);
            }

            else
            {
              v86 = *(v85 + 32);
            }

            v87 = v86;

            if ([v87 resultType] == 16)
            {
              v88 = sub_267E77C48(v87);
              if (v88)
              {
                v89 = v88;
                v114 = v87;
                v115 = sub_267BE28D0(v15, &selRef_searchQuery);
                v52 = v90;
                v116 = sub_267BC2EE8(*MEMORY[0x277CCA6B0], v89);
                v47 = v91;
                v48 = sub_267BC2EE8(*MEMORY[0x277CCA6E0], v89);
                v49 = v92;

                v93 = [v15 addressString];
                if (v93)
                {
                  v94 = v93;
                  v95 = v79;
                  v50 = sub_267EF9028();
                  v51 = v96;
                }

                else
                {

                  v50 = 0;
                  v51 = 0;
                }

                v112 = OUTLINED_FUNCTION_15_9();
                v113(v112);
                v46 = v115;
                goto LABEL_24;
              }
            }

            v97 = sub_267EF89F8();
            v98 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_27(v98))
            {
              v99 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_4_2(v99);
              OUTLINED_FUNCTION_14_2();
              _os_log_impl(v100, v101, v102, v103, v104, 2u);
              OUTLINED_FUNCTION_29_1();
            }

            else
            {
            }
          }

          else
          {

            v97 = sub_267EF89F8();
            v105 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_27(v105))
            {
              v106 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_4_2(v106);
              OUTLINED_FUNCTION_14_2();
              _os_log_impl(v107, v108, v109, v110, v111, 2u);
              OUTLINED_FUNCTION_29_1();
            }

            else
            {
            }
          }

          goto LABEL_22;
        }

LABEL_61:
        __break(1u);
        return result;
      }

LABEL_60:
      __break(1u);
      goto LABEL_61;
    }
  }

  v55 = sub_267EF89F8();
  v56 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v56))
  {
    v57 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v57);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v58, v59, v60, v61, v62, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v63 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  v0[19] = v63;
  [v15 centerCoordinate];
  v65 = v64;
  [v15 centerCoordinate];
  v67 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v65 longitude:v66];
  v0[20] = v67;
  v68 = swift_task_alloc();
  v0[21] = v68;
  *(v68 + 16) = v63;
  *(v68 + 24) = v67;
  v69 = swift_task_alloc();
  v0[22] = v69;
  *v69 = v0;
  v69[1] = sub_267C78174;

  return sub_267C78CD4(sub_267C79734, v68);
}