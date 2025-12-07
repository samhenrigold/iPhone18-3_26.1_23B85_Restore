uint64_t sub_264AE6E04()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_264AE6F58, v3, v2);
}

uint64_t sub_264AE6F58()
{
  v1 = v0[22];
  v2 = v0[23];

  v3 = v0[1];

  return v3();
}

void *sub_264AE703C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_negotiator);
  v2 = v1;
  return v1;
}

uint64_t sub_264AE7094@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
  swift_beginAccess();
  return sub_2649D046C(v1 + v3, a1, &qword_27FF89850, &qword_264B485E0);
}

uint64_t sub_264AE70FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
  swift_beginAccess();
  sub_2649FECCC(a1, v1 + v3, &qword_27FF89850, &qword_264B485E0);
  return swift_endAccess();
}

void *sub_264AE717C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_interruptionError);
  v2 = v1;
  return v1;
}

void sub_264AE71B0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_interruptionError);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_interruptionError) = a1;
}

uint64_t sub_264AE71C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return sub_264AE5FC0();
}

uint64_t sub_264AE7254(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0);
  v2[24] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89890, &qword_264B48610);
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89898, &unk_264B48618);
  v2[31] = v5;
  v2[32] = *(v5 - 8);
  v2[33] = swift_task_alloc();
  v6 = sub_264B3FFD4();
  v2[34] = v6;
  v2[35] = *(v6 - 8);
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AE74B0, 0, 0);
}

uint64_t sub_264AE74B0()
{
  v56 = v0;
  v55[1] = *MEMORY[0x277D85DE8];
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = sub_264B40964();
  v0[37] = __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v55[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v55);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 416;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x6574617669746361, 0xEA00000000002928, v55);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[23];
  if (*(v13 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState))
  {
    v14 = sub_264B40944();
    v15 = sub_264B41494();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2649C6000, v14, v15, "the video stream was already started", v16, 2u);
      MEMORY[0x266749940](v16, -1, -1);
    }

    v17 = 2;
    goto LABEL_10;
  }

  v21 = v13 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentSession;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[38] = Strong;
  if (!Strong)
  {
    v17 = 6;
LABEL_10:
    sub_264A02DF0();
    swift_allocError();
    *v18 = v17;
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }

  v53 = *(v21 + 8);
  v54 = Strong;
  v23 = v0[29];
  v24 = v0[30];
  v26 = v0[27];
  v25 = v0[28];
  v28 = v0[25];
  v27 = v0[26];
  v30 = v0[23];
  v29 = v0[24];
  (*(v27 + 104))(v26, *MEMORY[0x277D858A0], v28);
  sub_264B41344();
  (*(v27 + 8))(v26, v28);
  (*(v23 + 16))(v29, v24, v25);
  (*(v23 + 56))(v29, 0, 1, v25);
  v31 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
  swift_beginAccess();
  sub_2649FECCC(v29, v30 + v31, &qword_27FF89850, &qword_264B485E0);
  swift_endAccess();
  if (*(v30 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_role))
  {
    v32 = *(v0[23] + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_rapportStream);
    v0[2] = v0;
    v0[3] = sub_264AE80B0;
    v33 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2649F4D64;
    v0[13] = &block_descriptor_16;
    v0[14] = v33;
    [v32 activateWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v34 = objc_allocWithZone(MEMORY[0x277CE5708]);
    v0[21] = 0;
    v35 = [v34 initWithMode:9 error:v0 + 21];
    v0[39] = v35;
    v36 = v0[21];
    if (v35)
    {
      v37 = v0[23];
      v38 = *(v37 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_negotiator);
      *(v37 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_negotiator) = v35;
      v39 = v35;
      v40 = v36;
      v41 = v39;

      v42 = [v41 offer];
      v43 = sub_264B40024();
      v45 = v44;

      v0[40] = v43;
      v0[41] = v45;
      v46 = swift_task_alloc();
      v0[42] = v46;
      *v46 = v0;
      v46[1] = sub_264AE7CAC;

      return sub_264AEA6B4(v54, v53, 1, v43, v45);
    }

    else
    {
      v47 = v36;
      v48 = sub_264B3FF84();

      swift_willThrow();
      v0[45] = v48;
      v49 = sub_264B40944();
      v50 = sub_264B41494();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_2649C6000, v49, v50, "failed to create negotiator for video stream", v51, 2u);
        MEMORY[0x266749940](v51, -1, -1);
      }

      v52 = swift_task_alloc();
      v0[46] = v52;
      *v52 = v0;
      v52[1] = sub_264AE8340;

      return sub_264ADEE50(v48);
    }
  }
}

uint64_t sub_264AE7CAC()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_264AE7F44;
  }

  else
  {
    sub_2649DEF6C(*(v2 + 320), *(v2 + 328));
    v3 = sub_264AE7DFC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264AE7DFC()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v7 = *(v0 + 176);
  v7[3] = v3;
  v7[4] = sub_264A2DAB0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(v2 + 32))(boxed_opaque_existential_1, v1, v3);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v4, v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_264AE7F44()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  sub_2649DEF6C(v1, v2);
  v3 = *(v0 + 344);
  *(v0 + 360) = v3;
  v4 = sub_264B40944();
  v5 = sub_264B41494();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2649C6000, v4, v5, "failed to create negotiator for video stream", v6, 2u);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v7 = swift_task_alloc();
  *(v0 + 368) = v7;
  *v7 = v0;
  v7[1] = sub_264AE8340;

  return sub_264ADEE50(v3);
}

uint64_t sub_264AE80B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_264AE85B0;
  }

  else
  {
    v2 = sub_264AE81EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264AE81EC()
{
  *(v0[23] + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_clientActivated) = 1;
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[22];
  v7[3] = v3;
  v7[4] = sub_264A2DAB0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(v2 + 32))(boxed_opaque_existential_1, v1, v3);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v4, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_264AE8340()
{

  return MEMORY[0x2822009F8](sub_264AE8468, 0, 0);
}

uint64_t sub_264AE8468()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v7 = *(v0 + 176);
  v7[3] = v3;
  v7[4] = sub_264A2DAB0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(v2 + 32))(boxed_opaque_existential_1, v1, v3);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v4, v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_264AE85B0(uint64_t a1)
{
  v3 = v1[32];
  v2 = v1[33];
  v5 = v1[30];
  v4 = v1[31];
  v6 = v1[28];
  v7 = v1[29];
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = v1[1];

  return v8();
}

uint64_t sub_264AE86E0()
{
  v1[2] = v0;
  v2 = sub_264B3FFD4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_264B41244();
  v1[7] = sub_264B41234();
  v4 = sub_264B411C4();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x2822009F8](sub_264AE87D8, v4, v3);
}

uint64_t sub_264AE87D8()
{
  v46 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_264B40964();
  v0[10] = __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v45);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 460;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x6164696C61766E69, 0xEC00000029286574, &v45);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[2];
  v14 = v13[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState];
  if (v14 == 4)
  {
    v29 = v13;
    v30 = sub_264B40944();
    v31 = sub_264B414B4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v0[2];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      *v33 = 136446210;
      v35 = v32;
      v36 = [v35 description];
      v37 = sub_264B41044();
      v39 = v38;

      v40 = sub_2649CC004(v37, v39, &v45);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_2649C6000, v30, v31, "%{public}s is already invalidating, holding until complete", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x266749940](v34, -1, -1);
      MEMORY[0x266749940](v33, -1, -1);
    }

    v41 = v0[2];
    v0[12] = sub_264B41234();
    v42 = swift_task_alloc();
    v0[13] = v42;
    *(v42 + 16) = v41;
    v43 = swift_task_alloc();
    v0[14] = v43;
    *v43 = v0;
    v43[1] = sub_264A29AFC;

    return MEMORY[0x2822007B8]();
  }

  else if (v14 == 5)
  {

    v15 = v13;
    v16 = sub_264B40944();
    v17 = sub_264B414B4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[2];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45 = v20;
      *v19 = 136446210;
      v21 = v18;
      v22 = [v21 description];
      v23 = sub_264B41044();
      v25 = v24;

      v26 = sub_2649CC004(v23, v25, &v45);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_2649C6000, v16, v17, "%{public}s is already invalidated, bailing", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266749940](v20, -1, -1);
      MEMORY[0x266749940](v19, -1, -1);
    }

    v27 = v0[1];

    return v27();
  }

  else
  {
    v13[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState] = 4;
    LOBYTE(v45) = v14;
    sub_264ADF934(&v45);
    v44 = swift_task_alloc();
    v0[11] = v44;
    *v44 = v0;
    v44[1] = sub_264A29974;

    return sub_264AE3040();
  }
}

uint64_t sub_264AE8DD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19 - v7;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71D0);
  v10 = sub_264B40944();
  v11 = sub_264B414B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2649C6000, v10, v11, "Adding to tearing down continuations", v12, 2u);
    MEMORY[0x266749940](v12, -1, -1);
  }

  (*(v5 + 16))(v8, a1, v4);
  v13 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations;
  v14 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v13) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_2649D8028(0, v14[2] + 1, 1, v14);
    *(a2 + v13) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_2649D8028((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  result = (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v8, v4);
  *(a2 + v13) = v14;
  return result;
}

uint64_t sub_264AE9010(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CD850;

  return sub_264AE7254(a1);
}

uint64_t sub_264AE90AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264AE86E0();
}

uint64_t sub_264AE913C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA0, &qword_264B53480);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA8, &qword_264B53488);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v21 - v14;
  v16 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v1 + v16, v11, &qword_27FF8BFA0, &qword_264B53480);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_2649D04D4(v11, &qword_27FF8BFA0, &qword_264B53480);
    v17 = 1;
LABEL_5:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFB0, &qword_264B53490);
    (*(*(v20 - 8) + 56))(v15, v17, 1, v20);
    return sub_2649D04D4(v15, &qword_27FF8BFA8, &qword_264B53488);
  }

  (*(v4 + 16))(v7, v11, v3);
  result = sub_2649D04D4(v11, &qword_27FF8BFA0, &qword_264B53480);
  if (a1)
  {
    v21[0] = a1;
    v21[1] = 0;
    v22 = 0;
    v19 = a1;
    sub_264B412A4();
    (*(v4 + 8))(v7, v3);
    v17 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_264AE94E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA0, &qword_264B53480);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA8, &qword_264B53488);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v20 - v14;
  v16 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v1 + v16, v11, &qword_27FF8BFA0, &qword_264B53480);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_2649D04D4(v11, &qword_27FF8BFA0, &qword_264B53480);
    v17 = 1;
LABEL_5:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFB0, &qword_264B53490);
    (*(*(v19 - 8) + 56))(v15, v17, 1, v19);
    return sub_2649D04D4(v15, &qword_27FF8BFA8, &qword_264B53488);
  }

  (*(v4 + 16))(v7, v11, v3);
  result = sub_2649D04D4(v11, &qword_27FF8BFA0, &qword_264B53480);
  if (a1)
  {
    v20[0] = [a1 streamToken];
    v20[1] = 0;
    v21 = 1;
    sub_264B412A4();
    (*(v4 + 8))(v7, v3);
    v17 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit25MediaTransportVideoStreamC16AVCDelegateEvent33_EC97EEE54CB1A51ED7B858FFDCECB29FLLO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_264AE9A88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_264AE9AD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_264AE9B14(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_264AE9B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_264A1FB04(a1, a2);

  return sub_2649C964C(a1 + 40, a2 + 40);
}

_BYTE *sub_264AE9B80@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_264AE9C14(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_264AE9D50(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_264AE9CCC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_264AE9C14(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_264AE9CCC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_264B3FED4();
  swift_allocObject();
  result = sub_264B3FE94();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_264AE9D50(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_264B3FED4();
  swift_allocObject();
  result = sub_264B3FE94();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_264B3FFE4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_264AE9DCC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{

  return sub_264AE9E24(a1, a2, a3);
}

uint64_t sub_264AE9E24(void *a1, uint64_t a2, unint64_t a3)
{
  v42[3] = *MEMORY[0x277D85DE8];
  v40 = sub_264B400E4();
  v41 = v6;
  v7 = sub_264ADF878(&v40, v42);
  v9 = v8;
  v10 = sub_264B3FFF4();
  v12 = v11;
  sub_2649DEF6C(v7, v9);
  v42[1] = MEMORY[0x277CC9318];
  v42[2] = MEMORY[0x277CC9300];
  v40 = v10;
  v41 = v12;
  v13 = __swift_project_boxed_opaque_existential_1(&v40, MEMORY[0x277CC9318]);
  v14 = *v13;
  v15 = v13[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v38, 0, 14);
      v18 = v38;
      v17 = v38;
      goto LABEL_23;
    }

    v19 = *(v14 + 16);
    v20 = *(v14 + 24);
    v21 = sub_264B3FEA4();
    if (v21)
    {
      v22 = sub_264B3FEC4();
      v14 = v19 - v22;
      if (__OFSUB__(v19, v22))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v21 += v14;
    }

    v23 = __OFSUB__(v20, v19);
    v24 = v20 - v19;
    if (!v23)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v38[0] = *v13;
    LOWORD(v38[1]) = v15;
    BYTE2(v38[1]) = BYTE2(v15);
    BYTE3(v38[1]) = BYTE3(v15);
    BYTE4(v38[1]) = BYTE4(v15);
    BYTE5(v38[1]) = BYTE5(v15);
    v17 = v38 + BYTE6(v15);
    v18 = v38;
    goto LABEL_23;
  }

  v25 = v14;
  v26 = v14 >> 32;
  v24 = v26 - v25;
  if (v26 < v25)
  {
    __break(1u);
    goto LABEL_25;
  }

  v21 = sub_264B3FEA4();
  if (v21)
  {
    v27 = sub_264B3FEC4();
    if (!__OFSUB__(v25, v27))
    {
      v21 += v25 - v27;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v28 = sub_264B3FEB4();
  if (v28 >= v24)
  {
    v29 = v24;
  }

  else
  {
    v29 = v28;
  }

  v30 = (v29 + v21);
  if (v21)
  {
    v17 = v30;
  }

  else
  {
    v17 = 0;
  }

  v18 = v21;
LABEL_23:
  sub_264AE9B80(v18, v17, v39);
  v31 = v39[0];
  v32 = v39[1];
  __swift_destroy_boxed_opaque_existential_0(&v40);
  [a1 setSRTPCipherSuite_];
  [a1 setSRTCPCipherSuite_];
  v40 = a2;
  v41 = a3;
  sub_2649DEF18(a2, a3);
  sub_264B40034();
  v33 = v40;
  v34 = v41;
  v35 = sub_264B40014();
  [a1 setReceiveMasterKey_];

  v36 = sub_264B40014();
  [a1 setSendMasterKey_];

  sub_2649DEF6C(v31, v32);
  return sub_2649DEF6C(v33, v34);
}

uint64_t sub_264AEA118(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = a5;
  *(v5 + 257) = a3;
  *(v5 + 192) = a1;
  *(v5 + 200) = a2;
  return MEMORY[0x2822009F8](sub_264AEA140, 0, 0);
}

uint64_t sub_264AEA140()
{
  v29 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 257);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136446210;
    *(v0 + 256) = v4 & 1;
    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v28);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v2, v3, "Sending negotiationOffer for stream: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v12 = *(v0 + 257);
  v27 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  v14 = inited;
  *(inited + 16) = xmmword_264B46DF0;
  *(inited + 32) = 0x79546D6165727473;
  v15 = MEMORY[0x277D837D0];
  v16 = 0x6F69647561;
  if (v12)
  {
    v16 = 0x6F65646976;
  }

  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = v16;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v15;
  *(inited + 80) = 0x746169746F67656ELL;
  v17 = MEMORY[0x277CC9318];
  *(inited + 88) = 0xEF617461446E6F69;
  *(inited + 96) = v11;
  *(inited + 104) = v10;
  *(inited + 120) = v17;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 168) = v15;
  *(inited + 136) = 0x8000000264B5A500;
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x8000000264B58B80;
  sub_2649DEF18(v11, v10);
  v18 = sub_264A24308(v14);
  *(v0 + 224) = v18;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
  swift_arrayDestroy();
  ObjectType = swift_getObjectType();
  v20 = sub_264B41044();
  v22 = v21;
  *(v0 + 232) = v21;
  v26 = (*(v27 + 136) + **(v27 + 136));
  v23 = swift_task_alloc();
  *(v0 + 240) = v23;
  *v23 = v0;
  v23[1] = sub_264AEA500;
  v24 = *(v0 + 200);

  return v26(4, v18, v20, v22, ObjectType, v24);
}

uint64_t sub_264AEA500()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264AEA648, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_264AEA648()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264AEA6B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = a5;
  *(v5 + 257) = a3;
  *(v5 + 192) = a1;
  *(v5 + 200) = a2;
  return MEMORY[0x2822009F8](sub_264AEA6DC, 0, 0);
}

uint64_t sub_264AEA6DC()
{
  v29 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 257);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136446210;
    *(v0 + 256) = v4 & 1;
    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v28);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v2, v3, "Sending negotiationOffer for stream: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v12 = *(v0 + 257);
  v27 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  v14 = inited;
  *(inited + 16) = xmmword_264B46DF0;
  *(inited + 32) = 0x79546D6165727473;
  v15 = MEMORY[0x277D837D0];
  v16 = 0x6F69647561;
  if (v12)
  {
    v16 = 0x6F65646976;
  }

  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = v16;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v15;
  *(inited + 80) = 0x746169746F67656ELL;
  v17 = MEMORY[0x277CC9318];
  *(inited + 88) = 0xEF617461446E6F69;
  *(inited + 96) = v11;
  *(inited + 104) = v10;
  *(inited + 120) = v17;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 168) = v15;
  *(inited + 136) = 0x8000000264B5A500;
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x8000000264B58B80;
  sub_2649DEF18(v11, v10);
  v18 = sub_264A24308(v14);
  *(v0 + 224) = v18;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
  swift_arrayDestroy();
  ObjectType = swift_getObjectType();
  v20 = sub_264B41044();
  v22 = v21;
  *(v0 + 232) = v21;
  v26 = (*(v27 + 136) + **(v27 + 136));
  v23 = swift_task_alloc();
  *(v0 + 240) = v23;
  *v23 = v0;
  v23[1] = sub_264AEAA9C;
  v24 = *(v0 + 200);

  return v26(4, v18, v20, v22, ObjectType, v24);
}

uint64_t sub_264AEAA9C()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264AEBEB0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_264AEABE4(void *a1, void *a2)
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = a2;
  v6 = a1;
  v7 = sub_264B40944();
  v8 = sub_264B414B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543618;
    *(v9 + 4) = v5;
    *(v9 + 12) = 2114;
    *(v9 + 14) = v6;
    *v10 = v5;
    v10[1] = v6;
    v11 = v5;
    v12 = v6;
    _os_log_impl(&dword_2649C6000, v7, v8, "Setting video layer for remoteVideoClient=%{public}@ layer=%{public}@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89880, &unk_264B46B20);
    swift_arrayDestroy();
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  v13 = [v5 slotForMode_];
  if (v13)
  {
    v14 = v13;
    v15 = objc_opt_self();
    [v15 begin];
    [v6 setContents_];
    swift_unknownObjectRelease();
    [v6 setContentsGravity_];
    [v15 commit];
  }

  else
  {
    v16 = sub_264B40944();
    v17 = sub_264B41494();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2649C6000, v16, v17, "Unable to retrieve slot number for AVCRemoteVideoModePrimaryCamera", v18, 2u);
      MEMORY[0x266749940](v18, -1, -1);
    }

    sub_264AEAEC0();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_264AEAEC0()
{
  result = qword_27FF8BF70;
  if (!qword_27FF8BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BF70);
  }

  return result;
}

uint64_t sub_264AEAF14()
{
  MEMORY[0x266749A30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264AEAF4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF78, &qword_264B53418);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_264AEB030(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF78, &qword_264B53418) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264AE0A64(a1, v6, v7, v1 + v5, v8);
}

void sub_264AEB15C(id result, id a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_264AEB170(result, a2, a3);
  }
}

void sub_264AEB170(id a1, id a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 != 3 && a3 != 4)
    {
      if (a3 != 5)
      {
        return;
      }

      a1 = a2;

      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  if (a3 == 2)
  {
LABEL_10:
    a1 = a2;

LABEL_7:
  }
}

id sub_264AEB200(id result, id a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 != 3 && a3 != 4)
    {
      if (a3 != 5)
      {
        return result;
      }

      v5 = result;
      result = a2;

      return result;
    }

    goto LABEL_10;
  }

  if (!a3)
  {

    return result;
  }

  if (a3 == 2)
  {
LABEL_10:
    result = a2;

    return result;
  }

  return result;
}

uint64_t sub_264AEB2C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA0, &qword_264B53480);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA8, &qword_264B53488);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v18 - v12;
  v14 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v0 + v14, v9, &qword_27FF8BFA0, &qword_264B53480);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_2649D04D4(v9, &qword_27FF8BFA0, &qword_264B53480);
    v15 = 1;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    sub_2649D04D4(v9, &qword_27FF8BFA0, &qword_264B53480);
    v18[0] = 0;
    v18[1] = 0;
    v19 = 6;
    sub_264B412A4();
    (*(v2 + 8))(v5, v1);
    v15 = 0;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFB0, &qword_264B53490);
  (*(*(v16 - 8) + 56))(v13, v15, 1, v16);
  return sub_2649D04D4(v13, &qword_27FF8BFA8, &qword_264B53488);
}

uint64_t sub_264AEB574()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA0, &qword_264B53480);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA8, &qword_264B53488);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v18 - v12;
  v14 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v0 + v14, v9, &qword_27FF8BFA0, &qword_264B53480);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_2649D04D4(v9, &qword_27FF8BFA0, &qword_264B53480);
    v15 = 1;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    sub_2649D04D4(v9, &qword_27FF8BFA0, &qword_264B53480);
    v18 = xmmword_264B4A5F0;
    v19 = 6;
    sub_264B412A4();
    (*(v2 + 8))(v5, v1);
    v15 = 0;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFB0, &qword_264B53490);
  (*(*(v16 - 8) + 56))(v13, v15, 1, v16);
  return sub_2649D04D4(v13, &qword_27FF8BFA8, &qword_264B53488);
}

uint64_t sub_264AEB82C(uint64_t a1, void *a2, int a3)
{
  v24 = a3;
  v23 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA0, &qword_264B53480);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA8, &qword_264B53488);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v23 - v16;
  v18 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v3 + v18, v13, &qword_27FF8BFA0, &qword_264B53480);
  if ((*(v6 + 48))(v13, 1, v5))
  {
    sub_2649D04D4(v13, &qword_27FF8BFA0, &qword_264B53480);
    v19 = 1;
  }

  else
  {
    (*(v6 + 16))(v9, v13, v5);
    sub_2649D04D4(v13, &qword_27FF8BFA0, &qword_264B53480);
    v25 = v23 & 1;
    v26 = a2;
    v27 = v24;
    v20 = a2;
    sub_264B412A4();
    (*(v6 + 8))(v9, v5);
    v19 = 0;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFB0, &qword_264B53490);
  (*(*(v21 - 8) + 56))(v17, v19, 1, v21);
  return sub_2649D04D4(v17, &qword_27FF8BFA8, &qword_264B53488);
}

uint64_t sub_264AEBBE0(void *a1, void *a2)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA0, &qword_264B53480);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA8, &qword_264B53488);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v24 - v15;
  v17 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v2 + v17, v12, &qword_27FF8BFA0, &qword_264B53480);
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_2649D04D4(v12, &qword_27FF8BFA0, &qword_264B53480);
    v18 = 1;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_2649D04D4(v12, &qword_27FF8BFA0, &qword_264B53480);
    v19 = v25;
    v26 = a1;
    v27 = v25;
    v28 = 5;
    v20 = a1;
    v21 = v19;
    sub_264B412A4();
    (*(v5 + 8))(v8, v4);
    v18 = 0;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFB0, &qword_264B53490);
  (*(*(v22 - 8) + 56))(v16, v18, 1, v22);
  return sub_2649D04D4(v16, &qword_27FF8BFA8, &qword_264B53488);
}

id sub_264AEBEB4()
{
  v1 = *(v0 + 16);
  if (v1)
  {

    return v1;
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

void sub_264AEBF34(void *a1)
{
  v2 = v1;
  if (*(v1 + 16))
  {
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FF8AEA0);
    v5 = sub_264B40944();
    v6 = sub_264B414B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "Drag-and-drop shield window scene is being overwritten", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }
  }

  v9 = *(v2 + 16);
  *(v2 + 16) = a1;
  v8 = a1;
}

uint64_t DragAndDropSceneContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL static MediaTransportSessionState.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 1)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_10;
      }

      if (v3 == 3)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (v2 != 1)
  {
LABEL_10:
    v4 = v3 > 3;
    goto LABEL_13;
  }

  if (v3 != 1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v4 = 1;
LABEL_13:
  sub_2649DDB20(*a1);
  sub_2649DDB20(v3);
  sub_2649FE684(v2);
  sub_2649FE684(v3);
  return v4;
}

BOOL static MediaTransportSessionState.< infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    if (v3 > 2)
    {
LABEL_11:
      v5 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    if (v2 == 1)
    {
      v5 = v3 > 1;
      goto LABEL_12;
    }

    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 == 0;
    }

    if (!v4)
    {
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_12:
  sub_2649DDB20(*a1);
  sub_2649DDB20(v3);
  sub_2649FE684(v2);
  sub_2649FE684(v3);
  return v5;
}

unint64_t sub_264AEC26C()
{
  result = qword_27FF8BFD0;
  if (!qword_27FF8BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BFD0);
  }

  return result;
}

BOOL sub_264AEC2C0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    if (v3 >= 3)
    {
LABEL_11:
      v5 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    if (v2 == 1)
    {
      v5 = v3 > 1;
      goto LABEL_12;
    }

    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 == 0;
    }

    if (!v4)
    {
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_12:
  sub_2649DDB20(*a1);
  sub_2649DDB20(v3);
  sub_2649FE684(v2);
  sub_2649FE684(v3);
  return v5;
}

BOOL sub_264AEC34C(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 == 2)
  {
    return v2 < 3;
  }

  if (v3 == 1)
  {
    return v2 < 2;
  }

  return v3 || v2 == 0;
}

BOOL sub_264AEC394(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    return v3 < 3;
  }

  if (v2 == 1)
  {
    return v3 < 2;
  }

  return v2 || v3 == 0;
}

BOOL sub_264AEC3DC(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 == 2)
  {
    return v2 >= 3;
  }

  if (v3 == 1)
  {
    return v2 > 1;
  }

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  return !v4;
}

BOOL sub_264AEC424(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 1)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_10;
      }

      if (v3 == 3)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (v2 != 1)
  {
LABEL_10:
    v4 = v3 > 3;
    goto LABEL_13;
  }

  if (v3 != 1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v4 = 1;
LABEL_13:
  sub_2649DDB20(*a1);
  sub_2649DDB20(v3);
  sub_2649FE684(v2);
  sub_2649FE684(v3);
  return v4;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit26MediaTransportSessionStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_264AEC4EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264AEC540(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_264AEC5AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0xD000000000000020;
  *(v2 + 24) = 0x8000000264B60A70;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionDuration) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionEndedReason) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionNumber) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_accessibilityUsed) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_audioAlertShown) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_cameraAlertShown) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_dragNDropUsed) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_foregroundDuration) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_notificationInteraction) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_notificationInteractionType) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_notificationShown) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_currentOrientation) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_unknownOrientation) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationLandscapeLeft) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationLandscapeRight) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationPortrait) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationUpsideDown) = 0;
  v5 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionStartTime;
  v6 = sub_264B40084();
  v7 = *(*(v6 - 8) + 32);
  v7(v2 + v5, a1, v6);
  v7(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_lastOrientationChange, a2, v6);
  return v2;
}

unint64_t sub_264AEC73C()
{
  v1 = v0;
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE40);
  v3 = sub_264B40944();
  v4 = sub_264B41484();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2649C6000, v3, v4, "encoding the report", v5, 2u);
    MEMORY[0x266749940](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFE8, &qword_264B536B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B535E0;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x8000000264B60910;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 56) = 0x656C416F69647541;
  *(inited + 64) = 0xEF6E776F68537472;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000264B60930;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((inited + 104), "DragNDropUsed");
  *(inited + 118) = -4864;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x8000000264B60950;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 152) = 0xD000000000000017;
  *(inited + 160) = 0x8000000264B60970;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 176) = 0xD000000000000016;
  *(inited + 184) = 0x8000000264B60990;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x8000000264B609B0;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x8000000264B609D0;
  *(inited + 240) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 248) = 0xD000000000000019;
  *(inited + 256) = 0x8000000264B609F0;
  *(inited + 264) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 272) = 0xD000000000000013;
  *(inited + 280) = 0x8000000264B60A10;
  *(inited + 288) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 296) = 0xD000000000000015;
  *(inited + 304) = 0x8000000264B60A30;
  *(inited + 312) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 320) = 0x446E6F6973736553;
  *(inited + 328) = 0xEF6E6F6974617275;
  *(inited + 336) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 344) = 0xD000000000000016;
  *(inited + 352) = 0x8000000264B60A50;
  *(inited + 360) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  strcpy((inited + 368), "SessionNumber");
  *(inited + 382) = -4864;
  *(inited + 384) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v7 = sub_264A24664(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFF0, qword_264B536C0);
  swift_arrayDestroy();
  return v7;
}

void sub_264AECC64(unsigned __int8 *a1, int a2)
{
  v3 = v2;
  v34 = a2;
  v5 = sub_264B40084();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v33[-v12];
  v14 = *a1;
  sub_264B40074();
  v15 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_lastOrientationChange;
  swift_beginAccess();
  (*(v6 + 16))(v10, v3 + v15, v5);
  sub_264B40044();
  v17 = v16;
  v18 = v16;
  v19 = *(v6 + 8);
  v19(v10, v5);
  v19(v13, v5);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v17 < 9.22337204e18)
  {
    if (qword_27FF883F8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_5:
  v20 = sub_264B40964();
  __swift_project_value_buffer(v20, qword_27FF8AE40);

  v21 = sub_264B40944();
  v22 = sub_264B41484();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134218240;
    *(v23 + 4) = *(v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_currentOrientation);

    *(v23 + 12) = 2048;
    *(v23 + 14) = v14;
    _os_log_impl(&dword_2649C6000, v21, v22, "current orientation is %ld new orientation is %ld", v23, 0x16u);
    MEMORY[0x266749940](v23, -1, -1);
  }

  else
  {
  }

  v24 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_currentOrientation;
  LODWORD(v25) = *(v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_currentOrientation);
  if (v14 != v25 || (v34 & 1) != 0)
  {
    v26 = v17;
    if (*(v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_currentOrientation) > 1u)
    {
      if (v25 == 2)
      {
LABEL_20:
        v25 = (v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationUpsideDown);
        v30 = *(v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationUpsideDown);
        v28 = __OFADD__(v30, v26);
        v26 += v30;
        if (!v28)
        {
          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_23;
      }

      if (v25 != 3)
      {
LABEL_23:
        v25 = (v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationLandscapeLeft);
        v31 = *(v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationLandscapeLeft);
        v28 = __OFADD__(v31, v26);
        v26 += v31;
        if (!v28)
        {
          goto LABEL_27;
        }

        __break(1u);
LABEL_26:
        v25 = (v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationPortrait);
        v32 = *(v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationPortrait);
        v28 = __OFADD__(v32, v26);
        v26 += v32;
        if (v28)
        {
          __break(1u);
          return;
        }

        goto LABEL_27;
      }

      v25 = (v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationLandscapeRight);
      v27 = *(v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationLandscapeRight);
      v28 = __OFADD__(v27, v26);
      v26 += v27;
      if (!v28)
      {
LABEL_27:
        *v25 = v26;
        sub_264B40074();
        swift_beginAccess();
        (*(v6 + 40))(v3 + v15, v13, v5);
        swift_endAccess();
        *(v3 + v24) = v14;
        return;
      }

      __break(1u);
    }

    if (v25)
    {
      goto LABEL_26;
    }

    v25 = (v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_unknownOrientation);
    v29 = *(v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_unknownOrientation);
    v28 = __OFADD__(v29, v26);
    v26 += v29;
    if (!v28)
    {
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_264AED024(void *a1)
{
  v42 = sub_264B40154();
  v2 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264B40084();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v41 - v13;
  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v17 = *(v15 + 8);
  v43 = "durationUpsideDown";
  v17(&v45, 0xD000000000000013, 0x8000000264B608F0, 0, MEMORY[0x277D83B88], v16, v15);
  v18 = (v7 + 8);
  if (v46)
  {
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    sub_264B40074();
    sub_264B40064();
    v22 = v21;
    v23 = v21;
    result = (*v18)(v11, v6);
    if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v22 > -9.22337204e18)
    {
      if (v22 < 9.22337204e18)
      {
        v25 = MEMORY[0x277D83B88];
        v47 = MEMORY[0x277D83B88];
        v45 = v22;
        (*(v20 + 16))(&v45, 0xD000000000000013, v43 | 0x8000000000000000, v19, v20);
        sub_2649D3A14(&v45);
        v26 = v44;
        *(v44 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionNumber) = 1;
        v27 = &unk_27FFA7000;
LABEL_15:
        v38 = a1[3];
        v39 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v38);
        v40 = *(v26 + v27[82]);
        v47 = v25;
        v45 = v40;
        (*(v39 + 16))(&v45, 0x73756F6976657270, 0xEF6E6F6973736553, v38, v39);
        return sub_2649D3A14(&v45);
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_264B40054();
  sub_264B40144();
  sub_264B40074();
  v28 = sub_264B40134();
  v29 = *v18;
  (*v18)(v11, v6);
  (*(v2 + 8))(v5, v42);
  if ((v28 & 1) == 0)
  {
    *(v44 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionNumber) = 1;
    v32 = a1[3];
    v33 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v32);
    sub_264B40074();
    sub_264B40064();
    v35 = v34;
    v36 = v34;
    result = v29(v11, v6);
    if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v35 > -9.22337204e18)
      {
        if (v35 < 9.22337204e18)
        {
          v37 = MEMORY[0x277D83B88];
          v47 = MEMORY[0x277D83B88];
          v45 = v35;
          (*(v33 + 16))(&v45, 0xD000000000000013, v43 | 0x8000000000000000, v32, v33);
          v29(v14, v6);
          v25 = v37;
          sub_2649D3A14(&v45);
          v26 = v44;
          v27 = &unk_27FFA7000;
          goto LABEL_15;
        }

        goto LABEL_21;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  (*(v31 + 8))(&v45, 0x73756F6976657270, 0xEF6E6F6973736553, 0, MEMORY[0x277D83B88], v30, v31);
  result = v29(v14, v6);
  if (v46 == 1)
  {
    v26 = v44;
    v25 = MEMORY[0x277D83B88];
    v27 = &unk_27FFA7000;
    goto LABEL_15;
  }

  v26 = v44;
  v25 = MEMORY[0x277D83B88];
  if (!__OFADD__(v45, 1))
  {
    v27 = &unk_27FFA7000;
    *(v44 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionNumber) = v45 + 1;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_264AED5A4()
{

  v1 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionStartTime;
  v2 = sub_264B40084();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_lastOrientationChange, v2);

  return swift_deallocClassInstance();
}

void sub_264AED678(unsigned __int8 *a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_264B40084();
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v65 - v12;
  v14 = *a1;
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = sub_264A24308(MEMORY[0x277D84F90]);
  }

  v16 = qword_27FF883F8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_264B40964();
  __swift_project_value_buffer(v17, qword_27FF8AE40);
  v18 = sub_264B40944();
  v19 = sub_264B41474();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v65 = v15;
    v66 = v10;
    v21 = v3;
    v22 = v20;
    v23 = swift_slowAlloc();
    v69[0] = v23;
    *v22 = 136315138;
    LOBYTE(v67) = v14;
    v24 = TelemetryEvent.rawValue.getter();
    v26 = sub_2649CC004(v24, v25, v69);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_2649C6000, v18, v19, "CAEndOfSessionConsumer: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x266749940](v23, -1, -1);
    v27 = v22;
    v3 = v21;
    v15 = v65;
    v10 = v66;
    MEMORY[0x266749940](v27, -1, -1);
  }

  if (v14 > 13)
  {
    if (v14 <= 15)
    {
      if (v14 == 14)
      {

        v30 = *(v3 + 80);
        if (!v30)
        {
          return;
        }

        v31 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_cameraAlertShown;
      }

      else
      {

        v30 = *(v3 + 80);
        if (!v30)
        {
          return;
        }

        v31 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_audioAlertShown;
      }
    }

    else
    {
      switch(v14)
      {
        case 16:
          v49 = *(v3 + 80);
          if (v49)
          {
            *(v49 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_notificationInteraction) = 1;
            *(v49 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_notificationShown) = 1;
            v50 = *(v15 + 16);

            if (v50)
            {
              v51 = sub_264A20ACC(0x795468636E75614CLL, 0xEA00000000006570);
              if (v52)
              {
                sub_2649C964C(*(v15 + 56) + 32 * v51, v69);

                v53 = swift_dynamicCast();
                v54 = v53 == 0;
                if (v53)
                {
                  v55 = v67;
                }

                else
                {
                  v55 = 0;
                }

                if (v54)
                {
                  v50 = 0;
                }

                else
                {
                  v50 = v68;
                }
              }

              else
              {

                v55 = 0;
                v50 = 0;
              }
            }

            else
            {

              v55 = 0;
            }

            v64 = sub_264AEE8D0(v55, v50);

            *(v49 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_notificationInteractionType) = v64;
LABEL_75:

            return;
          }

          goto LABEL_36;
        case 17:

          v30 = *(v3 + 80);
          if (!v30)
          {
            return;
          }

          v31 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_accessibilityUsed;
          break;
        case 18:

          v30 = *(v3 + 80);
          if (!v30)
          {
            return;
          }

          v31 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_dragNDropUsed;
          break;
        default:
          goto LABEL_61;
      }
    }

    *(v30 + v31) = 1;
    return;
  }

  if (v14 <= 8)
  {
    if (v14 != 1)
    {
      if (v14 == 8)
      {

        if (*(v3 + 80))
        {
          return;
        }

        v32 = sub_264B40944();
        v33 = sub_264B41474();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_2649C6000, v32, v33, "CAEndOfSessionConsumer: creating an EOS report", v34, 2u);
          MEMORY[0x266749940](v34, -1, -1);
        }

        sub_264B40074();
        sub_264B40074();
        type metadata accessor for CAEndOfSessionConsumer.EOSReport(0);
        v35 = swift_allocObject();
        sub_264AEC5AC(v13, v10);
        *(v3 + 80) = v35;

        sub_264AED024((v3 + 128));
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    v36 = *(v3 + 80);
    if (v36)
    {
      *(v36 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionEndedReason) = 12;
    }

    goto LABEL_35;
  }

  switch(v14)
  {
    case 9:
      if (*(v3 + 80))
      {
        if (*(v15 + 16))
        {
          v37 = sub_264A20ACC(0x6F436E6F73616552, 0xEA00000000006564);
          if (v38)
          {
            sub_2649C964C(*(v15 + 56) + 32 * v37, v69);

            if ((swift_dynamicCast() & 1) == 0)
            {
              return;
            }

            v39 = v67;
            v40 = *(v3 + 80);
            if (v40)
            {
              *(v40 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionEndedReason) = v67;
            }

            v41 = sub_264B40944();
            v42 = sub_264B41474();
            if (!os_log_type_enabled(v41, v42))
            {
              goto LABEL_67;
            }

            v43 = swift_slowAlloc();
            *v43 = 134217984;
            *(v43 + 4) = v39;
            v44 = "Recording invalidation reason of %ld";
            v45 = v42;
            v46 = v41;
            v47 = v43;
            v48 = 12;
            goto LABEL_66;
          }
        }

LABEL_38:

        return;
      }

LABEL_36:

      goto LABEL_38;
    case 10:
LABEL_35:
      sub_264AEDEB8(v15);
      goto LABEL_36;
    case 13:
      if (*(v15 + 16) && (v28 = sub_264A20ACC(0x7461746E6569724FLL, 0xEB000000006E6F69), (v29 & 1) != 0))
      {
        sub_2649C964C(*(v15 + 56) + 32 * v28, v69);

        if (swift_dynamicCast())
        {
          if (!*(v3 + 80))
          {
            return;
          }

          LOBYTE(v69[0]) = v67;

          sub_264AECC64(v69, 0);
          goto LABEL_75;
        }
      }

      else
      {
      }

      v41 = sub_264B40944();
      v62 = sub_264B41494();
      if (!os_log_type_enabled(v41, v62))
      {
LABEL_67:

        return;
      }

      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "failed to get the new orientation";
      v45 = v62;
      v46 = v41;
      v47 = v43;
      v48 = 2;
LABEL_66:
      _os_log_impl(&dword_2649C6000, v46, v45, v44, v47, v48);
      MEMORY[0x266749940](v43, -1, -1);
      goto LABEL_67;
  }

LABEL_61:

  v66 = sub_264B40944();
  v56 = sub_264B41494();
  if (os_log_type_enabled(v66, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v69[0] = v58;
    *v57 = 136315138;
    LOBYTE(v67) = v14;
    v59 = TelemetryEvent.rawValue.getter();
    v61 = sub_2649CC004(v59, v60, v69);

    *(v57 + 4) = v61;
    _os_log_impl(&dword_2649C6000, v66, v56, "Unexpected event: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x266749940](v58, -1, -1);
    MEMORY[0x266749940](v57, -1, -1);
  }

  else
  {
    v63 = v66;
  }
}

void sub_264AEDEB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264B40084();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v43[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v43[-1] - v11;
  isa = v1[10].isa;
  if (isa)
  {
    v14 = qword_27FF883F8;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = sub_264B40964();
    __swift_project_value_buffer(v15, qword_27FF8AE40);
    v16 = sub_264B40944();
    v17 = sub_264B41474();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v42 = v2;
      v19 = a1;
      v20 = v18;
      *v18 = 0;
      _os_log_impl(&dword_2649C6000, v16, v17, "Session ending, finish & send the report", v18, 2u);
      v21 = v20;
      a1 = v19;
      v2 = v42;
      MEMORY[0x266749940](v21, -1, -1);
    }

    sub_264B40074();
    (*(v5 + 16))(v9, isa + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionStartTime, v4);
    sub_264B40044();
    v23 = v22;
    v24 = v22;
    v25 = *(v5 + 8);
    v25(v9, v4);
    v25(v12, v4);
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v23 > -9.22337204e18)
    {
      if (v23 < 9.22337204e18)
      {
        *(isa + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionDuration) = v23;
        v26 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionEndedReason;
        if (!*(isa + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionEndedReason))
        {
          sub_264AEE3F0(a1, v43);
          *(isa + v26) = v43[0];
        }

        LOBYTE(v43[0]) = *(isa + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_currentOrientation);
        sub_264AECC64(v43, 1);
        v27 = sub_264B40944();
        v28 = sub_264B41484();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_2649C6000, v27, v28, "Session ending, sending the report", v29, 2u);
          MEMORY[0x266749940](v29, -1, -1);
        }

        sub_2649CB5C0(&v2[5], v43);
        v30 = v44;
        v31 = v45;
        __swift_project_boxed_opaque_existential_1(v43, v44);
        v32 = *(isa + 2);
        v33 = *(isa + 3);

        v34 = sub_264AEC73C();
        (*(v31 + 8))(v32, v33, v34, v30, v31);

        __swift_destroy_boxed_opaque_existential_0(v43);
        v35 = sub_264B40944();
        v36 = sub_264B41484();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_2649C6000, v35, v36, "Session ending, done sending the report", v37, 2u);
          MEMORY[0x266749940](v37, -1, -1);
        }

        v2[10].isa = 0;

        return;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (qword_27FF883F8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v38 = sub_264B40964();
  __swift_project_value_buffer(v38, qword_27FF8AE40);
  v42 = sub_264B40944();
  v39 = sub_264B41474();
  if (os_log_type_enabled(v42, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2649C6000, v42, v39, "Expected to have an EOSReport", v40, 2u);
    MEMORY[0x266749940](v40, -1, -1);
  }

  v41 = v42;
}

uint64_t sub_264AEE3F0@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  if (*(result + 16))
  {
    result = sub_264A20ACC(0x6F436E6F73616552, 0xEA00000000006564);
    if (v4)
    {
      sub_2649C964C(*(v2 + 56) + 32 * result, &v10);
      result = swift_dynamicCast();
      if (result)
      {
        *a2 = v8;
        return result;
      }
    }

    if (*(v2 + 16))
    {
      result = sub_264A20ACC(0x707954726F727245, 0xE900000000000065);
      if (v5)
      {
        sub_2649C964C(*(v2 + 56) + 32 * result, &v10);
        result = swift_dynamicCast();
        if ((result & 1) != 0 && v8 == 4)
        {
          if (*(v2 + 16))
          {
            result = sub_264A20ACC(0x6A624F726F727245, 0xEB00000000746365);
            if (v6)
            {
              sub_2649C964C(*(v2 + 56) + 32 * result, &v10);
              result = swift_dynamicCast();
              if (result)
              {
                v10 = 4;
                v11 = v9;
                sub_264B06984(a2);
                return sub_2649E12A4(4, v9);
              }
            }
          }
        }
      }
    }
  }

  if (*(v2 + 16))
  {
    result = sub_264A20ACC(0x6E6F73616552, 0xE600000000000000);
    if (v7)
    {
      sub_2649C964C(*(v2 + 56) + 32 * result, &v10);
      result = swift_dynamicCast();
      if (result)
      {
        if (v8 == 0x7075727265746E69 && v9 == 0xEB00000000646574 || (sub_264B41AA4() & 1) != 0)
        {

          *a2 = 2;
          return result;
        }

        if (v8 == 0xD000000000000010 && 0x8000000264B5FBE0 == v9 || (sub_264B41AA4() & 1) != 0)
        {

          *a2 = 11;
          return result;
        }

        if (v8 != 0x206E6F6973736573 || v9 != 0xEB00000000646E65)
        {
          sub_264B41AA4();
        }
      }
    }
  }

  *a2 = 0;
  return result;
}

uint64_t sub_264AEE6D0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  return __swift_destroy_boxed_opaque_existential_0((v0 + 128));
}

uint64_t sub_264AEE6FC()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);

  __swift_destroy_boxed_opaque_existential_0(v0 + 11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CAEndOfSessionConsumer.EOSReport(uint64_t a1)
{
  result = qword_27FF8BFD8;
  if (!qword_27FF8BFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264AEE7F0(uint64_t a1)
{
  result = sub_264B40084();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_264AEE8D0(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 4;
  }

  if (sub_264B40704() == a1 && v4 == a2)
  {

    return 1;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 1;
    }

    else if (sub_264B406F4() == a1 && v7 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_264B41AA4();

      if (v8)
      {
        return 2;
      }

      else if (sub_264B40714() == a1 && v9 == a2)
      {

        return 3;
      }

      else
      {
        v10 = sub_264B41AA4();

        if (v10)
        {
          return 3;
        }

        else
        {
          if (qword_27FF883F8 != -1)
          {
            swift_once();
          }

          v11 = sub_264B40964();
          __swift_project_value_buffer(v11, qword_27FF8AE40);

          v12 = sub_264B40944();
          v13 = sub_264B414A4();

          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            v16 = v15;
            *v14 = 136315138;
            *(v14 + 4) = sub_2649CC004(a1, a2, &v16);
            _os_log_impl(&dword_2649C6000, v12, v13, "Unexpected launch type:%s", v14, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v15);
            MEMORY[0x266749940](v15, -1, -1);
            MEMORY[0x266749940](v14, -1, -1);
          }

          return 0;
        }
      }
    }
  }
}

uint64_t dispatch thunk of LiveActivityDisplaying.showLiveActivity()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649CD850;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LiveActivityDisplaying.dismissLiveActivity()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return v7(a1, a2);
}

void *sub_264AEED60(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = sub_264B40774();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B3FE54();
  swift_allocObject();
  sub_264B3FE44();
  sub_264AEF374();
  sub_264B3FE34();

  if (!v2)
  {
    sub_264B40764();
    if (v9)
    {
    }

    else
    {
      v10 = sub_264B40754();
      if (v11 >> 60 == 15)
      {
        sub_264AEF320();
        swift_allocError();
        *v12 = 0;
        v12[1] = 0;
        swift_willThrow();
        goto LABEL_16;
      }

      sub_2649DF384(v10, v11);
    }

    sub_264B40764();
    v14 = v13;
    v15 = sub_264B40754();
    v17 = v16;
    if (v14)
    {
      v18 = sub_264B41014();
    }

    else
    {
      v18 = 0;
    }

    if (v17 >> 60 == 15)
    {
      v19 = 0;
    }

    else
    {
      v19 = sub_264B40014();
      sub_2649DF384(v15, v17);
    }

    v20 = [objc_allocWithZone(MEMORY[0x277D67CC8]) initWithBundleIdentifier:v18 encodedRemoteAppIdentifier:v19];

    v24[0] = 0;
    v21 = [v20 encodeWithError_];
    v22 = v24[0];
    if (v21)
    {
      a2 = sub_264B40024();

      (*(v5 + 8))(v8, v4);
      return a2;
    }

    a2 = v22;
    sub_264B3FF84();

    swift_willThrow();
LABEL_16:
    (*(v5 + 8))(v8, v4);
  }

  return a2;
}

uint64_t sub_264AEF040(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71B8);

  v10 = sub_264B40944();
  v11 = sub_264B414B4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_2649CC004(a1, a2, &v23);
    _os_log_impl(&dword_2649C6000, v10, v11, "Processing launch payload of type %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x266749940](v13, -1, -1);
    MEMORY[0x266749940](v12, -1, -1);
  }

  if (sub_264B406F4() == a1 && v14 == a2)
  {
    goto LABEL_7;
  }

  v15 = sub_264B41AA4();

  if (v15)
  {
    goto LABEL_9;
  }

  if (sub_264B40714() == a1 && v17 == a2)
  {
LABEL_7:

LABEL_9:

    sub_2649DEF18(a3, a4);
    return a1;
  }

  v18 = sub_264B41AA4();

  if (v18)
  {
    goto LABEL_9;
  }

  if (sub_264B40704() == a1 && v19 == a2)
  {
  }

  else
  {
    v20 = sub_264B41AA4();

    if ((v20 & 1) == 0)
    {
      sub_264AEF320();
      swift_allocError();
      *v22 = a1;
      v22[1] = a2;
      swift_willThrow();

      return a1;
    }
  }

  v21 = [objc_opt_self() launchEventType];
  a1 = sub_264B41044();

  sub_264AEED60(a3, a4);
  if (v4)
  {
  }

  return a1;
}

unint64_t sub_264AEF320()
{
  result = qword_27FF8BFF8;
  if (!qword_27FF8BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BFF8);
  }

  return result;
}

unint64_t sub_264AEF374()
{
  result = qword_27FF8C000;
  if (!qword_27FF8C000)
  {
    sub_264B40774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C000);
  }

  return result;
}

uint64_t sub_264AEF3CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264AEF41C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_264AEF470(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_264AEF488(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t ControlMessageReliability.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_264AEF558()
{
  result = qword_27FF8C008;
  if (!qword_27FF8C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C008);
  }

  return result;
}

uint64_t FaceTimeTelemetryVendor.__allocating_init(customTelemetryConsumer:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_2649D2AAC(a1, v2 + 16);
  return v2;
}

id sub_264AEF708()
{
  v1 = v0;
  v2 = sub_264B40964();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27FF8AE40);
  v8 = sub_264B40944();
  v9 = sub_264B41474();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2649C6000, v8, v9, "Vending a FaceTimeTelemetryProvider", v10, 2u);
    MEMORY[0x266749940](v10, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C010, &qword_264B538B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  v12 = type metadata accessor for SignpostingPrimitives(0);
  v13 = swift_allocObject();
  (*(v3 + 16))(v6, v7, v2);
  sub_264B40904();
  v25[3] = v12;
  v25[4] = &off_28765A268;
  v25[0] = v13;
  v14 = type metadata accessor for SignpostConsumer();
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v25, v12);
  MEMORY[0x28223BE20](v16, v16);
  v18 = (&v25[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_264AEFA9C(*v18, v15);
  __swift_destroy_boxed_opaque_existential_0(v25);
  if (v20)
  {
    v21 = &protocol witness table for SignpostConsumer;
  }

  else
  {
    v14 = 0;
    v21 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v20;
  *(inited + 56) = v14;
  *(inited + 64) = v21;
  sub_2649CB5C0(v1 + 16, inited + 72);
  v22 = objc_allocWithZone(type metadata accessor for TelemetryProvider());
  return TelemetryProvider.init(_:)(inited);
}

uint64_t FaceTimeTelemetryVendor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_264AEFA9C(uint64_t a1, uint64_t a2)
{
  v13[3] = type metadata accessor for SignpostingPrimitives(0);
  v13[4] = &off_28765A268;
  v13[0] = a1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  sub_2649CB5C0(v13, a2 + 24);
  if (sub_264A566AC())
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FF8AE40);
    v5 = sub_264B40944();
    v6 = sub_264B41474();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "Signposting is on", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }
  }

  else
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v8 = sub_264B40964();
    __swift_project_value_buffer(v8, qword_27FF8AE40);
    v9 = sub_264B40944();
    v10 = sub_264B41474();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2649C6000, v9, v10, "Signposting is off", v11, 2u);
      MEMORY[0x266749940](v11, -1, -1);
    }

    a2 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v13);
  return a2;
}

uint64_t sub_264AEFC80(uint64_t a1, uint64_t a2)
{
  v10[3] = type metadata accessor for CoreAnalyticsReportingPrimitives();
  v10[4] = &off_28765A6C0;
  v10[0] = a1;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  sub_2649CB5C0(v10, v9);
  sub_2649CB5C0(v9, a2 + 40);
  *(a2 + 16) = 0xD000000000000013;
  *(a2 + 24) = 0x8000000264B60C40;
  __swift_destroy_boxed_opaque_existential_0(v9);
  *(a2 + 32) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *(a2 + 16) = 0xD000000000000014;
  *(a2 + 24) = 0x8000000264B60C80;
  swift_retain_n();

  swift_beginAccess();
  *(a2 + 32) = &unk_287655768;

  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE40);
  v5 = sub_264B40944();
  v6 = sub_264B41474();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2649C6000, v5, v6, "OnboardingTelemetryConsumer created", v7, 2u);
    MEMORY[0x266749940](v7, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v10);
  return a2;
}

uint64_t sub_264AEFE74(uint64_t a1, uint64_t a2)
{
  v9[3] = type metadata accessor for PowerLogPrimitives();
  v9[4] = &off_28765F430;
  v9[0] = a1;
  *(a2 + 16) = &unk_287655790;
  *(a2 + 64) = 0;
  sub_2649CB5C0(v9, a2 + 24);
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE40);
  v5 = sub_264B40944();
  v6 = sub_264B41474();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2649C6000, v5, v6, "PowerLogConsumer created", v7, 2u);
    MEMORY[0x266749940](v7, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v9);
  return a2;
}

void *sub_264AEFF9C(uint64_t a1, uint64_t a2, void *a3)
{
  v13[3] = type metadata accessor for CoreAnalyticsReportingPrimitives();
  v13[4] = &off_28765A6C0;
  v13[0] = a1;
  v12[3] = type metadata accessor for FoundationBackedUserDefaultsPrimitives();
  v12[4] = &protocol witness table for FoundationBackedUserDefaultsPrimitives;
  v12[0] = a2;
  a3[10] = 0;
  sub_2649CB5C0(v12, (a3 + 16));
  sub_2649CB5C0(v13, (a3 + 11));
  sub_2649CB5C0(v13, v11);
  sub_2649CB5C0(v11, (a3 + 5));
  a3[2] = 0xD000000000000013;
  a3[3] = 0x8000000264B60C40;
  __swift_destroy_boxed_opaque_existential_0(v11);
  a3[4] = MEMORY[0x277D84F90];
  swift_beginAccess();
  a3[2] = 0xD000000000000016;
  a3[3] = 0x8000000264B60C60;
  swift_retain_n();

  swift_beginAccess();
  a3[4] = &unk_2876557B8;

  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v6 = sub_264B40964();
  __swift_project_value_buffer(v6, qword_27FF8AE40);
  v7 = sub_264B40944();
  v8 = sub_264B41484();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2649C6000, v7, v8, "Created a CAEndOfSessionConsumer", v9, 2u);
    MEMORY[0x266749940](v9, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v12);
  __swift_destroy_boxed_opaque_existential_0(v13);
  return a3;
}

id sub_264AF01C8()
{
  v0 = sub_264B40964();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 104;
  v5 = type metadata accessor for SignpostingPrimitives(0);
  v6 = swift_allocObject();
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_27FF8AE40);
  (*(v1 + 16))(v4, v7, v0);
  sub_264B40904();
  v28[3] = v5;
  v28[4] = &off_28765A268;
  v28[0] = v6;
  v8 = type metadata accessor for SignpostConsumer();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v28, v5);
  MEMORY[0x28223BE20](v10, v10);
  v12 = (v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 104);
  (*(v13 + 16))(v12);
  v14 = sub_264AEFA9C(*v12, v9);
  __swift_destroy_boxed_opaque_existential_0(v28);
  type metadata accessor for CoreAnalyticsReportingPrimitives();
  v15 = swift_allocObject();
  v16 = type metadata accessor for CAOnboardingConsumer();
  v17 = swift_allocObject();
  v18 = sub_264AEFC80(v15, v17);
  v19 = sub_264B40944();
  v20 = sub_264B41474();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2649C6000, v19, v20, "Vending an AppTelemetryProvider", v21, 2u);
    MEMORY[0x266749940](v21, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C010, &qword_264B538B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  if (v14)
  {
    v23 = &protocol witness table for SignpostConsumer;
  }

  else
  {
    v8 = 0;
    v23 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v14;
  *(inited + 56) = v8;
  *(inited + 64) = v23;
  *(inited + 96) = v16;
  *(inited + 104) = &protocol witness table for CATelemetryConsumer;
  *(inited + 72) = v18;
  v24 = inited;
  v25 = objc_allocWithZone(type metadata accessor for TelemetryProvider());
  return TelemetryProvider.init(_:)(v24);
}

id sub_264AF0510()
{
  v0 = sub_264B40964();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v30[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27FF8AE40);
  v6 = sub_264B40944();
  v7 = sub_264B41474();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2649C6000, v6, v7, "Vending an iOSTelemetryProvider", v8, 2u);
    MEMORY[0x266749940](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C010, &qword_264B538B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  v10 = type metadata accessor for SignpostingPrimitives(0);
  v11 = swift_allocObject();
  (*(v1 + 16))(v4, v5, v0);
  sub_264B40904();
  v30[3] = v10;
  v30[4] = &off_28765A268;
  v30[0] = v11;
  v12 = type metadata accessor for SignpostConsumer();
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v30, v10);
  MEMORY[0x28223BE20](v14, v14);
  v16 = (&v30[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_264AEFA9C(*v16, v13);
  __swift_destroy_boxed_opaque_existential_0(v30);
  if (v18)
  {
    v19 = &protocol witness table for SignpostConsumer;
  }

  else
  {
    v12 = 0;
    v19 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v18;
  *(inited + 56) = v12;
  *(inited + 64) = v19;
  type metadata accessor for PowerLogPrimitives();
  v20 = swift_allocObject();
  v21 = sub_264B41014();
  v22 = sub_264B41014();
  v23 = PPSCreateTelemetryIdentifier();

  *(v20 + 16) = v23;
  v24 = type metadata accessor for PowerLogConsumer();
  v25 = swift_allocObject();
  v26 = sub_264AEFE74(v20, v25);
  *(inited + 96) = v24;
  *(inited + 104) = &off_28765DFB0;
  *(inited + 72) = v26;
  v27 = objc_allocWithZone(type metadata accessor for TelemetryProvider());
  return TelemetryProvider.init(_:)(inited);
}

id sub_264AF08B4()
{
  v0 = sub_264B40964();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SignpostingPrimitives(0);
  v6 = swift_allocObject();
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_27FF8AE40);
  (*(v1 + 16))(v4, v7, v0);
  sub_264B40904();
  v37[3] = v5;
  v37[4] = &off_28765A268;
  v37[0] = v6;
  v8 = type metadata accessor for SignpostConsumer();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v37, v5);
  MEMORY[0x28223BE20](v10, v10);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12);
  v14 = sub_264AEFA9C(*v12, v9);
  __swift_destroy_boxed_opaque_existential_0(v37);
  type metadata accessor for PowerLogPrimitives();
  v15 = swift_allocObject();
  v16 = sub_264B41014();
  v17 = sub_264B41014();
  v18 = PPSCreateTelemetryIdentifier();

  *(v15 + 16) = v18;
  v19 = type metadata accessor for PowerLogConsumer();
  v20 = swift_allocObject();
  v21 = sub_264AEFE74(v15, v20);
  type metadata accessor for CoreAnalyticsReportingPrimitives();
  v22 = swift_allocObject();
  v23 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for FoundationBackedUserDefaultsPrimitives();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v25 = type metadata accessor for CAEndOfSessionConsumer();
  v26 = swift_allocObject();
  v27 = sub_264AEFF9C(v22, v24, v26);
  v28 = sub_264B40944();
  v29 = sub_264B41474();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2649C6000, v28, v29, "Vending an AppSessionTelemetryProvider", v30, 2u);
    MEMORY[0x266749940](v30, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C010, &qword_264B538B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46DF0;
  if (v14)
  {
    v32 = &protocol witness table for SignpostConsumer;
  }

  else
  {
    v8 = 0;
    v32 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v14;
  *(inited + 56) = v8;
  *(inited + 64) = v32;
  *(inited + 96) = v19;
  *(inited + 104) = &off_28765DFB0;
  *(inited + 72) = v21;
  *(inited + 136) = v25;
  *(inited + 144) = &protocol witness table for CATelemetryConsumer;
  *(inited + 112) = v27;
  v33 = inited;
  v34 = objc_allocWithZone(type metadata accessor for TelemetryProvider());
  return TelemetryProvider.init(_:)(v33);
}

id sub_264AF0D04(const char *a1)
{
  v2 = sub_264B40964();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27FF8AE40);
  v8 = sub_264B40944();
  v9 = sub_264B41474();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2649C6000, v8, v9, a1, v10, 2u);
    MEMORY[0x266749940](v10, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C010, &qword_264B538B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B44150;
  v12 = type metadata accessor for SignpostingPrimitives(0);
  v13 = swift_allocObject();
  (*(v3 + 16))(v6, v7, v2);
  sub_264B40904();
  v24[3] = v12;
  v24[4] = &off_28765A268;
  v24[0] = v13;
  v14 = type metadata accessor for SignpostConsumer();
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v24, v12);
  MEMORY[0x28223BE20](v16, v16);
  v18 = (v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_264AEFA9C(*v18, v15);
  __swift_destroy_boxed_opaque_existential_0(v24);
  if (v20)
  {
    v21 = &protocol witness table for SignpostConsumer;
  }

  else
  {
    v14 = 0;
    v21 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v20;
  *(inited + 56) = v14;
  *(inited + 64) = v21;
  v22 = objc_allocWithZone(type metadata accessor for TelemetryProvider());
  return TelemetryProvider.init(_:)(inited);
}

uint64_t static InteractionState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_264AF1328(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t storeEnumTagSinglePayload for InteractionState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_264AF13BC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264AF13D8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_264AF1408()
{

  return swift_deallocClassInstance();
}

uint64_t sub_264AF1478@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

unint64_t sub_264AF148C(uint64_t a1)
{
  result = sub_264AF14B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_264AF14B4()
{
  result = qword_27FF8C018;
  if (!qword_27FF8C018)
  {
    type metadata accessor for RapportBackedMediaTransportDevice();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C018);
  }

  return result;
}

uint64_t sub_264AF151C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C020, &unk_264B53B30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264AF15EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C020, &unk_264B53B30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RipplesView(uint64_t a1)
{
  result = qword_27FF8C028;
  if (!qword_27FF8C028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264AF16E8(uint64_t a1)
{
  sub_264AF17CC(319, &qword_27FF8C038, type metadata accessor for IdentifiablePoint, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_264AF17CC(319, &qword_27FF8C040, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264AF17CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_264AF184C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264B40CA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A220, &qword_264B4A5E0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for RipplesView(0);
  sub_2649D046C(v1 + *(v12 + 20), v11, &qword_27FF8A220, &qword_264B4A5E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_264B40C44();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_264B414A4();
    v15 = sub_264B40D84();
    sub_264B408C4();

    sub_264B40C94();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

__n128 sub_264AF1A54@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RipplesView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  sub_264A62AC8(v1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_264AF2114(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_264B40E64();
  sub_264B40C64();
  v9 = sub_264B40D94();
  *a1 = sub_264AF2178;
  *(a1 + 8) = v8;
  v10 = v13[5];
  *(a1 + 80) = v13[4];
  *(a1 + 96) = v10;
  *(a1 + 112) = v13[6];
  v11 = v13[1];
  *(a1 + 16) = v13[0];
  *(a1 + 32) = v11;
  result = v13[3];
  *(a1 + 48) = v13[2];
  *(a1 + 64) = result;
  *(a1 + 128) = v9;
  return result;
}

uint64_t sub_264AF1BC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v17[2] = a3;
  v5 = type metadata accessor for RipplesView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  v9 = sub_264B40C24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v17[3] = *a2;
  v17[1] = swift_getKeyPath();
  (*(v10 + 16))(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  sub_264A62AC8(a2, v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v13, v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  sub_264AF2114(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C048, &qword_264B53BC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C050, &qword_264B53BD0);
  sub_2649CB4C8(&qword_27FF8C058, &qword_27FF8C048, &qword_264B53BC8, MEMORY[0x277D83980]);
  sub_264A10B60();
  sub_264AF2484();
  return sub_264B40E54();
}

uint64_t sub_264AF1E54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a2;
  v4 = sub_264B40C44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B40E64();
  sub_264B40C04();
  v9 = v24;
  v10 = v25;
  v11 = v26;
  v12 = v27;
  v13 = v28;
  v21 = v29;
  type metadata accessor for IdentifiablePoint(0);
  sub_264B40C14();
  sub_264AF184C(v8);
  CGPoint.locationFromPointPercentage(in:layoutDirection:)(v8);
  v15 = v14;
  v17 = v16;
  result = (*(v5 + 8))(v8, v4);
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  v19 = v21;
  *(a3 + 32) = v13;
  *(a3 + 40) = v19;
  *(a3 + 48) = v15;
  *(a3 + 56) = v17;
  return result;
}

uint64_t sub_264AF1FF8()
{
  v1 = (type metadata accessor for RipplesView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A220, &qword_264B4A5E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_264B40C44();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264AF2114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RipplesView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264AF2178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RipplesView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_264AF1BC4(a1, v6, a2);
}

uint64_t sub_264AF21F8()
{
  v1 = sub_264B40C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for RipplesView(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  v10 = v6[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A220, &qword_264B4A5E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_264B40C44();
    (*(*(v11 - 8) + 8))(v0 + v8 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_264AF23A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_264B40C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for RipplesView(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_264AF1E54(v1 + v4, v7, a1);
}

unint64_t sub_264AF2484()
{
  result = qword_27FF8C060;
  if (!qword_27FF8C060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C050, &qword_264B53BD0);
    sub_264AF2510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C060);
  }

  return result;
}

unint64_t sub_264AF2510()
{
  result = qword_27FF8C068;
  if (!qword_27FF8C068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C070, &qword_264B53BD8);
    sub_264AF259C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C068);
  }

  return result;
}

unint64_t sub_264AF259C()
{
  result = qword_27FF8C078;
  if (!qword_27FF8C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C078);
  }

  return result;
}

unint64_t sub_264AF2604()
{
  result = qword_27FF8C080;
  if (!qword_27FF8C080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C088, &qword_264B53BF8);
    sub_264AF2690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C080);
  }

  return result;
}

unint64_t sub_264AF2690()
{
  result = qword_27FF8C090;
  if (!qword_27FF8C090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C098, &qword_264B53C00);
    sub_264AF271C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C090);
  }

  return result;
}

unint64_t sub_264AF271C()
{
  result = qword_27FF8C0A0;
  if (!qword_27FF8C0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C0A8, &qword_264B53C08);
    sub_2649CB4C8(&qword_27FF8C0B0, &qword_27FF8C0B8, &qword_264B53C10, MEMORY[0x277CDF7D8]);
    sub_264A347C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C0A0);
  }

  return result;
}

__n128 sub_264AF27F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_264B40E64();
  v5 = v4;
  sub_264B40E24();
  sub_264B40E24();
  sub_264B40E64();
  sub_264B40C04();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v12;
  *(a2 + 32) = v12;
  __asm { FMOV            V0.2D, #28.0 }

  *(a2 + 48) = _Q0;
  *(a2 + 64) = v12;
  result = v14;
  *(a2 + 80) = v13;
  *(a2 + 96) = v14;
  return result;
}

uint64_t sub_264AF28D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_264AF292C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_264AF29A0()
{
  result = qword_27FF8C0C0;
  if (!qword_27FF8C0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C0C8, &qword_264B53CA8);
    sub_2649CB4C8(&qword_27FF8C0D0, &qword_27FF8C0D8, qword_264B53CB0, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C0C0);
  }

  return result;
}

uint64_t sub_264AF2A74@<X0>(uint64_t a1@<X8>)
{
  sub_264B40BC4();
  v3 = v25;
  v22 = v27;
  v4 = v28;
  v5 = v29;
  v6 = sub_264B40E14();
  v34 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C0E0, &qword_264B53D08);
  sub_264B40E34();
  v7 = v33;
  sub_264B40EA4();
  v9 = v8;
  v11 = v10;
  v12 = sub_264B40E94();
  v30 = v34;
  sub_264B40E34();
  v13 = v33;
  v33 = v1[1];
  sub_264B40E34();
  v14 = v23[0];
  sub_264B40E84();
  v15 = sub_264B40E74();

  v30 = v33;
  sub_264B40E34();
  v16 = v23[0];
  sub_264B40E64();
  sub_264B40C04();
  *&v24[7] = v33;
  *&v24[23] = v31;
  *&v24[39] = v32;
  v17 = swift_allocObject();
  v18 = v1[1];
  v17[1] = *v1;
  v17[2] = v18;
  v17[3] = v1[2];
  v19 = v26;
  *a1 = v3;
  *(a1 + 8) = v19;
  *(a1 + 16) = v22;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v7;
  *(a1 + 64) = v9;
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  *(a1 + 112) = v16;
  *(a1 + 120) = 0x3FF0000000000000;
  *(a1 + 128) = 0;
  v20 = *&v24[16];
  *(a1 + 129) = *v24;
  *(a1 + 145) = v20;
  *(a1 + 161) = *&v24[32];
  *(a1 + 176) = *&v24[47];
  *(a1 + 184) = sub_264AF2DB8;
  *(a1 + 192) = v17;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  sub_2649D046C(&v34, v23, &qword_27FF8C0E0, &qword_264B53D08);
  return sub_2649D046C(&v33, v23, &qword_27FF8C0E0, &qword_264B53D08);
}

uint64_t sub_264AF2CF0(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C0E0, &qword_264B53D08);
  sub_264B40E44();
  return sub_264B40E44();
}

uint64_t sub_264AF2D78()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_264AF2DC4()
{
  result = qword_27FF8C0E8;
  if (!qword_27FF8C0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C0F0, &qword_264B53D10);
    sub_264AF2E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C0E8);
  }

  return result;
}

unint64_t sub_264AF2E50()
{
  result = qword_27FF8C0F8;
  if (!qword_27FF8C0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C100, &qword_264B53D18);
    sub_264AF2EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C0F8);
  }

  return result;
}

unint64_t sub_264AF2EDC()
{
  result = qword_27FF8C108;
  if (!qword_27FF8C108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C110, &qword_264B53D20);
    sub_264AF2F94(&qword_27FF8C118, &qword_27FF8C120, &qword_264B53D28, sub_264AF3044);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C108);
  }

  return result;
}

uint64_t sub_264AF2F94(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2649CB4C8(&qword_27FF8C188, &qword_27FF8C190, &unk_264B53D60, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264AF3044()
{
  result = qword_27FF8C128;
  if (!qword_27FF8C128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C130, &qword_264B53D30);
    sub_264AF2F94(&qword_27FF8C138, &qword_27FF8C140, &qword_264B53D38, sub_264AF30FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C128);
  }

  return result;
}

unint64_t sub_264AF30FC()
{
  result = qword_27FF8C148;
  if (!qword_27FF8C148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C150, &qword_264B53D40);
    sub_264AF3188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C148);
  }

  return result;
}

unint64_t sub_264AF3188()
{
  result = qword_27FF8C158;
  if (!qword_27FF8C158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C160, &qword_264B53D48);
    sub_2649CB4C8(&qword_27FF8C168, &qword_27FF8C170, &qword_264B53D50, MEMORY[0x277CDF780]);
    sub_2649CB4C8(&qword_27FF8C178, &qword_27FF8C180, &qword_264B53D58, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C158);
  }

  return result;
}

uint64_t MediaTransportServerSessionError.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_264AF3304()
{
  result = qword_27FF8C198;
  if (!qword_27FF8C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C198);
  }

  return result;
}

BOOL sub_264AF33F0()
{
  sub_264B406A4();
  swift_allocObject();
  sub_264B406B4();
  v0 = sub_264B40684();
  [v0 mutableCopy];

  sub_264B41664();
  swift_unknownObjectRelease();
  sub_264AF382C();
  if (swift_dynamicCast())
  {
    v1 = [v7 remoteNotificationsSetting];

    return v1 == 2;
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FFA71B8);
    v4 = sub_264B40944();
    v5 = sub_264B41484();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2649C6000, v4, v5, "Unable to create mutable copy of notification system settings", v6, 2u);
      MEMORY[0x266749940](v6, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_264AF3594(char a1)
{
  sub_264B406A4();
  swift_allocObject();
  sub_264B406B4();
  v2 = sub_264B40684();
  [v2 mutableCopy];

  sub_264B41664();
  swift_unknownObjectRelease();
  sub_264AF382C();
  if (swift_dynamicCast())
  {
    if (a1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    [v9 setRemoteNotificationsSetting_];
    v4 = v9;
    sub_264B40694();
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FFA71B8);
    v4 = sub_264B40944();
    v6 = sub_264B41484();
    if (os_log_type_enabled(v4, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v4, v6, "Unable to create mutable copy of notification system settings", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }
  }
}

BOOL sub_264AF373C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_264AF33F0();
  *a1 = result;
  return result;
}

unint64_t sub_264AF382C()
{
  result = qword_27FF8C1A0;
  if (!qword_27FF8C1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF8C1A0);
  }

  return result;
}

id sub_264AF3878()
{
  v3 = 1;

  sub_264B409B4();

  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIViewDrawEventProducer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UIViewDrawEventProducer(uint64_t a1)
{
  result = qword_27FF8C208;
  if (!qword_27FF8C208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264AF3A9C(void *a1)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_captureView;
  v4 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_captureView);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingView;
    v6 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingView);
    v7 = v4;
    if (v6)
    {
      [v6 removeFromSuperview];
      v8 = *(v1 + v5);
      *(v1 + v5) = 0;

      *(v1 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel) = 0;
    }

    v10 = sub_264AF3C00();
    [v4 removeGestureRecognizer_];

    v11 = sub_264AF3CAC();
    [v4 removeGestureRecognizer_];

    v9 = *(v1 + v3);
  }

  else
  {
    v9 = 0;
  }

  *(v1 + v3) = a1;
  v12 = a1;

  if (a1)
  {
    sub_264AF3D6C(v12);
    v13 = sub_264AF3C00();
    [v12 addGestureRecognizer_];

    v14 = sub_264AF3CAC();
    [v12 addGestureRecognizer_];
  }
}

id sub_264AF3C00()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer____lazy_storage___tapGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer____lazy_storage___tapGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer____lazy_storage___tapGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_handleTap_];
    [v4 setNumberOfTapsRequired_];
    [v4 setNumberOfTouchesRequired_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_264AF3CAC()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer____lazy_storage___panGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer____lazy_storage___panGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer____lazy_storage___panGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D757F8]) initWithTarget:v0 action:sel_handlePan_];
    [v4 setMinimumNumberOfTouches_];
    [v4 setMaximumNumberOfTouches_];
    [v4 setAllowedScrollTypesMask_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_264AF3D6C(void *a1)
{
  v2 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingView;
  if (!*(v1 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingView))
  {
    type metadata accessor for ScreenSharingAnnotationViewModel(0);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D84F90];
    *(v4 + 16) = MEMORY[0x277D84F90];
    *(v4 + 24) = v5;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
    sub_264B401A4();
    *(v1 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel) = v4;

    sub_264B40E24();
    v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C230, &unk_264B53F28));

    v7 = sub_264B40CB4();
    v8 = [v7 view];
    if (v8)
    {
      v9 = *(v1 + v2);
      *(v1 + v2) = v8;
      v10 = v8;

      v11 = [objc_opt_self() clearColor];
      [v10 setBackgroundColor_];

      [a1 bounds];
      [v10 setFrame_];
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      [a1 addSubview_];
      sub_264AF3F5C();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_264AF3F5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_captureView);
    if (v2)
    {
      v3 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewConstraints;
      if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewConstraints))
      {
        v4 = objc_opt_self();
        sub_264AF5700();
        v5 = v1;
        v6 = v2;

        v7 = sub_264B41144();

        [v4 deactivateConstraints_];
      }

      else
      {
        v8 = v1;
        v9 = v2;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB50, &unk_264B520F0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_264B53EC0;
      v11 = [v1 widthAnchor];
      v12 = [v2 widthAnchor];
      v13 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_displayScale;
      v14 = [v11 constraintEqualToAnchor:v12 multiplier:1.0 / *(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_displayScale)];

      *(v10 + 32) = v14;
      v15 = [v1 heightAnchor];
      v16 = [v2 heightAnchor];
      v17 = [v15 constraintEqualToAnchor:v16 multiplier:1.0 / *(v0 + v13)];

      *(v10 + 40) = v17;
      v18 = [v1 centerXAnchor];
      v19 = [v2 centerXAnchor];
      v20 = [v18 constraintEqualToAnchor_];

      *(v10 + 48) = v20;
      v21 = [v1 centerYAnchor];
      v22 = [v2 centerYAnchor];
      v23 = [v21 constraintEqualToAnchor_];

      *(v10 + 56) = v23;
      v24 = objc_opt_self();
      sub_264AF5700();
      v25 = sub_264B41144();
      [v24 activateConstraints_];

      *(v0 + v3) = v10;

      CGAffineTransformMakeScale(&v26, *(v0 + v13), *(v0 + v13));
      [v1 setTransform_];
    }
  }
}

void sub_264AF4288(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_captureView);
  if (v3)
  {
    v5 = v3;
    [a1 locationInView_];
    v7 = v6;
    v9 = v8;
    [v5 bounds];
    v11 = v10;
    v13 = v12;
    v14 = mach_absolute_time();
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v15 = v7 * 100.0;
    v16 = v9 * 100.0;
    v17 = sub_264B40964();
    __swift_project_value_buffer(v17, qword_27FF8AE40);
    v18 = sub_264B40944();
    v19 = sub_264B41474();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v14;
      _os_log_impl(&dword_2649C6000, v18, v19, "handleTap eventID is %llu", v20, 0xCu);
      MEMORY[0x266749940](v20, -1, -1);
    }

    v21 = v15 / v11;
    v22 = v16 / v13;

    v23 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_telemetry);
    v24 = *&v23[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer];
    if (v24 && v14)
    {
      __swift_project_boxed_opaque_existential_1((v24 + 24), *(v24 + 48));
      LOBYTE(v31[0]) = 0;
      v25 = v23;

      sub_264A560D4(v31, v14, 0, 0, 0);
    }

    v31[3] = &type metadata for DrawEvent;
    v31[4] = &off_28765B2B0;
    v26 = swift_allocObject();
    v31[0] = v26;
    *(v26 + 16) = v14;
    *(v26 + 24) = v21;
    *(v26 + 32) = v22;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    sub_264B409C4();
    __swift_destroy_boxed_opaque_existential_0(v31);
    if (*(v2 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel))
    {

      sub_2649D5B4C(v21, v22);
    }
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v27 = sub_264B40964();
    __swift_project_value_buffer(v27, qword_27FFA71B8);
    oslog = sub_264B40944();
    v28 = sub_264B41494();
    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2649C6000, oslog, v28, "Received tap event after captureView has been removed, this is indicative of a bug", v29, 2u);
      MEMORY[0x266749940](v29, -1, -1);
    }
  }
}

void sub_264AF464C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v23 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_captureView);
  if (v7)
  {
    v23 = v7;
    [a1 locationInView_];
    v9 = v8;
    v11 = v10;
    [v23 bounds];
    v13 = v9 * 100.0 / v12;
    v15 = v11 * 100.0 / v14;
    v16 = [a1 state];
    if ((v16 - 3) < 3)
    {
      v17 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_activeStrokeID;
      swift_beginAccess();
      sub_264A61938(v1 + v17, v6);
      v18 = sub_264B40104();
      if ((*(*(v18 - 8) + 48))(v6, 1, v18) == 1)
      {

        sub_2649D04D4(v6, &unk_27FF8BFC0, &qword_264B47140);
      }

      else
      {
        sub_2649D04D4(v6, &unk_27FF8BFC0, &qword_264B47140);
        sub_264AF4C8C(v13, v15);
      }

      return;
    }

    if (v16 == 2)
    {
      sub_264AF4960(v13, v15);
    }
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v19 = sub_264B40964();
    __swift_project_value_buffer(v19, qword_27FFA71B8);
    v23 = sub_264B40944();
    v20 = sub_264B41494();
    if (os_log_type_enabled(v23, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2649C6000, v23, v20, "Received pan event after captureView has been removed, this is indicative of a bug", v21, 2u);
      MEMORY[0x266749940](v21, -1, -1);
    }
  }

  v22 = v23;
}

uint64_t sub_264AF4960(double a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v27 - v12;
  v14 = sub_264B40104();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v27 - v21;
  v23 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_activeStrokeID;
  swift_beginAccess();
  sub_264A61938(v3 + v23, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2649D04D4(v13, &unk_27FF8BFC0, &qword_264B47140);
    sub_264B400F4();
    if (*(v3 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel))
    {

      sub_2649D5210(v19, a1, a2);
    }

    (*(v15 + 32))(v10, v19, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_264A619A8(v10, v3 + v23);
    swift_endAccess();
    v24 = 0;
  }

  else
  {
    (*(v15 + 32))(v22, v13, v14);
    if (*(v3 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel))
    {

      sub_2649D5210(v22, a1, a2);
    }

    (*(v15 + 8))(v22, v14);
    v24 = 1;
  }

  v27[3] = &type metadata for DrawEvent;
  v27[4] = &off_28765B2B0;
  v25 = swift_allocObject();
  v27[0] = v25;
  *(v25 + 16) = 0;
  *(v25 + 24) = v24;
  *(v25 + 32) = a1;
  *(v25 + 40) = a2;
  *(v25 + 48) = 1;
  sub_264B409C4();
  return __swift_destroy_boxed_opaque_existential_0(v27);
}

uint64_t sub_264AF4C8C(double a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v31[-v12];
  v14 = sub_264B40104();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v31[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = mach_absolute_time();
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v20 = sub_264B40964();
  __swift_project_value_buffer(v20, qword_27FF8AE40);
  v21 = sub_264B40944();
  v22 = sub_264B41474();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v19;
    _os_log_impl(&dword_2649C6000, v21, v22, "finishStroke eventID is %llu", v23, 0xCu);
    MEMORY[0x266749940](v23, -1, -1);
  }

  v24 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_telemetry);
  v25 = *&v24[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer];
  if (v25)
  {
    v26 = v19 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (!v26)
  {
    __swift_project_boxed_opaque_existential_1((v25 + 24), *(v25 + 48));
    LOBYTE(v32[0]) = 0;
    v27 = v24;

    sub_264A560D4(v32, v19, 0, 0, 0);
  }

  v32[3] = &type metadata for DrawEvent;
  v32[4] = &off_28765B2B0;
  v28 = swift_allocObject();
  v32[0] = v28;
  *(v28 + 16) = v19;
  *(v28 + 24) = 2;
  *(v28 + 32) = a1;
  *(v28 + 40) = a2;
  *(v28 + 48) = 1;
  sub_264B409C4();
  __swift_destroy_boxed_opaque_existential_0(v32);
  v29 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_activeStrokeID;
  swift_beginAccess();
  sub_264A61938(v3 + v29, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2649D04D4(v13, &unk_27FF8BFC0, &qword_264B47140);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    if (*(v3 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel))
    {

      sub_2649D5210(v18, a1, a2);
    }

    (*(v15 + 8))(v18, v14);
  }

  (*(v15 + 56))(v10, 1, 1, v14);
  swift_beginAccess();
  sub_264A619A8(v10, v3 + v29);
  return swift_endAccess();
}

id sub_264AF5080()
{
  v1 = v0;
  v2 = sub_264B40964();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_captureView] = 0;
  *&v0[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_deviceOrientation] = 0;
  *&v0[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_displayScale] = 0x3FF0000000000000;
  v7 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_eventSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A070, &qword_264B53F20);
  swift_allocObject();
  *&v0[v7] = sub_264B409D4();
  v8 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_previousTapEventDate;
  v9 = sub_264B40084();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_activeStrokeID;
  v11 = sub_264B40104();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingView] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewConstraints] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C010, &qword_264B538B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B44150;
  v13 = type metadata accessor for SignpostingPrimitives(0);
  v14 = swift_allocObject();
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_27FF8AE40);
  (*(v3 + 16))(v6, v15, v2);
  sub_264B40904();
  v29[3] = v13;
  v29[4] = &off_28765A268;
  v29[0] = v14;
  v16 = type metadata accessor for SignpostConsumer();
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v29, v13);
  MEMORY[0x28223BE20](v18, v18);
  v20 = (&v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = sub_264AEFA9C(*v20, v17);
  __swift_destroy_boxed_opaque_existential_0(v29);
  if (v22)
  {
    v23 = &protocol witness table for SignpostConsumer;
  }

  else
  {
    v16 = 0;
    v23 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v22;
  *(inited + 56) = v16;
  *(inited + 64) = v23;
  v24 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_telemetry;
  v25 = objc_allocWithZone(type metadata accessor for TelemetryProvider());
  *&v1[v24] = TelemetryProvider.init(_:)(inited);
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer____lazy_storage___tapGestureRecognizer] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer____lazy_storage___panGestureRecognizer] = 0;
  v26 = type metadata accessor for UIViewDrawEventProducer(0);
  v28.receiver = v1;
  v28.super_class = v26;
  return objc_msgSendSuper2(&v28, sel_init);
}

void sub_264AF5484(uint64_t a1)
{
  sub_264AF55C4(319, &qword_27FF8C218, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_264AF55C4(319, &qword_27FF89D70, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_264AF55C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264B41614();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_264AF562C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A070, &qword_264B53F20);
  sub_264AF568C();
  return sub_264B40AB4();
}

unint64_t sub_264AF568C()
{
  result = qword_27FF8C220;
  if (!qword_27FF8C220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8A070, &qword_264B53F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C220);
  }

  return result;
}

unint64_t sub_264AF5700()
{
  result = qword_27FF8C228;
  if (!qword_27FF8C228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF8C228);
  }

  return result;
}

uint64_t sub_264AF574C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C2F0, &qword_264B54120);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v79 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v81 = &v77 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v87 = &v77 - v12;
  v13 = sub_264B40804();
  v83 = *(v13 - 8);
  v84 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v77 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88840, &qword_264B44278) - 8;
  MEMORY[0x28223BE20](v82, v16);
  v18 = &v77 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88848, &qword_264B44280);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v80 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v88 = &v77 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v77 - v27;
  v29 = sub_264B40104();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ContinuityDevice(0);
  v35 = a2 + v34[8];
  *(v35 + 16) = 256;
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v78 = v35;
  sub_264B40784();
  v36 = sub_264B400A4();
  v38 = v37;
  (*(v30 + 8))(v33, v29);
  *a2 = v36;
  a2[1] = v38;
  a2[2] = sub_264B40834();
  a2[3] = v39;
  sub_264B40854();
  v40 = sub_264B40814();
  v41 = (a2 + v34[7]);
  *v41 = v40;
  v41[1] = v42;
  *(a2 + v34[11]) = sub_264B40844() & 1;
  v43 = sub_264B407B4();
  v85 = a2;
  v86 = v34;
  *(a2 + v34[9]) = v43 & 1;
  v44 = v88;
  sub_264B407A4();
  v46 = v83;
  v45 = v84;
  (*(v83 + 104))(v44, *MEMORY[0x277D4B7A0], v84);
  v47 = v46;
  v48 = *(v46 + 56);
  v49 = v45;
  v48(v44, 0, 1, v45);
  v50 = *(v82 + 56);
  sub_2649D046C(v28, v18, &qword_27FF88848, &qword_264B44280);
  sub_2649D046C(v44, &v18[v50], &qword_27FF88848, &qword_264B44280);
  v51 = *(v47 + 48);
  v52 = v45;
  if (v51(v18, 1, v45) != 1)
  {
    v54 = v80;
    sub_2649D046C(v18, v80, &qword_27FF88848, &qword_264B44280);
    if (v51(&v18[v50], 1, v45) != 1)
    {
      v55 = v77;
      (*(v47 + 32))(v77, &v18[v50], v49);
      sub_264AF85AC(&qword_27FF88850, MEMORY[0x277D4B7B0], MEMORY[0x277D4B7B8]);
      v53 = sub_264B40F94();
      v56 = *(v47 + 8);
      v56(v55, v52);
      sub_2649D04D4(v88, &qword_27FF88848, &qword_264B44280);
      sub_2649D04D4(v28, &qword_27FF88848, &qword_264B44280);
      v56(v54, v52);
      sub_2649D04D4(v18, &qword_27FF88848, &qword_264B44280);
      goto LABEL_8;
    }

    sub_2649D04D4(v88, &qword_27FF88848, &qword_264B44280);
    sub_2649D04D4(v28, &qword_27FF88848, &qword_264B44280);
    (*(v47 + 8))(v54, v45);
    goto LABEL_6;
  }

  sub_2649D04D4(v44, &qword_27FF88848, &qword_264B44280);
  sub_2649D04D4(v28, &qword_27FF88848, &qword_264B44280);
  if (v51(&v18[v50], 1, v45) != 1)
  {
LABEL_6:
    sub_2649D04D4(v18, &qword_27FF88840, &qword_264B44278);
    v53 = 0;
    goto LABEL_8;
  }

  sub_2649D04D4(v18, &qword_27FF88848, &qword_264B44280);
  v53 = 1;
LABEL_8:
  *(v85 + v86[10]) = v53 & 1;
  v57 = v87;
  sub_264B40794();
  v58 = sub_264B407F4();
  v59 = *(v58 - 8);
  v60 = *(v59 + 48);
  if (v60(v57, 1, v58) == 1 || (sub_264B407D4(), v62 = v61, v64 = v63, v65 = *(v59 + 8), v65(v57, v58), v57 = v81, sub_264B40794(), v60(v57, 1, v58) == 1))
  {
    v66 = sub_264B40864();
    (*(*(v66 - 8) + 8))(a1, v66);
    return sub_2649D04D4(v57, &qword_27FF8C2F0, &qword_264B54120);
  }

  else
  {
    sub_264B407E4();
    v69 = v68;
    v65(v57, v58);
    v70 = v79;
    sub_264B40794();
    if (v60(v70, 1, v58) == 1)
    {
      v71 = sub_264B40864();
      (*(*(v71 - 8) + 8))(a1, v71);
      result = sub_2649D04D4(v70, &qword_27FF8C2F0, &qword_264B54120);
      v72 = 0;
      v73 = 1;
    }

    else
    {
      v72 = sub_264B407C4();
      v73 = v74;
      v75 = sub_264B40864();
      (*(*(v75 - 8) + 8))(a1, v75);
      result = (v65)(v70, v58);
    }

    v76 = v78;
    *v78 = v62;
    v76[1] = v64;
    v76[2] = v69;
    v76[3] = v72;
    *(v76 + 32) = v73 & 1;
    *(v76 + 33) = 0;
  }

  return result;
}

uint64_t ContinuityDeviceInfo.init(continuityDevice:configuredDevices:isContinuityEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_264AF76C8(a1, a4, &unk_27FF89E30, &qword_264B44270);
  result = type metadata accessor for ContinuityDeviceInfo(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t ContinuityDevicePrimitives.currentContinuityDeviceInfo(timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for ContinuityDeviceInfo(0);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88800, qword_264B4CC90);
  v5[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C240, &unk_264B53F68);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  v5[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C248, &qword_264B53F78);
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C250, &qword_264B53F80);
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C258, &qword_264B53F88);
  v5[24] = v10;
  v5[25] = *(v10 - 8);
  v5[26] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C260, &qword_264B53F90);
  v5[27] = v11;
  v12 = *(v11 - 8);
  v5[28] = v12;
  v5[29] = *(v12 + 64);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C268, &qword_264B53F98);
  v5[32] = v13;
  v5[33] = *(v13 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AF6428, 0, 0);
}

uint64_t sub_264AF6428()
{
  v28 = v0[35];
  v30 = v0[33];
  v31 = v0[32];
  v32 = v0[34];
  v33 = v0[31];
  v26 = v0[30];
  v1 = v0[26];
  v24 = v0[28];
  v25 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v34 = v0[23];
  v29 = v0[22];
  v27 = v0[21];
  v20 = v0[20];
  v21 = v0[18];
  v22 = v0[19];
  v17 = v0[17];
  v5 = v0[7];
  v4 = v0[8];
  *v1 = 1;
  (*(v2 + 104))(v1, *MEMORY[0x277D85768], v3);
  sub_264B41284();
  (*(v2 + 8))(v1, v3);
  v0[2] = (*(v4 + 8))(v5, v4);
  sub_2649CB2F0();
  v18 = sub_264B41554();
  v0[3] = v18;
  v6 = sub_264B41514();
  v19 = *(*(v6 - 8) + 56);
  v19(v17, 1, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C270, &qword_264B53FA0);
  sub_2649CB4C8(&qword_27FF8C278, &qword_27FF8C270, &qword_264B53FA0, MEMORY[0x277CBCD90]);
  sub_264AF85AC(&qword_27FF887B8, sub_2649CB2F0, MEMORY[0x277D85228]);
  sub_264B40B14();
  sub_2649D04D4(v17, &qword_27FF89DE0, &qword_264B4BC00);

  v7 = sub_264B41554();
  v0[4] = v7;
  v19(v17, 1, 1, v6);
  sub_2649CB4C8(&qword_27FF8C280, &qword_27FF8C248, &qword_264B53F78, MEMORY[0x277CBCD60]);
  sub_264B40B24();
  sub_2649D04D4(v17, &qword_27FF89DE0, &qword_264B4BC00);

  (*(v22 + 8))(v20, v21);
  v8 = *(v24 + 16);
  v8(v26, v33, v25);
  v9 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v23 = swift_allocObject();
  v10 = *(v24 + 32);
  v10(v23 + v9, v26, v25);
  v8(v26, v33, v25);
  v11 = swift_allocObject();
  v10(v11 + v9, v26, v25);
  sub_2649CB4C8(&qword_27FF8C288, &qword_27FF8C250, &qword_264B53F80, MEMORY[0x277CBCCE8]);
  v0[36] = sub_264B40B04();

  (*(v29 + 8))(v34, v27);
  (*(v30 + 16))(v32, v28, v31);
  sub_2649CB4C8(&qword_27FF8C290, &qword_27FF8C268, &qword_264B53F98, MEMORY[0x277D857C0]);
  sub_264B41334();
  v12 = sub_2649CB4C8(&qword_27FF8C298, &qword_27FF8C240, &unk_264B53F68, MEMORY[0x277D857B0]);
  v13 = swift_task_alloc();
  v0[37] = v13;
  *v13 = v0;
  v13[1] = sub_264AF69E0;
  v14 = v0[13];
  v15 = v0[14];

  return MEMORY[0x282200308](v14, v15, v12);
}

uint64_t sub_264AF69E0()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[15];
    v3 = v2[16];
    v5 = v2[14];

    (*(v4 + 8))(v3, v5);
    v6 = nullsub_1;
  }

  else
  {
    v6 = sub_264AF6B20;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_264AF6B20()
{
  v1 = v0[13];
  v2 = (*(v0[11] + 48))(v1, 1, v0[10]);
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  if (v2 == 1)
  {
    (*(v4 + 8))(v0[16], v0[14]);
    v6 = 1;
  }

  else
  {
    v7 = v0[12];
    v8 = v0[5];
    sub_264A547BC(v1, v7, type metadata accessor for ContinuityDeviceInfo);
    (*(v4 + 8))(v3, v5);
    sub_264A547BC(v7, v8, type metadata accessor for ContinuityDeviceInfo);
    v6 = 0;
  }

  v9 = v0[35];
  v10 = v0[33];
  v11 = v0[31];
  v12 = v0[32];
  v13 = v0[27];
  v14 = v0[28];
  (*(v0[11] + 56))(v0[5], v6, 1, v0[10]);
  sub_264B40994();
  sub_264B412B4();

  (*(v14 + 8))(v11, v13);
  (*(v10 + 8))(v9, v12);

  v15 = v0[1];

  return v15();
}

uint64_t ContinuityDevice.init(identifier:name:remoteScreenSupported:remoteScreenPaired:modelTypeIdentifier:marketingName:isBlocked:size:scale:cornerRadius:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  v25 = type metadata accessor for ContinuityDevice(0);
  v26 = a9 + v25[8];
  *(v26 + 16) = 256;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  *(a9 + v25[9]) = a5;
  *(a9 + v25[10]) = a6;
  result = sub_264AF76C8(a7, a9 + v25[6], &qword_27FF8C2A0, &qword_264B53FA8);
  v28 = (a9 + v25[7]);
  *v28 = a8;
  v28[1] = a10;
  *(a9 + v25[11]) = a11;
  if ((a14 & 1) == 0 && (a16 & 1) == 0)
  {
    *v26 = a12;
    *(v26 + 1) = a13;
    *(v26 + 2) = a15;
    *(v26 + 3) = a17;
    *(v26 + 16) = a18 & 1;
  }

  return result;
}

uint64_t ContinuityDevice.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContinuityDevice.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ContinuityDevice.marketingName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContinuityDevice(0) + 28));

  return v1;
}

__n128 ContinuityDevice.screenInfo.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContinuityDevice(0) + 32);
  v4 = *(v3 + 32);
  v5 = *(v3 + 33);
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  return result;
}

__n128 ContinuityDevice.screenInfo.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  v5 = v1 + *(type metadata accessor for ContinuityDevice(0) + 32);
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 33) = v4;
  return result;
}

uint64_t ContinuityDevice.remoteScreenSupported.setter(char a1)
{
  result = type metadata accessor for ContinuityDevice(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ContinuityDevice.remoteScreenPaired.setter(char a1)
{
  result = type metadata accessor for ContinuityDevice(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t ContinuityDevice.isBlocked.setter(char a1)
{
  result = type metadata accessor for ContinuityDevice(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t DeviceScreenInfo.init(size:scale:cornerRadius:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = result;
  *(a3 + 32) = a2 & 1;
  return result;
}

uint64_t ContinuityDeviceInfo.configuredDevices.getter()
{
  type metadata accessor for ContinuityDeviceInfo(0);
}

uint64_t sub_264AF72D0()
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v0 = sub_264B40964();
  __swift_project_value_buffer(v0, qword_27FFA71B8);
  v1 = sub_264B40944();
  v2 = sub_264B41484();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2649C6000, v1, v2, "Timed out fetching the continuity device", v3, 2u);
    MEMORY[0x266749940](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C260, &qword_264B53F90);
  return sub_264B412B4();
}

uint64_t sub_264AF73CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C260, &qword_264B53F90);

  return sub_264AF72D0();
}

uint64_t sub_264AF7448(uint64_t a1)
{
  v2 = type metadata accessor for ContinuityDeviceInfo(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C310, &qword_264B54138);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v12 - v9;
  sub_264AF85F4(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C260, &qword_264B53F90);
  sub_264B412A4();
  (*(v7 + 8))(v10, v6);
  return sub_264B412B4();
}

uint64_t objectdestroyTm_4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C260, &qword_264B53F90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264AF762C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C260, &qword_264B53F90);

  return sub_264AF7448(a1);
}

uint64_t sub_264AF76C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

BOOL _s16ScreenSharingKit06DeviceA4InfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0;
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }
}

uint64_t _s16ScreenSharingKit20ContinuityDeviceInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuityDevice(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = (&v26 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C2F8, &qword_264B54128);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v26 - v16;
  v18 = *(v15 + 56);
  sub_2649D046C(a1, &v26 - v16, &unk_27FF89E30, &qword_264B44270);
  sub_2649D046C(a2, &v17[v18], &unk_27FF89E30, &qword_264B44270);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_2649D046C(v17, v12, &unk_27FF89E30, &qword_264B44270);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_264A547BC(&v17[v18], v8, type metadata accessor for ContinuityDevice);
      v20 = _s16ScreenSharingKit16ContinuityDeviceV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_264A03DE8(v8);
      sub_264A03DE8(v12);
      sub_2649D04D4(v17, &unk_27FF89E30, &qword_264B44270);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_264A03DE8(v12);
LABEL_6:
    sub_2649D04D4(v17, &qword_27FF8C2F8, &qword_264B54128);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_2649D04D4(v17, &unk_27FF89E30, &qword_264B44270);
LABEL_8:
  v21 = type metadata accessor for ContinuityDeviceInfo(0);
  if (sub_264A17054(*(a1 + *(v21 + 20)), *(a2 + *(v21 + 20))))
  {
    v22 = *(v21 + 24);
    v23 = *(a1 + v22);
    v24 = *(a2 + v22);
    if (v23 == 2)
    {
      if (v24 != 2)
      {
        return 0;
      }
    }

    else if (v24 == 2 || ((v24 ^ v23) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t _s16ScreenSharingKit16ContinuityDeviceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_264B406C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C2A0, &qword_264B53FA8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C300, &qword_264B54130);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v36 - v15;
  if (*a1 != *a2 && (sub_264B41AA4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_264B41AA4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v36 = v8;
  v37 = type metadata accessor for ContinuityDevice(0);
  v17 = *(v37 + 24);
  v18 = *(v13 + 48);
  sub_2649D046C(a1 + v17, v16, &qword_27FF8C2A0, &qword_264B53FA8);
  sub_2649D046C(a2 + v17, &v16[v18], &qword_27FF8C2A0, &qword_264B53FA8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_2649D04D4(v16, &qword_27FF8C2A0, &qword_264B53FA8);
      goto LABEL_15;
    }

LABEL_11:
    sub_2649D04D4(v16, &qword_27FF8C300, &qword_264B54130);
    goto LABEL_12;
  }

  sub_2649D046C(v16, v12, &qword_27FF8C2A0, &qword_264B53FA8);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_11;
  }

  v22 = v36;
  (*(v5 + 32))(v36, &v16[v18], v4);
  sub_264AF85AC(&qword_27FF8C308, MEMORY[0x277D85578], MEMORY[0x277D85590]);
  v23 = sub_264B40F94();
  v24 = *(v5 + 8);
  v24(v22, v4);
  v24(v12, v4);
  sub_2649D04D4(v16, &qword_27FF8C2A0, &qword_264B53FA8);
  if ((v23 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v25 = v37;
  v26 = *(v37 + 28);
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_264B41AA4() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v30)
  {
    goto LABEL_12;
  }

  v31 = v25[8];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 33);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 33);
  if (v33)
  {
    if (v35)
    {
      goto LABEL_24;
    }

LABEL_12:
    v20 = 0;
    return v20 & 1;
  }

  if (v35)
  {
    goto LABEL_12;
  }

  v20 = 0;
  if (*v32 == *v34 && v32[1] == v34[1] && v32[2] == v34[2])
  {
    if (v32[4])
    {
      if (v34[4])
      {
        goto LABEL_24;
      }

      goto LABEL_12;
    }

    v20 = 0;
    if ((v34[4] & 1) == 0 && v32[3] == v34[3])
    {
LABEL_24:
      if (*(a1 + v25[9]) == *(a2 + v25[9]) && *(a1 + v25[10]) == *(a2 + v25[10]))
      {
        v20 = *(a1 + v25[11]) ^ *(a2 + v25[11]) ^ 1;
        return v20 & 1;
      }

      goto LABEL_12;
    }
  }

  return v20 & 1;
}

uint64_t sub_264AF7F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C2A0, &qword_264B53FA8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_264AF8010(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C2A0, &qword_264B53FA8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264AF80C0(uint64_t a1)
{
  sub_264AF84E8(319, &qword_27FF8C2B8, MEMORY[0x277D85578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_264AF854C(319, &qword_27FF8C2C0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_264AF854C(319, &qword_27FF8C2C8, &type metadata for DeviceScreenInfo);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_264AF81C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264AF81E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_264AF823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264AF8318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_264AF83DC(uint64_t a1)
{
  sub_264AF84E8(319, &qword_27FF8B840, type metadata accessor for ContinuityDevice, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_264AF84E8(319, &qword_27FF8C2E0, type metadata accessor for ContinuityDevice, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_264AF854C(319, &qword_27FF8C2E8, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264AF84E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_264AF854C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_264B41614();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_264AF85AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264AF85F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuityDeviceInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit37MediaTransportDisplayServerTransitionO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_264AF8678(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_264AF86C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_264AF8708(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t LSAppWorkspaceBackedApplicationLaunchPrimitives.__allocating_init()()
{
  v0 = swift_allocObject();
  LSAppWorkspaceBackedApplicationLaunchPrimitives.init()();
  return v0;
}

id LSAppWorkspaceBackedApplicationLaunchPrimitives.init()()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    *(v0 + 16) = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B46A70;
    *(inited + 32) = sub_264B41044();
    *(inited + 40) = v3;
    v4 = MEMORY[0x277D839B0];
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    *(inited + 80) = sub_264B41044();
    *(inited + 88) = v5;
    *(inited + 120) = v4;
    *(inited + 96) = 1;
    v6 = sub_264A24308(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
    swift_arrayDestroy();
    *(v0 + 24) = v6;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LSAppWorkspaceBackedApplicationLaunchPrimitives.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t LSAppWorkspaceBackedApplicationLaunchPrimitives.urlForApplication(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264B3FFD4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void LSAppWorkspaceBackedApplicationLaunchPrimitives.openApplication(at:)()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = sub_264B3FFB4();
  v3 = sub_264B40F54();
  v8[0] = 0;
  LODWORD(v1) = [v1 openSensitiveURL:v2 withOptions:v3 error:v8];

  v4 = v8[0];
  if (v1)
  {

    v5 = v4;
  }

  else
  {
    v6 = v8[0];
    v7 = sub_264B3FF84();

    swift_willThrow();
  }
}

uint64_t sub_264AF8A88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264B3FFD4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_264AF8B68(void *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3;
    v5 = sub_264AF8C70();
    [v4 removeGestureRecognizer_];

    v6 = *(v1 + 16);
  }

  else
  {
    v6 = 0;
  }

  *(v1 + 16) = a1;
  v7 = a1;

  if (a1)
  {
    sub_264AF8D9C(v7);
  }
}

uint64_t sub_264AF8C1C(uint64_t result)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = result;
  if (v2 != result)
  {
    result = CGRectIsEmpty(*(v1 + 32));
    if (!result)
    {
      v3 = *(v1 + 32);
      v4 = *(v1 + 40);
      v5 = *(v1 + 48);
      v6 = *(v1 + 56);

      return sub_264AF94EC(v3, v4, v5, v6);
    }
  }

  return result;
}

id sub_264AF8C70()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = type metadata accessor for CaptureGestureRecognizer();
    v5 = objc_allocWithZone(v4);
    v6 = &v5[OBJC_IVAR____TtC16ScreenSharingKit24CaptureGestureRecognizer_eventHandler];
    *v6 = sub_264AF9AD4;
    v6[1] = v3;
    v11.receiver = v5;
    v11.super_class = v4;
    v7 = objc_msgSendSuper2(&v11, sel_initWithTarget_action_, 0, 0);
    v8 = *(v0 + 72);
    *(v0 + 72) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t sub_264AF8D3C(objc_class *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4.super.isa = a1;
    sub_264AF8F38(v4);
  }

  return result;
}

void sub_264AF8D9C(void *a1)
{
  v3 = sub_264AF8C70();
  [a1 addGestureRecognizer_];

  v4 = [a1 window];
  if (v4)
  {
    v5 = v4;
    [a1 bounds];
    [a1 convertRect:v5 toCoordinateSpace:?];
    sub_264AF94EC(v6, v7, v8, v9);

    *(v1 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_serviceIDForSenderID) = MEMORY[0x277D84F98];
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v10 = sub_264B40964();
    __swift_project_value_buffer(v10, qword_27FFA71B8);
    oslog = sub_264B40944();
    v11 = sub_264B41494();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2649C6000, oslog, v11, "No window found on capture view to prepare the appropriate transform for events", v12, 2u);
      MEMORY[0x266749940](v12, -1, -1);
    }
  }
}

void sub_264AF8F38(UIEvent a1)
{
  v2 = v1;
  v4 = type metadata accessor for HIDMessage(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HIDReportMessage(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 16);
  if (v12)
  {
    v64 = v12;
    v13 = [v64 window];
    if (v13)
    {
      v14 = v13;
      v61 = v4;
      v62 = v8;
      [v64 bounds];
      [v64 convertRect:v14 toCoordinateSpace:?];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v75.origin.x = v15;
      v75.origin.y = v17;
      v75.size.width = v19;
      v75.size.height = v21;
      if (!CGRectEqualToRect(*(v2 + 32), v75))
      {
        if (qword_27FF883E0 != -1)
        {
          swift_once();
        }

        v23 = sub_264B40964();
        __swift_project_value_buffer(v23, qword_27FFA71B8);

        v24 = sub_264B40944();
        v25 = sub_264B41484();

        v26 = v24;
        if (os_log_type_enabled(v24, v25))
        {
          v27 = swift_slowAlloc();
          v63 = v14;
          v28 = v27;
          v29 = swift_slowAlloc();
          v69[0] = v29;
          *v28 = 136446466;
          v30 = *(v2 + 48);
          v70 = *(v2 + 32);
          v71 = v30;
          type metadata accessor for CGRect(0);
          LODWORD(v68) = v25;
          isa = a1.super.isa;
          v32 = sub_264B41064();
          v34 = sub_2649CC004(v32, v33, v69);

          *(v28 + 4) = v34;
          *(v28 + 12) = 2082;
          *&v70 = v16;
          *(&v70 + 1) = v18;
          *&v71 = v20;
          *(&v71 + 1) = v22;
          v35 = sub_264B41064();
          v37 = sub_2649CC004(v35, v36, v69);

          *(v28 + 14) = v37;
          a1.super.isa = isa;
          _os_log_impl(&dword_2649C6000, v26, v68, "Captureview bounds within the window updated from %{public}s to %{public}s", v28, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266749940](v29, -1, -1);
          v38 = v28;
          v14 = v63;
          MEMORY[0x266749940](v38, -1, -1);
        }

        else
        {
        }

        sub_264AF94EC(v16, v18, v20, v22);
      }

      if (*(v2 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_telemetry))
      {
        LOBYTE(v70) = 2;
        v74 = TelemetryProvider.signpostEventIfNeeded(_:_:)(&v70, a1);
        value = v74.value;
        is_nil = v74.is_nil;
      }

      else
      {
        value = 0;
        is_nil = 1;
      }

      v41 = a1.super.isa;
      v42 = OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_eventObserver;
      swift_beginAccess();
      sub_2649CB5C0(v2 + v42, &v70);
      v43 = *(&v71 + 1);
      v44 = v72;
      __swift_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
      v45 = (v44[7])(v41, v43, v44);
      __swift_destroy_boxed_opaque_existential_0(&v70);
      v46 = *(v45 + 16);
      if (v46)
      {
        v63 = v14;
        v68 = sub_264B40264();
        v47 = *(v68 - 8);
        v48 = *(v47 + 56);
        v66 = v47 + 56;
        v67 = v48;
        v49 = v61;
        v59[1] = v45;
        v50 = (v45 + 40);
        v65 = is_nil;
        v51 = v62;
        v52 = value;
        do
        {
          v54 = *(v50 - 1);
          v53 = *v50;
          v67(&v11[*(v51 + 20)], 1, 1, v68);
          sub_2649DEF18(v54, v53);
          v55 = sub_264B40464();
          *v11 = v52;
          v11[8] = v65;
          v56 = &v11[*(v51 + 24)];
          *v56 = v55;
          v56[1] = v57;
          sub_264AF99D4(v11, v7, type metadata accessor for HIDReportMessage);
          swift_storeEnumTagMultiPayload();
          *(&v71 + 1) = v49;
          v72 = &off_28765E6C8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v70);
          sub_264AF99D4(v7, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
          sub_264B409C4();
          sub_2649DEF6C(v54, v53);
          sub_264AF9A3C(v7, type metadata accessor for HIDMessage);
          sub_264AF9A3C(v11, type metadata accessor for HIDReportMessage);
          __swift_destroy_boxed_opaque_existential_0(&v70);
          v50 += 3;
          --v46;
        }

        while (v46);
      }

      else
      {
      }
    }

    else
    {
      v39 = v64;
    }
  }
}

uint64_t sub_264AF94EC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *(v4 + 24);
  switch(v9)
  {
    case 2:
      v22.a = 1.0;
      v22.b = 0.0;
      v22.c = 0.0;
      v22.d = 1.0;
      v22.tx = 0.0;
      v22.ty = 0.0;
      CGAffineTransformTranslate(&v21, &v22, 1.0, 1.0);
      v22 = v21;
      v10 = 3.14159265;
      break;
    case 4:
      v22.a = 1.0;
      v22.b = 0.0;
      v22.c = 0.0;
      v22.d = 1.0;
      v22.tx = 0.0;
      v22.ty = 0.0;
      CGAffineTransformTranslate(&v21, &v22, 0.0, 1.0);
      v22 = v21;
      v10 = -1.57079633;
      break;
    case 3:
      v22.a = 1.0;
      v22.b = 0.0;
      v22.c = 0.0;
      v22.d = 1.0;
      v22.tx = 0.0;
      v22.ty = 0.0;
      CGAffineTransformTranslate(&v21, &v22, 1.0, 0.0);
      v22 = v21;
      v10 = 1.57079633;
      break;
    default:
      v20 = xmmword_264B54280;
      v19 = xmmword_264B54290;
      v11 = 0uLL;
      goto LABEL_9;
  }

  CGAffineTransformRotate(&v21, &v22, v10);
  v19 = *&v21.a;
  v20 = *&v21.c;
  v11 = *&v21.tx;
LABEL_9:
  v18 = v11;
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  v12 = 1.0 / CGRectGetWidth(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  Height = CGRectGetHeight(v24);
  *&v22.a = v19;
  *&v22.c = v20;
  *&v22.tx = v18;
  CGAffineTransformScale(&v21, &v22, v12, 1.0 / Height);
  CGAffineTransformTranslate(&v22, &v21, -a1, -a2);
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  v14 = v4 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_eventObserver;
  swift_beginAccess();
  v15 = *(v14 + 24);
  v16 = *(v14 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  (*(v16 + 40))(&v22, v15, v16);
  return swift_endAccess();
}

uint64_t sub_264AF9730()
{

  v1 = OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_deviceID;
  v2 = sub_264B40104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_eventObserverPrimitivesVendor));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_eventObserver));

  return v0;
}

uint64_t sub_264AF97E8()
{
  sub_264AF9730();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UIViewControlEventProducer(uint64_t a1)
{
  result = qword_27FF8C340;
  if (!qword_27FF8C340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264AF9894(uint64_t a1)
{
  result = sub_264B40104();
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

uint64_t sub_264AF997C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A070, &qword_264B53F20);
  sub_264AF568C();
  return sub_264B40AB4();
}

uint64_t sub_264AF99D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264AF9A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264AF9A9C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264AF9ADC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0);
  v2[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89890, &qword_264B48610);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AF9C48, 0, 0);
}

uint64_t sub_264AF9C48()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];
  (*(v6 + 104))(v3, *MEMORY[0x277D858A0], v5);
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89898, &unk_264B48618);
  v9[4] = sub_264A2DAB0();
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_264B41344();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 32))(v7, v1, v4);
  (*(v2 + 56))(v7, 0, 1, v4);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit15MockMediaStream_stateContinuation;
  swift_beginAccess();
  sub_264AFA054(v7, v8 + v10);
  swift_endAccess();

  v11 = v0[1];

  return v11();
}

uint64_t sub_264AF9DE0()
{
  sub_264A58C44(v0 + OBJC_IVAR____TtC16ScreenSharingKit15MockMediaStream_stateContinuation);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockMediaStream(uint64_t a1)
{
  result = qword_27FF8C350;
  if (!qword_27FF8C350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264AF9EA0(uint64_t a1)
{
  sub_264AF9F44(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_264AF9F44(uint64_t a1)
{
  if (!qword_27FF897D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF88DA8, &qword_264B48500);
    v1 = sub_264B41614();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF897D0);
    }
  }
}

uint64_t sub_264AF9FB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CD850;

  return sub_264AF9ADC(a1);
}

uint64_t sub_264AFA054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void EventObserver<A>.gestureRecognizerTouchesFilter.setter(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_264B405E4();
  }

  else
  {

    sub_264B405E4();
  }
}

void (*EventObserver<A>.gestureRecognizerTouchesFilter.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = _s15UniversalHIDKit13EventObserverC16ScreenSharingKitSo7UIEventCRszlE30gestureRecognizerTouchesFilterSo09UIGestureJ0CSgvg_0();
  return sub_264AFA1A4;
}

void sub_264AFA1A4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    if (v2)
    {
      v4 = v2;
      sub_264B405E4();

      v3 = v4;
    }

    else
    {
      sub_264B405E4();
      v3 = 0;
    }
  }

  else
  {
    if (!v2)
    {
      sub_264B405E4();
      return;
    }

    v5 = v2;
    sub_264B405E4();
    v3 = v5;
  }
}

uint64_t (*sub_264AFA290(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_264B405F4();
  return sub_264AFA304;
}

double sub_264AFA308@<D0>(_OWORD *a1@<X8>)
{
  sub_264B40634();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t (*sub_264AFA370(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_264B40624();
  return sub_264AFA6C0;
}

void sub_264AFA43C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_264B405E4();
  }

  else
  {
    sub_264B405E4();
  }
}

uint64_t (*sub_264AFA4A4(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = EventObserver<A>.gestureRecognizerTouchesFilter.modify(v2);
  return sub_264AFA6C0;
}

void sub_264AFA518(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_264AFA568@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A920, &qword_264B4CAD0);
  result = sub_264B40654();
  a2[3] = v3;
  a2[4] = &protocol witness table for <A> EventObserver<A>;
  *a2 = result;
  return result;
}

uint64_t sub_264AFA5DC@<X0>(uint64_t *a1@<X8>)
{
  result = _s15UniversalHIDKit13EventObserverC16ScreenSharingKitSo7UIEventCRszlE30gestureRecognizerTouchesFilterSo09UIGestureJ0CSgvg_0();
  *a1 = result;
  return result;
}

uint64_t sub_264AFA608(void **a1)
{
  if (*a1)
  {
    v1 = *a1;
  }

  return sub_264B405E4();
}

uint64_t sub_264AFA6C4()
{
  if (*(v0 + 32))
  {

    sub_264B40994();
  }

  sub_264B409E4();

  return swift_deallocClassInstance();
}

void *sub_264AFA780()
{
  v1 = v0;
  v2 = sub_264B41594();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C380, &unk_264B56E00);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v17 - v10;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C368, &unk_264B54500);
  swift_allocObject();
  *(v0 + 16) = sub_264B40A14();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 24) = result;
    v18 = sub_264AFAB0C();
    sub_264B409F4();
    v13 = *(v0 + 24);
    sub_264AFB030();

    v14 = [objc_opt_self() defaultCenter];
    sub_264B415A4();

    sub_264AFB1E4();
    sub_264B40AF4();
    (*(v3 + 8))(v6, v2);
    sub_2649CB4C8(&qword_27FF8C390, &qword_27FF8C380, &unk_264B56E00, MEMORY[0x277CBCC08]);
    v15 = sub_264B40AB4();
    (*(v8 + 8))(v11, v7);
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A638, &unk_264B4BC10);
    sub_2649CB4C8(&qword_27FF8A640, &qword_27FF8A638, &unk_264B4BC10, MEMORY[0x277CBCD90]);
    sub_2649CB4C8(&qword_27FF8C398, &qword_27FF8C368, &unk_264B54500, MEMORY[0x277CBCE40]);
    v16 = sub_264B40B34();

    *(v1 + 32) = v16;

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_264AFAB0C()
{
  if ([v0 attributeForKey_])
  {
    sub_264B41664();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C3A0, &unk_264B54510);
    if (swift_dynamicCast())
    {
      v1 = *(v3 + 16);

      return v1 != 0;
    }
  }

  else
  {
    sub_2649D04D4(v6, &qword_27FF8BB60, qword_264B44A80);
  }

  return 0;
}

id sub_264AFABF4()
{
  v9[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FE8, &unk_264B54520);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_264B44150;
  v2 = *MEMORY[0x277D26DA8];
  *(v1 + 32) = *MEMORY[0x277D26DA8];
  type metadata accessor for Name(0);
  v3 = v2;
  v4 = sub_264B41144();

  v5 = *MEMORY[0x277D26DD0];
  v9[0] = 0;
  v6 = [v0 setAttribute:v4 forKey:v5 error:v9];

  if (v6)
  {
    return v9[0];
  }

  v8 = v9[0];
  sub_264B3FF84();

  return swift_willThrow();
}

uint64_t sub_264AFAD24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C360, &unk_264B56DF0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v9 - v4;
  if (*(v0 + 40))
  {
    v6 = *(v0 + 40);
  }

  else
  {
    v9[1] = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C368, &unk_264B54500);
    sub_2649CB4C8(&qword_27FF8C370, &qword_27FF8C368, &unk_264B54500, MEMORY[0x277CBCE48]);
    v7 = v0;
    sub_264B40B44();
    sub_2649CB4C8(&qword_27FF8C378, &qword_27FF8C360, &unk_264B56DF0, MEMORY[0x277CBCBE0]);
    v6 = sub_264B40AB4();
    (*(v2 + 8))(v5, v1);
    *(v7 + 40) = v6;
  }

  return v6;
}

uint64_t sub_264AFAF04@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_264B3FE74();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  sub_264B41044();
  sub_264B416F4();
  if (!*(v3 + 16) || (v4 = sub_264A20A44(v9), (v5 & 1) == 0))
  {

    sub_2649C95C0(v9);
LABEL_8:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  sub_2649C964C(*(v3 + 56) + 32 * v4, &v10);
  sub_2649C95C0(v9);

  if (!*(&v11 + 1))
  {
LABEL_9:
    result = sub_2649D04D4(&v10, &qword_27FF8BB60, qword_264B44A80);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C3A0, &unk_264B54510);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v7 = *(v9[0] + 16);

  v8 = v7 != 0;
LABEL_11:
  *a1 = v8;
  return result;
}

unint64_t sub_264AFB1E4()
{
  result = qword_27FF8C388;
  if (!qword_27FF8C388)
  {
    sub_264B41594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C388);
  }

  return result;
}

uint64_t sub_264AFB23C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DemoModeRemoteAuthenticationPrimitives();
  swift_allocObject();
  result = DemoModeRemoteAuthenticationPrimitives.init(authenticationResponseDelay:)(1.0);
  a1[3] = v2;
  a1[4] = &protocol witness table for DemoModeRemoteAuthenticationPrimitives;
  *a1 = result;
  return result;
}

uint64_t sub_264AFB33C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    free(v1);
  }

  return swift_deallocClassInstance();
}

void sub_264AFB3C4(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FF8AE40);

    v4 = sub_264B40944();
    v5 = sub_264B41484();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      sub_264A5EC94();
      v8 = sub_264B40F74();
      v10 = sub_2649CC004(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_2649C6000, v4, v5, "PowerlogPrimitives sending payload %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x266749940](v7, -1, -1);
      MEMORY[0x266749940](v6, -1, -1);
    }

    sub_264AB51F4(a1);
    oslog = sub_264B40F54();

    PPSSendTelemetry();
  }

  else
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v11 = sub_264B40964();
    __swift_project_value_buffer(v11, qword_27FF8AE40);
    oslog = sub_264B40944();
    v12 = sub_264B41494();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2649C6000, oslog, v12, "PPSCreateTelemetryIdentifier failed, not sending the data", v13, 2u);
      MEMORY[0x266749940](v13, -1, -1);
    }
  }
}

uint64_t static ControlMessengerState.< infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  v5 = !v4;
  if (v2 == 1)
  {
    v6 = *a2 > 1;
  }

  else
  {
    v6 = v5;
  }

  sub_264A1EE08(*a1);
  sub_264A1EE08(v3);
  sub_264A1F208(v2);
  sub_264A1F208(v3);
  return v6;
}

uint64_t static ControlMessengerState.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  if (v2 == 1)
  {
    if (v3 != 1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v4 = 1;
    goto LABEL_8;
  }

  if (v2)
  {
    if (v3 <= 2)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = 0;
LABEL_8:
  sub_264A1EE08(*a1);
  sub_264A1EE08(v3);
  sub_264A1F208(v2);
  sub_264A1F208(v3);
  return v4;
}

unint64_t sub_264AFB758()
{
  result = qword_27FF8C3A8;
  if (!qword_27FF8C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C3A8);
  }

  return result;
}

uint64_t sub_264AFB7AC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  v5 = !v4;
  if (v2 == 1)
  {
    v6 = *a2 > 1;
  }

  else
  {
    v6 = v5;
  }

  sub_264A1EE08(*a1);
  sub_264A1EE08(v3);
  sub_264A1F208(v2);
  sub_264A1F208(v3);
  return v6;
}

uint64_t sub_264AFB81C(void *a1, void *a2)
{
  if (*a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = *a1 == 0;
  }

  v3 = v2;
  if (*a2 == 1)
  {
    return *a1 < 2uLL;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_264AFB848(void *a1, void *a2)
{
  if (*a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = *a2 == 0;
  }

  v3 = v2;
  if (*a1 == 1)
  {
    return *a2 < 2uLL;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_264AFB874(void *a1, void *a2)
{
  if (*a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = *a1 == 0;
  }

  v3 = !v2;
  if (*a2 == 1)
  {
    return *a1 > 1uLL;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_264AFB8A0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  if (v2 == 1)
  {
    if (v3 != 1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v4 = 1;
    goto LABEL_8;
  }

  if (v2)
  {
    if (v3 < 3)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = 0;
LABEL_8:
  sub_264A1EE08(*a1);
  sub_264A1EE08(v3);
  sub_264A1F208(v2);
  sub_264A1F208(v3);
  return v4;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit21ControlMessengerStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_264AFB94C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264AFB9A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_264AFBA08()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264AFBA84()
{
  v13 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71B8);

  v2 = sub_264B40944();
  v3 = sub_264B41484();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v4;
    type metadata accessor for SpringBoardBackedSystemEventConsumer();

    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v2, v3, "%{public}s did invalidate, no-op", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_264AFBC34(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = type metadata accessor for ControlMessage(0);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AFBCC8, v1, 0);
}

uint64_t sub_264AFBCC8()
{
  v47 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  sub_2649CB5C0(v1, v0 + 16);

  v3 = sub_264B40944();
  v4 = sub_264B41484();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v46 = v7;
    *v6 = 136446466;
    *(v0 + 128) = v5;
    type metadata accessor for SpringBoardBackedSystemEventConsumer();

    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v46);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = *(v0 + 40);
    v12 = __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
    *(v0 + 112) = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 88));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
    __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0((v0 + 88));
    v14 = sub_264B41C44();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v17 = sub_2649CC004(v14, v16, &v46);

    *(v6 + 14) = v17;
    _os_log_impl(&dword_2649C6000, v3, v4, "%{public}s did receive message: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  v18 = *(v0 + 136);
  v19 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v20 + 8))(v19, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *(v0 + 232) = EnumCaseMultiPayload;
  v22 = *(v0 + 160);
  if (EnumCaseMultiPayload == 1)
  {
    v23 = *v22;
    *(v0 + 168) = *v22;
    v24 = v22[1];
    *(v0 + 176) = v24;
    v25 = v22[2];
    *(v0 + 184) = v25;
    v26 = v22[3];
    *(v0 + 192) = v26;
    if (v24 >= 4)
    {
      *(v0 + 200) = __swift_project_boxed_opaque_existential_1((*(v0 + 144) + 112), *(*(v0 + 144) + 136));
      sub_264B41244();
      sub_2649DEF18(v25, v26);
      *(v0 + 208) = sub_264B41234();
      v30 = sub_264B411C4();
      v32 = v45;
      v33 = sub_264AFC1FC;
    }

    else
    {
      v27 = __swift_project_boxed_opaque_existential_1((*(v0 + 144) + 112), *(*(v0 + 144) + 136));
      *&v28 = v23;
      *(&v28 + 1) = v24;
      *(v0 + 216) = v27;
      *&v29 = v25;
      *(&v29 + 1) = v26;
      *(v0 + 72) = v29;
      *(v0 + 56) = v28;
      sub_264B41244();
      *(v0 + 224) = sub_264B41234();
      v30 = sub_264B411C4();
      v32 = v31;
      v33 = sub_264AFC328;
    }

    return MEMORY[0x2822009F8](v33, v30, v32);
  }

  else
  {
    sub_2649DEEBC(v22);

    v34 = sub_264B40944();
    v35 = sub_264B41494();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 144);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v46 = v38;
      *v37 = 136446210;
      *(v0 + 120) = v36;
      type metadata accessor for SpringBoardBackedSystemEventConsumer();

      v39 = sub_264B41064();
      v41 = sub_2649CC004(v39, v40, &v46);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_2649C6000, v34, v35, "%{public}s error decoding system event", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x266749940](v38, -1, -1);
      MEMORY[0x266749940](v37, -1, -1);
    }

    v42 = *(v0 + 8);
    v43 = *(v0 + 232) == 1;

    return v42(v43);
  }
}

uint64_t sub_264AFC1FC()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];

  sub_264A7F604(v4, v3, v1, v2);

  return MEMORY[0x2822009F8](sub_264AFC298, v5, 0);
}

uint64_t sub_264AFC298()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  sub_264A187D4(*(v0 + 168), *(v0 + 176), v1, v2);
  sub_2649DEF6C(v1, v2);

  v3 = *(v0 + 8);
  v4 = *(v0 + 232) == 1;

  return v3(v4);
}

uint64_t sub_264AFC328()
{
  v1 = *(v0 + 144);

  sub_264A7F1A0((v0 + 56));

  return MEMORY[0x2822009F8](sub_264AFC3A0, v1, 0);
}

uint64_t sub_264AFC3A0()
{
  sub_264A187D4(*(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192));

  v1 = *(v0 + 8);
  v2 = *(v0 + 232) == 1;

  return v1(v2);
}

uint64_t sub_264AFC41C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return sub_264AFC658();
}

uint64_t sub_264AFC4BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264AFBA64();
}

uint64_t sub_264AFC548(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CBEFC;

  return sub_264AFBC34(a1);
}

unint64_t sub_264AFC5DC(uint64_t a1)
{
  result = sub_264AFC604();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_264AFC604()
{
  result = qword_27FF8C3B0;
  if (!qword_27FF8C3B0)
  {
    type metadata accessor for SpringBoardBackedSystemEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C3B0);
  }

  return result;
}

uint64_t sub_264AFC678()
{
  v13 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71B8);

  v2 = sub_264B40944();
  v3 = sub_264B41484();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v4;
    type metadata accessor for SpringBoardBackedSystemEventConsumer();

    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v2, v3, "%{public}s did activate, no-op", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

unint64_t sub_264AFC878(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = a3;
  v6 = (a3 >> 8) & 1;
  v7 = HIWORD(a3) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFE8, &qword_264B536B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B54770;
  *(inited + 32) = 0x696472616F626E6FLL;
  *(inited + 40) = 0xEF6E776F6853676ELL;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x8000000264B58A00;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x8000000264B61350;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x8000000264B61370;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v9 = sub_264A24664(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFF0, qword_264B536C0);
  swift_arrayDestroy();
  return v9;
}

void sub_264AFCA10(unsigned __int8 *a1, unint64_t a2)
{
  v3 = *a1;
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v5 = sub_264AFC828(&v42);
      if (*(v4 + 8))
      {
        *(v4 + 18) = 1;
      }

      goto LABEL_46;
    }

    if (v3 != 5)
    {
      if (v3 == 6)
      {
        sub_264AFD080();
LABEL_8:

        sub_264AFCF58();
        return;
      }

      goto LABEL_17;
    }

    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = sub_264A24308(MEMORY[0x277D84F90]);
    }

    v23 = *(v6 + 16);

    if (v23)
    {
      v24 = sub_264A20ACC(0x6A624F726F727245, 0xEB00000000746365);
      if (v25)
      {
        sub_2649C964C(*(v6 + 56) + 32 * v24, &v42);
        sub_2649D3A14(&v42);
        if (*(v6 + 16) && (v26 = sub_264A20ACC(0x707954726F727245, 0xE900000000000065), (v27 & 1) != 0))
        {
          sub_2649C964C(*(v6 + 56) + 32 * v26, &v42);

          v29 = sub_264AFC828(v41);
          if (*(v28 + 8))
          {
            v30 = v28;
            sub_2649C964C(&v42, v40);
            v31 = swift_dynamicCast();
            v32 = v39;
            if (!v31)
            {
              v32 = 1;
            }

            *(v30 + 24) = v32;
          }

          (v29)(v41, 0);
          __swift_destroy_boxed_opaque_existential_0(&v42);
        }

        else
        {
        }

        v35 = 0;
        goto LABEL_44;
      }
    }

    v42 = 0u;
    v43 = 0u;
    sub_2649D3A14(&v42);
    if (*(v6 + 16) && (v33 = sub_264A20ACC(0x6E6F73616552, 0xE600000000000000), (v34 & 1) != 0))
    {
      sub_2649C964C(*(v6 + 56) + 32 * v33, &v42);

      if (swift_dynamicCast())
      {
        if (v41[0] == 0xD000000000000010 && 0x8000000264B612B0 == v41[1])
        {

          v35 = 0;
        }

        else
        {
          v37 = sub_264B41AA4();

          v35 = v37 ^ 1;
        }

LABEL_44:
        v5 = sub_264AFC828(&v42);
        if (*(v36 + 8))
        {
          *(v36 + 17) = v35 & 1;
        }

LABEL_46:
        (v5)(&v42, 0);
        return;
      }
    }

    else
    {
    }

    v35 = 1;
    goto LABEL_44;
  }

  if (v3 != 1)
  {
    if (v3 == 3)
    {
      goto LABEL_8;
    }

LABEL_17:
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v16 = sub_264B40964();
    __swift_project_value_buffer(v16, qword_27FF8AE40);
    oslog = sub_264B40944();
    v17 = sub_264B41474();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v42 = v19;
      *v18 = 136446210;
      LOBYTE(v41[0]) = v3;
      v20 = TelemetryEvent.rawValue.getter();
      v22 = sub_2649CC004(v20, v21, &v42);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2649C6000, oslog, v17, "Unexpected event: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x266749940](v19, -1, -1);
      MEMORY[0x266749940](v18, -1, -1);
    }

    else
    {
    }

    return;
  }

  swift_beginAccess();
  v7 = *(v2 + 88);
  if (v7)
  {
    v8 = *(v2 + 104);
    v9 = *(v2 + 96);
    v10 = *(v2 + 80);
    sub_2649CB5C0(v2 + 40, &v42);
    v11 = *(&v43 + 1);
    v12 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));

    v15 = sub_264AFC878(v13, v14, v9 & 0x10101, v8);
    (*(v12 + 8))(v10, v7, v15, v11, v12);

    __swift_destroy_boxed_opaque_existential_0(&v42);
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
  }
}

double sub_264AFCF58()
{
  swift_beginAccess();
  if (*(v0 + 88))
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v1 = sub_264B40964();
    __swift_project_value_buffer(v1, qword_27FF8AE40);
    v2 = sub_264B40944();
    v3 = sub_264B41494();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2649C6000, v2, v3, "Redundant call to createReport", v4, 2u);
      MEMORY[0x266749940](v4, -1, -1);
    }
  }

  else
  {
    *(v0 + 80) = 0xD000000000000027;
    *(v0 + 88) = 0x8000000264B61320;
    *&result = 1;
    *(v0 + 96) = xmmword_264B4A5F0;
  }

  return result;
}

uint64_t sub_264AFD080()
{
  result = swift_beginAccess();
  v2 = *(v0 + 88);
  if (v2)
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 96);
    v5 = *(v0 + 80);
    sub_2649CB5C0(v0 + 40, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);

    v10 = sub_264AFC878(v8, v9, v4 & 0x10101, v3);
    (*(v7 + 8))(v5, v2, v10, v6, v7);

    __swift_destroy_boxed_opaque_existential_0(v11);
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
  }

  return result;
}

uint64_t CAOnboardingConsumer.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return v0;
}

uint64_t CAOnboardingConsumer.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_264AFD250(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264AFD298(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264AFD2E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();
}

uint64_t NWPathMonitorBackedNetworkStatusMonitor.deinit()
{
  v1 = v0;

  sub_264B40B84();

  v2 = OBJC_IVAR____TtC16ScreenSharingKit39NWPathMonitorBackedNetworkStatusMonitor__networkStatus;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A728, &unk_264B54810);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

Swift::Void __swiftcall NWPathMonitorBackedNetworkStatusMonitor.stopMonitoringNetwork()()
{

  sub_264B40B84();
}

uint64_t NWPathMonitorBackedNetworkStatusMonitor.__deallocating_deinit()
{
  v1 = v0;

  sub_264B40B84();

  v2 = OBJC_IVAR____TtC16ScreenSharingKit39NWPathMonitorBackedNetworkStatusMonitor__networkStatus;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A728, &unk_264B54810);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t NWPathMonitorBackedNetworkStatusMonitor.__allocating_init(monitor:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_264B40A44();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t NWPathMonitorBackedNetworkStatusMonitor.init(monitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A728, &unk_264B54810);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10[-v6];
  v8 = OBJC_IVAR____TtC16ScreenSharingKit39NWPathMonitorBackedNetworkStatusMonitor__networkStatus;
  v10[15] = 0;
  sub_264B40A44();
  (*(v4 + 32))(v1 + v8, v7, v3);
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_264AFD65C(uint64_t a1, uint64_t a2)
{
  v3 = sub_264B40B94();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v10 = sub_264B40BB4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v38 = result;
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v16 = sub_264B40964();
    __swift_project_value_buffer(v16, qword_27FFA71B8);
    v17 = *(v11 + 16);
    v37 = a1;
    v17(v14, a1, v10);
    v18 = sub_264B40944();
    v19 = sub_264B41484();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v36 = v3;
      v21 = v20;
      v22 = swift_slowAlloc();
      v35 = v4;
      v23 = v22;
      v39 = v22;
      *v21 = 136315138;
      sub_264B40BA4();
      v24 = sub_264B41064();
      v26 = v25;
      (*(v11 + 8))(v14, v10);
      v27 = sub_2649CC004(v24, v26, &v39);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_2649C6000, v18, v19, "path updated to %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      v28 = v23;
      v4 = v35;
      MEMORY[0x266749940](v28, -1, -1);
      v29 = v21;
      v3 = v36;
      MEMORY[0x266749940](v29, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    sub_264B40BA4();
    v30 = (*(v4 + 88))(v8, v3);
    if (v30 == *MEMORY[0x277CD8F78])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v31 = 1;
    }

    else
    {
      if (v30 != *MEMORY[0x277CD8F68])
      {
        v32 = v4;
        v33 = *MEMORY[0x277CD8F70];
        v34 = v30;
        swift_getKeyPath();
        swift_getKeyPath();
        if (v34 != v33)
        {
          LOBYTE(v39) = 2;
          sub_264B40A94();
          return (*(v32 + 8))(v8, v3);
        }

        LOBYTE(v39) = 3;
        return sub_264B40A94();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v31 = 2;
    }

    LOBYTE(v39) = v31;
    return sub_264B40A94();
  }

  return result;
}

Swift::Void __swiftcall NWPathMonitorBackedNetworkStatusMonitor.startMonitoringNetwork()()
{
  sub_2649CB2F0();
  v0 = sub_264B41554();
  v1 = swift_allocObject();
  swift_weakInit();

  sub_264A8B0E0(sub_264AFDBCC, v1);
  sub_264B40B64();

  sub_264B40B74();
}

uint64_t sub_264AFDB94()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t NWPathMonitorBackedNetworkStatusMonitor.networkStatusPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A720, &unk_264B4C130);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A728, &unk_264B54810);
  sub_264B40A54();
  swift_endAccess();
  sub_264A7C7F4();
  v5 = sub_264B40AB4();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_264AFDD00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A720, &unk_264B4C130);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A728, &unk_264B54810);
  sub_264B40A54();
  swift_endAccess();
  sub_264A7C7F4();
  v5 = sub_264B40AB4();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_264AFDE54()
{

  sub_264B40B84();
}

uint64_t type metadata accessor for NWPathMonitorBackedNetworkStatusMonitor(uint64_t a1)
{
  result = qword_27FF8C3C0;
  if (!qword_27FF8C3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264AFDEEC(uint64_t a1)
{
  sub_264A7C18C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_264AFDFB8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_264AFE03C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_264AFE0B4()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264AFE110()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264AFE29C();
}

uint64_t sub_264AFE1D0()
{
  *(*(v0 + 16) + 112) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264AFE258(uint64_t a1)
{
  result = sub_264AFE450(&qword_27FF8C3D0, &unk_264B5495C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_264AFE2BC()
{
  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FF8AEA0);
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Creating no-op drag observer", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  sub_264B40594();
  swift_allocObject();
  v6 = sub_264B40574();
  sub_264AFE450(&qword_27FF8C3D8, &unk_264B548F0);
  swift_unknownObjectRetain();
  sub_264B40584();
  *(v5 + 112) = v6;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_264AFE450(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EmptyDragAndDropEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264AFE4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000264B61420 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_264B41AA4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_264AFE584(uint64_t a1)
{
  v2 = sub_264AFFC24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AFE5C0(uint64_t a1)
{
  v2 = sub_264AFFC24();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_264AFE5FC()
{
  v1 = 12383;
  v2 = 0x74616E6974736564;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x6E65644967617264;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_264AFE684@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_264B00450(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_264AFE6AC(uint64_t a1)
{
  v2 = sub_264AFFC78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AFE6E8(uint64_t a1)
{
  v2 = sub_264AFFC78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DragAndDropEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C3E0, &qword_264B549B0);
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C3E8, &qword_264B549B8);
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v21 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[3];
  v23 = v1[2];
  v24 = v11;
  v22 = v13;
  v30 = *(v1 + 32);
  v21[3] = *(v1 + 33);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264AFFC24();
  v14 = v7;
  v15 = v3;
  sub_264B41BD4();
  sub_264AFFC78();
  sub_264B419B4();
  v28 = v24;
  v29 = v12;
  v31 = 0;
  sub_264A2E90C();
  v16 = v27;
  sub_264B41A24();
  if (v16)
  {
    (*(v26 + 8))(v6, v3);
    return (*(v25 + 8))(v10, v14);
  }

  else
  {
    v18 = v30;
    v20 = v25;
    v19 = v26;
    LOBYTE(v28) = 1;
    sub_264B419E4();
    LOBYTE(v28) = v18;
    v31 = 2;
    sub_264AFFCCC();
    sub_264B41A24();
    LOBYTE(v28) = 3;
    sub_264B419F4();
    (*(v19 + 8))(v6, v15);
    return (*(v20 + 8))(v10, v14);
  }
}

uint64_t DragAndDropEvent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C408, &qword_264B549C0);
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C410, &unk_264B549C8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - v11;
  v13 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_264AFFC24();
  sub_264B41BC4();
  if (!v2)
  {
    v14 = v34;
    v15 = v9;
    v16 = sub_264B419A4();
    v17 = (2 * *(v16 + 16)) | 1;
    v38 = v16;
    v39 = v16 + 32;
    v40 = 0;
    v41 = v17;
    if (sub_2649E0464() || v40 != v41 >> 1)
    {
      v18 = sub_264B417A4();
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0);
      *v20 = &type metadata for DragAndDropEvent;
      sub_264B41904();
      sub_264B41794();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84160], v18);
      swift_willThrow();
      (*(v15 + 8))(v12, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_264AFFC78();
      sub_264B418F4();
      v43 = 0;
      sub_264A2E960();
      sub_264B41984();
      v31 = v36;
      v32 = v37;
      v43 = 1;
      v29 = sub_264B41944();
      v30 = v22;
      v42 = 2;
      sub_264AFFD20();
      sub_264B41984();
      v23 = v43;
      v42 = 3;
      v24 = sub_264B41954();
      (*(v14 + 8))(v7, v4);
      (*(v15 + 8))(v12, v8);
      swift_unknownObjectRelease();
      v25 = v33;
      v26 = v32;
      *v33 = v31;
      v25[1] = v26;
      v27 = v30;
      v25[2] = v29;
      v25[3] = v27;
      *(v25 + 32) = v23;
      *(v25 + 33) = v24 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v35);
}

unint64_t sub_264AFEF7C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_264AFEFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000011 && 0x8000000264B61460 == a2;
  if (v5 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000264B61480 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_264AFF098(uint64_t a1)
{
  v2 = sub_264AFFD74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AFF0D4(uint64_t a1)
{
  v2 = sub_264AFFD74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264AFF110(uint64_t a1)
{
  v2 = sub_264AFFE1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AFF14C(uint64_t a1)
{
  v2 = sub_264AFFE1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264AFF188(uint64_t a1)
{
  v2 = sub_264AFFDC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AFF1C4(uint64_t a1)
{
  v2 = sub_264AFFDC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DragControllerDataDestination.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C420, &qword_264B549D8);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v21 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C428, &qword_264B549E0);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C430, &qword_264B549E8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v19 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264AFFD74();
  sub_264B41BD4();
  v16 = (v11 + 8);
  if (v15)
  {
    v25 = 1;
    sub_264AFFDC8();
    v17 = v21;
    sub_264B419B4();
    (*(v22 + 8))(v17, v23);
  }

  else
  {
    v24 = 0;
    sub_264AFFE1C();
    sub_264B419B4();
    (*(v19 + 8))(v9, v20);
  }

  return (*v16)(v14, v10);
}

uint64_t DragControllerDataDestination.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

uint64_t DragControllerDataDestination.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C450, &qword_264B549F0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C458, &qword_264B549F8);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C460, &qword_264B54A00);
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v27 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264AFFD74();
  v15 = v34;
  sub_264B41BC4();
  if (v15)
  {
    v16 = a1;
  }

  else
  {
    v28 = v7;
    v34 = a1;
    v17 = v31;
    v18 = v32;
    v19 = sub_264B419A4();
    v20 = (2 * *(v19 + 16)) | 1;
    v35 = v19;
    v36 = v19 + 32;
    v37 = 0;
    v38 = v20;
    v21 = sub_2649E0ED8();
    if (v21 == 2 || v37 != v38 >> 1)
    {
      v23 = sub_264B417A4();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0);
      *v25 = &type metadata for DragControllerDataDestination;
      sub_264B41904();
      sub_264B41794();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v33 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = v21;
      if (v21)
      {
        v40 = 1;
        sub_264AFFDC8();
        sub_264B418F4();
        v22 = v33;
        (*(v30 + 8))(v6, v17);
      }

      else
      {
        v40 = 0;
        sub_264AFFE1C();
        sub_264B418F4();
        v22 = v33;
        (*(v29 + 8))(v10, v28);
      }

      (*(v22 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v18 = v39 & 1;
    }

    v16 = v34;
  }

  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t sub_264AFFA10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  *a1 = *v1;
  v8 = *(v1 + 8);
  *(a1 + 8) = v8;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 33) = v6;
  type metadata accessor for ControlMessage(0);
  swift_storeEnumTagMultiPayload();
  sub_2649DEF18(v3, v8);
}

uint64_t _s16ScreenSharingKit16DragAndDropEventO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v14 = *(a2 + 33);
  v15 = *(a1 + 33);
  sub_2649DEF18(*a1, v2);

  sub_2649DEF18(v8, v7);

  if (!sub_264A2E750(v3, v2, v8, v7))
  {

    sub_2649DEF6C(v8, v7);
    sub_2649DEF6C(v3, v2);
    return 0;
  }

  if (v5 == v10 && v4 == v9)
  {
    sub_2649DEF6C(v8, v7);
    sub_2649DEF6C(v3, v2);

    if (v6 == v11)
    {
      return v15 ^ v14 ^ 1u;
    }

    return 0;
  }

  v13 = sub_264B41AA4();
  sub_2649DEF6C(v8, v7);
  sub_2649DEF6C(v3, v2);

  result = 0;
  if ((v13 & 1) != 0 && ((v6 ^ v11) & 1) == 0)
  {
    return v15 ^ v14 ^ 1u;
  }

  return result;
}

unint64_t sub_264AFFC24()
{
  result = qword_27FF8C3F0;
  if (!qword_27FF8C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C3F0);
  }

  return result;
}

unint64_t sub_264AFFC78()
{
  result = qword_27FF8C3F8;
  if (!qword_27FF8C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C3F8);
  }

  return result;
}

unint64_t sub_264AFFCCC()
{
  result = qword_27FF8C400;
  if (!qword_27FF8C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C400);
  }

  return result;
}

unint64_t sub_264AFFD20()
{
  result = qword_27FF8C418;
  if (!qword_27FF8C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C418);
  }

  return result;
}

unint64_t sub_264AFFD74()
{
  result = qword_27FF8C438;
  if (!qword_27FF8C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C438);
  }

  return result;
}

unint64_t sub_264AFFDC8()
{
  result = qword_27FF8C440;
  if (!qword_27FF8C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C440);
  }

  return result;
}

unint64_t sub_264AFFE1C()
{
  result = qword_27FF8C448;
  if (!qword_27FF8C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C448);
  }

  return result;
}

unint64_t sub_264AFFE74()
{
  result = qword_27FF8C468;
  if (!qword_27FF8C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C468);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264AFFEDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264AFFF24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}