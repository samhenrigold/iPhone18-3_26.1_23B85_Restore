uint64_t sub_221B76FF8()
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v5 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem);
  (*(v3 + 16))(v1, *(v0 + 240), v2);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  (*(v3 + 32))(v8 + v7, v1, v2);
  v9 = type metadata accessor for RemoteAppNotificationSink(0);
  OUTLINED_FUNCTION_130_1(v9);

  v10 = sub_221B73924(v6, sub_221B7BAA8, v8);
  v11 = OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state;
  *(v0 + 376) = v10;
  *(v0 + 384) = v11;
  v12 = (v4 + v11);
  os_unfair_lock_lock((v4 + v11));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBDD8, &unk_221BE67E8) + 28);
  *(v0 + 108) = v13;
  v14 = v12 + v13;
  *(&v12->_os_unfair_lock_opaque + v13) = v5;

  v15 = type metadata accessor for RemoteAppNotificationStream._State(0);
  *(v0 + 392) = v15;
  *&v14[*(v15 + 28)] = v10;

  os_unfair_lock_unlock(v12);

  sub_221BCD808();
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_3_17(&qword_27CFB73B0);
  }

  *(v0 + 400) = __swift_project_value_buffer(*(v0 + 256), qword_27CFDEE58);
  if (qword_27CFB72F0 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 248);
  v17 = *(v0 + 232);
  memcpy((v0 + 16), &qword_27CFDEBD8, 0x59uLL);
  *(v0 + 408) = v16[5];
  *(v0 + 416) = v16[6];
  *(v0 + 424) = v16[3];
  *(v0 + 432) = v16[4];
  sub_221BCCD08();
  OUTLINED_FUNCTION_143_4();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = swift_task_alloc();
  *(v0 + 440) = v26;
  v26[2] = v16;
  v26[3] = v17;
  v26[4] = v10;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_95_0();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_221B772B8()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  (*(v0[33] + 16))(v0[34], v0[50], v0[32]);
  sub_221B702CC((v0 + 14), (v0 + 19), qword_27CFB7A80, &unk_221BD2800);
  sub_221B702CC(v1, v2, &qword_27CFB7F60, &qword_221BD6680);
  sub_221B702CC(v4, v3, &qword_27CFB7F58, &unk_221BD27E0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE60, &qword_221BE6910);
  OUTLINED_FUNCTION_130_1(v5);

  v6 = sub_2219CBEFC();
  v0[56] = v6;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v7 = v0[55];
  v0[27] = v5;
  v0[28] = &off_28351D968;
  v8 = OUTLINED_FUNCTION_305_0();
  v0[57] = v8;
  v8[2] = v6;
  v8[3] = &unk_221BE6908;
  v8[4] = v7;

  v9 = swift_task_alloc();
  v0[58] = v9;
  *v9 = v0;
  v9[1] = sub_221B77518;
  OUTLINED_FUNCTION_12_12();

  return MEMORY[0x282200908](v10);
}

uint64_t sub_221B77518()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 472) = v0;

  if (!v0)
  {
    sub_2219A1CC8(v3 + 192, qword_27CFB7A80, &unk_221BD2800);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B77650()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);

  sub_2219A1CC8(v2, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v1, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219A1CC8(v0 + 112, qword_27CFB7A80, &unk_221BD2800);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B7770C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_100_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_113_0();
  a22 = v24;
  v27 = *(v24 + 392);
  v28 = *(v24 + 336);
  v70 = *(v24 + 328);
  v71 = *(v24 + 400);
  v29 = *(v24 + 312);
  v30 = *(v24 + 320);
  v31 = (*(v24 + 248) + *(v24 + 384));
  v32 = v31 + *(v24 + 108);
  os_unfair_lock_lock(v31);
  v33 = *(v27 + 24);
  sub_2219A1CC8(&v32[v33], &qword_27CFB82B0, &unk_221BD2990);
  v34 = *(v30 + 16);
  v34(&v32[v33], v28, v29);
  __swift_storeEnumTagSinglePayload(&v32[v33], 0, 1, v29);
  v32[*(v27 + 32)] = 1;
  os_unfair_lock_unlock(v31);
  v34(v70, v28, v29);

  v35 = sub_221BCCD68();
  v36 = sub_221BCDA98();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = *(v24 + 328);
    v70 = *(v24 + 376);
    v71 = *(v24 + 336);
    v38 = *(v24 + 312);
    a9 = *(v24 + 320);
    v39 = *(v24 + 248);
    v40 = OUTLINED_FUNCTION_68();
    a10 = swift_slowAlloc();
    a13 = a10;
    *v40 = 136315650;
    v41 = OUTLINED_FUNCTION_312_0();
    *(v40 + 4) = sub_2219A6360(v41, v42, v43);
    *(v40 + 12) = 2080;
    v45 = *(v39 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 16);
    v44 = *(v39 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 24);

    v46 = OUTLINED_FUNCTION_312_0();
    v48 = sub_221998A0C(v46, v47, v45, v44);
    v50 = sub_2219A6360(v48, v49, &a13);

    *(v40 + 14) = v50;
    *(v40 + 22) = 2080;
    sub_221B7BA60(&qword_27CFB7A60, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v51 = sub_221BCE168();
    v53 = v52;
    v54 = *(a9 + 8);
    v54(v37, v38);
    v55 = sub_2219A6360(v51, v53, &a13);

    *(v40 + 24) = v55;
    _os_log_impl(&dword_221989000, v35, v36, "[%s] Starting observation for %s with identifier %s", v40, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_23();

    v54(v71, v38);
  }

  else
  {
    v57 = *(v24 + 328);
    v56 = *(v24 + 336);
    v58 = *(v24 + 312);
    v59 = *(v24 + 320);

    v60 = *(v59 + 8);
    v60(v57, v58);
    v60(v56, v58);
  }

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_28_0();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, v70, v71, a13, a14, a15, a16);
}

uint64_t sub_221B77A78()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);

  sub_2219A1CC8(v2, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v1, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219A1CC8(v0 + 112, qword_27CFB7A80, &unk_221BD2800);
  sub_2219A1CC8(v0 + 192, qword_27CFB7A80, &unk_221BD2800);

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B77B4C()
{

  OUTLINED_FUNCTION_25();

  return v0();
}

void sub_221B77C14()
{
  v1 = (v0 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBDD8, &unk_221BE67E8);
  sub_221B7AF8C((&v1->_os_unfair_lock_opaque + *(v2 + 28)));

  os_unfair_lock_unlock(v1);
}

uint64_t sub_221B77C8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBDE0, &qword_221BE67F8);
  OUTLINED_FUNCTION_8_1(v1);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v2);
  v4 = v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE20, &qword_221BE6810);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9;
  v11 = (v0 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBDD8, &unk_221BE67E8) + 28);
  v13 = type metadata accessor for RemoteAppNotificationStream._State(0);
  sub_221B702CC(v11 + *(v13 + 36) + v12, v4, &qword_27CFBBDE0, &qword_221BE67F8);
  os_unfair_lock_unlock(v11);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2219A1CC8(v4, &qword_27CFBBDE0, &qword_221BE67F8);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_221BCDE68();
    MEMORY[0x223DA31F0](91, 0xE100000000000000);
    MEMORY[0x223DA31F0](*(v0 + 40), *(v0 + 48));
    MEMORY[0x223DA31F0](0xD00000000000004ELL, 0x8000000221BF1250);
    result = sub_221BCE058();
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v10, v4, v5);
    sub_221BCD838();
    return (*(v7 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_221B77EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE70, &qword_221BE6950);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  if (qword_27CFB73B0 != -1)
  {
    swift_once();
  }

  v10 = sub_221BCCD88();
  __swift_project_value_buffer(v10, qword_27CFDEE58);

  v11 = sub_221BCCD68();
  v12 = sub_221BCDA98();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_2219A6360(*(a2 + 40), *(a2 + 48), &v21);
    *(v14 + 12) = 2080;
    v16 = MEMORY[0x223DA33D0](a1, &type metadata for AppNotificationEvent);
    v18 = sub_2219A6360(v16, v17, &v21);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_221989000, v11, v12, "[%s] Received from remote sink: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v15, -1, -1);
    MEMORY[0x223DA4C00](v14, -1, -1);
  }

  v21 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE50, &unk_221BE68A0);
  sub_221BCD818();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_221B78170(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v3 = *(a2 + 48);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v3;
  v7 = a2 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  v9 = *(a2 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic);
  v8 = *(a2 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 8);
  v10 = *(v7 + 24);
  if (v10)
  {
    v11 = *(v7 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_221BCF7F0;
    *(v12 + 32) = v9;
    *(v12 + 40) = v8;
    *(v12 + 48) = v11;
    *(v12 + 56) = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
    sub_221B7B8BC(&qword_27CFB7528, &qword_27CFB7520, &qword_221BD0770, MEMORY[0x277D83958]);
    v9 = sub_221BCD328();
    v8 = v13;
  }

  else
  {
  }

  MEMORY[0x223DA31F0](v9, v8);

  sub_221BA1AC8();
}

uint64_t sub_221B7837C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[33] = a2;
  v3[34] = a3;
  v3[32] = a1;
  v4 = sub_221BCCD88();
  v3[35] = v4;
  v3[36] = *(v4 - 8);
  v3[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v5 = sub_221BCC558();
  v3[42] = v5;
  v6 = *(v5 - 8);
  v3[43] = v6;
  v3[44] = *(v6 + 64);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE68, &qword_221BE6930);
  v3[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B785B8, 0, 0);
}

uint64_t sub_221B785B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_56_9();
  Strong = swift_weakLoadStrong();
  v16[51] = Strong;
  if (!Strong)
  {
    if (qword_27CFB73B0 != -1)
    {
      OUTLINED_FUNCTION_3_17(&qword_27CFB73B0);
    }

    __swift_project_value_buffer(v16[35], qword_27CFDEE58);

    v27 = sub_221BCCD68();
    v28 = sub_221BCDA98();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      a13 = OUTLINED_FUNCTION_68();
      *(v29 + 4) = OUTLINED_FUNCTION_65_8(4.8149e-34, a13, v30, v31, v32, v33, v34, v35, v36);
      OUTLINED_FUNCTION_67_7(&dword_221989000, v37, v38, "[%s] onTermination: RemoteAppNotificationStream already deallocated");
      __swift_destroy_boxed_opaque_existential_0(a13);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_13_4();
    }

    goto LABEL_19;
  }

  v18 = v16[49];
  v19 = v16[50];
  v20 = v16[47];
  v21 = v16[48];
  a11 = Strong;
  a12 = v16[42];
  v22 = (Strong + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state);
  os_unfair_lock_lock((Strong + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state));
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBDD8, &unk_221BE67E8) + 28));
  v24 = *(v20 + 48);
  v25 = *v23;
  v16[52] = *v23;
  v26 = type metadata accessor for RemoteAppNotificationStream._State(0);
  sub_221B702CC(v23 + *(v26 + 24), v21 + v24, &qword_27CFB82B0, &unk_221BD2990);

  os_unfair_lock_unlock(v22);
  sub_2219F6938(v21 + v24, v19);
  sub_221B702CC(v19, v18, &qword_27CFB82B0, &unk_221BD2990);
  if (__swift_getEnumTagSinglePayload(v18, 1, a12) == 1)
  {
    sub_2219A1CC8(v16[49], &qword_27CFB82B0, &unk_221BD2990);
LABEL_18:
    v60 = v16[50];
    sub_221B77C14();

    sub_2219A1CC8(v60, &qword_27CFB82B0, &unk_221BD2990);
LABEL_19:
    OUTLINED_FUNCTION_48_9();

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_28_0();

    return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  v39 = *(v16[43] + 32);
  v39(v16[46], v16[49], v16[42]);
  if (!v25)
  {
    (*(v16[43] + 8))(v16[46], v16[42]);
    goto LABEL_18;
  }

  v40 = qword_27CFB73B0;

  if (v40 != -1)
  {
    OUTLINED_FUNCTION_3_17(&qword_27CFB73B0);
  }

  v70 = v25;
  v16[53] = __swift_project_value_buffer(v16[35], qword_27CFDEE58);
  if (qword_27CFB72F8 != -1)
  {
    swift_once();
  }

  v42 = v16[45];
  v41 = v16[46];
  v43 = v16[43];
  v44 = v16[42];
  memcpy(v16 + 2, &qword_27CFDEC38, 0x59uLL);
  v16[54] = a11[5];
  v16[55] = a11[6];
  v16[56] = a11[3];
  v16[57] = a11[4];
  (*(v43 + 16))(v42, v41, v44);
  v45 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v46 = swift_allocObject();
  v16[58] = v46;
  *(v46 + 16) = a11;
  v39(v46 + v45, v42, v44);
  sub_221BCCD08();
  OUTLINED_FUNCTION_143_4();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  v55 = swift_task_alloc();
  v16[59] = v55;
  v55[2] = a11;
  v55[3] = v70;
  v55[4] = v41;

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_28_0();

  return MEMORY[0x2822009F8](v56, v57, v58);
}

uint64_t sub_221B78A28()
{
  v31 = v0[56];
  v32 = v0[54];
  v2 = v0[40];
  v1 = v0[41];
  (*(v0[36] + 16))(v0[37], v0[53], v0[35]);
  sub_221B702CC((v0 + 14), (v0 + 19), qword_27CFB7A80, &unk_221BD2800);
  sub_221B702CC(v1, v2, &qword_27CFB7F60, &qword_221BD6680);
  v3 = OUTLINED_FUNCTION_312_0();
  sub_221B702CC(v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8AD8, &unk_221BD66A0);
  OUTLINED_FUNCTION_130_1(v7);

  OUTLINED_FUNCTION_37_6(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  v16 = OUTLINED_FUNCTION_39_10();
  v0[60] = v16;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v17 = v0[59];
  v0[27] = v7;
  v0[28] = &off_28351D968;
  v18 = OUTLINED_FUNCTION_305_0();
  v0[61] = v18;
  v18[2] = v16;
  v18[3] = &unk_221BE6940;
  v18[4] = v17;

  v19 = swift_task_alloc();
  v0[62] = v19;
  *v19 = v0;
  v19[1] = sub_221B78C60;
  OUTLINED_FUNCTION_12_12();

  return MEMORY[0x282200908](v20);
}

uint64_t sub_221B78C60()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 504) = v0;

  if (v0)
  {
  }

  else
  {

    sub_2219A1CC8(v3 + 192, qword_27CFB7A80, &unk_221BD2800);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B78D90()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_63_9();

  sub_2219A1CC8(v2, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v0, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219A1CC8(v1 + 112, qword_27CFB7A80, &unk_221BD2800);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B78E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();

  v13 = OUTLINED_FUNCTION_70();
  v14(v13);
  v15 = *(v12 + 400);
  sub_221B77C14();

  sub_2219A1CC8(v15, &qword_27CFB82B0, &unk_221BD2990);
  OUTLINED_FUNCTION_48_9();

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_95_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_221B78F44()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_63_9();

  sub_2219A1CC8(v2, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v0, &qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_68_6(v1 + 112);
  OUTLINED_FUNCTION_68_6(v1 + 192);

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B79004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  v17 = v16[50];
  v18 = v16[46];
  v20 = v16[42];
  v19 = v16[43];
  v30 = v16[40];
  v31 = v16[39];
  v32 = v16[38];
  v33 = v16[37];

  sub_2219A1CC8(v17, &qword_27CFB82B0, &unk_221BD2990);
  (*(v19 + 8))(v18, v20);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_28_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, v33, a14, a15, a16);
}

unint64_t sub_221B79114(uint64_t a1)
{
  sub_221BCDE68();

  v2 = a1 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  v3 = *(a1 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic);
  v4 = *(a1 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  v7 = sub_221998A0C(v3, v4, v5, v6);
  MEMORY[0x223DA31F0](v7);

  MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BEDFA0);
  sub_221BCC558();
  sub_221B7BA60(&qword_27CFB7A60, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v8 = sub_221BCE168();
  MEMORY[0x223DA31F0](v8);

  return 0xD000000000000019;
}

uint64_t sub_221B79260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v5[6] = type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest(0);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B792F8, 0, 0);
}

uint64_t sub_221B792F8()
{
  sub_221BCC558();
  OUTLINED_FUNCTION_2_1();
  v1 = OUTLINED_FUNCTION_70();
  v2(v1);
  v3 = objc_opt_self();

  v4 = [v3 sharedInstance];
  [v4 optInApple];

  v5 = OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  *(v0 + 64) = OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  OUTLINED_FUNCTION_24_12(v5);

  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_221B79464;

  return sub_221A44A08();
}

uint64_t sub_221B79464()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 80) = v0;

  sub_221B7BF50(v5, type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B79590()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_29(*(v0 + 64));

  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221B795F0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_29(*(v0 + 64));

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221B79654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse(0);
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B796EC, 0, 0);
}

uint64_t sub_221B796EC()
{
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 200);
  v2 = *(v0 + 192) + qword_27CFDED20;
  v4 = *v2;
  v3 = *(v2 + 8);
  v5 = *(v2 + 17);
  v6 = objc_opt_self();

  v7 = [v6 sharedInstance];
  v8 = [v7 optInApple];

  v9 = OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  *(v0 + 232) = OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  v10 = (v1 + v9);
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = v8;
  *(v0 + 33) = v5;
  *(v0 + 40) = v12;
  *(v0 + 48) = v11;
  *(v0 + 56) = v13;
  *(v0 + 64) = v14;

  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_18(v15);
  *v16 = v17;
  v16[1] = sub_221B79834;

  return sub_221A43008();
}

uint64_t sub_221B79834()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 248) = v0;

  v7 = *(v3 + 16);
  v8 = *(v3 + 32);
  v9 = *(v3 + 48);
  if (v0)
  {
    *(v3 + 120) = *(v3 + 64);
    *(v3 + 104) = v9;
    *(v3 + 88) = v8;
    *(v3 + 72) = v7;
    sub_221A57E98(v3 + 72);
  }

  else
  {
    *(v3 + 176) = *(v3 + 64);
    *(v3 + 144) = v8;
    *(v3 + 160) = v9;
    *(v3 + 128) = v7;
    sub_221A57E98(v3 + 128);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B79974()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[28];
  v2 = v0[23];
  v3 = (v0[25] + v0[29]);
  sub_221BCC558();
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 32))(v2, v1);
  OUTLINED_FUNCTION_29_11(*v3, v3[1], v3[2], v3[3]);

  OUTLINED_FUNCTION_4_3();

  return v5();
}

uint64_t sub_221B79A24()
{
  OUTLINED_FUNCTION_1_5();
  v1 = (*(v0 + 200) + *(v0 + 232));
  OUTLINED_FUNCTION_29_11(*v1, v1[1], v1[2], v1[3]);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_221B79A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a3;
  v4[35] = a4;
  v4[32] = a1;
  v4[33] = a2;
  v5 = sub_221BCCD88();
  v4[36] = v5;
  v4[37] = *(v5 - 8);
  v4[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v6 = sub_221BCC558();
  v4[43] = v6;
  v7 = *(v6 - 8);
  v4[44] = v7;
  v4[45] = *(v7 + 64);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE58, &qword_221BE68E8);
  v4[48] = swift_task_alloc();
  v4[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B79CE0, 0, 0);
}

uint64_t sub_221B79CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_100_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_113_0();
  a22 = v24;
  OUTLINED_FUNCTION_56_9();
  Strong = swift_weakLoadStrong();
  v24[53] = Strong;
  if (!Strong)
  {
    if (qword_27CFB73B0 != -1)
    {
      OUTLINED_FUNCTION_3_17(&qword_27CFB73B0);
    }

    __swift_project_value_buffer(v24[36], qword_27CFDEE58);

    v57 = sub_221BCCD68();
    v58 = sub_221BCDA98();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = OUTLINED_FUNCTION_68();
      a13 = v60;
      *(v59 + 4) = OUTLINED_FUNCTION_65_8(4.8149e-34, v60, v61, v62, v63, v64, v65, v66, v67);
      OUTLINED_FUNCTION_67_7(&dword_221989000, v68, v69, "[%s] resumeOn: RemoteAppNotificationStream already deallocated");
      __swift_destroy_boxed_opaque_existential_0(v60);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_13_4();
    }

    goto LABEL_16;
  }

  v28 = Strong;
  v29 = v24[52];
  v30 = v24[48];
  v31 = v24[35];
  v32 = (Strong + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state);
  os_unfair_lock_lock((Strong + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state));
  v33 = (&v32->_os_unfair_lock_opaque + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBDD8, &unk_221BE67E8) + 28));
  *v33 = v31;

  v34 = type metadata accessor for RemoteAppNotificationStream._State(0);
  sub_221B702CC(v33 + *(v34 + 24), v30, &qword_27CFB82B0, &unk_221BD2990);
  v35 = *(v33 + *(v34 + 28));
  v24[54] = v35;

  os_unfair_lock_unlock(v32);
  sub_2219F6938(v30, v29);
  if (!v35)
  {
LABEL_5:
    if (qword_27CFB73B0 != -1)
    {
      OUTLINED_FUNCTION_3_17(&qword_27CFB73B0);
    }

    __swift_project_value_buffer(v24[36], qword_27CFDEE58);

    v38 = sub_221BCCD68();
    v39 = sub_221BCDA78();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v24[52];
    if (v40)
    {
      a9 = v24[50];
      a10 = v24[49];
      v42 = OUTLINED_FUNCTION_68();
      a11 = swift_slowAlloc();
      *v42 = 136315650;
      v100 = v41;
      a13 = a11;
      v43 = v28[5];
      v44 = v28[6];

      v45 = sub_2219A6360(v43, v44, &a13);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      v46 = *(v28 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic);
      v47 = *(v28 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 8);
      v49 = *(v28 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 16);
      v48 = *(v28 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 24);

      v50 = sub_221998A0C(v46, v47, v49, v48);
      v52 = sub_2219A6360(v50, v51, &a13);

      *(v42 + 14) = v52;
      *(v42 + 22) = 2080;
      sub_221B74EE8(a9);
      v53 = sub_221BCD3D8();
      v55 = sub_2219A6360(v53, v54, &a13);

      *(v42 + 24) = v55;
      _os_log_impl(&dword_221989000, v38, v39, "[%s] No remote sink for %s with identifier %s", v42, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_23();

      v56 = v100;
    }

    else
    {

      v56 = v41;
    }

    sub_2219A1CC8(v56, &qword_27CFB82B0, &unk_221BD2990);
LABEL_16:
    OUTLINED_FUNCTION_38_7();
    v101 = v70;

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_28_0();

    return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, v101, a13, a14, a15, a16);
  }

  v36 = v24[51];
  v37 = v24[43];
  sub_221B702CC(v24[52], v36, &qword_27CFB82B0, &unk_221BD2990);
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    sub_2219A1CC8(v24[51], &qword_27CFB82B0, &unk_221BD2990);
    goto LABEL_5;
  }

  v102 = *(v24[44] + 32);
  v102(v24[47], v24[51], v24[43]);
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_3_17(&qword_27CFB73B0);
  }

  v24[55] = __swift_project_value_buffer(v24[36], qword_27CFDEE58);
  if (qword_27CFB7300 != -1)
  {
    swift_once();
  }

  v81 = v24[46];
  v80 = v24[47];
  v82 = v24[44];
  v83 = v24[43];
  v99 = v24[35];
  memcpy(v24 + 2, &qword_27CFDEC98, 0x59uLL);
  v24[56] = v28[5];
  v24[57] = v28[6];
  v24[58] = v28[3];
  v24[59] = v28[4];
  (*(v82 + 16))(v81, v80, v83);
  v84 = (*(v82 + 80) + 24) & ~*(v82 + 80);
  v85 = swift_allocObject();
  v24[60] = v85;
  *(v85 + 16) = v28;
  v102(v85 + v84, v81, v83);
  sub_221BCCD08();
  OUTLINED_FUNCTION_143_4();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
  v94 = swift_task_alloc();
  v24[61] = v94;
  v94[2] = v28;
  v94[3] = v99;
  v94[4] = v80;
  v94[5] = v35;

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_28_0();

  return MEMORY[0x2822009F8](v95, v96, v97);
}

uint64_t sub_221B7A334()
{
  v31 = v0[58];
  v32 = v0[56];
  v2 = v0[41];
  v1 = v0[42];
  (*(v0[37] + 16))(v0[38], v0[55], v0[36]);
  sub_221B702CC((v0 + 14), (v0 + 19), qword_27CFB7A80, &unk_221BD2800);
  sub_221B702CC(v1, v2, &qword_27CFB7F60, &qword_221BD6680);
  v3 = OUTLINED_FUNCTION_312_0();
  sub_221B702CC(v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8AD8, &unk_221BD66A0);
  OUTLINED_FUNCTION_130_1(v7);

  OUTLINED_FUNCTION_37_6(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  v16 = OUTLINED_FUNCTION_39_10();
  v0[62] = v16;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v17 = v0[61];
  v0[27] = v7;
  v0[28] = &off_28351D968;
  v18 = OUTLINED_FUNCTION_305_0();
  v0[63] = v18;
  v18[2] = v16;
  v18[3] = &unk_221BE68F8;
  v18[4] = v17;

  v19 = swift_task_alloc();
  v0[64] = v19;
  *v19 = v0;
  v19[1] = sub_221B7A56C;
  OUTLINED_FUNCTION_12_12();

  return MEMORY[0x282200908](v20);
}

uint64_t sub_221B7A56C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 520) = v0;

  if (!v0)
  {
    sub_2219A1CC8(v3 + 192, qword_27CFB7A80, &unk_221BD2800);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B7A6A4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_64_6();

  sub_2219A1CC8(v2, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v0, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219A1CC8(v1 + 112, qword_27CFB7A80, &unk_221BD2800);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B7A75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v13 = v12[52];
  v14 = v12[47];
  v15 = v12[43];
  v16 = v12[44];

  sub_2219A1CC8(v13, &qword_27CFB82B0, &unk_221BD2990);
  (*(v16 + 8))(v14, v15);
  OUTLINED_FUNCTION_38_7();
  v27 = v17;

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_95_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, a10, a11, a12);
}

uint64_t sub_221B7A85C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_64_6();

  sub_2219A1CC8(v2, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v0, &qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_68_6(v1 + 112);
  OUTLINED_FUNCTION_68_6(v1 + 192);

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B7A91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  v17 = v16[52];
  v18 = v16[47];
  v19 = v16[43];
  v20 = v16[44];
  v30 = v16[42];
  v31 = v16[41];
  v32 = v16[40];
  v33 = v16[39];
  v34 = v16[38];

  sub_2219A1CC8(v17, &qword_27CFB82B0, &unk_221BD2990);
  (*(v20 + 8))(v18, v19);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_28_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, v33, v34, a14, a15, a16);
}

uint64_t sub_221B7AA3C(uint64_t a1)
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD00000000000001FLL, 0x8000000221BF1190);
  v2 = a1 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  v3 = *(a1 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic);
  v4 = *(a1 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  v7 = sub_221998A0C(v3, v4, v5, v6);
  MEMORY[0x223DA31F0](v7);

  MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BF11B0);
  sub_221BCC558();
  sub_221B7BA60(&qword_27CFB7A60, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v8 = sub_221BCE168();
  MEMORY[0x223DA31F0](v8);

  return 0;
}

uint64_t sub_221B7AB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v6[7] = type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest(0);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B7AC2C, 0, 0);
}

uint64_t sub_221B7AC2C()
{
  sub_221BCC558();
  OUTLINED_FUNCTION_2_1();
  v1 = OUTLINED_FUNCTION_70();
  v2(v1);
  v3 = objc_opt_self();

  v4 = [v3 sharedInstance];
  [v4 optInApple];

  v5 = OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  *(v0 + 72) = OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  OUTLINED_FUNCTION_24_12(v5);

  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_221B7AD9C;

  return sub_221A456B0();
}

uint64_t sub_221B7AD9C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 88) = v0;

  sub_221B7BF50(v5, type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B7AEC8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_29(*(v0 + 72));

  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221B7AF28()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_29(*(v0 + 72));

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221B7AF8C(void *a1)
{

  *a1 = 0;
  v2 = type metadata accessor for RemoteAppNotificationStream._State(0);
  v3 = *(v2 + 28);

  *(a1 + v3) = 0;
  *(a1 + *(v2 + 32)) = 0;
  if (a1[1])
  {
    sub_221BCD878();
  }

  a1[1] = 0;
  return result;
}

uint64_t sub_221B7B024()
{

  v1 = v0 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBDD8, &unk_221BE67E8);
  sub_221B7BF50(v1 + *(v2 + 28), type metadata accessor for RemoteAppNotificationStream._State);

  return v0;
}

uint64_t sub_221B7B0BC()
{
  sub_221B7B024();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_221B7B13C(uint64_t a1)
{
  sub_221B7B404(319, &qword_27CFBBDD0, type metadata accessor for RemoteAppNotificationStream._State, MEMORY[0x277D85458]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_221B7B270(uint64_t a1)
{
  sub_221B7B404(319, &qword_27CFBBDF8, type metadata accessor for RemoteAppIntentsActor, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_221B7B468(319, &qword_27CFBBE00, &qword_27CFBBE08, &qword_221BE6808);
    if (v2 <= 0x3F)
    {
      sub_221B7B404(319, qword_27CFB8FE0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_221B7B404(319, &qword_27CFBBE10, type metadata accessor for RemoteAppNotificationSink, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_221B7B468(319, &qword_27CFBBE18, &qword_27CFBBE20, &qword_221BE6810);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_221B7B404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_221B7B468(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_221BCDC98();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_221B7B500()
{
  sub_221B77C8C();
}

uint64_t sub_221B7B538(uint64_t a1)
{
  result = sub_221B7BA60(&qword_27CFBBE38, type metadata accessor for RemoteAppNotificationStream, &unk_221BE6820);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221B7B590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = 0x6369706F74;
  *(inited + 40) = 0xE500000000000000;
  if (a4)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
    v12 = OUTLINED_FUNCTION_53_11(v11);
    *(v12 + 16) = xmmword_221BCF7F0;
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    *(v12 + 48) = a3;
    *(v12 + 56) = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
    OUTLINED_FUNCTION_0_47();
    sub_221B7B8BC(v13, &qword_27CFB7520, &qword_221BD0770, v14);
    a1 = sub_221BCD328();
    a2 = v15;
  }

  else
  {
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_221BCD2C8();
  a5();
}

uint64_t sub_221B7B71C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAppNotificationStream._State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_221B7B790()
{
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE50, &unk_221BE68A0);
  OUTLINED_FUNCTION_8_1(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_15(v1);
  *v2 = v3;
  v2[1] = sub_2219CA70C;
  OUTLINED_FUNCTION_95_0();

  return sub_221B755AC(v4, v5, v6, v7, v8, v9, v10, v11);
}

id sub_221B7B8A8(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_221B5D0C8(result, a2);
  }

  return result;
}

uint64_t sub_221B7B8BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_221B7B904()
{
  OUTLINED_FUNCTION_8_0();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2219EC5F0;
  v5 = OUTLINED_FUNCTION_4();

  return sub_221B79A98(v5, v6, v3, v2);
}

uint64_t sub_221B7B9C0()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_167();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_15(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_16(v4);

  return sub_221B7AB90(v6, v7, v8, v9, v2, v1);
}

uint64_t sub_221B7BA60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_221B7BAA8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE50, &unk_221BE68A0);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_221B77EF0(a1, v5, v6);
}

uint64_t sub_221B7BB2C()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_167();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_16(v3);

  return sub_221B79654(v5, v6, v7, v8, v1);
}

uint64_t sub_221B7BBC8()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_20(v1);

  return sub_2219EA968(v3, v4, v5, v6);
}

uint64_t sub_221B7BC54()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2219EC5F0;
  v4 = OUTLINED_FUNCTION_4();

  return sub_221B7837C(v4, v5, v2);
}

uint64_t objectdestroy_17Tm()
{
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();

  v0 = OUTLINED_FUNCTION_26_6();
  v1(v0);
  v2 = OUTLINED_FUNCTION_29_5();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_221B7BDB4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = sub_221BCC558();
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a1(v4, v5);
}

uint64_t sub_221B7BE28()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_167();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_16(v3);

  return sub_221B79260(v5, v6, v7, v8, v1);
}

uint64_t sub_221B7BEC4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_20(v1);

  return sub_2219E882C(v3, v4, v5, v6);
}

uint64_t sub_221B7BF50(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_221B7BFB4(uint64_t a1)
{
  v3 = sub_221BCC558();
  OUTLINED_FUNCTION_8_1(v3);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return sub_221B74CB0(a1, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_3_29@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v1 + 24) + a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];

  return sub_221B7B590(v4, v5, v6, v7, sub_221B62F44);
}

uint64_t OUTLINED_FUNCTION_24_12@<X0>(uint64_t a1@<X8>)
{
  v8 = (v5 + a1);
  v10 = *v8;
  result = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v13 = v2 + *(v4 + 20);
  *v13 = v6;
  *(v13 + 8) = v1;
  *(v13 + 16) = v3;
  *(v13 + 17) = v7;
  v14 = (v2 + *(v4 + 24));
  *v14 = v10;
  v14[1] = result;
  v14[2] = v11;
  v14[3] = v12;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_221B7B590(a1, a2, a3, a4, sub_221B62F44);
}

uint64_t OUTLINED_FUNCTION_31_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_39_10()
{

  return sub_2219CBEFC();
}

uint64_t OUTLINED_FUNCTION_48_9()
{
}

uint64_t OUTLINED_FUNCTION_53_11(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_55_11()
{

  sub_221B61B30(v0, 0);
}

double OUTLINED_FUNCTION_56_9()
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_63_9()
{
}

uint64_t OUTLINED_FUNCTION_64_6()
{
}

unint64_t OUTLINED_FUNCTION_65_8(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *v11 = a1;

  return sub_2219A6360(v10, v9, va);
}

id OUTLINED_FUNCTION_66_5()
{
  *(v0 + 14) = v1;
  *(v0 + 22) = 2112;

  return v2;
}

void OUTLINED_FUNCTION_67_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_68_6(uint64_t a1)
{

  return sub_2219A1CC8(a1, v1, v2);
}

void OUTLINED_FUNCTION_69_5()
{

  sub_221B61B30(v0, 0);
}

void sub_221B7C374()
{
  qword_27CFDEBD8 = 0;
  unk_27CFDEBE0 = 0;
  byte_27CFDEBE8 = 1;
  qword_27CFDEBF0 = "startObservingEvents";
  unk_27CFDEBF8 = 20;
  byte_27CFDEC00 = 2;
  qword_27CFDEC08 = 1;
  byte_27CFDEC10 = 0;
  OUTLINED_FUNCTION_0_45(1);
}

void sub_221B7C3C4()
{
  qword_27CFDEC38 = 0;
  unk_27CFDEC40 = 0;
  byte_27CFDEC48 = 1;
  qword_27CFDEC50 = "stopObservingEvents";
  unk_27CFDEC58 = 19;
  byte_27CFDEC60 = 2;
  qword_27CFDEC68 = 1;
  byte_27CFDEC70 = 0;
  OUTLINED_FUNCTION_0_45(1);
}

void sub_221B7C414()
{
  qword_27CFDEC98 = 0;
  unk_27CFDECA0 = 0;
  byte_27CFDECA8 = 1;
  qword_27CFDECB0 = "restartObservingEvents";
  unk_27CFDECB8 = 22;
  byte_27CFDECC0 = 2;
  qword_27CFDECC8 = 1;
  byte_27CFDECD0 = 0;
  OUTLINED_FUNCTION_0_45(1);
}

uint64_t sub_221B7C464(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_221B7C4A8(uint64_t a1)
{
  if (qword_27CFB7308 != -1)
  {
    OUTLINED_FUNCTION_1_44();
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_221BCDB38();
  if (!v1)
  {
    v4 = OUTLINED_FUNCTION_172_3();
    sub_2219EBFB4(v4, v5);
  }

  v2 = OUTLINED_FUNCTION_172_3();
  sub_2219EC02C(v2, v3);
  return OUTLINED_FUNCTION_172_3();
}

void sub_221B7C5B8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v66 = a4;
  v67 = a5;
  v64 = a2;
  v65 = a3;
  v68 = a1;
  v70 = a6;
  v8 = *v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  MEMORY[0x28223BE20](v9);
  v11 = v62 - v10;
  v12 = sub_221BCC358();
  OUTLINED_FUNCTION_0_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v18 = v17 - v16;
  v69 = sub_221BCC418();
  OUTLINED_FUNCTION_0_2();
  v72 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v23 = (v22 - v21);
  sub_221B7CCF4(v22 - v21);
  if (!v7)
  {
    v62[1] = v9;
    v63 = v8;
    v62[0] = v11;
    v24 = v68;
    v71[0] = sub_221B7D1D8(v68, v64, v65, v66, v67);
    v71[1] = v25;
    v26 = (*(v14 + 104))(v18, *MEMORY[0x277CC91D8], v12);
    sub_221A1CAA4(v26, v27, v28);
    v29 = v70;
    sub_221BCC408();
    (*(v14 + 8))(v18, v12);

    v30 = v72 + 8;
    v31 = *(v72 + 8);
    v32 = v69;
    v31(v23, v69);
    v33 = [v24 data];
    sub_221BCC468();

    v34 = OUTLINED_FUNCTION_172_3();
    LOBYTE(v33) = sub_221AE9494(v34, v35);
    v36 = OUTLINED_FUNCTION_172_3();
    v38 = sub_2219EC040(v36, v37);
    v39 = v29;
    if (v33)
    {
      v40 = v31;
      if (qword_27CFB7398 != -1)
      {
        OUTLINED_FUNCTION_3_30();
        swift_once();
      }

      v41 = sub_221BCCD88();
      __swift_project_value_buffer(v41, qword_27CFDEE28);
      v42 = v24;
      v43 = sub_221BCCD68();
      v44 = sub_221BCDA78();

      if (os_log_type_enabled(v43, v44))
      {
        v72 = v30;
        v45 = swift_slowAlloc();
        v71[0] = swift_slowAlloc();
        *v45 = 136315394;
        v46 = [v42 filename];
        v47 = sub_221BCD388();
        v49 = v48;

        v50 = sub_2219A6360(v47, v49, v71);

        *(v45 + 4) = v50;
        *(v45 + 12) = 2080;
        v51 = [v42 fileURL];
        if (v51)
        {
          v52 = v51;
          v53 = v62[0];
          sub_221BCC3B8();

          v54 = 0;
          v32 = v69;
        }

        else
        {
          v54 = 1;
          v32 = v69;
          v53 = v62[0];
        }

        __swift_storeEnumTagSinglePayload(v53, v54, 1, v32);
        v58 = sub_221BCD3D8();
        v60 = sub_2219A6360(v58, v59, v71);

        *(v45 + 14) = v60;
        _os_log_impl(&dword_221989000, v43, v44, "INFile data is empty: %s, URL: %s", v45, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();

        v39 = v70;
      }

      else
      {
      }

      sub_221B82020(v55, v56, v57);
      swift_allocError();
      *v61 = xmmword_221BD04D0;
      swift_willThrow();
      v40(v39, v32);
    }

    else
    {
      if (qword_27CFB7308 != -1)
      {
        OUTLINED_FUNCTION_1_44();
        v38 = swift_once();
      }

      MEMORY[0x28223BE20](v38);
      v62[-4] = v24;
      v62[-3] = v29;
      v62[-2] = v63;
      sub_221BCDB38();
    }
  }
}

uint64_t sub_221B7CB34()
{
  v0 = sub_221BCDB18();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_221BCD1F8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_221BCDAF8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_2219A1D20(0, &qword_27CFBBC30, 0x277D85C78);
  sub_221BCDAE8();
  sub_221BCD1D8();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = sub_221BCDB58();
  qword_27CFBBE90 = result;
  return result;
}

void sub_221B7CCF4(uint64_t a1@<X8>)
{
  v28 = a1;
  v3 = sub_221BCC358();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_221BCC418();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  v14 = [objc_opt_self() defaultManager];
  sub_221BAFD3C();

  if (!v2)
  {
    v26 = 7368052;
    v27 = 0xE300000000000000;
    v25 = *MEMORY[0x277CC91D8];
    v22 = v7;
    v24 = *(v4 + 104);
    v15 = v24(v6);
    v23 = sub_221A1CAA4(v15, v16, v17);
    sub_221BCC408();
    v21 = *(v4 + 8);
    v21(v6, v3);
    v20 = *(v8 + 8);
    v18 = v10;
    v19 = v22;
    v20(v18, v22);
    v26 = 0x6946746E65746E49;
    v27 = 0xEB0000000073656CLL;
    (v24)(v6, v25, v3);
    sub_221BCC408();
    v21(v6, v3);
    v20(v13, v19);
  }
}

void sub_221B7CFC4(double a1)
{
  v2 = sub_221BCC358();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_221BCC418();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  sub_221BAFD3C();

  if (!v1)
  {
    v14[0] = 0xD000000000000011;
    v14[1] = 0x8000000221BF13A0;
    v11 = (*(v3 + 104))(v5, *MEMORY[0x277CC91D8], v2);
    sub_221A1CAA4(v11, v12, v13);
    sub_221BCC408();
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_221B7D1D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_221BCC558();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2;
  v29 = a3;

  v14 = sub_221B8B5A4(a1);
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    if (a5)
    {
      v26 = 61;
      v27 = 0xE100000000000000;
      MEMORY[0x223DA31F0](a4, a5);
      MEMORY[0x223DA31F0](v26, v27);
    }

    v26 = 45;
    v27 = 0xE100000000000000;
    MEMORY[0x223DA31F0](v16, v17);
  }

  else
  {
    v26 = 45;
    v27 = 0xE100000000000000;
    v18 = [a1 filename];
    v19 = sub_221BCD388();
    v21 = v20;

    MEMORY[0x223DA31F0](v19, v21);
  }

  MEMORY[0x223DA31F0](v26, v27);

  v26 = 45;
  v27 = 0xE100000000000000;
  sub_221BCC548();
  v22 = sub_221BCC4E8();
  v24 = v23;
  (*(v11 + 8))(v13, v10);
  MEMORY[0x223DA31F0](v22, v24);

  MEMORY[0x223DA31F0](v26, v27);

  return v28;
}

void sub_221B7D3F4(NSObject *a1, uint64_t a2)
{
  v136 = a2;
  v137 = a1;
  v143 = *MEMORY[0x277D85DE8];
  v3 = sub_221BCC418();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v134 = v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v135 = v128 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v128 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v128 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v128 - v15;
  v133 = objc_opt_self();
  v17 = [v133 defaultManager];
  sub_221B7CCF4(v16);
  v138 = v3;
  v139 = v4;
  if (v2)
  {
    v18 = v17;
    v19 = v2;
  }

  else
  {
    v20 = sub_221BCC388();
    (*(v4 + 8))(v16, v3);
    *&v141 = 0;
    v18 = v17;
    v21 = [v17 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v141];

    if (v21)
    {
      v22 = v141;
      goto LABEL_7;
    }

    v23 = v141;
    v24 = sub_221BCC338();

    swift_willThrow();
    v19 = v24;
  }

LABEL_7:
  sub_221B7CCF4(v13);
  sub_221BCC3E8();
  v25 = v139 + 1;
  v132 = v139[1];
  v132(v13, v138);
  v26 = sub_221BCD358();

  *&v141 = 0;
  v27 = v18;
  v28 = [v18 attributesOfFileSystemForPath:v26 error:&v141];

  v29 = v141;
  if (!v28)
  {
    v59 = v141;
    sub_221BCC338();

LABEL_19:
    swift_willThrow();
LABEL_20:

    return;
  }

  v131 = v25;
  v130 = 0;
  type metadata accessor for FileAttributeKey(0);
  v31 = v30;
  v32 = sub_221B82074(&qword_27CFB7590, type metadata accessor for FileAttributeKey, &unk_221BD0350);
  v33 = sub_221BCD298();
  v34 = v29;

  sub_221B9C308(*MEMORY[0x277CCA1D0], v33, &v141);

  if (!v142)
  {
    v35 = sub_2219A6860(&v141, &qword_27CFB7FF8, &qword_221BE6A00);
LABEL_18:
    sub_221B82020(v35, v36, v37);
    swift_allocError();
    *v60 = xmmword_221BD0800;
    goto LABEL_19;
  }

  v35 = swift_dynamicCast();
  if ((v35 & 1) == 0)
  {
    goto LABEL_18;
  }

  v129 = v27;
  v38 = v140;
  v39 = [v137 data];
  v40 = sub_221BCC468();
  v42 = v41;

  v43 = MEMORY[0x223DA21D0](v40, v42);
  v35 = sub_2219EC040(v40, v42);
  v44 = v43 < v38;
  v27 = v129;
  if (!v44)
  {
    goto LABEL_18;
  }

  v128[3] = v31;
  if (qword_27CFB7398 != -1)
  {
    swift_once();
  }

  v128[2] = v32;
  v45 = sub_221BCCD88();
  v46 = __swift_project_value_buffer(v45, qword_27CFDEE28);
  v47 = v138;
  v48 = v139[2];
  v139 += 2;
  v128[0] = v48;
  v48(v10, v136, v138);
  v128[1] = v46;
  v49 = sub_221BCCD68();
  v50 = sub_221BCDA68();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v130;
  if (v51)
  {
    v53 = swift_slowAlloc();
    *&v141 = swift_slowAlloc();
    v54 = v141;
    *v53 = 136315138;
    sub_221B82074(&qword_27CFB9278, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v55 = sub_221BCE168();
    v57 = v56;
    v132(v10, v47);
    v58 = sub_2219A6360(v55, v57, &v141);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_221989000, v49, v50, "Persisting INFile data to: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x223DA4C00](v54, -1, -1);
    MEMORY[0x223DA4C00](v53, -1, -1);
  }

  else
  {

    v132(v10, v47);
  }

  v61 = v134;
  v62 = [v137 fileURL];
  v27 = v129;
  v63 = v135;
  if (!v62)
  {
    goto LABEL_30;
  }

  v64 = v62;
  sub_221BCC3B8();

  if ((sub_221BCC3C8() & 1) == 0)
  {
    v132(v63, v138);
LABEL_30:
    v93 = [v137 data];
    v94 = sub_221BCC468();
    v96 = v95;

    sub_221BCC498();
    sub_2219EC040(v94, v96);
    if (v52)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

  v65 = sub_221BCC388();
  v66 = sub_221BCC388();
  *&v141 = 0;
  v67 = [v27 copyItemAtURL:v65 toURL:v66 error:&v141];

  if (v67)
  {
    v68 = v141;
    v69 = [v137 removedOnCompletion];
    v70 = v138;
    if (v69)
    {
      v71 = sub_221BCC388();
      *&v141 = 0;
      v72 = [v27 removeItemAtURL:v71 error:&v141];

      v73 = v141;
      if (v72)
      {
        (v128[0])(v61, v63, v70);
        v74 = v73;
        v75 = v137;
        v76 = sub_221BCCD68();
        v77 = sub_221BCDA68();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          *&v141 = v139;
          *v78 = 136315394;
          v79 = [v75 debugDescription];
          v137 = v76;
          v80 = v79;
          v81 = sub_221BCD388();
          LODWORD(v134) = v77;
          v82 = v61;
          v84 = v83;

          v85 = sub_2219A6360(v81, v84, &v141);

          *(v78 + 4) = v85;
          *(v78 + 12) = 2080;
          sub_221B82074(&qword_27CFB9278, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v86 = sub_221BCE168();
          v88 = v87;
          v132(v82, v70);
          v89 = sub_2219A6360(v86, v88, &v141);

          *(v78 + 14) = v89;
          v90 = v137;
          _os_log_impl(&dword_221989000, v137, v134, "%s requested removal on completion, deleting source file %s", v78, 0x16u);
          v91 = v139;
          swift_arrayDestroy();
          MEMORY[0x223DA4C00](v91, -1, -1);
          v92 = v78;
          v27 = v129;
          MEMORY[0x223DA4C00](v92, -1, -1);
        }

        else
        {

          v132(v61, v70);
        }
      }

      else
      {
        v110 = v141;
        v111 = sub_221BCC338();

        swift_willThrow();
        v112 = v137;
        v113 = v111;
        v114 = sub_221BCCD68();
        v115 = sub_221BCDA78();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          *&v141 = v139;
          *v116 = 136315394;
          v117 = [v112 debugDescription];
          v118 = sub_221BCD388();
          LODWORD(v134) = v115;
          v119 = v118;
          v121 = v120;

          v122 = sub_2219A6360(v119, v121, &v141);
          v27 = v129;

          *(v116 + 4) = v122;
          *(v116 + 12) = 2112;
          v123 = v111;
          v124 = _swift_stdlib_bridgeErrorToNSError();
          *(v116 + 14) = v124;
          v125 = v137;
          v137->isa = v124;
          _os_log_impl(&dword_221989000, v114, v134, "%s Failed to delete source file: %@", v116, 0x16u);
          sub_2219A6860(v125, &unk_27CFB7630, qword_221BD0790);
          MEMORY[0x223DA4C00](v125, -1, -1);
          v126 = v139;
          __swift_destroy_boxed_opaque_existential_0(v139);
          MEMORY[0x223DA4C00](v126, -1, -1);
          v127 = v116;
          v63 = v135;
          MEMORY[0x223DA4C00](v127, -1, -1);
        }

        else
        {
        }
      }
    }

    sub_221BCC3A8();
    v132(v63, v70);
LABEL_34:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBEA8, &qword_221BE6A08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221BD19E0;
    v99 = *MEMORY[0x277CCA1B0];
    v100 = *MEMORY[0x277CCA1A0];
    *(inited + 32) = *MEMORY[0x277CCA1B0];
    *(inited + 40) = v100;
    type metadata accessor for FileProtectionType(0);
    v101 = v99;
    v102 = v100;
    v103 = sub_221BCD2C8();
    v104 = [v133 defaultManager];
    sub_221BB504C(v103);

    v105 = sub_221BCD278();

    sub_221BCC3E8();
    v106 = sub_221BCD358();

    *&v141 = 0;
    v107 = [v104 setAttributes:v105 ofItemAtPath:v106 error:&v141];

    if (v107)
    {
      v108 = v141;
      goto LABEL_20;
    }

    v109 = v141;
    sub_221BCC338();

    goto LABEL_19;
  }

  v97 = v141;
  sub_221BCC338();

  swift_willThrow();
  sub_221BCC3A8();

  v132(v63, v138);
}

void sub_221B7E160(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_2219A1D20(0, &qword_27CFBBEB8, 0x277CCA9F8);
  v10 = sub_221BCC3E8();
  v12 = sub_221B81EB4(v10, v11, &selRef_fileHandleForReadingAtPath_);
  if (!v12)
  {
    v19 = sub_221BCC3E8();
    v21 = v20;
    sub_221B82020(v19, v20, v22);
    swift_allocError();
    *v23 = v19;
    v23[1] = v21;
    swift_willThrow();
    return;
  }

  v13 = v12;
  v14 = sub_221BCDA38();
  if (v5)
  {
    goto LABEL_11;
  }

  if (v14 <= a2)
  {
    sub_221B7E640(a1);
    goto LABEL_11;
  }

  if (__CFADD__(a2, a4))
  {
    __break(1u);
  }

  else
  {
    if (v14 <= a2 + a4)
    {
      sub_221B7E640(a1);
    }

    [v13 seekToFileOffset_];
    if ((a4 & 0x8000000000000000) == 0)
    {
      v15 = sub_221BCDA28();
      v16 = *a5;
      v17 = a5[1];
      *a5 = v15;
      a5[1] = v18;
      sub_2219EC02C(v16, v17);
LABEL_11:
      sub_221B7E2D0(v13, a1);

      return;
    }
  }

  __break(1u);
}

void sub_221B7E2D0(void *a1, uint64_t a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = sub_221BCC418();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = 0;
  if ([a1 closeAndReturnError_])
  {
    v9 = qword_27CFB7398;
    v10 = v27[0];
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_221BCCD88();
    __swift_project_value_buffer(v11, qword_27CFDEE28);
    v12 = sub_221BCCD68();
    v13 = sub_221BCDA68();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_221989000, v12, v13, "Closing the fileHandle", v14, 2u);
      MEMORY[0x223DA4C00](v14, -1, -1);
    }
  }

  else
  {
    v15 = v27[0];
    v16 = sub_221BCC338();

    swift_willThrow();
    if (qword_27CFB7398 != -1)
    {
      swift_once();
    }

    v17 = sub_221BCCD88();
    __swift_project_value_buffer(v17, qword_27CFDEE28);
    (*(v5 + 16))(v8, a2, v4);
    v18 = sub_221BCCD68();
    v19 = sub_221BCDA78();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27[0] = v21;
      *v20 = 136315138;
      v22 = sub_221BCC3E8();
      v24 = v23;
      (*(v5 + 8))(v8, v4);
      v25 = sub_2219A6360(v22, v24, v27);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_221989000, v18, v19, "Could not close fileHandle: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223DA4C00](v21, -1, -1);
      MEMORY[0x223DA4C00](v20, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_221B7E640(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_221BCC418();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v5 + 32))(v12 + v11, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  sub_2219F7E3C();
}

uint64_t sub_221B7E824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_221BCC418();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B7E8FC, 0, 0);
}

uint64_t sub_221B7E8FC(double a1)
{
  v22 = v1;
  sub_221B7CFC4(a1);
  sub_221B7ECAC(v1[8]);
  v2 = *(v1[5] + 8);
  v2(v1[8], v1[4]);
  if (qword_27CFB7398 != -1)
  {
    OUTLINED_FUNCTION_3_30();
    swift_once();
  }

  v3 = v1[7];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = sub_221BCCD88();
  __swift_project_value_buffer(v7, qword_27CFDEE28);
  (*(v5 + 16))(v3, v6, v4);
  v8 = sub_221BCCD68();
  v9 = sub_221BCDA68();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[7];
  v12 = v1[4];
  if (v10)
  {
    v13 = OUTLINED_FUNCTION_74_0();
    log = swift_slowAlloc();
    v21[0] = log;
    *v13 = 136315138;
    v14 = sub_221BCC3E8();
    v16 = v15;
    v2(v11, v12);
    v17 = sub_2219A6360(v14, v16, v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_221989000, v8, v9, "Marking file for deletion: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(log);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  else
  {

    v2(v11, v12);
  }

  sub_221B7F00C();

  v18 = v1[1];

  return v18();
}

void sub_221B7ECAC(uint64_t a1)
{
  v27 = a1;
  v3 = sub_221BCC418();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_221BCD3C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_221BCC3E8();
  sub_221B81D54(10, 0xE100000000000000, v10, v11);

  sub_221BCD3B8();
  v12 = sub_221BCD398();
  v14 = v13;

  (*(v7 + 8))(v9, v6);
  if (v14 >> 60 == 15)
  {
    v27 = v2;
    if (qword_27CFB7398 != -1)
    {
      swift_once();
    }

    v15 = sub_221BCCD88();
    __swift_project_value_buffer(v15, qword_27CFDEE28);
    v16 = v28;
    v17 = v29;
    (*(v28 + 16))(v5, v1, v29);
    v18 = sub_221BCCD68();
    v19 = sub_221BCDA78();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      v22 = sub_221BCC3E8();
      v24 = v23;
      (*(v16 + 8))(v5, v17);
      v25 = sub_2219A6360(v22, v24, &v30);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_221989000, v18, v19, "Could not encode path for deletion: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223DA4C00](v21, -1, -1);
      MEMORY[0x223DA4C00](v20, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v5, v17);
    }
  }

  else
  {
    sub_221B81DD4(v27, v12, v14);
    sub_2219EC02C(v12, v14);
  }
}

void sub_221B7F00C()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v45 = [v0 sharedScheduler];
  OUTLINED_FUNCTION_13_17();
  v1 = sub_221BCD358();
  v2 = [v45 taskRequestForIdentifier_];

  if (v2)
  {

    OUTLINED_FUNCTION_17_14();
  }

  else
  {
    OUTLINED_FUNCTION_13_17();
    v5 = sub_221BCD358();
    OUTLINED_FUNCTION_7_19();
    OUTLINED_FUNCTION_9_22();
    aBlock[2] = v6;
    aBlock[3] = &block_descriptor_16;
    v7 = _Block_copy(aBlock);
    v14 = OUTLINED_FUNCTION_18_14(v7, sel_registerForTaskWithIdentifier_usingQueue_launchHandler_, v8, v9, v10, v11, v12, v13, v44, v45);
    _Block_release(v7);

    if ((v14 & 1) == 0)
    {
      if (qword_27CFB7380 != -1)
      {
        OUTLINED_FUNCTION_0_48(&qword_27CFB7380);
      }

      v15 = sub_221BCCD88();
      OUTLINED_FUNCTION_178(v15, qword_27CFDEDE0);
      v16 = sub_221BCCD68();
      v17 = sub_221BCDA78();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_15_15();
        OUTLINED_FUNCTION_16_13(v18);
        OUTLINED_FUNCTION_19_13(&dword_221989000, v19, v20, "Unable to register deletion task.");
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }
    }

    sub_2219A1D20(0, &qword_27CFBBEC0, 0x277CF07C8);
    v21 = OUTLINED_FUNCTION_13_17();
    v23 = sub_2219A51F4(v21, v22);
    [v23 setScheduleAfter_];
    [v23 setTrySchedulingBefore_];
    [v23 setPriority_];
    v24 = [v0 sharedScheduler];
    aBlock[0] = 0;
    v25 = [v24 submitTaskRequest:v23 error:aBlock];

    if (v25)
    {
      v26 = qword_27CFB7380;
      v27 = aBlock[0];
      if (v26 != -1)
      {
        OUTLINED_FUNCTION_0_48(&qword_27CFB7380);
      }

      v28 = sub_221BCCD88();
      OUTLINED_FUNCTION_178(v28, qword_27CFDEDE0);
      v29 = sub_221BCCD68();
      v30 = sub_221BCDA68();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_15_15();
        OUTLINED_FUNCTION_16_13(v31);
        OUTLINED_FUNCTION_20_13(&dword_221989000, v32, v33, "Submitted deletion task.");
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }
    }

    else
    {
      v34 = aBlock[0];
      v35 = sub_221BCC338();

      swift_willThrow();
      if (qword_27CFB7380 != -1)
      {
        OUTLINED_FUNCTION_0_48(&qword_27CFB7380);
      }

      v36 = sub_221BCCD88();
      OUTLINED_FUNCTION_178(v36, qword_27CFDEDE0);
      v37 = v35;
      v38 = sub_221BCCD68();
      v39 = sub_221BCDA78();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_74_0();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        v42 = v35;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v43;
        *v41 = v43;
        _os_log_impl(&dword_221989000, v38, v39, "Failed to submit maintenance task: %@", v40, 0xCu);
        sub_2219A6860(v41, &unk_27CFB7630, qword_221BD0790);
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_17_14();
  }
}

uint64_t sub_221B7F478(double a1)
{
  v2 = sub_221BCD1F8();
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  v9 = sub_221BCD1B8();
  OUTLINED_FUNCTION_0_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v15 = v14 - v13;
  if (qword_27CFB7308 != -1)
  {
    OUTLINED_FUNCTION_1_44();
    swift_once();
  }

  sub_221BCD1A8();
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  OUTLINED_FUNCTION_6_22(v16);
  OUTLINED_FUNCTION_3_27(COERCE_DOUBLE(1107296256));
  v21 = v17;
  v22 = &block_descriptor_22;
  v18 = _Block_copy(aBlock);
  sub_221BCD1D8();
  OUTLINED_FUNCTION_14_17();
  _Block_release(v18);
  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v15, v9);
}

void sub_221B7F654(void (**a1)(uint64_t, uint64_t), double a2)
{
  v141[2] = *MEMORY[0x277D85DE8];
  v3 = sub_221BCD3C8();
  MEMORY[0x28223BE20](v3 - 8);
  v136 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_221BCC418();
  v137 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v120 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v120 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v120 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v120 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v120 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v120 - v25;
  sub_221B7CFC4(v24);
  v132 = a1;
  v133 = v13;
  v138 = v5;
  v134 = v16;
  v135 = v22;
  v130 = v10;
  v131 = v7;
  sub_221BCC3E8();
  sub_221BCD3B8();
  v27 = sub_221BCD348();
  v28 = v26;
  v29 = v27;
  v31 = v30;
  v129 = v28;

  v141[0] = v29;
  v141[1] = v31;
  v139 = 10;
  v140 = 0xE100000000000000;
  sub_221A1CAA4(v32, v33, v34);
  v35 = sub_221BCDCC8();

  v36 = *(v35 + 16);
  v37 = v137;
  if (v36)
  {
    v141[0] = MEMORY[0x277D84F90];
    sub_2219A36BC(0, v36, 0);
    v38 = v141[0];
    v136 = v35;
    v39 = v35 + 40;
    v40 = v133;
    do
    {

      sub_221BCC378();

      v141[0] = v38;
      v42 = v38[2];
      v41 = v38[3];
      if (v42 >= v41 >> 1)
      {
        sub_2219A36BC(v41 > 1, v42 + 1, 1);
        v38 = v141[0];
      }

      v38[2] = v42 + 1;
      (*(v37 + 32))(v38 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v42, v19, v138);
      v39 += 16;
      --v36;
    }

    while (v36);
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
    v40 = v133;
  }

  v43 = sub_221BC23F4(v38);
  sub_221B7CCF4(v135);
  v45 = v134;
  v125 = 0;
  v54 = 0;
  v55 = v43 + 56;
  v56 = 1 << *(v43 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v43 + 56);
  v59 = ((v56 + 63) >> 6);
  v136 = (v37 + 16);
  v127 = v37 + 32;
  v132 = (v37 + 8);
  *&v44 = 136315138;
  v123 = v44;
  *&v44 = 136315394;
  v122 = v44;
  v60 = v138;
  v126 = v43;
  while (v58)
  {
    v61 = v54;
LABEL_21:
    v62 = __clz(__rbit64(v58));
    v58 &= v58 - 1;
    v63 = *(v43 + 48) + *(v37 + 72) * (v62 | (v61 << 6));
    v128 = *(v37 + 16);
    v128(v45, v63, v60);
    (*(v37 + 32))(v40, v45, v60);
    v64 = v60;
    sub_221BCC3E8();
    sub_221BCC3E8();
    v65 = sub_221BCD528();

    if (v65)
    {
      v66 = [objc_opt_self() defaultManager];
      v67 = sub_221BCC388();
      v141[0] = 0;
      v68 = [v66 removeItemAtURL:v67 error:v141];

      if (v68)
      {
        v69 = qword_27CFB7398;
        v70 = v141[0];
        if (v69 != -1)
        {
          swift_once();
        }

        v71 = sub_221BCCD88();
        __swift_project_value_buffer(v71, qword_27CFDEE28);
        v72 = v130;
        v128(v130, v40, v138);
        v73 = sub_221BCCD68();
        v74 = sub_221BCDA68();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v124 = v75;
          v128 = swift_slowAlloc();
          v141[0] = v128;
          *v75 = v123;
          sub_221B82074(&qword_27CFB9278, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          LODWORD(v121) = v74;
          v76 = sub_221BCE168();
          v77 = v72;
          v79 = v78;
          v80 = *v132;
          (*v132)(v77, v138);
          v81 = sub_2219A6360(v76, v79, v141);

          v82 = v124;
          *(v124 + 1) = v81;
          v83 = v73;
          v84 = v73;
          v85 = v82;
          _os_log_impl(&dword_221989000, v84, v121, "Removed file at: %s", v82, 0xCu);
          v86 = v128;
          __swift_destroy_boxed_opaque_existential_0(v128);
          MEMORY[0x223DA4C00](v86, -1, -1);
          MEMORY[0x223DA4C00](v85, -1, -1);
        }

        else
        {

          v80 = *v132;
          (*v132)(v72, v138);
        }

        v80(v40, v138);
        v60 = v138;
        v54 = v61;
        v45 = v134;
        v43 = v126;
      }

      else
      {
        v87 = v141[0];
        v88 = sub_221BCC338();

        swift_willThrow();
        if (qword_27CFB7398 != -1)
        {
          swift_once();
        }

        v89 = sub_221BCCD88();
        __swift_project_value_buffer(v89, qword_27CFDEE28);
        v90 = v131;
        v91 = v133;
        v128(v131, v133, v64);
        v92 = v88;
        v93 = sub_221BCCD68();
        v94 = sub_221BCDA78();
        v95 = v88;
        v96 = v94;
        v125 = v95;

        LODWORD(v124) = v96;
        v128 = v93;
        if (os_log_type_enabled(v93, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v141[0] = v121;
          *v97 = v122;
          sub_221B82074(&qword_27CFB9278, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v99 = sub_221BCE168();
          v100 = v90;
          v102 = v101;
          v120 = *v132;
          v120(v100, v64);
          v103 = sub_2219A6360(v99, v102, v141);

          *(v97 + 4) = v103;
          *(v97 + 12) = 2112;
          v104 = v125;
          v105 = v125;
          v106 = _swift_stdlib_bridgeErrorToNSError();
          *(v97 + 14) = v106;
          *v98 = v106;
          v107 = v128;
          _os_log_impl(&dword_221989000, v128, v124, "Failed to remove file at: %s, error: %@", v97, 0x16u);
          sub_2219A6860(v98, &unk_27CFB7630, qword_221BD0790);
          MEMORY[0x223DA4C00](v98, -1, -1);
          v108 = v121;
          __swift_destroy_boxed_opaque_existential_0(v121);
          MEMORY[0x223DA4C00](v108, -1, -1);
          MEMORY[0x223DA4C00](v97, -1, -1);

          v40 = v133;
          v60 = v138;
          v120(v133, v138);
          v125 = 0;
          v54 = v61;
          v43 = v126;
          v45 = v134;
        }

        else
        {

          v109 = *v132;
          (*v132)(v90, v138);
          v109(v91, v138);
          v45 = v134;
          v60 = v138;
          v125 = 0;
          v54 = v61;
          v40 = v91;
          v43 = v126;
        }
      }
    }

    else
    {
      (*v132)(v40, v60);
      v54 = v61;
      v43 = v126;
      v45 = v134;
    }
  }

  while (1)
  {
    v61 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_39:
      swift_once();
      goto LABEL_10;
    }

    if (v61 >= v59)
    {
      break;
    }

    v58 = *(v55 + 8 * v61);
    ++v54;
    if (v58)
    {
      goto LABEL_21;
    }
  }

  v110 = [objc_opt_self() defaultManager];
  v111 = v129;
  v112 = sub_221BCC388();
  v141[0] = 0;
  v113 = [v110 removeItemAtURL:v112 error:v141];

  if (v113)
  {
    v114 = *v132;
    v115 = v141[0];
    v116 = v138;
    v114(v135, v138);
    v114(v111, v116);
    return;
  }

  v117 = v141[0];
  v59 = sub_221BCC338();

  swift_willThrow();
  v118 = *v132;
  v119 = v138;
  (*v132)(v135, v138);
  v118(v111, v119);
  if (qword_27CFB7398 != -1)
  {
    goto LABEL_39;
  }

LABEL_10:
  v46 = sub_221BCCD88();
  __swift_project_value_buffer(v46, qword_27CFDEE28);
  v47 = v59;
  v48 = sub_221BCCD68();
  v49 = sub_221BCDA78();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    v52 = v59;
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 4) = v53;
    *v51 = v53;
    _os_log_impl(&dword_221989000, v48, v49, "Failure during file removal: %@", v50, 0xCu);
    sub_2219A6860(v51, &unk_27CFB7630, qword_221BD0790);
    MEMORY[0x223DA4C00](v51, -1, -1);
    MEMORY[0x223DA4C00](v50, -1, -1);
  }

  else
  {
  }
}

uint64_t static RemoteFileStore.pruneCache()(double a1)
{
  v2 = sub_221BCD1F8();
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  v9 = sub_221BCD1B8();
  OUTLINED_FUNCTION_0_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v15 = v14 - v13;
  if (qword_27CFB7308 != -1)
  {
    OUTLINED_FUNCTION_1_44();
    swift_once();
  }

  sub_221BCD1A8();
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = v1;
  OUTLINED_FUNCTION_6_22(v16);
  OUTLINED_FUNCTION_3_27(COERCE_DOUBLE(1107296256));
  v21 = v17;
  v22 = &block_descriptor_8;
  v18 = _Block_copy(aBlock);
  sub_221BCD1D8();
  OUTLINED_FUNCTION_14_17();
  _Block_release(v18);
  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v15, v9);
}

uint64_t sub_221B80550()
{
  v172[4] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBEB0, &unk_221BE6A10);
  MEMORY[0x28223BE20](v0 - 8);
  v169 = v146 - v1;
  v165 = sub_221BCC4D8();
  v152 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v154 = v146 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v157 = v146 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v146 - v6;
  v171 = sub_221BCC418();
  v155 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v9 = v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v146 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v146 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v146 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v146 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v146 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v146 - v26;
  sub_221B7CCF4(v7);
  v28 = v24;
  v167 = v12;
  v162 = v21;
  v147 = v18;
  v161 = v15;
  v158 = v9;
  v29 = v171;
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v171);
  v30 = v155;
  (*(v155 + 32))(v27, v7, v29);
  if (qword_27CFB7398 != -1)
  {
    swift_once();
  }

  v31 = sub_221BCCD88();
  v32 = __swift_project_value_buffer(v31, qword_27CFDEE28);
  v33 = v28;
  v34 = v27;
  v170 = *(v30 + 16);
  v170(v28, v27, v171);
  v166 = v32;
  v35 = sub_221BCCD68();
  v36 = sub_221BCDA68();
  v37 = os_log_type_enabled(v35, v36);
  v163 = v30 + 16;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v172[0] = v39;
    *v38 = 136315138;
    sub_221B82074(&qword_27CFB9278, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v40 = sub_221BCE168();
    v42 = v41;
    v168 = *(v30 + 8);
    v168(v33, v171);
    v43 = sub_2219A6360(v40, v42, v172);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_221989000, v35, v36, "Pruning cache at: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x223DA4C00](v39, -1, -1);
    MEMORY[0x223DA4C00](v38, -1, -1);
  }

  else
  {

    v168 = *(v30 + 8);
    v168(v33, v171);
  }

  v44 = v157;
  v46 = v161;
  v45 = v162;
  v47 = [objc_opt_self() defaultManager];
  v48 = sub_221BCC388();
  v172[0] = 0;
  v49 = [v47 contentsOfDirectoryAtURL:v48 includingPropertiesForKeys:0 options:0 error:v172];

  v50 = v172[0];
  if (v49)
  {
    v150 = v34;
    v51 = sub_221BCD668();
    v52 = v50;

    sub_221BCC4C8();
    v54 = *(v51 + 16);
    if (v54)
    {
      v55 = (*(v155 + 80) + 32) & ~*(v155 + 80);
      v146[1] = v51;
      v56 = v51 + v55;
      v149 = (v152 + 32);
      v167 = (v155 + 8);
      v164 = *(v155 + 72);
      v148 = (v152 + 8);
      v156 = *MEMORY[0x277CCA108];
      *&v53 = 136315394;
      v151 = v53;
      *&v53 = 136315138;
      v153 = v53;
      v57 = v169;
      v160 = v47;
      while (1)
      {
        v170(v45, v56, v171);
        sub_221BCC3E8();
        v58 = sub_221BCD358();

        v172[0] = 0;
        v59 = [v47 attributesOfItemAtPath:v58 error:v172];

        v60 = v172[0];
        if (!v59)
        {
          v83 = v172[0];
          v84 = sub_221BCC338();

          swift_willThrow();
LABEL_19:
          v85 = v158;
          v170(v158, v45, v171);
          v86 = v84;
          v87 = sub_221BCCD68();
          v88 = sub_221BCDA78();

          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v172[0] = v91;
            *v89 = v151;
            v92 = sub_221BCC3E8();
            v93 = v85;
            v95 = v94;
            v168(v93, v171);
            v96 = sub_2219A6360(v92, v95, v172);

            *(v89 + 4) = v96;
            *(v89 + 12) = 2112;
            v97 = v84;
            v98 = _swift_stdlib_bridgeErrorToNSError();
            *(v89 + 14) = v98;
            *v90 = v98;
            _os_log_impl(&dword_221989000, v87, v88, "Could not remove: %s, error: %@", v89, 0x16u);
            sub_2219A6860(v90, &unk_27CFB7630, qword_221BD0790);
            v99 = v90;
            v47 = v160;
            MEMORY[0x223DA4C00](v99, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v91);
            v100 = v91;
            v45 = v162;
            MEMORY[0x223DA4C00](v100, -1, -1);
            v101 = v89;
            v46 = v161;
            MEMORY[0x223DA4C00](v101, -1, -1);

            v168(v45, v171);
          }

          else
          {

            v104 = v85;
            v105 = v171;
            v106 = v168;
            v168(v104, v171);
            v106(v45, v105);
          }

          v57 = v169;
          goto LABEL_31;
        }

        type metadata accessor for FileAttributeKey(0);
        sub_221B82074(&qword_27CFB7590, type metadata accessor for FileAttributeKey, &unk_221BD0350);
        v61 = sub_221BCD298();
        v62 = v60;

        if (!*(v61 + 16))
        {
          break;
        }

        v63 = sub_221B9E924(v156);
        if ((v64 & 1) == 0)
        {
          break;
        }

        sub_22199B650(*(v61 + 56) + 32 * v63, v172);

        v65 = v165;
        v66 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v169, v66 ^ 1u, 1, v65);
        v67 = v65;
        v57 = v169;
        if (__swift_getEnumTagSinglePayload(v169, 1, v67) == 1)
        {
          goto LABEL_16;
        }

        v68 = v57;
        v69 = v154;
        (*v149)(v154, v68, v165);
        sub_221BCC4B8();
        if (v70 >= 3600.0)
        {
          v107 = v147;
          v170(v147, v45, v171);
          v108 = sub_221BCCD68();
          v109 = sub_221BCDA68();
          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v172[0] = v111;
            *v110 = v153;
            v112 = sub_221BCC3E8();
            v114 = v113;
            v168(v107, v171);
            v115 = sub_2219A6360(v112, v114, v172);
            v47 = v160;

            *(v110 + 4) = v115;
            _os_log_impl(&dword_221989000, v108, v109, "Pruning: %s", v110, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v111);
            MEMORY[0x223DA4C00](v111, -1, -1);
            v116 = v110;
            v45 = v162;
            MEMORY[0x223DA4C00](v116, -1, -1);
          }

          else
          {

            v168(v107, v171);
          }

          v117 = sub_221BCC388();
          v172[0] = 0;
          v118 = [v47 removeItemAtURL:v117 error:v172];

          if (!v118)
          {
            v121 = v172[0];
            v84 = sub_221BCC338();

            swift_willThrow();
            (*v148)(v154, v165);
            goto LABEL_19;
          }

          v119 = *v148;
          v120 = v172[0];
          v119(v154, v165);
        }

        else
        {
          (*v148)(v69, v165);
        }

        v168(v45, v171);
LABEL_30:
        v57 = v169;
LABEL_31:
        v56 += v164;
        if (!--v54)
        {

          v44 = v157;
          goto LABEL_37;
        }
      }

      __swift_storeEnumTagSinglePayload(v57, 1, 1, v165);
LABEL_16:
      sub_2219A6860(v57, &qword_27CFBBEB0, &unk_221BE6A10);
      v170(v46, v45, v171);
      v71 = sub_221BCCD68();
      v72 = sub_221BCDA78();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v172[0] = v74;
        *v73 = v153;
        v75 = sub_221BCC3E8();
        v77 = v76;
        v78 = v46;
        v79 = v171;
        v159 = v54;
        v80 = v168;
        v168(v78, v171);
        v81 = sub_2219A6360(v75, v77, v172);
        v47 = v160;

        *(v73 + 4) = v81;
        _os_log_impl(&dword_221989000, v71, v72, "Could not get creation date for: %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x223DA4C00](v74, -1, -1);
        v82 = v73;
        v45 = v162;
        MEMORY[0x223DA4C00](v82, -1, -1);

        v80(v45, v79);
        v54 = v159;
        v46 = v161;
      }

      else
      {

        v102 = v171;
        v103 = v168;
        v168(v46, v171);
        v103(v45, v102);
      }

      goto LABEL_30;
    }

LABEL_37:

    (*(v152 + 8))(v44, v165);
    return (v168)(v150, v171);
  }

  else
  {
    v122 = v172[0];
    v123 = sub_221BCC338();

    swift_willThrow();
    v124 = v167;
    v170(v167, v34, v171);
    v125 = v123;
    v126 = sub_221BCCD68();
    v127 = sub_221BCDA78();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v150 = v34;
      v130 = v129;
      v131 = swift_slowAlloc();
      v160 = v47;
      v170 = v131;
      v172[0] = v131;
      *v128 = 136315394;
      sub_221B82074(&qword_27CFB9278, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v132 = v124;
      v133 = v171;
      v134 = sub_221BCE168();
      v136 = v135;
      v137 = v132;
      v138 = v168;
      v168(v137, v133);
      v139 = sub_2219A6360(v134, v136, v172);

      *(v128 + 4) = v139;
      *(v128 + 12) = 2112;
      v140 = v123;
      v141 = _swift_stdlib_bridgeErrorToNSError();
      *(v128 + 14) = v141;
      *v130 = v141;
      _os_log_impl(&dword_221989000, v126, v127, "Could not prune cache: %s, error: %@", v128, 0x16u);
      sub_2219A6860(v130, &unk_27CFB7630, qword_221BD0790);
      MEMORY[0x223DA4C00](v130, -1, -1);
      v142 = v170;
      __swift_destroy_boxed_opaque_existential_0(v170);
      MEMORY[0x223DA4C00](v142, -1, -1);
      MEMORY[0x223DA4C00](v128, -1, -1);

      return v138(v150, v133);
    }

    else
    {

      v144 = v171;
      v145 = v168;
      v168(v124, v171);
      return v145(v34, v144);
    }
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_221B816B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void static RemoteFileStore.MaintenanceTask.register()()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v53 = [v0 sharedScheduler];
  OUTLINED_FUNCTION_12_13();
  v1 = sub_221BCD358();
  v2 = [v53 taskRequestForIdentifier_];

  if (!v2)
  {
    OUTLINED_FUNCTION_12_13();
    v5 = sub_221BCD358();
    OUTLINED_FUNCTION_7_19();
    OUTLINED_FUNCTION_9_22();
    aBlock[2] = v6;
    aBlock[3] = &block_descriptor_3;
    v7 = _Block_copy(aBlock);
    v14 = OUTLINED_FUNCTION_18_14(v7, sel_registerForTaskWithIdentifier_usingQueue_launchHandler_, v8, v9, v10, v11, v12, v13, v52, v53);
    _Block_release(v7);

    if ((v14 & 1) == 0)
    {
      if (qword_27CFB7380 != -1)
      {
        OUTLINED_FUNCTION_0_48(&qword_27CFB7380);
      }

      v15 = sub_221BCCD88();
      OUTLINED_FUNCTION_178(v15, qword_27CFDEDE0);
      v16 = sub_221BCCD68();
      v17 = sub_221BCDA78();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_15_15();
        OUTLINED_FUNCTION_16_13(v18);
        OUTLINED_FUNCTION_19_13(&dword_221989000, v19, v20, "Unable to register maintenance task.");
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }
    }

    sub_2219A1D20(0, &qword_27CFBBE98, 0x277CF07D8);
    v21 = OUTLINED_FUNCTION_12_13();
    v23 = sub_2219A51F4(v21, v22);
    [v23 setInterval_];
    [v23 setPriority_];
    v24 = [v0 sharedScheduler];
    aBlock[0] = 0;
    v25 = [v24 submitTaskRequest:v23 error:aBlock];

    if (v25)
    {
      v26 = qword_27CFB7380;
      v27 = aBlock[0];
      if (v26 != -1)
      {
        OUTLINED_FUNCTION_0_48(&qword_27CFB7380);
      }

      v28 = sub_221BCCD88();
      OUTLINED_FUNCTION_178(v28, qword_27CFDEDE0);
      v29 = sub_221BCCD68();
      v30 = sub_221BCDA68();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_15_15();
        OUTLINED_FUNCTION_16_13(v31);
        OUTLINED_FUNCTION_20_13(&dword_221989000, v32, v33, "Submitted maintenance task.");
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      goto LABEL_31;
    }

    v34 = aBlock[0];
    v35 = sub_221BCC338();

    swift_willThrow();
    v36 = sub_221BCC328();
    v37 = [v36 domain];
    v38 = sub_221BCD388();
    v40 = v39;

    if (v38 == sub_221BCD388() && v40 == v41)
    {
    }

    else
    {
      v43 = sub_221BCE1B8();

      if ((v43 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if ([v36 code] == 5)
    {

LABEL_31:
      OUTLINED_FUNCTION_17_14();
      return;
    }

LABEL_26:
    if (qword_27CFB7380 != -1)
    {
      OUTLINED_FUNCTION_0_48(&qword_27CFB7380);
    }

    v44 = sub_221BCCD88();
    OUTLINED_FUNCTION_178(v44, qword_27CFDEDE0);
    v45 = v35;
    v46 = sub_221BCCD68();
    v47 = sub_221BCDA78();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_74_0();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = v35;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v51;
      *v49 = v51;
      _os_log_impl(&dword_221989000, v46, v47, "Failed to submit maintenance task: %@", v48, 0xCu);
      sub_2219A6860(v49, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_17_14();
}

id sub_221B81C60(void *a1, const char *a2, void (*a3)(void))
{
  if (qword_27CFB7380 != -1)
  {
    OUTLINED_FUNCTION_0_48(&qword_27CFB7380);
  }

  v6 = sub_221BCCD88();
  OUTLINED_FUNCTION_178(v6, qword_27CFDEDE0);
  v7 = sub_221BCCD68();
  v8 = sub_221BCDA68();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_15_15();
    *v9 = 0;
    _os_log_impl(&dword_221989000, v7, v8, a2, v9, 2u);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  type metadata accessor for RemoteFileStore();
  a3();

  return [a1 setTaskCompleted];
}

uint64_t sub_221B81D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = sub_221BCD578();
  sub_221BCD498();
  return v5;
}

void sub_221B81DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2219A1D20(0, &qword_27CFBBEB8, 0x277CCA9F8);
  v3 = sub_221BCC3E8();
  v5 = sub_221B81EB4(v3, v4, &selRef_fileHandleForWritingAtPath_);
  if (v5)
  {
    v6 = v5;
    [v5 seekToEndOfFile];
    v7 = sub_221BCC448();
    [v6 writeData_];

    [v6 closeFile];
  }

  else
  {
    sub_221BCC498();
  }
}

id sub_221B81EB4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_221BCD358();

  v5 = [swift_getObjCClassFromMetadata() *a3];

  return v5;
}

_BYTE *storeEnumTagSinglePayload for RemoteFileStore.MaintenanceTask(_BYTE *result, int a2, int a3)
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

unint64_t sub_221B82020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBBEA0;
  if (!qword_27CFBBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBBEA0);
  }

  return result;
}

uint64_t sub_221B82074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_221B820E0(uint64_t a1)
{
  v4 = *(sub_221BCC418() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_221B82200;

  return sub_221B7E824(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_221B82200()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t OUTLINED_FUNCTION_0_48(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_22(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_14_17()
{

  JUMPOUT(0x223DA3890);
}

uint64_t OUTLINED_FUNCTION_15_15()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_18_14(int a1, const char *a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10)
{

  return [a10 a2];
}

void OUTLINED_FUNCTION_19_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_20_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_221B824A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBEC8, &unk_221BE7040);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for RemoteFileDescriptor(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v3 exportedContent];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 content];
    sub_221B86810();

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_221B82A1C(v8);
      v16 = [v14 content];
      *(a2 + 24) = &type metadata for LocalFileRepresentation;
      *(a2 + 32) = &off_28351B7F0;

      *a2 = v16;
    }

    else
    {

      sub_221A5E41C(v8, v12);
      v17 = type metadata accessor for RemoteFileRepresentation(0);
      *(a2 + 24) = v17;
      *(a2 + 32) = &off_28351B7B0;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      sub_221A5E41C(v12, boxed_opaque_existential_1);
      sub_2219A1B08(a1, boxed_opaque_existential_1 + *(v17 + 20));
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

id sub_221B8267C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [a1 value];
  v5 = [a1 valueType];
  v6 = [a1 displayRepresentation];
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, sel_initWithValue_valueType_displayRepresentation_, v4, v5, v6);
  swift_unknownObjectRelease();

  v8 = v7;
  v9 = [a1 exportedContent];
  [v8 setExportedContent_];

  return v8;
}

id sub_221B82790(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_221B82A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBEC8, &unk_221BE7040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221B82C10()
{
  v1 = [v0 viewData];
  v2 = sub_221BCC468();

  return v2;
}

uint64_t sub_221B82C68(void *a1)
{
  v1 = [a1 snippetModelData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221BCC468();

  return v3;
}

uint64_t sub_221B82D0C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_221B82D88()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_221B82EAC;

  return v6(v2, v3);
}

uint64_t sub_221B82EAC()
{
  OUTLINED_FUNCTION_0_49();
  v2 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_118_0();
  }

  return v5(v4);
}

double sub_221B82FA4@<D0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  sub_221B83498(v2, v8);
  v5 = swift_allocObject();
  result = *v8;
  v7 = v8[1];
  *(v5 + 16) = v8[0];
  *(v5 + 32) = v7;
  *(v5 + 48) = v9;
  *(v5 + 56) = v4;
  *a2 = sub_221B834D0;
  a2[1] = v5;
  return result;
}

uint64_t sub_221B83020(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  v6 = a2;
  return (*(v4 + 48))(&v6, v3, v4);
}

uint64_t sub_221B83094()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221B83120;

  return sub_221B82D68();
}

uint64_t sub_221B83120()
{
  OUTLINED_FUNCTION_0_49();
  v2 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_118_0();
  }

  return v5(v4);
}

double TransferableExportable.exportedContent.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t dispatch thunk of TransferableData.data.getter(uint64_t a1, uint64_t a2)
{
  v6 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_221B8336C;
  v4 = OUTLINED_FUNCTION_118_0();

  return v6(v4);
}

uint64_t sub_221B8336C()
{
  OUTLINED_FUNCTION_0_49();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_118_0();

  return v4(v3);
}

void sub_221B834F4(void *a1@<X0>, uint64_t (*a2)(void)@<X2>, unint64_t *a3@<X3>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v12 = sub_221BCDAC8();
  if (OUTLINED_FUNCTION_1_45(v12))
  {
    a2(0);
    sub_221B83EA0(a3, a4, a5);
    sub_221BCDAA8();
  }

  else
  {
    v13 = a2(0);
    __swift_storeEnumTagSinglePayload(a6, 1, 1, v13);
  }
}

uint64_t sub_221B835E8(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_221BCDAC8();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  sub_221BCDAA8();

  return v4;
}

void static IntentValueCodable.from(_:context:)(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  v6 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v7 = sub_221BCDAC8();
  if (OUTLINED_FUNCTION_1_45(v7))
  {
    sub_221BCDAA8();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(a4, 1, 1, a2);
  }
}

id sub_221B83754()
{
  v1 = sub_221BCC268();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_221BCDAC8();
  (*(v2 + 16))(v4, v0, v1);
  sub_221B83EA0(&qword_27CFBBEE0, MEMORY[0x277CC88A8], MEMORY[0x277CC88B0]);
  v6 = sub_221BCDAB8();
  v10[3] = v5;
  v10[0] = v6;
  sub_221B83D54();
  v7 = sub_221BCDB78();
  v8 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v10, v7);
}

id sub_221B838A8()
{
  v1 = sub_221BCC318();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_221BCDAC8();
  (*(v2 + 16))(v4, v0, v1);
  sub_221B83EA0(&qword_27CFBBEF0, MEMORY[0x277CC8E50], MEMORY[0x277CC8E58]);
  v6 = sub_221BCDAB8();
  v10[3] = v5;
  v10[0] = v6;
  sub_221B83D54();
  v7 = sub_221BCDB88();
  v8 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v10, v7);
}

id sub_221B839FC(uint64_t a1, uint64_t a2)
{
  v5[1] = a2;
  v5[3] = sub_221BCDAC8();
  v5[0] = sub_221BCDAB8();
  sub_221B83D54();
  v2 = sub_221BCDB98();
  v3 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v5, v2);
}

id IntentValueCodable.lnValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_221BCDAC8();
  (*(v5 + 16))(v7, v2, a1);
  v9 = sub_221BCDAB8();
  v13[3] = v8;
  v13[0] = v9;
  v10 = (*(*(a2 + 16) + 16))(a1);
  v11 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v13, v10);
}

uint64_t sub_221B83C90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_221B835E8(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

unint64_t sub_221B83D54()
{
  result = qword_27CFBBED0;
  if (!qword_27CFBBED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFBBED0);
  }

  return result;
}

uint64_t sub_221B83D98(uint64_t a1)
{
  v2 = MEMORY[0x277CC88A8];
  *(a1 + 24) = sub_221B83EA0(&qword_27CFBBED8, MEMORY[0x277CC88A8], MEMORY[0x277CC88D0]);
  result = sub_221B83EA0(&qword_27CFBBEE0, v2, MEMORY[0x277CC88B0]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_221B83E1C(uint64_t a1)
{
  v2 = MEMORY[0x277CC8E50];
  *(a1 + 24) = sub_221B83EA0(&qword_27CFBBEE8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E70]);
  result = sub_221B83EA0(&qword_27CFBBEF0, v2, MEMORY[0x277CC8E58]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_221B83EA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_1_45(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

void sub_221B83F20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = [a1 valueType];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        v9 = [v7 memberValueType];
        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          v11 = [v10 memberValueTypes];
          sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
          v12 = sub_221BCD668();

          v13 = sub_2219A69A0();
          for (i = 0; ; ++i)
          {
            if (v13 == i)
            {

              return;
            }

            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x223DA3BF0](i, v12);
            }

            else
            {
              if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_19;
              }

              v15 = *(v12 + 8 * i + 32);
            }

            v16 = v15;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v17 = (*(a4 + 16))(v15, a3, a4);

            if (v17)
            {

              return;
            }
          }

          __break(1u);
LABEL_19:
          __break(1u);
        }

        else
        {
          v18 = [v8 memberValueType];
          (*(a4 + 16))();
        }
      }

      else
      {
      }
    }
  }
}

uint64_t _sSa18AppIntentsServicesAA26IntentValueSequenceElementRzlE4from_7contextSayxGSgSo7LNValueC_AA0dE17ConversionContext_ptFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8008, &qword_221BD28C0);
  v5 = swift_dynamicCast();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  MEMORY[0x28223BE20](v5);
  sub_221B84FB4();
  v6 = sub_221BCD5B8();

  return v6;
}

uint64_t sub_221B84284(uint64_t a1)
{
  v2 = *(a1 + 44);
  if (*(v1 + v2))
  {
    v3 = *(v1 + v2);
  }

  else
  {
    v3 = sub_221B842E8(v1, *(a1 + 16), *(a1 + 24), *(a1 + 32));
    *(v1 + v2) = v3;
  }

  return v3;
}

uint64_t sub_221B842E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v10, v8);
  v14 = a2;
  v15 = a3;
  v16 = a4;
  sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
  v11 = sub_221BCD5B8();
  (*(v7 + 8))(v10, a2);
  return v11;
}

uint64_t sub_221B84424@<X0>(uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = *(a3 + 8);
  v6 = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = v6(AssociatedTypeWitness, v5);
  *a4 = result;
  return result;
}

uint64_t sub_221B844A4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v1 + v2))
  {
    v3 = *(v1 + v2);
  }

  else
  {
    sub_221B84508(v1, *(a1 + 16), *(a1 + 24), *(a1 + 32));
    v3 = v4;
    *(v1 + v2) = v4;
  }

  return v3;
}

void sub_221B84508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for LNValueCollector(0, a2, a3, a4);
  v5 = sub_221B84284(v4);
  v18 = MEMORY[0x277D84FA0];
  v6 = sub_2219A69A0();
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223DA3BF0](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = [v8 valueType];
    sub_221BBA264(&v17, v10, v11, v12, v13, v14, v15, v16, v17, v18);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_221B84608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6@<X4>, uint64_t a7@<X5>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for LNValueCollector(0, a4, a6, a7);
  *(a5 + *(result + 44)) = a2;
  *(a5 + *(result + 48)) = a3;
  return result;
}

id sub_221B846A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a2;
  v42 = a5;
  v8 = type metadata accessor for LNValueCollector(0, a3, a4, a5);
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = sub_221BCDC98();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = *(a3 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v41 - v21;
  (*(v12 + 16))(v14, a1, v11, v20);
  if (__swift_getEnumTagSinglePayload(v14, 1, a3) != 1)
  {
    (*(v15 + 32))(v22, v14, a3);
    (*(v15 + 16))(v18, v22, a3);
    sub_221B84608(v18, 0, 0, a3, v10, a4, v42);
    v25 = v10;
    if (dynamic_cast_existential_1_conditional(a3, a3, &protocol descriptor for IntentValueTypeIdentifiable))
    {
      v26 = (*(v24 + 16))();
      v27 = v44;
    }

    else
    {
      v27 = v44;
      v28 = sub_221B844A4(v44);
      if (sub_221BB954C(v28) < 2)
      {
        v26 = sub_2219A280C(v28);

        if (v26)
        {
          goto LABEL_9;
        }

        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v38 = dynamic_cast_existential_1_conditional(AssociatedTypeWitness, AssociatedTypeWitness, &protocol descriptor for IntentValueTypeIdentifiable);
        v23 = v38;
        if (!v38)
        {
          goto LABEL_10;
        }

        v40 = v39;
        if (dynamic_cast_existential_1_class_conditional(v38, v38, &protocol descriptor for _IdentifiableAppEntityRepresentation))
        {
          v30 = [objc_allocWithZone(MEMORY[0x277D23810]) init];
        }

        else
        {
          v30 = (*(v40 + 16))(v23, v40);
        }
      }

      else
      {
        sub_2219A1D20(0, &qword_27CFBBAF0, 0x277D23750);
        v29 = sub_221BB9DCC(v28);

        v30 = sub_221BB956C(v29);
      }

      v26 = v30;
    }

LABEL_9:
    v31 = objc_allocWithZone(MEMORY[0x277D23760]);
    v32 = [v31 initWithMemberValueType:v26 capabilities:v41];
    v33 = sub_221B84284(v27);
    v45[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8008, &qword_221BD28C0);
    v45[0] = v33;
    v34 = objc_allocWithZone(MEMORY[0x277D23958]);
    v35 = v32;
    v23 = sub_2219A6260(v45, v35);

LABEL_10:
    (*(v43 + 8))(v25, v27);
    (*(v15 + 8))(v22, a3);
    return v23;
  }

  (*(v12 + 8))(v14, v11);
  return 0;
}

id Array<A>.lnValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v4 = sub_221BCD748();
  OUTLINED_FUNCTION_0_51();
  WitnessTable = swift_getWitnessTable();
  return sub_221B846A4(&v7, 3, v4, WitnessTable, a3);
}

uint64_t sub_221B84BBC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = static Array<A>.from(_:context:)(a1, a2, *(a3 + 16), *(a4 - 8));
  *a5 = result;
  return result;
}

uint64_t static Set<>.from(_:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = _sSa18AppIntentsServicesAA26IntentValueSequenceElementRzlE4from_7contextSayxGSgSo7LNValueC_AA0dE17ConversionContext_ptFZ_0(a1, a2, a3, a4);
  if (result)
  {
    sub_221BCD748();
    OUTLINED_FUNCTION_0_51();
    swift_getWitnessTable();
    return sub_221BCD9D8();
  }

  return result;
}

id Set<>.lnValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v5 = sub_221BCD9C8();
  WitnessTable = swift_getWitnessTable();
  return sub_221B846A4(&v8, 0, v5, WitnessTable, a3);
}

uint64_t sub_221B84CD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221B84D24(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221B84D94@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = static Set<>.from(_:context:)(a1, a2, *(a3 + 16), *(a4 - 8), *(a3 + 24));
  *a5 = result;
  return result;
}

uint64_t sub_221B84DC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221B84E18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t dynamic_cast_existential_1_class_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!swift_isClassType())
  {
    return 0;
  }

  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  return 0;
}

unint64_t sub_221B84FB4()
{
  result = qword_27CFBBEF8[0];
  if (!qword_27CFBBEF8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB8008, &qword_221BD28C0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CFBBEF8);
  }

  return result;
}

void sub_221B85018(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_221B7B468(319, &qword_27CFBBF80, &qword_27CFB8008, &qword_221BD28C0);
    if (v2 <= 0x3F)
    {
      sub_221B7B468(319, &qword_27CFBBF88, &qword_27CFBBF90, qword_221BE6DC8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_221B850E8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFE)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_221B85234(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v17 = 0;
              *v17 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v17 = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

id sub_221B85444(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  v7 = [v2 title];
  if (a2)
  {
    v8 = sub_221BCD358();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v7 localizedStringForLocaleIdentifier_];

  v10 = sub_221BCD388();
  v12 = v11;

  sub_221BCC418();
  OUTLINED_FUNCTION_0_52();
  v13 = objc_allocWithZone(MEMORY[0x277D23910]);
  v14 = OUTLINED_FUNCTION_1_47(v10, v12);
  v15 = [v3 subtitle];
  if (v15)
  {
    v16 = v15;
    v17 = v14;
    if (a2)
    {
      v18 = v15;
      v19 = a1;
      v20 = sub_221BCD358();
    }

    else
    {
      v19 = a1;
      v22 = v15;
      v20 = 0;
    }

    v23 = [v16 localizedStringForLocaleIdentifier_];

    v24 = sub_221BCD388();
    v26 = v25;

    OUTLINED_FUNCTION_0_52();
    v27 = objc_allocWithZone(MEMORY[0x277D23910]);
    v21 = OUTLINED_FUNCTION_1_47(v24, v26);

    a1 = v19;
    v14 = v17;
  }

  else
  {
    v21 = 0;
  }

  v28 = [v3 image];
  v29 = sub_221B86158(v3);
  if (v29)
  {
    v34 = v29;
    sub_221B85B44(&v34, a1, a2, &v33);

    v30 = v33;
  }

  else
  {
    v30 = 0;
  }

  v31 = objc_allocWithZone(MEMORY[0x277D237D8]);
  return sub_221B860A4(v14, v21, v28, v30);
}

uint64_t sub_221B856C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v4 = [a1 title];
  v5 = [v4 key];

  v6 = sub_221BCD388();
  v8 = v7;

  v9 = [v2 subtitle];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 key];

    v12 = sub_221BCD388();
    v37 = v13;
  }

  else
  {
    v12 = 0;
    v37 = 0;
  }

  v14 = sub_221B86158(v2);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = sub_2219A69A0();
  v38 = v12;
  if (v17)
  {
    v18 = v17;
    result = sub_2219A2FB4(0, v17 & ~(v17 >> 63), 0);
    if (v18 < 0)
    {
      __break(1u);
      return result;
    }

    v33 = v8;
    v34 = v6;
    v35 = v2;
    v36 = a2;
    v20 = 0;
    v21 = v15;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x223DA3BF0](v20, v16);
      }

      else
      {
        v22 = *(v16 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = [v22 key];
      v25 = sub_221BCD388();
      v27 = v26;

      v29 = *(v15 + 16);
      v28 = *(v15 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2219A2FB4((v28 > 1), v29 + 1, 1);
      }

      ++v20;
      *(v15 + 16) = v29 + 1;
      v30 = v15 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
    }

    while (v18 != v20);

    v2 = v35;
    a2 = v36;
    v8 = v33;
    v6 = v34;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v31 = [v2 image];
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v38;
  a2[3] = v37;
  a2[4] = v21;

  if (v31)
  {
    result = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    v32 = &protocol witness table for LNImage;
  }

  else
  {
    result = 0;
    v32 = 0;
  }

  a2[5] = v31;
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = result;
  a2[9] = v32;
  return result;
}

uint64_t sub_221B85944(id a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 displayRepresentation];
    if (v4)
    {
    }

    else
    {

      return 0;
    }
  }

  else
  {

    return 0;
  }

  return a2;
}

uint64_t DisplayRepresentation.init(title:subtitle:synonyms:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  if (a6)
  {
    result = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    v10 = &protocol witness table for LNImage;
  }

  else
  {
    result = 0;
    v10 = 0;
  }

  a7[5] = a6;
  a7[6] = 0;
  a7[7] = 0;
  a7[8] = result;
  a7[9] = v10;
  return result;
}

uint64_t DisplayRepresentation.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DisplayRepresentation.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_221B85AB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7B20, &qword_221BD15C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double DisplayRepresentation.init(title:subtitle:synonyms:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  result = 0.0;
  *(a6 + 40) = 0u;
  *(a6 + 56) = 0u;
  *(a6 + 72) = 0;
  return result;
}

void sub_221B85B44(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v28 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = *a1;
  if (v11 >> 62)
  {
    v12 = sub_221BCDDA8();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
LABEL_14:
    *a4 = v13;
    return;
  }

  v30 = MEMORY[0x277D84F90];
  sub_221BCDF28();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v29 = v12;
    v26 = a4;
    v27 = v4;
    v14 = 0;
    v15 = v11 & 0xC000000000000001;
    v16 = v11;
    do
    {
      if (v15)
      {
        v17 = MEMORY[0x223DA3BF0](v14, v11);
      }

      else
      {
        v17 = *(v11 + 8 * v14 + 32);
      }

      v18 = v17;
      if (a3)
      {
        v19 = sub_221BCD358();
      }

      else
      {
        v19 = 0;
      }

      ++v14;
      v20 = [v18 localizedStringForLocaleIdentifier_];

      v21 = sub_221BCD388();
      v23 = v22;

      v24 = sub_221BCC418();
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v24);
      v25 = objc_allocWithZone(MEMORY[0x277D23910]);
      sub_221B85FA0(v21, v23, 0, 0, v10);

      sub_221BCDEF8();
      sub_221BCDF38();
      sub_221BCDF48();
      sub_221BCDF08();
      v11 = v16;
    }

    while (v29 != v14);
    v13 = v30;
    a4 = v26;
    goto LABEL_14;
  }

  __break(1u);
}

id LNImage.renderingMode.getter()
{
  v1 = [v0 inImage];
  v2 = [v1 _renderingMode];

  return v2;
}

id sub_221B85DD4()
{
  v1 = [v0 inImage];

  return v1;
}

id sub_221B85F04@<X0>(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t *a4@<X8>)
{
  result = [a1 displayRepresentation];
  if (result)
  {
    v8 = result;
    v9 = sub_221B85444(a2, a3);

    return sub_221B856C8(v9, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_221B85FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_221BCD358();

  if (a4)
  {
    v10 = sub_221BCD358();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_221BCC418();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(a5, 1, v11) != 1)
  {
    v12 = sub_221BCC388();
    (*(*(v11 - 8) + 8))(a5, v11);
  }

  v13 = [v6 initWithKey:v9 table:v10 bundleURL:v12];

  return v13;
}

id sub_221B860A4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  if (a4)
  {
    sub_2219A1D20(0, &qword_27CFB7DE0, 0x277D23910);
    v9 = sub_221BCD658();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithTitle:a1 subtitle:a2 image:a3 synonyms:v9];

  return v10;
}

uint64_t sub_221B86158(void *a1)
{
  v1 = [a1 synonyms];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2219A1D20(0, &qword_27CFB7DE0, 0x277D23910);
  v3 = sub_221BCD668();

  return v3;
}

uint64_t sub_221B861D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_221B86218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_52()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

id OUTLINED_FUNCTION_1_47(uint64_t a1, uint64_t a2)
{

  return sub_221B85FA0(a1, a2, 0, 0, v2);
}

id static Calendar.RecurrenceRule.lnValueType.getter()
{
  v0 = [objc_opt_self() recurrenceRuleType];

  return v0;
}

void static Calendar.RecurrenceRule.from(_:context:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_221BCDC08();
  if (swift_dynamicCast())
  {
    sub_221BCDBE8();
  }

  else
  {
    v4 = sub_221BCC598();
    __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

id Calendar.RecurrenceRule.lnValue.getter()
{
  v1 = sub_221BCC598();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_221BCDC08();
  (*(v2 + 16))(v4, v0, v1);
  v6 = sub_221BCDBF8();
  v10[3] = v5;
  v10[0] = v6;
  v7 = [objc_opt_self() recurrenceRuleType];
  v8 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v10, v7);
}

uint64_t sub_221B864E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  a3[3] = &type metadata for AnyTransferableData;
  a3[4] = &off_28351AF48;
  v6 = swift_allocObject();
  *a3 = v6;
  v6[5] = a1;
  v6[6] = a2;
  __swift_allocate_boxed_opaque_existential_1(v6 + 2);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_182();

  return v7();
}

id sub_221B86580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_221BCC388();
  if (!a3)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_221BCD358();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_221BCD358();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() fileWithFileURL:v8 filename:v9 typeIdentifier:v10];

  sub_221BCC418();
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 8))(a1);
  return v11;
}

id sub_221B86688(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_221BCC448();
  v10 = sub_221BCD358();

  if (a6)
  {
    v11 = sub_221BCD358();
  }

  else
  {
    v11 = 0;
  }

  v12 = [swift_getObjCClassFromMetadata() fileWithData:v9 filename:v10 typeIdentifier:v11];

  sub_2219EC040(a1, a2);
  return v12;
}

uint64_t sub_221B86764()
{
  v0 = sub_221B8AE88();
  if (!v0)
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_6;
  }

  sub_221B9C308(*MEMORY[0x277CCA1C0], v0, &v3);

  if (!*(&v4 + 1))
  {
LABEL_6:
    sub_2219A1CC8(&v3, &qword_27CFB7FF8, &qword_221BE6A00);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  return 0;
}

void sub_221B86810()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_45_10();
  v3 = sub_221BCC948();
  v4 = OUTLINED_FUNCTION_8_1(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_31_12();
  type metadata accessor for AppIntentsProtobuf_FileDescriptor(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = (v7 - v6);
  if ([v2 _isFileURLBased] & 1) != 0 || (v9 = objc_msgSend(v2, sel_data), v10 = sub_221BCC468(), v12 = v11, v9, LOBYTE(v9) = sub_221AE9494(v10, v12), sub_2219EC040(v10, v12), (v9))
  {
    type metadata accessor for RemoteFileDescriptor(0);
    OUTLINED_FUNCTION_13_18();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }

  else
  {
    v18 = [v2 data];
    sub_221BCC468();

    sub_221BCC938();
    OUTLINED_FUNCTION_19_14();
    sub_221B8B6F0(v19, v20, &unk_221BD9AB0);
    sub_221BCCB28();
    sub_221B16900(v8, v0);
    v21 = type metadata accessor for RemoteFileDescriptor(0);
    __swift_storeEnumTagSinglePayload(v0, 0, 1, v21);
    OUTLINED_FUNCTION_22();
  }
}

uint64_t IntentFileRepresentation.filename.getter()
{
  OUTLINED_FUNCTION_41_6();
  v0 = OUTLINED_FUNCTION_9_23();
  return v1(v0);
}

uint64_t IntentFileRepresentation.fileSize.getter()
{
  OUTLINED_FUNCTION_41_6();
  v0 = OUTLINED_FUNCTION_9_23();
  return v1(v0);
}

uint64_t IntentFileRepresentation.fileURL.getter()
{
  __swift_project_boxed_opaque_existential_0(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_1_0();
  return v2(v1);
}

uint64_t IntentFileRepresentation.type.getter()
{
  __swift_project_boxed_opaque_existential_0(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_1_0();
  return v2(v1);
}

uint64_t sub_221B86B7C()
{
  OUTLINED_FUNCTION_14_3();
  __swift_project_boxed_opaque_existential_0(*(v0 + 16), *(*(v0 + 16) + 24));
  OUTLINED_FUNCTION_11_19();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_23(v1);

  return v3(v2);
}

void IntentFileRepresentation.dataStream()(uint64_t (**a1)()@<X8>)
{
  sub_221B86D54(v1, v16);
  OUTLINED_FUNCTION_49();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_47_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v15, v12, *v16);
  *(v13 + 48) = v14;
  *(v13 + 56) = 0x100000;
  *a1 = sub_221B834D0;
  a1[1] = v13;
}

void IntentFileRepresentation.dataStream(configuration:)(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  sub_221B86D54(v2, v18);
  OUTLINED_FUNCTION_49();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_47_7(v5, v6, v7, v8, v9, v10, v11, v12, v13, v17, v14, *v18);
  *(v15 + 48) = v16;
  *(v15 + 56) = v4;
  *a2 = sub_221B8B8D8;
  a2[1] = v15;
}

void IntentFileRepresentation.init(data:filename:type:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  OUTLINED_FUNCTION_8_1(v13);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_31_12();
  v15 = OUTLINED_FUNCTION_0_0();
  sub_2219BAF0C(v15, v16, &qword_27CFB7D60, &qword_221BD1870);
  v17 = sub_221BCCC98();
  v18 = OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_49_4(v18, v19, v17);
  if (v20)
  {
    sub_2219A1CC8(v0, &qword_27CFB7D60, &qword_221BD1870);
    v21 = 0;
    v23 = 0;
  }

  else
  {
    v21 = sub_221BCCC88();
    v23 = v22;
    OUTLINED_FUNCTION_0_6();
    (*(v24 + 8))(v0, v17);
  }

  sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
  sub_2219EBFC8(v10, v8);
  v25 = sub_221B86688(v10, v8, v6, v4, v21, v23);
  v12[3] = &type metadata for LocalFileRepresentation;
  v12[4] = &off_28351B7F0;
  sub_2219EC040(v10, v8);
  *v12 = v25;
  sub_2219A1CC8(v2, &qword_27CFB7D60, &qword_221BD1870);
  OUTLINED_FUNCTION_22();
}

void IntentFileRepresentation.init(fileURL:filename:type:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v31 = v3;
  v32 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_31_12();
  v11 = sub_221BCC418();
  OUTLINED_FUNCTION_0_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v17 = v16 - v15;
  v18 = OUTLINED_FUNCTION_40_10();
  v19(v18);
  v20 = OUTLINED_FUNCTION_65_2();
  sub_2219BAF0C(v20, v21, &qword_27CFB7D60, &qword_221BD1870);
  v22 = sub_221BCCC98();
  v23 = OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_49_4(v23, v24, v22);
  if (v25)
  {
    sub_2219A1CC8(v0, &qword_27CFB7D60, &qword_221BD1870);
    v26 = 0;
    v28 = 0;
  }

  else
  {
    v26 = sub_221BCCC88();
    v28 = v27;
    OUTLINED_FUNCTION_0_6();
    (*(v29 + 8))(v0, v22);
  }

  sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
  v30 = sub_221B86580(v17, v31, v32, v26, v28);
  v8[3] = &type metadata for LocalFileRepresentation;
  v8[4] = &off_28351B7F0;
  *v8 = v30;
  sub_2219A1CC8(v2, &qword_27CFB7D60, &qword_221BD1870);
  (*(v13 + 8))(v6, v11);
  OUTLINED_FUNCTION_22();
}

void IntentFileRepresentation.init(fileURL:filename:contentTypeIdentifer:)()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_221BCC418();
  OUTLINED_FUNCTION_0_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v18 = v17 - v16;
  sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
  v19 = OUTLINED_FUNCTION_40_10();
  v20(v19);
  v21 = sub_221B86580(v18, v7, v5, v3, v1);
  v11[3] = &type metadata for LocalFileRepresentation;
  v11[4] = &off_28351B7F0;
  *v11 = v21;
  (*(v14 + 8))(v9, v12);
  OUTLINED_FUNCTION_22();
}

uint64_t IntentFileRepresentation.lnValue.getter()
{
  OUTLINED_FUNCTION_41_6();
  v0 = OUTLINED_FUNCTION_9_23();
  return v1(v0);
}

id static IntentFileRepresentation.lnValueType.getter()
{
  v0 = [objc_opt_self() fileValueType];

  return v0;
}

uint64_t static IntentFileRepresentation.canConvert(_:)(id a1)
{
  if (a1 && (v2 = [a1 valueType]) != 0)
  {
    v3 = v2;
    v4 = static IntentFileRepresentation.canConvertFrom(_:)(v2);
  }

  else
  {
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10(&qword_27CFB7388);
    }

    v5 = sub_221BCCD88();
    __swift_project_value_buffer(v5, qword_27CFDEDF8);
    v6 = a1;
    v3 = sub_221BCCD68();
    v7 = sub_221BCDA78();

    if (os_log_type_enabled(v3, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v6;
      *v9 = a1;
      v10 = v6;
      _os_log_impl(&dword_221989000, v3, v7, "Could not get valueType for: %@", v8, 0xCu);
      sub_2219A1CC8(v9, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }

    v4 = 0;
  }

  return v4 & 1;
}

uint64_t static IntentFileRepresentation.canConvertFrom(_:)(void *a1)
{
  sub_2219A1D20(0, &qword_27CFB7670, 0x277D82BB8);
  v2 = [objc_opt_self() fileValueType];
  OUTLINED_FUNCTION_1_0();
  v3 = sub_221BCDC58();

  if ((v3 & 1) == 0)
  {
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10(&qword_27CFB7388);
    }

    v4 = sub_221BCCD88();
    __swift_project_value_buffer(v4, qword_27CFDEDF8);
    v5 = a1;
    v6 = sub_221BCCD68();
    v7 = sub_221BCDA78();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 2080;
      v11 = v5;
      *(v8 + 14) = sub_2219A6360(0xD000000000000018, 0x8000000221BE7000, &v13);
      _os_log_impl(&dword_221989000, v6, v7, "Cannot convert from %@ to %s", v8, 0x16u);
      sub_2219A1CC8(v9, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_23();
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }
  }

  return v3 & 1;
}

void static IntentFileRepresentation.from(_:context:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_45_10();
  v6 = type metadata accessor for RemoteFileRepresentation(v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBEC8, &unk_221BE7040);
  OUTLINED_FUNCTION_8_1(v11);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  v14 = v41 - v13;
  v15 = type metadata accessor for RemoteFileDescriptor(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  v19 = v18 - v17;
  [v4 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
  if (!swift_dynamicCast())
  {
    goto LABEL_22;
  }

  v20 = v42[0];
  sub_221B86810();
  OUTLINED_FUNCTION_49_4(v14, 1, v15);
  if (v21)
  {
    sub_2219A1CC8(v14, &qword_27CFBBEC8, &unk_221BE7040);
    *(v0 + 24) = &type metadata for LocalFileRepresentation;
    *(v0 + 32) = &off_28351B7F0;
    *v0 = v20;
  }

  else
  {
    sub_221B8B164(v14, v19);
    sub_221A0149C(v2, &v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7658, &unk_221BD0810);
    if (swift_dynamicCast())
    {
      sub_22199C218(v42, v47);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v41[0] = Strong, v41[1] = v47[5], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7780, &unk_221BD0CE0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7788, &qword_221BE7070), (swift_dynamicCast() & 1) != 0))
      {
        if (*(&v45 + 1))
        {
          sub_2219A1D64(&v44, v42);
          OUTLINED_FUNCTION_17_15();
          sub_221B8B604(v19, v10);
          sub_221A0149C(v42, v10 + *(v6 + 20));
          *(v0 + 24) = v6;
          *(v0 + 32) = &off_28351B7B0;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0);
          sub_221B8B164(v10, boxed_opaque_existential_1);

          __swift_destroy_boxed_opaque_existential_0(v42);
          sub_22199C274(v47);
          OUTLINED_FUNCTION_1_48();
          sub_221B8B67C(v19, v25);
          goto LABEL_23;
        }
      }

      else
      {
        v46 = 0;
        v44 = 0u;
        v45 = 0u;
      }

      sub_2219A1CC8(&v44, &qword_27CFB7778, &qword_221BD0CD8);
      if (qword_27CFB7388 != -1)
      {
        OUTLINED_FUNCTION_4_10(&qword_27CFB7388);
      }

      v31 = sub_221BCCD88();
      __swift_project_value_buffer(v31, qword_27CFDEDF8);
      sub_2219EB180(v47, v42);
      v32 = sub_221BCCD68();
      v33 = sub_221BCDA78();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v41[0] = v35;
        *v34 = 136315138;
        *&v44 = swift_unknownObjectWeakLoadStrong();
        *(&v44 + 1) = *(&v43 + 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBF98, &unk_221BE7060);
        v36 = sub_221BCD3D8();
        v38 = v37;
        sub_22199C274(v42);
        v39 = sub_2219A6360(v36, v38, v41);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_221989000, v32, v33, "Could not extract dispatcher from conversion context, got: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_23();
      }

      else
      {

        sub_22199C274(v42);
      }

      sub_22199C274(v47);
      OUTLINED_FUNCTION_1_48();
      sub_221B8B67C(v19, v40);
LABEL_22:
      *(v0 + 32) = 0;
      *v0 = 0u;
      *(v0 + 16) = 0u;
      goto LABEL_23;
    }

    v43 = 0u;
    memset(v42, 0, sizeof(v42));
    sub_2219A1CC8(v42, &qword_27CFB7660, &unk_221BE7050);
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10(&qword_27CFB7388);
    }

    v26 = sub_221BCCD88();
    __swift_project_value_buffer(v26, qword_27CFDEDF8);
    v27 = sub_221BCCD68();
    v28 = sub_221BCDA78();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_221989000, v27, v28, "Unexpected conversion context type", v29, 2u);
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_1_48();
    sub_221B8B67C(v19, v30);
    *v0 = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0;
  }

LABEL_23:
  OUTLINED_FUNCTION_22();
}

void static IntentFileRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v120 = sub_221BCCC98();
  OUTLINED_FUNCTION_0_2();
  v114 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v112 = v7 - v6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBFA0, &qword_221BE7078);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  v119 = &v111 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  v11 = OUTLINED_FUNCTION_8_1(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_5();
  v113 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v117 = &v111 - v15;
  MEMORY[0x28223BE20](v16);
  v118 = &v111 - v17;
  v124 = sub_221BCC418();
  OUTLINED_FUNCTION_0_2();
  v121 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  v115 = v21 - v20;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBFA8, &unk_221BE7080);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v22);
  v24 = &v111 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  v26 = OUTLINED_FUNCTION_8_1(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_5();
  v122 = v27 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v111 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v111 - v33;
  v35 = *(v3 + 24);
  v36 = *(v3 + 32);
  v37 = OUTLINED_FUNCTION_30_11();
  __swift_project_boxed_opaque_existential_0(v37, v38);
  v39 = (*(v36 + 8))(v35, v36);
  v41 = v40;
  v43 = v1[3];
  v42 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v43);
  v45 = v39 == (*(v42 + 8))(v43, v42) && v41 == v44;
  if (v45)
  {
  }

  else
  {
    v46 = sub_221BCE1B8();

    if ((v46 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v47 = OUTLINED_FUNCTION_30_11();
  __swift_project_boxed_opaque_existential_0(v47, v48);
  v49 = OUTLINED_FUNCTION_9_23();
  v51 = v50(v49);
  v53 = v52;
  v54 = v1[3];
  v55 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v54);
  v56 = (*(v55 + 16))(v54, v55);
  if (v53)
  {
    v57 = v124;
  }

  else
  {
    v57 = v124;
    if (v51 != v56)
    {
      goto LABEL_31;
    }
  }

  v58 = OUTLINED_FUNCTION_30_11();
  __swift_project_boxed_opaque_existential_0(v58, v59);
  v60 = OUTLINED_FUNCTION_9_23();
  v61(v60);
  v62 = OUTLINED_FUNCTION_40_10();
  __swift_project_boxed_opaque_existential_0(v62, v63);
  v64 = OUTLINED_FUNCTION_9_23();
  v65(v64);
  v66 = *(v123 + 48);
  OUTLINED_FUNCTION_58_10(v34, v24);
  OUTLINED_FUNCTION_58_10(v31, &v24[v66]);
  OUTLINED_FUNCTION_49_4(v24, 1, v57);
  if (!v45)
  {
    v67 = v122;
    sub_2219BAF0C(v24, v122, &qword_27CFB7DD0, &unk_221BD19F0);
    OUTLINED_FUNCTION_49_4(&v24[v66], 1, v57);
    if (!v68)
    {
      v72 = v121;
      v73 = &v24[v66];
      v74 = v115;
      (*(v121 + 32))(v115, v73, v57);
      OUTLINED_FUNCTION_20_14();
      sub_221B8B6F0(v75, v76, MEMORY[0x277CC9278]);
      OUTLINED_FUNCTION_16();
      LODWORD(v124) = sub_221BCD338();
      v77 = *(v72 + 8);
      v77(v74, v57);
      OUTLINED_FUNCTION_182();
      sub_2219A1CC8(v78, v79, v80);
      OUTLINED_FUNCTION_182();
      sub_2219A1CC8(v81, v82, v83);
      v77(v122, v57);
      OUTLINED_FUNCTION_182();
      sub_2219A1CC8(v84, v85, v86);
      if ((v124 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    sub_2219A1CC8(v31, &qword_27CFB7DD0, &unk_221BD19F0);
    OUTLINED_FUNCTION_35_10();
    (*(v121 + 8))(v67, v57);
LABEL_19:
    v69 = &qword_27CFBBFA8;
    v70 = &unk_221BE7080;
    v71 = v24;
LABEL_30:
    sub_2219A1CC8(v71, v69, v70);
    goto LABEL_31;
  }

  sub_2219A1CC8(v31, &qword_27CFB7DD0, &unk_221BD19F0);
  OUTLINED_FUNCTION_35_10();
  OUTLINED_FUNCTION_49_4(&v24[v66], 1, v57);
  if (!v45)
  {
    goto LABEL_19;
  }

  sub_2219A1CC8(v24, &qword_27CFB7DD0, &unk_221BD19F0);
LABEL_21:
  v87 = OUTLINED_FUNCTION_30_11();
  __swift_project_boxed_opaque_existential_0(v87, v88);
  v89 = v118;
  v90 = OUTLINED_FUNCTION_9_23();
  v91(v90);
  v92 = OUTLINED_FUNCTION_40_10();
  __swift_project_boxed_opaque_existential_0(v92, v93);
  v94 = v117;
  v95 = OUTLINED_FUNCTION_9_23();
  v96(v95);
  v97 = *(v116 + 48);
  v98 = v119;
  OUTLINED_FUNCTION_58_10(v89, v119);
  OUTLINED_FUNCTION_58_10(v94, v98 + v97);
  v99 = v120;
  OUTLINED_FUNCTION_49_4(v98, 1, v120);
  if (!v45)
  {
    v102 = v113;
    sub_2219BAF0C(v98, v113, &qword_27CFB7D60, &qword_221BD1870);
    OUTLINED_FUNCTION_49_4(v98 + v97, 1, v99);
    if (!v103)
    {
      v106 = v114;
      v107 = v112;
      (*(v114 + 32))(v112, v98 + v97, v99);
      sub_221B8B6F0(&qword_27CFBBFB0, MEMORY[0x277D85578], MEMORY[0x277D85590]);
      OUTLINED_FUNCTION_40_10();
      sub_221BCD338();
      v108 = *(v106 + 8);
      v108(v107, v99);
      sub_2219A1CC8(v94, &qword_27CFB7D60, &qword_221BD1870);
      v109 = OUTLINED_FUNCTION_30_11();
      sub_2219A1CC8(v109, v110, &qword_221BD1870);
      v108(v102, v99);
      sub_2219A1CC8(v98, &qword_27CFB7D60, &qword_221BD1870);
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_35_10();
    v104 = OUTLINED_FUNCTION_30_11();
    sub_2219A1CC8(v104, v105, &qword_221BD1870);
    (*(v114 + 8))(v102, v99);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_35_10();
  v100 = OUTLINED_FUNCTION_30_11();
  sub_2219A1CC8(v100, v101, &qword_221BD1870);
  OUTLINED_FUNCTION_49_4(v98 + v97, 1, v99);
  if (!v45)
  {
LABEL_29:
    v69 = &qword_27CFBBFA0;
    v70 = &qword_221BE7078;
    v71 = v98;
    goto LABEL_30;
  }

  sub_2219A1CC8(v98, &qword_27CFB7D60, &qword_221BD1870);
LABEL_31:
  OUTLINED_FUNCTION_22();
}

uint64_t IntentFileRepresentation.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v2);
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000023, 0x8000000221BF1530);
  OUTLINED_FUNCTION_46_7();
  v3 = OUTLINED_FUNCTION_38_8();
  v5 = v4(v3);
  MEMORY[0x223DA31F0](v5);

  MEMORY[0x223DA31F0](0x7A6953656C696620, 0xEB00000000203A65);
  OUTLINED_FUNCTION_46_7();
  v6 = OUTLINED_FUNCTION_38_8();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBFC0, &qword_221BE7090);
  v8 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v8);

  MEMORY[0x223DA31F0](0x4C5255656C696620, 0xEA0000000000203ALL);
  OUTLINED_FUNCTION_46_7();
  v9 = OUTLINED_FUNCTION_38_8();
  v10(v9);
  v11 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v11);

  MEMORY[0x223DA31F0](0xD000000000000018, 0x8000000221BF1560);
  v12 = v0[3];
  v13 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v12);
  (*(v13 + 32))(v12, v13);
  v14 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v14);

  MEMORY[0x223DA31F0](10537, 0xE200000000000000);
  return 0;
}

uint64_t sub_221B886B4()
{
  OUTLINED_FUNCTION_14_3();
  __swift_mutable_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  OUTLINED_FUNCTION_7_20();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_23(v1);

  return v3(v2);
}

uint64_t sub_221B887B0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_0_49();
  v2 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;

  OUTLINED_FUNCTION_114_1();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_118_0();
  }

  return v5(v4);
}

uint64_t sub_221B888A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_221B88930;

  return IntentDataStream.Iterator.next()();
}

uint64_t sub_221B88930()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_0_49();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v7 = *v3;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;

  if (!v1)
  {
    v9 = *(v5 + 16);
    *v9 = v2;
    v9[1] = v0;
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_221B88A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_221B88AFC;

  return sub_221B88C08(a1, a2, a3);
}

uint64_t sub_221B88AFC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_221B88C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221B88C2C, 0, 0);
}

uint64_t sub_221B88C2C()
{
  OUTLINED_FUNCTION_14_3();
  __swift_mutable_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  OUTLINED_FUNCTION_7_20();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_23(v1);

  return v3(v2);
}

uint64_t sub_221B88D28()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21_0();
  v7 = v6;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v10 = v9;
  v7[8] = v0;

  if (v0)
  {
    if (v7[4])
    {
      swift_getObjectType();
      v11 = sub_221BCD778();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    return MEMORY[0x2822009F8](sub_221B88E90, v11, v13);
  }

  else
  {
    v14 = v7[3];
    *v14 = v5;
    v14[1] = v3;
    v15 = *(v9 + 8);

    return v15();
  }
}

uint64_t sub_221B88E90()
{
  OUTLINED_FUNCTION_1_5();
  v0[2] = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_221B88F44()
{
  IntentDataStream.makeAsyncIterator()();
}

uint64_t sub_221B88F78(void *a1)
{
  v1 = [a1 filename];
  sub_221BCD388();

  return OUTLINED_FUNCTION_16();
}

uint64_t sub_221B88FC8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  v3 = OUTLINED_FUNCTION_8_1(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_5();
  v6 = v4 - v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  if ([a1 _isFileURLBased])
  {
    v11 = [a1 fileURL];
    if (v11)
    {
      v12 = v11;
      sub_221BCC3B8();

      v13 = sub_221BCC418();
      v14 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v15 = [a1 data];
    v10 = sub_221BCC468();

    v16 = OUTLINED_FUNCTION_16();
    v6 = MEMORY[0x223DA21D0](v16);
    v17 = OUTLINED_FUNCTION_16();
    sub_2219EC040(v17, v18);
    if ((v6 & 0x8000000000000000) == 0)
    {
      return v6;
    }

    __break(1u);
  }

  v13 = sub_221BCC418();
  v14 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v6, v14, 1, v13);
  v19 = OUTLINED_FUNCTION_0_0();
  sub_221A0FAB8(v19, v20);
  sub_221BCC418();
  v21 = OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_49_4(v21, v22, v13);
  if (v23)
  {
    sub_2219A1CC8(v10, &qword_27CFB7DD0, &unk_221BD19F0);
    return 0;
  }

  else
  {
    v6 = sub_221B86764();
    OUTLINED_FUNCTION_0_6();
    v24 = OUTLINED_FUNCTION_16();
    v25(v24);
  }

  return v6;
}

uint64_t sub_221B8918C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 fileURL];
  if (v3)
  {
    v4 = v3;
    sub_221BCC3B8();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_221BCC418();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

uint64_t sub_221B89208(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  OUTLINED_FUNCTION_8_1(v3);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_31_12();
  sub_221B8B5A4(a1);
  if (v5)
  {
    sub_221BCCCA8();
    v6 = sub_221BCCC98();
    v7 = OUTLINED_FUNCTION_9_1();
    if (!__swift_getEnumTagSinglePayload(v7, v8, v6))
    {
      OUTLINED_FUNCTION_0_6();
      v13 = OUTLINED_FUNCTION_0_0();
      v14(v13);
      v9 = OUTLINED_FUNCTION_49_9();
      return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    }

    sub_2219A1CC8(v1, &qword_27CFB7D60, &qword_221BD1870);
  }

  sub_221BCCC98();
  v9 = OUTLINED_FUNCTION_13_18();
  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_221B89318()
{
  OUTLINED_FUNCTION_8_0();
  v1 = [*(v0 + 16) data];
  sub_221BCC468();

  OUTLINED_FUNCTION_114_1();
  v2 = OUTLINED_FUNCTION_4();

  return v3(v2);
}

void *sub_221B893A4@<X0>(id a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = [a1 data];
  v6 = sub_221BCC468();
  v8 = v7;

  a3[3] = &type metadata for LocalFileRepresentation.DataStream;
  a3[4] = &off_28351B950;
  result = swift_allocObject();
  *a3 = result;
  result[2] = v4;
  result[3] = v6;
  result[4] = v8;
  result[5] = 0;
  return result;
}

id sub_221B8943C(void *a1)
{
  v7[3] = sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 fileValueType];
  v5 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v7, v4);
}

uint64_t sub_221B89508()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221B8B8E0;

  return sub_221B89304(v2);
}

unint64_t sub_221B895C0()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 16);
  v3 = *v1;
  result = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = 0xF000000000000000;
  v7 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      LODWORD(v8) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_25;
      }

      v8 = v8;
      goto LABEL_6;
    case 2uLL:
      v10 = *(result + 16);
      v9 = *(result + 24);
      v11 = __OFSUB__(v9, v10);
      v8 = v9 - v10;
      if (!v11)
      {
        goto LABEL_6;
      }

      goto LABEL_26;
    case 3uLL:
      goto LABEL_19;
    default:
      v8 = BYTE6(v4);
LABEL_6:
      v12 = v8 < 1 || v5 >= v8;
      if (v12)
      {
        v7 = 0;
        v6 = 0xF000000000000000;
LABEL_19:
        v16 = *(v0 + 8);

        return v16(v7, v6);
      }

      result = MEMORY[0x223DA21D0](result);
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_23;
      }

      v12 = __CFADD__(v5, v3);
      v13 = v5 + v3;
      if (v12)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (v13 >= result)
      {
        v14 = result;
      }

      else
      {
        v14 = v13;
      }

      if (v14 >= v5)
      {
        v7 = sub_221B896EC(v5, v14, v1[1], v1[2]);
        v6 = v15;
        v1[3] = v13;
        goto LABEL_19;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
  }
}

uint64_t sub_221B896EC(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a4 >> 62)
  {
    case 1uLL:
      if ((a3 & 0x80000000) != 0)
      {
        goto LABEL_17;
      }

      v4 = a3;
      v5 = a3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v4 = *(a3 + 16);
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      v5 = *(a3 + 24);
LABEL_6:
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_13;
      }

      if (v5 < v4)
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

LABEL_8:
      if ((a1 & 0x8000000000000000) != 0)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      if ((a2 & 0x8000000000000000) != 0)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (a2 >= a1)
      {
        return MEMORY[0x28211D2B0]();
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return MEMORY[0x28211D2B0]();
    default:
      goto LABEL_8;
  }
}

uint64_t sub_221B89768()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221B897F4;

  return sub_221B895AC();
}

uint64_t sub_221B897F4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_0_49();
  v2 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;

  OUTLINED_FUNCTION_114_1();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_118_0();
  }

  return v5(v4);
}

void sub_221B898E4()
{
  OUTLINED_FUNCTION_21();
  sub_221BCC418();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_0();
  type metadata accessor for RemoteFileDescriptor.Content(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_31_12();
  OUTLINED_FUNCTION_0_53();
  sub_221B8B604(v0, v0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *v0;
    sub_221BCDE68();

    v4 = type metadata accessor for RemoteFileDescriptor(0);
    MEMORY[0x223DA31F0](*(v0 + *(v4 + 20)), *(v0 + *(v4 + 20) + 8));
    MEMORY[0x223DA31F0](0x223D726F72726520, 0xE800000000000000);
    v5 = [v3 localizedDescription];
    sub_221BCD388();

    v6 = OUTLINED_FUNCTION_1_0();
    MEMORY[0x223DA31F0](v6);

    MEMORY[0x223DA31F0](15906, 0xE200000000000000);

LABEL_13:
    OUTLINED_FUNCTION_22();
    return;
  }

  v7 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0) + 48);
  v29 = *v7;
  v8 = v7[8];
  OUTLINED_FUNCTION_56_10();
  v10 = *v9;
  v11 = v9[1];
  v12 = OUTLINED_FUNCTION_65_2();
  v13(v12);
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD00000000000001BLL, 0x8000000221BF15B0);
  v14 = type metadata accessor for RemoteFileDescriptor(0);
  MEMORY[0x223DA31F0](*(v0 + *(v14 + 20)), *(v0 + *(v14 + 20) + 8));
  MEMORY[0x223DA31F0](0x3D6C727520, 0xE500000000000000);
  OUTLINED_FUNCTION_20_14();
  sub_221B8B6F0(v15, v16, MEMORY[0x277CC9290]);
  v17 = sub_221BCE168();
  MEMORY[0x223DA31F0](v17);

  MEMORY[0x223DA31F0](0x3D657A697320, 0xE600000000000000);
  v18 = 7104878;
  v19 = 0xE300000000000000;
  if (v8)
  {
LABEL_6:
    MEMORY[0x223DA31F0](v18, v19);

    MEMORY[0x223DA31F0](0x3D657079742029, 0xE700000000000000);
    if (v11)
    {
      v25 = v10;
    }

    else
    {
      v25 = 7104878;
    }

    if (v11)
    {
      v26 = v11;
    }

    else
    {
      v26 = 0xE300000000000000;
    }

    MEMORY[0x223DA31F0](v25, v26);

    MEMORY[0x223DA31F0](62, 0xE100000000000000);
    v27 = OUTLINED_FUNCTION_118_0();
    v28(v27);
    goto LABEL_13;
  }

  v20 = v10;
  v21 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  if ((v29 & 0x8000000000000000) == 0)
  {
    v22 = v21;
    v23 = [v21 stringFromByteCount_];

    v18 = sub_221BCD388();
    v19 = v24;

    v10 = v20;
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_221B89CA0(uint64_t a1)
{
  v1 = type metadata accessor for RemoteFileDescriptor(0);
  v2 = OUTLINED_FUNCTION_8_1(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_0();
  type metadata accessor for AppIntentsProtobuf_FileDescriptor(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_19_14();
  sub_221B8B6F0(v4, v5, &unk_221BD9AB0);
  sub_221BCCB58();
  v7 = sub_221BCCB18();
  OUTLINED_FUNCTION_22_13();
  return v7;
}

uint64_t sub_221B89F38()
{
  type metadata accessor for RemoteFileDescriptor(0);

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221B89F74()
{
  type metadata accessor for RemoteFileDescriptor.Content(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_0();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_0_53();
  sub_221B8B604(v0, v4);
  OUTLINED_FUNCTION_4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_18_15();
    sub_221B8B67C(v4, v5);
    return 0;
  }

  else
  {
    v6 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0) + 48));

    sub_221BCC418();
    OUTLINED_FUNCTION_2_1();
    (*(v7 + 8))(v4);
  }

  return v6;
}

uint64_t sub_221B8A07C()
{
  v1 = OUTLINED_FUNCTION_45_10();
  type metadata accessor for RemoteFileDescriptor.Content(v1);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_31_12();
  OUTLINED_FUNCTION_0_53();
  v3 = OUTLINED_FUNCTION_65_2();
  sub_221B8B604(v3, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_221BCC418();
    v5 = OUTLINED_FUNCTION_13_18();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    OUTLINED_FUNCTION_18_15();
    return sub_221B8B67C(v0, v9);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0);
    OUTLINED_FUNCTION_56_10();

    sub_221BCC418();
    OUTLINED_FUNCTION_2_1();
    v11 = OUTLINED_FUNCTION_0_0();
    v12(v11);
    v13 = OUTLINED_FUNCTION_49_9();
    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }
}

uint64_t sub_221B8A17C()
{
  v1 = OUTLINED_FUNCTION_45_10();
  type metadata accessor for RemoteFileDescriptor.Content(v1);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_31_12();
  OUTLINED_FUNCTION_0_53();
  v3 = OUTLINED_FUNCTION_65_2();
  sub_221B8B604(v3, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_221B8B67C(v0, type metadata accessor for RemoteFileDescriptor.Content);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0);
    OUTLINED_FUNCTION_56_10();
    v6 = *(v5 + 8);
    sub_221BCC418();
    OUTLINED_FUNCTION_2_1();
    (*(v7 + 8))(v0);
    if (v6)
    {
      OUTLINED_FUNCTION_1_0();
      return sub_221BCCCA8();
    }
  }

  sub_221BCCC98();
  v9 = OUTLINED_FUNCTION_13_18();
  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_221B8A290()
{
  OUTLINED_FUNCTION_1_5();
  v1[9] = v0;
  v2 = type metadata accessor for RemoteFileDescriptor.Content(0);
  v1[10] = v2;
  OUTLINED_FUNCTION_8_1(v2);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B8A31C, 0, 0);
}

uint64_t sub_221B8A31C()
{
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_0_53();
  sub_221B8B604(v2, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v0 + 88);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = &type metadata for RemoteFileRepresentation.FailedDataStream;
    v6 = *v4;
    *(v0 + 40) = &type metadata for RemoteFileRepresentation.FailedDataStream;
    *(v0 + 48) = &off_28351B940;
    *(v0 + 16) = v6;
  }

  else
  {
    v7 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0);
    OUTLINED_FUNCTION_56_10();

    v8 = type metadata accessor for RemoteFileRepresentation.DataStream(0);
    *(v0 + 40) = v8;
    *(v0 + 48) = &off_28351B930;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    v10 = *(v8 + 24);
    sub_221BCC418();
    OUTLINED_FUNCTION_2_1();
    (*(v11 + 32))(boxed_opaque_existential_1 + v10, v4);
    v12 = type metadata accessor for RemoteFileRepresentation(0);
    sub_221A0149C(v7 + *(v12 + 20), (boxed_opaque_existential_1 + 1));
    *(boxed_opaque_existential_1 + *(v8 + 28)) = 0;
    *boxed_opaque_existential_1 = 0x100000;
    v5 = *(v0 + 40);
  }

  *(v0 + 56) = xmmword_221BD8630;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v5);
  OUTLINED_FUNCTION_7_20();
  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_6_23(v13);

  return v15(v14);
}

uint64_t sub_221B8A524()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  *v3 = *v1;
  v2[13] = v4;
  v2[14] = v5;
  v2[15] = v0;

  if (v0)
  {
    v6 = sub_221B8A7A4;
  }

  else
  {
    v6 = sub_221B8A630;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221B8A630()
{
  OUTLINED_FUNCTION_14_3();
  if (v0[14] >> 60 == 15)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    OUTLINED_FUNCTION_114_1();
    v1 = OUTLINED_FUNCTION_4();

    return v2(v1);
  }

  else
  {
    OUTLINED_FUNCTION_118_0();
    sub_221BCC4A8();
    v4 = OUTLINED_FUNCTION_118_0();
    sub_2219EC02C(v4, v5);
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
    OUTLINED_FUNCTION_7_20();
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v7 = OUTLINED_FUNCTION_6_23(v6);

    return v8(v7);
  }
}

uint64_t sub_221B8A7A4()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219EC040(v0[7], v0[8]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_221B8A818(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_45_10();
  type metadata accessor for RemoteFileDescriptor.Content(v4);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = (v7 - v6);
  v9 = *a1;
  OUTLINED_FUNCTION_0_53();
  v10 = OUTLINED_FUNCTION_16();
  sub_221B8B604(v10, v11);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v13 = *v8;
    v1[3] = &type metadata for RemoteFileRepresentation.FailedDataStream;
    v1[4] = &off_28351B940;
    *v1 = v13;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0);

    v14 = type metadata accessor for RemoteFileRepresentation.DataStream(0);
    v1[3] = v14;
    v1[4] = &off_28351B930;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
    v16 = *(v14 + 24);
    sub_221BCC418();
    OUTLINED_FUNCTION_2_1();
    (*(v17 + 32))(boxed_opaque_existential_1 + v16, v8);
    v18 = type metadata accessor for RemoteFileRepresentation(0);
    result = sub_221A0149C(v2 + *(v18 + 20), (boxed_opaque_existential_1 + 1));
    *(boxed_opaque_existential_1 + *(v14 + 28)) = 0;
    *boxed_opaque_existential_1 = v9;
  }

  return result;
}

uint64_t sub_221B8A998()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221B8B8E0;

  return sub_221B8A290();
}

uint64_t sub_221B8AA3C()
{
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_0(v1 + 1, v1[4]);
  v2 = OUTLINED_FUNCTION_32_5();
  v3 = *(type metadata accessor for RemoteFileRepresentation.DataStream(v2) + 28);
  *(v0 + 104) = v3;
  *(v0 + 72) = *(v1 + v3);
  *(v0 + 80) = *v1;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_221B8AB18;

  return sub_221B51588();
}

uint64_t sub_221B8AB18()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = v0;
  v8 = *(v7 + 80);
  v9 = *(v7 + 72);
  v10 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v11 = v10;
  *(v3 + 96) = v0;

  v12 = __CFADD__(v9, v8);
  *(v3 + 56) = v12;
  *(v3 + 48) = v9 + v8;
  *(v3 + 108) = v12;
  if (v0)
  {
    v13 = sub_221B8ACA8;
  }

  else
  {
    v13 = sub_221B8AC64;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_221B8AC64()
{
  if (*(v0 + 108))
  {
    __break(1u);
  }

  else
  {
    *(*(v0 + 64) + *(v0 + 104)) = *(v0 + 48);
    OUTLINED_FUNCTION_114_1();
    return v1();
  }

  return result;
}

uint64_t sub_221B8ACA8()
{
  if (*(v0 + 108))
  {
    __break(1u);
  }

  else
  {
    *(*(v0 + 64) + *(v0 + 104)) = *(v0 + 48);
    return (*(v0 + 8))();
  }

  return result;
}

uint64_t sub_221B8ACDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221B8B8E0;

  return sub_221B8AA28();
}

uint64_t sub_221B8AD7C()
{
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 16);
  swift_willThrow();
  v4 = *(v0 + 8);
  v2 = v1;

  return v4();
}

uint64_t sub_221B8ADF4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221B8B8E0;

  return sub_221B8AD68(v2);
}

uint64_t sub_221B8AE88()
{
  v21 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  sub_221BCC3E8();
  v1 = sub_221BCD358();

  v17 = 0;
  v2 = [v0 attributesOfItemAtPath:v1 error:&v17];

  v3 = v17;
  if (v2)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_221B8B6F0(&qword_27CFB7590, type metadata accessor for FileAttributeKey, &unk_221BD0350);
    OUTLINED_FUNCTION_4();
    v4 = sub_221BCD298();
    v5 = v3;
  }

  else
  {
    v6 = v17;
    v7 = sub_221BCC338();

    swift_willThrow();
    v20 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
    swift_dynamicCast();
    v8 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7890, &qword_221BD0DD8);
    OUTLINED_FUNCTION_49();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_221BD19E0;
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_221BCDE68();

    v17 = 0xD000000000000015;
    v18 = 0x8000000221BF1590;
    v10 = [v8 description];
    v11 = sub_221BCD388();
    v13 = v12;

    MEMORY[0x223DA31F0](v11, v13);

    v14 = v17;
    v15 = v18;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 32) = v14;
    *(v9 + 40) = v15;
    sub_221BCE2E8();

    return 0;
  }

  return v4;
}

uint64_t sub_221B8B164(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_32_5();
  v4(v3);
  OUTLINED_FUNCTION_2_1();
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return a2;
}

unint64_t sub_221B8B1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBBFC8;
  if (!qword_27CFBBFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBBFC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntentDataStreamConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntentDataStreamConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_221B8B2F0(uint64_t a1)
{
  result = type metadata accessor for RemoteFileDescriptor.Content(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_221B8B364(uint64_t a1)
{
  sub_221B8B3E8(319);
  if (v1 <= 0x3F)
  {
    sub_2219A1D20(319, &qword_27CFBAF28, 0x277CCA9B8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_221B8B3E8(uint64_t a1)
{
  if (!qword_27CFBBFF0)
  {
    sub_221BCC418();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFBBFC0, &qword_221BE7090);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB8338, &unk_221BD2DE0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CFBBFF0);
    }
  }
}

uint64_t sub_221B8B4B4(uint64_t a1)
{
  result = type metadata accessor for RemoteFileDescriptor(319);
  if (v2 <= 0x3F)
  {
    result = sub_221B8B538();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_221B8B538()
{
  result = qword_27CFBC008;
  if (!qword_27CFBC008)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CFBC008);
  }

  return result;
}

uint64_t sub_221B8B5A4(void *a1)
{
  v1 = [a1 typeIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_221BCD388();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221B8B604(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_32_5();
  v4(v3);
  OUTLINED_FUNCTION_2_1();
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return a2;
}

uint64_t sub_221B8B67C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_221B8B6F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_221B8B760(uint64_t a1)
{
  result = sub_221B8B538();
  if (v2 <= 0x3F)
  {
    result = sub_221BCC418();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_221B8B828(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 32))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
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

uint64_t sub_221B8B874(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_13()
{

  return sub_221B8B67C(v0, type metadata accessor for AppIntentsProtobuf_FileDescriptor);
}

uint64_t OUTLINED_FUNCTION_35_10()
{

  return sub_2219A1CC8(v2, v0, v1);
}

void *OUTLINED_FUNCTION_46_7()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_0(v0, v2);
}

__n128 OUTLINED_FUNCTION_47_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, uint64_t a9, __n128 a11, __int128 a12)
{
  result = a11;
  *(a1 + 16) = a11;
  *(a1 + 32) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_10(uint64_t a1, uint64_t a2)
{

  return sub_2219BAF0C(a1, a2, v2, v3);
}

uint64_t sub_221B8BB18(void *a1)
{
  OUTLINED_FUNCTION_7_21(a1);
  v5 = v2(0);
  return (*(v4 + 8))(v5, v5, v1, v3, v4);
}

uint64_t sub_221B8BB80(void *a1)
{
  OUTLINED_FUNCTION_7_21(a1);
  v1 = OUTLINED_FUNCTION_4_26();
  return v2(v1);
}

uint64_t static IntentValue.acceptVisitor(_:)(void *a1)
{
  OUTLINED_FUNCTION_7_21(a1);
  v1 = OUTLINED_FUNCTION_4_26();
  return v2(v1);
}

void sub_221B8BC18(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a1)
  {
    v4 = *(a3 + 32);
    v5 = a1;
    v4();
  }

  else
  {

    __swift_storeEnumTagSinglePayload(a4, 1, 1, a2);
  }
}

uint64_t _IntentValueConversionContext.init(origin:dispatcher:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = *a1;
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  *(a4 + 40) = 0;
  swift_unknownObjectWeakInit();
  *a4 = v14;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  if (a2 && (swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7780, &unk_221BD0CE0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC028, &unk_221BE7540), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v16 + 1))
    {
      sub_22198B358(&v15, v18);
      v9 = v19;
      v10 = v20;
      __swift_project_boxed_opaque_existential_0(v18, v19);
      (*(v10 + 8))(v9, v10);
      v12 = v11;
      swift_unknownObjectRelease();
      *(a4 + 40) = v12;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v18);
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
  }

  sub_2219A6860(&v15, &qword_27CFBC020, &unk_221BE7530);
  *(a4 + 40) = a3;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void *sub_221B8BF48(void *result, uint64_t (*a2)(void))
{
  if (result)
  {
    v3 = result;
    v4 = [v3 valueType];
    LOBYTE(a2) = a2();

    return (a2 & 1);
  }

  return result;
}

uint64_t sub_221B8BFB0(void *a1, void *a2, SEL *a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    v9 = a1;
    v10 = [v9 valueType];
    v11 = sub_221B8C59C(v10, a2, a3, a4, a5);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_221B8C03C(void *a1, uint64_t (*a2)(void), uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    v8 = [v7 valueType];
    v9 = sub_221B8C744(v8, a2, a3, a4);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void *static IntentValueTypeIdentifiable.canConvert(_:)(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    v5 = [v4 valueType];
    v6 = (*(*(a3 + 8) + 16))();

    return (v6 & 1);
  }

  return result;
}

uint64_t sub_221B8C198(void *a1)
{
  sub_2219A1D20(0, &qword_27CFB7670, 0x277D82BB8);
  v2 = [objc_opt_self() attributedStringValueType];
  v3 = sub_221BCDC58();

  if ((v3 & 1) == 0)
  {
    if (qword_27CFB7388 != -1)
    {
      swift_once();
    }

    v4 = sub_221BCCD88();
    __swift_project_value_buffer(v4, qword_27CFDEDF8);
    v5 = a1;
    v6 = sub_221BCCD68();
    v7 = sub_221BCDA78();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 2080;
      v11 = v5;
      *(v8 + 14) = sub_2219A6360(0xD000000000000010, 0x8000000221BF15D0, &v13);
      _os_log_impl(&dword_221989000, v6, v7, "Cannot convert from %@ to %s", v8, 0x16u);
      sub_2219A6860(v9, &unk_27CFB7630, qword_221BD0790);
      MEMORY[0x223DA4C00](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DA4C00](v10, -1, -1);
      MEMORY[0x223DA4C00](v8, -1, -1);
    }
  }

  return v3 & 1;
}

uint64_t sub_221B8C398(void *a1)
{
  sub_2219A1D20(0, &qword_27CFB7670, 0x277D82BB8);
  sub_2219A1D20(0, &qword_27CFBBED0, 0x277D237A8);
  v2 = sub_221BCDB88();
  v3 = sub_221BCDC58();

  if ((v3 & 1) == 0)
  {
    if (qword_27CFB7388 != -1)
    {
      swift_once();
    }

    v4 = sub_221BCCD88();
    __swift_project_value_buffer(v4, qword_27CFDEDF8);
    v5 = a1;
    v6 = sub_221BCCD68();
    v7 = sub_221BCDA78();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 2080;
      v11 = v5;
      *(v8 + 14) = sub_2219A6360(0xD000000000000014, 0x8000000221BF15F0, &v13);
      _os_log_impl(&dword_221989000, v6, v7, "Cannot convert from %@ to %s", v8, 0x16u);
      sub_2219A6860(v9, &unk_27CFB7630, qword_221BD0790);
      MEMORY[0x223DA4C00](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DA4C00](v10, -1, -1);
      MEMORY[0x223DA4C00](v8, -1, -1);
    }
  }

  return v3 & 1;
}

uint64_t sub_221B8C59C(void *a1, void *a2, SEL *a3, uint64_t a4, unint64_t a5)
{
  sub_2219A1D20(0, &qword_27CFB7670, 0x277D82BB8);
  v10 = [objc_opt_self() *a3];
  v11 = OUTLINED_FUNCTION_19_15();

  if ((v11 & 1) == 0)
  {
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10(&qword_27CFB7388);
    }

    v12 = sub_221BCCD88();
    __swift_project_value_buffer(v12, qword_27CFDEDF8);
    v13 = a1;
    v14 = sub_221BCCD68();
    v15 = sub_221BCDA78();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      OUTLINED_FUNCTION_11_20(5.778e-34);
      *(v16 + 14) = sub_2219A6360(a4, a5, &v22);
      OUTLINED_FUNCTION_18_16(&dword_221989000, v19, v20, "Cannot convert from %@ to %s");
      sub_2219A6860(v17, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_23();
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }
  }

  return v11 & 1;
}

uint64_t sub_221B8C744(void *a1, uint64_t (*a2)(void), uint64_t a3, unint64_t a4)
{
  sub_2219A1D20(0, &qword_27CFB7670, 0x277D82BB8);
  sub_2219A1D20(0, &qword_27CFBBED0, 0x277D237A8);
  a2();
  v9 = OUTLINED_FUNCTION_19_15();

  if ((v9 & 1) == 0)
  {
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10(&qword_27CFB7388);
    }

    v10 = sub_221BCCD88();
    __swift_project_value_buffer(v10, qword_27CFDEDF8);
    v11 = a1;
    v12 = sub_221BCCD68();
    v13 = sub_221BCDA78();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      OUTLINED_FUNCTION_11_20(5.778e-34);
      *(v14 + 14) = sub_2219A6360(a3, a4, &v20);
      OUTLINED_FUNCTION_18_16(&dword_221989000, v17, v18, "Cannot convert from %@ to %s");
      sub_2219A6860(v15, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_23();
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }
  }

  return v9 & 1;
}

uint64_t static IntentValueTypeIdentifiable.canConvertFrom(_:)(void *a1, uint64_t a2)
{
  sub_2219A1D20(0, &qword_27CFB7670, 0x277D82BB8);
  v3 = OUTLINED_FUNCTION_10_19();
  v5 = v4(v3);
  v6 = sub_221BCDC58();

  if ((v6 & 1) == 0)
  {
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10(&qword_27CFB7388);
    }

    v7 = sub_221BCCD88();
    __swift_project_value_buffer(v7, qword_27CFDEDF8);
    v8 = a1;
    v9 = sub_221BCCD68();
    v10 = sub_221BCDA78();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v11 = 138412546;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2080;
      v14 = v8;
      v15 = sub_221BCE478();
      v17 = sub_2219A6360(v15, v16, &v19);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_221989000, v9, v10, "Cannot convert from %@ to %s", v11, 0x16u);
      sub_2219A6860(v12, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_23();
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }
  }

  return v6 & 1;
}

uint64_t _IntentValueConversionContext.origin.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;

  return sub_221998178(v4, v5);
}

uint64_t sub_221B8CCA4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v5 = (a3)(0);
  v13 = OUTLINED_FUNCTION_12_14(v5, v6, v7, v8, v9, v10, v11, v12, v15);
  return OUTLINED_FUNCTION_20_15(v13);
}

uint64_t sub_221B8CD20(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221B8CDA0(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_221B8CE20(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v2 = swift_dynamicCast();
  v3 = v5;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 8);
}

uint64_t sub_221B8CEA4(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v2 = swift_dynamicCast();
  v3 = v5;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 16);
}

unint64_t sub_221B8CF28(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v2 = swift_dynamicCast();
  v3 = v5;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 32);
}

uint64_t sub_221B8CFB4(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v4 = swift_dynamicCast();
  v5 = v7;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

uint64_t static IntentValueTypeIdentifiable.from(_:context:)(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  v2 = swift_unknownObjectRelease();
  v10 = OUTLINED_FUNCTION_12_14(v2, v3, v4, v5, v6, v7, v8, v9, v12);
  return OUTLINED_FUNCTION_20_15(v10);
}

id IntentValueTypeIdentifiable.lnValue.getter(uint64_t a1)
{
  v9[3] = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v1, a1);
  v4 = OUTLINED_FUNCTION_10_19();
  v6 = v5(v4);
  v7 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v9, v6);
}

id static LNValue.from(_:context:)(void *a1)
{
  v2 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v3 = [a1 valueType];
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return sub_2219A6260(v6, v3);
}

id sub_221B8D200@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = static LNValue.from(_:context:)(a1);
  *a2 = result;
  return result;
}

id sub_221B8D228(uint64_t a1)
{
  OUTLINED_FUNCTION_0_54();
  swift_getWitnessTable();
  return IntentValueTypeIdentifiable.lnValue.getter(a1);
}

unint64_t sub_221B8D26C(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_54();
  WitnessTable = swift_getWitnessTable();
  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, WitnessTable) & 1;
}

uint64_t sub_221B8D2C0(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_54();
  swift_getWitnessTable();
  return static IntentValueTypeIdentifiable.from(_:context:)(a1);
}

uint64_t sub_221B8D3E8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_221B8CDA0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_221B8D82C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_221B8CE20(a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_221B8D8F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_221B8CEA4(a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

unint64_t sub_221B8D9B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_221B8CF28(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_221B8DC08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_221B8CD20(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *OUTLINED_FUNCTION_7_21(void *a1)
{
  v2 = a1[3];

  return __swift_project_boxed_opaque_existential_0(a1, v2);
}

uint64_t OUTLINED_FUNCTION_9_24(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

id OUTLINED_FUNCTION_11_20(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *v3 = v2;
  *(v1 + 12) = 2080;

  return v2;
}

uint64_t OUTLINED_FUNCTION_12_14(void x0_0, void x1_0, void a3, void a4, void a5, void a6, void a7, void a8, uint64_t a2)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_18_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_19_15()
{

  return sub_221BCDC58();
}

uint64_t OUTLINED_FUNCTION_20_15(int a1)
{

  return __swift_storeEnumTagSinglePayload(v2, a1 ^ 1u, 1, v1);
}

BOOL static Measurement<>.canConvertFrom(_:)(void *a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    if (qword_27CFB7388 != -1)
    {
      swift_once();
    }

    v4 = sub_221BCCD88();
    __swift_project_value_buffer(v4, qword_27CFDEDF8);
    v5 = a1;
    v6 = sub_221BCCD68();
    v7 = sub_221BCDA78();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 2080;
      sub_221BCC258();
      v11 = v5;
      v12 = sub_221BCE478();
      v14 = sub_2219A6360(v12, v13, &v16);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_221989000, v6, v7, "Cannot convert from %@ to %s", v8, 0x16u);
      sub_22199B738(v9);
      MEMORY[0x223DA4C00](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DA4C00](v10, -1, -1);
      MEMORY[0x223DA4C00](v8, -1, -1);
    }
  }

  return v3 != 0;
}

id static Measurement<>.lnValueType.getter()
{
  v0 = sub_2219A1D20(0, &qword_27CFBC030, 0x277CCAE20);
  if (OUTLINED_FUNCTION_0_55(v0))
  {
    v1 = objc_opt_self();
    v2 = &selRef_lengthValueType;
  }

  else
  {
    v3 = sub_2219A1D20(0, &qword_27CFBC038, 0x277CCAE28);
    if (OUTLINED_FUNCTION_0_55(v3))
    {
      v1 = objc_opt_self();
      v2 = &selRef_massValueType;
    }

    else
    {
      v4 = sub_2219A1D20(0, &qword_27CFBC040, 0x277CCAE48);
      if (OUTLINED_FUNCTION_0_55(v4))
      {
        v1 = objc_opt_self();
        v2 = &selRef_temperatureValueType;
      }

      else
      {
        v5 = sub_2219A1D20(0, &qword_27CFBC048, 0x277CCAE50);
        if (OUTLINED_FUNCTION_0_55(v5))
        {
          v1 = objc_opt_self();
          v2 = &selRef_volumeValueType;
        }

        else
        {
          v6 = sub_2219A1D20(0, &qword_27CFBC050, 0x277CCAE40);
          if (OUTLINED_FUNCTION_0_55(v6))
          {
            v1 = objc_opt_self();
            v2 = &selRef_speedValueType;
          }

          else
          {
            v7 = sub_2219A1D20(0, &qword_27CFBC058, 0x277CCADF8);
            if (OUTLINED_FUNCTION_0_55(v7))
            {
              v1 = objc_opt_self();
              v2 = &selRef_energyValueType;
            }

            else
            {
              v8 = sub_2219A1D20(0, &qword_27CFBC060, 0x277CCADD0);
              if (OUTLINED_FUNCTION_0_55(v8))
              {
                v1 = objc_opt_self();
                v2 = &selRef_durationValueType;
              }

              else
              {
                v9 = sub_2219A1D20(0, &qword_27CFBC068, 0x277CCADA0);
                if (OUTLINED_FUNCTION_0_55(v9))
                {
                  v1 = objc_opt_self();
                  v2 = &selRef_accelerationValueType;
                }

                else
                {
                  v10 = sub_2219A1D20(0, &qword_27CFBC070, 0x277CCADA8);
                  if (OUTLINED_FUNCTION_0_55(v10))
                  {
                    v1 = objc_opt_self();
                    v2 = &selRef_angleValueType;
                  }

                  else
                  {
                    v11 = sub_2219A1D20(0, &qword_27CFBC078, 0x277CCADB0);
                    if (OUTLINED_FUNCTION_0_55(v11))
                    {
                      v1 = objc_opt_self();
                      v2 = &selRef_areaValueType;
                    }

                    else
                    {
                      v12 = sub_2219A1D20(0, &qword_27CFBC080, 0x277CCADB8);
                      if (OUTLINED_FUNCTION_0_55(v12))
                      {
                        v1 = objc_opt_self();
                        v2 = &selRef_concentrationMassValueType;
                      }

                      else
                      {
                        v13 = sub_2219A1D20(0, &qword_27CFBC088, 0x277CCADC8);
                        if (OUTLINED_FUNCTION_0_55(v13))
                        {
                          v1 = objc_opt_self();
                          v2 = &selRef_dispersionValueType;
                        }

                        else
                        {
                          v14 = sub_2219A1D20(0, &qword_27CFBC090, 0x277CCADD8);
                          if (OUTLINED_FUNCTION_0_55(v14))
                          {
                            v1 = objc_opt_self();
                            v2 = &selRef_electricChargeValueType;
                          }

                          else
                          {
                            v15 = sub_2219A1D20(0, &qword_27CFBC098, 0x277CCADE0);
                            if (OUTLINED_FUNCTION_0_55(v15))
                            {
                              v1 = objc_opt_self();
                              v2 = &selRef_electricCurrentValueType;
                            }

                            else
                            {
                              v16 = sub_2219A1D20(0, &qword_27CFBC0A0, 0x277CCADE8);
                              if (OUTLINED_FUNCTION_0_55(v16))
                              {
                                v1 = objc_opt_self();
                                v2 = &selRef_electricPotentialDifferenceValueType;
                              }

                              else
                              {
                                v17 = sub_2219A1D20(0, &qword_27CFBC0A8, 0x277CCADF0);
                                if (OUTLINED_FUNCTION_0_55(v17))
                                {
                                  v1 = objc_opt_self();
                                  v2 = &selRef_electricResistanceValueType;
                                }

                                else
                                {
                                  v18 = sub_2219A1D20(0, &qword_27CFBC0B0, 0x277CCAE00);
                                  if (OUTLINED_FUNCTION_0_55(v18))
                                  {
                                    v1 = objc_opt_self();
                                    v2 = &selRef_frequencyValueType;
                                  }

                                  else
                                  {
                                    v19 = sub_2219A1D20(0, &qword_27CFBC0B8, 0x277CCAE08);
                                    if (OUTLINED_FUNCTION_0_55(v19))
                                    {
                                      v1 = objc_opt_self();
                                      v2 = &selRef_fuelEfficiencyValueType;
                                    }

                                    else
                                    {
                                      v20 = sub_2219A1D20(0, &qword_27CFBC0C0, 0x277CCAE10);
                                      if (OUTLINED_FUNCTION_0_55(v20))
                                      {
                                        v1 = objc_opt_self();
                                        v2 = &selRef_illuminanceValueType;
                                      }

                                      else
                                      {
                                        v21 = sub_2219A1D20(0, &qword_27CFBC0C8, 0x277CCAE18);
                                        if (OUTLINED_FUNCTION_0_55(v21))
                                        {
                                          v1 = objc_opt_self();
                                          v2 = &selRef_informationStorageValueType;
                                        }

                                        else
                                        {
                                          v22 = sub_2219A1D20(0, &qword_27CFBC0D0, 0x277CCAE30);
                                          if (OUTLINED_FUNCTION_0_55(v22))
                                          {
                                            v1 = objc_opt_self();
                                            v2 = &selRef_powerValueType;
                                          }

                                          else
                                          {
                                            v23 = sub_2219A1D20(0, &qword_27CFBC0D8, 0x277CCAE38);
                                            v24 = OUTLINED_FUNCTION_0_55(v23);
                                            v1 = objc_opt_self();
                                            v2 = &selRef_pressureValueType;
                                            if (!v24)
                                            {
                                              v2 = &selRef_unsupportedMeasurementValueType;
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

  v25 = [v1 *v2];

  return v25;
}

uint64_t sub_221B8E604(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221B8E654(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_55(uint64_t a1)
{

  return MEMORY[0x2821FE920](v1, a1);
}

uint64_t OUTLINED_FUNCTION_0_56(uint64_t a1, void x1_0, void x2_0, void x3_0, void x4_0, uint64_t a2, void a7, void a8, uint64_t a4, int a5)
{

  return sub_221BCE058();
}

uint64_t static NSNull.canConvert(_:)(void *a1)
{
  if (a1)
  {
    v1 = [a1 valueType];
  }

  else
  {
    v1 = 0;
  }

  v2 = [objc_allocWithZone(MEMORY[0x277D238A0]) init];
  if (v1)
  {
    sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
    v3 = sub_221BCDC58();

    v2 = v1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id static NSNull.lnValueType.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D238A0]);

  return [v0 init];
}

uint64_t static NSNull.from(_:context:)(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

id NSNull.lnValue.getter()
{
  v6[3] = sub_2219A1D20(0, qword_27CFB7E18, 0x277CBEB68);
  v1 = objc_allocWithZone(MEMORY[0x277D238A0]);
  v2 = v0;
  v3 = [v1 init];
  v4 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v6, v3);
}

uint64_t sub_221B8E9B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSNull.from(_:context:)(a1);
  *a2 = result;
  return result;
}

BOOL sub_221B8E9E0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, *(a1 + 16));
  if (EnumTagSinglePayload != 1)
  {
    (*(v2 + 8))(v5, a1);
  }

  return EnumTagSinglePayload == 1;
}

uint64_t static Optional<A>.from(_:context:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  (*(*(a1 + 8) + 32))();
  v3 = sub_221BCDC98();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

uint64_t Optional<A>.lnValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, v14);
  if (__swift_getEnumTagSinglePayload(v16, 1, v3) != 1)
  {
    (*(v4 + 32))(v12, v16, v3);
    v20 = (*(*(a2 + 8) + 16))(v3);
    if (v20)
    {
      v19 = v20;
      (*(v4 + 8))(v12, v3);
      return v19;
    }

    if (qword_27CFB7388 != -1)
    {
      swift_once();
    }

    v22 = sub_221BCCD88();
    __swift_project_value_buffer(v22, qword_27CFDEDF8);
    v23 = *(v4 + 16);
    v23(v9, v12, v3);
    v24 = sub_221BCCD68();
    v25 = sub_221BCDA78();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v26 = 136315138;
      v23(v6, v9, v3);
      v27 = sub_221BCD3D8();
      v29 = v28;
      v30 = *(v4 + 8);
      v30(v9, v3);
      v31 = sub_2219A6360(v27, v29, &v35);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_221989000, v24, v25, "Optional - Could not get LNValue from %s", v26, 0xCu);
      v32 = v34;
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x223DA4C00](v32, -1, -1);
      MEMORY[0x223DA4C00](v26, -1, -1);

      v30(v12, v3);
    }

    else
    {

      v33 = *(v4 + 8);
      v33(v9, v3);
      v33(v12, v3);
    }
  }

  return 0;
}

uint64_t static Optional<A>.acceptVisitor(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v5);
  return (*(v6 + 32))(a2, a2, *(a3 + 8), v5, v6);
}

uint64_t sub_221B8F05C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221B8F0AC(uint64_t a1, uint64_t a2, void *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221B8F100(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id static AttributedString.lnValueType.getter()
{
  v0 = [objc_opt_self() attributedStringValueType];

  return v0;
}

uint64_t static AttributedString.from(_:context:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_221B8F240();
  if (swift_dynamicCast())
  {
    sub_221BCC308();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_221BCC2F8();
  return __swift_storeEnumTagSinglePayload(a2, v4, 1, v5);
}

unint64_t sub_221B8F240()
{
  result = qword_27CFBC0E0;
  if (!qword_27CFBC0E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFBC0E0);
  }

  return result;
}

id AttributedString.lnValue.getter()
{
  v1 = sub_221BCC2F8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_221B8F240();
  (*(v2 + 16))(v4, v0, v1);
  v6 = sub_221BCDBA8();
  v10[3] = v5;
  v10[0] = v6;
  v7 = [objc_opt_self() attributedStringValueType];
  v8 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v10, v7);
}

id static Bool.lnValueType.getter()
{
  v0 = [objc_opt_self() BOOLValueType];

  return v0;
}

id static CLPlacemark.lnValueType.getter()
{
  v0 = [objc_opt_self() placemarkValueType];

  return v0;
}

id static Date.lnValueType.getter()
{
  v0 = [objc_opt_self() dateValueType];

  return v0;
}

id static DateComponents.lnValueType.getter()
{
  v0 = [objc_opt_self() dateComponentsValueType];

  return v0;
}

id static Double.lnValueType.getter()
{
  v0 = [objc_opt_self() doubleValueType];

  return v0;
}

id static Int.lnValueType.getter()
{
  v0 = [objc_opt_self() intValueType];

  return v0;
}

id static Int8.lnValueType.getter()
{
  v0 = [objc_opt_self() int8ValueType];

  return v0;
}

id static Int16.lnValueType.getter()
{
  v0 = [objc_opt_self() int16ValueType];

  return v0;
}

id static Int32.lnValueType.getter()
{
  v0 = [objc_opt_self() int32ValueType];

  return v0;
}

id static Int64.lnValueType.getter()
{
  v0 = [objc_opt_self() int64ValueType];

  return v0;
}

id static URL.lnValueType.getter()
{
  v0 = [objc_opt_self() URLValueType];

  return v0;
}

id static String.lnValueType.getter()
{
  v0 = [objc_opt_self() stringValueType];

  return v0;
}

uint64_t sub_221B8F6FC(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  OUTLINED_FUNCTION_0_7();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_8();
  v46 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_7();
  v48 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_30_8();
  v42 = v19;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_7();
  v36 = v21;
  v37 = v20;
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v24 = sub_221BCD9F8();
  if (!v24)
  {
    return sub_221BCD6C8();
  }

  v47 = v24;
  v51 = sub_221BCDF68();
  v38 = sub_221BCDF78();
  sub_221BCDF18();
  result = sub_221BCD9E8();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v11;
    v34 = a5;
    v26 = 0;
    v39 = (v48 + 16);
    v40 = v48 + 8;
    v41 = v8;
    while (!__OFADD__(v26, 1))
    {
      v48 = v26 + 1;
      v27 = sub_221BCDA18();
      (*v39)(v17);
      v27(v50, 0);
      v28 = v49;
      v44(v17, v46);
      if (v28)
      {
        v31 = OUTLINED_FUNCTION_30_12();
        v32(v31);
        (*(v36 + 8))(v23, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      v29 = OUTLINED_FUNCTION_30_12();
      v30(v29);
      sub_221BCDF58();
      result = sub_221BCDA08();
      ++v26;
      if (v48 == v47)
      {
        (*(v36 + 8))(v23, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AppIntentDispatching.value<A, B>(for:from:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 144) = a8;
  *(v9 + 152) = v8;
  *(v9 + 128) = a6;
  *(v9 + 136) = a7;
  *(v9 + 112) = a3;
  *(v9 + 120) = a4;
  *(v9 + 104) = a1;
  *(v9 + 160) = *a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B8FAF8()
{
  OUTLINED_FUNCTION_57_2();
  v17 = v0;
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 160);
    v14 = *(v0 + 136);
    v3 = *(v0 + 112);
    v4 = *(*v3 + 112);

    v6 = v4(v5);
    (*(*v3 + 136))(v15, v6);
    v7 = v15[0];
    v8 = v15[1];
    *(v0 + 16) = v2;
    *(v0 + 24) = v1;
    *(v0 + 72) = v7;
    *(v0 + 80) = v8;
    *(v0 + 88) = v16;
    v13 = (*(v14 + 56) + **(v14 + 56));
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 176) = v9;
    *v9 = v10;
    v9[1] = sub_221B8FCB8;
    v11 = *(v0 + 104);

    return v13(v11, v0 + 16);
  }

  else
  {
    sub_22199D150();

    __break(1u);
  }

  return result;
}

uint64_t sub_221B8FCB8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B8FDB4()
{
  OUTLINED_FUNCTION_1_5();
  sub_221B58D98(v0 + 16);
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221B8FE0C()
{
  OUTLINED_FUNCTION_1_5();
  sub_221B58D98(v0 + 16);
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221B8FE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2219ACB94(a1, a2, a3);
  OUTLINED_FUNCTION_15_0();
  v3 = swift_allocError();
  *v4 = 0xD00000000000002FLL;
  v4[1] = 0x8000000221BF1660;
  OUTLINED_FUNCTION_14_19(v3, v4);
  return swift_willThrow();
}

uint64_t AppIntentDispatching.observe(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2219ACB94(a1, a2, a3);
  OUTLINED_FUNCTION_15_0();
  v3 = swift_allocError();
  *v4 = 0xD00000000000002FLL;
  v4[1] = 0x8000000221BF1660;
  OUTLINED_FUNCTION_14_19(v3, v4);
  return swift_willThrow();
}

uint64_t sub_221B8FF28()
{
  OUTLINED_FUNCTION_8_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;

  return sub_221B8FFD8();
}

uint64_t sub_221B8FFF4()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219ACB94(v0, v1, v2);
  OUTLINED_FUNCTION_15_0();
  v3 = swift_allocError();
  *v4 = 0xD000000000000034;
  v4[1] = 0x8000000221BF1690;
  OUTLINED_FUNCTION_14_19(v3, v4);
  swift_willThrow();
  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_221B9009C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219CA70C;

  return AppIntentDispatching.describeApplication(for:)();
}

uint64_t sub_221B90138()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219ACB94(v0, v1, v2);
  OUTLINED_FUNCTION_15_0();
  v3 = swift_allocError();
  *v4 = 0xD00000000000003DLL;
  v4[1] = 0x8000000221BF16D0;
  OUTLINED_FUNCTION_14_19(v3, v4);
  swift_willThrow();
  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_221B901E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = swift_task_alloc();
  *(v11 + 16) = v12;
  *v12 = v11;
  v12[1] = sub_2219EC5F0;

  return AppIntentDispatching.options<A>(for:in:searchTerm:as:)();
}

uint64_t AppIntentDispatching.options<A>(for:in:searchTerm:as:)()
{
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_6_5();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_15(v1);
  *v2 = v3;
  v2[1] = sub_2219EC5F0;
  v4 = OUTLINED_FUNCTION_6_25();

  return v6(v4);
}

uint64_t sub_221B90428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_2219EC5F0;

  return AppIntentDispatching.query(_:options:)(a1, a2, a3, a4, a5, v15, v16, v17, a9);
}

uint64_t AppIntentDispatching.query(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_67();
  *(v9 + 16) = *v10;
  *(v9 + 24) = *(v10 + 8);
  OUTLINED_FUNCTION_6_5();
  v23 = v11 + *v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v9 + 40) = v12;
  *v12 = v13;
  OUTLINED_FUNCTION_33_9(v12);
  OUTLINED_FUNCTION_123_0();

  return v19(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_221B90618()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_221B90754()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return AppIntentDispatching.query(_:options:)();
}

void AppIntentDispatching.options(for:in:searchTerm:)()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_10_20();
  sub_2219A8E5C();
  OUTLINED_FUNCTION_11_19();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_6_25();
  OUTLINED_FUNCTION_75_4();

  __asm { BRAA            X8, X16 }
}

uint64_t AppIntentDispatching.perform<A>(_:options:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[108] = v10;
  v11[107] = a10;
  v11[106] = a9;
  v11[105] = a8;
  v11[104] = a7;
  v11[103] = a6;
  v11[102] = a5;
  v11[101] = a4;
  v11[100] = a3;
  v11[99] = a2;
  v11[98] = a1;
  return OUTLINED_FUNCTION_11_21();
}

uint64_t sub_221B90968()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[100];
  (*(v0[106] + 32))(v0[104]);
  memcpy(v0 + 68, v1, 0xC4uLL);
  OUTLINED_FUNCTION_11_19();
  v10 = (v2 + *v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[109] = v3;
  *v3 = v4;
  v3[1] = sub_221B90AC4;
  v5 = v0[105];
  v6 = v0[103];
  v7 = v0[102];
  v8 = v0[101];

  return (v10)(v0 + 2, v0 + 93, v0 + 68, v8, v7, v6, v5);
}

uint64_t sub_221B90AC4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 880) = v0;

  sub_2219B397C(v3 + 744);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B90BC8()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 784);
  sub_221B919E8(v0 + 16, v0 + 280, &qword_27CFB8048, &qword_221BE5700);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_2219A8E5C();
  AppIntentSuccessResult.init<A>(_:)(v0 + 280, AssociatedTypeWitness, v4, v1, &protocol witness table for LNValue, v2);
  OUTLINED_FUNCTION_29_12();
  sub_2219B1538(v5, v6, v7);
  OUTLINED_FUNCTION_4_3();

  return v8();
}

uint64_t AppIntentDispatching.perform(_:options:delegate:)()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  v1[159] = v0;
  v1[158] = v4;
  v1[157] = v5;
  v1[156] = v6;
  v1[155] = v7;
  v1[154] = v2;
  v1[153] = v8;
  v1[152] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  memcpy(v1 + 27, v3, 0xC4uLL);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}