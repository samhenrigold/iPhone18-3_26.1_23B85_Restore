uint64_t sub_227A1B458()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_85_0();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_227A1B4F0;
  v2 = OUTLINED_FUNCTION_108(*(v0 + 88));

  return sub_227A1A264(v2, v3, v4, v5);
}

uint64_t sub_227A1B4F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_50_1();
  v6 = *(v5 + 64);
  v7 = *(v1 + 56);
  if (v0)
  {
    v8 = sub_227A1B6B8;
  }

  else
  {
    v8 = sub_227A1B618;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_227A1B618()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_57_1();
  sub_227A49FA0();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_227A1B6B8()
{
  OUTLINED_FUNCTION_31();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A1B72C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v2[4] = swift_task_alloc();
  v2[5] = sub_227A7273C();
  v2[6] = sub_227A7272C();
  v4 = sub_227A726EC();

  return MEMORY[0x2822009F8](sub_227A1B800, v4, v3);
}

uint64_t sub_227A1B800()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = sub_227A7276C();
  OUTLINED_FUNCTION_111_0(v3);
  OUTLINED_FUNCTION_110();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_227A7272C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v2;
  v6[5] = v4;

  v8 = OUTLINED_FUNCTION_57_1();
  sub_227A2EC1C(v8, v9, v1, v10, v6);
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_161();

  return v13(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_227A1B910(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_227A7273C();
  v2[4] = sub_227A7272C();
  v4 = sub_227A726EC();

  return MEMORY[0x2822009F8](sub_227A1B9A8, v4, v3);
}

uint64_t sub_227A1B9A8()
{
  OUTLINED_FUNCTION_132();
  v48 = v0;

  sub_227A143B8();
  if (!v1)
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v4 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v4, qword_27D7DE210);
    v5 = sub_227A7226C();
    v6 = sub_227A728AC();
    if (OUTLINED_FUNCTION_46_1(v6))
    {
      OUTLINED_FUNCTION_28_0();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_36_1(v7);
      OUTLINED_FUNCTION_10_4();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    goto LABEL_24;
  }

  v2 = v1;
  v3 = sub_227A1AA80(2u);
  v14 = sub_227A498C0(v3, v13, *(v0 + 16));

  if (!v14)
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v27 = *(v0 + 16);
    v28 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v28, qword_27D7DE210);

    v5 = sub_227A7226C();
    sub_227A728AC();

    if (!OUTLINED_FUNCTION_143())
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_106();
    v29 = OUTLINED_FUNCTION_100();
    v47[0] = v29;
    *v27 = 136315138;
    v30 = sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    v31 = sub_227A7283C();
    sub_227A46730(v31, v32, v47);
    OUTLINED_FUNCTION_100_0();

    *(v27 + 4) = v30;
    OUTLINED_FUNCTION_24_1();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    goto LABEL_22;
  }

  if (!*(v2 + 136))
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v38 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v38, qword_27D7DE210);
    v5 = sub_227A7226C();
    v39 = sub_227A728AC();
    if (!OUTLINED_FUNCTION_27_0(v39))
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_28_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_24_1();
    _os_log_impl(v40, v41, v42, v43, v44, 2u);
LABEL_22:
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
LABEL_23:

LABEL_24:

    goto LABEL_25;
  }

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v15 = *(v0 + 16);
  v16 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v16, qword_27D7DE210);

  v17 = sub_227A7226C();
  sub_227A728AC();

  if (OUTLINED_FUNCTION_143())
  {
    OUTLINED_FUNCTION_106();
    v18 = OUTLINED_FUNCTION_100();
    v47[0] = v18;
    *v15 = 136315138;
    v19 = sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    v20 = sub_227A7283C();
    sub_227A46730(v20, v21, v47);
    OUTLINED_FUNCTION_100_0();

    *(v15 + 4) = v19;
    OUTLINED_FUNCTION_24_1();
    _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  sub_227A4A708(*(v0 + 16));

LABEL_25:
  OUTLINED_FUNCTION_23();

  return v45();
}

uint64_t sub_227A1BDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_227A7273C();
  v4[6] = sub_227A7272C();
  v6 = sub_227A726EC();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_227A1BE54, v6, v5);
}

uint64_t sub_227A1BE54()
{
  OUTLINED_FUNCTION_132();
  v35 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (!Strong)
  {
LABEL_21:

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_69_1();

    __asm { BRAA            X1, X16 }
  }

  sub_227A143B8();
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = v0[2];
  v3 = v0[3];
  v6 = *(v2 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type);
  v5 = *(v2 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 8);
  v7 = OUTLINED_FUNCTION_40_1();
  sub_227A23E54(v7, v8);

  if (v6 == v4 && v5 == v3)
  {
    sub_227A23E5C();
    goto LABEL_20;
  }

  v10 = OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_40_1();
  sub_227A23E5C();
  if (v10)
  {
LABEL_20:
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

LABEL_8:
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v11 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v11, qword_27D7DE210);

  v12 = sub_227A7226C();
  v13 = sub_227A7289C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_63_1();
    v15 = OUTLINED_FUNCTION_82_0();
    *(v14 + 4) = OUTLINED_FUNCTION_109_0(4.8151e-34, v15);
    *(v14 + 12) = 2080;
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    v16 = sub_227A7283C();
    v18 = sub_227A46730(v16, v17, &v34);

    *(v14 + 14) = v18;
    OUTLINED_FUNCTION_107_0(&dword_227904000, v19, v20, "Create new lobby channel(sessionID:%s with participants: %s");
    OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  v21 = v0[5];
  v22 = OBJC_IVAR___GKFastSyncTransport_lobbyChannelMigrationTask;
  v0[10] = OBJC_IVAR___GKFastSyncTransport_lobbyChannelMigrationTask;
  if (*(v21 + v22))
  {

    sub_227A727DC();
  }

  sub_227A143B8();
  if (v23)
  {
    sub_227A49E78();
  }

  sub_227A1440C(0);
  type metadata accessor for FastSyncChannel(0);
  swift_allocObject();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = OUTLINED_FUNCTION_82();
  sub_227A4C7E4(v24, v25);
  v0[11] = v26;

  sub_227A1440C(v27);
  v28 = swift_task_alloc();
  v0[12] = v28;
  *v28 = v0;
  v28[1] = sub_227A1C1EC;
  OUTLINED_FUNCTION_69_1();

  return sub_227A1B72C(v29);
}

uint64_t sub_227A1C1EC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_2_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_32();
  *v5 = v4;
  *(v7 + 104) = v6;

  OUTLINED_FUNCTION_74_1();
  v9 = *(v8 + 64);
  v10 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_227A1C2FC, v10, v9);
}

uint64_t sub_227A1C2FC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_85_0();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_227A1C394;
  v2 = OUTLINED_FUNCTION_108(*(v0 + 88));

  return sub_227A1A264(v2, v3, v4, v5);
}

uint64_t sub_227A1C394()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_50_1();
  v6 = *(v5 + 64);
  v7 = *(v1 + 56);
  if (v0)
  {
    v8 = sub_227A24298;
  }

  else
  {
    v8 = sub_227A1C4BC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_227A1C4BC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_9_2();
  sub_227A49FA0();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_227A1C56C;
  v2 = OUTLINED_FUNCTION_108(*(v0 + 88));

  return sub_227A1C70C(v2);
}

uint64_t sub_227A1C56C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_2_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_32();
  *v5 = v4;
  *(v7 + 136) = v6;

  OUTLINED_FUNCTION_74_1();
  v9 = *(v8 + 64);
  v10 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_227A1C67C, v10, v9);
}

uint64_t sub_227A1C67C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 136);
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  *(v2 + OBJC_IVAR___GKFastSyncTransport_newChannelObservationTask) = v1;

  OUTLINED_FUNCTION_23();

  return v3();
}

uint64_t sub_227A1C70C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v2[4] = swift_task_alloc();
  v2[5] = sub_227A7273C();
  v2[6] = sub_227A7272C();
  v4 = sub_227A726EC();

  return MEMORY[0x2822009F8](sub_227A1C7E0, v4, v3);
}

uint64_t sub_227A1C7E0()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = sub_227A7276C();
  OUTLINED_FUNCTION_111_0(v3);
  OUTLINED_FUNCTION_110();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_227A7272C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v2;
  v6[5] = v4;

  v8 = OUTLINED_FUNCTION_57_1();
  sub_227A2EC1C(v8, v9, v1, v10, v6);
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_161();

  return v13(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_227A1C8F0()
{
  OUTLINED_FUNCTION_31();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = type metadata accessor for ChannelMigrationActionMessage(0);
  v1[5] = swift_task_alloc();
  v3 = sub_227A7273C();
  v1[6] = OUTLINED_FUNCTION_88_0(v3);
  OUTLINED_FUNCTION_13();
  sub_227A726EC();
  OUTLINED_FUNCTION_73_1();
  v1[7] = v4;
  v1[8] = v5;
  v6 = OUTLINED_FUNCTION_72_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227A1C9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67_1();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_132();
  a18 = v20;
  v24 = v20[4];
  v25 = sub_227A085C8(*(v20[2] + *(v24 + 20)));
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v26 = v20[5];
  v27 = v20[2];
  v28 = sub_227A7227C();
  __swift_project_value_buffer(v28, qword_27D7DE210);
  OUTLINED_FUNCTION_31_1();
  sub_227A24238(v27, v26);
  v29 = sub_227A7226C();
  v30 = sub_227A7289C();
  v31 = OUTLINED_FUNCTION_27_0(v30);
  v32 = v20[5];
  if (v31)
  {
    OUTLINED_FUNCTION_106();
    v33 = OUTLINED_FUNCTION_100();
    a9 = v33;
    *v21 = 136315138;
    v34 = sub_227A08414(*(v32 + *(v24 + 20)));
    v36 = v35;
    OUTLINED_FUNCTION_1_11();
    sub_227A241E4();
    v37 = sub_227A46730(v34, v36, &a9);

    *(v21 + 4) = v37;
    OUTLINED_FUNCTION_24_1();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  else
  {

    OUTLINED_FUNCTION_1_11();
    sub_227A241E4();
  }

  v43 = *(v20[2] + *(v20[4] + 28));
  a9 = MEMORY[0x277D84FA0];
  sub_227A46E58(v43);
  v20[9] = a9;
  if (v25)
  {
    v44 = swift_task_alloc();
    v20[10] = v44;
    *v44 = v20;
    OUTLINED_FUNCTION_44_1(v44);
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_34_1();

    return sub_227A1BDB8(v45, v46, v47);
  }

  else
  {
    v50 = swift_task_alloc();
    v20[12] = v50;
    *v50 = v20;
    OUTLINED_FUNCTION_44_1(v50);
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_34_1();

    return sub_227A1AF08(v51, v52, v53);
  }
}

uint64_t sub_227A1CC14()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_227A1CE7C;
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_227A1CD18;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_227A1CD18()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_227A1CD78()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_227A1CEF4;
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_227A24290;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_227A1CE7C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A1CEF4()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A1CF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for ChannelMigrationActionMessage(0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0D0, &qword_227AA3660);
  v5[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0D8, &qword_227AA3668);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0E0, &qword_227AA3670);
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = sub_227A7273C();
  v5[19] = sub_227A7272C();
  v9 = sub_227A726EC();
  v5[20] = v9;
  v5[21] = v8;

  return MEMORY[0x2822009F8](sub_227A1D158, v9, v8);
}

uint64_t sub_227A1D158()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_81_0();
  sub_227A4B89C();
  OUTLINED_FUNCTION_139();
  sub_227A7278C();
  (*(v2 + 8))(v0, v1);
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  v3 = sub_227A7272C();
  OUTLINED_FUNCTION_58_1(v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17_2(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_6_6(v5);
  OUTLINED_FUNCTION_59_1();

  return MEMORY[0x2822003E8](v7);
}

uint64_t sub_227A1D224()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_77_0();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_74_1();
  v5 = *(v4 + 168);
  v6 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_227A1D354, v6, v5);
}

uint64_t sub_227A1D354()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v1 = v0[11];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[7]) == 1)
  {
    v2 = OUTLINED_FUNCTION_96_0();
    v3(v2);

LABEL_8:
    OUTLINED_FUNCTION_112_0();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_161();

    return v11(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  sub_227A2418C(v1, v0[10]);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (!Strong)
  {
    OUTLINED_FUNCTION_113_0();
    OUTLINED_FUNCTION_1_11();
    sub_227A241E4();
    v8 = OUTLINED_FUNCTION_115();
    v9(v8);
    goto LABEL_8;
  }

  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_227A1D4D8;
  OUTLINED_FUNCTION_108(v0[10]);
  OUTLINED_FUNCTION_161();

  return sub_227A1C8F0();
}

uint64_t sub_227A1D4D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 208) = v0;

  OUTLINED_FUNCTION_50_1();
  v6 = *(v5 + 168);
  v7 = *(v1 + 160);
  if (v0)
  {
    v8 = sub_227A1D69C;
  }

  else
  {
    v8 = sub_227A1D600;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_227A1D600()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_1_11();
  sub_227A241E4();
  v1 = sub_227A7272C();
  OUTLINED_FUNCTION_58_1(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_17_2(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_6_6(v3);
  OUTLINED_FUNCTION_59_1();

  return MEMORY[0x2822003E8](v5);
}

uint64_t sub_227A1D69C()
{
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = sub_227A7227C();
  __swift_project_value_buffer(v2, qword_27D7DE210);
  OUTLINED_FUNCTION_31_1();
  v3 = OUTLINED_FUNCTION_115();
  sub_227A24238(v3, v4);
  v5 = v1;
  v6 = sub_227A7226C();
  v7 = sub_227A728BC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 208);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  if (v8)
  {
    v36 = *(v0 + 208);
    v37 = *(v0 + 192);
    v12 = *(v0 + 64);
    OUTLINED_FUNCTION_63_1();
    v13 = OUTLINED_FUNCTION_90_0();
    v38 = OUTLINED_FUNCTION_107();
    *v11 = 136315394;
    sub_227A24238(v10, v12);
    OUTLINED_FUNCTION_98_0();
    sub_227A7251C();
    OUTLINED_FUNCTION_114_0();
    v14 = OUTLINED_FUNCTION_98_0();
    v17 = sub_227A46730(v14, v15, v16);

    OUTLINED_FUNCTION_87_0(v18, v19, v20, v21, v22, v23, v24, v25, v35, v36);
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v26;
    *v13 = v26;
    OUTLINED_FUNCTION_115_0(&dword_227904000, v27, v28, "Failed to handle migration message: %s. Error: %@");
    sub_2279F3774(v13, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  else
  {

    sub_227A241E4();
    OUTLINED_FUNCTION_101_0();
  }

  sub_227A241E4();
  v29 = sub_227A7272C();
  OUTLINED_FUNCTION_58_1(v29);
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_17_2(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_6_6(v31);
  OUTLINED_FUNCTION_59_1();

  return MEMORY[0x2822003E8](v33);
}

uint64_t sub_227A1D90C()
{
  OUTLINED_FUNCTION_31();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227A7273C();
  v1[4] = OUTLINED_FUNCTION_88_0(v3);
  OUTLINED_FUNCTION_13();
  sub_227A726EC();
  OUTLINED_FUNCTION_73_1();
  v1[5] = v4;
  v1[6] = v5;
  v6 = OUTLINED_FUNCTION_72_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227A1D98C()
{
  v1 = v0[2];
  v2 = type metadata accessor for JoinChannelActionMessage(0);
  v3 = sub_227A085C8(*(v1 + *(v2 + 20)));
  v13 = MEMORY[0x277D84FA0];
  sub_227A46E58(*(v1 + *(v2 + 28)));
  v0[7] = v13;
  if (v3)
  {
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_44_1(v4);
    OUTLINED_FUNCTION_75_1();

    return sub_227A1BDB8(v5, v6, v7);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_44_1(v9);
    OUTLINED_FUNCTION_75_1();

    return sub_227A1AF08(v10, v11, v12);
  }
}

uint64_t sub_227A1DAF0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_227A1DCF8;
  }

  else
  {

    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_227A2429C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_227A1DBF4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_227A1DD60;
  }

  else
  {

    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_227A2429C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_227A1DCF8()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A1DD60()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A1DDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for JoinChannelActionMessage(0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0E8, &qword_227AA36A0);
  v5[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0F0, &qword_227AA36A8);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0F8, &qword_227AA36B0);
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = sub_227A7273C();
  v5[19] = sub_227A7272C();
  v9 = sub_227A726EC();
  v5[20] = v9;
  v5[21] = v8;

  return MEMORY[0x2822009F8](sub_227A1DFB4, v9, v8);
}

uint64_t sub_227A1DFB4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_81_0();
  sub_227A4B8D8();
  OUTLINED_FUNCTION_139();
  sub_227A7278C();
  (*(v2 + 8))(v0, v1);
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  v3 = sub_227A7272C();
  OUTLINED_FUNCTION_58_1(v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17_2(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_5_4(v5);
  OUTLINED_FUNCTION_59_1();

  return MEMORY[0x2822003E8](v7);
}

uint64_t sub_227A1E080()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_77_0();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_74_1();
  v5 = *(v4 + 168);
  v6 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_227A1E1B0, v6, v5);
}

uint64_t sub_227A1E1B0()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v1 = v0[11];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[7]) == 1)
  {
    v2 = OUTLINED_FUNCTION_96_0();
    v3(v2);

LABEL_8:
    OUTLINED_FUNCTION_112_0();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_161();

    return v11(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  sub_227A2418C(v1, v0[10]);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (!Strong)
  {
    OUTLINED_FUNCTION_113_0();
    OUTLINED_FUNCTION_32_1();
    sub_227A241E4();
    v8 = OUTLINED_FUNCTION_115();
    v9(v8);
    goto LABEL_8;
  }

  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_227A1E334;
  OUTLINED_FUNCTION_108(v0[10]);
  OUTLINED_FUNCTION_161();

  return sub_227A1D90C();
}

uint64_t sub_227A1E334()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 208) = v0;

  OUTLINED_FUNCTION_50_1();
  v6 = *(v5 + 168);
  v7 = *(v1 + 160);
  if (v0)
  {
    v8 = sub_227A1E4F8;
  }

  else
  {
    v8 = sub_227A1E45C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_227A1E45C()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_32_1();
  sub_227A241E4();
  v1 = sub_227A7272C();
  OUTLINED_FUNCTION_58_1(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_17_2(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_5_4(v3);
  OUTLINED_FUNCTION_59_1();

  return MEMORY[0x2822003E8](v5);
}

uint64_t sub_227A1E4F8()
{
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = sub_227A7227C();
  __swift_project_value_buffer(v2, qword_27D7DE210);
  v3 = OUTLINED_FUNCTION_115();
  sub_227A24238(v3, v4);
  v5 = v1;
  v6 = sub_227A7226C();
  v7 = sub_227A728BC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 208);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  if (v8)
  {
    v36 = *(v0 + 208);
    v37 = *(v0 + 192);
    v12 = *(v0 + 64);
    OUTLINED_FUNCTION_63_1();
    v13 = OUTLINED_FUNCTION_90_0();
    v38 = OUTLINED_FUNCTION_107();
    *v11 = 136315394;
    sub_227A24238(v10, v12);
    OUTLINED_FUNCTION_98_0();
    sub_227A7251C();
    OUTLINED_FUNCTION_114_0();
    v14 = OUTLINED_FUNCTION_98_0();
    v17 = sub_227A46730(v14, v15, v16);

    OUTLINED_FUNCTION_87_0(v18, v19, v20, v21, v22, v23, v24, v25, v35, v36);
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v26;
    *v13 = v26;
    OUTLINED_FUNCTION_115_0(&dword_227904000, v27, v28, "Failed to handle join new channel message: %s. Error: %@");
    sub_2279F3774(v13, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  else
  {

    sub_227A241E4();
    OUTLINED_FUNCTION_101_0();
  }

  sub_227A241E4();
  v29 = sub_227A7272C();
  OUTLINED_FUNCTION_58_1(v29);
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_17_2(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_5_4(v31);
  OUTLINED_FUNCTION_59_1();

  return MEMORY[0x2822003E8](v33);
}

uint64_t FastSyncTransport.nearbyConnectionData.getter()
{
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v0 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v0, qword_27D7DE210);
  v1 = sub_227A7226C();
  sub_227A728BC();
  v2 = OUTLINED_FUNCTION_41_1();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_28_0();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_36_1(v4);
    OUTLINED_FUNCTION_53_1(&dword_227904000, v5, v6, "nearbyConnectionData is not supported");
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  return 0;
}

Swift::Bool __swiftcall FastSyncTransport.connect(toGuestPlayer:withHostPlayer:)(GKPlayer toGuestPlayer, GKPlayer withHostPlayer)
{
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v2 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v2, qword_27D7DE210);
  v3 = sub_227A7226C();
  sub_227A728BC();
  v4 = OUTLINED_FUNCTION_41_1();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_28_0();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_36_1(v6);
    OUTLINED_FUNCTION_53_1(&dword_227904000, v7, v8, "connect toGuestPlayer is not supported");
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  return 0;
}

void FastSyncTransport.connect(toNearbyPlayer:withConnectionData:)()
{
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v0 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v0, qword_27D7DE210);
  oslog = sub_227A7226C();
  v1 = sub_227A728BC();
  if (os_log_type_enabled(oslog, v1))
  {
    OUTLINED_FUNCTION_28_0();
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_227904000, oslog, v1, "connect toNearbyPlayer is not supported", v2, 2u);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }
}

uint64_t FastSyncTransport.enrichPeerDictionaries(forPlayersConnection:)(uint64_t a1)
{
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v1 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v1, qword_27D7DE210);
  v2 = sub_227A7226C();
  v3 = sub_227A728BC();
  if (OUTLINED_FUNCTION_27_0(v3))
  {
    OUTLINED_FUNCTION_28_0();
    v4 = swift_slowAlloc();
    *v4 = 0;
    OUTLINED_FUNCTION_57();
    _os_log_impl(v5, v6, v7, v8, v4, 2u);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }
}

uint64_t FastSyncTransport.localConnectionData()()
{
  OUTLINED_FUNCTION_31();
  v1 = sub_227A7273C();
  *(v0 + 16) = OUTLINED_FUNCTION_88_0(v1);
  OUTLINED_FUNCTION_13();
  v3 = sub_227A726EC();

  return MEMORY[0x2822009F8](sub_227A1ECC8, v3, v2);
}

uint64_t sub_227A1ECC8()
{
  OUTLINED_FUNCTION_42();

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v0 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v0, qword_27D7DE210);
  v1 = sub_227A7226C();
  v2 = sub_227A728BC();
  if (OUTLINED_FUNCTION_46_1(v2))
  {
    OUTLINED_FUNCTION_28_0();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_36_1(v3);
    OUTLINED_FUNCTION_10_4();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  v9 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_227A202AC(0x636E797374736166, 0xE800000000000000, 1, 0);
  swift_willThrow();
  OUTLINED_FUNCTION_41();

  return v10();
}

uint64_t sub_227A1EE64(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_227A7273C();
  v2[4] = sub_227A7272C();
  v4 = sub_227A726EC();

  return MEMORY[0x2822009F8](sub_227A1EEFC, v4, v3);
}

uint64_t sub_227A1EEFC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_227A1EFA4;

  return FastSyncTransport.localConnectionData()();
}

uint64_t sub_227A1EFA4()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v2 = v0;
  OUTLINED_FUNCTION_36();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;

  if (v2)
  {
    v10 = sub_227A71A4C();

    v11 = v10;
  }

  else
  {
    OUTLINED_FUNCTION_30_1();
    v12 = sub_227A71B8C();
    v13 = OUTLINED_FUNCTION_30_1();
    sub_2279E3FA4(v13, v14);
    v11 = v12;
  }

  v15 = *(v4 + 40);
  v16 = OUTLINED_FUNCTION_76();
  v17(v16);

  _Block_release(v15);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_161();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_227A1F208(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD100, &qword_227AA36C8);
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v1 + 16) = v3;
  return v1;
}

void *sub_227A1F254(uint64_t a1, uint64_t a2)
{
  v2[2] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

void *sub_227A1F2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = *v6;
  v24[1] = v14;
  v25 = sub_227A71F6C();
  v15 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[2] = a1;
  v7[3] = a2;
  v18 = v7 + *(v14 + 104);
  v26 = a3;
  sub_227A24238(a3, v18);
  *(&v28 + 1) = sub_227A7212C();
  v29 = sub_227A20870(&qword_27D7DD0A0, MEMORY[0x277CCB290], MEMORY[0x277CCB288]);
  __swift_allocate_boxed_opaque_existential_1(&v27);

  sub_227A7211C();
  v19 = v7 + *(*v7 + 112);
  v20 = v28;
  *v19 = v27;
  *(v19 + 1) = v20;
  *(v19 + 4) = v29;
  v21 = (v7 + *(*v7 + 128));
  *v21 = a5;
  v21[1] = a6;
  sub_227A140A0(a4);

  *&v27 = sub_227A17D18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0B0, &qword_227AA3640);
  swift_allocObject();
  *(v7 + *(*v7 + 136)) = sub_227A722EC();
  (*(v15 + 104))(v17, *MEMORY[0x277CCB1A8], v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD050, &qword_227AA35D8);
  swift_allocObject();
  v22 = sub_227A722EC();
  sub_227A241E4();
  *(v7 + *(*v7 + 120)) = v22;
  return v7;
}

uint64_t sub_227A1F624()
{
  v1 = v0;
  sub_227A72B1C();

  MEMORY[0x22AA9FE40](v1[2], v1[3]);
  MEMORY[0x22AA9FE40](0xD000000000000011, 0x8000000227A98F80);
  v2 = (v1 + *(*v1 + 128));
  v3 = *v2;
  v4 = v2[1];

  MEMORY[0x22AA9FE40](v3, v4);

  return 0x72656469766F7250;
}

uint64_t sub_227A1F6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[10] = *a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD060, &qword_227AA3600);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD068, &qword_227AA3608);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = sub_227A7273C();
  v5[18] = sub_227A7272C();
  v9 = sub_227A726EC();
  v5[19] = v9;
  v5[20] = v8;

  return MEMORY[0x2822009F8](sub_227A1F88C, v9, v8);
}

uint64_t sub_227A1F88C()
{
  v23 = v0;
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v4 = sub_227A7227C();
    v0[22] = OUTLINED_FUNCTION_104(v4, qword_27D7DE210);

    v5 = sub_227A7226C();
    sub_227A728AC();
    OUTLINED_FUNCTION_94_0();

    if (OUTLINED_FUNCTION_143())
    {
      OUTLINED_FUNCTION_106();
      v6 = OUTLINED_FUNCTION_100();
      v22 = v6;
      *v1 = 136315138;
      v8 = *(v3 + 24);
      v7 = *(v3 + 32);

      v9 = sub_227A46730(v8, v7, &v22);

      *(v1 + 4) = v9;
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[11];
    OUTLINED_FUNCTION_42_1(&qword_27D7DD048, &qword_27D7DD040, &unk_227AA5CC0);
    sub_227A71E3C();
    OUTLINED_FUNCTION_139();
    sub_227A7204C();
    (*(v16 + 8))(v15, v17);
    v0[23] = sub_227A7272C();
    OUTLINED_FUNCTION_28(&qword_27D7DD070, &qword_27D7DD068, &qword_227AA3608);
    v18 = swift_task_alloc();
    v0[24] = v18;
    *v18 = v0;
    v19 = OUTLINED_FUNCTION_22_1(v18);

    return MEMORY[0x282200308](v19);
  }

  else
  {

    OUTLINED_FUNCTION_41();

    return v20();
  }
}

uint64_t sub_227A1FB08()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 200) = v0;

  v5 = *(v2 + 184);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_227A726EC();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = sub_227A1FF90;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_227A726EC();
      v8 = v9;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = sub_227A1FC88;
  }

  return MEMORY[0x2822009F8](v10, v6, v8);
}

uint64_t sub_227A1FC88()
{
  OUTLINED_FUNCTION_31();

  v0[26] = v0[5];
  v1 = v0[19];
  v2 = v0[20];

  return MEMORY[0x2822009F8](sub_227A1FCF0, v1, v2);
}

uint64_t sub_227A1FCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_132();
  a18 = v20;
  v23 = v20[26];
  if (v23)
  {

    v24 = sub_227A7226C();
    v25 = sub_227A7289C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v20[21];
      v27 = OUTLINED_FUNCTION_63_1();
      a10 = OUTLINED_FUNCTION_82_0();
      *v27 = 136315394;
      v28 = *(v26 + 24);
      v29 = *(v26 + 32);

      v30 = sub_227A46730(v28, v29, &a10);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      v20[7] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD078, &unk_227AA3610);
      sub_2279F4CBC(&qword_27D7DD080, &qword_27D7DD078, &unk_227AA3610, MEMORY[0x277CCB228]);
      v31 = sub_227A72E1C();
      v33 = sub_227A46730(v31, v32, &a10);

      *(v27 + 14) = v33;
      _os_log_impl(&dword_227904000, v24, v25, "%s-> Received session: %s.", v27, 0x16u);
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    sub_227A4D850(v34);

    v20[23] = sub_227A7272C();
    OUTLINED_FUNCTION_28(&qword_27D7DD070, &qword_27D7DD068, &qword_227AA3608);
    v35 = swift_task_alloc();
    v20[24] = v35;
    *v35 = v20;
    OUTLINED_FUNCTION_22_1(v35);
    OUTLINED_FUNCTION_34_1();

    return MEMORY[0x282200308](v36);
  }

  else
  {
    (*(v20[15] + 8))(v20[16], v20[14]);

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_34_1();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
  }
}

uint64_t sub_227A1FF90()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 48) = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_227A20018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_227A046CC(a3, v24 - v10);
  v12 = sub_227A7276C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2279F3774(v11, &qword_27D7DC5B8, &qword_227AA04D0);
  }

  else
  {
    sub_227A7275C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_227A726EC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_227A7253C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

id sub_227A202AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_227A724BC();

  if (a4)
  {
    v8 = sub_227A7240C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

void sub_227A203A8(void *a1, uint64_t a2, void *a3, void *a4, unsigned __int8 a5)
{
  switch(a5 >> 5)
  {
    case 0:
    case 2:
      goto LABEL_6;
    case 3:

      sub_227A20464(a3, a4, a5 & 0x1F);
      break;
    case 4:

      a1 = a3;
LABEL_6:

      break;
    default:
      return;
  }
}

void sub_227A20464(int a1, id a2, char a3)
{
  if (!a3)
  {
  }
}

uint64_t sub_227A20508()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v1[1] = sub_2279F50E8;
  v3 = OUTLINED_FUNCTION_86();

  return v4(v3);
}

uint64_t sub_227A205A8()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_5(v1);

  return v4(v3);
}

uint64_t sub_227A2063C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_5(v1);

  return v4(v3);
}

uint64_t objectdestroy_14Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_227A20718()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_5(v1);

  return v4(v3);
}

void sub_227A207AC()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = *(type metadata accessor for DataMessage(v2) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_227A1885C(v0, v8, v1 + v4, v10, v11, v12, v13, v14);
}

uint64_t sub_227A20870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_227A208B8()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = *(type metadata accessor for DataMessage(v2) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_227A190F4(v0, v1 + v4, v6, v7);
}

BOOL sub_227A2095C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_227A72F2C();
  sub_227A7255C();
  sub_227A72F4C();
  OUTLINED_FUNCTION_55_1();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_227A72E5C() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_227A22178(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_227A20AA4(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_227A7212C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_227A20870(&qword_27D7DD0B8, MEMORY[0x277CCB290], MEMORY[0x277CCB298]);
  v27 = a2;
  v9 = sub_227A7244C();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_227A222E0(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_227A20870(&qword_27D7DD0C0, MEMORY[0x277CCB290], MEMORY[0x277CCB2A0]);
    v15 = sub_227A7248C();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

uint64_t sub_227A20D6C(uint64_t *a1, void *a2)
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

    OUTLINED_FUNCTION_101_0();
    v9 = sub_227A72A5C();

    if (v9)
    {

      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
    }

    else
    {
      result = sub_227A72A4C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_227A21288(v7, result + 1);
        v18 = v17[2];
        if (v17[3] <= v18)
        {
          sub_227A21A18(v18 + 1);
        }

        v19 = v8;
        sub_227A220F8(v19, v17);

        *v3 = v17;
LABEL_16:
        *a1 = v19;
        return 1;
      }
    }
  }

  else
  {
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A7298C();
    OUTLINED_FUNCTION_55_1();
    v13 = ~v12;
    while (1)
    {
      v14 = v11 & v13;
      if (((*(v6 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v13)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *v3;
        v19 = a2;
        sub_227A22590(v19, v14, isUniquelyReferenced_nonNull_native);
        *v3 = v24;
        goto LABEL_16;
      }

      v15 = *(*(v6 + 48) + 8 * v14);
      v16 = sub_227A7299C();

      if (v16)
      {
        break;
      }

      v11 = v14 + 1;
    }

    v21 = *(*(v6 + 48) + 8 * v14);
    *a1 = v21;
    v22 = v21;
    return 0;
  }

  return result;
}

uint64_t sub_227A20F88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v6;
  sub_227A72F2C();
  sub_227A7255C();
  v13 = sub_227A72F4C();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v12 + 48);
    while (1)
    {
      v18 = v17 + 32 * v15;
      v19 = *(v18 + 16) == a4 && *(v18 + 24) == a5;
      if (v19 || (sub_227A72E5C() & 1) != 0)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v22 = (*(v12 + 48) + 32 * v15);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    *a1 = *v22;
    a1[1] = v23;
    a1[2] = v24;
    a1[3] = v25;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v6;

    sub_227A226F4(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v6 = v26;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

BOOL sub_227A2111C(void *a1, uint64_t a2)
{
  v4 = *v2;
  sub_227A72F2C();
  sub_227A727CC();
  sub_227A72F4C();
  OUTLINED_FUNCTION_55_1();
  v7 = ~v6;
  while (1)
  {
    v8 = v5 & v7;
    v9 = (1 << (v5 & v7)) & *(v4 + 56 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v14;

      sub_227A22888(v12, v8, isUniquelyReferenced_nonNull_native);
      *v14 = v16;
      *a1 = a2;
      return v9 == 0;
    }

    v10 = sub_227A727BC();

    if (v10)
    {
      break;
    }

    v5 = v8 + 1;
  }

  *a1 = *(*(v4 + 48) + 8 * v8);

  return v9 == 0;
}

uint64_t sub_227A21288(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD088, &unk_227AA5EC0);
    v2 = sub_227A72AEC();
    v15 = v2;
    sub_227A72A3C();
    while (1)
    {
      if (!sub_227A72A7C())
      {

        return v2;
      }

      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_227A21A18(v3 + 1);
      }

      v2 = v15;
      result = sub_227A7298C();
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
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_227A21464(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD020, &qword_227AA35B0);
  result = sub_227A72ADC();
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
      sub_227A58C28(0, (v28 + 63) >> 6, v3 + 56);
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
    sub_227A72F2C();
    sub_227A7255C();
    result = sub_227A72F4C();
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

uint64_t sub_227A216C0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_227A7212C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0C8, &qword_227AA3648);
  result = sub_227A72ADC();
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
      sub_227A58C28(0, (v28 + 63) >> 6, v9);
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
    sub_227A20870(&qword_27D7DD0B8, MEMORY[0x277CCB290], MEMORY[0x277CCB298]);
    result = sub_227A7244C();
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

uint64_t sub_227A21A18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD088, &unk_227AA5EC0);
  result = sub_227A72ADC();
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

      ++v14;
      if (v7[v6])
      {
        OUTLINED_FUNCTION_43_1();
        v10 = v16 & v15;
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_80_0();
    if (v26 >= 64)
    {
      sub_227A58C28(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_55_1();
      *v7 = v27;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_93_0();
LABEL_12:
    v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_227A7298C();
    v18 = -1 << *(v5 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v17;
    ++*(v5 + 16);
    if (!v10)
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
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_227A21C20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD038, &qword_227AA35C0);
  result = sub_227A72ADC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v30 = v3;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_227A58C28(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
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
    v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v31 = v16[3];
    sub_227A72F2C();
    sub_227A7255C();
    result = sub_227A72F4C();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 32 * v23);
    *v28 = v17;
    v28[1] = v18;
    v28[2] = v19;
    v28[3] = v31;
    ++*(v5 + 16);
    v3 = v30;
    if (!v10)
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
    v27 = *(v12 + 8 * v22);
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

uint64_t sub_227A21E90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD090, &qword_227AA3628);
  result = sub_227A72ADC();
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
      sub_227A58C28(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
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
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_227A72F2C();
    sub_227A727CC();
    result = sub_227A72F4C();
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

unint64_t sub_227A220F8(uint64_t a1, void *a2)
{
  sub_227A7298C();
  OUTLINED_FUNCTION_55_1();
  result = sub_227A72A2C();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_227A22178(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_227A21464(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_227A231A4(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_227A72F2C();
      sub_227A7255C();
      v16 = sub_227A72F4C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_227A72E5C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_227A22A38();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_227A72E9C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_227A222E0(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_227A7212C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_227A216C0(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_227A233D8(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_227A20870(&qword_27D7DD0B8, MEMORY[0x277CCB290], MEMORY[0x277CCB298]);
      v14 = sub_227A7244C();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_227A20870(&qword_27D7DD0C0, MEMORY[0x277CCB290], MEMORY[0x277CCB2A0]);
        v16 = sub_227A7248C();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_227A22F98(MEMORY[0x277CCB290], &qword_27D7DD0C8, &qword_227AA3648);
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_227A72E9C();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

unint64_t sub_227A22590(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_227A21A18(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_227A236F0(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = sub_227A7298C();
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_227A7299C();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_227A22B68();
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
    result = sub_227A72E9C();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

uint64_t sub_227A226F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v12 = result;
  v13 = *(*v6 + 16);
  v14 = *(*v6 + 24);
  if (v14 > v13 && (a6 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a6)
  {
    sub_227A21C20(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      result = sub_227A22CB8();
      goto LABEL_16;
    }

    sub_227A23900(v13 + 1);
  }

  v15 = *v6;
  sub_227A72F2C();
  sub_227A7255C();
  result = sub_227A72F4C();
  v16 = v15 + 56;
  v17 = -1 << *(v15 + 32);
  a5 = result & ~v17;
  if ((*(v15 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v15 + 48);
    do
    {
      v20 = v19 + 32 * a5;
      if (*(v20 + 16) == a3 && *(v20 + 24) == a4)
      {
        goto LABEL_19;
      }

      result = sub_227A72E5C();
      if (result)
      {
        goto LABEL_19;
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_16:
  v22 = *v7;
  *(*v7 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v23 = (*(v22 + 48) + 32 * a5);
  *v23 = v12;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_227A72E9C();
  __break(1u);
  return result;
}

unint64_t sub_227A22888(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_227A21E90(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_227A23B4C(v6 + 1);
LABEL_8:
      v8 = *v3;
      sub_227A72F2C();
      sub_227A727CC();
      result = sub_227A72F4C();
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC8E8, &qword_227AA3620);

        v10 = sub_227A727BC();

        if (v10)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_227A22E20();
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = sub_227A72E9C();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v14;
  }

  return result;
}

void sub_227A22A38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD020, &qword_227AA35B0);
  v2 = *v0;
  v3 = sub_227A72ACC();
  if (v2[2])
  {
    OUTLINED_FUNCTION_80_0();
    v6 = (v5 + 63) >> 6;
    if (v3 != v2 || v4 >= &v2[v6 + 7])
    {
      memmove(v4, v2 + 7, 8 * v6);
    }

    v8 = 0;
    *(v3 + 16) = v2[2];
    OUTLINED_FUNCTION_80_0();
    OUTLINED_FUNCTION_102_0();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_93_0();
LABEL_15:
        v18 = v14 | (v8 << 6);
        v19 = (v2[6] + 16 * v18);
        v20 = v19[1];
        v21 = (*(v3 + 48) + 16 * v18);
        *v21 = *v19;
        v21[1] = v20;
      }

      while (v11);
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
        goto LABEL_17;
      }

      ++v15;
      if (v2[v8 + 7])
      {
        OUTLINED_FUNCTION_43_1();
        v11 = v17 & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v3;
  }
}

id sub_227A22B68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD088, &unk_227AA5EC0);
  v2 = *v0;
  v3 = sub_227A72ACC();
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

void *sub_227A22CB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD038, &qword_227AA35C0);
  v2 = *v0;
  v3 = sub_227A72ACC();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

void *sub_227A22E20()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD090, &qword_227AA3628);
  v2 = *v0;
  v3 = sub_227A72ACC();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void sub_227A22F98(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v7 = v3;
  a1(0);
  OUTLINED_FUNCTION_70_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v3;
  v14 = sub_227A72ACC();
  if (v13[2])
  {
    v31 = v7;
    OUTLINED_FUNCTION_80_0();
    v17 = (v16 + 63) >> 6;
    if (v14 != v13 || v15 >= &v13[v17 + 7])
    {
      memmove(v15, v13 + 7, 8 * v17);
    }

    v19 = 0;
    *(v14 + 16) = v13[2];
    OUTLINED_FUNCTION_80_0();
    OUTLINED_FUNCTION_102_0();
    v22 = v21 & v20;
    v24 = (v23 + 63) >> 6;
    v32 = v9 + 32;
    v33 = v9 + 16;
    if ((v21 & v20) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_15:
        v29 = *(v9 + 72) * (v25 | (v19 << 6));
        (*(v9 + 16))(v12, v13[6] + v29, v4);
        (*(v9 + 32))(*(v14 + 48) + v29, v12, v4);
      }

      while (v22);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v7 = v31;
        goto LABEL_19;
      }

      ++v26;
      if (v13[v19 + 7])
      {
        OUTLINED_FUNCTION_43_1();
        v22 = v28 & v27;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v7 = v14;
  }
}

uint64_t sub_227A231A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD020, &qword_227AA35B0);
  result = sub_227A72ADC();
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
        sub_227A72F2C();

        sub_227A7255C();
        result = sub_227A72F4C();
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

uint64_t sub_227A233D8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227A7212C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0C8, &qword_227AA3648);
  v7 = sub_227A72ADC();
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
        sub_227A20870(&qword_27D7DD0B8, MEMORY[0x277CCB290], MEMORY[0x277CCB298]);
        result = sub_227A7244C();
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

uint64_t sub_227A236F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD088, &unk_227AA5EC0);
  result = sub_227A72ADC();
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
        result = sub_227A7298C();
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

uint64_t sub_227A23900(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD038, &qword_227AA35C0);
  result = sub_227A72ADC();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[3];
        v30 = v16[2];
        sub_227A72F2C();

        sub_227A7255C();
        result = sub_227A72F4C();
        v20 = -1 << *(v5 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v5 + 48) + 32 * v23);
        *v28 = v17;
        v28[1] = v18;
        v3 = v29;
        v28[2] = v30;
        v28[3] = v19;
        ++*(v5 + 16);
        if (!v10)
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
        v27 = *(v12 + 8 * v22);
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
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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

uint64_t sub_227A23B4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD090, &qword_227AA3628);
  result = sub_227A72ADC();
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
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_227A72F2C();

        sub_227A727CC();
        result = sub_227A72F4C();
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

uint64_t sub_227A23D8C(void *a1)
{
  v1 = [a1 matchID];
  if (v1)
  {
    v2 = v1;
    sub_227A724EC();
  }

  return OUTLINED_FUNCTION_86();
}

unint64_t sub_227A23DEC()
{
  result = qword_27D7DD030;
  if (!qword_27D7DD030)
  {
    sub_2279FF044(255, &qword_27D7DD028, off_2785DBD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DD030);
  }

  return result;
}

uint64_t sub_227A23E6C()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A1F6F8(v3, v4, v5, v6, v7);
}

uint64_t sub_227A23EF8()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_51_1(v1);

  return v4(v3);
}

uint64_t sub_227A23F8C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_51_1(v1);

  return v4(v3);
}

uint64_t sub_227A24020(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_227A2402C()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A1CF6C(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_49Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_227A24100()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A1DDC8(v3, v4, v5, v6, v7);
}

uint64_t sub_227A2418C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_78_0();
  v4(v3);
  OUTLINED_FUNCTION_51();
  v5 = OUTLINED_FUNCTION_86();
  v6(v5);
  return a2;
}

uint64_t sub_227A241E4()
{
  v1 = OUTLINED_FUNCTION_105_0();
  v2(v1);
  OUTLINED_FUNCTION_51();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_227A24238(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_78_0();
  v4(v3);
  OUTLINED_FUNCTION_51();
  v5 = OUTLINED_FUNCTION_86();
  v6(v5);
  return a2;
}

void OUTLINED_FUNCTION_7_7()
{
  v1[12] = sub_227A17638;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_8_8(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_9_6()
{
  *(v0 + 24) = sub_227A1736C;

  return swift_continuation_init();
}

void *OUTLINED_FUNCTION_29_1()
{

  return sub_2279FA2E8(v0, 0, 0, sub_2279FCD60, v1);
}

uint64_t OUTLINED_FUNCTION_42_1(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_2279F4CBC(a1, a2, a3, &unk_227AA4378);
}

BOOL OUTLINED_FUNCTION_46_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_53_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_71_1(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 64;
}

uint64_t OUTLINED_FUNCTION_82_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_85_0()
{
  *(v0[5] + v0[10]) = v0[13];
}

uint64_t OUTLINED_FUNCTION_86_0()
{

  return swift_arrayDestroy();
}

id OUTLINED_FUNCTION_87_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  *(v11 + 4) = v10;
  *(v11 + 12) = 2112;

  return a10;
}

uint64_t OUTLINED_FUNCTION_88_0(uint64_t a1)
{

  return sub_227A7272C();
}

uint64_t OUTLINED_FUNCTION_89_0(uint64_t a1)
{
  *(v1 + 232) = a1;
}

uint64_t OUTLINED_FUNCTION_90_0()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_91_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_107_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

id OUTLINED_FUNCTION_108_0(void *a1)
{
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;

  return v1;
}

unint64_t OUTLINED_FUNCTION_109_0(float a1, ...)
{
  va_start(va, a1);
  *v1 = a1;

  return sub_227A46730(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_110_0()
{

  return sub_227A72E5C();
}

uint64_t OUTLINED_FUNCTION_111_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_112_0()
{
}

uint64_t OUTLINED_FUNCTION_113_0()
{
}

uint64_t OUTLINED_FUNCTION_114_0()
{

  return sub_227A241E4();
}

void OUTLINED_FUNCTION_115_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t static GKDevice.zeroOutVersion(deviceType:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD108, &qword_227AA36D0);
  OUTLINED_FUNCTION_92();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD110, &qword_227AA36D8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD118, &qword_227AA36E0);
  OUTLINED_FUNCTION_92();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v22 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D7DD120, &qword_227AA36E8);
  sub_227A7213C();
  sub_227A7214C();
  (*(v5 + 8))(v8, v3);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_227A24D40(v11);
  }

  else
  {
    (*(v14 + 32))(v17, v11, v12);
    swift_getKeyPath();
    sub_227A7215C();

    v19 = MEMORY[0x22AA9FE00](v22[1], v22[2], v22[3], v22[4]);
    v21 = v20;

    v23 = v19;
    v24 = v21;
    MEMORY[0x22AA9FE40](3157040, 0xE300000000000000);
    a1 = v23;
    (*(v14 + 8))(v17, v12);
  }

  return a1;
}

uint64_t sub_227A24D40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD110, &qword_227AA36D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227A24E80()
{
  sub_227A24E60();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_227A24ECC(uint64_t a1)
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

id *sub_227A24F70()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t sub_227A24FF0()
{
  sub_227A24F70();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_227A25094(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7DD240, &qword_227AA37D0);
    v2 = sub_227A72CDC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

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
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2279F4900(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2279FF11C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2279FF11C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2279FF11C(v31, v32);
    result = sub_227A72A9C();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_2279FF11C(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_227A25358(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7DD240, &qword_227AA37D0);
    v2 = sub_227A72CDC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

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
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_2279FF11C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_2279FF11C(v29, v30);
    result = sub_227A72A9C();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
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
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_2279FF11C(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_227A2561C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_227A25B5C(a1, &v41);
  v6 = v42;
  if (v42)
  {
    v7 = v44;
    v8 = v45;
    v9 = v47;
    v39 = v46;
    v10 = v41;
    v48 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD230, &qword_227AA37C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227AA0BF0;
    *(inited + 32) = 0x707954746E657665;
    *(inited + 40) = 0xE900000000000065;
    strcpy((inited + 48), "inviteActivity");
    *(inited + 63) = -18;
    *(inited + 64) = 0x7069636974726170;
    *(inited + 72) = 0xEF65707954746E61;
    *&v49 = v10;
    *(&v49 + 1) = v6;
    v12 = v48;
    *(inited + 80) = v49;
    *(inited + 96) = 0x79546E6F69746361;
    *(inited + 104) = 0xEA00000000006570;
    *v50 = v12;
    *(inited + 112) = v12;
    *(inited + 128) = 0x7954657469766E69;
    *(inited + 136) = 0xEA00000000006570;
    *(inited + 144) = 0x6E69646E65697266;
    *(inited + 152) = 0xE900000000000067;
    sub_227A25F94(&v49, v40);
    sub_227A25F94(v50, v40);
    v13 = sub_227A7243C();
    if (a1 <= 1)
    {
      if (a3)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40[0] = v13;
        sub_227A62750(a2, a3, 0x70704174736F68, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
        v13 = v40[0];
      }

      else
      {
        if (qword_27D7DC4E8 != -1)
        {
          OUTLINED_FUNCTION_0_16(&qword_27D7DC4E8);
        }

        v26 = sub_227A7227C();
        __swift_project_value_buffer(v26, qword_27D7DE228);
        v27 = sub_227A7226C();
        v28 = sub_227A728BC();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v40[0] = v38;
          *v29 = 136315138;
          v30 = [swift_getObjCClassFromMetadata() stringForStage_];
          v31 = sub_227A724EC();
          v33 = v32;

          v34 = sub_227A46730(v31, v33, v40);

          *(v29 + 4) = v34;
          _os_log_impl(&dword_227904000, v27, v28, "FriendInviteActivityEvent: Expected a hostApp as we're in a sent stage, but no hostApp was provided. Stage: %s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v38);
          OUTLINED_FUNCTION_103();
          OUTLINED_FUNCTION_103();
        }
      }
    }

    if (v8)
    {

      v35 = swift_isUniquelyReferenced_nonNull_native();
      v40[0] = v13;
      sub_227A62750(v7, v8, 0x6574616974696E69, 0xEC00000065707954, v35);
      v13 = v40[0];
    }

    if (v9)
    {

      sub_227A25FF0(&v41);
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v40[0] = v13;
      sub_227A62750(v39, v9, 0x65736E6F70736572, 0xEC00000065707954, v36);
      v13 = v40[0];
    }

    else
    {
      sub_227A25FF0(&v41);
    }

    v37 = sub_227A25358(v13);

    return v37;
  }

  else
  {
    if (qword_27D7DC4E8 != -1)
    {
      OUTLINED_FUNCTION_0_16(&qword_27D7DC4E8);
    }

    v15 = sub_227A7227C();
    __swift_project_value_buffer(v15, qword_27D7DE228);
    v16 = sub_227A7226C();
    v17 = sub_227A728BC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v50[0] = v19;
      *v18 = 136315138;
      v20 = [swift_getObjCClassFromMetadata() stringForStage_];
      v21 = sub_227A724EC();
      v23 = v22;

      v24 = sub_227A46730(v21, v23, v50);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_227904000, v16, v17, "Unknown stage encountered when trying to build metrics fields for inviteActivity stage %s, bailing", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
    }

    return sub_227A7243C();
  }
}

unint64_t sub_227A25B5C@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if (result > 8)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v2 = *&aSender_1[8 * result];
    v3 = qword_227AA3878[result];
    v4 = *&aInitiateinitia[8 * result];
    v5 = qword_227AA3908[result];
    v6 = *&aPush_0[8 * result];
    v7 = qword_227AA3998[result];
    v8 = qword_227AA39E0[result];
    v9 = qword_227AA3A28[result];
  }

  *a2 = v2;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v8;
  a2[7] = v9;
  return result;
}

unint64_t sub_227A25CB4(uint64_t a1)
{
  result = 0x50616956746E6573;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      return 0x4D616956746E6573;
    case 2:
      v3 = 5;
      goto LABEL_9;
    case 3:
      v3 = 9;
      goto LABEL_9;
    case 4:
      return 0xD00000000000001CLL;
    case 5:
      return 0xD000000000000020;
    case 6:
      v3 = 11;
LABEL_9:
      result = v3 | 0xD000000000000010;
      break;
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      strcpy(v5, "unknownStage(");
      v4 = sub_227A72E1C();
      MEMORY[0x22AA9FE40](v4);

      result = v5[0];
      break;
  }

  return result;
}

GKFriendInviteActivityEvent __swiftcall GKFriendInviteActivityEvent.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for GKFriendInviteActivityEvent()
{
  result = qword_27D7DD228;
  if (!qword_27D7DD228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DD228);
  }

  return result;
}

uint64_t sub_227A25FF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD238, &qword_227AA37C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_227A2606C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_227A260AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1)
{

  return swift_once();
}

id sub_227A2612C()
{
  result = [objc_allocWithZone(type metadata accessor for MatchBackgroundAssertionManager()) init];
  qword_27D7DD250 = result;
  return result;
}

id static MatchBackgroundAssertionManager.shared.getter()
{
  if (qword_27D7DC000 != -1)
  {
    swift_once();
  }

  v1 = qword_27D7DD250;

  return v1;
}

id sub_227A261E0()
{
  sub_2279FF044(0, &qword_27D7DD2E8, 0x277D46E38);
  result = sub_227A26258(0xD000000000000011, 0x8000000227A991E0, 0xD000000000000012, 0x8000000227A99200);
  qword_27D7DD258 = result;
  return result;
}

id sub_227A26258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_227A724BC();

  v5 = sub_227A724BC();

  v6 = [swift_getObjCClassFromMetadata() attributeWithDomain:v4 name:v5];

  return v6;
}

void *MatchBackgroundAssertionManager.activeAssertion.getter()
{
  v1 = OBJC_IVAR___GKMatchBackgroundAssertionManager_activeAssertion;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MatchBackgroundAssertionManager.activeAssertion.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GKMatchBackgroundAssertionManager_activeAssertion;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_227A26480()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___GKMatchBackgroundAssertionManager_activeAssertion] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id MatchBackgroundAssertionManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  MatchBackgroundAssertionManager.invalidate()();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall MatchBackgroundAssertionManager.invalidate()()
{
  v1 = v0;
  v2 = OBJC_IVAR___GKMatchBackgroundAssertionManager_activeAssertion;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = v3;
    if ([v4 isValid])
    {
      if (qword_280B54DB0 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_280B54DB0);
      }

      v5 = sub_227A7227C();
      __swift_project_value_buffer(v5, qword_280B54DB8);
      v6 = v4;
      v7 = sub_227A7226C();
      v8 = sub_227A728AC();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = OUTLINED_FUNCTION_106();
        v10 = OUTLINED_FUNCTION_107();
        v31 = v10;
        *v9 = 136315138;
        v11 = [v6 explanation];
        v12 = sub_227A724EC();
        v14 = v13;

        v15 = sub_227A46730(v12, v14, &v31);

        *(v9 + 4) = v15;
        OUTLINED_FUNCTION_1_3(&dword_227904000, v16, v17, "Invalidating assertion: %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v10);
        OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_103();
      }

      [v6 removeObserver_];
      [v6 invalidate];
    }

    else
    {
      if (qword_280B54DB0 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_280B54DB0);
      }

      v18 = sub_227A7227C();
      __swift_project_value_buffer(v18, qword_280B54DB8);
      v6 = v4;
      v19 = sub_227A7226C();
      v20 = sub_227A728AC();

      if (!os_log_type_enabled(v19, v20))
      {

        goto LABEL_14;
      }

      v21 = OUTLINED_FUNCTION_106();
      v22 = OUTLINED_FUNCTION_107();
      v31 = v22;
      *v21 = 136315138;
      v23 = [v6 explanation];
      v24 = sub_227A724EC();
      v26 = v25;

      v27 = sub_227A46730(v24, v26, &v31);

      *(v21 + 4) = v27;
      OUTLINED_FUNCTION_1_3(&dword_227904000, v28, v29, "Skipping invalidation of already invalid assertion: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
    }

LABEL_14:
    v30 = *(v1 + v2);
    *(v1 + v2) = 0;
  }
}

Swift::Void __swiftcall MatchBackgroundAssertionManager.acquire()()
{
  v1 = v0;
  v71 = *MEMORY[0x277D85DE8];
  MatchBackgroundAssertionManager.invalidate()();
  v2 = [objc_opt_self() processInfo];
  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_280B54DB0);
  }

  v3 = sub_227A7227C();
  __swift_project_value_buffer(v3, qword_280B54DB8);
  v4 = v2;
  v5 = sub_227A7226C();
  v6 = sub_227A728AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_107();
    v69 = v8;
    *v7 = 67109378;
    *(v7 + 4) = [v4 processIdentifier];

    *(v7 + 8) = 2080;
    v9 = [v4 processName];
    v10 = sub_227A724EC();
    v11 = v1;
    v12 = v4;
    v14 = v13;

    v15 = sub_227A46730(v10, v14, &v69);
    v4 = v12;
    v1 = v11;

    *(v7 + 10) = v15;
    _os_log_impl(&dword_227904000, v5, v6, "Acquiring assertion for process id:%d name:%s", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_103();
  }

  else
  {
  }

  if (qword_27D7DC008 != -1)
  {
    swift_once();
  }

  v16 = qword_27D7DD258;
  v17 = [qword_27D7DD258 name];
  v18 = sub_227A724EC();
  v20 = v19;

  v69 = v18;
  v70 = v20;
  MEMORY[0x22AA9FE40](23328, 0xE200000000000000);
  LODWORD(v68) = [v4 &selRef_openHTTPsUniversalLink_];
  v21 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v21);

  MEMORY[0x22AA9FE40](8250, 0xE200000000000000);
  v22 = [v4 processName];
  v23 = sub_227A724EC();
  v25 = v24;

  MEMORY[0x22AA9FE40](v23, v25);

  MEMORY[0x22AA9FE40](93, 0xE100000000000000);
  v26 = v69;
  v27 = v70;
  v28 = [objc_opt_self() targetWithPid_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD268, &unk_227AA3A80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_227AA3A70;
  *(v29 + 32) = v16;
  objc_allocWithZone(MEMORY[0x277D46DB8]);
  v30 = v16;
  v31 = sub_227A270F8(v26, v27, v28, v29);
  [v31 addObserver_];
  v69 = 0;
  v32 = [v31 acquireWithError_];
  v33 = v69;
  if (v32)
  {
    v34 = OBJC_IVAR___GKMatchBackgroundAssertionManager_activeAssertion;
    swift_beginAccess();
    v35 = v1;
    v36 = *(v1 + v34);
    *(v35 + v34) = v31;
    v37 = v33;
    v38 = v31;

    v39 = v38;
    v40 = sub_227A7226C();
    LOBYTE(v36) = sub_227A728AC();

    if (os_log_type_enabled(v40, v36))
    {
      v41 = OUTLINED_FUNCTION_106();
      v42 = OUTLINED_FUNCTION_107();
      v68 = v42;
      *v41 = 136315138;
      v43 = [v39 explanation];
      v44 = sub_227A724EC();
      v46 = v45;

      v47 = sub_227A46730(v44, v46, &v68);

      *(v41 + 4) = v47;
      OUTLINED_FUNCTION_1_3(&dword_227904000, v48, v49, "Successfully acquired assertion: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
    }

    else
    {
    }
  }

  else
  {
    v50 = v69;
    v51 = sub_227A71A5C();

    swift_willThrow();
    v52 = v31;
    v53 = v51;
    v54 = sub_227A7226C();
    v55 = sub_227A728BC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = OUTLINED_FUNCTION_107();
      v69 = v67;
      *v56 = 136315394;
      v57 = v4;
      v58 = [v52 explanation];
      v59 = v1;
      v60 = sub_227A724EC();
      v62 = v61;

      v4 = v57;
      v63 = sub_227A46730(v60, v62, &v69);

      *(v56 + 4) = v63;
      v1 = v59;
      *(v56 + 12) = 2112;
      v64 = v51;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 14) = v65;
      *v66 = v65;
      _os_log_impl(&dword_227904000, v54, v55, "Failed to acquire assertion: %s, error: %@", v56, 0x16u);
      sub_227A271C4(v66);
      OUTLINED_FUNCTION_103();
      __swift_destroy_boxed_opaque_existential_0Tm(v67);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
    }

    [v52 removeObserver_];
  }
}

void MatchBackgroundAssertionManager.assertionWillInvalidate(_:)(void *a1)
{
  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_280B54DB0);
  }

  v2 = sub_227A7227C();
  __swift_project_value_buffer(v2, qword_280B54DB8);
  v3 = a1;
  oslog = sub_227A7226C();
  v4 = sub_227A728AC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = OUTLINED_FUNCTION_106();
    v6 = OUTLINED_FUNCTION_107();
    v13 = v6;
    *v5 = 136315138;
    v7 = [v3 explanation];
    v8 = sub_227A724EC();
    v10 = v9;

    v11 = sub_227A46730(v8, v10, &v13);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_227904000, oslog, v4, "Assertion is about to invalidate: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_103();
  }
}

id sub_227A270F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_227A724BC();

  sub_2279FF044(0, &qword_27D7DD2E0, 0x277D46DD8);
  v7 = sub_227A7268C();

  v8 = [v4 initWithExplanation:v6 target:a3 attributes:v7];

  return v8;
}

void *sub_227A271A0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_227A271C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7DD270, &qword_227AA10E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227A2722C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_227A272A4(uint64_t a1)
{
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](a1);
  return sub_227A72F4C();
}

uint64_t sub_227A272EC(uint64_t a1)
{
  v1 = a1;
  sub_227A72F2C();
  sub_227A277A8(v3, v1);
  return sub_227A72F4C();
}

uint64_t sub_227A27340(uint64_t a1)
{
  v1 = a1;
  sub_227A72F2C();
  v2 = sub_227A3611C(v1);
  OUTLINED_FUNCTION_0_17(v2, v3, v4);

  return sub_227A72F4C();
}

uint64_t sub_227A27390(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 10:
      OUTLINED_FUNCTION_3_7();
      break;
    default:
      break;
  }

  sub_227A7255C();
}

uint64_t sub_227A27530(uint64_t a1, unsigned __int8 a2)
{
  sub_227A7255C();
}

uint64_t sub_227A275B8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_3_7();
      break;
    default:
      break;
  }

  sub_227A7255C();
}

uint64_t sub_227A276A4(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_12();
  }

  sub_227A7255C();
}

uint64_t sub_227A2772C(uint64_t a1, char a2)
{
  sub_227A7255C();
}

uint64_t sub_227A277A8(uint64_t a1, char a2)
{
  sub_227A7255C();
}

uint64_t sub_227A27878(uint64_t a1, char a2)
{
  sub_227A72F2C();
  sub_227A277A8(v4, a2);
  return sub_227A72F4C();
}

uint64_t sub_227A278BC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_8(a1, a2);
  sub_227A7255C();

  return sub_227A72F4C();
}

uint64_t sub_227A27944(uint64_t a1, unsigned __int8 a2)
{
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](a2);
  return sub_227A72F4C();
}

uint64_t sub_227A27988(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_8(a1, a2);
  if (!v2)
  {
    OUTLINED_FUNCTION_1_12();
  }

  sub_227A7255C();

  return sub_227A72F4C();
}

uint64_t sub_227A27A1C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_8(a1, a2);
  v3 = sub_227A3611C(v2);
  OUTLINED_FUNCTION_0_17(v3, v4, v5);

  return sub_227A72F4C();
}

uint64_t sub_227A27A60(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_8(a1, a2);
  sub_227A7255C();

  return sub_227A72F4C();
}

uint64_t sub_227A27AF4(uint64_t a1, uint64_t a2)
{
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](a2);
  return sub_227A72F4C();
}

uint64_t sub_227A27B38(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_8(a1, a2);
  v2 = ACAccount.GKConstants.rawValue.getter();
  OUTLINED_FUNCTION_0_17(v2, v3, v4);

  return sub_227A72F4C();
}

GameCenterFoundation::AppMetadataGameCenterFeature_optional __swiftcall AppMetadataGameCenterFeature.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_227A72CFC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppMetadataGameCenterFeature.rawValue.getter()
{
  result = 0x676E656C6C616863;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x6F6272656461656CLL;
      break;
    case 3:
      result = 0x6D65766569686361;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_227A27C84()
{
  result = qword_27D7DD350;
  if (!qword_27D7DD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DD350);
  }

  return result;
}

unint64_t sub_227A27CFC@<X0>(unint64_t *a1@<X8>)
{
  result = AppMetadataGameCenterFeature.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AppMetadataGameCenterFeature(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_17(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_227A7255C();
}

void *OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2, ...)
{

  return sub_227A72F2C();
}

uint64_t AuthenticationPluginResponseHandler.ServiceData.serviceLastUpdatedTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AuthenticationPluginResponseHandler.ServiceData(0) + 60);

  return sub_227A28088(v3, a1);
}

uint64_t type metadata accessor for AuthenticationPluginResponseHandler.ServiceData(uint64_t a1)
{
  result = qword_27D7DD370;
  if (!qword_27D7DD370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227A28088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AuthenticationPluginResponseHandler.ServiceData.init(response:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v110 - v3;
  v115[0] = 0x737574617473;
  v115[1] = 0xE600000000000000;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_2_9();
  v5 = sub_2279FEFC8(v116);
  if (v118)
  {
    if (OUTLINED_FUNCTION_1_13(v5, v6, v7, MEMORY[0x277D83B88]))
    {
      v8 = v115[0];
      if (v115[0])
      {
        strcpy(v117, "status-message");
        HIBYTE(v117[1]) = -18;
        OUTLINED_FUNCTION_13_3();
        OUTLINED_FUNCTION_2_9();

        v9 = sub_2279FEFC8(v116);
        if (v118)
        {
          v12 = OUTLINED_FUNCTION_1_13(v9, v10, v11, MEMORY[0x277D837D0]);
          if (v12)
          {
            v13 = v115[0];
          }

          else
          {
            v13 = 0;
          }

          if (v12)
          {
            v14 = v115[1];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          sub_227A04918(v117, &qword_27D7DC610, &qword_227AA0590);
          v13 = 0;
          v14 = 0;
        }

        sub_227A28D2C();
        OUTLINED_FUNCTION_95_0();
        swift_allocError();
        *v50 = v8;
        v50[1] = v13;
        v50[2] = v14;
        return swift_willThrow();
      }
    }
  }

  else
  {
    sub_227A04918(v117, &qword_27D7DC610, &qword_227AA0590);
  }

  strcpy(v115, "service-data");
  BYTE5(v115[1]) = 0;
  HIWORD(v115[1]) = -5120;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_2_9();

  sub_2279FEFC8(v116);
  if (!v118)
  {
    sub_227A04918(v117, &qword_27D7DC610, &qword_227AA0590);
    goto LABEL_19;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD010, &qword_227AA3C00);
  if ((OUTLINED_FUNCTION_1_13(v15, v16, v17, v15) & 1) == 0)
  {
LABEL_19:
    sub_227A28D2C();
    OUTLINED_FUNCTION_95_0();
    swift_allocError();
    *v24 = 0;
    v24[1] = 0;
    v24[2] = 3;
    return swift_willThrow();
  }

  v117[0] = 0x7361696C61;
  v117[1] = 0xE500000000000000;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_9();
  v18 = sub_2279FEFC8(v116);
  if (v118)
  {
    OUTLINED_FUNCTION_1_13(v18, v19, v20, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_4_4();
    if (v23)
    {
      v22 = 0;
    }
  }

  else
  {
    sub_227A04918(v117, &qword_27D7DC610, &qword_227AA0590);
    v21 = 0;
    v22 = 0;
  }

  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
  v119 = v22;
  strcpy(v117, "firstName");
  WORD1(v117[1]) = 0;
  HIDWORD(v117[1]) = -385875968;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_9();
  v25 = sub_2279FEFC8(v116);
  if (v118)
  {
    OUTLINED_FUNCTION_1_13(v25, v26, v27, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_4_4();
    if (v23)
    {
      v29 = 0;
    }
  }

  else
  {
    sub_227A04918(v117, &qword_27D7DC610, &qword_227AA0590);
    v28 = 0;
    v29 = 0;
  }

  *(a1 + 64) = v28;
  *(a1 + 72) = v29;
  v114 = v29;
  strcpy(v117, "lastName");
  BYTE1(v117[1]) = 0;
  WORD1(v117[1]) = 0;
  HIDWORD(v117[1]) = -402653184;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_9();
  v30 = sub_2279FEFC8(v116);
  if (v118)
  {
    OUTLINED_FUNCTION_1_13(v30, v31, v32, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_4_4();
    if (v23)
    {
      v34 = 0;
    }
  }

  else
  {
    sub_227A04918(v117, &qword_27D7DC610, &qword_227AA0590);
    v33 = 0;
    v34 = 0;
  }

  *(a1 + 80) = v33;
  *(a1 + 88) = v34;
  v113 = v34;
  v117[0] = 1684632420;
  v117[1] = 0xE400000000000000;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_9();
  v35 = sub_2279FEFC8(v116);
  if (v118)
  {
    OUTLINED_FUNCTION_1_13(v35, v36, v37, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_4_4();
    if (v23)
    {
      v40 = 0;
    }

    else
    {
      v40 = v39;
    }
  }

  else
  {
    sub_227A04918(v117, &qword_27D7DC610, &qword_227AA0590);
    v38 = 0;
    v40 = 0;
  }

  *(a1 + 96) = v38;
  *(a1 + 104) = v40;
  strcpy(v115, "altDSID");
  v115[1] = 0xE700000000000000;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_2_9();
  v41 = sub_2279FEFC8(v116);
  if (v118)
  {
    if (OUTLINED_FUNCTION_1_13(v41, v42, v43, MEMORY[0x277D837D0]))
    {
      v44 = v115[0];
      v45 = v115[1];
      goto LABEL_50;
    }
  }

  else
  {
    sub_227A04918(v117, &qword_27D7DC610, &qword_227AA0590);
  }

  strcpy(v115, "alternate-dsid");
  HIBYTE(v115[1]) = -18;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_2_9();
  v46 = sub_2279FEFC8(v116);
  if (v118)
  {
    v49 = OUTLINED_FUNCTION_1_13(v46, v47, v48, MEMORY[0x277D837D0]);
    v44 = v115[0];
    if (v49)
    {
      v45 = v115[1];
    }

    else
    {
      v45 = 0;
    }

    if (!v49)
    {
      v44 = 0;
    }
  }

  else
  {
    sub_227A04918(v117, &qword_27D7DC610, &qword_227AA0590);
    v45 = 0;
    v44 = 0;
  }

LABEL_50:
  *(a1 + 112) = v44;
  *(a1 + 120) = v45;
  v115[0] = 7761509;
  v115[1] = 0xE300000000000000;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_2_9();
  v52 = sub_2279FEFC8(v116);
  if (v118)
  {
    if (OUTLINED_FUNCTION_1_13(v52, v53, v54, MEMORY[0x277D837D0]))
    {
      v55 = sub_227A724BC();

      goto LABEL_55;
    }
  }

  else
  {
    sub_227A04918(v117, &qword_27D7DC610, &qword_227AA0590);
  }

  v55 = 0;
LABEL_55:
  v56 = [objc_opt_self() environmentForString_];

  *(a1 + 128) = v56;
  strcpy(v115, "apple-id");
  BYTE1(v115[1]) = 0;
  WORD1(v115[1]) = 0;
  HIDWORD(v115[1]) = -402653184;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_2_9();
  v57 = sub_2279FEFC8(v116);
  if (!v118)
  {
LABEL_65:

    sub_227A04918(v117, &qword_27D7DC610, &qword_227AA0590);
LABEL_69:
    sub_227A28D2C();
    OUTLINED_FUNCTION_95_0();
    swift_allocError();
    *v70 = 0;
    v70[1] = 0;
    v70[2] = 4;
    swift_willThrow();
  }

  if ((OUTLINED_FUNCTION_1_13(v57, v58, v59, MEMORY[0x277D837D0]) & 1) == 0)
  {
LABEL_68:

    goto LABEL_69;
  }

  v61 = v115[0];
  v60 = v115[1];
  strcpy(v115, "auth-token");
  BYTE3(v115[1]) = 0;
  HIDWORD(v115[1]) = -369098752;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_2_9();
  v62 = sub_2279FEFC8(v116);
  if (!v118)
  {
LABEL_64:

    goto LABEL_65;
  }

  if ((OUTLINED_FUNCTION_1_13(v62, v63, v64, MEMORY[0x277D837D0]) & 1) == 0)
  {
LABEL_67:

    goto LABEL_68;
  }

  v111 = v115[0];
  v112 = v61;
  v65 = v115[1];
  strcpy(v115, "player-id");
  WORD1(v115[1]) = 0;
  HIDWORD(v115[1]) = -385875968;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_2_9();
  v66 = sub_2279FEFC8(v116);
  if (!v118)
  {

    goto LABEL_64;
  }

  if ((OUTLINED_FUNCTION_1_13(v66, v67, v68, MEMORY[0x277D837D0]) & 1) == 0)
  {

    goto LABEL_67;
  }

  v69 = v115[1];
  if (!(v40 | v45))
  {

    goto LABEL_67;
  }

  v71 = v115[0];
  v72 = v111;
  *a1 = v112;
  *(a1 + 8) = v60;
  *(a1 + 16) = v72;
  *(a1 + 24) = v65;
  *(a1 + 32) = v71;
  *(a1 + 40) = v69;
  v117[0] = sub_227A724EC();
  v117[1] = v73;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_9();
  sub_2279FEFC8(v116);
  v74 = v118;
  if (v118)
  {
    __swift_project_boxed_opaque_existential_1(v117, v118);
    OUTLINED_FUNCTION_10_5();
    v76 = v75;
    MEMORY[0x28223BE20](v77);
    OUTLINED_FUNCTION_1_2();
    v80 = v79 - v78;
    (*(v76 + 16))(v79 - v78);
    v81 = sub_227A72E4C();
    (*(v76 + 8))(v80, v74);
    __swift_destroy_boxed_opaque_existential_0Tm(v117);
  }

  else
  {
    v81 = 0;
  }

  v82 = objc_opt_self();
  v83 = [v82 associationIDFromServerResult_];
  swift_unknownObjectRelease();
  if (v83)
  {
    v84 = sub_227A724EC();
    v86 = v85;
  }

  else
  {
    v84 = 0;
    v86 = 0;
  }

  *(a1 + 144) = v84;
  *(a1 + 152) = v86;
  v117[0] = sub_227A724EC();
  v117[1] = v87;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_9();
  sub_2279FEFC8(v116);
  v88 = v118;
  if (v118)
  {
    __swift_project_boxed_opaque_existential_1(v117, v118);
    v119 = v82;
    OUTLINED_FUNCTION_10_5();
    v90 = v89;
    MEMORY[0x28223BE20](v91);
    OUTLINED_FUNCTION_1_2();
    v94 = v93 - v92;
    (*(v90 + 16))(v93 - v92);
    v95 = sub_227A72E4C();
    (*(v90 + 8))(v94, v88);
    v82 = v119;
    __swift_destroy_boxed_opaque_existential_0Tm(v117);
  }

  else
  {
    v95 = 0;
  }

  v96 = [v82 integrationConsentValueFromServerResult_];
  swift_unknownObjectRelease();
  *(a1 + 136) = v96;
  v117[0] = sub_227A724EC();
  v117[1] = v97;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_9();

  sub_2279FEFC8(v116);
  v98 = v118;
  if (v118)
  {
    __swift_project_boxed_opaque_existential_1(v117, v118);
    OUTLINED_FUNCTION_10_5();
    v100 = v99;
    MEMORY[0x28223BE20](v101);
    OUTLINED_FUNCTION_1_2();
    v104 = v103 - v102;
    (*(v100 + 16))(v103 - v102);
    v105 = sub_227A72E4C();
    (*(v100 + 8))(v104, v98);
    __swift_destroy_boxed_opaque_existential_0Tm(v117);
  }

  else
  {
    v105 = 0;
  }

  v106 = [v82 dateFromServerResult_];
  swift_unknownObjectRelease();
  if (v106)
  {
    sub_227A71C0C();

    v107 = 0;
  }

  else
  {
    v107 = 1;
  }

  v108 = sub_227A71C2C();
  __swift_storeEnumTagSinglePayload(v4, v107, 1, v108);
  v109 = type metadata accessor for AuthenticationPluginResponseHandler.ServiceData(0);
  return sub_227A28D80(v4, a1 + *(v109 + 60));
}

unint64_t sub_227A28D2C()
{
  result = qword_27D7DD360;
  if (!qword_27D7DD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DD360);
  }

  return result;
}

uint64_t sub_227A28D80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AuthenticationPluginResponseHandler.ResponseError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  switch(v3)
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_26;
      }

      v7 = OUTLINED_FUNCTION_76();
      sub_227A2906C(v7, v8, 1);
      v9 = OUTLINED_FUNCTION_7_8();
      sub_227A2906C(v9, v10, 1);
      return v6;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_26;
      }

      v20 = OUTLINED_FUNCTION_76();
      sub_227A2906C(v20, v21, 2);
      v13 = OUTLINED_FUNCTION_7_8();
      v15 = 2;
      goto LABEL_14;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_26;
      }

      v16 = OUTLINED_FUNCTION_76();
      sub_227A2906C(v16, v17, 3);
      v13 = OUTLINED_FUNCTION_7_8();
      v15 = 3;
      goto LABEL_14;
    case 4:
      if (v6 != 4)
      {
        goto LABEL_26;
      }

      v18 = OUTLINED_FUNCTION_76();
      sub_227A2906C(v18, v19, 4);
      v13 = OUTLINED_FUNCTION_7_8();
      v15 = 4;
      goto LABEL_14;
    case 5:
      if (v6 != 5)
      {
        goto LABEL_26;
      }

      v11 = OUTLINED_FUNCTION_76();
      sub_227A2906C(v11, v12, 5);
      v13 = OUTLINED_FUNCTION_7_8();
      v15 = 5;
      goto LABEL_14;
    case 6:
      if (v6 != 6)
      {
        goto LABEL_26;
      }

      v22 = OUTLINED_FUNCTION_76();
      sub_227A2906C(v22, v23, 6);
      v13 = OUTLINED_FUNCTION_7_8();
      v15 = 6;
      goto LABEL_14;
    default:
      if ((v6 - 1) >= 6 && v2 == v5)
      {
        if (v3)
        {
          if (v6)
          {
            if (a1[1] == v4 && v3 == v6)
            {
              v64 = OUTLINED_FUNCTION_0_18();
              sub_227A29054(v64, v65, v66);
              v67 = OUTLINED_FUNCTION_0_18();
              sub_227A29054(v67, v68, v69);
              v70 = OUTLINED_FUNCTION_0_18();
              sub_227A2906C(v70, v71, v72);
              v13 = OUTLINED_FUNCTION_0_18();
LABEL_14:
              sub_227A2906C(v13, v14, v15);
            }

            else
            {
              v25 = sub_227A72E5C();
              v26 = OUTLINED_FUNCTION_6_7();
              sub_227A29054(v26, v27, v28);
              v29 = OUTLINED_FUNCTION_0_18();
              sub_227A29054(v29, v30, v31);
              v32 = OUTLINED_FUNCTION_0_18();
              sub_227A2906C(v32, v33, v34);
              v35 = OUTLINED_FUNCTION_6_7();
              sub_227A2906C(v35, v36, v37);
              if ((v25 & 1) == 0)
              {
                return 0;
              }
            }

            return 1;
          }

          sub_227A29054(*a1, a2[1], 0);
          sub_227A29054(v2, v4, 0);
          v58 = OUTLINED_FUNCTION_0_18();
          sub_227A29054(v58, v59, v60);
          v61 = OUTLINED_FUNCTION_0_18();
          sub_227A2906C(v61, v62, v63);
        }

        else
        {

          v48 = OUTLINED_FUNCTION_6_7();
          sub_227A29054(v48, v49, v50);
          v51 = OUTLINED_FUNCTION_76();
          sub_227A29054(v51, v52, 0);
          v53 = OUTLINED_FUNCTION_76();
          sub_227A2906C(v53, v54, 0);
          v55 = OUTLINED_FUNCTION_6_7();
          sub_227A2906C(v55, v56, v57);
          if (!v6)
          {
            return 1;
          }
        }

        v46 = v2;
      }

      else
      {
LABEL_26:
        v38 = OUTLINED_FUNCTION_7_8();
        sub_227A29054(v38, v39, v6);
        v40 = OUTLINED_FUNCTION_0_18();
        sub_227A29054(v40, v41, v42);
        v43 = OUTLINED_FUNCTION_0_18();
        sub_227A2906C(v43, v44, v45);
        v46 = v5;
      }

      sub_227A2906C(v46, v4, v6);
      return 0;
  }
}

uint64_t sub_227A29054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 1) >= 6)
  {
  }

  return result;
}

uint64_t sub_227A2906C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 1) >= 6)
  {
  }

  return result;
}

uint64_t AuthenticationPluginResponseHandler.__allocating_init(preferences:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t AuthenticationPluginResponseHandler.process(response:account:store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  type metadata accessor for AuthenticationPluginResponseHandler.ServiceData(0);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227A29168, 0, 0);
}

uint64_t sub_227A29168()
{
  v84 = v0;
  if (qword_27D7DC4C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_227A7227C();
  __swift_project_value_buffer(v2, qword_27D7DE1B0);
  v3 = v1;

  v4 = sub_227A7226C();
  v5 = sub_227A728AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_107();
    v83[0] = v9;
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2080;
    v10 = v6;
    v11 = sub_227A7242C();
    v13 = sub_227A46730(v11, v12, v83);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_227904000, v4, v5, "Processing account %@ with parameters %s.", v7, 0x16u);
    sub_227A04918(v8, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_103();
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_103();
  }

  v14 = *(v0 + 192);

  AuthenticationPluginResponseHandler.ServiceData.init(response:)(v14);
  if ((sub_227A29B78() & 1) == 0)
  {
    v18 = [*(v0 + 160) accountType];
    if (!v18)
    {
      __break(1u);
      return MEMORY[0x282200938](v18, v19, v20, v21, v22, v23, v24, v25);
    }

    v26 = sub_227A2A5D8(v18);
    v28 = v27;
    v29 = sub_227A724EC();
    if (v28)
    {
      if (v26 == v29 && v28 == v30)
      {

        goto LABEL_18;
      }

      v32 = sub_227A72E5C();

      if (v32)
      {
LABEL_18:
        sub_227A2A6A4(*(v0 + 192), *(v0 + 184));
        v33 = sub_227A7226C();
        v34 = sub_227A728AC();
        v35 = os_log_type_enabled(v33, v34);
        v36 = *(v0 + 184);
        if (v35)
        {
          v37 = swift_slowAlloc();
          v38 = OUTLINED_FUNCTION_107();
          *v37 = 136315138;
          v39 = v36[1];
          v81 = *v36;
          v83[0] = v38;

          sub_227A2A648(v36);
          v40 = sub_227A46730(v81, v39, v83);

          *(v37 + 4) = v40;
          _os_log_impl(&dword_227904000, v33, v34, "Looking for GC account with username: %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v38);
          OUTLINED_FUNCTION_103();
          OUTLINED_FUNCTION_103();
        }

        else
        {

          sub_227A2A648(v36);
        }

        v41 = *(v0 + 168);
        v42 = sub_227A724EC();
        v44 = sub_227A2A708(v42, v43, v41);
        if (v44)
        {
          v45 = v44;
          v46 = *(v0 + 192);
          v47 = v46[14];
          v48 = v46[15];
          v50 = v46[12];
          v49 = v46[13];
          Array<A>.gkExistingAccount(matchingAltDSID:matchingDSID:matchingUserName:)(v47, v48, v50, v49, *v46, v46[1], v44);
          *(v0 + 200) = v51;
          if (v51)
          {
            v52 = v51;
            v80 = v47;
            v53 = *(v0 + 192);
            Array<A>.gkHasPrimaryAccount(in:)(v53[16], v45);
            v82 = v52;
            LOBYTE(v52) = v54;

            v55 = v52 & 1;
            v56 = v82;
            sub_227A29BB8(v82, v55, v53);
            v59 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
            *(v0 + 208) = v59;
            if (v48)
            {

              v60 = sub_227A7226C();
              v61 = sub_227A7289C();

              if (os_log_type_enabled(v60, v61))
              {
                v62 = swift_slowAlloc();
                v63 = OUTLINED_FUNCTION_107();
                v83[0] = v63;
                *v62 = 136315138;
                *(v62 + 4) = sub_227A46730(v80, v48, v83);
                OUTLINED_FUNCTION_14_4(&dword_227904000, v64, v65, "Telling authkit account is in use using altDSID: %s");
                __swift_destroy_boxed_opaque_existential_0Tm(v63);
                OUTLINED_FUNCTION_103();
                OUTLINED_FUNCTION_103();
              }

              if (!v59)
              {
                goto LABEL_42;
              }

              v66 = v59;
              v67 = sub_227A724BC();
              [v66 setAppleIDWithAltDSID:v67 inUse:1 forService:6];
            }

            else
            {
              if (!v49)
              {
                goto LABEL_42;
              }

              v67 = sub_227A724BC();

              v68 = sub_227A7226C();
              v69 = sub_227A7289C();
              if (os_log_type_enabled(v68, v69))
              {
                v70 = swift_slowAlloc();
                v71 = OUTLINED_FUNCTION_107();
                v83[0] = v71;
                *v70 = 136315138;
                v72 = sub_227A46730(v50, v49, v83);

                *(v70 + 4) = v72;
                OUTLINED_FUNCTION_14_4(&dword_227904000, v73, v74, "Telling authkit account is in use using DSID: %s");
                __swift_destroy_boxed_opaque_existential_0Tm(v71);
                v56 = v82;
                OUTLINED_FUNCTION_103();
                OUTLINED_FUNCTION_103();
              }

              else
              {
              }

              if (!v59)
              {
LABEL_41:

LABEL_42:
                v78 = *(v0 + 168);
                *(v0 + 16) = v0;
                *(v0 + 56) = v0 + 144;
                *(v0 + 24) = sub_227A29998;
                v79 = swift_continuation_init();
                *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD368, &unk_227AA3C10);
                *(v0 + 80) = MEMORY[0x277D85DD0];
                *(v0 + 88) = 1107296256;
                *(v0 + 96) = sub_227A2A164;
                *(v0 + 104) = &block_descriptor_4;
                *(v0 + 112) = v79;
                [v78 gkSaveAccount:v56 verify:0 withCompletion:v0 + 80];
                v18 = (v0 + 16);

                return MEMORY[0x282200938](v18, v19, v20, v21, v22, v23, v24, v25);
              }

              v75 = v59;
              v76 = [v67 longLongValue];
              v77 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
              [v75 setAppleIDWithDSID:v77 inUse:1 forService:6];
            }

            goto LABEL_41;
          }
        }

        v15 = *(v0 + 192);
        sub_227A28D2C();
        OUTLINED_FUNCTION_95_0();
        swift_allocError();
        *v16 = 0;
        v16[1] = 0;
        v17 = 6;
        goto LABEL_26;
      }
    }

    else
    {
    }

    v15 = *(v0 + 192);
    sub_227A28D2C();
    OUTLINED_FUNCTION_95_0();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    v17 = 2;
    goto LABEL_26;
  }

  v15 = *(v0 + 192);
  sub_227A28D2C();
  OUTLINED_FUNCTION_95_0();
  swift_allocError();
  *v16 = 0;
  v16[1] = 0;
  v17 = 1;
LABEL_26:
  v16[2] = v17;
  swift_willThrow();
  sub_227A2A648(v15);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_227A29998()
{

  return MEMORY[0x2822009F8](sub_227A29A78, 0, 0);
}

uint64_t sub_227A29A78()
{
  v1 = v0[18];
  v2 = [v1 error];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  if (v2)
  {
    swift_willThrow();

    sub_227A2A648(v5);
  }

  else
  {
    sub_227A2A648(v0[24]);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_227A29B78()
{
  if ([v0 isAccountModificationRestricted])
  {
    return 1;
  }

  else
  {
    return [v0 isGameCenterRestricted];
  }
}

void sub_227A29BB8(void *a1, char a2, void *a3)
{
  if (qword_27D7DC4C0 != -1)
  {
    swift_once();
  }

  v6 = sub_227A7227C();
  __swift_project_value_buffer(v6, qword_27D7DE1B0);
  v7 = a1;
  v8 = sub_227A7226C();
  v9 = sub_227A728DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = a2;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40 = v12;
    *v11 = 136315138;
    v13 = sub_227A2AAE0(v7);
    v15 = v14;

    if (!v15)
    {
      __break(1u);
      goto LABEL_27;
    }

    v16 = sub_227A46730(v13, v15, &v40);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_227904000, v8, v9, "Updating token for account %s.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x22AAA1930](v12, -1, -1);
    MEMORY[0x22AAA1930](v11, -1, -1);

    a2 = v10;
  }

  else
  {
  }

  [v7 setAuthenticated_];
  v17 = a3[16];
  if (v17 != 5)
  {
    v21 = sub_227A724BC();
    v40 = 0x6B6F54766E454B47;
    v41 = 0xEB000000002D6E65;
    v42 = v17;
    v22 = sub_227A72E1C();
    MEMORY[0x22AA9FE40](v22);

    sub_227A2A55C(v21, v40, v41, v7);

    goto LABEL_11;
  }

  v18 = [v7 credential];
  if (!v18)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = sub_227A724BC();
  [v19 setToken_];

LABEL_11:
  v23 = 14;
  if (a2)
  {
    if ((ACAccount.gkScope(for:)(v17) & 0x100000004) == 4)
    {
      v23 = 14;
    }

    else
    {
      v23 = 2;
    }
  }

  v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  sub_227A2A4D8(v24, 0xD000000000000011, 0x8000000227A96BA0, v17, v7);

  if (a3[15])
  {
    v25 = sub_227A724BC();
    sub_227A2A4D8(v25, 0x44495344746C61, 0xE700000000000000, v17, v7);
    swift_unknownObjectRelease();
    v26 = sub_227A724BC();
  }

  else
  {
    sub_227A2A4D8(0, 0x44495344746C61, 0xE700000000000000, v17, v7);
    v26 = 0;
  }

  sub_227A2A55C(v26, 0x44495344746C61, 0xE700000000000000, v7);
  swift_unknownObjectRelease();
  if (a3[13])
  {
    v27 = sub_227A724BC();
  }

  else
  {
    v27 = 0;
  }

  sub_227A2A55C(v27, 1684632420, 0xE400000000000000, v7);
  swift_unknownObjectRelease();
  v28 = sub_227A724BC();
  sub_227A2A55C(v28, 0x692D726579616C70, 0xE900000000000064, v7);

  v29 = v7;
  v30 = sub_227A7226C();
  v31 = sub_227A728DC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = [v29 accountProperties];
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&dword_227904000, v30, v31, "All account properties %@", v32, 0xCu);
    sub_227A04918(v33, &unk_27D7DD270, &qword_227AA10E0);
    MEMORY[0x22AAA1930](v33, -1, -1);
    MEMORY[0x22AAA1930](v32, -1, -1);
  }

  v35 = sub_227A724BC();
  [v29 setUsername_];

  v36 = sub_227A724BC();
  [v29 setAccountDescription_];

  v37 = [v29 _gkPlayerInternal];
  if (v37)
  {
    v38 = v37;
    sub_227A2A1D0(v37, a3);
    [v29 _gkSetPlayerInternal_];
  }

  else
  {
    sub_227A28D2C();
    swift_allocError();
    *v39 = 0;
    v39[1] = 0;
    v39[2] = 5;
    swift_willThrow();
  }
}

uint64_t sub_227A2A164(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_227A2A1B0(v3, v4);
}

void sub_227A2A1D0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  if (*(a2 + 152))
  {
    v7 = sub_227A724BC();
  }

  else
  {
    v7 = 0;
  }

  [a1 setContactsAssociationID_];

  v8 = type metadata accessor for AuthenticationPluginResponseHandler.ServiceData(0);
  sub_227A28088(a2 + *(v8 + 60), v6);
  v9 = sub_227A71C2C();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v9) != 1)
  {
    v10 = sub_227A71BDC();
    (*(*(v9 - 8) + 8))(v6, v9);
  }

  [a1 setServiceLastUpdatedTimestamp_];

  [a1 setContactsIntegrationConsent_];
  if (*(a2 + 56))
  {
    v11 = sub_227A724BC();
  }

  else
  {
    v11 = 0;
  }

  [a1 setAlias_];

  v12 = *(a2 + 72);
  if (v12)
  {
    v13 = sub_227A724BC();
  }

  else
  {
    v13 = 0;
  }

  [a1 setFirstName_];

  v14 = *(a2 + 88);
  if (v14)
  {
    v15 = sub_227A724BC();
  }

  else
  {
    v15 = 0;
  }

  [a1 setLastName_];

  if (!v12)
  {
    v16 = 0;
    if (v14)
    {
      goto LABEL_17;
    }

LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  v16 = sub_227A724BC();
  if (!v14)
  {
    goto LABEL_19;
  }

LABEL_17:
  v17 = sub_227A724BC();
LABEL_20:
  v18 = [objc_opt_self() compositeNameForFirstName:v16 lastName:v17];

  [a1 setCompositeName_];
  v19 = sub_227A724BC();
  [a1 setAccountName_];
}

uint64_t AuthenticationPluginResponseHandler.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0);
}

void sub_227A2A4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_227A724BC();

  [a5 _gkSetProperty_forKey_environment_];
}

void sub_227A2A55C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_227A724BC();

  [a4 setAccountProperty:a1 forKey:v6];
}

uint64_t sub_227A2A5D8(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_227A724EC();

  return v3;
}

uint64_t sub_227A2A648(uint64_t a1)
{
  v2 = type metadata accessor for AuthenticationPluginResponseHandler.ServiceData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227A2A6A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationPluginResponseHandler.ServiceData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227A2A708(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_227A724BC();

  v5 = [a3 accountsWithAccountTypeIdentifier_];

  if (!v5)
  {
    return 0;
  }

  sub_227A2AB44();
  v6 = sub_227A7269C();

  return v6;
}

uint64_t sub_227A2A824(uint64_t a1)
{
  sub_227A2A904();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for GKContactsIntegrationConsent(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_227A2A954(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_227A2A904()
{
  if (!qword_27D7DD380)
  {
    v0 = sub_227A729BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7DD380);
    }
  }
}

void sub_227A2A954(uint64_t a1)
{
  if (!qword_280B55108)
  {
    sub_227A71C2C();
    v1 = sub_227A729BC();
    if (!v2)
    {
      atomic_store(v1, &qword_280B55108);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_20GameCenterFoundation35AuthenticationPluginResponseHandlerC0F5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_227A2A9E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 24))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 5;
  if (v5 >= 7)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227A2AA4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 6;
    }
  }

  return result;
}

void *sub_227A2AAA0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_227A2AAE0(void *a1)
{
  v1 = [a1 shortDebugName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_227A724EC();

  return v3;
}

unint64_t sub_227A2AB44()
{
  result = qword_27D7DD388;
  if (!qword_27D7DD388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DD388);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_2_9()
{

  return sub_2279F91B8(v0, (v1 - 112));
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return sub_227A72ABC();
}

uint64_t OUTLINED_FUNCTION_13_3()
{

  return sub_227A72ABC();
}

void OUTLINED_FUNCTION_14_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

id Bool.asNSNumber.getter(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithBool_];
}

id Int.asNSNumber.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithInteger_];
}

id Double.asNSNumber.getter(double a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithDouble_];
}

uint64_t NSXPCConnection.gkPerformSynchronously(_:errorHandler:)(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  [v4 setGkIsSynchronous_];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v12[4] = sub_227A2AE84;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_227A2AEAC;
  v12[3] = &block_descriptor_5;
  v9 = _Block_copy(v12);

  v10 = [v4 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_227A729EC();
  swift_unknownObjectRelease();
  a1(v12);
  [v4 setGkIsSynchronous_];
  return __swift_destroy_boxed_opaque_existential_0Tm(v12);
}

void sub_227A2AEAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_227A2AF2C(void *a1, int a2, void *aBlock, const void *a4)
{
  v6 = _Block_copy(aBlock);
  v7 = _Block_copy(a4);
  v10[2] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a1;
  NSXPCConnection.gkPerformSynchronously(_:errorHandler:)(sub_227A2B1C0, v10, sub_227A2B1C8, v8);

  _Block_release(v6);
}

uint64_t sub_227A2AFE8(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_227A72E4C();
  (*(a2 + 16))(a2, v3);

  return swift_unknownObjectRelease();
}

void sub_227A2B048(uint64_t a1, uint64_t a2)
{
  v3 = sub_227A71A4C();
  (*(a2 + 16))(a2, v3);
}

void sub_227A2B0AC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_227A2B100(v3);
}

uint64_t sub_227A2B100(char a1)
{
  v2 = sub_22790AB28();
  v3 = xmmword_27D7DD390;

  if (a1)
  {
    v4 = sub_227A72E8C();
  }

  else
  {
    v4 = 0;
  }

  [v2 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_227A2B1D4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_227A2B244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

uint64_t sub_227A2B284(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 64) + 40);
  v4 = sub_227A71ADC();
  (*(*(v4 - 8) + 32))(v3, a2, v4);

  return swift_continuation_throwingResume();
}

uint64_t static GKGameKitDirectories.fetchImage(imageURL:gameKitDirectoryURLHint:)()
{
  OUTLINED_FUNCTION_31();
  v0[20] = v1;
  v0[21] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD3A0, &qword_227AA48E0);
  v0[22] = swift_task_alloc();
  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227A2B3AC()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[21];
  v1 = v0[22];
  v3 = [objc_opt_self() proxyForLocalPlayer];
  v4 = [v3 gameKitDirectoryServicePrivate];
  v0[23] = v4;

  v5 = sub_227A71AAC();
  v0[24] = v5;
  sub_227A2B7B4(v2, v1);
  v6 = sub_227A71ADC();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(v1, 1, v6) != 1)
  {
    v8 = v0[22];
    v7 = sub_227A71AAC();
    (*(*(v6 - 8) + 8))(v8, v6);
  }

  v0[25] = v7;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_227A2B59C;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD3A8, &qword_227AA3DC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_227A2B824;
  v0[13] = &block_descriptor_6;
  v0[14] = v9;
  [v4 fetchImageForURL:v5 gameKitDirectoryURLHint:v7 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_227A2B59C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227A2B698()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[18];
  v4 = v0[19];
  swift_unknownObjectRelease();

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_227A2B728()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 200);
  v2 = *(v0 + 192);
  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_41();

  return v3();
}

uint64_t sub_227A2B7B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD3A0, &qword_227AA48E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227A2B824(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_227A2B1D4(v5, a3);
  }

  v7 = a2;
  v8 = sub_227A71B9C();
  v10 = v9;

  return sub_227A2B244(v5, v8, v10);
}

uint64_t sub_227A2B8E8()
{
  OUTLINED_FUNCTION_56();
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 gameKitDirectoryServicePrivate];
  v0[21] = v2;

  v3 = sub_227A71AAC();
  v0[22] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_227A2BA5C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD3A8, &qword_227AA3DC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_227A2B824;
  v0[13] = &block_descriptor_4;
  v0[14] = v4;
  [v2 fetchMetadataForGameKitDirectoryURL:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_227A2BA5C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227A2BB58()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4(v3, v2);
}

uint64_t sub_227A2BBD0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 176);
  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_41();

  return v2();
}

uint64_t static GKGameKitDirectories.listGameKitDirectories(bundleID:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_1_14();
}

uint64_t sub_227A2BC58()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 gameKitDirectoryServicePrivate];
  v0[21] = v2;

  v3 = sub_227A724BC();
  v0[22] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_227A2BDC8;
  v4 = swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD3B0, &qword_227AA3DD8);
  OUTLINED_FUNCTION_0_19(v5);
  v0[11] = 1107296256;
  v0[12] = sub_227A2BF30;
  v0[13] = &block_descriptor_8;
  v0[14] = v4;
  [v2 listGameKitDirectoriesForBundleID:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_227A2BDC8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227A2BEC4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[22];
  v2 = v0[18];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_227A2BF30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_227A2B1D4(v4, a3);
  }

  sub_227A71ADC();
  v6 = sub_227A7269C();

  return sub_227A2B264(v4, v6);
}

uint64_t static GKGameKitDirectories.fetchAppIconURL(bundleID:)()
{
  OUTLINED_FUNCTION_31();
  v0[19] = v1;
  v0[20] = v2;
  v0[18] = v3;
  v4 = sub_227A71ADC();
  v0[21] = v4;
  v0[22] = *(v4 - 8);
  v0[23] = swift_task_alloc();
  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227A2C078()
{
  v1 = v0[23];
  v2 = [objc_opt_self() proxyForLocalPlayer];
  v3 = [v2 gameKitDirectoryServicePrivate];
  v0[24] = v3;

  v4 = sub_227A724BC();
  v0[25] = v4;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_227A2C1E8;
  v5 = swift_continuation_init();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD3B8, qword_227AA3DE8);
  OUTLINED_FUNCTION_0_19(v6);
  v0[11] = 1107296256;
  v0[12] = sub_227A2C3FC;
  v0[13] = &block_descriptor_12_0;
  v0[14] = v5;
  [v3 fetchAppIconURLForBundleID:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227A2C1E8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227A2C2E4()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[25];
  (*(v0[22] + 32))(v0[18], v0[23], v0[21]);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_41();

  return v2();
}

uint64_t sub_227A2C378()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 200);
  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_41();

  return v2();
}

uint64_t sub_227A2C3FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_227A71ADC();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_227A2B1D4(v8, a3);
  }

  sub_227A71ABC();
  return sub_227A2B284(v8, v7);
}

_BYTE *storeEnumTagSinglePayload for GKGameKitDirectories(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_0_19(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t ExponentialBackoffTask.State.hashValue.getter()
{
  v1 = *v0;
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](v1);
  return sub_227A72F4C();
}

void *sub_227A2C650@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227A2C6C4(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_227A2C6C4@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_state;
  result = OUTLINED_FUNCTION_126(v1 + OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_state, v5);
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_227A2C710(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_state;
  result = OUTLINED_FUNCTION_11_2(v2 + OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_state, a2);
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_227A2C888(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_2(v2 + OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_delegate, a2);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_227A2C908(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_227A018C0;
}

id ExponentialBackoffTask.init(name:queue:initialDelay:maxDelay:maxRetryCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *&v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_retryCount] = 0;
  v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_state] = 0;
  *&v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_timer] = 0;
  swift_unknownObjectWeakInit();
  sub_227A72B1C();

  v16 = a1;
  v17 = a2;
  MEMORY[0x22AA9FE40](0xD000000000000018, 0x8000000227A99320);
  v13 = &v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_name];
  *v13 = a1;
  v13[1] = a2;
  *&v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_queue] = a3;
  *&v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_delay] = a5;
  *&v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_initialDelay] = a5;
  *&v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_maxDelay] = a6;
  *&v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_maxRetryCount] = a4;
  v15.receiver = v6;
  v15.super_class = type metadata accessor for ExponentialBackoffTask();
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_227A2CBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_227A7232C();
  OUTLINED_FUNCTION_92();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_2();
  v15 = v14 - v13;
  v27 = sub_227A7237C();
  OUTLINED_FUNCTION_92();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_2();
  v21 = v20 - v19;
  v22 = swift_allocObject();
  v22[2] = v4;
  v22[3] = a1;
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = a4;
  OUTLINED_FUNCTION_1_15(v22);
  OUTLINED_FUNCTION_2_10(COERCE_DOUBLE(1107296256));
  v29 = v23;
  v30 = &block_descriptor_7;
  v24 = _Block_copy(aBlock);
  v25 = v4;

  sub_227A7235C();
  sub_227A2CFE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC918, &qword_227AA0EA0);
  sub_227A2D040();
  OUTLINED_FUNCTION_5_5();
  sub_227A729FC();
  MEMORY[0x22AAA01F0](0, v21, v15, v24);
  _Block_release(v24);
  (*(v11 + 8))(v15, v9);
  (*(v17 + 8))(v21, v27);
}

void sub_227A2CE0C(char *a1, void (*a2)(uint64_t (*)(), void *), uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  v10 = OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_state;
  swift_beginAccess();
  if (a1[v10])
  {
    if (qword_280B54DB0 != -1)
    {
      swift_once();
    }

    v11 = sub_227A7227C();
    __swift_project_value_buffer(v11, qword_280B54DB8);
    v12 = sub_227A728DC();
    v13 = a1;
    v14 = sub_227A7226C();

    if (os_log_type_enabled(v14, v12))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_227A46730(*&v13[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_name], *&v13[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_name + 8], &v17);
      _os_log_impl(&dword_227904000, v14, v12, "%s isn't free yet. We can't run a new task.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x22AAA1930](v16, -1, -1);
      MEMORY[0x22AAA1930](v15, -1, -1);
    }
  }

  else
  {
    sub_227A2E364();
    a1[v10] = 1;
    sub_227A2D238(a2, a3, a4, a5);
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_227A2CFE8()
{
  result = qword_27D7DC910;
  if (!qword_27D7DC910)
  {
    sub_227A7232C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC910);
  }

  return result;
}

unint64_t sub_227A2D040()
{
  result = qword_27D7DC920;
  if (!qword_27D7DC920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7DC918, &qword_227AA0EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC920);
  }

  return result;
}

uint64_t sub_227A2D17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_227A01434;
  v7[3] = &block_descriptor_64;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

void *sub_227A2D238(void (*a1)(uint64_t (*)(), void *), uint64_t a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_state;
  result = OUTLINED_FUNCTION_126(&v5[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_state], v31);
  if (v5[v10] == 1)
  {
    if (*&v5[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_retryCount] >= *&v5[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_maxRetryCount])
    {
      if (qword_280B54DB0 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_280B54DB0);
      }

      v20 = sub_227A7227C();
      __swift_project_value_buffer(v20, qword_280B54DB8);
      v21 = v5;
      v22 = sub_227A7226C();
      v23 = sub_227A728AC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_227A46730(*&v21[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_name], *&v21[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_name + 8], v30);
        OUTLINED_FUNCTION_3_4(&dword_227904000, v26, v27, "%s has reached maximum retry count. Ending task.");
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_103();
      }

      sub_227A2E364();
      OUTLINED_FUNCTION_126(&v21[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_delegate], v30);
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result retryLimitHit];
        return swift_unknownObjectRelease();
      }
    }

    else if (a3(result))
    {
      if (qword_280B54DB0 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_280B54DB0);
      }

      v12 = sub_227A7227C();
      __swift_project_value_buffer(v12, qword_280B54DB8);
      v13 = v5;
      v14 = sub_227A7226C();
      v15 = sub_227A728AC();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v30[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_227A46730(*&v13[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_name], *&v13[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_name + 8], v30);
        OUTLINED_FUNCTION_3_4(&dword_227904000, v18, v19, "%s has succeeded. Ending task.");
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_103();
      }

      return sub_227A2E364();
    }

    else
    {
      v28 = swift_allocObject();
      v28[2] = v5;
      v28[3] = a1;
      v28[4] = a2;
      v28[5] = a3;
      v28[6] = a4;
      v29 = v5;

      a1(sub_227A2E8B8, v28);
    }
  }

  return result;
}

uint64_t sub_227A2D540(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_227A7232C();
  v23 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_227A7237C();
  v13 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_227A2E8D0;
  *(v17 + 24) = v16;
  aBlock[4] = sub_227A030DC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_227A01434;
  aBlock[3] = &block_descriptor_37;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_227A7235C();
  v24 = MEMORY[0x277D84F90];
  sub_227A2CFE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC918, &qword_227AA0EA0);
  sub_227A2D040();
  sub_227A729FC();
  MEMORY[0x22AAA01F0](0, v15, v12, v18);
  _Block_release(v18);

  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);
}

uint64_t sub_227A2D81C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a3;
  v43 = a2;
  v7 = sub_227A7232C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227A7237C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&a1[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_maxDelay];
  v16 = OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_delay;
  v17 = *&a1[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_delay];
  sub_227A2E948(1.5, 3.0);
  v19 = v17 * v18;
  if (v19 >= v15)
  {
    v19 = v15;
  }

  *&a1[v16] = v19;
  v20 = OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_retryCount;
  v21 = *&a1[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_retryCount];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    v38 = a5;
    v39 = v12;
    v42 = v7;
    *&a1[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_retryCount] = v23;
    if (qword_280B54DB0 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v40 = v11;
  v41 = v8;
  v24 = sub_227A7227C();
  __swift_project_value_buffer(v24, qword_280B54DB8);
  v25 = a1;
  v26 = sub_227A7226C();
  v27 = sub_227A728AC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136316162;
    *(v28 + 4) = sub_227A46730(*&v25[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_name], *&v25[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_name + 8], aBlock);
    *(v28 + 12) = 2048;
    *(v28 + 14) = *&a1[v16];
    *(v28 + 22) = 2048;
    *(v28 + 24) = v15;
    *(v28 + 32) = 2048;
    *(v28 + 34) = *&a1[v20];
    *(v28 + 42) = 2048;
    *(v28 + 44) = *&v25[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_maxRetryCount];

    _os_log_impl(&dword_227904000, v26, v27, "%s is executed. Next run will be scheduled after delay. delay/maxDelay: %f/%f. retryCount/maxRetryCount: %ld/%ld", v28, 0x34u);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x22AAA1930](v29, -1, -1);
    MEMORY[0x22AAA1930](v28, -1, -1);
  }

  else
  {
  }

  sub_227A045E4();
  v30 = sub_227A7292C();
  v31 = swift_allocObject();
  v33 = v43;
  v32 = v44;
  v31[2] = v25;
  v31[3] = v33;
  v31[4] = v45;
  v31[5] = v32;
  v31[6] = v38;
  aBlock[4] = sub_227A2E9C0;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_227A01434;
  aBlock[3] = &block_descriptor_43;
  v34 = _Block_copy(aBlock);
  v35 = v25;

  sub_227A7235C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_227A2CFE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC918, &qword_227AA0EA0);
  sub_227A2D040();
  v36 = v42;
  sub_227A729FC();
  MEMORY[0x22AAA01F0](0, v14, v10, v34);
  _Block_release(v34);

  (*(v41 + 8))(v10, v36);
  return (*(v39 + 8))(v14, v40);
}

void sub_227A2DC90(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_opt_self();
  v11 = *&a1[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_delay];
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v17[4] = sub_227A2E9F0;
  v17[5] = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_227A2E088;
  v17[3] = &block_descriptor_49;
  v13 = _Block_copy(v17);
  v14 = a1;

  v15 = [v10 scheduledTimerWithTimeInterval:0 repeats:v13 block:v11];
  _Block_release(v13);
  v16 = *&v14[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_timer];
  *&v14[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_timer] = v15;
}

uint64_t sub_227A2DDE8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_227A7232C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_227A7237C();
  v15 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&a2[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_queue];
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a6;
  aBlock[4] = sub_227A2EA48;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_227A01434;
  aBlock[3] = &block_descriptor_55;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  sub_227A7235C();
  v24 = MEMORY[0x277D84F90];
  sub_227A2CFE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC918, &qword_227AA0EA0);
  sub_227A2D040();
  sub_227A729FC();
  MEMORY[0x22AAA01F0](0, v17, v14, v19);
  _Block_release(v19);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v23);
}

void sub_227A2E088(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_227A2E0F0()
{
  v1 = sub_227A7232C();
  OUTLINED_FUNCTION_92();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  v7 = v6 - v5;
  v8 = sub_227A7237C();
  OUTLINED_FUNCTION_92();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_2();
  v14 = v13 - v12;
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  OUTLINED_FUNCTION_1_15(v15);
  OUTLINED_FUNCTION_2_10(COERCE_DOUBLE(1107296256));
  v21 = v16;
  v22 = &block_descriptor_6;
  v17 = _Block_copy(aBlock);
  v18 = v0;
  sub_227A7235C();
  sub_227A2CFE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC918, &qword_227AA0EA0);
  sub_227A2D040();
  OUTLINED_FUNCTION_5_5();
  sub_227A729FC();
  MEMORY[0x22AAA01F0](0, v14, v7, v17);
  _Block_release(v17);
  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);
}

uint64_t sub_227A2E364()
{
  v1 = OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_timer;
  [*(v0 + OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_timer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  *(v0 + OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_delay) = *(v0 + OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_initialDelay);
  *(v0 + OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_retryCount) = 0;
  v3 = OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_state;
  result = OUTLINED_FUNCTION_11_2(v0 + OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_state, v4);
  *(v0 + v3) = 0;
  return result;
}

id ExponentialBackoffTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExponentialBackoffTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExponentialBackoffTask();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_227A2E490()
{
  result = qword_27D7DD410;
  if (!qword_27D7DD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DD410);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExponentialBackoffTask.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExponentialBackoffTask.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_227A2E910(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void sub_227A2E948(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_227A2EA78(0x20000000000001uLL);
  }
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0);
}

unint64_t sub_227A2EA78(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x22AAA1950](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x22AAA1950](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_15(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t sub_227A2EC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  OUTLINED_FUNCTION_149(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  sub_227A34844(a3, v27 - v11, &qword_27D7DC5B8, &qword_227AA04D0);
  v13 = sub_227A7276C();
  v14 = OUTLINED_FUNCTION_17_3();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_227A04918(v12, &qword_27D7DC5B8, &qword_227AA04D0);
  }

  else
  {
    sub_227A7275C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_227A726EC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_227A7253C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_227A04918(a3, &qword_27D7DC5B8, &qword_227AA04D0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_227A04918(a3, &qword_27D7DC5B8, &qword_227AA04D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

unint64_t sub_227A2EEF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_227A72CFC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_227A2EF40(char a1)
{
  if (!a1)
  {
    return 0x6F4674736F486F6ELL;
  }

  if (a1 == 1)
  {
    return 0x5264696C61766E69;
  }

  return 0x74756F656D6974;
}

unint64_t sub_227A2EFD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227A2EEF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_227A2F000@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227A2EF40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227A2F02C()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  OUTLINED_FUNCTION_149(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_40_2();
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v5 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v5, qword_27D7DE210);
  v6 = sub_227A7226C();
  v7 = sub_227A728AC();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_28_0();
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_227904000, v6, v7, "Resetting leader elector.", v8, 2u);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  *(v0 + 136) = 0;
  *(v0 + 144) = 0;

  v9 = sub_227A7243C();
  swift_beginAccess();
  *(v0 + 152) = v9;

  *(v0 + 160) = 0;
  if (*(v0 + 168))
  {

    sub_227A727DC();

    *(v0 + 168) = 0;
  }

  v10 = sub_227A7226C();
  sub_227A728AC();
  v11 = OUTLINED_FUNCTION_20_1();
  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_28_0();
    v13 = swift_slowAlloc();
    OUTLINED_FUNCTION_41_2(v13);
    OUTLINED_FUNCTION_23_1();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
    v19 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x22AAA1930](v19);
  }

  v20 = sub_227A71C2C();
  OUTLINED_FUNCTION_32_2(v20);
  v21 = OBJC_IVAR____TtC20GameCenterFoundation21FastSyncLeaderElector_scoreQueryReceivingTimeoutDate;
  OUTLINED_FUNCTION_125(v2 + OBJC_IVAR____TtC20GameCenterFoundation21FastSyncLeaderElector_scoreQueryReceivingTimeoutDate, v23);
  sub_227A346D0(v1, v2 + v21);
  return swift_endAccess();
}

void sub_227A2F25C()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  OUTLINED_FUNCTION_149(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_40_2();
  sub_227A2F02C();
  v5 = v0 + OBJC_IVAR____TtC20GameCenterFoundation21FastSyncLeaderElector_support;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(v5 + 8);
    v9 = sub_227A7276C();
    OUTLINED_FUNCTION_32_2(v9);
    sub_227A7273C();
    swift_unknownObjectRetain();

    v10 = sub_227A7272C();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v7;
    v11[5] = v8;
    v11[6] = v2;
    v13 = sub_227A2EC1C(0, 0, v1, &unk_227AA40E8, v11);
    swift_unknownObjectRelease();
    *(v2 + 168) = v13;
  }

  else
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v14 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v14, qword_27D7DE210);
    v17 = sub_227A7226C();
    v15 = sub_227A728BC();
    if (os_log_type_enabled(v17, v15))
    {
      OUTLINED_FUNCTION_28_0();
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_227904000, v17, v15, "Cannot setup leder elector if all scores are received because the transport is nil.", v16, 2u);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }
  }
}

uint64_t sub_227A2F450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD460, &qword_227AA4108);
  v6[5] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD468, &qword_227AA4110);
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD470, &qword_227AA4118);
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = sub_227A7273C();
  v6[13] = sub_227A7272C();
  v10 = sub_227A726EC();
  v6[14] = v10;
  v6[15] = v9;

  return MEMORY[0x2822009F8](sub_227A2F5F8, v10, v9);
}

uint64_t sub_227A2F5F8()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_227A4C128();
  sub_227A7278C();
  (*(v2 + 8))(v1, v3);
  v0[16] = sub_227A7272C();
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_13_4(v4);

  return MEMORY[0x2822003E8](v5);
}

uint64_t sub_227A2F6DC()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_227A2F814, v5, v4);
}

uint64_t sub_227A2F814()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[5];
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  v3 = OUTLINED_FUNCTION_17_3();
  if (__swift_getEnumTagSinglePayload(v3, v4, ScoresResponseActionMessage) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    OUTLINED_FUNCTION_41();

    return v5();
  }

  else
  {
    v7 = v0[4];
    v0[18] = *(v1 + *(ScoresResponseActionMessage + 28));
    v8 = (v1 + *(ScoresResponseActionMessage + 20));
    v0[19] = *v8;
    v0[20] = v8[1];

    sub_227A348AC(v1);

    return MEMORY[0x2822009F8](sub_227A2F940, v7, 0);
  }
}

uint64_t sub_227A2F940()
{
  OUTLINED_FUNCTION_31();
  sub_227A30888();

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_227A2F9B8, v1, v2);
}

uint64_t sub_227A2F9B8()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 128) = sub_227A7272C();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_13_4(v1);

  return MEMORY[0x2822003E8](v2);
}

uint64_t sub_227A2FA6C()
{
  v1 = v0[8] + OBJC_IVAR____TtC20GameCenterFoundation21FastSyncLeaderElector_support;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  v0[10] = *(v1 + 8);
  if (Strong)
  {
    v3 = v0[8];
    if (*(v3 + 160))
    {
      v4 = swift_task_alloc();
      v0[13] = v4;
      *v4 = v0;
      v5 = sub_227A303E4;
LABEL_4:
      v4[1] = v5;

      return sub_227A30A74();
    }

    v19 = *(v3 + 144);
    if (v19)
    {
      v20 = *(v3 + 136);
      v21 = qword_27D7DC4E0;

      if (v21 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      v22 = sub_227A7227C();
      OUTLINED_FUNCTION_104(v22, qword_27D7DE210);
      v23 = sub_227A7226C();
      v24 = sub_227A728AC();
      v25 = OUTLINED_FUNCTION_20_1();
      if (os_log_type_enabled(v25, v26))
      {
        OUTLINED_FUNCTION_28_0();
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_227904000, v23, v24, "Cannot start leader election because the best host handle is already set.", v27, 2u);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
      }

      swift_unknownObjectRelease();

      v28 = v0[1];

      return v28(v20, v19);
    }

    sub_227A4C78C();
    if (v29)
    {
      sub_227A30888();

      sub_227A30998(0.0);
      v4 = swift_task_alloc();
      v0[11] = v4;
      *v4 = v0;
      v5 = sub_227A3004C;
      goto LABEL_4;
    }

    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v30 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v30, qword_27D7DE210);
    v31 = sub_227A7226C();
    sub_227A728BC();
    v32 = OUTLINED_FUNCTION_20_1();
    if (os_log_type_enabled(v32, v33))
    {
      OUTLINED_FUNCTION_28_0();
      v34 = swift_slowAlloc();
      OUTLINED_FUNCTION_41_2(v34);
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      v40 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x22AAA1930](v40);
    }

    sub_227A1387C();
    OUTLINED_FUNCTION_95_0();
    swift_allocError();
    *v41 = 64;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = 32;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v7 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v7, qword_27D7DE210);
    v8 = sub_227A7226C();
    sub_227A728BC();
    v9 = OUTLINED_FUNCTION_20_1();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_28_0();
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_36_1(v11);
      OUTLINED_FUNCTION_10_4();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    sub_227A1387C();
    OUTLINED_FUNCTION_95_0();
    swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 32;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_41();

  return v18();
}

uint64_t sub_227A3004C()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_227A30620;
  }

  else
  {
    v6 = sub_227A30170;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227A30170()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[12];
  v2 = sub_227A32410();
  if (v1)
  {
    v4 = v1;
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v5 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v5, qword_27D7DE210);
    v6 = v1;
    v7 = sub_227A7226C();
    v8 = sub_227A728BC();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_29_2();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v4;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      sub_227A04918(v10, &unk_27D7DD270, &qword_227AA10E0);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      v18 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x22AAA1930](v18);
    }

    v0[7] = v4;
    v19 = v4;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
    if (OUTLINED_FUNCTION_46_2(v20, v21, v20, &unk_283AFC250) && (OUTLINED_FUNCTION_33_2(), v7 == 64))
    {
      swift_willThrow();
    }

    else
    {
      sub_227A326B4();
      OUTLINED_FUNCTION_95_0();
      v22 = swift_allocError();
      *v23 = 1;
      sub_227A1387C();
      OUTLINED_FUNCTION_95_0();
      v24 = swift_allocError();
      *v25 = v22;
      v25[1] = 0;
      OUTLINED_FUNCTION_2_11(v24, v25);
      swift_willThrow();
    }

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_41();

    return v26();
  }

  else
  {
    v28 = v2;
    v29 = v3;
    swift_unknownObjectRelease();
    v30 = v0[1];

    return v30(v28, v29);
  }
}

uint64_t sub_227A303E4()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_227A305C4;
  }

  else
  {
    v6 = sub_227A30508;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227A30508()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 112);
  v2 = sub_227A32410();
  v4 = v3;
  swift_unknownObjectRelease();
  if (v1)
  {
    OUTLINED_FUNCTION_41();

    return v5();
  }

  else
  {
    v7 = *(v0 + 8);

    return v7(v2, v4);
  }
}

uint64_t sub_227A305C4()
{
  OUTLINED_FUNCTION_31();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A30620()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 96);
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v2 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v2, qword_27D7DE210);
  v3 = v1;
  v4 = sub_227A7226C();
  v5 = sub_227A728BC();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_29_2();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_24_1();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_227A04918(v7, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    v15 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x22AAA1930](v15);
  }

  *(v0 + 56) = v1;
  v16 = v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  if (OUTLINED_FUNCTION_46_2(v17, v18, v17, &unk_283AFC250) && (OUTLINED_FUNCTION_33_2(), v4 == 64))
  {
    swift_willThrow();
  }

  else
  {
    sub_227A326B4();
    OUTLINED_FUNCTION_95_0();
    v19 = swift_allocError();
    *v20 = 1;
    sub_227A1387C();
    OUTLINED_FUNCTION_95_0();
    v21 = swift_allocError();
    *v22 = v19;
    v22[1] = 0;
    OUTLINED_FUNCTION_2_11(v21, v22);
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_41();

  return v23();
}